"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Box, Radio, SelectTail } from "@/Theme/Midone/Forms";

export function Tribune({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const info = parent?.state?.info?.promotion_infos?.[index];
    // console.log(culturalUser?.gender_id);


    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Input label="subject" refItem={[parent, `tr_subject_${index}`]} defaultValue={info?.tr_subject}  />
                <Input label="duration" refItem={[parent, `tr_duration_${index}`]} defaultValue={info?.tr_duration}  />
                <Input label="people_type" refItem={[parent, `tr_people_type_${index}`]} defaultValue={info?.tr_people_type}  />
                <Input label="people_count" refItem={[parent, `tr_people_count_${index}`]} defaultValue={info?.tr_people_count}  />
                <Input label="place_name" refItem={[parent, `tr_place_name_${index}`]} defaultValue={info?.tr_place_name}  />
                <SelectTail label="province" refItem={[parent,`tr_province_${index}`]} 
                    key={"province"+needles?.province?.length}
                    data={needles?.province} titleKey={"name_fa"} 
                />
                <SelectTail label="city_sh" refItem={[parent,`tr_city_id_${index}`]} 
                    key={"city_sh"+needles?.city?.length}
                    data={needles?.city} 
                    titleKey={"name_fa"} defaultValue={info?.tr_city_id}
                />
                <Input  label="city" refItem={[parent,`tr_city_${index}`]} defaultValue={info?.tr_city}  />
                <Input  label="village" refItem={[parent,`tr_village_${index}`]} defaultValue={info?.tr_village}  />
                
            
            <div className="col-span-12 flex justify-start items-start">
                {addIcon}
            </div>
    </>
    );
}
