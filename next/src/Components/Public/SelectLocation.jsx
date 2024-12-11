"use client";
import { useEffect, useState } from "react";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Input } from "@/Theme/Midone";

export function SelectLocation({
    needles,
    component = { state: { info: {} } },
    data = {},
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
    const [provinceId, setProvinceId] = useState(data?.province_id || null);
    const [selectedCityId, setSelectedCityId] = useState(data?.city_id || null);

    useEffect(() => {
        if (component?.state?.info?.city_id) {
            setProvinceId(component.state.info.city_user?.province_id || null);
            setSelectedCityId(component.state.info.city_id);
        }
    }, [component?.state?.info]);

    const filterCity = (e) => {
        setProvinceId(e.value);
        setSelectedCityId(null); // ریست کردن شهر هنگام تغییر استان
    };

    const handleCityChange = (e) => {
        setSelectedCityId(e.value); // ذخیره شهر انتخاب شده
    };

    return (
        <>
            <SelectTail
                required="true"
                defaultValue={provinceId}
                className={classNameProvince}
                label={lProvince}
                refItem={[component, refProvince]}
                data={needles?.province || []}
                titleKey={"name_fa"}
                onChange={(e) => filterCity(e)}
            />
            <SelectTail
                required="true"
                className={classNameCitySh}
                label={lCitySh}
                refItem={[component, refCitySh]}
                defaultValue={selectedCityId} // مقدار کنترل‌شده
                onChange={handleCityChange} // مدیریت تغییر شهر
            >
                {provinceId > 0
                    ? needles?.city
                        ?.filter((item) => item.province_id == provinceId)
                        .map((item) => (
                            <option key={item.id} value={item.id}>
                                {item.name_fa}
                            </option>
                        ))
                    : needles?.city?.map((item) => (
                        <option key={item.id} value={item.id}>
                            {item.name_fa}
                        </option>
                    ))}
            </SelectTail>
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
