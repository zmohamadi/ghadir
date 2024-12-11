"use client";

import { useConfig, useLang } from "@/lib";
import Link from "next/link";
import * as Icon from "react-feather";

const menuItems = [

    // { title: "active_promotions", icon: "Book", href: "/promotions" , color: "#0984e3" },
    { title: "myPromotions", icon: "Aperture", href: "/myPromotions" , color: "#00cec9" },
    { title: "myReports", icon: "List", href: "/myReports" , color: "#6c5ce7" },
    { title: "mySupports", icon: "PenTool", href: "/mySupports" , color: "#e17055" },
    { title: "myTickets", icon: "Tag", href: "/myTickets" , color: "#e67e22" },
    // { title: "blogs", icon: "Framer", href: "/blogs" , color: "#00b894" },

  ];

export default function MenusItem() {
    const { Lang } = useLang();
    const { laraAdmin, mediaPath, nextAdmin } = useConfig();

    return (
        <>
        
      
        
        <div className='grid gap-6 mt-5 grid-cols-12'>
            {menuItems.map((item, index) => {
            const CICN = Icon[item.icon]; // تعریف آیکون در اینجا
            return (
                <div key={index} className="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
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
