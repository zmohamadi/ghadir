"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid,Frame,useData,FeatherIcon,Tools } from "@/Theme/Midone/Utils";

export function List({panel="admin",access=true , query=""}){

    const {local,Lang} = useLang();
    const {mediaPath, laraAdmin ,nextAdmin } = useConfig();
    const formUrl = panel == "admin" ? "/tickets" : "/myTickets"; 
    const {destroy} = useData();
    let info = {
        insertLink: panel=="promoter" && nextAdmin+"/myTickets/new",
        insertLabel:"new_ticket",
        url: laraAdmin+"/tickets?"+query,
        columns: [
            {label: "title", field: "title"},
            {label: "subject", field: "subject.title"},
            {label: "promoter", jsx: (item)=><span>{item?.promoter?.firstname} {item?.promoter?.lastname}</span>},
            {label: "date", jsx: (item)=><span dir="ltr" className="ltr">{Tools?.toJalaliDateString(item?.created_at)}</span>},
            {label: "status_ticket", jsx: (item)=><span className={"text-"+item?.ticket_status?.color}>{item?.ticket_status?.["title_"+local]}</span>},
            {label: "status_reply", jsx: (item)=><span className={"text-"+item?.reply_status?.color}>{item?.reply_status?.["title_"+local]}</span>},
            {label: "",
                sort:false, 
                width:"110px", 
                jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Edit" url={nextAdmin+formUrl+"/"+item?.id+"/edit"} tooltip={Lang('public.edit')} />
                        {/* <FeatherIcon name="Eye" url={nextAdmin+formUrl+"/"+item?.id} tooltip={Lang('public.view')} /> */}
                        <FeatherIcon name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={()=>destroy(laraAdmin+formUrl+"/"+item?.id)} />
                    </div>
                </>
            },
        ],
    }

    return(
        <Frame title={Lang(["public.tickets"])}>
            <div className="intro-y col-span-12">
                <Grid {...info} key={"table key"} />
            </div>
        </Frame>
    );
}