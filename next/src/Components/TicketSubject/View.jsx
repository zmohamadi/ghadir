"use client";

import { useEffect } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from '@/lib/config';
import { useRouter } from 'next/navigation';
import { useData,useFormRefs,Box,Frame,Button,ButtonContainer } from "@/Theme/Midone/Forms";

export default function View({ id }){
    const {Lang,local} = useLang();
    const {laraAdmin} = useConfig();
    let component = useFormRefs();
    const router = useRouter();
    let {get} = useData();
    const laravelUrl = "/ticket-subjects"; 
    let url = laraAdmin+laravelUrl+"/"+id;

    useEffect(() => {
        get(url, component, "info");
    }, []);

    const back = ()=>router.back();

    let data = component?.state?.info;

    return(
        <>
            <Frame title={Lang("public.ticket_subjects")}>
                <Box cols="grid-cols-1">
                    <h2 className="intro-y font-medium text-xl sm:text-2xl">
                        {data?.['title_'+local]}
                    </h2>
                    <ul>
                        <li>
                            <h4>{Lang("public.creator_record")+" : "} : <span>{data?.creator?.firstname+" "+data?.creator?.lastname}</span></h4>
                        </li>
                        <li>
                            <h6>{Lang("public.created_at")+" : "}<span className="ltr">{data?.created_at}</span></h6>
                        </li>
                        <li>
                            <h4>{Lang("public.editor_record")+" : "}<span>{data?.editor?.firstname+" "+data?.editor?.lastname}</span></h4>
                        </li>
                        <li>
                            <h6>{Lang("public.edit")+" : "}<span className="ltr">{data?.updated_at}</span></h6>
                        </li>
                        <li>
                            <h4 className="font-bold">{Lang("public.status")+" : "}</h4>{data?.active_status?.["title_"+local]}
                        </li>
                    </ul>
                    <ButtonContainer>
                        <Button label="back" onClick={back} />
                    </ButtonContainer>
                </Box>
            </Frame>
        </>
    );
}