"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import Link from "next/link";
import { ButtonContainer } from "@/Theme/Midone";
import { useAuth } from "@/lib";

export function List({panel="admin",access=true,query=""}){
    // console.log(panel);
    // const access = panel=="admin" ? true : false;
    // const {user} = useAuth();
    const {Lang, local} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy} = useData();

    const formUrl = nextAdmin+"/reports";
    const url = laraAdmin+"/reports?"+query ;

    let info = {
        insertLink: !access && `${formUrl}/new`,
        perPage:20,
        url: url,
        columns: [
            {
                label: "",
                jsx: (item) => (
                    <Pic 
                        src={mediaPath + "/promotions/" + item?.promotion?.photo} 
                        defaultImg={`${mediaPath}/public/default/avatar.png`} 
                        classImg="user-avatar" 
                        key={"img" + item?.photo} 
                    />
                ),
            },
           
            {label: "title", field: "promotion.title" },
            {label: "year", field: "promotion.year" },
            ...(access ? [
                { 
                    label: "promoter", 
                    jsx: (item) => (
                        <span>
                            {item?.promoter?.firstname} {item?.promoter?.lastname}
                        </span>
                    )
                },
                {label: "score", field: "level_id" },
                {label: "confirm_status", jsx: (item)=>
                    <span className={"rounded-full py-1 px-2  text-white bg-"+item?.confirm_repo?.color}>{item?.confirm_repo?.["title_"+local]}</span>},

            ] : []),
            { label: "created_at", field: "created_at" },
            {label: "", sort:false, 
                jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Edit" url={formUrl+"/"+item?.id+"/edit"} tooltip={Lang('public.edit')} />
                        {/* <FeatherIcon name="Lock" url={nextAdmin+"/changePassword/"+item?.id} tooltip={Lang('public.change_password')} /> */}
                        <FeatherIcon name="Eye" url={formUrl+"/"+item?.id} tooltip={Lang('public.view')} />
                        <FeatherIcon name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={()=>destroy(laraAdmin+"/reports"+"/"+item?.id)} />
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