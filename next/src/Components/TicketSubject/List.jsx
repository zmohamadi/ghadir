"use client";

import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid,Frame,useData,FeatherIcon } from "@/Theme/Midone/Utils";

export function List(){
    const {local,Lang} = useLang();
    const {laraAdmin,nextAdmin} = useConfig();
    const formUrl = "/ticketSubjects";
    const laravelUrl = "/ticket-subjects";
    const {destroy} = useData();

    let info = {
        insertLink: nextAdmin+formUrl+"/new",
        url: laraAdmin+laravelUrl,
        columns: [
            {label: "title", field: "title_"+local},
            {label: "creator_record", jsx: (item)=><span>{item?.creator?.firstname+" "+item?.creator?.lastname}</span>},
            {label: "editor_record", jsx: (item)=><span>{(item?.editor)? item?.editor?.firstname+" "+item?.editor?.lastname : "-----"}</span>},
            {label: "status", jsx: (item)=><span className={" inline-flex items-center rounded-full py-1 px-2  text-white bg-"+item?.active_status?.color}>{item?.active_status?.["title_"+local]}</span>},
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
        <Frame title={Lang(["public.ticket_subjects"])}>
            <div className="intro-y col-span-12">
                <Grid {...info} key={"table key"} />
            </div>
        </Frame>
    );
}