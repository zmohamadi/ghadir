"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid, Frame, FeatherIcon } from "@/Theme/Midone/Utils";
import { useEffect, useState } from "react";
import Link from "next/link";
import { Filtering } from "@/Components/Public/Filtering";

export default function page() {
    const { Lang, local } = useLang();
    const { laraAdmin, nextAdmin } = useConfig();
    const formUrl = nextAdmin + "/rituals";
    const [url, setUrl] = useState(`${laraAdmin}/rituals`);
    // استفاده از URLSearchParams برای گرفتن مقادیر فیلترها از URL
    const getFilterFromUrl = () => {
        const urlParams = new URLSearchParams(window.location.search);
        return {
            promoter: urlParams.get('promoter') || null,
            promotion: urlParams.get('promotion') || null,
            province: urlParams.get('province') || null,
            city: urlParams.get('city') || null,
        };
    };

    // مقداردهی اولیه فیلترها از URL
    const [filters, setFilters] = useState(getFilterFromUrl);

    let info = {
        url: url,
        columns: [
            {
                label: "ritual",
                jsx: (item) => (
                    <Link href={`${formUrl}/${item.id}`}>
                        {`${item?.ritual?.title}`}
                    </Link>
                ),
            },
            {
                label: "promotion",
                jsx: (item) => (
                    <span>{item?.promotion?.title + "-" + item?.promotion?.year}</span>
                ),
            },
            {
                label: "promoter",
                jsx: (item) => (
                    <span>
                        {item?.promoter?.firstname +
                            " " +
                            item?.promoter?.lastname +
                            "-" +
                            item?.promoter?.mobile}
                    </span>
                ),
            },
            { label: "province", field: `province.name_${local}` },
            { label: "city", field: `city_sh.name_${local}` },
            { label: "place_name", field: "place_name" },
            {
                label: "created_at",
                jsx: (item) => (
                    <span dir="ltr" className="ltr">
                        {item?.created_at}
                    </span>
                ),
            },
            {
                label: "",
                sort: false,
                jsx: (item) => (
                    <>
                        <div className="flex justify-center ">
                            <FeatherIcon
                                name="Eye"
                                url={formUrl + "/" + item?.id}
                                tooltip={Lang("public.view")}
                            />
                        </div>
                    </>
                ),
            },
        ],
    };

    useEffect(() => {
        const filterParams = Object.keys(filters)
            .filter((key) => filters[key])
            .map((key) => `${key}=${filters[key]}`)
            .join("&");

        const updatedUrl = filterParams
            ? `${laraAdmin}/rituals?${filterParams}`
            : `${laraAdmin}/rituals`;

        setUrl(updatedUrl);
    }, [filters, laraAdmin]);

    const handleFiltersChange = (newFilters) => {
        setFilters(newFilters);
    };


    return (
        <>
            <Frame title={Lang(["public.rituals"])}>
            <Filtering
                  promotion={true}
                  province={true}
                  promoter={true}
                  url="rituals"
                  filterList={filters}
                  onFiltersChange={handleFiltersChange}
              />
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                </div>
            </Frame>
        </>
    );
}
