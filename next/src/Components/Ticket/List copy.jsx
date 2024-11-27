"use client";

import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid,Frame,FeatherIcon,Pic } from "@/Theme/Midone/Utils";

export function List({ access,query,formUrl }){
    const {local,Lang} = useLang();
    const { mediaPath,laraAdmin,nextAdmin } = useConfig();
    const laravelUrl = "/tickets"; 

    let info = {
        insertLink: (!access) && nextAdmin+"/"+formUrl+"/new",
        insertLabel:"new_ticket",
        url: laraAdmin+laravelUrl+"?"+query,
        columns: [
            {label: "", jsx: (item)=>(<Pic src={mediaPath + "/users/" + item?.user?.photo} defaultImg={`${mediaPath}/public/default/avatar.png`} classImg="user-avatar rounded-full" key={"img" + item?.user?.photo} />),},
            {label: "title", field: "title"},
            {label: "subject", field: "subject.title_"+local},
            {label: "creator_record", jsx: (item)=><span>{item?.user?.firstname + " " + item?.user?.lastname} <div className="ltr">{item?.created_at}</div> </span>},
            {label: "evaluate", field: "score"},
            {label: "reply_status", jsx: (item)=><span className={"text-"+item?.reply_status?.color}>{item?.reply_status?.["title_"+local]}</span>},
            {label: "check_priority", jsx: (item)=><span className={"text-"+item?.priority_status?.color}>{item?.priority_status?.["title_"+local]}</span>},
            // {label: "status", jsx: (item)=><span className={"text-"+item?.active_status?.color}>{item?.active_status?.["title_"+local]}</span>},
            {label: "", sort:false, width:"110px", jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Eye" url={nextAdmin+formUrl+"/"+item?.id} tooltip={Lang('public.view')} />
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