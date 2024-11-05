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

export default function Form({id,link="/users",roleFilter="",roleTitle="",titleFrame=""}){
    const {Lang, local} = useLang();
    const {laraAdmin} = useConfig();
    const router = useRouter();
    let component = useFormRefs();
    let {save, get, getNeedles} = useData();
    let [needles, setNeedles] = useState();


    let uploadUrl = laraAdmin+"/upload/.-media-users";
    let deleteUrl = laraAdmin+"/deleteFile/.-media-users";
    let uploadDir = 'media/users/';
    
    let url = laraAdmin+link, method = "new";
    if(id != 0 && id != undefined) url = laraAdmin+link+"/"+id, method = "edit";

    useEffect(() => {
        getNeedles(laraAdmin+'/users/get-needles', setNeedles);
        get(url, component, "info");
    }, []);

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
                        <Radio type="col" label="gender" id="gender_id" refItem={[component, `gender_id`]}
                            data={needles?.gender} titleKey={"title_"+local} required="true" key={"gender_id"+component?.state?.info?.gender_id}
                        />
                        <CheckBox className="col-span-6" label="status" name={Lang('public.active')} refItem={[component, "status_id"]} />
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