"use client";

import { Input, SelectTail } from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
// import { Select } from "@/Theme/Midone/Forms/Select";
import { useAuth } from "@/lib";
import { useState } from "react";


export function Course({ index, parent, addIcon, closeIcon,needles }) {
    const info = parent?.state?.info?.courses?.[index];
    const {user} = useAuth();
    const [score, setLocalScore] = useState(info?.score);

    const handleChange = (e) => {
        let newScore = parseInt(e.target.value) || 0;
        setLocalScore(newScore);
        parent.setState(prev => ({
            ...prev,
            info: {
                ...prev.info,
                courses: prev.info?.courses?.map((course, i) =>
                    i === index ? { ...course, score: newScore } : course
                ) || [],
            },
        }));
    };

    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Input className="col-span-12" label="subject" refItem={[parent, `c_subject_${index}`]} defaultValue={info?.subject}  />
                <SelectTail required="true" label="audiencetype" refItem={[parent,`c_audiencetype_id_${index}`]} 
                    key={"audiencetype"+needles?.audiencetype?.length} defaultValue={info?.audiencetype_id}
                    data={needles?.audiencetype}
                />
                <Input type="number" required="true" label="people_count" refItem={[parent, `c_people_count_${index}`]} defaultValue={info?.people_count}  />
                <Input type="number" required="true" label="duration" refItem={[parent, `c_duration_${index}`]} defaultValue={info?.duration}  />
                <Input required="true" label="place_name" refItem={[parent, `c_place_name_${index}`]} defaultValue={info?.place_name}  />
                <SelectLocation
                obj={info}
                 needles={needles} component={parent} data={info} 
                    refProvince={`c_province_${index}`} refCitySh={`c_city_id_${index}`} 
                    refCity={`c_city_${index}`} refVillage={`c_village_${index}`} 
                />
                {/* {user?.role_id==1&&
                <Input onChange={handleChange} required="true" label="score" refItem={[parent, `c_score_${index}`]} defaultValue={score} />                } */}
            <div className="col-span-12 flex justify-start items-start border-b-4">
                {addIcon}
            </div>
    </>
    );
}
