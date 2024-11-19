"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import Link from "next/link";
import { ButtonContainer } from "@/Theme/Midone";
import { useAuth } from "@/lib";

export function List({panel="admin"}){
    // console.log(panel);
    // const access = panel=="admin" ? true : false;
    // const {user} = useAuth();
    const {Lang, local} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy} = useData();

    const formUrl = nextAdmin+"/reports";
    const url = laraAdmin+"/reports" ;

    let info = {
        insertLink: `${formUrl}/new`,
        perPage:20,
        url: url,
        columns: [
            {
                label: "",
                jsx: (item) => (
                    <Pic 
                        src={mediaPath + "/promotions/" + item?.promotion?.photo} 
                        defaultImg={`${mediaPath}/public/default/avatar.png`} 
                        classImg="user-avatar rounded-full" 
                        key={"img" + item?.photo} 
                    />
                ),
            },
           
            {label: "title", field: "promotion.title" },
            {label: "year", field: "promotion.year" },
            // {label: "gender", sort:false, field: "gender.title_"+local},
            // {label: "report_status", jsx: (item)=><span className={"text-"+item?.active_status?.color}>{item?.report_status?.["title_"+local]}</span>},
            // {label: "report_status", jsx: (item)=><span className={"text-"+item?.active_status?.color}>{item?.report_status?.["title_"+local]}</span>},
            // {label: "has_course", jsx: (item)=><span>{item?.has_course == 1 ?Lang('public.has') : "-"}</span>},
            // {label: "has_tribune", jsx: (item)=><span>{item?.has_tribune == 1 ?Lang('public.has') : "-"}</span>},
           

            
            {label: "", sort:false, 
                jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Edit" url={formUrl+"/"+item?.id+"/edit"} tooltip={Lang('public.edit')} />
                        {/* <FeatherIcon name="Lock" url={nextAdmin+"/changePassword/"+item?.id} tooltip={Lang('public.change_password')} /> */}
                        <FeatherIcon name="Eye" url={formUrl+"/"+item?.id} tooltip={Lang('public.view')} />
                        <FeatherIcon name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={()=>destroy(laraAdmin+"/promotions"+"/"+item?.id)} />
                    </div>
                </>
            }, 
        ],
    }

    return(
        <>
            <Frame title={Lang(["public.reports"])}>
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                   
                </div>
            </Frame>
        </>
    );
}