"use client";

import { useConfig, useLang } from "@/lib";
import Link from "next/link";
import { useAuth } from "@/lib/auth";
import * as Icon from "react-feather";

const menuItems = [

    { title: "active_promotions", icon: "Book", href: "/promotions" , color: "#0984e3" },
    { title: "myPromotions", icon: "Aperture", href: "/myPromotions" , color: "#00cec9" },
    { title: "myReports", icon: "List", href: "/myReports" , color: "#6c5ce7" },
    { title: "mySupports", icon: "PenTool", href: "/mySupports" , color: "#e17055" },
    { title: "myTickets", icon: "Tag", href: "/myTickets" , color: "#e67e22" },
    { title: "blogs", icon: "Framer", href: "/blogs" , color: "#00b894" },

  ];

export default function Promoter() {
    const { Lang } = useLang();
    const { laraAdmin, mediaPath, nextAdmin } = useConfig();
    const {user} = useAuth({guard: "admin"});

    return (
        <>
        
        <div className="col-span-12 lg:col-span-12 mt-6">
            <div className="ads-box box p-8 relative overflow-hidden intro-y">
                <div className="ads-box__title w-full sm:w-72 text-xl -mt-3 flex items-center space-x-4 rtl:space-x-reverse">
                    <div className="w-12 h-12 ml-5 rounded-full overflow-hidden shadow-lg image-fit zoom-in scale-110">
                        {
                            user?.photo ?
                            <img alt="user" src={`${mediaPath}/users/${user.photo}`} />
                            :
                            <img alt="user" src={`${mediaPath}/users/avatar.png`} />
                        }
                    </div>
                    <span>{user?.firstname} {user?.lastname} {Lang('public.wellcome')}!</span>
                </div>

                <Link href={nextAdmin+"/promotions"} className="btn btn-primary w-32 dark:bg-dark-2 mt-6 sm:mt-10">
                    {Lang('public.promotions')}
                </Link>
                
                <img className="hidden sm:block absolute top-0 left-0 w-2/5 -mt-3 ml-2" 
                alt="logo"  src={mediaPath+'/logo/light-logo.png'}
                style={{width:"220px"}}
                />
            </div>
        </div>
        <div className='grid gap-6 mt-5 grid-cols-12'>
            {menuItems.map((item, index) => {
            const CICN = Icon[item.icon]; // تعریف آیکون در اینجا
            return (
                <div key={index} className="col-span-12 sm:col-span-6 xl:col-span-2 intro-y">
                    <div className="report-box zoom-in" >
                    <div className="box p-5 text-center">
                        <Link href={nextAdmin+item?.href}>
                            <div className="flex">
                                {CICN && <CICN color={item.color} />}
                            </div>
                            <div className="text-base mt-1"  //style={{ color: item.color }}
                            >{Lang(`public.${item.title}`)}</div>
                        </Link>
                    </div>
                    </div>
            </div>
            );
            })}
        </div>
        </>
    );

}
