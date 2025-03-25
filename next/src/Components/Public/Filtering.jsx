"use client";
import { useEffect, useState } from "react";
import { Select } from "@/Theme/Midone/Forms/Select";
import { Box, Button, ButtonContainer, Loading, SelectTail, useData, useFormRefs } from "@/Theme/Midone";
import { useConfig, useLang } from "@/lib";
import Link from "next/link";

export function Filtering({
    promoter_id = false,
    promoter = false,
    promotion = false,
    province = false,
    reportStatus = false,
    exportExcel = false,
    importExcel = false,
    importExcelUrl = false,
    urlExcel=null,
    url,
    filterList,
    onFiltersChange, // دریافت تابع برای اطلاع‌رسانی تغییرات فیلتر
}) {
    const { Lang, local } = useLang();
    const { laraAdmin,host,nextAdmin } = useConfig();
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
    const { getNeedles,get } = useData();
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
    const exportExcelFunc = async () => {
        
        let excelRoute = process.env.NEXT_PUBLIC_BACKEND_URL+laraAdmin + "/export-"+urlExcel;
        let excelName = url;
        try {
            const response = await fetch(excelRoute, {
                method: "GET",
                headers: {
                    "Content-Type": "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
                },
            });
    
            if (!response.ok) {
                throw new Error("خطایی در دانلود فایل رخ داد!");
            }
    
            const blob = await response.blob();
            const url = window.URL.createObjectURL(blob);
    
            const a = document.createElement("a");
            a.href = url;
            a.download = excelName+".xlsx";
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
        } catch (error) {
            console.error("خطا در دانلود اکسل:", error);
        }
    };
    

    return (
<Box shadow={false} minIcon={true} min={true}>
    {promoter && (
        <SelectTail
            label="promoter"
            defaultValue={filters.promoter ?? ""}
            onChange={(e) => handleFilterChange(e, "promoter")}
            className="col-span-12 sm:col-span-6 lg:col-span-4"
        >
            {needles?.promoter?.map((item, index) => (
                <option value={item?.id} key={index}>
                    {item?.firstname} {item?.lastname} - {item?.mobile}
                </option>
            ))}
        </SelectTail>
    )}

    {promotion && (
        <SelectTail
            onChange={(e) => handleFilterChange(e, "promotion")}
            defaultValue={filters.promotion ?? ""}
            className="col-span-12 sm:col-span-6 lg:col-span-4"
            label="promotion"
            data={needles?.promotion}
        />
    )}

    {province && (
        <SelectTail
            onChange={(e) => handleFilterChange(e, "province")}
            defaultValue={filters.province ?? ""}
            className="col-span-12 sm:col-span-6 lg:col-span-4"
            label="province"
            data={needles?.province}
            titleKey={`name_${local}`}
        />
    )}

    {province && (
        <SelectTail
            onChange={(e) => handleFilterChange(e, "city")}
            defaultValue={filters.city ?? ""}
            className="col-span-12 sm:col-span-6 lg:col-span-4"
            label="city"
            data={
                provinceId
                    ? needles?.city?.filter(
                          (item) => item.province_id === parseInt(provinceId)
                      )
                    : []
            }
            titleKey={`name_${local}`}
        />
    )}

    {reportStatus && (
        <SelectTail
            defaultValue={filters.reportStatus ?? ""}
            onChange={(e) => handleFilterChange(e, "reportStatus")}
            className="col-span-12 sm:col-span-6 lg:col-span-4"
            label="status"
            data={needles?.status?.filter((item) => item.group_id == 28)}
            titleKey={"title_" + local}
            valueKey="code"
        />
    )}

    {url == "promoters" && (
        <>
            <SelectTail
                defaultValue={filters.acoountPromoter ?? ""}
                onChange={(e) => handleFilterChange(e, "acoountPromoter")}
                className="col-span-12 sm:col-span-6 lg:col-span-4"
                label="acoountPromoter"
            >
                <option value="1">
                    {Lang(["has_acoount", "khadamat_code"])}
                </option>
                <option value="2">
                    {Lang(["has_acoount", "tablighat_office_code"])}
                </option>
                <option value="3">
                    {Lang(["has_acoount", "tablighat_organization_code"])}
                </option>
                <option value="4">
                    {Lang(["has_acoount", "ovghaf_code"])}
                </option>
            </SelectTail>
            <SelectTail
                defaultValue={filters.promoterStatus ?? ""}
                onChange={(e) => handleFilterChange(e, "promoterStatus")}
                className="col-span-12 sm:col-span-6 lg:col-span-4"
                label="account_status"
                data={needles?.status?.filter((item) => item.group_id == 1)}
                valueKey="code"
                titleKey={"title_" + local}
            />
            <SelectTail
                defaultValue={filters.promoterWorkStatus ?? ""}
                onChange={(e) => handleFilterChange(e, "promoterWorkStatus")}
                className="col-span-12 sm:col-span-6 lg:col-span-4"
                label="work_status"
                data={needles?.status?.filter((item) => item.group_id == 33)}
                valueKey="code"
                titleKey={"title_" + local}
            />
            <SelectTail
                defaultValue={filters.gender ?? ""}
                onChange={(e) => handleFilterChange(e, "gender")}
                className="col-span-12 sm:col-span-6 lg:col-span-4"
                label="gender"
                data={needles?.gender}
                titleKey={`title_${local}`}
            />
        </>
    )}

    <ButtonContainer className="col-span-12 flex justify-end">
        {exportExcel&& 
            <Button
                label="export_excel"
                className="btn btn-primary mt-2 ml-3"
                onClick={exportExcelFunc}
            />
        }
        {importExcel&&
            <Link
                // label="import_excel"
                className="btn btn-success mt-2 ml-3"
                href={`${nextAdmin}/${importExcelUrl}/excel`}
            >{Lang('public.import_excel')}</Link>
        }
        <Button
            label="clear_filter"
            className="btn btn-secondary mt-2 w-20"
            onClick={clearFilter}
        />
    </ButtonContainer>
</Box>

    );
}
