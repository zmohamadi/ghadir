"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Box, Radio } from "@/Theme/Midone/Forms";

export function CulturalUsers({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const culturalUser = parent?.state?.info?.cultural_users?.[index];
    // console.log(culturalUser?.gender_id);


    return (
        <Box shadow={false} title={Lang('public.cultural_users')}>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
            <Input label="name" refItem={[parent, `c_name_${index}`]} defaultValue={culturalUser?.name}  />
            <Input label="family" refItem={[parent, `c_family_${index}`]} defaultValue={culturalUser?.family} />
            <Input label="job_position" refItem={[parent, `c_job_position_${index}`]} defaultValue={culturalUser?.job_position}  />
            <Input label="phone" refItem={[parent, `c_phone_${index}`]} defaultValue={culturalUser?.phone}  />
            <Textarea label="description" refItem={[parent, `c_comments_${index}`]} defaultValue={culturalUser?.comments}  />
            <Radio defaultValue={culturalUser?.gender_id}   type="col" label="gender" id="c_gender_id" 
                refItem={[parent,`c_gender_id_${index}`]}
                data={needles?.gender} titleKey={"title_"+local}  key={"c_gender_id_"+needles?.gender}
            />
            <div className="col-span-12 flex justify-start items-start">
                {addIcon}
            </div>
        </Box>
    );
}
