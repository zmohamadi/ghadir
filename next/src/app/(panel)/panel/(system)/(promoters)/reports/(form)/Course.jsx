"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Box, Radio, SelectTail } from "@/Theme/Midone/Forms";

export function Course({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const info = parent?.state?.info?.promotion_infos?.[index];
    // console.log(needles);


    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                
                <Input className="col-span-12" label="subject" refItem={[parent, `c_subject_${index}`]} defaultValue={info?.c_subject}  />
                <SelectTail label="audiencetype" refItem={[parent,`c_audiencetype_id_${index}`]} 
                    key={"audiencetype"+needles?.audiencetype?.length}
                    data={needles?.audiencetype}
                />
                <Input label="people_count" refItem={[parent, `c_people_count_${index}`]} defaultValue={info?.c_people_count}  />
                <Input label="duration" refItem={[parent, `c_duration_${index}`]} defaultValue={info?.c_duration}  />
                <Input label="place_name" refItem={[parent, `c_place_name_${index}`]} defaultValue={info?.c_place_name}  />
                <SelectTail label="province" refItem={[parent,`c_province_id_${index}`]} 
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
