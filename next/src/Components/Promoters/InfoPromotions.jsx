"use client";

import { useLang } from "@/lib";
import { Input } from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
import { Select } from "@/Theme/Midone/Forms/Select";

export function InfoPromotions({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const info = parent?.state?.info?.promotion_infos?.[index];

    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Select label="promotion_position" refItem={[parent, `promotion_position_${index}`]} 
                    key={"promotion_position"+needles?.promotionposition?.length}
                    data={needles?.promotionposition}  defaultValue={info?.position_id}
                />
                <Input label="place_name" refItem={[parent, `place_name_${index}`]} defaultValue={info?.place_name}  />
                <SelectLocation needles={needles} component={parent} data={info} 
                    refProvince={`pos_province_${index}`} refCitySh={`pos_city_id_${index}`} 
                    refCity={`pos_city_${index}`} refVillage={`pos_village_${index}`} 
                    />
            
            <div className="col-span-12 flex justify-start items-start border-b-4 mt-2 mb-2">
                {addIcon}
            </div>
    </>
    );
}
