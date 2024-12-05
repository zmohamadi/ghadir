"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid, Frame, FeatherIcon, useData } from "@/Theme/Midone/Utils";
import { Box, Button, ButtonContainer, Input } from "@/Theme/Midone";
import { Select } from "@/Theme/Midone/Forms/Select";
import { useEffect, useState } from "react";
import Link from "next/link";

export default function page() {
    const { Lang, local } = useLang();
    const { laraAdmin, nextAdmin } = useConfig();
    const { getNeedles } = useData();
    const formUrl = nextAdmin + "/rituals";

    // Parse initial filters from URL
    const searchParams = new URLSearchParams(window.location.search);
    
    const initialFilters = {
        city: searchParams.get("city") || "",
        province: searchParams.get("province") || "",
        promotion: searchParams.get("promotion") || "",
        promoter: searchParams.get("promoter") || "",
    };

    const [filters, setFilters] = useState(initialFilters);
    const [url, setUrl] = useState(`${laraAdmin}/rituals`);
    const [needles, setNeedles] = useState(null);
    const [provinceId, setProvinceId] = useState(initialFilters.province);

    let info = {
        perPage: 20,
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
            { label: "people_count", field: "people_count" },
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
        // Fetch initial data
        getNeedles(`${laraAdmin}/rituals/get-needles`, setNeedles);
    }, []);

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

    const handleFilterChange = (e, filterKey) => {
        const value = e.target.value;

        setFilters((prevFilters) => ({
            ...prevFilters,
            [filterKey]: value,
            ...(filterKey == "province" && { city: "" }), // ریست کردن شهر در صورت تغییر استان
        }));

        if (filterKey == "province") {
            setProvinceId(value);
        }
    };

    const clearFilter = () => {
        setFilters({ city: "", province: "", promotion: "", promoter: "" });
    };

    return (
        <>
            <Frame title={Lang(["public.rituals"])}>
                <Box shadow={false} minIcon={true} min={true}>
                  <Select
                        defaultValue={initialFilters.promotion?initialFilters.promotion:filters.promotion} // Bind value to state
                        onChange={(e) => handleFilterChange(e, "promotion")}
                        className="col-span-5 md:col-span-3"
                        label="promotion"
                        data={needles?.promotion}
                    />
                    <Select
                        defaultValue={initialFilters.province?initialFilters.province:filters.province} // Bind value to state
                        onChange={(e) => handleFilterChange(e, "province")}
                        className="col-span-5 md:col-span-3"
                        label="province"
                        data={needles?.province}
                        titleKey={"name_" + local}
                    />
                    <Select
                        defaultValue={initialFilters.city?initialFilters.city:filters.city} // Bind value to state
                        onChange={(e) => handleFilterChange(e, "city")}
                        className="col-span-5 md:col-span-3"
                        label="city"
                        data={
                            provinceId
                                ? needles?.city?.filter((item) => item.province_id == provinceId)
                                : needles?.city
                        }
                        titleKey={"name_" + local}
                    />
                    <Input
                        label="promoter"
                        className="col-span-3 md:col-span-3"
                        defaultValue={filters.promoter}
                        onEnter={(e) => handleFilterChange(e, "promoter")}
                        note={Lang("public.filter_ticket_user")}
                    />

                    <ButtonContainer className="mt-7 md:mt-6 text-right">
                        <Button
                            label="clear_filter"
                            className="btn btn-secondary w-20"
                            onClick={clearFilter}
                        />
                    </ButtonContainer>
                </Box>
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                </div>
            </Frame>
        </>
    );
}
