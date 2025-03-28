"use client";

import { useAuth, useLang } from "@/lib";
import { Input, SelectTail, Textarea} from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
// import { Select } from "@/Theme/Midone/Forms/Select";

export function Ritual({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const info = parent?.state?.info?.ritual_reports?.[index];
    const {user} = useAuth();
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
                <SelectTail className="col-span-12" label="ritual" refItem={[parent, `r_ritual_id_${index}`]} 
                    // key={"ritual"+needles?.ritual?.length} 
                    data={needles?.ritual}  defaultValue={info?.ritual_id}
                />
                <Textarea className="col-span-12" label="description" refItem={[parent, `r_description_${index}`]} defaultValue={info?.description}  />
                <SelectLocation needles={needles} component={parent} data={info} 
                    refProvince={`r_province_${index}`} refCitySh={`r_city_id_${index}`} 
                    refCity={`r_city_${index}`} refVillage={`r_village_${index}`} 
                    classNameCity="col-span-4"
                    classNameVillage="col-span-4"
                    obj={info}

                />
                <Input required="true" className="col-span-4" label="place_name" refItem={[parent, `r_place_name_${index}`]} defaultValue={info?.place_name}  />            
                {user?.role_id==1 &&
                <Input 
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
