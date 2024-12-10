"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { Box, CheckBox, Frame, Loading, useData, useFormRefs } from "@/Theme/Midone";

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
            <Frame title={Lang(["public.agree"])}>
                <Box>
                <div className="col-span-12 space-y-4">
                    <div className="flex gap-4">
                        <div className="w-1/3">
                            <label className="block">{Lang("public.promotion")} :</label>
                            <div className="p-2">{promotion?.title} - {promotion?.year}</div>
                        </div>
                        <div className="w-1/3">
                            <label className="block">{Lang("public.name")} {Lang("public.promoter")} :</label>
                            <div className="p-2">{promoter?.firstname} {promoter?.lastname} - {promoter?.mobile}</div>
                        </div>
                        <ul className="list-disc list-inside ml-5 text-gray-600">
                            {data?.has_course == 1 && (
                                <li>{Lang("public.course")}</li>
                            )}
                            {data?.has_tribune == 1 && (
                                <li>{Lang("public.tribune")}</li>
                            )}
                            {data?.rituals?.length > 0 &&
                                data.rituals.map((ritual, ritualIndex) => (
                                    <li key={ritualIndex}>{ritual?.title}</li>
                                ))}
                        </ul>
                    </div>
                </div>
                </Box>
            </Frame>
        </>
    );
}
