"use client";

import { Input, SelectTail } from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
import { useAuth } from "@/lib";
// import { Select } from "@/Theme/Midone/Forms/Select";

export function Tribune({ index, parent, addIcon, closeIcon,needles }) {
    const info = parent?.state?.info?.tribunes?.[index];
    const {user} = useAuth();

    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Input className="col-span-12" label="subject" refItem={[parent, `tr_subject_${index}`]} defaultValue={info?.subject}  />
                <SelectTail required="true" label="audiencetype" refItem={[parent,`tr_audiencetype_id_${index}`]} 
                    key={"audiencetype"+needles?.audiencetype?.length} defaultValue={info?.audiencetype_id}
                    data={needles?.audiencetype}
                />
                <Input type="number" required="true" label="people_count" refItem={[parent, `tr_people_count_${index}`]} defaultValue={info?.people_count}  />
                <Input type="number" required="true" label="duration" refItem={[parent, `tr_duration_${index}`]} defaultValue={info?.duration}  />
                <Input required="true" label="place_name" refItem={[parent, `tr_place_name_${index}`]} defaultValue={info?.place_name}  />
                
                <SelectLocation needles={needles} component={parent} data={info} 
                refProvince={`tr_province_${index}`} refCitySh={`tr_city_id_${index}`} 
                refCity={`tr_city_${index}`} refVillage={`tr_village_${index}`} 
                obj={info}
                />
                {/* {user?.role_id==1&&
                    <Input required="true" label="score" refItem={[parent, `r_score_${index}`]} defaultValue={info?.score}  />
                } */}
            <div className="col-span-12 flex justify-start items-start border-b-4 mt-2 mb-2">
                {addIcon}
            </div>
    </>
    );
}
