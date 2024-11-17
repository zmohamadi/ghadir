"use client";

import { useLang } from "@/lib";
import {Textarea } from "@/Theme/Midone/Forms";

export function Notes({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const note = parent?.state?.info?.notes?.[index];

    return (
        <>
         <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Textarea className="col-span-12" label="description" refItem={[parent, `note_${index}`]} defaultValue={note?.content}  />
            
            <div className="col-span-12 flex justify-start items-start">
                {addIcon}
            </div>
        </>
    );
}
