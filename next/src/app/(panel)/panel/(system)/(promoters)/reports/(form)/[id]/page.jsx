"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useAuth } from "@/lib/auth";
import { useRouter, usePathname } from 'next/navigation';
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import { Button, ButtonContainer, Frame, Pic, useData, useFormRefs } from "@/Theme/Midone";
import Link from "next/link";

export default function page({params }) {
    let id = params?.id
    const { Lang,local } = useLang();
    const { laraAdmin,nextAdmin,mediaPath  } = useConfig();
    const { get,getNeedles } = useData();
    let [needles, setNeedles] = useState();
    const router = useRouter();
    const { user } = useAuth();

    let url = `${laraAdmin}/reports/${id}`;

    let component = useFormRefs();
    useEffect(() => {
        getNeedles(laraAdmin+'/reports/get-needles', setNeedles);
        get(url, component, "info");
    }, []);
    const data = component?.state?.info;
    const back = () => router.back();

    // console.log(data);
    // console.log(needles);

    if (!data) return <div>Loading...</div>;
    const promotion = component?.state?.info?.promotion;

    const courses = component?.state?.info?.courses?.length
        ? component.state.info.courses: null;

    const tribunes = component?.state?.info?.tribunes?.length
        ? component.state.info.tribunes: null;

    const ritual_reports = component?.state?.info?.ritual_reports?.length
        ? component.state.info.ritual_reports: null;

    return (
        <>
            <Frame title={Lang(["public.promoter"])}>
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
                            <div className="col-span-12 space-y-4">
                                <div className="flex-full">
                                    <Pic
                                        src={mediaPath + "/reports/" + data?.photo}
                                        defaultImg={`${mediaPath}/public/default/avatar.png`}
                                        className="rounded-md border"
                                        key={"img" + data?.photo}
                                        label={Lang("public.you_send_photo")}
                                    />
                                </div>
                                <div className="flex gap-4">
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.promotion")}</label>
                                        <div className="p-2 border rounded">{promotion?.title}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.year")}</label>
                                        <div className="p-2 border rounded">{promotion?.year}</div>
                                    </div>
                                    
                                </div>
                            </div>
                        </TabPanel>

                        <TabPanel id="tab-second">
                            {courses?.map((info, index) => (
                                <>
                            
                                <div className="col-span-12 space-y-4">
                                <div className="flex gap-4">
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.subject")} {index+1}) </label>
                                        <div className="p-2 border rounded">{info?.subject}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.duration")}</label>
                                        <div className="p-2 border rounded">{info?.duration}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.people_count")}</label>
                                        <div className="p-2 border rounded">{info?.people_count}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.audiencetype")}</label>
                                        <div className="p-2 border rounded">{info?.audiencetype_id}</div>
                                    </div>
                                    
                                </div>
                                <div className="w-full">
                                    <label className="block mb-2">{Lang("public.address")}</label>
                                    <div className="p-4 border rounded-lg bg-gray-50">
                                        <p className="text-sm text-gray-700">
                                            {
                                                info?.province_id && needles?.province?.find(item => item.id === info.province_id)
                                                    ? `${Lang('public.province')}: ${needles.province.find(item => item.id === info.province_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city_id && needles?.city?.find(item => item.id === info.city_id)
                                                    ? `${Lang('public.city')}: ${needles.city.find(item => item.id === info.city_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city ? `${Lang('public.city')}: ${info.city} - ` : ""
                                            }
                                            {
                                                info?.village ? `${Lang('public.village')}: ${info.village}` : ""
                                            }
                                            {
                                                info?.place_name ? `${Lang('public.place')}: ${info.place_name}` : ""
                                            }
                                        </p>
                                    </div>
                                </div>

                                </div>
                                    </>
                                ))}
                        </TabPanel>

                        <TabPanel id="tab-third">
                            {tribunes?.map((info, index) => (
                                <>
                            
                                <div className="col-span-12 space-y-4">
                                <div className="flex gap-4">
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.subject")} {index+1}) </label>
                                        <div className="p-2 border rounded">{info?.subject}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.duration")}</label>
                                        <div className="p-2 border rounded">{info?.duration}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.people_count")}</label>
                                        <div className="p-2 border rounded">{info?.people_count}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.audiencetype")}</label>
                                        <div className="p-2 border rounded">{info?.audiencetype_id}</div>
                                    </div>
                                    
                                </div>
                                <div className="w-full">
                                    <label className="block mb-2">{Lang("public.address")}</label>
                                    <div className="p-4 border rounded-lg bg-gray-50">
                                        <p className="text-sm text-gray-700">
                                            {
                                                info?.province_id && needles?.province?.find(item => item.id === info.province_id)
                                                    ? `${Lang('public.province')}: ${needles.province.find(item => item.id === info.province_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city_id && needles?.city?.find(item => item.id === info.city_id)
                                                    ? `${Lang('public.city')}: ${needles.city.find(item => item.id === info.city_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city ? `${Lang('public.city')}: ${info.city} - ` : ""
                                            }
                                            {
                                                info?.village ? `${Lang('public.village')}: ${info.village}` : ""
                                            }
                                            {
                                                info?.place_name ? `${Lang('public.place')}: ${info.place_name}` : ""
                                            }
                                        </p>
                                    </div>
                                </div>

                                </div>
                                    </>
                                ))}
                        </TabPanel>

                        <TabPanel id="tab-fourth">
                            {ritual_reports?.map((info, index) => (
                                <>
                            
                                <div className="col-span-12 space-y-4">
                                <div className="flex gap-4">
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.ritual")}</label>
                                        <div className="p-2 border rounded">{info?.ritual_id}</div>
                                    </div>
                                </div>
                                <div className="w-full">
                                    <label className="block">{Lang("public.description")}</label>
                                    <div className="p-2 border rounded">{info?.description}</div>
                                </div>
                                <div className="w-full">
                                    <label className="block mb-2">{Lang("public.address")}</label>
                                    <div className="p-4 border rounded-lg bg-gray-50">
                                        <p className="text-sm text-gray-700">
                                            {
                                                info?.province_id && needles?.province?.find(item => item.id === info.province_id)
                                                    ? `${Lang('public.province')}: ${needles.province.find(item => item.id === info.province_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city_id && needles?.city?.find(item => item.id === info.city_id)
                                                    ? `${Lang('public.city')}: ${needles.city.find(item => item.id === info.city_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city ? `${Lang('public.city')}: ${info.city} - ` : ""
                                            }
                                            {
                                                info?.village ? `${Lang('public.village')}: ${info.village}` : ""
                                            }
                                            {
                                                info?.place_name ? `${Lang('public.place')}: ${info.place_name}` : ""
                                            }
                                        </p>
                                    </div>
                                </div>

                                </div>
                                    </>
                                ))}
                        </TabPanel>
                    </TabBody>
                </Tab>
            </Frame>
        </>
    );
}
