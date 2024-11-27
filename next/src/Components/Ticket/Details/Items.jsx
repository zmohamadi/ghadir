"use client"

import { Tools,Pic } from "@/Theme/Midone/Utils";
import { Files } from "@/Components/Ticket/Details/Files";

export const Items = ({ item,Lang,mediaPath }) => {
    let attachments = (item?.media)? item?.media?.split("###") : [];
    let calssBorder = (attachments != "")? " border-t " : "";

    return(
        <>
            <div className="col-span-12 md:col-span-12 xxl:col-span-12" id={item?.id}>
                <div className="intro-x relative flex items-center mb-3">
                    <div className="report-timeline__image">
                        <div className="w-10 h-10 flex-none image-fit rounded-full overflow-hidden">
                            <Pic src={`${mediaPath}/users/${item?.user?.photo}`} defaultImg={`${mediaPath}/public/default/avatar.png`} classImg="user-avatar" key={"img"+item?.user?.photo} />
                        </div>
                    </div>
                    <div className="box px-5 py-3 mr-4 w-full">
                        <div className="md:flex">
                            <div className="text-center md:w-48 flex flex-row md:flex-col">
                                <div className="font-medium ml-auto">{item?.user?.firstname+" "+item?.user?.lastname}</div>
                                <div className="text-xs text-gray-500 mt-3" dir="ltr">
                                    {Tools?.toJalaliDateString(item?.created_at)}
                                </div>
                            </div>
                            <div className="md:border-r w-full dark:border-dark-5 md:mr-3 px-5">
                                <div className="flex items-center">
                                    <div className="font-medium">{item?.title}</div>
                                </div>
                                <div className="text-gray-600">
                                    <div className="mt-2 w-full text-justify">{item?.text}</div>
                                    <div className={`mt-2 mb-1${calssBorder}border-gray-200 dark:border-dark-5`}>
                                        <div className="pos flex mt-3">
                                            <Files data={attachments} Lang={Lang} />
                                        </div>
                                    </div>
                                    <div className="nav nav-tabs flex-row justify-center lg:justify-start">
                                       <div className="mr-auto"></div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
}