"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import { Select } from "@/Theme/Midone/Forms/Select";
import { useEffect, useRef, useState } from "react";
import { Box, Button, ButtonContainer } from "@/Theme/Midone";

export function List({panel,access , query}){

    const {Lang, local} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy,getNeedles} = useData();
    const [ needles, setNeedles ] = useState();
    const [ params, setParams ] = useState({ status: ""});
    const [ url, setUrl ] = useState(`${laraAdmin}/reports?${query}`);
    const effectRan = useRef(false);
    const formUrl = nextAdmin+"/reports";

    useEffect(() => {
        if (!effectRan.current) {
          getNeedles(`${laraAdmin}/reports/get-needles`, setNeedles);
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
        setUrl(`${laraAdmin}/reports?${combinedQuery}`);
    }, [params, query, laraAdmin]);
    
    const handleFilterChange = (e, filter) => {
        setParams((prevParams) => ({ ...prevParams, [filter]: e.target.value }));
      };
    
      const clearFilter = () => {
        setParams({ status: "" });
      };

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
            {panel=="admin"&&<>
                    <Box shadow={false} minIcon={true} min={true} cols={"grid-cols-10"}>
                        <Select
                            defaultValue={params.status}
                            onChange={(e) => handleFilterChange(e, "status")}
                            className="col-span-5 md:col-span-3"
                            label="status"
                            data={needles?.status?.filter(item => item.group_id === 28)}
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