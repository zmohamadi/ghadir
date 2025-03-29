"use client";

import { Input, SelectTail } from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
import { useAuth } from "@/lib";

export function Course({ index, parent, addIcon, closeIcon, needles }) {
    const info = parent?.state?.info?.courses?.[index];
    const {user} = useAuth();

    const handleScoreChange = (e) => {
        const newScore = parseInt(e.target.value) || 0;
        
        // به‌روزرسانی امتیاز در state والد
        parent.setState(prev => {
            const updatedCourses = [...(prev.info?.courses || [])];
            updatedCourses[index] = {
                ...updatedCourses[index],
                score: newScore
            };
            
            return {
                ...prev,
                info: {
                    ...prev.info,
                    courses: updatedCourses
                }
            };
        });
    };

    return (
        <>
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
                needles={needles} 
                component={parent} 
                data={info} 
                refProvince={`c_province_${index}`} 
                refCitySh={`c_city_id_${index}`} 
                refCity={`c_city_${index}`} 
                refVillage={`c_village_${index}`} 
            />
            {user?.role_id==1 &&
                <Input 
                note="امتیاز را وارد کنید و enter بزنید" 
                onEnter={handleScoreChange} 
                required="true" 
                label="score"
                // type="number"
                refItem={[parent, `c_score_${index}`]} 
                defaultValue={info?.score || 0} 
            />
            }
            <div className="col-span-12 flex justify-start items-start border-b-4">
                {addIcon}
            </div>
        </>
    );
}