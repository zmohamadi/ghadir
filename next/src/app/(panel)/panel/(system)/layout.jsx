"use client";

import { useConfig } from "@/lib/config";
import { utility } from "@/lib/utility";
import { MobileMenu, TopBar, Menu, Wrapper } from "@/Theme/Midone/Base";
// import { Menu, Wrapper } from "@/Theme/Midone/Base";
import React, { useEffect, useState } from "react";
import { getMenus } from "@/lib/menus";
import { useAuth } from "@/lib/auth";
import { useRouter } from 'next/navigation'
import { Loading } from "../../Loading";
import { useData } from "@/Theme/Midone";

export default function Panel({children}){
    
    const { adminMenuType, nextAdmin, laraDomain, nextDomain,laraAdmin } = useConfig();
    const [menuType, setMenuType] = useState(adminMenuType);
    let [needles, setNeedles] = useState([]);
    let {getNeedles} = useData();

    const { user, logout } = useAuth({ guard: "admin" });
    const router = useRouter();

    useEffect(() => {
        if (typeof user == "object") {
            window.document.body.style.padding = "15px 28px";
            utility.addScriptFile(
                'appScriptFile', 
                laraDomain + "/admin/Midone-v3/Icewall_v1.0.9_min/dist/js/app.js",
                // () => loadTheme()
            );
            getNeedles(laraAdmin+'/get-count', setNeedles);

        }
    }, [user]);

    if (typeof user !== "string" && typeof user !== "object") {
        return <Loading />;
    }

    if (!user) {
        window.document.body.style.padding = "0px 0px";
        router.push(nextDomain + nextAdmin + "/login");
        return <Loading />;
    }

    // console.log(needles);

    const menus = getMenus(user,needles);

    return (
        <React.Fragment key={"app_frame"}>
            <MobileMenu prefix={nextAdmin} menus={menus} />
            <TopBar setMenuType={setMenuType} user={user} logout={logout} />
            <Wrapper Menu={<Menu prefix={nextAdmin} menus={menus} key={"menu-" + menuType} />} key={menuType}>
                {children}
            </Wrapper>
        </React.Fragment>
    );
}
