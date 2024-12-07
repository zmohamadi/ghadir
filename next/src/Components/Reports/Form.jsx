"use client";
import { useEffect, useState, useRef } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Loading, Repeat } from "@/Theme/Midone/Utils";
import { useData, useFormRefs, Input, Button, ButtonContainer, Frame, Radio, SelectTail } from "@/Theme/Midone/Forms";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";
import { useRouter, useSearchParams } from "next/navigation";
import { Course } from "./Course";
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import { Tribune } from "./Tribune";
import { Ritual } from "./Ritual";
import { Select } from "@/Theme/Midone/Forms/Select";
import { useAuth } from "@/lib";

export function Form({ id}) {
    const {user} = useAuth();
    const access = user?.role_id == 1 ?  true : false;
    const link = "/reports";
    const { Lang, local } = useLang();
    const { laraAdmin } = useConfig();
    const router = useRouter();
    const searchParams = useSearchParams();
    const promotion = searchParams.get("promotion"); // گرفتن id از Query Parameters
    const component = useFormRefs();
    const { save, get, getNeedles } = useData();
    const [needles, setNeedles] = useState();
    const fetchNeedlesRef = useRef(false); // جلوگیری از درخواست‌های تکراری
    const fetchDataRef = useRef(false); // جلوگیری از درخواست‌های تکراری

    const uploadUrl = laraAdmin + "/upload/.-media-reports";
    const deleteUrl = laraAdmin + "/deleteFile/.-media-reports";
    const uploadDir = "media/reports/";

    const url = id != 0 && id != undefined ? `${laraAdmin}${link}/${id}` : `${laraAdmin}${link}`;
    const method = id != 0 && id != undefined ? "edit" : "new";
    const nextUrl = access  ? "/reports" : "/myReports";

    useEffect(() => {
        if (!fetchNeedlesRef.current) {
            fetchNeedlesRef.current = true;
            getNeedles(`${laraAdmin}/reports/get-needles`, setNeedles);
        }

        if (id != 0 && id != undefined && !fetchDataRef.current) {
            fetchDataRef.current = true;
            get(url, component, "info");
        }
    }, [id, url]);

    const saveItem = () => save(url, component, method, nextUrl);
    const back = () => router.back();
    const data = component?.state?.info;

    const otherProps = component?.state?.info?.courses?.length
        ? { count_data: component.state.info.courses.length }
        : {};
    const otherProps2 = component?.state?.info?.tribunes?.length
        ? { count_data: component.state.info.tribunes.length }
        : {};
    const otherProps3 = component?.state?.info?.ritual_reports?.length
        ? { count_data: component.state.info.ritual_reports.length }
        : {};
    return (
        <>
            <Frame title={Lang(["public.promoter"])}>
                {/* <Input label="promoter_id" type="hidden" defaultValue={access ? data?.promoter_id : promoter} refItem={[component, `promoter_id`]} />  */}

            {(data==undefined || needles==null)?
                    <Loading />
                :<>
                <Tab className="col-span-12">
                    <TabHeader>
                        
                        
                        <TabList href="tab-second" title={Lang("public.courses")}   active={"true"} 
                            items = {[component, ['c_subject_*','c_people_count_*','c_duration_*','c_province_*','c_city_id_*', 
                            'c_city_*','c_village_*']]} />
                        <TabList href="tab-third" title={Lang("public.tribunes")}  
                            items = {[component, ['tr_subject_*','tr_people_count_*','tr_duration_*','tr_province_*','tr_city_id_*', 
                            'tr_city_*','tr_village_*']]} />
                        <TabList href="tab-fourth" title={Lang("public.ritual")}
                            items = {[component, ['r_province_*','r_city_id_*','r_city_*','r_village_*','ritual_id_*']]} />
                        <TabList href="tab-media" title={Lang("public.media")}
                        />
                        {
                            access && <TabList href="tab-first" title={Lang("public.select_promotion")}
                                        items = {[component, ['promoter_id','promotion_id']]} />
                        }
                    </TabHeader>
                    <TabBody>
                        <TabPanel id="tab-media" >
                            <Dropzone className="col-span-6"  refItem={[component, "photos"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl+"/"} />
                            <Dropzone className="col-span-6"  refItem={[component, "videos"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl+"/"} />
                        </TabPanel>
                        <TabPanel id="tab-first" >
                            <SelectTail label="promoter" refItem={[component, "promoter_id"]}>
                                {
                                    needles?.promoter
                                        ?.filter((item) => {
                                            // اگر access وجود نداشته باشد، فقط user.id نمایش داده شود
                                            return access || item.id == user?.id;
                                        })
                                        ?.map((item, index) => (
                                            <option key={"p_" + index} value={item?.id}>
                                                {item?.firstname} {item?.lastname} - {item?.mobile} 
                                            </option>
                                        ))
                                }
                            </SelectTail>
                            <Select
                                label="promotion"
                                refItem={[component, "promotion_id"]}
                                defaultValue={promotion?promotion:data?.promotion_id}
                                data={needles?.promotion?.filter((item) => 
                                    item.report_status == 1 && (!promotion || item?.id == promotion) // اجرای دو فیلتر در یک خط
                                )}
                            />

                            {
                                access &&<>
                                <Input label="score" refItem={[component, `level_id`]} /> 
                                <Radio
                                    type="col" 
                                    label="confirm_status" 
                                    refItem={[component, `confirm_id`]}
                                    data={needles?.status?.filter(item => item.group_id == 28)}
                                    valueKey="code" titleKey={"title_"+local}  
                                    key={"confirm_id"+data?.confirm_id}
                                    /> 
                                </>
                                }

                        </TabPanel>
                        <TabPanel id="tab-second" active={"true"}>
                            <Repeat needles={needles} {...otherProps} child={Course} parent={component} />
                        </TabPanel>
                        <TabPanel id="tab-third">
                            <Repeat needles={needles} {...otherProps2} child={Tribune} parent={component} />
                        </TabPanel>
                        <TabPanel id="tab-fourth">
                            <Repeat needles={needles} {...otherProps3} child={Ritual} parent={component} />
                        </TabPanel>
                    </TabBody>
                </Tab> </>}
            </Frame>
            <ButtonContainer>
                <Button label="save" onClick={saveItem} />
                <Button label="back" onClick={back} />
            </ButtonContainer>
        </>
    );
}
