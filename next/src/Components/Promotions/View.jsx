"use client";
import { useEffect } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData, useFormRefs } from "@/Theme/Midone/Forms";
import { Pic } from "@/Theme/Midone";
import { Frame } from "@/Theme/Midone/Forms";
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import Link from "next/link";

export function View({ id }) {
    const { Lang, local } = useLang();
    const { laraAdmin, mediaPath,nextAdmin } = useConfig();
    const { get } = useData();
    let url = `${laraAdmin}/promotions/${id}`;

    let component = useFormRefs();
    useEffect(() => {
        get(url, component, "info");
    }, []);
    const data = component?.state?.info;

    if (!data) {
        return (
            <div className="flex items-center justify-center h-screen">
                <div className="text-lg text-gray-500">Loading...</div>
            </div>
        );
    }

    return (
        <Frame title={data?.title || Lang(["public.promotion_details"])}>
            <Tab className="col-span-12">
                <TabHeader>
                    <TabList href="tab-first" title={Lang('public.promotion_details')} active={"true"}>{Lang("public.promotion_details")}</TabList>
                    <TabList href="tab-second" title={Lang('public.promoters')}>{Lang("public.promoters")}</TabList>
                    <TabList href="tab-third" title={Lang('public.reports')}>{Lang("public.reports")}</TabList>
                    <TabList href="tab-fourth" title={Lang('public.supports')}>{Lang("public.supports")}</TabList>
                </TabHeader>
                <TabBody>
                    <TabPanel id="tab-first" active={"true"}>
                        <div className="col-span-12">
                            <div>
                                <Pic
                                    src={mediaPath + "/promotions/" + data?.photo}
                                    defaultImg={`${mediaPath}/public/default/avatar.png`}
                                    className="rounded-md border"
                                    key={"img" + data?.photo}
                                />
                            </div>
                            <div className="grid grid-cols-1 lg:grid-cols-2 gap-4 mt-4">
                                {/* Year */}
                                <div>
                                    <p className="text-sm text-gray-500">{Lang(["public.year"])}</p>
                                    <h2 className="text-lg font-medium text-gray-700">{data?.year || "-"}</h2>
                                </div>

                                {/* Description */}
                                <div className="lg:col-span-2">
                                    <p className="text-sm text-gray-500">{Lang(["public.description"])}</p>
                                    <p className="text-gray-700">{data?.comments || "-"}</p>
                                </div>

                                {/* Commitments */}
                                <div className="lg:col-span-2">
                                    <p className="text-sm text-gray-500">{Lang(["public.commitments"])}</p>
                                    <p className="text-gray-700">{data?.commitments || "-"}</p>
                                </div>
                            {/* Ritual */}
                            <div className="lg:col-span-2">
                                    <p className="text-sm text-gray-500">{Lang(["public.ritual"])}</p>
                                    <ul className="list-disc list-inside text-gray-700">
                                        {data?.ritual?.length
                                            ? data?.ritual.map((ritual, index) => (
                                                <li key={index}>{ritual[`title_${local}`]}</li>
                                            ))
                                            : <li>{Lang(["public.no_data"])}</li>}
                                    </ul>
                                </div>
                                {/* Register Status */}
                                <div className="flex justify-between">
                                    <div>
                                        <p className="text-sm text-gray-500">{Lang(["public.register_status"])} : </p>
                                        <h2 className="text-lg font-medium text-gray-700">
                                            {data?.register_status ? Lang(["public.open"]) : Lang(["public.close"])}
                                        </h2>
                                    </div>
                                    <div>
                                        <p className="text-sm text-gray-500">{Lang(["public.report_status"])} : </p>
                                        <h2 className="text-lg font-medium text-gray-700">
                                            {data?.report_status ? Lang(["public.open"]) : Lang(["public.close"])}
                                        </h2>
                                    </div>
                                    <div>
                                        <p className="text-sm text-gray-500">{Lang(["public.has_course"])}</p>
                                        <h2 className="text-lg font-medium text-gray-700">
                                            {data?.has_course ? Lang(["public.yes"]) : Lang(["public.no"])}
                                        </h2>
                                    </div>
                                    <div>
                                        <p className="text-sm text-gray-500">{Lang(["public.has_tribune"])}</p>
                                        <h2 className="text-lg font-medium text-gray-700">
                                            {data?.has_tribune ? Lang(["public.yes"]) : Lang(["public.no"])}
                                        </h2>
                                    </div>
                                </div>


                                
                             
                            </div>
                        </div>
                    </TabPanel>

                    {/* Tab 2: Promoters */}
                    <TabPanel id="tab-second">
                        <div className="col-span-12">
                            {data?.agrees?.length ? (
                                <ul className="list-disc list-inside">
                                    {data?.agrees.map((agree, index) => (
                                        <li key={index}>
                                            <Link href={`${nextAdmin}/register/${agree?.id}`} className="text-blue-600">
                                            {index + 1}.{agree?.firstname} {agree?.lastname}
                                            </Link>
                                        </li>
                                    ))}
                                </ul>
                            ) : (
                                <p>{Lang(["public.no_data"])}</p>
                            )}
                        </div>
                    </TabPanel>

                    {/* Tab 3: Reports */}
                    <TabPanel id="tab-third">
                        <div className="col-span-12">
                            {data?.reports?.length ? (
                                <ul className="list-disc list-inside">
                                    {data?.reports.map((report, index) => (
                                        <li key={index}>
                                            <Link href={`${nextAdmin}/reports/${report.id}`} className="text-blue-600">
                                            {index + 1}.{report?.firstname} {report?.lastname}
                                            </Link>
                                        </li>
                                    ))}
                                </ul>
                            ) : (
                                <p>{Lang(["public.no_data"])}</p>
                            )}
                        </div>
                    </TabPanel>

                    {/* Tab 4: Supports */}
                    <TabPanel id="tab-fourth">
                        <div className="col-span-12">
                            {data?.supports?.length ? (
                                <ul className="list-disc list-inside">
                                    {data?.supports.map((support, index) => (
                                        <li key={index}>
                                            <Link href={`${nextAdmin}/supports/${support.id}`} className="text-blue-600">
                                            {index + 1}.{support?.type?.title}
                                            </Link>
                                        </li>
                                    ))}
                                </ul>
                            ) : (
                                <p>{Lang(["public.no_data"])}</p>
                            )}
                        </div>
                    </TabPanel>
                </TabBody>
            </Tab>
        </Frame>
    );
}
