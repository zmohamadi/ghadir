"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useAuth } from "@/lib/auth";
import { Loading, Repeat } from "@/Theme/Midone/Utils";
import { useData,useFormRefs,Input,Button,ButtonContainer,Textarea,Frame,Radio } from "@/Theme/Midone/Forms";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";
import { CulturalUsers } from "./CulturalUsers";
import { useRouter } from 'next/navigation';
import { Notes } from "./Notes";
import { InfoPromotions } from "./InfoPromotions";
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import { SelectLocation } from "../Public/SelectLocation";
import { Notif } from "./Notif";
import { Select } from "@/Theme/Midone/Forms/Select";

export function Form({id,panel,access}){
    const link = "/promoters";
    const {Lang, local} = useLang();
    const {laraAdmin} = useConfig();
    const router = useRouter();
    let component = useFormRefs();
    let {save, get, getNeedles} = useData();
    let [needles, setNeedles] = useState();
    const {user} = useAuth();
    
    let uploadUrl = laraAdmin+"/upload/.-media-users";
    let deleteUrl = laraAdmin+"/deleteFile/.-media-users";
    let uploadDir = 'media/users/';
    
    // اگر روت پروفایل باشد، از user.id استفاده می‌شود
    let finalId = panel=="admin" ? user?.id : id;
    let url = laraAdmin + link;
    let method = "new";
    let nextUrl = panel!="admin" ? link : "/";

    
    if (finalId !== 0 && finalId !== undefined) {
        url = `${laraAdmin + link}/${finalId}`;
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
    
    const [starRating, setStarRating] = useState(data?.level_id || 0);

    const renderStars = (level) => {
        if (level == undefined || level == 0) {
            level = data?.level_id || 0;
        }

        const stars = [];
        for (let i = 1; i <= 5; i++) {
            stars.push(
                <span
                    key={i}
                    style={{
                        color: i <= level ? "#FFD700" : "#e4e5e9",
                        fontSize: "20px",
                        marginRight: "5px",
                        cursor: "pointer",
                    }}
                    onClick={() => handleStarClick(i)}
                >
                    {i <= level ? "★" : "☆"}
                </span>
            );
        }
        return stars;
    };
    


    const handleStarClick = (rating) => {
        setStarRating(rating);
    };

    console.log(data?.is_not_citizen);

    return(
        
            <>
                <Frame title={Lang(["public.promoter"])}>
                {(data==undefined || needles==null)?
                    <Loading className="mt-5" />
                :<>
                    <Tab className="col-span-12">
                        <TabHeader>
                            <TabList href="tab-first" title={Lang('public.personal_info')} active={"true"}>{Lang("public.personal_info")}</TabList>
                            <TabList href="tab-second" title={Lang('public.promotion_info')}>{Lang("public.promotion_info")}</TabList>
                            <TabList href="tab-third" title={Lang('public.cultural_users')}>{Lang("public.cultural_users")}</TabList>
                            {user?.role_id==1 &&<>
                                <TabList href="tab-fourth" title={Lang('public.notes')}>{Lang("public.notes")}</TabList>
                                <TabList href="tab-notif" title={Lang('public.notif')}>{Lang("public.notif")}</TabList>
                            </>
                            }
                        </TabHeader>
                        <TabBody>
                            <TabPanel id="tab-first" active={"true"}>
                                <Input  className="col-span-4" label="name" refItem={[component, "firstname"]} required="true" />
                                <Input  className="col-span-4" label="family" refItem={[component, "lastname"]} required="true" />
                                <Input dir="ltr" className="col-span-4" label="mobile" refItem={[component, "mobile"]} required="true" />
                                <Select key={"is_not_citizen"+2} 
                                    defaultValue={data?.is_not_citizen == false ? 0 : 1} 
                                className="col-span-4" label="citizen" refItem={[component, "is_not_citizen"]} 
                                >
                                    <option value="0">{Lang('public.im_citizen')}</option>
                                    <option value="1">{Lang('public.not_citizen')}</option>
                                </Select>
                                <Input dir="ltr" className="col-span-4" label="codemeli" refItem={[component, "codemeli"]} />
                                <Input className="col-span-4" dir="ltr" label="khadamat_code" refItem={[component, "khadamat_code"]}  />
                                <Input className="col-span-4" dir="ltr" label="tablighat_office_code" refItem={[component, "tablighat_office_code"]} />
                                <Input className="col-span-4" dir="ltr" label="tablighat_organization_code" refItem={[component, "tablighat_organization_code"]} />
                                <Input className="col-span-4" dir="ltr" label="ovghaf_code" refItem={[component, "ovghaf_code"]}  />
                                <Input className="col-span-4" dir="ltr" label="bank_account_number" refItem={[component, "bank_account_number"]} required="true" />
                                <Select className="col-span-4" label="education" data={needles?.education}  refItem={[component, "education_id"]} required="true" />
                                <SelectLocation 
                                    classNameProvince="col-span-4" 
                                    classNameCitySh="col-span-3"
                                    classNameCity="col-span-3"
                                    classNameVillage="col-span-3"
                                    needles={needles} component={component} data={data} />
                               
                                
                                <Input className="col-span-3" dir="ltr" label="postal_code" refItem={[component, "postal_code"]}  />

                                <Textarea label="address" refItem={[component, "address"]}  />
                                <Dropzone refItem={[component, "photo"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl+"/"} uploadDir={uploadDir}  />

                                <Radio className="col-span-4" defaultValue={data?.gender_id ? data?.gender_id: 1} required="true"  type="col" label="gender" id="gender_id" refItem={[component, `gender_id`]}
                                    data={needles?.gender} titleKey={"title_"+local}  key={"gender_id"+data?.gender_id}
                                />
                                
                                {
                                     user?.role_id==1 && <>
                                        <Input type="hidden" defaultValue={starRating} refItem={[component, `level_id`]}/>
                                        <div className="col-span-4">
                                                <label>{Lang("public.star")}</label>
                                                <div className="flex space-x-1">{renderStars(starRating)}</div>
                                            </div>
                                        <Radio className="col-span-4" defaultValue={data?.status_id ? data?.status_id: 1} 
                                            type="col" label="status" refItem={[component, `status_id`]}
                                            data={needles?.status?.filter(item => item.group_id == 1)} 
                                            valueKey="code" titleKey={"title_"+local}  
                                            key={"status_id"+data?.status_id}
                                        /> 
                                    </>
                                }
                            </TabPanel>  
                            <TabPanel id="tab-second">
                                <Repeat needles={needles} {...otherProps3} child={InfoPromotions} parent={component} />

                            </TabPanel>
                            <TabPanel id="tab-third">
                                <Repeat needles={needles} {...otherProps} child={CulturalUsers} parent={component} />
                            </TabPanel>
                            <TabPanel id="tab-fourth">
                                {
                                    user?.role_id==1 && <>
                                        <Repeat {...otherProps2} child={Notes} parent={component} />
                                    </>
                                }
                            </TabPanel>
                            <TabPanel id="tab-notif">
                                {
                                    user?.role_id==1 && <>
                                        <Repeat {...otherProps4} child={Notif} parent={component} />
                                    </>
                                }
                            </TabPanel>
                        </TabBody>
                    </Tab>
                    </>}
                </Frame>
                <ButtonContainer>
                    <Button label="save" onClick={saveItem} />
                    <Button label="back" onClick={back} />
                </ButtonContainer>
            </>
    );
}