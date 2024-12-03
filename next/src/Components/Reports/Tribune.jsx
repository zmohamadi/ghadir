"use client";

import { Input } from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
import { Select } from "@/Theme/Midone/Forms/Select";

export function Tribune({ index, parent, addIcon, closeIcon,needles }) {
    const info = parent?.state?.info?.tribunes?.[index];

    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Input className="col-span-12" label="subject" refItem={[parent, `tr_subject_${index}`]} defaultValue={info?.subject}  />
                <Select label="audiencetype" refItem={[parent,`tr_audiencetype_id_${index}`]} 
                    key={"audiencetype"+needles?.audiencetype?.length} defaultValue={info?.audiencetype_id}
                    data={needles?.audiencetype}
                />
                <Input label="people_count" refItem={[parent, `tr_people_count_${index}`]} defaultValue={info?.people_count}  />
                <Input label="duration" refItem={[parent, `tr_duration_${index}`]} defaultValue={info?.duration}  />
                <Input label="place_name" refItem={[parent, `tr_place_name_${index}`]} defaultValue={info?.place_name}  />
                
                <SelectLocation needles={needles} component={parent} data={info} 
                refProvince={`tr_province_${index}`} refCitySh={`tr_city_id_${index}`} 
                refCity={`tr_city_${index}`} refVillage={`tr_village_${index}`} 
                />
            <div className="col-span-12 flex justify-start items-start border-b-2">
                {addIcon}
            </div>
    </>
    );
}
