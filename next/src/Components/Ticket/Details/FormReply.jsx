"use client";

import { useLang } from "@/lib/lang";
import { useConfig } from '@/lib/config';
import { useRouter } from 'next/navigation';
import { useData,useFormRefs,Button,ButtonContainer,Box,Textarea,Radio } from "@/Theme/Midone/Forms";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";

export function FormReply({ keyServer,id,replyStatus,formUrl }) {
    const { Lang,local } = useLang();
    const { laraAdmin } = useConfig();
    let component = useFormRefs();
    const router = useRouter();
    let { save, getRefValue } = useData();
    const laravelUrl = "/ticket-items"; 
    let uploadUrl = laraAdmin+"/upload/.-media-tickets";
    let deleteUrl = laraAdmin+"/deleteFile/.-media-tickets";

    let url = laraAdmin+laravelUrl+"/send/"+id, method = "new";

    const saveItem = ()=>save(url, component, method, `/${formUrl}/${id}?`+Math.random(), (request, response)=>keyServer(Math.random()));
    const back = ()=>router.back();
    
    return(
        <>
            <Box>
                <Radio className="col-span-12" type="col" label="reply_status" id="reply_status_id" refItem={[component, `reply_status_id`]}
                    data={replyStatus} titleKey={"title_"+local} valueKey="code"
                />
                <div className="col-span-12">
                    <div className="grid grid-cols-12 gap-4">
                        <Textarea className="col-span-6" label="ticket_reply" refItem={[component, "text"]} />
                        <Dropzone className="col-span-6" label="media" refItem={[component, "media"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl+"/"} maxFiles="50"
                            help = {Lang("public.accept_format")+": png,jpg,tif,gif,jpeg,WebP,AVIF,jfif,pdf,doc,docx,ppt"}
                        />
                        <ButtonContainer className="col-span-12">
                            <Button label="save" onClick={saveItem} component={component} />
                            <Button label="back" onClick={back} />
                        </ButtonContainer>
                    </div>
                </div>
            </Box>
        </>
    );
}