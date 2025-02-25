"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import { useEffect, useState } from "react";
import Link from "next/link";
import { useAuth } from "@/lib";
import { Filtering } from "../Public/Filtering";
import { Stars } from "../Public/Stars";

export function List() {
    const {user} = useAuth();
    const access = user?.role_id == 1 ?  true : false;
    const { Lang, local } = useLang();
    const { mediaPath, laraAdmin, nextAdmin } = useConfig();
    const { destroy } = useData();

    const [filters, setFilters] = useState({});
    const [filterParams, setFilterParams] = useState(null);
    const [url, setUrl] = useState(`${laraAdmin}/promoters`);
    const formUrl = `${nextAdmin}/promoters`;

    useEffect(() => {
        const filterParams = Object.keys(filters)
            .filter((key) => filters[key])
            .map((key) => `${key}=${filters[key]}`)
            .join("&");
        setFilterParams(filterParams);

        const updatedUrl = filterParams
            ? `${laraAdmin}/promoters?${filterParams}`
            : `${laraAdmin}/promoters`;

        setUrl(updatedUrl);
    }, [filters, laraAdmin]);

    const handleFiltersChange = (newFilters) => {
        setFilters(newFilters);
    };

    // تنظیم اطلاعات جدول (grid)
    let info = {
        insertLink: `${formUrl}/new`,
        url: url,
        columns: [
            {
                label: "",
                jsx: (item) => (
                    <Pic
                        src={`${mediaPath}/users/${item?.photo}`}
                        key={item?.photo}
                        defaultImg={`${mediaPath}/public/default/avatar.png`}
                        classImg="user-avatar rounded-full"
                    />
                ),
            },
            {
                label: "name",
                jsx: (item) => (
                    <Link href={`${formUrl}/${item.id}`}>
                        {`${item?.firstname} ${item?.lastname}`}
                    </Link>
                ),
            },
            { label: "mobile", field: "mobile" },
            ...(access
                ? [
                      {
                          label: "",
                        //   width:"150px",
                          jsx: (item) => <Stars level={item?.level_id} />,
                      },
                    //   { label: "last_login", field: "last_login" },
                  ]
                : []),
            // {
            //     label: "gender",
            //     sort: false,
            //     field: `gender.title_${local}`,
            // },
            {
                label: "agrees",
                jsx: (item) => (
                    <Link className="rounded-full py-1 px-2 text-white bg-theme-17" 
                    href={`${nextAdmin}/agrees?promoter=${item.id}`}>
                        {`${item?.agree_count}`}
                    </Link>
                ),
            },
            {
                label: "reports",
                jsx: (item) => (
                    <Link className="rounded-full py-1 px-2 text-white bg-theme-17" 
                    href={`${nextAdmin}/reports?promoter=${item.id}`}>
                        {`${item?.report_count}`}
                    </Link>
                ),
            },
            {
                label: "status",
                jsx: (item) => (
                    <span
                    className={`inline-flex items-center rounded-full py-1 px-2 text-white bg-${item?.active_status?.color} whitespace-nowrap`}
                    >
                        {item?.active_status?.[`title_${local}`]}
                    </span>
                ),
            },
            // { label: "created_at", field: "created_at" },
            {
                label: "",
                sort: false,
                jsx: (item) => (
                    <div className="flex justify-center">
                        <FeatherIcon
                            name="MessageCircle"
                            url={`${formUrl}/${item?.id}/notif`}
                            tooltip={Lang("public.notif")}
                        />
                        <FeatherIcon
                            name="Edit"
                            url={`${formUrl}/${item?.id}/edit`}
                            tooltip={Lang("public.edit")}
                        />
                        <FeatherIcon
                            name="Lock"
                            url={`${nextAdmin}/change-password/${item?.id}`}
                            tooltip={Lang("public.change_password")}
                        />
                        <FeatherIcon
                            name="Eye"
                            url={`${formUrl}/${item?.id}`}
                            tooltip={Lang("public.view")}
                        />
                        <FeatherIcon
                        displayIf={item?.agree_count==0 && item?.report_count==0}
                            name="XOctagon"
                            tooltip={Lang("public.delete")}
                            color="darkred"
                            onClick={() =>
                                destroy(`${laraAdmin}/promoters/${item?.id}`)
                            }
                        />
                    </div>
                ),
            },
        ],
    };

    return (
        <>
            <Frame title={Lang(["public.promoters"])}>
                {access && (
                    <>
                        <Filtering
                            exportExcel={true}
                            urlExcel={`promoters?${filterParams}`}
                            province={true}
                            url="promoters"
                            onFiltersChange={handleFiltersChange}
                    />
                    </>
                )}
                {/* جدول اطلاعات */}
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                </div>
            </Frame>
        </>
    );
}
