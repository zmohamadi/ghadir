"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid, Frame, FeatherIcon } from "@/Theme/Midone/Utils";
import { useMemo, useState } from "react";
import Link from "next/link";
import { Filtering } from "@/Components/Public/Filtering";
import { useSearchParams } from 'next/navigation'

export default function page() {
    const { Lang, local } = useLang();
    const { laraAdmin, nextAdmin } = useConfig();
    const formUrl = nextAdmin + "/rituals";
    const [filterParams, setFilterParams] = useState(null);

    const urlParams = useSearchParams()
    const getFilterFromUrl = () => {
        return {
            promoter: urlParams.get('promoter') || null,
            promotion: urlParams.get('promotion') || null,
            province: urlParams.get('province') || null,
            city: urlParams.get('city') || null,
        };
    };
    const [filters, setFilters] = useState(getFilterFromUrl());
    
    let info = useMemo(()=>{
        const filterParams = Object.keys(filters)
            .filter((key) => filters[key] && filters[key] != "null")
            .map((key) => `${key}=${filters[key]}`)
            .join("&");
        setFilterParams(filterParams);

        const url = filterParams
            ? `${laraAdmin}/rituals?${filterParams}`
            : `${laraAdmin}/rituals`;

        return {
            url,
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
        }
    }, [filters])

    const handleFiltersChange = (newFilters) => {
        setFilters(newFilters);
    };

    return (
        <>
            <Frame title={Lang(["public.rituals"])} >
                <Filtering
                exportExcel={true}
                urlExcel={`rituals?${filterParams}`}
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
