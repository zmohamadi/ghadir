"use client";

import { Input, SelectTail } from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
import { useAuth } from "@/lib";
import { useEffect, useState } from "react";
// import { Select } from "@/Theme/Midone/Forms/Select";

export function Tribune({ index, parent, addIcon, closeIcon,needles }) {
    const info = parent?.state?.info?.tribunes?.[index];
    const {user} = useAuth();

    const [provinceId, setProvinceId] = useState(null);
    const [selectedCityId, setSelectedCityId] = useState(null);
    
    useEffect(() => {
        setProvinceId(info?.province_id);
        setSelectedCityId(info?.city_id);
        
    }, [info]);
    const filterCity = (e) => {
        setProvinceId(e.value);
        setSelectedCityId(null); // ریست کردن شهر هنگام تغییر استان

        parent.setState(prev => {
            const updatedTribunes = [...(prev.info?.tribunes || [])];
            updatedTribunes[index] = {
                ...updatedTribunes[index],
                province_id: e.value,
                city_id: null
            };
            return {
                ...prev,
                info: {
                    ...prev.info,
                    tribunes: updatedTribunes
                }
            };
        });
    };

    const handleCityChange = (e) => {
        setSelectedCityId(e.value); // ذخیره شهر انتخاب شده
        parent.setState(prev => {
            const updatedTribunes = [...(prev.info?.tribunes || [])];
            updatedTribunes[index] = {
                ...updatedTribunes[index],
                city_id: e.value
            };
            return {
                ...prev,
                info: {
                    ...prev.info,
                    tribunes: updatedTribunes
                }
            };
        });
    };

    const handleScoreChange = (e) => {
        const newScore = parseInt(e.target.value) || 0;
        
        // به‌روزرسانی امتیاز در state والد
        parent.setState(prev => {
            const updatedTribunes = [...(prev.info?.tribunes || [])];
            updatedTribunes[index] = {
                ...updatedTribunes[index],
                score: newScore
            };
            
            return {
                ...prev,
                info: {
                    ...prev.info,
                    tribunes: updatedTribunes
                }
            };
        });
    };

    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Input className="col-span-4" label="subject" refItem={[parent, `tr_subject_${index}`]} defaultValue={info?.subject}  />
                
                <Input className="col-span-4" type="number" required="true" label="people_count" refItem={[parent, `tr_people_count_${index}`]} defaultValue={info?.people_count}  />
                <Input className="col-span-4" type="number" required="true" label="duration" refItem={[parent, `tr_duration_${index}`]} defaultValue={info?.duration}  />
                <Input className="col-span-4" required="true" label="place_name" refItem={[parent, `tr_place_name_${index}`]} defaultValue={info?.place_name}  />
                
                {/* <SelectLocation needles={needles} component={parent} data={info} 
                refProvince={`tr_province_${index}`} refCitySh={`tr_city_id_${index}`} 
                refCity={`tr_city_${index}`} refVillage={`tr_village_${index}`} 
                obj={info}
                /> */}
                <SelectTail className="col-span-4" required="true" label="audiencetype" refItem={[parent,`tr_audiencetype_id_${index}`]} 
                    key={"audiencetype"+needles?.audiencetype?.length} defaultValue={info?.audiencetype_id}
                    data={needles?.audiencetype}
                />
                <SelectTail
                required="true"
                defaultValue={provinceId}
                className="col-span-4"
                label="province"
                refItem={[parent, `tr_province_${index}`]}
                data={needles?.province}
                titleKey="name_fa"
                onChange={filterCity}
            />
            
            <SelectTail
                required="true"
                className="col-span-4"
                label="city"
                refItem={[parent, `tr_city_id_${index}`]}
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
                refItem={[parent, `tr_city_${index}`]}
                defaultValue={info?.city}
            />
            
            <Input
                className="col-span-4"
                label="village"
                refItem={[parent, `tr_village_${index}`]}
                defaultValue={info?.village}
            />
                {user?.role_id==1 &&
                <Input 
                className="col-span-4"
                note="امتیاز را وارد کنید و enter بزنید" 
                onEnter={handleScoreChange} 
                required="true" 
                label="score"
                // type="number"
                refItem={[parent, `tr_score_${index}`]} 
                defaultValue={info?.score || 0} 
            />
            }
            <div className="col-span-12 flex justify-start items-start border-b-4 mt-2 mb-2">
                {addIcon}
            </div>
    </>
    );
}
