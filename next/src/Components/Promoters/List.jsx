"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import { Select } from "@/Theme/Midone/Forms/Select";
import { useEffect, useRef, useState } from "react";
import { Box, Button, ButtonContainer } from "@/Theme/Midone";
import Link from "next/link";

export function List({ panel, access, query }) {
    // استفاده از context ها و متغیرهای پیکربندی
    const { Lang, local } = useLang();
    const { mediaPath, laraAdmin, nextAdmin } = useConfig();
    const { destroy, getNeedles } = useData();

    // متغیرهای state برای داده‌ها و فیلترها
    const [needles, setNeedles] = useState(); // داده‌های اولیه (مثل استان‌ها، شهرها و جنسیت)
    const [params, setParams] = useState({ province: "", city: "", gender: "" ,status:""}); // پارامترهای فیلتر
    const [provinceId, setProvinceId] = useState(null); // ذخیره ID استان برای فیلتر شهرها
    const [url, setUrl] = useState(`${laraAdmin}/promoters?${query}`); // URL فعلی برای درخواست‌ها
    const effectRan = useRef(false); // جلوگیری از اجرای چندباره useEffect
    const formUrl = `${nextAdmin}/promoters`; // URL فرم‌ها

    // دریافت داده‌های اولیه (needles) فقط در اولین رندر
    useEffect(() => {
        if (!effectRan.current) {
            getNeedles(`${laraAdmin}/promoters/get-needles`, setNeedles);
            effectRan.current = true;
        }
    }, [getNeedles, laraAdmin]);

    // به‌روزرسانی URL هنگام تغییر پارامترهای فیلتر
    useEffect(() => {
        // ایجاد query string بر اساس params
        const urlItems = Object.keys(params)
            .filter((key) => params[key] !== "") // حذف مقادیر خالی
            .map((key) => `${key}=${params[key]}`) // تبدیل به query string
            .join("&");
    
        // ترکیب query اصلی و پارامترهای جدید
        const combinedQuery = [query, urlItems].filter(Boolean).join("&");
        setUrl(`${laraAdmin}/promoters?${combinedQuery}`); // به‌روزرسانی URL
    }, [params, query, laraAdmin]); // وابستگی به params
    

    // تغییر مقدار پارامترهای فیلتر
    const handleFilterChange = (e, filter) => {
        // console.log(e.target.value);
        setParams((prevParams) => ({
            ...prevParams,
            [filter]: e.target.value, // مقدار جدید را به params اضافه کنید
        }));
    };
    

    // پاک کردن همه فیلترها
    const clearFilter = () => {
        setParams({ province: "", city: "", gender: "",status:"" });
    };

    // تابع رندر ستاره‌ها براساس سطح (level)
    const renderStars = (level = 0) => {
        return Array.from({ length: 5 }, (_, i) => (
            <span
                key={i}
                style={{
                    color: i + 1 <= level ? "#FFD700" : "#e4e5e9", // رنگ ستاره‌ها
                    fontSize: "18px",
                }}
            >
                {i + 1 <= level ? "★" : "☆"} {/* ستاره پر یا خالی */}
            </span>
        ));
    };

    // تنظیم اطلاعات جدول (grid)
    let info = {
        insertLink: `${formUrl}/new`,
        perPage: 20,
        url: url,
        columns: [
            {
                label: "",
                jsx: (item) => (
                    <Pic
                        src={`${mediaPath}/users/${item?.photo}`}
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
                          jsx: (item) => <span>{renderStars(item?.level_id)}</span>,
                      },
                      { label: "last_login", field: "last_login" },
                  ]
                : []),
            {
                label: "gender",
                sort: false,
                field: `gender.title_${local}`,
            },
            {
                label: "status",
                jsx: (item) => (
                    <span
                        className={`rounded-full py-1 px-2 text-white bg-${item?.active_status?.color}`}
                    >
                        {item?.active_status?.[`title_${local}`]}
                    </span>
                ),
            },
            { label: "created_at", field: "created_at" },
            {
                label: "",
                sort: false,
                jsx: (item) => (
                    <div className="flex justify-center">
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
                {panel === "admin" && (
                    <>
                        {/* فیلترهای مربوط به استان، شهر و جنسیت */}
                        <Box shadow={false} minIcon={true} min={true} cols="grid-cols-10">
                            <Select
                                label="province"
                                data={needles?.province}
                                titleKey={`name_${local}`}
                                className="col-span-2"
                                onChange={(e) => {
                                    // console.log(e.target.value); // مقدار انتخاب‌شده را چاپ کنید
                                    handleFilterChange(e, "province");
                                    setProvinceId(e.target.value); // تنظیم ID استان
                                }}
                            />
                            <Select
                                label="city"
                                data={needles?.city?.filter(
                                    (item) => item.province_id == provinceId
                                )} // فیلتر شهرها براساس استان انتخاب‌شده
                                className="col-span-2"
                                onChange={(e) => handleFilterChange(e, "city")}
                                titleKey={`name_${local}`}
                                defaultValue={info?.city_id}
                            />
                            <Select
                                defaultValue={params.gender}
                                onChange={(e) => handleFilterChange(e, "gender")}
                                className="col-span-2"
                                label="gender"
                                data={needles?.gender}
                                titleKey={`title_${local}`}
                            />
                            <Select
                                defaultValue={params.status}
                                onChange={(e) => handleFilterChange(e, "status")}
                                className="col-span-2"
                                label="status"
                                data={needles?.status?.filter(item => item.group_id === 1)} 
                                valueKey="code" titleKey={"title_"+local}  
                            />
                            <ButtonContainer className="mt-7 md:mt-6 text-right">
                                <Button
                                    label="clear_filter"
                                    className="btn btn-secondary w-20"
                                    onClick={clearFilter}
                                />
                            </ButtonContainer>
                        </Box>
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
