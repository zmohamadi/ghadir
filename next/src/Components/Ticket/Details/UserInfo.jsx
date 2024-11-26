"use client";

import { useConfig } from "@/lib/config";
import { Tools,Pic } from "@/Theme/Midone/Utils";

export function UserInfo({ item }){
    const {mediaPath} = useConfig();
    const gender = Tools?.displayGender(item?.gender, item?.gender_id);

    return(
        <>
            <div className="ads-box box relative overflow-hidden intro-y">
                <div className="flex flex-1 px-5 items-center lg:justify-start">
                    <div className="w-20 h-20 sm:w-40 sm:h-24 flex-none lg:w-32 lg:h-32 image-fit relative">
                        <Pic src={`${mediaPath}/users/${item?.photo}`} defaultImg={`${mediaPath}/public/default/avatar.png`} classImg="rounded-full" key={"img"+item?.photo} />
                    </div>
                    <div className="mr-5">
                        <div className="w-full sm:w-40 truncate sm:whitespace-normal font-medium text-lg">{gender+" "+item?.firstname+" "+item?.lastname}</div>
                        <div className="text-gray-600">{item?.mobile}</div>
                    </div>
                </div>
            </div>
        </>
    );
}