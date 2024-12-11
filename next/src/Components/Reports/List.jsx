"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid, Frame, FeatherIcon, useData } from "@/Theme/Midone/Utils";
import { useMemo, useState } from "react";
import Link from "next/link";
import { Filtering } from "@/Components/Public/Filtering";
import { useSearchParams } from 'next/navigation'
import { useAuth } from "@/lib";

export function List({query}){

    const { Lang, local } = useLang();
    const {destroy} = useData();
    const { laraAdmin, nextAdmin } = useConfig();
    const formUrl = nextAdmin + "/reports";
    const {user} = useAuth();
    const access = user?.role_id == 1 ?  true : false;

    const urlParams = useSearchParams()
    const getFilterFromUrl = () => {
        return {
            promoter: urlParams.get('promoter') || null,
            promotion: urlParams.get('promotion') || null,
            province: urlParams.get('province') || null,
            city: urlParams.get('city') || null,
        };
    };
    const [filters, setFilters] = useState(getFilterFromUrl());
    
    let info = useMemo(()=>{
        const filterParams = Object.keys(filters)
            .filter((key) => filters[key] && filters[key] != "null")
            .map((key) => `${key}=${filters[key]}`)
            .join("&");
        
        const url = access ?
         filterParams
            ? `${laraAdmin}/reports?${filterParams}`
            : `${laraAdmin}/reports` : `${laraAdmin}/reports?promoter=${user.id}`;

        return {
            url,
            insertLink:`${formUrl}/new`,
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
                    label: "promotion",
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
                    <span className={" inline-flex items-center rounded-full py-1 px-2  text-white bg-"+item?.confirm_repo?.color}>{item?.confirm_repo?.["title_"+local]}</span>},
                { label: "created_at", field: "created_at" },
                {label: "", sort:false, 
                    jsx:(item)=><>
                        <div className='flex justify-center '>
                            <FeatherIcon displayIf={item?.confirm_id != 1} name="Edit" url={formUrl+"/"+item?.id+"/edit"} tooltip={Lang('public.edit')} />
                            <FeatherIcon  name="Eye" url={formUrl+"/"+item?.id} tooltip={Lang('public.view')} />
                            <FeatherIcon displayIf={item?.confirm_id != 1} name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={()=>destroy(laraAdmin+"/reports"+"/"+item?.id)} />
                        </div>
                    </>
                }, 
            ],
        }
    }, [filters])

    const handleFiltersChange = (newFilters) => {
        setFilters(newFilters);
    };

    return (
        <>
            <Frame title={Lang(["public.reports"])} >
                {access&&
                    <Filtering
                        promotion={true}
                        promoter={true}
                        reportStatus={true}
                        url="reports"
                        filterList={filters}
                        onFiltersChange={handleFiltersChange}
                    />
                }

                <div className="intro-y col-span-12">
                    <Grid {...info} />
                </div>
            </Frame>
        </>
    );
}
