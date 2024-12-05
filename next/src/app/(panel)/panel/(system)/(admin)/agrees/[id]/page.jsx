"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { Box, Frame, Loading, useData, useFormRefs } from "@/Theme/Midone";

export default function page({params}){

    const id = params?.id;
    const { Lang,local } = useLang();
    const { laraAdmin } = useConfig();
    const { get,getNeedles } = useData();
    let [needles, setNeedles] = useState();
    const router = useRouter();

    let url = `${laraAdmin}/agree/${id}`;

    let component = useFormRefs();
    useEffect(() => {
        getNeedles(laraAdmin+'/agree/get-needles', setNeedles);
        get(url, component, "info");
    }, []);
    const data = component?.state?.info;
    const promoter = component?.state?.info?.promoter;
    const promotion = component?.state?.info?.promotion;
    const back = () => router.back();

    if (!data) return <Loading />;

    return (
        <>
            <Frame title={Lang(["public.course"])}>
                <Box>
                <div className="col-span-12 space-y-4">
                    <div className="flex gap-4">
                        <div className="w-1/3">
                            <label className="block">{Lang("public.promotion")}</label>
                            <div className="p-2 border rounded">{promotion?.title} - {promotion?.year}</div>
                        </div>
                        <div className="w-1/3">
                            <label className="block">{Lang("public.name")} {Lang("public.promoter")}</label>
                            <div className="p-2 border rounded">{promoter?.firstname} {promoter?.lastname} - {promoter?.mobile}</div>
                        </div>
                        <div className="w-1/3">
                            <label className="block">{Lang("public.subject")} {Lang("public.course")}</label>
                            <div className="p-2 border rounded">{data?.subject}</div>
                        </div>
                    </div>

                    <div className="flex gap-4">
                       
                        <div className="w-1/4">
                            <label className="block">{Lang("public.province")}</label>
                            <div className="p-2 border rounded">
                                    {
                                        data?.city_user?.province_id
                                            ? needles?.province?.find(item => item.id == data?.city_user?.province_id)?.["name_fa"]
                                            : "-"
                                    }
                                </div>
                        </div>
                        <div className="w-1/4">
                            <label className="block">{Lang("public.city_sh")}</label>
                            <div className="p-2 border rounded">{data?.city_sh?.["name_fa"]}</div>
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

                    <div className="flex gap-4">
                        <div className="w-1/4">
                            <label className="block">{Lang("public.duration")}</label>
                            <div className="p-2 border rounded">{data?.duration}</div>
                        </div>
                        <div className="w-1/4">
                            <label className="block">{Lang("public.people_count")}</label>
                            <div className="p-2 border rounded">{data?.people_count}</div>
                        </div>
                        
                        <div className="w-1/4">
                            <label className="block">{Lang("public.place_name")}</label>
                            <div className="p-2 border rounded">{data?.place_name}</div>
                        </div>
                        <div className="w-1/4">
                            <label className="block">{Lang("public.audiencetype")}</label>
                            <div className="p-2 border rounded">{data?.audience_type?.title}</div>
                        </div>
                       
                    </div>
                </div>
                </Box>
            </Frame>
        </>
    );
}
