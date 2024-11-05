"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { useAuth } from "@/lib/auth";
import { Loading } from "@/Theme/Midone/Utils";
import { useData,useFormRefs,Input,Button,ButtonContainer,Box,CheckBox,Textarea,Frame,Radio } from "@/Theme/Midone/Forms";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Select } from "@/Theme/Midone/Forms/Select";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";

export default function Form({id,link="/promoters",roleFilter="",roleTitle="",titleFrame=""}){
    const {Lang, local} = useLang();
    const {laraAdmin} = useConfig();
    const router = useRouter();
    let component = useFormRefs();
    let {save, get, getNeedles} = useData();
    let [needles, setNeedles] = useState();
    let [provinceId, setProvinceId] = useState();
    let [cityId, setCityId] = useState();

    let uploadUrl = laraAdmin+"/upload/.-media-users";
    let deleteUrl = laraAdmin+"/deleteFile/.-media-users";
    let uploadDir = 'media/users/';
    
    let url = laraAdmin+link, method = "new";
    if(id != 0 && id != undefined) url = laraAdmin+link+"/"+id, method = "edit";

    useEffect(() => {
        getNeedles(laraAdmin+'/promoters/get-needles', setNeedles);
        get(url, component, "info");
    }, []);

    useEffect(()=>{
        
        setProvinceId(component?.state.info["province_id"]);
        setCityId(component?.state.info["city_id"]);
       
    }, [component?.state?.info]);

    const filterCity = (e)=>{
        setProvinceId(0);
        setCityId(0);
    };

    const saveItem = ()=>save(url, component, method, link);
    const back = ()=>router.back();
    
    return(
        
            <>
                <Frame title={Lang(["public."+titleFrame])}>
                    <Box>
                   
                        
                            
                        <Input label="name" refItem={[component, "firstname"]} required="true" />
                        <Input label="family" refItem={[component, "lastname"]} required="true" />
                        <Input dir="ltr" label="codemeli" refItem={[component, "codemeli"]} />
                        <Input dir="ltr" label="mobile" refItem={[component, "mobile"]} required="true" />
                        <Input dir="ltr" label="khadamat_code" refItem={[component, "khadamat_code"]} required="true" />
                        <Input dir="ltr" label="tablighat_office_code" refItem={[component, "tablighat_office_code"]} required="true" />
                        <Input dir="ltr" label="tablighat_organization_code" refItem={[component, "tablighat_organization_code"]} required="true" />
                        <Input dir="ltr" label="ovghaf_code" refItem={[component, "ovghaf_code"]} required="true" />
                        <Input dir="ltr" label="bank_account_number" refItem={[component, "bank_account_number"]} required="true" />
                        <Input dir="ltr" label="postal_code" refItem={[component, "postal_code"]} required="true" />
                        <SelectTail className="col-span-4" label="province" refItem={[component, "province_id"]} required="true" 
                            key={"province"+needles?.province?.length}
                            data={needles?.province} titleKey={"name_fa"}
                            onChange={(e)=>filterCity(e)}
                        />
                        <SelectTail className="col-span-4" label="city" refItem={[component, "city_id"]} required="true" 
                            key={"city"+needles?.city?.length}
                            data={needles?.city} titleKey={"name_fa"}
                            onChange={(e)=>filterVillage(e)}
                        />
                        {/* <SelectTail className="col-span-4" label="village" refItem={[component, "city_id"]} required="true" 
                            key={"city"+needles?.city?.length}
                            data={needles?.city} titleKey={"name_fa"}
                            onChange={(e)=>filterVillage(e)}
                        /> */}
                        <Textarea dir="ltr" label="address" refItem={[component, "address"]} required="true" />
                        <SelectTail label="level" data={needles?.level}  refItem={[component, "level_id"]} required="true" />
                        <Radio className="col-span-4" type="col" label="gender" id="gender_id" refItem={[component, `gender_id`]}
                            data={needles?.gender} titleKey={"title_"+local} required="true" key={"gender_id"+component?.state?.info?.gender_id}
                        />
                        <CheckBox className="col-span-4" label="status" name={Lang('public.active')} refItem={[component, "status_id"]} />
                        <CheckBox className="col-span-4" label="citizen" name={Lang('public.not_citizen')} refItem={[component, "is_not_citizen"]} />
                        <Dropzone refItem={[component, "photo"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl+"/"} uploadDir={uploadDir} required="true" />
                    </Box>
                </Frame>
                <ButtonContainer>
                    <Button label="save" onClick={saveItem} />
                    <Button label="back" onClick={back} />
                </ButtonContainer>
            </>
    );
}