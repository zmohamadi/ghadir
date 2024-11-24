"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid,Frame,useData,FeatherIcon,Tools } from "@/Theme/Midone/Utils";

export function List({ panel="admin",access=true,query="" }){

    const {local,Lang} = useLang();
    const {mediaPath, laraAdmin ,nextAdmin } = useConfig();
    const formUrl = panel == "admin" ? "/tickets" : "/myTickets"; 
    const laravelUrl = "/tickets"; 
    const {destroy} = useData();

    let info = {
        // insertLink: panel=="promoter" && nextAdmin+"/myTickets/new",
        insertLink: nextAdmin+"/tickets/new",
        insertLabel:"new_ticket",
        url: laraAdmin+laravelUrl+"?"+query,
        columns: [
            {label: "", jsx: (item)=>(<Pic src={mediaPath + "/users/" + item?.photo} defaultImg={`${mediaPath}/public/default/avatar.png`} classImg="user-avatar rounded-full" key={"img" + item?.photo} />),},
            {label: "creator_record", jsx: (item)=><span>{item?.creator?.firstname + " " + item?.creator?.lastname} <div className="ltr">{item?.created_at}</div> </span>},
            {label: "subject", field: "item.title_"+local},
            {label: "reply_status", jsx: (item)=><span className={"text-"+item?.reply_status?.color}>{item?.reply_status?.["title_"+local]}</span>},
            // {label: "status", jsx: (item)=><span className={"text-"+item?.active_status?.color}>{item?.active_status?.["title_"+local]}</span>},
            {label: "", sort:false, width:"110px", jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Edit" url={nextAdmin+formUrl+"/"+item?.id+"/edit"} tooltip={Lang('public.edit')} />
                        <FeatherIcon name="Eye" url={nextAdmin+formUrl+"/"+item?.id} tooltip={Lang('public.view')} />
                        <FeatherIcon name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={()=>destroy(laraAdmin+laravelUrl+"/"+item?.id)} />
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