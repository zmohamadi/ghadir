"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Radio } from "@/Theme/Midone/Forms";

export function CulturalUsers({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    let culturalUser = parent?.state?.info?.cultural_users?.[index];

    console.log("needles?.gender");
    console.log("c_gender_id_"+index+"_"+needles?.gender?.length+"_"+culturalUser?.gender_id);
    return (<>
    <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
            <p className="col-span-12 text-green-700 mb-5">{Lang('public.cultural_users_p')}</p>
            <Input label="name" refItem={[parent, `c_name_${index}`]} defaultValue={culturalUser?.name}  />
            <Input label="family" refItem={[parent, `c_family_${index}`]} defaultValue={culturalUser?.family} />
            <Input label="job_position" refItem={[parent, `c_job_position_${index}`]} defaultValue={culturalUser?.job_position}  />
            <Input label="phone" refItem={[parent, `c_phone_${index}`]} defaultValue={culturalUser?.phone}  />
            <Textarea label="description" refItem={[parent, `c_comments_${index}`]} defaultValue={culturalUser?.comments}  />
            <Radio defaultValue={culturalUser?.gender_id} type="col" label="gender" 
                refItem={[parent,`c_gender_id_${index}`]}
                data={needles?.gender} titleKey={"title_"+local}
                key={culturalUser?.gender_id}
                // id="c_gender_id" 
                // key={"c_gender_id_"+index}
            />
            <div className="col-span-12 flex justify-start items-start border-b-4 mt-2 mb-2">
                {addIcon}
            </div>
    </>
    );
}
