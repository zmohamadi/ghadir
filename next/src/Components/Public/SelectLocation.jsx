"use client";
import { useEffect, useState } from "react";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Input } from "@/Theme/Midone";


export function SelectLocation({needles,component,data,
    classNameProvince="col-span-6",classNameCitySh="col-span-6",refProvince="province_id",refCitySh="city_id",
    classNameCity="col-span-6",classNameVillage="col-span-6",refCity="city",refVillage="village"
}){
    
    let [provinceId, setProvinceId] = useState(null);
    

    useEffect(()=>{
        
        if(component?.state.info["city_id"]) setProvinceId(component?.state.info?.city_user?.province_id);
       
    }, [component?.state?.info]);

    const filterCity = (e)=>{
        setProvinceId(e.value);
    };

    return(
        
            <>
                <SelectTail defaultValue={data?.city_id ? data?.city_user?.province_id: provinceId} 
                    className={classNameProvince} label="province" refItem={[component, refProvince]} 
                    key={"province"+needles?.province?.length}
                    data={needles?.province} titleKey={"name_fa"}
                    onChange={(e) => filterCity(e)}
                />
                <SelectTail  className={classNameCitySh} label="city_sh" refItem={[component, refCitySh]} 
                    key={"city" + provinceId}
                    data={provinceId>0 ?  needles?.city?.filter(item => item.province_id == provinceId) :  needles?.city} 
                    titleKey={"name_fa"}
                />
                <Input className={classNameCity}
                    label="city" refItem={[parent,refCity]} defaultValue={data?.city}  />
                <Input className={classNameVillage} label="village" 
                    refItem={[parent,refVillage]} defaultValue={data?.village}  />
                
            </>
    );
}