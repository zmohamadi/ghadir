"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Box, Radio } from "@/Theme/Midone/Forms";

export function CulturalUsers({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    // console.log(needles);

    return (
        <Box shadow={false} title={Lang('public.cultural_users')}>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
            <Input label="name" refItem={[parent, `name_${index}`]} required="true" />
            <Input label="family" refItem={[parent, `family_${index}`]} required="true" />
            <Input label="job_position" refItem={[parent, `job_position_${index}`]} required="true" />
            <Input label="phone" refItem={[parent, `phone_${index}`]} required="true" />
            <Textarea label="description" refItem={[parent, `comments_${index}`]} required="true" />
            <Radio defaultValue={needles?.gender_id ? data?.gender_id: 1} required="true"  type="col" label="gender" id="user_gender_id_" 
                refItem={[parent,`user_gender_id_${index}`]}
                data={needles?.gender} titleKey={"title_"+local}  key={"user_gender_id_"+needles?.gender_id}
            />
           
            <div className="col-span-12 flex justify-start items-start">
                {addIcon}
            </div>
        </Box>
    );
}
