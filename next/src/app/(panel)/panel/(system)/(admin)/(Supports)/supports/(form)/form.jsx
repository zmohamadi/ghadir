"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { useAuth } from "@/lib/auth";
import { Loading } from "@/Theme/Midone/Utils";
import { useData,useFormRefs,Input,Button,ButtonContainer,Box,CheckBox,Textarea,Frame,Radio, CheckBoxGroup } from "@/Theme/Midone/Forms";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";

export default function Form({id}){
    const link = "/supports";
    const {Lang, local} = useLang();
    const {laraAdmin} = useConfig();
    const router = useRouter();
    let component = useFormRefs();
    let {save, get, getNeedles} = useData();
    let [needles, setNeedles] = useState();
    let [provinceId, setProvinceId] = useState(null);

    const {user} = useAuth();
    
    let uploadUrl = laraAdmin+"/upload/.-media-users";
    let deleteUrl = laraAdmin+"/deleteFile/.-media-users";
    let uploadDir = 'media/users/';
    
    let url = laraAdmin+link, method = "new";
    if(id != 0 && id != undefined) url = laraAdmin+link+"/"+id, method = "edit";

    useEffect(() => {
        getNeedles(laraAdmin+'/supports/get-needles', setNeedles);
        get(url, component, "info");
    }, []);

    useEffect(()=>{
        
        if(component?.state.info["city_id"]) setProvinceId(component?.state.info?.city_user?.province_id);
       
    }, [component?.state?.info]);

    const filterCity = (e)=>{
        setProvinceId(e.value);
    };

    const saveItem = ()=>save(url, component, method, link);
    const back = ()=>router.back();
    const data = component?.state?.info;
// console.log(user?.role_id);
// console.log(needles);

    return(
        
            <>
                <Frame title={Lang(["public.support"])}>
                    <Box>
                        <SelectTail label="occasion" refItem={[component, "promotion_id"]} 
                            key={"occasion" + needles?.promotion?.lenght} required="true"
                            data={needles?.promotion} 
                        />
                        <SelectTail label="type" refItem={[component, "type_id"]} 
                            key={"type" + needles?.supporttype?.lenght} required="true"
                            data={needles?.supporttype} 
                        />
                        <Input label="amount" refItem={[component, "amount"]}  />

                        <SelectTail multiple={true} label="included" refItem={[component, "promoters"]} 
                            key={"type" + needles?.promoter?.lenght}
                        >
                            {
                                needles?.promoter?.map((item ,index)=>{
                                    return <option key={"p_"+index} value={item?.id}>{item?.firstname} {item?.lastname}</option>
                                })
                            }
                        </SelectTail>
                        <Textarea label="pack_items"  refItem={[component, "pack_items"]}  />
                        <Textarea label="description" required="true" refItem={[component, "description"]}  />

                    </Box>    
                </Frame>
                <ButtonContainer>
                    <Button label="save" onClick={saveItem} />
                    <Button label="back" onClick={back} />
                </ButtonContainer>
            </>
    );
}