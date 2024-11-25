"use client";
import { useEffect } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { useData,useFormRefs,Frame,Input,CheckBox,Button,ButtonContainer,Box } from "@/Theme/Midone/Forms";

export default function Form({ id }){
    const { Lang,local } = useLang();
    const { laraAdmin } = useConfig();
    let component = useFormRefs();
    const router = useRouter();
    let { save, get } = useData();
    const formUrl = "/ticketSubjects"; 
    const laravelUrl = "/ticket-subjects"; 

    let url = laraAdmin+laravelUrl, method = "new";
    if(id != 0 && id != undefined) url = laraAdmin+laravelUrl+"/"+id, method = "edit";

    useEffect(() => {
        if(id != 0 && id != undefined) get(url, component, "info");
    }, []);

    const saveItem = ()=>save(url, component, method, formUrl);
    const back = ()=>router.back();

    return(
        <>
            <Frame title={Lang(["public.ticket_subjects"])}>
                <Box>
                    <Input label="title" required="true" refItem={[component, "title_"+local]} />
                    <CheckBox className="col-span-6" label="status" name={Lang('public.active')} refItem={[component, "status_id"]} />
                </Box>
            </Frame>
            <ButtonContainer>
                <Button label="save" onClick={saveItem} />
                <Button label="back" onClick={back} />
            </ButtonContainer>
        </>
    );
}