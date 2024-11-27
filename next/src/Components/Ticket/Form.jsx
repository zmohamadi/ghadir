"use client";

import { useEffect,useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { useData,useFormRefs,Frame,Input,Button,ButtonContainer,Textarea,Box,Line } from "@/Theme/Midone/Forms";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Select } from "@/Theme/Midone/Forms/Select";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";
import { Loading } from "@/Theme/Midone";

export default function Form(){
    const { Lang,local } = useLang();
    const { laraAdmin } = useConfig();
    let component = useFormRefs();
    const router = useRouter();
    let { save, getNeedles } = useData();
    let [needles, setNeedles] = useState();
    const formUrl = "/tickets"; 
    let uploadUrl = laraAdmin+"/upload/.-media-tickets";
    let deleteUrl = laraAdmin+"/deleteFile/.-media-tickets";

    let url = laraAdmin+formUrl, method = "new";

    useEffect(() => {
        getNeedles(laraAdmin+formUrl+'/get-data', setNeedles);
    }, []);

    const saveItem = ()=>save(url, component, method, formUrl);
    const back = ()=>router.back();
    const data = component?.state?.info;

    return(
        <>
            <Frame title={Lang(["public.tickets"])}>
                {(needles==null)?
                    <div className="col-span-12 xxl:col-span-9">
                        <Loading className="mt-5" />
                    </div>
                :
                    <>
                        <Box>
                            <Input label="title" refItem={[component, "title"]} required="true" />
                            <Line/>
                            <Select label="subject" data={needles?.subject} titleKey={"title_"+local} required="true"
                                refItem={[component, "subject_id"]} defaultValue={(data?.subject_id==undefined)? "" : data?.subject_id} />
                            <Select label="check_priority" data={(needles?.statuses	)?.filter(priority=>priority.group_id==24)} titleKey={"title_"+local} valueKey="code" required="true"
                                refItem={[component, "priority_status_id"]} defaultValue={(data?.priority_status_id==undefined)? "" : data?.priority_status_id} />
                            <Textarea label="ticket_text" refItem={[component, "text"]} required="true" />
                            <Dropzone label="media" refItem={[component, "media"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl+"/"} maxFiles="50"
                                help = {Lang("public.accept_format")+": png,jpg,tif,gif,jpeg,WebP,AVIF,jfif,pdf,doc,docx,ppt"}
                            />
                        </Box>
                    </>
                }
            </Frame>
            <ButtonContainer>
                <Button label="save" onClick={saveItem} />
                <Button label="back" onClick={back} />
            </ButtonContainer>
        </>
    );
}