"use client";
import { useEffect } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Frame, useData, useFormRefs } from "@/Theme/Midone/Forms";
import { Loading } from "@/Theme/Midone/Utils/Loading";

export function View({ id,panel,access }) {
    const { Lang } = useLang();
    const { laraAdmin } = useConfig();
    const { get } = useData();
    let url = `${laraAdmin}/supports/${id}`;

    let component = useFormRefs();
    useEffect(() => {
        get(url, component, "info");
    }, []);
    const data = component?.state?.info;

    if (!data) {
        return (
            <Loading />
        );
    }

    return (
        <Frame title={Lang(["public.support"])}>
            <div className="col-span-12">
                <div className="bg-white shadow-md rounded-lg p-6">
                    <div className="grid grid-cols-1 lg:grid-cols-2 gap-4">

                        {/* Occasion */}
                        <div>
                            <p className="text-sm text-gray-500">{Lang(["public.occasion"])}</p>
                            <h2 className="text-lg font-medium text-gray-700">{data?.promotion?.title || "-"}</h2>
                        </div>

                        {/* Type */}
                        <div>
                            <p className="text-sm text-gray-500">{Lang(["public.type"])}</p>
                            <h2 className="text-lg font-medium text-gray-700">{data?.type?.title || "-"}</h2>
                        </div>

                        {/* Amount */}
                        <div>
                            <p className="text-sm text-gray-500">{Lang(["public.amount_if"])}</p>
                            <h2 className="text-lg font-medium text-gray-700">{data?.amount || "-"}</h2>
                        </div>

                        {panel=="admin"&&<>
                            {/* Included Users */}
                            <div className="lg:col-span-2">
                                <p className="text-sm text-gray-500">{Lang(["public.included_users"])}</p>
                                <ul className="list-disc list-inside text-gray-700">
                                    {data?.promoters?.length
                                        ? data.promoters.map((user, index) => (
                                            <li key={index}>
                                                {user.firstname} {user.lastname}
                                            </li>
                                        ))
                                        : <li>{Lang(["public.no_data"])}</li>}
                                </ul>
                            </div>
                        </>}

                        {/* Pack Items */}
                        <div className="lg:col-span-2">
                            <p className="text-sm text-gray-500">{Lang(["public.pack_items"])}</p>
                            <p className="text-gray-700">{data?.pack_items || "-"}</p>
                        </div>

                        {/* Description */}
                        <div className="lg:col-span-2">
                            <p className="text-sm text-gray-500">{Lang(["public.description"])}</p>
                            <p className="text-gray-700">{data?.description || "-"}</p>
                        </div>
                    </div>
                </div>
            </div>
        </Frame>
    );
}
