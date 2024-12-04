"use client";

import {Textarea } from "@/Theme/Midone/Forms";

export function Notes({ index, parent, addIcon, closeIcon,needles }) {
    const note = parent?.state?.info?.notes?.[index];

    return (
        <>
         <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Textarea className="col-span-12" label="description" refItem={[parent, `note_${index}`]} defaultValue={note?.content}  />
            
            <div className="col-span-12 flex justify-start items-start border-b-4 mt-2 mb-2">
                {addIcon}
            </div>
        </>
    );
}
