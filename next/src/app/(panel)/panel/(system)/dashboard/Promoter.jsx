"use client";

import { Frame } from "@/Theme/Midone";
import { useConfig, useLang } from "@/lib";
import Link from "next/link"; // از Link موجود در Next.js استفاده کنید
import { useAuth } from "@/lib/auth";

export default function Promoter() {
    const { Lang } = useLang();
    const { laraAdmin, mediaPath, nextAdmin } = useConfig();
    const {user} = useAuth({guard: "admin"});

    return (
        <Frame>
        <div className="col-span-12 lg:col-span-12 mt-6">
            <div className="ads-box box p-8 relative overflow-hidden bg-theme-17 intro-y">
                <div className="ads-box__title w-full sm:w-72 text-white text-xl -mt-3 flex items-center space-x-4 rtl:space-x-reverse">
                    <div className="w-12 h-12 ml-2 rounded-full overflow-hidden shadow-lg image-fit zoom-in scale-110">
                        {
                            user?.photo ?
                            <img alt="user" src={`${mediaPath}/users/${user.photo}`} />
                            :
                            <img alt="user" src={`${mediaPath}/users/avatar.png`} />
                        }
                    </div>
                    <span>{user?.firstname} {user?.lastname} {Lang('public.wellcome')}!</span>
                </div>

                <Link href={nextAdmin+"/promotions"} className="btn w-32 bg-white dark:bg-dark-2 mt-6 sm:mt-10">
                    {Lang('public.promotions')}
                </Link>
                
                <img className="hidden sm:block absolute top-0 left-0 w-2/5 -mt-3 ml-2" 
                alt="logo"  src={mediaPath+'/logo/light-logo.png'}
                style={{width:"220px"}}
                />
            </div>
        </div>
        
        </Frame>
    );

}
