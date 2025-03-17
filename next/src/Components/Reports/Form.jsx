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

export function Form({ id , access=true }) {
    const link = "/reports";
    const { Lang, local } = useLang();
    const { laraAdmin, nextAdmin } = useConfig();
    const router = useRouter();
    const searchParams = useSearchParams();
    const promotion = searchParams.get("promotion");
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
        if (!fetchNeedlesRef.current) {
            fetchNeedlesRef.current = true;
            getNeedles(`${laraAdmin}/reports/get-needles`, setNeedles);
        }

        if (id != 0 && id != undefined && !fetchDataRef.current) {
            fetchDataRef.current = true;
            get(url, component, "info");
        }
    }, [id, url]);

    const saveItem = () => {
       
        save(url, component, method, nextUrl);
    };

    const back = () => router.back();
    
    const data = component?.state?.info;
    const oldReport = component?.state?.oldReport;

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
    const defaultPromoterId =data?.promoter_id;
    const defaultPromotionId = promotion;

    // // const [totalScore, setTotalScore] = useState(data?.level_id ? data?.level_id :   0);
    // const [totalScore, setTotalScore] = useState(0);
    // const [courseScore, setCourseScore] = useState(0);
    // const [tribuneScore, setTribuneScore] = useState(0);
    // const [ritualScore, setRitualScore] = useState(0);

    // // تابع برای آپدیت امتیاز کل
    // const updateTotalScore = () => {
    //     setTotalScore(courseScore + tribuneScore + ritualScore);
    // };

    // useEffect(() => {
    //     updateTotalScore();
    // }, [courseScore, tribuneScore, ritualScore]);



    return (
        <>
            
            {(data == undefined || needles == null) ?
                <Loading />
                : <>
                    <Frame title={Lang(["public.reports"])}>
                        <Tab className="col-span-12">
                            <TabHeader>
                                <TabList href="tab-second" title={Lang("public.courses")} active={"true"} items={[component, ['c_subject_*', 'c_people_count_*', 'c_duration_*', 'c_province_*', 'c_city_id_*', 'c_city_*', 'c_village_*']]} />
                                <TabList href="tab-third" title={Lang("public.tribunes")} items={[component, ['tr_subject_*', 'tr_people_count_*', 'tr_duration_*', 'tr_province_*', 'tr_city_id_*', 'tr_city_*', 'tr_village_*']]} />
                                <TabList href="tab-fourth" title={Lang("public.ritual")} items={[component, ['r_province_*', 'r_city_id_*', 'r_city_*', 'r_village_*', 'r_ritual_id_*']]} />
                                <TabList href="tab-media" title={Lang("public.media")} />
                                <TabList href="tab-first" title={Lang("public.select_promotion")} items={[component, ['promoter_id', 'promotion_id', 'confirm_id', 'level_id']]} />
                            </TabHeader>
                            <TabBody>
                                <TabPanel id="tab-media">
                                    <Dropzone className="col-span-6" refItem={[component, "photos"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl + "/"} />
                                    <Dropzone className="col-span-6" refItem={[component, "videos"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl + "/"} />
                                </TabPanel>
                                <TabPanel id="tab-first">
                                    {method == "new" ?
                                        <>
                                            <SelectTail label="promoter" refItem={[component, "promoter_id"]}>
                                                {
                                                    needles?.promoter
                                                        ?.filter((item) => {
                                                            return access || item.id == user?.id;
                                                        })
                                                        ?.map((item, index) => (
                                                            <option key={"p_" + index} value={item?.id}>
                                                                {item?.firstname} {item?.lastname} - {item?.mobile}
                                                            </option>
                                                        ))
                                                }
                                            </SelectTail>
                                            <SelectTail
                                                label="promotion"
                                                refItem={[component, "promotion_id"]}
                                                defaultValue={promotion ? promotion : data?.promotion_id}
                                                data={needles?.promotion?.filter((item) =>
                                                    (!promotion || item?.id == promotion)
                                                )}
                                            />
                                        </>
                                        :
                                        <>
                                            <Input type="hidden" defaultValue="-1" refItem={[component, `confirm_id`]} />
                                            <Input type="hidden" defaultValue={defaultPromoterId} refItem={[component, `promoter_id`]} />
                                            <Input type="hidden" defaultValue={defaultPromotionId} refItem={[component, `promotion_id`]} />
                                        </>
                                    }
                                    {/* <Input label="score" refItem={[component, `level_id`]} value={totalScore} readOnly /> */}
                                    <Input label="score" refItem={[component, `level_id`]} />
                                    <Radio
                                        type="col"
                                        label="confirm_status"
                                        defaultValue={data?.confirm_id}
                                        refItem={[component, `confirm_id`]}
                                        data={needles?.status?.filter(item => item.group_id == 28)}
                                        valueKey="code" titleKey={"title_" + local}
                                        key={"confirm_id" + data?.confirm_id}
                                    />
                                    
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
    );
}
