"use client";

import { Tools } from "@/Theme/Midone/Utils";

export function TicketInfo({ item,useLang }){
    const {Lang,local} = useLang;

    return(
        <>
            <div className="intro-y box p-5 bg-theme-17 text-white mt-5">
                <div className="flex items-center">
                    {/* <div className="font-medium">{item?.title}</div> */}
                    <h2 className="text-2xl font-medium leading-none mt-3">{item?.title}</h2>
                </div>
                <div className="mt-4">
                    <h4 className="text-xl font-medium leading-none mt-4">
                        {Lang("public.subject")+" : "}<span>{item?.subject?.["title_"+local]}</span>
                    </h4>
                    <h6 className="text-sm font-medium leading-none mt-4">
                        {Lang("public.reply_status")+" : "}<span className={"text-"+item?.reply_status?.color}>{item?.reply_status?.["title_"+local]}</span>
                    </h6>
                    <h6 className="text-sm font-medium leading-none mt-4">
                        {Lang("public.check_priority")+" : "}<span className={"text-"+item?.priority_status?.color}>{item?.priority_status?.["title_"+local]}</span>
                    </h6>
                    <div className="mt-5 ltr">{Tools?.toJalaliDateString(item?.created_at)}</div>
                </div>
            </div>
        </>
    );
}