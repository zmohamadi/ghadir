"use client";

import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Tools,Pic } from "@/Theme/Midone/Utils";

export function TicketInfo({ item,Lang }){
    const {local} = useLang();
    const {mediaPath} = useConfig();

    // user_id  subject_id  reply_status_id  priority_status_id  created_at
    return(
        <>
            <div className="ads-box box relative overflow-hidden intro-y">
                <div className="flex flex-1 px-5 items-center lg:justify-start">
                    <div className="w-20 h-20 sm:w-40 sm:h-24 flex-none lg:w-32 lg:h-32 image-fit relative">
                        <Pic src={`${mediaPath}/users/${item?.user?.photo}`} defaultImg={`${mediaPath}/public/default/avatar.png`} classImg="rounded-full" key={"img"+item?.user?.photo} />
                    </div>
                    <div className="mr-5">
                        <div className="w-full sm:w-40 truncate sm:whitespace-normal font-medium text-lg">{item?.user?.firstname+" "+item?.user?.lastname}</div>
                        {/* <div className="text-gray-600">{item?.role?.["title_" + local]}</div> */}
                    </div>
                </div>
            </div>
            <div className="intro-y box p-5 bg-theme-17 text-white mt-5">
                <div className="flex items-center">
                    <h2 className="text-2xl font-medium leading-none mt-3">{item?.subject?.["title_"+local]}</h2>
                </div>
                <div className="mt-4">
                    {/* <h6 className="text-xl font-medium leading-none mt-4">{item?.user?.firstname+" "+item?.user?.lastname}</h6> */}
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