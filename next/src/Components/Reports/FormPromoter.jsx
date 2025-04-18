"use client";
import { useEffect, useState, useRef } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Loading, Repeat, Toast } from "@/Theme/Midone/Utils";
import { useData, useFormRefs, Input, Button, ButtonContainer, Frame, Radio, SelectTail, Box } from "@/Theme/Midone/Forms";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";
import { useRouter, useSearchParams } from "next/navigation";
import { Course } from "./Course";
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import { Tribune } from "./Tribune";
import { Ritual } from "./Ritual";
import { Select } from "@/Theme/Midone/Forms/Select";
import { useAuth } from "@/lib";

export function FormPromoter({ id,promoter,access }) {
   
    const link = "/reports";
    const { Lang, local } = useLang();
    const { laraAdmin, nextAdmin } = useConfig();
    const router = useRouter();
    const searchParams = useSearchParams();
    // const promotion = searchParams.get("promotion");
    const component = useFormRefs();
    const { save, get, getNeedles } = useData();
    const [needles, setNeedles] = useState();
    const fetchNeedlesRef = useRef(false);
    const fetchDataRef = useRef(false);

    const uploadUrl = laraAdmin + "/upload/.-media-reports";
    const deleteUrl = laraAdmin + "/deleteFile/.-media-reports";
    const uploadDir = "media/reports/";

    const url = id != 0 && id != undefined ? `${laraAdmin}${link}/${id}` : `${laraAdmin}${link}`;
    const method = id != 0 && id != undefined ? "edit" : "new";
    const nextUrl = access ? "/reports" : "/myReports";

    useEffect(() => {
        getNeedles(`${laraAdmin}/reports/get-needles`, setNeedles);
        get(`${laraAdmin}/get-report`, component, "oldReport");

        if (id != 0 && id != undefined) {
            get(url, component, "info");
        }
    }, [id, url]);


    const saveItem = () => {
        
        const refsData = component?.state?.refs?.current;
        const cSubjects = refsData?.c_subject_0?.value;
        const tSubjects = refsData?.tr_subject_0?.value;
        const rSubjects = refsData?.r_ritual_id_0?.value;

        const hasValidValue = [...cSubjects, ...tSubjects, ...rSubjects].some(value => value?.trim() !== '');

        if (!hasValidValue) {
            Toast.error('لطفاً حداقل یکی از موارد دوره، منبر، یا شعائر را وارد نمایید!', Lang('public.dear_user'), 3000);
            return;
        }
        
        save(url, component, method, nextUrl);
    };

    const back = () => router.back();
    

    const otherProps = component?.state?.info?.courses?.length
        ? { count_data: component.state.info.courses.length }
        : {};
    const otherProps2 = component?.state?.info?.tribunes?.length
        ? { count_data: component.state.info.tribunes.length }
        : {};
    const otherProps3 = component?.state?.info?.ritual_reports?.length
        ? { count_data: component.state.info.ritual_reports.length }
        : {};

       
    // گرفتن مقادیر پیش‌فرض برای promoter و promotion
    const data = component?.state?.info;
    const promoterReport = component?.state?.oldReport?.oldReport;
    const defaultPromoterId = promoter;
    const defaultPromotionId = method == "new" ? component?.state?.oldReport?.promotion : data?.promotion_id;
    return (
        <>
            {(promoterReport != undefined && promoterReport?.id != null) ?
                <Box cols={"cols-12"}>
                    <div className="alert alert-primary-soft show">
                        <div className="font-medium text-lg">{Lang('you_reported')}</div>
                        <ButtonContainer >
                            <a className="btn btn-primary" href={`${nextAdmin}/reports/${promoterReport?.id}`}>{Lang('public.view')}</a>
                        </ButtonContainer>
                    </div>
                </Box>
                : <>
                    {(data == undefined || needles == null || (defaultPromotionId == undefined)) ?
                        <Loading />
                        : <>
                            <Frame title={Lang(["public.reports"])}>
                                <Tab className="col-span-12">
                                    <TabHeader>
                                        <TabList href="tab-second" title={Lang("public.courses")} active={"true"} items={[component, ['c_subject_*', 'c_people_count_*', 'c_duration_*', 'c_province_*', 'c_city_id_*', 'c_city_*', 'c_village_*']]} />
                                        <TabList href="tab-third" title={Lang("public.tribunes")} items={[component, ['tr_subject_*', 'tr_people_count_*', 'tr_duration_*', 'tr_province_*', 'tr_city_id_*', 'tr_city_*', 'tr_village_*']]} />
                                        <TabList href="tab-fourth" title={Lang("public.ritual")} items={[component, ['r_province_*', 'r_city_id_*', 'r_city_*', 'r_village_*', 'r_ritual_id_*']]} />
                                        <TabList href="tab-media" title={Lang("public.media")} />
                                    </TabHeader>
                                    <TabBody>
                                        <TabPanel id="tab-media">
                                            <Dropzone className="col-span-6" refItem={[component, "photos"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl + "/"} />
                                            <Dropzone className="col-span-6" refItem={[component, "videos"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl + "/"} />
                                        </TabPanel>
                                        <TabPanel id="tab-first">
                                        <Input type="hidden" defaultValue="-1" refItem={[component, `confirm_id`]} />
                                                    <Input type="hidden" defaultValue={defaultPromoterId} refItem={[component, `promoter_id`]} />
                                                    <Input type="hidden" defaultValue={defaultPromotionId} refItem={[component, `promotion_id`]} />
                                            
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
                                </Tab>
                            </Frame>
                            <ButtonContainer>
                                <Button label="save" onClick={saveItem} component={component} />
                                <Button label="back" onClick={back} />
                            </ButtonContainer>
                        </>
                    }
                </>
            }
        </>
    );
}
