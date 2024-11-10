"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Box, Radio, SelectTail } from "@/Theme/Midone/Forms";

export function InfoPromotions({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const info = parent?.state?.info?.promotion_infos?.[index];
    // console.log(culturalUser?.gender_id);


    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <SelectTail label="province" refItem={[parent,`pos_province_${index}`]} 
                    key={"province"+needles?.province?.length}
                    data={needles?.province} titleKey={"name_fa"} 
                />
                <SelectTail label="city_sh" refItem={[parent,`pos_city_id_${index}`]} 
                    key={"province"+needles?.city?.length}
                    data={needles?.city} 
                    titleKey={"name_fa"} defaultValue={info?.city_id}
                />
                <Input  label="city" refItem={[parent,`pos_city_${index}`]} defaultValue={info?.city}  />
                <Input  label="village" refItem={[parent,`pos_village_${index}`]} defaultValue={info?.village}  />
                <SelectTail   label="promotion_position" refItem={[parent, `promotion_position_${index}`]} 
                    key={"promotion_position"+needles?.promotionposition?.length}
                    data={needles?.promotionposition}  defaultValue={info?.position_id}
                />
            <Input label="place_name" refItem={[parent, `place_name_${index}`]} defaultValue={info?.place_name}  />
            
            <div className="col-span-12 flex justify-start items-start">
                {addIcon}
            </div>
    </>
    );
}
