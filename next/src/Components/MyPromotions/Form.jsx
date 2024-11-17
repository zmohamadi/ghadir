"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { useAuth } from "@/lib/auth";
import { useData,useFormRefs,Input,Button,ButtonContainer,Box,CheckBox,Textarea,Frame,Radio, CheckBoxGroup } from "@/Theme/Midone/Forms";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";

export function Form({id,panel="admin"}){
    const link = "/promotions";
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
        getNeedles(laraAdmin+'/promotions/get-needles', setNeedles);
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
// console.log(provinceId);

    return(
        
            <>
                <Frame title={Lang(["public.promotion"])}>
                    <Box>
                        <Input label="title" refItem={[component, "title"]} required="true" />
                        <Input dir="ltr" label="year" refItem={[component, "year"]} required="true" />
                        

                        <Textarea label="description" required="true" refItem={[component, "comments"]}  />
                        <Textarea label="commitments" refItem={[component, "commitments"]}  />
                        <Dropzone className="col-span-12" refItem={[component, "photo"]} required="true" uploadUrl={uploadUrl} deleteUrl={deleteUrl+"/"} uploadDir={uploadDir}  />

                        
                        <Radio className="col-span-3" defaultValue={data?.register_status ? data?.register_status: 1} type="col" label="register" id="register_status" refItem={[component, `register_status`]}
                        data={needles?.status?.filter(item => item.group_id === 11)} valueKey="code" titleKey={"title_"+local}  key={"status_id"+data?.status?.length}
                        />
                        <Radio className="col-span-3"  defaultValue={data?.report_status ? data?.report_status: 1} type="col" label="report" id="report_status" refItem={[component, `report_status`]}
                        data={needles?.status?.filter(item => item.group_id === 8)} valueKey="code" titleKey={"title_"+local}  key={"status_id"+data?.status?.length}
                        />
                        <CheckBox name={Lang('public.has')} className="col-span-3" label={Lang('public.has_course')} refItem={[component, `has_course`]} />
                        <CheckBox name={Lang('public.has')} className="col-span-3" label={Lang('public.has_tribune')} refItem={[component, `has_tribune`]} />

                        <CheckBoxGroup  data={needles?.ritual} key={"ritual"+data?.ritual?.length} label={Lang('public.ritual')}  id="ritual" refItem={[component, `ritual`]} />

                    </Box>    
                </Frame>
                <ButtonContainer>
                    <Button label="save" onClick={saveItem} />
                    <Button label="back" onClick={back} />
                </ButtonContainer>
            </>
    );
}