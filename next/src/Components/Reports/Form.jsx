"use client";
import { useEffect, useState, useRef } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useAuth } from "@/lib/auth";
import { Loading, Repeat } from "@/Theme/Midone/Utils";
import { useData, useFormRefs, Input, Button, ButtonContainer, Frame, Radio } from "@/Theme/Midone/Forms";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";
import { useRouter } from "next/navigation";
import { Course } from "./Course";
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import { Tribune } from "./Tribune";
import { Ritual } from "./Ritual";
import { Select } from "@/Theme/Midone/Forms/Select";

export function Form({ id, panel }) {
    const link = "/reports";
    const { Lang, local } = useLang();
    const { laraAdmin } = useConfig();
    const router = useRouter();
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
    const nextUrl = "/reports";
// console.log(panel);

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
            {(data==undefined || needles==null)?
                    <Loading />
                :<>
                <Tab className="col-span-12">
                    <TabHeader>
                        <TabList href="tab-first" title={Lang("public.select_promotion")} active={"true"}>
                            {Lang("public.select_promotion")}
                        </TabList>
                        <TabList href="tab-second" title={Lang("public.courses")}>
                            {Lang("public.courses")}
                        </TabList>
                        <TabList href="tab-third" title={Lang("public.tribunes")}>
                            {Lang("public.tribunes")}
                        </TabList>
                        <TabList href="tab-fourth" title={Lang("public.ritual")}>
                            {Lang("public.ritual")}
                        </TabList>
                    </TabHeader>
                    <TabBody>
                        <TabPanel id="tab-first" active={"true"}>
                            <Select
                                label="promotion"
                                refItem={[component, "promotion_id"]}
                                required="true"
                                data={needles?.promotion}
                            />
                            <Dropzone refItem={[component, "photo"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl + "/"} uploadDir={uploadDir} />
                            {
                                panel=="admin" &&<>
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
                        <TabPanel id="tab-second">
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
