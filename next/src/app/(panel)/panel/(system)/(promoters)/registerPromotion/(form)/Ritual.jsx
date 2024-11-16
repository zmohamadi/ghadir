"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Box, Radio, SelectTail } from "@/Theme/Midone/Forms";

export function Ritual({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const info = parent?.state?.info?.promotion_infos?.[index];
    // console.log(culturalUser?.gender_id);


    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <SelectTail label="ritual" refItem={[parent, `r_ritual_${index}`]} 
                    key={"ritual"+needles?.ritual?.length}
                    data={needles?.ritual}  defaultValue={info?.r_ritual_id}
                />
                <Textarea label="text" refItem={[parent, `r_text_${index}`]} defaultValue={info?.r_text}  />
                <SelectTail label="province" refItem={[parent,`r_province_${index}`]} 
                    key={"province"+needles?.province?.length}
                    data={needles?.province} titleKey={"name_fa"} 
                />
                <SelectTail label="city_sh" refItem={[parent,`r_city_id_${index}`]} 
                    key={"city_sh"+needles?.city?.length}
                    data={needles?.city} 
                    titleKey={"name_fa"} defaultValue={info?.r_city_id}
                />
                <Input  label="city" refItem={[parent,`r_city_${index}`]} defaultValue={info?.r_city}  />
                <Input  label="village" refItem={[parent,`r_village_${index}`]} defaultValue={info?.r_village}  />
                
            
            <div className="col-span-12 flex justify-start items-start">
                {addIcon}
            </div>
    </>
    );
}
