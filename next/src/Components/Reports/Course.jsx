"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Box, Radio, SelectTail } from "@/Theme/Midone/Forms";

export function Course({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const info = parent?.state?.info?.courses?.[index];
    // console.log(culturalUser?.gender_id);


    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Input className="col-span-12" label="subject" refItem={[parent, `c_subject_${index}`]} defaultValue={info?.subject}  />
                <SelectTail label="audiencetype" refItem={[parent,`c_audiencetype_id_${index}`]} 
                    key={"audiencetype"+needles?.audiencetype?.length} defaultValue={info?.audiencetype_id}
                    data={needles?.audiencetype}
                />
                <Input label="people_count" refItem={[parent, `c_people_count_${index}`]} defaultValue={info?.people_count}  />
                <Input label="duration" refItem={[parent, `c_duration_${index}`]} defaultValue={info?.duration}  />
                <Input label="place_name" refItem={[parent, `c_place_name_${index}`]} defaultValue={info?.place_name}  />
                <SelectTail label="province" refItem={[parent,`c_province_${index}`]} 
                    key={"province"+needles?.province?.length}
                    data={needles?.province} titleKey={"name_fa"} 
                    defaultValue={info?.province_id}
                />
                <SelectTail label="city_sh" refItem={[parent,`c_city_id_${index}`]} 
                    key={"city_sh"+needles?.city?.length}
                    data={needles?.city} 
                    titleKey={"name_fa"} defaultValue={info?.city_id}
                />
                <Input  label="city" refItem={[parent,`c_city_${index}`]} defaultValue={info?.city}  />
                <Input  label="village" refItem={[parent,`c_village_${index}`]} defaultValue={info?.village}  />
                
            
            <div className="col-span-12 flex justify-start items-start border-b-2">
                {addIcon}
            </div>
    </>
    );
}
