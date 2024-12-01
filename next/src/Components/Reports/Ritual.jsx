"use client";

import { useLang } from "@/lib";
import { Input, Textarea, Box, Radio, SelectTail } from "@/Theme/Midone/Forms";
import { SelectLocation } from "../Public/SelectLocation";
import { Select } from "@/Theme/Midone/Forms/Select";

export function Ritual({ index, parent, addIcon, closeIcon,needles }) {
    const { Lang,local } = useLang();
    const info = parent?.state?.info?.ritual_reports?.[index];
    // console.log(parent?.state?.info);


    return (<>
            <div className="col-span-12 flex justify-end items-end">
                {closeIcon}
            </div>
                <Select className="col-span-12" label="ritual" refItem={[parent, `ritual_id_${index}`]} 
                    key={"ritual"+needles?.ritual?.length} 
                    data={needles?.ritual}  defaultValue={info?.ritual_id}
                />
                <Textarea className="col-span-12" label="description" refItem={[parent, `r_description_${index}`]} defaultValue={info?.description}  />
                {/* <SelectTail label="province" refItem={[parent,`r_province_${index}`]} 
                    key={"province"+needles?.province?.length}
                    data={needles?.province} titleKey={"name_fa"} 
                    defaultValue={info?.province_id}

                />
                <SelectTail label="city_sh" refItem={[parent,`r_city_id_${index}`]} 
                    key={"city_sh"+needles?.city?.length}
                    data={needles?.city} 
                    titleKey={"name_fa"} defaultValue={info?.city_id}
                /> */}
                <SelectLocation needles={needles} component={parent} data={info} 
                refProvince={`r_province_${index}`} refCitySh={`r_city_id_${index}`} 
                refCity={`r_city_${index}`} refVillage={`r_village_${index}`} 
                classNameCity="col-span-4"
                classNameVillage="col-span-4"

                />

                {/* <Input className="col-span-4"  label="city" refItem={[parent,`r_city_${index}`]} defaultValue={info?.city}  />
                <Input className="col-span-4" label="village" refItem={[parent,`r_village_${index}`]} defaultValue={info?.village}  /> */}
                <Input className="col-span-4" label="place_name" refItem={[parent, `r_place_name_${index}`]} defaultValue={info?.place_name}  />

                
            
            <div className="col-span-12 flex justify-start items-start border-b-2">
                {addIcon}
            </div>
    </>
    );
}
