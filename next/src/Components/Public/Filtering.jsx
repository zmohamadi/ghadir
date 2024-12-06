"use client";
import { useEffect, useState } from "react";
import { Select } from "@/Theme/Midone/Forms/Select";
import { Box, Button, ButtonContainer, SelectTail, useData, useFormRefs } from "@/Theme/Midone";
import { useConfig, useLang } from "@/lib";

export function Filtering({
    promoter_id = false,
    promoter = false,
    promotion = false,
    province = false,
    reportStatus = false,
    promoterStatus = false,
    gender = false,
    url,
    filterList,
    onFiltersChange, // دریافت تابع برای اطلاع‌رسانی تغییرات فیلتر
}) {
    const { Lang, local } = useLang();
    const { laraAdmin } = useConfig();
    const [filters, setFilters] = useState({
        city: filterList?.city ?? null,          // If filterList.city exists, use it, otherwise set it to null
        province: filterList?.province ?? null,   // Same for province
        promotion: filterList?.promotion ?? null, // Same for promotion
        promoter: filterList?.promoter ?? null,   // Same for promoter
        reportStatus: null,
        gender: null,
        promoterStatus: null,
    });
    
    const [needles, setNeedles] = useState(null);
    const [provinceId, setProvinceId] = useState(null);
    const { getNeedles } = useData();
    const [isNeedlesFetched, setIsNeedlesFetched] = useState(false); // وضعیت دریافت داده
    const component = useFormRefs();

    useEffect(() => {
        // Fetch initial data for filtering options only once
        if (!isNeedlesFetched) {
            getNeedles(`${laraAdmin}/${url}/get-needles`, (data) => {
                setNeedles(data);
                setIsNeedlesFetched(true); // مشخص کردن دریافت داده
            });
        }
    }, [laraAdmin, url, getNeedles, isNeedlesFetched]);

    useEffect(() => {
        // اطلاع‌رسانی تغییرات فیلترها به کامپوننت والد
        onFiltersChange(filters);
    }, [filters, onFiltersChange]);

    const handleFilterChange = (e, filterKey) => {
        const value = e.target.value;

        setFilters((prevFilters) => {
            const updatedFilters = { ...prevFilters, [filterKey]: value };

            if (filterKey === "province") {
                // تنظیم provinceId و پاک کردن انتخاب city
                setProvinceId(value);
                updatedFilters.city = ""; // ریست کردن شهر
            }

            return updatedFilters;
        });
    };

    const clearFilter = () => {
        setFilters({
            city:null,
            province: null,
            promotion: null,
            promoter: null,
            reportStatus:null,
            gender:null,
            promoterStatus:null
        });
        setProvinceId(null); // ریست کردن استان
    };

    return (
        <Box shadow={false} minIcon={true} min={true}>
            {promoter && (
                <SelectTail label="promoter" refItem={[component, "promoter"]}
                defaultValue={filters.promoter ?? ""}
                    onChange={(e) => handleFilterChange(e, "promoter")}
                    className="col-span-5 md:col-span-3"
                >
                    {
                        needles?.promoter?.map((item ,index)=> {
                            return <option key={"p_"+index} value={item?.id}>{item?.firstname} {item?.lastname} - {item?.mobile}</option>
                        })
                    }
                </SelectTail>
            )}

            {promotion && (
                <Select
                    onChange={(e) => handleFilterChange(e, "promotion")}
                    defaultValue={filters.promotion ?? ""}
                    refItem={[component, "promotion"]}
                    className="col-span-5 md:col-span-3"
                    label="promotion"
                    data={needles?.promotion}
                />
            )}

            {province && (
                <Select
                    onChange={(e) => handleFilterChange(e, "province")}
                    defaultValue={filters.province ?? ""}
                    className="col-span-5 md:col-span-3"
                    label="province"
                    data={needles?.province}
                    titleKey={`name_${local}`}
                />
            )}

            {province && (
                <Select
                    onChange={(e) => handleFilterChange(e, "city")}
                    defaultValue={filters.city ?? ""}
                    className="col-span-5 md:col-span-3"
                    label="city"
                    data={provinceId
                            ? needles?.city?.filter((item) => item.province_id === parseInt(provinceId))
                            : []
                    }
                    titleKey={`name_${local}`}
                />
            )}

            {reportStatus && (
                <Select
                defaultValue={filters.reportStatus ?? ""}
                    onChange={(e) => handleFilterChange(e, "reportStatus")}
                    className="col-span-5 md:col-span-3"
                    label="status"
                    data={needles?.status?.filter(item => item.group_id == 28)}
                    titleKey={"title_" + local} valueKey="code"
                />
            )}

            {promoterStatus && (
                <Select
                defaultValue={filters.promoterStatus ?? ""}
                    onChange={(e) => handleFilterChange(e, "promoterStatus")}
                    className="col-span-2"
                    label="status"
                    data={needles?.status?.filter(item => item.group_id === 1)} 
                    valueKey="code" titleKey={"title_"+local}  
                />
            )}

            {gender && (
                <Select
                    defaultValue={filters.gender ?? ""}
                    onChange={(e) => handleFilterChange(e, "gender")}
                    className="col-span-2"
                    label="gender"
                    data={needles?.gender}
                    titleKey={`title_${local}`}
                />
            )}

            <ButtonContainer>
                <Button
                    label="clear_filter"
                    className="btn btn-secondary w-20"
                    onClick={clearFilter}
                />
            </ButtonContainer>
        </Box>
    );
}
