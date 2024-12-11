"use client";
import { useEffect, useState } from "react";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Input } from "@/Theme/Midone";

export function SelectLocation({
    needles,
    component = { state: { info: {} } }, // مقدار پیش‌فرض برای جلوگیری از undefined
    data = {}, // مقدار پیش‌فرض برای data
    classNameProvince = "col-span-6",
    classNameCitySh = "col-span-6",
    refProvince = "province_id",
    lProvince = "province",
    refCitySh = "city_id",
    lCitySh = "city_sh",
    classNameCity = "col-span-6",
    classNameVillage = "col-span-6",
    refCity = "city",
    lCity = "city",
    refVillage = "village",
    lVillage = "village",
}) {
    const [provinceId, setProvinceId] = useState(null);

    useEffect(() => {
        if (component?.state?.info?.city_id) {
            setProvinceId(component.state.info.city_user?.province_id || null);
        }
    }, [component?.state?.info]);

    const filterCity = (e) => {
        setProvinceId(e.value);
    };

    return (
        <>
            <SelectTail
            required="true"
                defaultValue={data?.province_id ? data?.province_id : provinceId}
                className={classNameProvince}
                label={lProvince}
                refItem={[component, refProvince]}
                // key={"province" + (needles?.province?.length || 0)}
                data={needles?.province || []}
                titleKey={"name_fa"}
                onChange={(e) => filterCity(e)}
            />
            <SelectTail
            required="true"
                className={classNameCitySh}
                label={lCitySh}
                refItem={[component, refCitySh]}
                // key={"city" + (provinceId || 0)}
                data={
                    provinceId > 0
                        ? needles?.city?.filter((item) => item.province_id == provinceId)
                        : needles?.city || []
                }
                titleKey={"name_fa"}
                defaultValue={data?.city_id}
            />
            <Input
                className={classNameCity}
                label={lCity}
                refItem={[component, refCity]}
                defaultValue={data?.city}
            />
            <Input
                className={classNameVillage}
                label={lVillage}
                refItem={[component, refVillage]}
                defaultValue={data?.village}
            />
        </>
    );
}
