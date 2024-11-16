"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Box, Radio, SelectTail } from "@/Theme/Midone/Forms";

export function Course({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const info = parent?.state?.info?.promotion_infos?.[index];
    // console.log(culturalUser?.gender_id);


    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                
                <Input label="subject" refItem={[parent, `c_subject_${index}`]} defaultValue={info?.c_subject}  />
                <Input label="duration" refItem={[parent, `c_duration_${index}`]} defaultValue={info?.c_duration}  />
                <Input label="people_type" refItem={[parent, `c_people_type_${index}`]} defaultValue={info?.c_people_type}  />
                <Input label="people_count" refItem={[parent, `c_people_count_${index}`]} defaultValue={info?.c_people_count}  />
                <Input label="place_name" refItem={[parent, `c_c_place_name_${index}`]} defaultValue={info?.c_place_name}  />
                <SelectTail label="province" refItem={[parent,`c_c_province_${index}`]} 
                    key={"province"+needles?.province?.length}
                    data={needles?.province} titleKey={"name_fa"} 
                />
                <SelectTail label="city_sh" refItem={[parent,`c_city_id_${index}`]} 
                    key={"city_sh"+needles?.city?.length}
                    data={needles?.city} 
                    titleKey={"name_fa"} defaultValue={info?.c_city_id}
                />
                <Input  label="city" refItem={[parent,`c_city_${index}`]} defaultValue={info?.c_city}  />
                <Input  label="village" refItem={[parent,`c_village_${index}`]} defaultValue={info?.c_village}  />
                
            
            <div className="col-span-12 flex justify-start items-start">
                {addIcon}
            </div>
    </>
    );
}
