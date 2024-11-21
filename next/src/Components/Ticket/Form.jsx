"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { useData,useFormRefs,Frame,Input,Button,ButtonContainer,Textarea,CheckBox, Box, Radio } from "@/Theme/Midone/Forms";
// import { Tab,TabHeader,TabBody,TabList,TabPanel } from "@/Theme/Midone/Forms/Tab";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";
// import { CKEditor } from "@/Theme/Midone/Forms/Ckeditor";
import { Loading } from "@/Theme/Midone";

export default function Form({id,panel}){
    const { Lang,local } = useLang();
    const { laraAdmin } = useConfig();
    let component = useFormRefs();
    const router = useRouter();
    let { save, get, getNeedles } = useData();
    let [needles, setNeedles] = useState();
    const formUrl = "/tickets"; 
    let uploadUrl = laraAdmin+"/upload/.-media-tickets";
    let deleteUrl = laraAdmin+"/deleteFile/.-media-tickets";

    let url = laraAdmin+formUrl, method = "new";
    if(id != 0 && id != undefined) url = laraAdmin+formUrl+"/"+id, method = "edit";

    useEffect(() => {
        getNeedles(laraAdmin+formUrl+'/get-needles', setNeedles);
        if(id != 0 && id != undefined) get(url, component, "info");
    }, []);

    const saveItem = ()=>save(url, component, method, formUrl);
    const back = ()=>router.back();
    const data = component?.state?.info;

    // console.log(panel);

    return(
        <>
            <Frame title={Lang(["public.tickets"])}>
            {(needles==null)?
                    <div className="col-span-12 xxl:col-span-9">
                        <Loading className="mt-5" />
                    </div>
                :<>
                <Box>
                    <Input type="hidden"  defaultValue={panel} refItem={[component, `panel`]} />
                    <SelectTail label="subject"  data={needles?.ticketsubject} refItem={[component, "subject_id"]}  required="true" />
                    <Input label="title" required="true" refItem={[component, "title"]} />
                    <Dropzone label="photo" refItem={[component, "photo"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl+"/"} />
                    <Textarea label="text" refItem={[component, "content"]} required="true" />
                    {
                        panel=="admin" && <>
                        <Textarea label="reply" className="col-span-12" refItem={[component, "reply"]} />

                        <Radio
                            type="col" 
                            label="status_ticket" 
                            refItem={[component, `status_ticket`]}
                            data={needles?.status?.filter(item => item.group_id === 18)}
                            valueKey="code" titleKey={"title_"+local}
                            key={"status_ticket"+needles?.status?.length}
                            defaultValue={data?.status_ticket}
                            /> 
                        <Radio type="col" label="status_reply"     
                            refItem={[component, `status_reply`]}
                            defaultValue={data?.status_reply}
                            data={needles?.status?.filter(item => item.group_id === 21)}
                            valueKey="code" titleKey={"title_"+local}  
                            key={"status_reply"+needles?.status?.length}
                                
                        /> 
                        </>
                    }
                   
                   
                </Box>
                </>}
            </Frame>
            <ButtonContainer>
                <Button label="save" onClick={saveItem} />
                <Button label="back" onClick={back} />
            </ButtonContainer>
        </>
    );
}