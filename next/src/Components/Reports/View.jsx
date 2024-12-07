"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import {Frame, Loading, Pic, useData, useFormRefs } from "@/Theme/Midone";

export function View({id }) {
    const { Lang } = useLang();
    const { laraAdmin,mediaPath  } = useConfig();
    const { get,getNeedles } = useData();
    let [needles, setNeedles] = useState();
    const router = useRouter();
    let url = `${laraAdmin}/reports/${id}`;
    let component = useFormRefs();
    useEffect(() => {
        getNeedles(laraAdmin+'/reports/get-needles', setNeedles);
        get(url, component, "info");
    }, []);
    const data = component?.state?.info;
    const back = () => router.back();

    if (!data) return <Loading />;
    const promotion = component?.state?.info?.promotion;

    const courses = component?.state?.info?.courses?.length
        ? component.state.info.courses: null;

    const tribunes = component?.state?.info?.tribunes?.length
        ? component.state.info.tribunes: null;

    const ritual_reports = component?.state?.info?.ritual_reports?.length
        ? component.state.info.ritual_reports: null;

    let images = (data?.photo)? data?.item?.photo?.split("###") : [];
    let videos = (data?.video)? data?.item?.video?.split("###") : [];

    return (
        <>
            <Frame title={Lang(["public.promoter"])}>
                <Tab className="col-span-12">
                    <TabHeader>
                        <TabList href="tab-first" title={Lang("public.promotion")} active={"true"} />
                        <TabList href="tab-second" title={Lang("public.courses")} />
                        <TabList href="tab-third" title={Lang("public.tribunes")} />
                        <TabList href="tab-fourth" title={Lang("public.ritual")} />
                        <TabList href="tab-media" title={Lang("public.media")} />
                    </TabHeader>
                    <TabBody>
                        <TabPanel id="tab-first" active={"true"}>
                            <div className="col-span-12 space-y-4">
                                
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
                                        <div className="p-2 border rounded">{info?.audience_type?.title}</div>
                                    </div>
                                    
                                </div>
                                <div className="w-full">
                                    <label className="block mb-2">{Lang("public.address")}</label>
                                    <div className="p-4 border rounded-lg bg-gray-50">
                                        <p className="text-sm text-gray-700">
                                            {
                                                info?.province_id && needles?.province?.find(item => item.id == info.province_id)
                                                    ? `${Lang('public.province')}: ${needles.province.find(item => item.id == info.province_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city_id && needles?.city?.find(item => item.id == info.city_id)
                                                    ? `${Lang('public.city_sh')}: ${needles.city.find(item => item.id == info.city_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city ? `${Lang('public.city')}: ${info.city} - ` : ""
                                            }
                                            {
                                                info?.village ? `${Lang('public.village')}: ${info.village} - ` : ""
                                            }
                                            {
                                                info?.place_name ? `${Lang('public.place_name')}: ${info.place_name}` : ""
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
                                        <div className="p-2 border rounded">{info?.audience_type?.title}</div>
                                    </div>
                                    
                                </div>
                                <div className="w-full">
                                    <label className="block mb-2">{Lang("public.address")}</label>
                                    <div className="p-4 border rounded-lg bg-gray-50">
                                        <p className="text-sm text-gray-700">
                                            {
                                                info?.province_id && needles?.province?.find(item => item.id == info.province_id)
                                                    ? `${Lang('public.province')}: ${needles.province.find(item => item.id == info.province_id)?.name_fa} -`
                                                    : ""
                                            }
                                            {
                                                info?.city_id && needles?.city?.find(item => item.id == info.city_id)
                                                    ? `${Lang('public.city_sh')}: ${needles.city.find(item => item.id == info.city_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city ? `${Lang('public.city')}: ${info.city} - ` : ""
                                            }
                                            {
                                                info?.village ? `${Lang('public.village')}: ${info.village} - ` : ""
                                            }
                                            {
                                                info?.place_name ? `${Lang('public.place_name')}: ${info.place_name}` : ""
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
                                        <div className="p-2 border rounded">{info?.ritual?.title}</div>
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
                                                info?.province_id && needles?.province?.find(item => item.id == info.province_id)
                                                    ? `${Lang('public.province')}: ${needles.province.find(item => item.id == info.province_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city_id && needles?.city?.find(item => item.id == info.city_id)
                                                    ? `${Lang('public.city_sh')}: ${needles.city.find(item => item.id == info.city_id)?.name_fa} - `
                                                    : ""
                                            }
                                            {
                                                info?.city ? `${Lang('public.city')}: ${info.city} - ` : ""
                                            }
                                            {
                                                info?.village ? `${Lang('public.village')}: ${info.village} -` : ""
                                            }
                                            {
                                                info?.place_name ? `${Lang('public.place_name')}: ${info.place_name}` : ""
                                            }
                                        </p>
                                    </div>
                                </div>

                                </div>
                                    </>
                                ))}
                        </TabPanel>
                        <TabPanel id="tab-media">
                            <div className="grid grid-cols-2 gap-4">
                                {images.map((img, index) => (
                                    <div className="flex" key={`img-${index}`}>
                                        <Pic
                                            src={`${mediaPath}/reports/${img}`}
                                            defaultImg={`${mediaPath}/public/default/avatar.png`}
                                            className="rounded-md border w-full"
                                        />
                                    </div>
                                ))}

                                {videos.map((video, index) => (
                                    <div className="flex" key={`video-${index}`}>
                                        <video
                                            controls
                                            className="w-full rounded-md border"
                                            src={`${mediaPath}/reports/${video}`}
                                        ></video>
                                    </div>
                                ))}
                            </div>

                        </TabPanel>
                    </TabBody>
                </Tab>
            </Frame>
        </>
    );
}
