"use client";
import { useEffect,useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from '@/lib/config';
import { Loading } from "@/Theme/Midone/Utils";
import { useData,useFormRefs,Frame } from "@/Theme/Midone/Forms";
import { UserInfo,TicketInfo,List,FormReply,SendScore } from '@/Components/Ticket/Details';

export default function View({ id,formUrl,filterStatus }){
    const {Lang,local} = useLang();
    const {laraAdmin,mediaPath} = useConfig();
    let component = useFormRefs();
    let {get} = useData();
    let [infoServer, setInfoServer] = useState(1);
    const laravelUrl = "/tickets"; 
    let url = laraAdmin+laravelUrl+"/details/"+id+"?filter="+filterStatus;

    useEffect(() => {
        get(url, component, "info");
    }, [infoServer]);

    const data = component?.state?.info;
    let user = data?.user;
    let ticket = data?.ticket;
    let ticketItems = data?.ticketItems;
    let replyStatus = data?.replyStatus;
    
    return(
        <>
            <Frame title={Lang(["public.tickets"])} key={infoServer}>
            {(Object.keys(data)?.length == 0)?
                <Loading  />
            :
                <>
                    <div className="col-span-12 lg:col-span-4 xxl:col-span-10 ">
                        <UserInfo item={user} />
                        <TicketInfo item={ticket} local={local} Lang={Lang} />
                        {(filterStatus)? <SendScore item={ticket} Lang={Lang} /> : ""}
                    </div>
                    <div className="col-span-12 lg:col-span-8 xxl:col-span-10 ">
                        <List id={id} laraAdmin={laraAdmin} mediaPath={mediaPath} laravelUrl="/ticket-items" Lang={Lang} />
                        {(ticket?.reply_status_id == 3)? "" : <FormReply keyServer={setInfoServer} id={id} replyStatus={replyStatus} formUrl={formUrl} /> }
                    </div>
                </>
            }
            </Frame>
        </>
    );
}