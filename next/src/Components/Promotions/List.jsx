"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import { Select } from "@/Theme/Midone/Forms/Select";
import { useEffect, useRef, useState } from "react";
import { Box, Button, ButtonContainer } from "@/Theme/Midone";
import { useAuth } from "@/lib";
import Link from "next/link";

export function List({query}) {
    const { user } = useAuth();
    const access = user?.role_id == 1 ? true : false;
    const {Lang, local} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy,getNeedles} = useData();
    const [ needles, setNeedles ] = useState();
    const [ params, setParams ] = useState({ register_status: "", report_status: "" });
    const [ url, setUrl ] = useState(`${laraAdmin}/promotions?${query}`);
    const effectRan = useRef(false);
    const formUrl = nextAdmin+"/promotions";

    useEffect(() => {
        if (!effectRan.current) {
          getNeedles(`${laraAdmin}/promotions/get-needles`, setNeedles);
          effectRan.current = true;
        }
      }, [getNeedles, laraAdmin, formUrl]);
    
      useEffect(() => {
        // ساختن query string از params
        const urlItems = Object.keys(params)
            .filter(key => params[key] !== "")
            .map(key => `${key}=${params[key]}`)
            .join("&");
    
        // ادغام query و urlItems با در نظر گرفتن شرایط
        const combinedQuery = [query, urlItems].filter(Boolean).join("&");
    
        // تنظیم URL نهایی
        setUrl(`${laraAdmin}/promotions?${combinedQuery}`);
    }, [params, query, laraAdmin]);
    
    const handleFilterChange = (e, filter) => {
        setParams((prevParams) => ({ ...prevParams, [filter]: e.target.value }));
      };
    
      const clearFilter = () => {
        setParams({ register_status: "", report_status: "" });
      };
    
    let info = {
        insertLink: access ? `${formUrl}/new` : "",
        url: url,
        columns: [
            // {
            //     label: "",
            //     jsx: (item) => (
            //         <Pic 
            //             src={mediaPath + "/promotions/" + item?.photo} 
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
                        {`${item?.title}`}
                    </Link>
                ),
            },
            { label: "year", field: "year" },
            ...(access ? [
                { 
                    label: "register_status", 
                    jsx: (item) => (
                        <span className={"rounded-full py-1 px-2  text-white bg-"+item?.active_register?.color}>
                            {item?.active_register?.["title_" + local]}
                        </span>
                    )
                },
                { 
                    label: "report_status", 
                    jsx: (item) => (
                        <span className={"rounded-full py-1 px-2  text-white bg-"+item?.active_report?.color}>
                            {item?.active_report?.["title_" + local]}
                        </span>
                    )
                },
                {
                    label: "agrees",
                    jsx: (item) => (
                        <Link className="rounded-full py-1 px-2 text-white bg-theme-17" 
                        href={`${nextAdmin}/agrees?promotion=${item?.id}`}>
                            {`${item?.user_count}`}
                        </Link>
                    ),
                },
                {
                    label: "reports",
                    jsx: (item) => (
                        <Link className="rounded-full py-1 px-2 text-white bg-theme-17" 
                        href={`${nextAdmin}/reports?promotion=${item?.id}`}>
                            {`${item?.report_count}`}
                        </Link>
                    ),
                },
                {
                    label: "supports",
                    jsx: (item) => (
                        <Link className="rounded-full py-1 px-2 text-white bg-theme-17" 
                        href={`${nextAdmin}/supports?promotion=${item?.id}`}>
                            {`${item?.sum_support}`}
                        </Link>
                    ),
                },
            ] : []),
            { label: "created_at", field: "created_at" },
            {
                label: "",
                sort: false,
                jsx: (item) => (
                    <div className="flex justify-center">
                        <FeatherIcon 
                            access={access} 
                            name="Edit" 
                            url={formUrl + "/" + item?.id + "/edit"} 
                            tooltip={Lang('public.edit')} 
                        />
                        {/* <FeatherIcon 
                            access={access} 
                            name="Users" 
                            url={nextAdmin + "/promotions/" + item?.id + "/promoters"} 
                            tooltip={Lang('public.promoters')} 
                        />
                        <FeatherIcon 
                            access={access} 
                            name="Package" 
                            url={nextAdmin + "/promotions/" + item?.id + "/supports"} 
                            tooltip={Lang('public.supports')} 
                        /> */}
                        <FeatherIcon 
                            name="Eye" 
                            url={formUrl + "/" + item?.id} 
                            tooltip={Lang('public.view')} 
                        />
                        <FeatherIcon 
                            access={access} 
                            name="XOctagon" 
                            tooltip={Lang('public.delete')} 
                            color="darkred" 
                            onClick={() => destroy(laraAdmin + "/reports/" + item?.id)} 
                        />
                    </div>
                ),
            }, 
        ],
    };
    
    return(
        <>
            <Frame title={Lang(["public.promotions"])}>
                {access &&<>
                    <Box shadow={false} minIcon={true} min={true} cols={"grid-cols-10"}>
                        <Select
                            defaultValue={params.register_status}
                            onChange={(e) => handleFilterChange(e, "register_status")}
                            className="col-span-5 md:col-span-3"
                            label="register_status"
                            data={needles?.status?.filter(item => item.group_id == 11)}
                            titleKey={"title_" + local} valueKey="code"
                        />
                        <Select
                            defaultValue={params.report_status}
                            onChange={(e) => handleFilterChange(e, "report_status")}
                            className="col-span-5 md:col-span-3"
                            label="report_status"
                            data={needles?.status?.filter(item => item.group_id == 8)}
                            titleKey={"title_" + local} valueKey="code"
                        />
                        
                        <ButtonContainer className="mt-7 md:mt-6 text-right ">
                            <Button label="clear_filter" className="btn btn-secondary w-20" onClick={clearFilter} />
                        </ButtonContainer>
                        </Box>
                </>}
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                </div>
            </Frame>
        </>
    );
}