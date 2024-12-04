"use client";

import {Textarea } from "@/Theme/Midone/Forms";

export function Notif({ index, parent, addIcon, closeIcon }) {
    const notif = parent?.state?.info?.notif?.[index];

    return (
        <>
         <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Textarea className="col-span-12" label="description" refItem={[parent, `notif_${index}`]} defaultValue={notif?.content}  />
            
            <div className="col-span-12 flex justify-start items-start border-b-4 mt-2 mb-2">
                {addIcon}
            </div>
        </>
    );
}
