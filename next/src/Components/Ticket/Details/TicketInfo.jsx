"use client";

import { Tools } from "@/Theme/Midone/Utils";

export function TicketInfo({ item,Lang,local }){

    return(
        <>
            <div className="alert alert-success show mb-2 mt-5">
                {[
                { label: Lang("public.title"), value: item?.title },
                { label: Lang("public.subject"), value: item?.subject?.["title_" + local] },
                { label: Lang("public.reply_status"), value: item?.reply_status?.["title_" + local] },
                { label: Lang("public.check_priority"), value: item?.priority_status?.["title_" + local] },
                { label: Lang("public.created_at"), value: Tools?.toJalaliDateString(item?.created_at) },
                ].map((row, index) => (
                    <div
                    key={index}
                    className="flex items-center mt-4 text-sm font-medium "
                    
                  >
                      <h4 className="ml-auto">{row.label}:</h4>
                      <span className={` ${index === 4 ? "ltr" : ""}`}>{row.value}</span>
                  </div>
                  
                ))}
            </div>

        </>
    );
}