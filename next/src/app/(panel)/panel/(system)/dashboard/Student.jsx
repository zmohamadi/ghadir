"use client";

import { Frame } from "@/Theme/Midone";
import { useConfig, useLang } from "@/lib";
import Link from "next/link"; // از Link موجود در Next.js استفاده کنید

export default function Student() {
    const { Lang } = useLang();
    const { laraAdmin, mediaPath, nextAdmin } = useConfig();
    // bg-theme-10:green, bg-theme-22:orange, bg-theme-23:darkyellow, bg-theme-24:red, 
    // bg-theme-26:blue, bg-theme-29:lightgreen, bg-theme-30: lightLorange, bg-theme-31:lightpurple
    // bg-theme-35:red, 
    const toolsData = [
        { title: Lang('public.myCourses'), img: "001.png", href: "/myCourses", description: Lang('public.myCourses_description'), theme: "" },
        { title:  Lang('public.myCalendar'), img: "002.png", href: "/myCalendar", description: Lang('public.myCalendar_description'), theme: "bg-theme-17 dark:bg-theme-17"},
        { title: Lang('public.student_service'), img: "003.png", href: "#", description: Lang('public.student_service_description'), theme: "" },
        { title: Lang('public.cultural_service'), img: "004.png", href: "#",  description: Lang('public.cultural_service_description'), theme: ""  },
        { title:  Lang('public.book_store'), img: "005.png", href: "https://book.ikvu.ac.ir",description: Lang('public.book_store_description'), theme: ""  },
    ];

    return (
        <Frame>
        {/* <div className="grid grid-cols-12 gap-5 mt-5"> */}
            {toolsData?.map((tool, index) => {
                return <div key={index} className={"col-span-12 sm:col-span-4 xxl:col-span-3 box p-5 cursor-pointer zoom-in flex "+tool.theme}>
                    {
                        (tool.href.indexOf("http") > -1) ?
                            <a href={tool.href} target="_blank" rel="noreferrer" className="w-2/3">
                                <div className={"font-medium text-base " + (tool.theme != "" && "text-white")} >{tool.title}</div>
                                <div className="text-gray-600"> {tool.description}</div>
                            </a>
                        :
                            <Link
                                href={`${nextAdmin}${tool.href}`}
                                className="w-3/5 file__icon file__icon--image mx-auto"
                            >
                                <div className={"font-medium text-base " + (tool.theme != "" && "text-white")} >{tool.title}</div>
                                <div className="text-gray-600"> {tool.description}</div>
                            </Link>
                    }
                    <div className="w-1/3 ">
                        <img src={mediaPath+"/baseTools/dashboard/"+tool.img} alt="" className="object-contain" />
                    </div>
                </div>
            })}
        {/* </div> */}
        </Frame>
    );

    return (
        <>
            <Frame>
                {toolsData?.map((tool, index) => {
                    return (
                        <div
                            key={index}
                            className="col-span-5 md:col-span-4 lg:col-span-3 xl:col-span-2 file box rounded-md px-5 pt-8 pb-5 sm:px-5 relative zoom-in btn-cursor-default"
                        >
                            <Link
                                href={`${nextAdmin}${tool.href}`}
                                className="w-3/5 file__icon file__icon--image mx-auto"
                            >
                                <div className="file__icon--image__preview image-fit">
                                    <img
                                        alt={tool.title} // استفاده از tool.title برای alt
                                        src={`${mediaPath}/homeStudent/${tool.img}`}
                                    />
                                </div>
                            </Link>
                            <Link
                                href={`${nextAdmin}${tool.href}`}
                                className="block font-medium mt-4 text-center truncate"
                            >
                                {tool.title}
                            </Link>
                        </div>
                    );
                })}
            </Frame>
        </>
    );
}
