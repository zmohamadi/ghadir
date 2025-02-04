"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useAuth } from "@/lib/auth";
import { Loading, Repeat } from "@/Theme/Midone/Utils";
import { useData,useFormRefs,Input,Button,ButtonContainer,Textarea,Frame,Radio, SelectTail, CheckBox } from "@/Theme/Midone/Forms";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";
import { CulturalUsers } from "./CulturalUsers";
import { useRouter } from 'next/navigation';
import { Notes } from "./Notes";
import { InfoPromotions } from "./InfoPromotions";
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import { SelectLocation } from "../Public/SelectLocation";
import { Notif } from "./Notif";
// import { Select } from "@/Theme/Midone/Forms/Select";
import { SetStars } from "../Public/SetStars";

export function Form({id}){
    const {user} = useAuth();
    const access = user?.role_id == 1 ?  true : false;
    const query = `?promoter=${user?.id}`;
    // console.log(query);
    const link =access ? "/promoters" :"/promoters"+query ;
    const {Lang, local} = useLang();
    const {laraAdmin} = useConfig();
    const router = useRouter();
    let component = useFormRefs();
    let {save, get, getNeedles} = useData();
    let [needles, setNeedles] = useState();
    // console.log(user);
    
    let uploadUrl = laraAdmin+"/upload/.-media-users";
    let deleteUrl = laraAdmin+"/deleteFile/.-media-users";
    let uploadDir = 'media/users/';
    
    // اگر روت پروفایل باشد، از user.id استفاده می‌شود
    let finalId = !access ? user?.id : id;
    
    let url = laraAdmin + "/promoters";
    let method = "new";
    let nextUrl = access? link : "/";
    
    if (finalId !== 0 && finalId !== undefined) {
        url = `${laraAdmin + "/promoters"}/${finalId}`;
        method = "edit";
    }

    useEffect(() => {
        getNeedles(laraAdmin+'/promoters/get-needles', setNeedles);
        if(finalId != 0 && finalId != undefined) get(url, component, "info");
    }, [url]);


    const saveItem = ()=>save(url, component, method, nextUrl);
    const back = ()=>router.back();
    const data = component?.state?.info;

    const otherProps = (component?.state?.info?.cultural_users?.length)? { count_data: component.state.info.cultural_users.length } : {};
    const otherProps2 = (component?.state?.info?.notes?.length)? { count_data: component.state.info.notes.length } : {};
    const otherProps3 = (component?.state?.info?.promotion_infos?.length)? { count_data: component.state.info.promotion_infos.length } : {};
    const otherProps4 = (component?.state?.info?.notif?.length)? { count_data: component.state.info.notif.length } : {};
    

    let [nativeProvinceId, setProvinceId] = useState(null);
    useEffect(()=>{
        
        if(component?.state.info["native_city_id"]) setProvinceId(component?.state.info?.native_province_id);
       
    }, [component?.state?.info]);

    const filterCity = (e)=>{
        setProvinceId(e.value);
    };
    const [disabledInputs, setDisabledInputs] = useState({
        khadamat_code: component?.state?.info["khadamat_code"] ? component?.state?.info["khadamat_code"] : true,
        tablighat_office_code: component?.state?.info["tablighat_office_code"] ? component?.state?.info["tablighat_office_code"] : true,
        tablighat_organization_code: component?.state?.info["tablighat_organization_code"] ? component?.state?.info["tablighat_organization_code"] : true,
        ovghaf_code: component?.state?.info["ovghaf_code"] ? component?.state?.info["ovghaf_code"] : true,
      });
    
      const toggleInput = (inputName, e) => {
        setDisabledInputs((prev) => ({
          ...prev,
          [inputName]: !e, // اگر تیک زده شود، فعال و اگر برداشته شود، غیرفعال
        }));
      };
      const inputsData = [
        { name: "khadamat_code", label: "khadamat_code" },
        { name: "tablighat_office_code", label: "tablighat_office_code" },
        { name: "tablighat_organization_code", label: "tablighat_organization_code" },
        { name: "ovghaf_code", label: "ovghaf_code" },
      ];
    
    return(
        
            <>
                {(data==undefined || needles==null)?
                    <Loading className="mt-5" />
                :<>
                <Frame title={Lang(["promoter"])}>
    <Tab className="col-span-12">
        <TabHeader>
            <TabList href="tab-first" title={Lang('personal_info')} active={"true"} 
                items={[component, ['firstname', 'lastname', 'mobile', 'is_not_citizen', 'codemeli', 
                    'khadamat_code', 'tablighat_office_code', 'tablighat_organization_code', "bank_account_number", "education_id"]]} />
            <TabList href="tab-second" title={Lang('promotion_info')}
                items={[component, ['promotion_position_*', 'place_name_*', 'pos_province_*', 'pos_city_id_*', 
                    'pos_city_*', 'pos_village_*']]} />
            <TabList href="tab-third" title={Lang('cultural_users')}
                items={[component, ['c_name_*', 'c_family_*', 'c_job_position_*']]} />
            {user?.role_id==1 && <>
                <TabList href="tab-fourth" title={Lang('notes')} />
            </>}
        </TabHeader>
        <TabBody>
            <TabPanel id="tab-first" active={"true"}>
                <Input className="col-span-12 sm:col-span-6 md:col-span-3 w-full" label="name" refItem={[component, "firstname"]} required="true" />
                <Input className="col-span-12 sm:col-span-6 md:col-span-3 w-full" label="family" refItem={[component, "lastname"]} required="true" />
                {access && <Input type="mobile" dir="ltr" className="col-span-12 sm:col-span-6 md:col-span-3 w-full" label="mobile" refItem={[component, "mobile"]} required="true" />}
                <SelectTail 
                    key={"is_not_citizen" + 2} 
                    required="true"
                    defaultValue={data?.is_not_citizen === true ? 1 : 0} 
                    className="col-span-12 sm:col-span-6 md:col-span-3 w-full"
                    label="citizen" refItem={[component, "is_not_citizen"]}>
                    <option value="0">{Lang('im_citizen')}</option>
                    <option value="1">{Lang('not_citizen')}</option>
                </SelectTail>
                <Input dir="ltr" className="col-span-12 sm:col-span-6 md:col-span-3 w-full" type="number" label="codemeli" refItem={[component, "codemeli"]} />
                <Input className="col-span-12 sm:col-span-6 md:col-span-3 w-full" dir="ltr" type="number" label="bank_cart_number" refItem={[component, "bank_cart_number"]} required="true" />
                <Input className="col-span-12 sm:col-span-6 md:col-span-3 w-full" dir="ltr" type="number" label="bank_account_number" refItem={[component, "bank_account_number"]} required="true" />
                {/* <Input className="col-span-12 sm:col-span-6 md:col-span-3 w-full" dir="ltr" type="number" label="bank_sheba_number" refItem={[component, "bank_sheba_number"]} required="true" /> */}
                <SelectTail className="col-span-12 sm:col-span-6 md:col-span-3 w-full" label="education" data={needles?.education} refItem={[component, "education_id"]} required="true" />
                <SelectTail required="true" className="col-span-12 sm:col-span-6 md:col-span-3 w-full"
                    defaultValue={data?.native_province_id ? data?.native_province_id : nativeProvinceId} 
                    label="native_province" refItem={[component, "native_province_id"]} 
                    data={needles?.province} titleKey={"name_fa"}
                    onChange={(e) => filterCity(e)}
                />
                <SelectTail required="true" className="col-span-12 sm:col-span-6 md:col-span-3 w-full" label="native_city" 
                    refItem={[component, "native_city_id"]} 
                    data={nativeProvinceId > 0 ? needles?.city?.filter(item => item.province_id == nativeProvinceId) : needles?.city} 
                    titleKey={"name_fa"}
                />
                <Input className="col-span-12 sm:col-span-6 md:col-span-3 w-full" dir="ltr" label="postal_code" refItem={[component, "postal_code"]} />
                
                <SelectLocation 
                    classNameProvince="col-span-12 sm:col-span-6 md:col-span-3 w-full"
                    classNameCitySh="col-span-12 sm:col-span-6 md:col-span-3 w-full"
                    classNameCity="col-span-12 sm:col-span-6 md:col-span-3 w-full"
                    classNameVillage="col-span-12 sm:col-span-6 md:col-span-3 w-full"
                    lProvince="life_province"
                    lCitySh="life_city_sh"
                    lCity="life_city"
                    lVillage="life_village"
                    needles={needles} component={component} data={data} 
                />
                
                <hr className="col-span-12 my-6 border-t-4 border-gray-300 shadow-lg font-bold" />
                
                {inputsData.map((input) => (
                    <>
                        <CheckBox
                            onChange={(e) => toggleInput(input.name, e)}
                            className="col-span-12 sm:col-span-6 md:col-span-3 w-full"
                            label={input.label}
                            name={Lang("public.has")}
                            refItem={[component, `has_${input.name}`]}
                        />
                        <Input
                            disabled={data?.["has_" + input.name] == 1 ? false : disabledInputs[input.name]}
                            dir="ltr"
                            className="col-span-12 sm:col-span-6 md:col-span-3 w-full"
                            label={input.label}
                            refItem={[component, input.name]}
                        />
                    </>
                ))}
                
                <hr className="col-span-12 my-6 border-t-4 border-gray-300 shadow-lg font-bold" />
                <Textarea label="address" refItem={[component, "address"]} className="col-span-12 sm:col-span-6 w-full" />
                
                <Dropzone className="col-span-12 sm:col-span-12 w-full" required="true" refItem={[component, "photo"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl + "/"} uploadDir={uploadDir} />
                <Radio className="col-span-12 sm:col-span-6 w-full" defaultValue={data?.gender_id ? data?.gender_id : 1} required="true" type="col" label="gender" id="gender_id" refItem={[component, `gender_id`]} data={needles?.gender} titleKey={"title_" + local} key={"gender_id" + data?.gender_id} />
                
                {access && <>
                    <Radio className="col-span-12 sm:col-span-6 w-full" defaultValue={data?.status_id ? data?.status_id : 1} 
                        type="col" label="account_status" refItem={[component, `status_id`]}
                        data={needles?.status?.filter(item => item.group_id == 1)} 
                        valueKey="code" titleKey={"title_" + local} required="true"
                        key={"status_id" + data?.status_id}
                    /> 
                    <Radio className="col-span-12 sm:col-span-6 w-full" defaultValue={data?.work_status ? data?.work_status : 1} 
                        type="col" label="work_status" refItem={[component, `work_status`]}
                        data={needles?.status?.filter(item => item.group_id == 33)} required="true"
                        valueKey="code" titleKey={"title_" + local}  
                        key={"work_status" + data?.work_status}
                    /> 
                    <SetStars defaultValue={data?.level_id || 0} component={component} />
                </>}
            </TabPanel>

            <TabPanel id="tab-second">
                <Repeat needles={needles} {...otherProps3} child={InfoPromotions} parent={component} />
            </TabPanel>

            <TabPanel id="tab-third">
                <Repeat needles={needles} {...otherProps} child={CulturalUsers} parent={component} />
            </TabPanel>

            <TabPanel id="tab-fourth">
                {user?.role_id == 1 && <>
                    <Repeat {...otherProps2} child={Notes} parent={component} />
                </>}
            </TabPanel>
        </TabBody>
    </Tab>
</Frame>

                    </>}
                <ButtonContainer>
                    <Button label="save" onClick={saveItem} component={component} />
                    <Button label="back" onClick={back} />
                </ButtonContainer>
            </>
    );
}