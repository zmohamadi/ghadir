"use client";

import { useAuth, useLang } from "@/lib";
import { Input, SelectTail, Textarea} from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
import { useEffect, useState } from "react";
// import { Select } from "@/Theme/Midone/Forms/Select";

export function Ritual({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const info = parent?.state?.info?.ritual_reports?.[index];
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

        // Update parent state
        parent.setState(prev => {
            const updatedRituals = [...(prev.info?.ritual_reports || [])];
            updatedRituals[index] = {
                ...updatedRituals[index],
                province_id: e.value,
                city_id: null // Reset city_id when province changes
            };
            return {
                ...prev,
                info: {
                    ...prev.info,
                    ritual_reports: updatedRituals
                }
            };
        });
    };

    const handleCityChange = (e) => {
        setSelectedCityId(e.value); // ذخیره شهر انتخاب شده
        // Update parent state
        parent.setState(prev => {
            const updatedRituals = [...(prev.info?.ritual_reports || [])];
            updatedRituals[index] = {
                ...updatedRituals[index],
                city_id: e.value
            };
            return {
                ...prev,
                info: {
                    ...prev.info,
                    ritual_reports: updatedRituals
                }
            };
        });
    };

    const handleScoreChange = (e) => {
        const newScore = parseInt(e.target.value) || 0;
        
        // به‌روزرسانی امتیاز در state والد
        parent.setState(prev => {
            const updatedRituals = [...(prev.info?.ritual_reports || [])];
            updatedRituals[index] = {
                ...updatedRituals[index],
                score: newScore
            };
            
            return {
                ...prev,
                info: {
                    ...prev.info,
                    ritual_reports: updatedRituals
                }
            };
        });
    };

    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <SelectTail className="col-span-4" label="ritual" refItem={[parent, `r_ritual_id_${index}`]} 
                    // key={"ritual"+needles?.ritual?.length} 
                    data={needles?.ritual}  defaultValue={info?.ritual_id}
                />
                {/* <SelectLocation needles={needles} component={parent} data={info} 
                    refProvince={`r_province_${index}`} refCitySh={`r_city_id_${index}`} 
                    refCity={`r_city_${index}`} refVillage={`r_village_${index}`} 
                    classNameCity="col-span-4"
                    classNameVillage="col-span-4"
                    obj={info}

                /> */}
                <SelectTail
                required="true"
                defaultValue={provinceId}
                className="col-span-4"
                label="province"
                refItem={[parent, `r_province_${index}`]}
                data={needles?.province}
                titleKey="name_fa"
                onChange={filterCity}
            />
            
            <SelectTail
                required="true"
                className="col-span-4"
                label="city"
                refItem={[parent, `r_city_id_${index}`]}
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
                refItem={[parent, `r_city_${index}`]}
                defaultValue={info?.city}
            />
            
            <Input
                className="col-span-4"
                label="village"
                refItem={[parent, `r_village_${index}`]}
                defaultValue={info?.village}
            />
            <Input required="true" className="col-span-4" label="place_name" refItem={[parent, `r_place_name_${index}`]} defaultValue={info?.place_name}  />            

            <Textarea className="col-span-12" label="description" refItem={[parent, `r_description_${index}`]} defaultValue={info?.description}  />

                {user?.role_id==1 &&
                <Input 
                className="col-span-4"
                note="امتیاز را وارد کنید و enter بزنید" 
                onEnter={handleScoreChange} 
                required="true" 
                label="score" 
                // type="number"
                refItem={[parent, `r_score_${index}`]} 
                defaultValue={info?.score || 0} 
            />
            }
            <div className="col-span-12 flex justify-start items-start border-b-4 mt-2 mb-2">
                {addIcon}
            </div>
    </>
    );
}
