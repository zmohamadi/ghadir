"use client";

import { useState } from "react"; // اضافه کردن useState
import { useLang } from "@/lib";
import { Input } from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
import { Select } from "@/Theme/Midone/Forms/Select";

export function InfoPromotions({ index, parent, addIcon, closeIcon, needles }) {
    const { Lang } = useLang();
    const info = parent?.state?.info?.promotion_infos?.[index];
    const [locationName, setLocationName] = useState(Lang('public.place_name')); // مقدار اولیه

    const changeLabel = (e) => {
    
        // مقدار انتخاب‌شده از سلکت
        const selectedValue = e.target.value;
        // جستجو در آرایه needles?.promotionposition
        const selectedItem = needles?.promotionposition?.find(
            (item) => item.id == selectedValue // فرض کنید "id" کلید مرتبط با مقدار است
        );
        // گرفتن مقدار location و به‌روزرسانی locationName
        if (selectedItem) {
            setLocationName(selectedItem.location);
        } else {
            console.warn("Selected item not found in promotionposition");
            setLocationName(Lang('public.place_name')); // مقدار پیش‌فرض در صورت عدم یافتن
        }
    };
    

    return (
        <>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
            <Select
                label="promotion_position"
                refItem={[parent, `promotion_position_${index}`]}
                key={"promotion_position" + needles?.promotionposition?.length}
                data={needles?.promotionposition}
                defaultValue={info?.position_id}
                onChange={changeLabel} // تغییر مقدار با changeLabel
            />
            <Input
                label={locationName}
                refItem={[parent, `place_name_${index}`]}
                defaultValue={info?.place_name}
            />
            <SelectLocation
                needles={needles}
                component={parent}
                data={info}
                refProvince={`pos_province_${index}`}
                refCitySh={`pos_city_id_${index}`}
                refCity={`pos_city_${index}`}
                refVillage={`pos_village_${index}`}
            />
            <div className="col-span-12 flex justify-start items-start border-b-4 mt-2 mb-2">
                {addIcon}
            </div>
        </>
    );
}
