"use client";
import { useEffect } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Button, ButtonContainer, CheckBox, Input, useData, useFormRefs } from "@/Theme/Midone/Forms";
import { Loading, Pic } from "@/Theme/Midone";
import { Frame } from "@/Theme/Midone/Forms";
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import Link from "next/link";
import { useRouter } from 'next/navigation';
import { CheckBoxGroup } from "@/Theme/Midone/Forms/CheckBoxGroup";
import { useAuth } from "@/lib";

export function View({id}) {
    const {user} = useAuth();
    const access = user?.role_id == 1 ?  true : false;
    const { Lang, local } = useLang();
    const { laraAdmin, mediaPath,nextAdmin } = useConfig();
    const { save,get } = useData();
    let url = `${laraAdmin}/promotions/${id}`;
    const router = useRouter();

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
    const back = ()=>router.back();
    const saveItem = ()=>save(`${laraAdmin}/agree`, component, "new", `/promotions`);

    let agree ="";
    let report ="";
    agree = component?.state?.info?.agrees?.[0];
    report = component?.state?.info?.reports?.[0];
    // console.log(agree);
    // console.log(data?.register_status);

    return (<>
        <Frame title={data?.title || Lang(["public.promotion_details"])}>
        {((data==undefined))?
                    <Loading  />
                :<>
            <Input type="hidden" defaultValue={id} refItem={[component, "promotion_id"]} />
            <Tab className="col-span-12">
                <TabHeader>
                    <TabList href="tab-first" title={Lang('public.promotion_details')} active={"true"}>{Lang("public.promotion_details")}</TabList>
                    {access&&<>
                        <TabList href="tab-second" title={Lang(['public.agree'])+"("+data?.agrees?.length+")"}/>
                        <TabList href="tab-third" title={Lang(['public.reports'])+"("+data?.reports?.length+")"}/>
                        <TabList href="tab-fourth" title={Lang(['public.supports'])+"("+data?.supports?.length+")"}/>
                    </>}
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
                                {/* Title */}
                                <div>
                                    <p className="text-sm text-gray-500">{Lang(["public.title"])}</p>
                                    <h2 className="text-lg font-medium text-gray-700">{data?.title || "-"}</h2>
                                </div>
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
                            
                                    {access || (data?.register_status !== 1) ? (
                                        // اگر پنل ادمین باشد یا ثبت‌نام بسته باشد
                                        <>
                                        {data?.rituals?.length>0&&
                                            <div className="lg:col-span-2">
                                                <p className="text-sm text-gray-500">{Lang(["public.ritual"])}</p>
                                                <ul className="list-disc list-inside text-gray-700">
                                                    {data?.rituals?.length
                                                        ? data?.rituals.map((ritual, index) => (
                                                            <li key={index}>{ritual[`title`]}</li>
                                                        ))
                                                        : ""}
                                                </ul>
                                            </div>
                                            }
                                        </>
                                    ) : (
                                        // اگر پنل ادمین نباشد و ثبت‌نام باز باشد
                                        <>
                                            {data?.register_status == 1 ? (
                                                <div className="lg:col-span-2">
                                                    <CheckBoxGroup
                                                        defaultValue={agree?.rituals}
                                                      data={data?.rituals} key={"ritual" + data?.rituals?.length} label={Lang('public.ritual')}  id="ritual" refItem={[component, `agree_ritual`]} /></div>

                                            ) : (
                                                <>{data?.rituals?.length>0 &&
                                                    <div className="lg:col-span-2">
                                                        <p className="text-sm text-gray-500">{Lang(["public.ritual"])}</p>
                                                        <ul className="list-disc list-inside text-gray-700">
                                                            {data?.rituals?.length
                                                                ? data?.rituals.map((ritual, index) => (
                                                                    <li key={index}>{ritual[`title`]}</li>
                                                                ))
                                                                : ""}
                                                        </ul>
                                                    </div>
                                                }</>
                                            )}
                                        </>
                                    )}
                               
                            
                                {/* Register Status */}
                                {/* <div className="flex justify-between"> */}
                                    
                                <div className="lg:col-span-2">
                                {access || (data?.has_course && data?.register_status !== 1) ? (
                                            // اگر پنل ادمین باشد یا ثبت‌نام بسته باشد
                                            <>
                                                <p className="text-sm text-gray-500">{Lang(["public.has_course"])}</p>
                                                <h2 className="text-lg font-medium text-gray-700">
                                                    {data?.has_course ? Lang(["public.yes"]) : Lang(["public.no"])}
                                                </h2>
                                            </>
                                        ) : (
                                            // اگر پنل ادمین نباشد و ثبت‌نام باز باشد
                                            <>
                                                {data?.has_course && data?.register_status == 1 ? (
                                                    <CheckBox 
                                                        name={Lang("public.ready")} 
                                                        className="mt-5" 
                                                        label={Lang("public.holding_course")} 
                                                        refItem={[component, "agree_has_course"]}
                                                        defaultValue={agree?.has_course}
                                                    />
                                                ) : (
                                                    <>
                                                        <p className="text-sm text-gray-500">{Lang(["public.has_course"])}</p>
                                                        <h2 className="text-lg font-medium text-gray-700">
                                                            {data?.has_course ? Lang(["public.yes"]) : Lang(["public.no"])}
                                                        </h2>
                                                    </>
                                                )}
                                            </>
                                        )}
                                </div>
                                    <div className="lg:col-span-2">
                                    {access || (data?.has_tribune && data?.register_status !== 1) ? (
                                            // اگر پنل ادمین باشد یا ثبت‌نام بسته باشد
                                            <>
                                                <p className="text-sm text-gray-500">{Lang(["public.has_tribune"])}</p>
                                                <h2 className="text-lg font-medium text-gray-700">
                                                    {data?.has_tribune ? Lang(["public.yes"]) : Lang(["public.no"])}
                                                </h2>
                                            </>
                                        ) : (
                                            // اگر پنل ادمین نباشد و ثبت‌نام باز باشد
                                            <>
                                                {data?.has_tribune && data?.register_status == 1 ? (
                                                    <CheckBox 
                                                        name={Lang("public.ready")} 
                                                        className="mt-5" 
                                                        label={Lang("public.holding_tribune")} 
                                                        refItem={[component, "agree_has_tribune"]} 
                                                        defaultValue={agree?.has_tribune}

                                                    />
                                                ) : (
                                                    <>
                                                        <p className="text-sm text-gray-500">{Lang(["public.has_tribune"])}</p>
                                                        <h2 className="text-lg font-medium text-gray-700">
                                                            {data?.has_tribune ? Lang(["public.yes"]) : Lang(["public.no"])}
                                                        </h2>
                                                    </>
                                                )}
                                            </>
                                        )}
                                    </div>
                                    {
                                        access &&<>
                                            <div className="lg:col-span-2">

                                            <p className="text-sm text-gray-500">{Lang(["public.register_status"])} : </p>
                                            <h2 className="text-lg font-medium text-gray-700">
                                                {data?.register_status == 1 ? Lang(["public.open"]) : Lang(["public.close"])}
                                            </h2>
                                        </div>
                                        <div className="lg:col-span-2">

                                            <p className="text-sm text-gray-500">{Lang(["public.report_status"])} : </p>
                                            <h2 className="text-lg font-medium text-gray-700">
                                                {data?.report_status ==1 ? Lang(["public.open"]) : Lang(["public.close"])}
                                            </h2>
                                        </div>
                                        </>
                                    }

                                {/* </div> */}
                            </div>
                        </div>
                    </TabPanel>

                    {/* Tab 2: Promoters */}
                    <TabPanel id="tab-second">
                        <div className="col-span-12">
                            {data?.agrees?.length ? (
                                <ul className="">
                                    {data.agrees.map((agree, index) => (
                                        <li className="border-b-2 pb-2 mb-2" key={index}>
                                            <Link href={`${nextAdmin}/agrees/${agree.id}`} className="text-blue-600">
                                                
                                                    {index + 1}. {agree?.promoter?.firstname} {agree?.promoter?.lastname} 
                                                    <span className="p-1 m-1">( {Lang("public.created_at")} : {agree?.created_at} )</span>
                                            </Link>
                                            <ul className="list-disc list-inside ml-5 text-gray-600">
                                                {agree?.has_course == 1 && (
                                                    <li>{Lang("public.course")}</li>
                                                )}
                                                {agree?.has_tribune == 1 && (
                                                    <li>{Lang("public.tribune")}</li>
                                                )}
                                                {agree?.rituals?.length > 0 &&
                                                    agree.rituals.map((ritual, ritualIndex) => (
                                                        <li key={ritualIndex}>{ritual?.title}</li>
                                                    ))}
                                            </ul>
                                        </li>
                                    ))}
                                </ul>
                            ) : (
                               ""
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
                                                {index + 1}.{report?.promoter?.firstname} {report?.promoter?.lastname} ({Lang('public.view')} {Lang('public.report')})
                                            </Link>
                                        </li>
                                    ))}
                                </ul>
                            ) : (
                                ""
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
                                                {index + 1}. {support?.type?.title} | {support?.amount} | <Link href={`${nextAdmin}/supports/${support.id}`} className="text-blue-600">
                                                ({Lang('public.view')} {Lang('public.support')})
                                            </Link>
                                                {support?.promoters?.map((promoter, i) => (
                                                    <ul className="pr-7" key={i}>
                                                        <li> {i + 1}.
                                                        {/* {i > 0 && ", "} */}
                                                        {promoter.firstname} {promoter.lastname} - {promoter.mobile}
                                                        </li>
                                                    </ul>
                                                ))}
                                            
                                        </li>
                                    ))}
                                </ul>
                            ) : (
                                ""
                            )}
                        </div>

                    </TabPanel>
                </TabBody>
            </Tab>
            </>}
        </Frame>
        <ButtonContainer>
            {
                !access &&<>
                    {!agree && data?.register_status == 1 && <Button label="register" onClick={saveItem} component={component} />}
                    {!report && data?.report_status == 1 && <Link className="btn btn-primary" href={`${nextAdmin}/reports/new?promotion=${id}`}>{Lang('public.report')}</Link>}
                </>
            }
            <Button label="back" onClick={back} />
        </ButtonContainer>
        
    </>
        
    );
}
