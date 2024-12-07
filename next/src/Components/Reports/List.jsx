"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import { useEffect, useState } from "react";
import { useAuth } from "@/lib";
import Link from "next/link";
import { Filtering } from "../Public/Filtering";

export function List(){

    const {user} = useAuth();
    const access = user?.role_id == 1 ?  true : false;
    const {Lang, local} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy} = useData();
    const formUrl = nextAdmin+"/reports";
      // استفاده از URLSearchParams برای گرفتن مقادیر فیلترها از URL
      const getFilterFromUrl = () => {
        const urlParams = new URLSearchParams(window.location.search);
        return {
            promoter: urlParams.get('promoter') || null,
            promotion: urlParams.get('promotion') || null,
            province: urlParams.get('province') || null,
            city: urlParams.get('city') || null,
        };
    };

    // مقداردهی اولیه فیلترها از URL
    const [filters, setFilters] = useState(getFilterFromUrl);
    const [url, setUrl] = useState(`${laraAdmin}/reports`);

    useEffect(() => {
        const filterParams = Object.keys(filters)
            .filter((key) => filters[key])
            .map((key) => `${key}=${filters[key]}`)
            .join("&");

        const updatedUrl = filterParams
            ? `${laraAdmin}/reports?${filterParams}`
            : `${laraAdmin}/reports`;

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
            // {
            //     label: "",
            //     jsx: (item) => (
            //         <Pic 
            //             src={mediaPath + "/promotions/" + item?.promotion?.photo} 
            //             defaultImg={`${mediaPath}/public/default/avatar.png`} 
            //             classImg="user-avatar" 
            //             key={"img" + item?.photo} 
            //         />
            //     ),
            // },
           
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
                
            ] : []),
            {label: "confirm_status", jsx: (item)=>
                <span className={"rounded-full py-1 px-2  text-white bg-"+item?.confirm_repo?.color}>{item?.confirm_repo?.["title_"+local]}</span>},
            { label: "created_at", field: "created_at" },
            {label: "", sort:false, 
                jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon displayIf={item?.confirm_id != 1} name="Edit" url={formUrl+"/"+item?.id+"/edit"} tooltip={Lang('public.edit')} />
                        {/* <FeatherIcon name="Lock" url={nextAdmin+"/changePassword/"+item?.id} tooltip={Lang('public.change_password')} /> */}
                        <FeatherIcon  name="Eye" url={formUrl+"/"+item?.id} tooltip={Lang('public.view')} />
                        <FeatherIcon displayIf={item?.confirm_id != 1} name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={()=>destroy(laraAdmin+"/reports"+"/"+item?.id)} />
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
                        filterList={filters}
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