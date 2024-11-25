"use client";
import { useEffect,useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from '@/lib/config';
import { useRouter } from 'next/navigation';
import { useData,useFormRefs,Button,Input,Textarea,CheckBox,Frame } from "@/Theme/Midone/Forms";
import { TicketInfo,List,FormReply,SendScore } from '@/Components/Ticket/Details';

export default function View({ id,filterStatus }){
    const {Lang} = useLang();
    const {laraAdmin,nextAdmin,mediaPath} = useConfig();
    let component = useFormRefs();
    const router = useRouter();
    let {get} = useData();
    let [infoServer, setInfoServer] = useState(1);
    const formUrl = "/tickets"; 
    let url = laraAdmin+formUrl+"/details/"+id+"?filter="+filterStatus;

    useEffect(() => {
        get(url, component, "info");
    }, [infoServer]);

    const back = ()=>router.back();
    const data = component?.state?.info;
    let ticket = data?.ticket;
    let ticketItems = data?.ticketItems;
    let replyStatus = data?.replyStatus;
console.log(filterStatus)
    return(
        <>
            <Frame title={Lang(["public.tickets"])} key={infoServer}>
                <div className="col-span-12 lg:col-span-4 xxl:col-span-10 ">
                    <TicketInfo item={ticket} Lang={Lang} />
                    <SendScore item={ticket} Lang={Lang} />
                </div>
                <div className="col-span-12 lg:col-span-8 xxl:col-span-10 ">
                    <List id={id} laraAdmin={laraAdmin} mediaPath={mediaPath} laravelUrl="/ticket-items" Lang={Lang} />
                    {(ticket?.reply_status_id == 3)? "" : <FormReply keyServer={setInfoServer} id={id} replyStatus={replyStatus} /> }
                </div>
            </Frame>
        </>
    );
}