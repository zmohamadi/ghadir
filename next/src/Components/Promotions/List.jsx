"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";

export function List({panel="admin",access=true , query=""}){

    const {Lang, local} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy} = useData();

    const formUrl = nextAdmin+"/promotions";
    const url = `${laraAdmin}/promotions?${query}`;

    let info = {
        insertLink: access ? `${formUrl}/new` : "",
        perPage: 20,
        url: url,
        columns: [
            {
                label: "",
                jsx: (item) => (
                    <Pic 
                        src={mediaPath + "/promotions/" + item?.photo} 
                        defaultImg={`${mediaPath}/public/default/avatar.png`} 
                        classImg="user-avatar" 
                        key={"img" + item?.photo} 
                    />
                ),
            },
            { label: "title", field: "title" },
            { label: "year", field: "year" },
            ...(access ? [
                { 
                    label: "register_status", 
                    jsx: (item) => (
                        <span className={"text-" + item?.active_register?.color}>
                            {item?.active_register?.["title_" + local]}
                        </span>
                    )
                },
                { 
                    label: "report_status", 
                    jsx: (item) => (
                        <span className={"text-" + item?.active_report?.color}>
                            {item?.active_report?.["title_" + local]}
                        </span>
                    )
                },
                { label: "pro_people_count", jsx: (item) => <span>{item?.user_count}</span> },
                { label: "report_count", jsx: (item) => <span>{item?.report_count}</span> },
                { label: "sum_support", jsx: (item) => <span>{item?.sum_support}</span> },
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
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                   
                </div>
            </Frame>
        </>
    );
}