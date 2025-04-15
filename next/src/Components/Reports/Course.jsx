"use client";

import { Input, SelectTail } from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
import { useAuth } from "@/lib";
import { useEffect, useState } from "react";

export function Course({ index, parent, addIcon, closeIcon, needles }) {
    const info = parent?.state?.info?.courses?.[index];
    const {user} = useAuth();
    const [provinceId, setProvinceId] = useState(null);
    const [selectedCityId, setSelectedCityId] = useState(null);
    
    useEffect(() => {
        setProvinceId(info?.province_id);
        setSelectedCityId(info?.city_id);
        
    }, [info]);

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
    const filterCity = (e) => {
        setProvinceId(e.value);
        setSelectedCityId(null); // ریست کردن شهر هنگام تغییر استان

        // Update parent state
        parent.setState(prev => {
            const updatedCourses = [...(prev.info?.courses || [])];
            updatedCourses[index] = {
                ...updatedCourses[index],
                province_id: e.value,
                city_id: null // Reset city_id in parent state
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

    const handleCityChange = (e) => {
        setSelectedCityId(e.value); // ذخیره شهر انتخاب شده
        // Update parent state
        parent.setState(prev => {
            const updatedCourses = [...(prev.info?.courses || [])];
            updatedCourses[index] = {
                ...updatedCourses[index],
                city_id: e.value
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
            <Input className="col-span-4" label="subject" refItem={[parent, `c_subject_${index}`]} defaultValue={info?.subject}  />
            
            <Input type="number" required="true" className="col-span-4" label="people_count" refItem={[parent, `c_people_count_${index}`]} defaultValue={info?.people_count}  />
            <Input type="number" required="true" className="col-span-4" label="duration" refItem={[parent, `c_duration_${index}`]} defaultValue={info?.duration}  />
            <Input required="true" label="place_name" className="col-span-4" refItem={[parent, `c_place_name_${index}`]} defaultValue={info?.place_name}  />
            {/* <SelectLocation
                obj={info}
                needles={needles} 
                component={parent} 
                data={info} 
                refProvince={`c_province_${index}`} 
                refCitySh={`c_city_id_${index}`} 
                refCity={`c_city_${index}`} 
                refVillage={`c_village_${index}`} 
            /> */}
            <SelectTail required="true" className="col-span-4" label="audiencetype" refItem={[parent,`c_audiencetype_id_${index}`]} 
                key={"audiencetype"+needles?.audiencetype?.length} defaultValue={info?.audiencetype_id}
                data={needles?.audiencetype}
            />
            <SelectTail
                required="true"
                defaultValue={provinceId}
                className="col-span-4"
                label="province"
                refItem={[parent, `c_province_${index}`]}
                data={needles?.province}
                titleKey="name_fa"
                onChange={filterCity}
            />
            
            <SelectTail
                required="true"
                className="col-span-4"
                label="city"
                refItem={[parent, `c_city_id_${index}`]}
                defaultValue={selectedCityId}
                onChange={handleCityChange}
            >
                {provinceId ?
                    needles?.city
                        ?.filter(item => item.province_id == provinceId)
                        .map(item => (
                            <option key={item.id} value={item.id}>
                                {item.name_fa}
                            </option>
                        ))
                    : needles?.city?.map(item => (
                        <option key={item.id} value={item.id}>
                            {item.name_fa}
                        </option>
                    ))
                }
            </SelectTail>
            
            <Input
                className="col-span-4"
                label="city_sh"
                refItem={[parent, `c_city_${index}`]}
                defaultValue={info?.city}
            />
            
            <Input
                className="col-span-4"
                label="village"
                refItem={[parent, `c_village_${index}`]}
                defaultValue={info?.village}
            />
            {user?.role_id==1 &&
                <Input 
                note="امتیاز را وارد کنید و enter بزنید" 
                onEnter={handleScoreChange} 
                required="true" 
                label="score"
                // type="number"
                className="col-span-4"
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