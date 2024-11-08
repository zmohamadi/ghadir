"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import Link from "next/link";
import { ButtonContainer } from "@/Theme/Midone";

export default function List(){
    const {Lang, local} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy} = useData();

    const formUrl = nextAdmin+"/promotions";

    let info = {
        insertLink: formUrl + "/new",
        perPage:20,
        url: laraAdmin+"/promotions",
        columns: [
            {
                label: "",
                jsx: (item) => (
                    <Pic 
                        src={mediaPath + "/promotions/" + item?.photo} 
                        defaultImg={`${mediaPath}/public/default/avatar.png`} 
                        classImg="user-avatar rounded-full" 
                        key={"img" + item?.photo} 
                    />
                ),
            },
           
            {label: "title", field: "title" },
            {label: "year", field: "year" },
            // {label: "gender", sort:false, field: "gender.title_"+local},
            {label: "register_status", jsx: (item)=><span className={"text-"+item?.active_status?.color}>{item?.register_status?.["title_"+local]}</span>},
            {label: "report_status", jsx: (item)=><span className={"text-"+item?.active_status?.color}>{item?.report_status?.["title_"+local]}</span>},
            {label: "has_course", jsx: (item)=><span>{item?.has_course == 1 ?Lang('public.has') : "-"}</span>},
            {label: "has_tribune", jsx: (item)=><span>{item?.has_tribune == 1 ?Lang('public.has') : "-"}</span>},
           

            
            {label: "", sort:false, 
                jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Edit" url={formUrl+"/"+item?.id+"/edit"} tooltip={Lang('public.edit')} />
                        {/* <FeatherIcon name="Lock" url={nextAdmin+"/changePassword/"+item?.id} tooltip={Lang('public.change_password')} /> */}
                        {/* <FeatherIcon name="Eye" url={formUrl+"/"+item?.id} tooltip={Lang('public.view')} /> */}
                        <FeatherIcon name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={()=>destroy(laraAdmin+"/promotions"+"/"+item?.id)} />
                    </div>
                </>
            }, 
        ],
    }

    return(
        <>
            <Frame title={Lang(["public.promotions"])}>
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                   
                </div>
            </Frame>
        </>
    );
}