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
        acoountPromoter:null,
        promoterWorkStatus:null,
        promoterStatus:null,
    });

    // console.log("filters.promotion", filters.promotion);
    
    const [needles, setNeedles] = useState(null);
    const [provinceId, setProvinceId] = useState(null);
    const { getNeedles } = useData();
    const [isNeedlesFetched, setIsNeedlesFetched] = useState(false); // وضعیت دریافت داده
    const component = useFormRefs();

    useEffect(() => {
        if (!isNeedlesFetched) {
            getNeedles(`${laraAdmin}/${url}/get-needles`, (data) => {
                setNeedles(data);
                setIsNeedlesFetched(true); // پس از دریافت داده‌ها مقدار true تنظیم می‌شود
            });
        }
    }, [laraAdmin, url, getNeedles, isNeedlesFetched]);
    

    useEffect(() => {
        // اطلاع‌رسانی تغییرات فیلترها به کامپوننت والد
        onFiltersChange(filters);
    }, [filters, onFiltersChange]);

    const handleFilterChange = (e, filterKey) => {
        const value = e?.target?.value ? e?.target?.value :e?.value;

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
            acoountPromoter:null,
            promoterWorkStatus:null,
            promoterStatus:null,
        });
        setProvinceId(null); // ریست کردن استان
    };

    return (
        <Box shadow={false} minIcon={true} min={true}>
            {promoter && (
                <SelectTail label="promoter"
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
                <SelectTail
                    onChange={(e) => handleFilterChange(e, "promotion")}
                    defaultValue={filters.promotion ?? ""}
                    className="col-span-5 md:col-span-3"
                    label="promotion"
                    data={needles?.promotion}
                />
            )}

            {province && (
                <SelectTail
                    onChange={(e) => handleFilterChange(e, "province")}
                    defaultValue={filters.province ?? ""}
                    className="col-span-5 md:col-span-3"
                    label="province"
                    data={needles?.province}
                    titleKey={`name_${local}`}
                />
            )}

            {province && (
                <SelectTail
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
                <SelectTail
                defaultValue={filters.reportStatus ?? ""}
                    onChange={(e) => handleFilterChange(e, "reportStatus")}
                    className="col-span-5 md:col-span-3"
                    label="status"
                    data={needles?.status?.filter(item => item.group_id == 28)}
                    titleKey={"title_" + local} valueKey="code"
                />
            )}

            {url=="promoters" && (
                <>
                    <SelectTail
                        defaultValue={filters.acoountPromoter ?? ""}
                        onChange={(e) => handleFilterChange(e, "acoountPromoter")}
                        className="col-span-3"
                        label="acoountPromoter"
                    >
                        <option value="1">{Lang(['has_acoount','khadamat_code'])}</option>
                        <option value="2">{Lang(['has_acoount','tablighat_office_code'])}</option>
                        <option value="3">{Lang(['has_acoount','tablighat_organization_code'])}</option>
                        <option value="4">{Lang(['has_acoount','ovghaf_code'])}</option>
                    </SelectTail>
                    <SelectTail
                        defaultValue={filters.promoterStatus ?? ""}
                        onChange={(e) => handleFilterChange(e, "promoterStatus")}
                        className="col-span-3"
                        label="account_status"
                        data={needles?.status?.filter(item => item.group_id == 1)} 
                        valueKey="code" titleKey={"title_"+local}  
                    />
                    <SelectTail
                        defaultValue={filters.promoterWorkStatus ?? ""}
                        onChange={(e) => handleFilterChange(e, "promoterWorkStatus")}
                        className="col-span-3"
                        label="work_status"
                        data={needles?.status?.filter(item => item.group_id == 33)} 
                        valueKey="code" titleKey={"title_"+local}  
                    />
                    <SelectTail
                        defaultValue={filters.gender ?? ""}
                        onChange={(e) => handleFilterChange(e, "gender")}
                        className="col-span-3"
                        label="gender"
                        data={needles?.gender}
                        titleKey={`title_${local}`}
                    />
                </>
            )}

            <ButtonContainer className="">
                <Button
                    label="clear_filter"
                    className="btn btn-secondary mt-2 w-20"
                    onClick={clearFilter}
                />
            </ButtonContainer>
        </Box>
    );
}
