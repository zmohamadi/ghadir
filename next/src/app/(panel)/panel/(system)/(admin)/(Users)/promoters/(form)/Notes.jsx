"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Box, Radio } from "@/Theme/Midone/Forms";

export function Notes({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const note = parent?.state?.info?.notes?.[index];
    // console.log(culturalUser?.gender_id);


    return (
        <Box shadow={false} title={Lang('public.note')}>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Textarea className="col-span-12" label="description" refItem={[parent, `note_${index}`]} defaultValue={note?.content}  />
            
            <div className="col-span-12 flex justify-start items-start">
                {addIcon}
            </div>
        </Box>
    );
}
