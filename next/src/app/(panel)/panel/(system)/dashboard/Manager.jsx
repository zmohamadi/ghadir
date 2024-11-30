"use client";

import { useConfig } from "@/lib/config";
import { useFormRefs } from "@/Theme/Midone";
import { useData } from "@/Theme/Midone/Utils/Data";
import { useEffect } from "react";
import { useLang } from "@/lib/lang";
import { useAuth } from "@/lib/auth";
import * as Icon from "react-feather";
import Link from "next/link";

const menuItems = [
    { title: "promoters", icon: "Shield", href: "/promoters", color: "#0984e3" },
    { title: "promotions", icon: "Book", href: "/promotions", color: "#00cec9" },
    { title: "supports", icon: "List", href: "/supports", color: "#6c5ce7" },
    { title: "reports", icon: "PenTool", href: "/reports", color: "#e17055" },
    { title: "statistics", icon: "Calendar", href: "/statistics", color: "#e67e22" },
    { title: "personnels", icon: "Users", href: "/personnels", color: "#00b894" },
  ];
  

export default function Manager() {
  const { user } = useAuth({ guard: "admin" });
  const { Lang } = useLang();
  const { laraAdmin, nextAdmin } = useConfig();
  let { get } = useData();
  let component = useFormRefs();

  // useEffect(() => {
  //   get(laraAdmin + "/home", component, "info");
  // }, []);

  let info = component?.state?.info;

  return (
    <>
      <div className="col-span-12 mt-6 mb-6 intro-y">
        <div 
            className="box flex flex-col p-6 mb-6 rounded-lg shadow-md bg-white border border-gray-200"
            role="alert"
        >
            <span className="text-xl font-extrabold text-blue-600 mb-2">
            {user?.firstname} {user?.lastname}
            </span>
            <span className="text-gray-700 text-base font-medium">
            {Lang(["public.wellcome"])} {Lang(["public.to"])} {Lang(["public.main_title"])}
            </span>
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
