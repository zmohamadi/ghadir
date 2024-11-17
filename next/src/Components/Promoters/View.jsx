"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useAuth } from "@/lib/auth";
import { useRouter, usePathname } from 'next/navigation';
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import { Button, ButtonContainer, Frame, useData, useFormRefs } from "@/Theme/Midone";
import Link from "next/link";

export function View({ id, panel = "admin" }) {
    const { Lang,local } = useLang();
    const { laraAdmin,nextAdmin } = useConfig();
    const { get,getNeedles } = useData();
    let [needles, setNeedles] = useState();
    const router = useRouter();
    const { user } = useAuth();

    let url = `${laraAdmin}/promoters/${id}`;

    let component = useFormRefs();
    useEffect(() => {
        getNeedles(laraAdmin+'/promoters/get-needles', setNeedles);
        get(url, component, "info");
    }, []);
    const data = component?.state?.info;
    const back = () => router.back();

    // console.log(data);
    // console.log(needles);

    if (!data) return <div>Loading...</div>;

    return (
        <>
            <Frame title={Lang(["public.promoter"])}>
                <Tab className="col-span-12">
                    <TabHeader>
                        <TabList href="tab-first" title={Lang('public.personal_info')} active={"true"}>{Lang("public.personal_info")}</TabList>
                        <TabList href="tab-second" title={Lang('public.promotion_info')}>{Lang("public.promotion_info")}</TabList>
                        <TabList href="tab-third" title={Lang('public.cultural_users')}>{Lang("public.cultural_users")}</TabList>
                        {user?.role_id == 1 && <TabList href="tab-fourth" title={Lang('public.notes')}>{Lang("public.notes")}</TabList>}
                        <TabList href="tab-fifth" title={Lang('public.reports')}>{Lang("public.reports")}</TabList>
                        <TabList href="tab-sixth" title={Lang('public.promotions')}>{Lang("public.promotions")}</TabList>
                        <TabList href="tab-seventh" title={Lang('public.supports')}>{Lang("public.supports")}</TabList>
                    </TabHeader>
                    <TabBody>
                        <TabPanel id="tab-first" active={"true"}>
                            <div className="col-span-12 space-y-4">
                                <div className="flex gap-4">
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.name")}</label>
                                        <div className="p-2 border rounded">{data?.firstname}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.family")}</label>
                                        <div className="p-2 border rounded">{data?.lastname}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.mobile")}</label>
                                        <div className="p-2 border rounded">{data?.mobile}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.codemeli")}</label>
                                        <div className="p-2 border rounded">{data?.codemeli}</div>
                                    </div>
                                </div>

                                <div className="flex gap-4">
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.bank_account_number")}</label>
                                        <div className="p-2 border rounded">{data?.bank_account_number}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.education")}</label>
                                        <div className="p-2 border rounded">{data?.education?.title}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.province")}</label>
                                        <div className="p-2 border rounded">
                                             {
                                                    data?.city_user?.province_id
                                                        ? needles?.province?.find(item => item.id === data?.city_user?.province_id)?.["name_fa"]
                                                        : "-"
                                                }
                                           </div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.city_sh")}</label>
                                        <div className="p-2 border rounded">{data?.city_user?.["name_fa"]}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.city")}</label>
                                        <div className="p-2 border rounded">{data?.city}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.village")}</label>
                                        <div className="p-2 border rounded">{data?.village}</div>
                                    </div>
                                </div>

                                <div className="w-full">
                                    <label className="block">{Lang("public.address")}</label>
                                    <div className="p-2 border rounded">{data?.address}</div>
                                </div>
                                <div className="flex gap-4">
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.khadamat_code")}</label>
                                        <div className="p-2 border rounded">{data?.khadamat_code}</div>
                                    </div>
                                    
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.tablighat_office_code")}</label>
                                        <div className="p-2 border rounded">{data?.tablighat_office_code}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.tablighat_organization_code")}</label>
                                        <div className="p-2 border rounded">{data?.tablighat_organization_code}</div>
                                    </div>
                                    <div className="w-1/4">
                                        <label className="block">{Lang("public.ovghaf_code")}</label>
                                        <div className="p-2 border rounded">{data?.ovghaf_code}</div>
                                    </div>
                                </div>
                            </div>
                        </TabPanel>

                        <TabPanel id="tab-second">
                                {/* نمایش اطلاعات تبلیغاتی */}
                                {data?.promotion_infos?.map((info, index) => (
                                    <div key={index} className="col-span-12 space-y-4 grid grid-cols-1 border-b-2">
                                       
                                        {/* Promotion Position */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{Lang('promotion_position')} {index+1} :</span>
                                            <span>
                                                {
                                                    info?.position_id
                                                        ? needles?.promotionposition?.find(item => item.id === info.position_id)?.[`title`]
                                                        : "-"
                                                }
                                            </span>
                                        </div>

                                        {/* Place Name */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{Lang('place_name')}:</span>
                                            <span>{info?.place_name || "-"}</span>
                                        </div>

                                        {/* Province */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{Lang('province')}:</span>
                                            <span>
                                                {
                                                    info?.province_id
                                                        ? needles?.province?.find(item => item.id === info.province_id)?.["name_fa"]
                                                        : "-"
                                                }
                                            </span>
                                        </div>

                                        {/* City */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{Lang('city_sh')}:</span>
                                            <span>
                                                {
                                                    info?.city_id
                                                        ? needles?.city?.find(item => item.id === info.city_id)?.["name_fa"]
                                                        : "-"
                                                }
                                            </span>
                                        </div>

                                        {/* City (Text input) */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{Lang('city')}:</span>
                                            <span>{info?.city || "-"}</span>
                                        </div>

                                        {/* Village */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{Lang('village')}:</span>
                                            <span>{info?.village || "-"}</span>
                                        </div>

                                
                                    </div>
                                ))}
                        </TabPanel>

                        <TabPanel id="tab-third">
                                {/* نمایش کاربران فرهنگی */}
                                {data?.cultural_users?.map((culturalUser, index) => (
                                    <div key={index} className="col-span-12 space-y-4 grid grid-cols-1 border-b-2 pb-2">
                                        {/* Name */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{index+1} - {Lang('name')}: </span>
                                            <span>{culturalUser?.name || "-"}</span>
                                        </div>

                                        {/* Family */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{Lang('family')}: </span>
                                            <span>{culturalUser?.family || "-"}</span>
                                        </div>

                                        {/* Job Position */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{Lang('job_position')}: </span>
                                            <span>{culturalUser?.job_position || "-"}</span>
                                        </div>

                                        {/* Phone */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{Lang('phone')}: </span>
                                            <span>{culturalUser?.phone || "-"}</span>
                                        </div>

                                        {/* Description */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium  ml-1">{Lang('description')}: </span>
                                            <span>{culturalUser?.comments || "-"}</span>
                                        </div>

                                        {/* Gender */}
                                        <div className="flex items-center space-x-2">
                                            <span className="font-medium ml-1">{Lang('gender')}: </span>
                                            <span>
                                                {
                                                    culturalUser?.gender_id
                                                        ? needles?.gender?.find(gender => gender.id === culturalUser.gender_id)?.[`title_${local}`]
                                                        : "-"
                                                }
                                            </span>
                                        </div>

                                       
                                    </div>
                                ))}
                        </TabPanel>

                        <TabPanel id="tab-fourth">
                            {/* بخش یادداشت‌ها */}
                            {data?.notes?.map((note, index) => (
                                <div key={index} className="col-span-12 space-y-4 grid grid-cols-1">
                                    <div className="flex">
                                        <span className="font-medium ml-1"> {Lang('public.note')} {index+1} : </span>
                                        <span> {note?.content || "-"} </span>
                                    </div>
                                </div>
                            ))}
                        </TabPanel>
                        <TabPanel id="tab-fifth">
                            fifth
                        </TabPanel>
                        <TabPanel id="tab-sixth">
                            sixth
                        </TabPanel>
                        <TabPanel id="tab-seventh">
                            {data?.supports?.map((support, index) => (
                                    <div key={index} className="col-span-12 space-y-4 grid grid-cols-1">
                                        <div className="flex">
                                            <span className="font-medium ml-1"> {Lang('public.support')} {index+1} : </span>
                                            <Link className="border-b-2 border-blue-500" href={nextAdmin+"/support/"+support?.id}> <span> {support?.promotion?.title || "-"} ({Lang('public.view')}) </span> </Link>
                                        </div>
                                    </div>
                                ))}
                        </TabPanel>
                    </TabBody>
                </Tab>
            </Frame>
        </>
    );
}
