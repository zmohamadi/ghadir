"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic, useFormRefs } from "@/Theme/Midone/Utils";
import { Select } from "@/Theme/Midone/Forms/Select";
import { useEffect, useRef, useState } from "react";
import { Box, Button, ButtonContainer, Input, SelectTail } from "@/Theme/Midone";
import { useAuth } from "@/lib";
import Link from "next/link";
import { Filtering } from "../Public/Filtering";

export function List({promotion=null,promoter_id=null}){
    const {user} = useAuth();
    const access = user?.role_id == 1 ?  true : false;
    const {Lang, local} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy,getNeedles} = useData();
    const formUrl = nextAdmin+"/reports";
    const [filters, setFilters] = useState({});
    const [url, setUrl] = useState(`${laraAdmin}/reports`);

    useEffect(() => {
        const filterParams = Object.keys(filters)
            .filter((key) => filters[key])
            .map((key) => `${key}=${filters[key]}`)
            .join("&");

        const updatedUrl = filterParams
            ? `${laraAdmin}/tribunes?${filterParams}`
            : `${laraAdmin}/tribunes`;

        setUrl(updatedUrl);
    }, [filters, laraAdmin]);

    const handleFiltersChange = (newFilters) => {
        setFilters(newFilters);
    };


    let info = {
        insertLink:`${formUrl}/new`,
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
           
            {
                label: "title",
                jsx: (item) => (
                    <Link href={`${formUrl}/${item.id}`}>
                        {`${item?.promotion?.title}-${item?.promotion?.year}`}
                    </Link>
                ),
            },
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
                {access&&<>
                    <Filtering
                        promotion={true}
                        promoter={true}
                        reportStatus={true}
                        url="reports"
                        onFiltersChange={handleFiltersChange}
                    />
                </>}
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                   
                </div>
            </Frame>
        </>
    );
}