"use client";

import { useConfig, useLang } from "@/lib";
import { useAuth } from "@/lib/auth";
import { Pic, useData, useFormRefs } from "@/Theme/Midone";
import { useEffect } from "react";
import Promotion from "./Promotion";
import MenusItem from "./MenusItem";
import Notif from "./Notif";
import Blog from "./Blog";

const menuItems = [

    // { title: "active_promotions", icon: "Book", href: "/promotions" , color: "#0984e3" },
    { title: "myPromotions", icon: "Aperture", href: "/myPromotions" , color: "#00cec9" },
    { title: "myReports", icon: "List", href: "/myReports" , color: "#6c5ce7" },
    { title: "mySupports", icon: "PenTool", href: "/mySupports" , color: "#e17055" },
    { title: "myTickets", icon: "Tag", href: "/myTickets" , color: "#e67e22" },
    // { title: "blogs", icon: "Framer", href: "/blogs" , color: "#00b894" },

  ];

export default function Promoter() {
    const { Lang } = useLang();
    const { laraAdmin, mediaPath, nextAdmin } = useConfig();
    const {user} = useAuth({guard: "admin"});
    let {get} = useData();
    let component = useFormRefs();

    useEffect(() => {
        get(laraAdmin+"/home/promoter/"+user?.id, component, "info");
    }, []);

    let data = component?.state?.info;
    let notifs = data?.notif;
    let blogs = data?.blogs;
    let promotions = data?.promotions;
    // console.log(notifs);

    return (
        <>
        
        <div className="col-span-12 lg:col-span-12 mt-6">
            <div className="ads-box box p-8 relative overflow-hidden intro-y">
                <div className="ads-box__title w-full sm:w-72 text-xl -mt-3 flex items-center space-x-4 rtl:space-x-reverse">
                    <div className="w-12 h-12 ml-5 rounded-full overflow-hidden shadow-lg image-fit zoom-in scale-110">
                        {
                            <Pic
                                src={`${mediaPath}/users/${user?.photo}`}
                                defaultImg={`${mediaPath}/public/default/avatar.png`}
                                classImg="user-avatar rounded-full"
                            />

                        }
                    </div>
                    <span>{user?.firstname} {user?.lastname} {Lang('public.wellcome')}!</span>
                </div>

                {/* <Link href={nextAdmin+"/promotions"} className="btn btn-primary w-32 dark:bg-dark-2 mt-6 sm:mt-10">
                    {Lang('public.promotions')}
                </Link> */}
                
                <img className="hidden sm:block absolute top-0 left-0 w-2/5 mt-3 ml-5" 
                alt="logo"  src={mediaPath+'/logo/light-logo1.png'}
                style={{width:"130px"}}
                />
            </div>
        </div>
        <Notif notifs={notifs} />
        <MenusItem />
        <Promotion promotions={promotions} />
        <Blog blogs={blogs} />
        </>
    );

}
