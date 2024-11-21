"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid,Frame,FeatherIcon,Pic } from "@/Theme/Midone/Utils";

export default function List(){
    const {Lang,local} = useLang();
    const {laraAdmin ,nextAdmin} = useConfig();
    const formUrl = "/blog-comments"; 

    let info = {
        url: laraAdmin+formUrl,
        columns: [
            {label: "", jsx: (item)=>(<Pic src={mediaPath + "/users/" + item?.photo} defaultImg={`${mediaPath}/public/default/avatar.png`} classImg="user-avatar rounded-full" key={"img" + item?.photo} />),},
            {label: "creator", jsx: (item) => <span>{item?.creator?.firstname + " " + item?.creator?.lastname}</span>,},
            // {label: "parent", field: "parent"},
            {label: "blog",  field:"blog.title"},
            {label: "status",  jsx: (item)=><span className={"text-"+item?.active_status?.color}>{item?.active_status?.["title_"+local]}</span>},
            {label: "", sort:false, width:"110px", jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Edit" url={nextAdmin+formUrl+"/"+item.id+"/edit"} tooltip={Lang('public.edit')} />
                    </div>
                </>
            },
        ],
    }

    return(
        <Frame title={Lang(["public.comments"])}>
            <div className="intro-y col-span-12">
                <Grid {...info} key={"table key"} />
            </div>
        </Frame>
    );
}