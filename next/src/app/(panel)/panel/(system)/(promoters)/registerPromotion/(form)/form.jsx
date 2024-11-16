"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useAuth } from "@/lib/auth";
import { Loading, Repeat } from "@/Theme/Midone/Utils";
import { useData,useFormRefs,Input,Button,ButtonContainer,Box,CheckBox,Textarea,Frame,Radio } from "@/Theme/Midone/Forms";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";
import { useRouter } from 'next/navigation';
import { Course } from "./Course";
import { Tab, TabBody, TabHeader, TabList, TabPanel } from "@/Theme/Midone/Forms/Tab";
import { Tribune } from "./Tribune";
import { Ritual } from "./Ritual";

export default function Form({id,panel="admin"}){
    const link = "/register-promoters";
    const {Lang, local} = useLang();
    const {laraAdmin} = useConfig();
    const router = useRouter();
    let component = useFormRefs();
    let {save, get, getNeedles} = useData();
    let [needles, setNeedles] = useState();
    const {user} = useAuth();
    
    let uploadUrl = laraAdmin+"/upload/.-media-register_promotions";
    let deleteUrl = laraAdmin+"/deleteFile/.-media-register_promotions";
    let uploadDir = 'media/register_promotions/';
        
    let url = laraAdmin + link;
    let method = "new";
    let nextUrl = link;

    useEffect(() => {
        getNeedles(laraAdmin+'/register-promoters/get-needles', setNeedles);
        get(url, component, "info");
    }, [url]);

    const saveItem = ()=>save(url, component, method, nextUrl);
    const back = ()=>router.back();
    const data = component?.state?.info;

    const otherProps = (component?.state?.info?.cultural_users?.length)? { count_data: component.state.info.cultural_users.length } : {};
    const otherProps2 = (component?.state?.info?.notes?.length)? { count_data: component.state.info.notes.length } : {};
    const otherProps3 = (component?.state?.info?.promotion_infos?.length)? { count_data: component.state.info.promotion_infos.length } : {};


    return(
        
            <>
                <Frame title={Lang(["public.promoter"])}>
                    <Tab className="col-span-12">
                        <TabHeader>
                            <TabList href="tab-first" title={Lang('public.select_promotion')} active={"true"}>{Lang("public.select_promotion")}</TabList>
                            <TabList href="tab-second" title={Lang('public.courses')}>{Lang("public.courses")}</TabList>
                            <TabList href="tab-third" title={Lang('public.tribunes')}>{Lang("public.tribunes")}</TabList>
                            <TabList href="tab-fourth" title={Lang('public.ritual')}>{Lang("public.ritual")}</TabList>
                        </TabHeader>
                        <TabBody>
                            <TabPanel id="tab-first" active={"true"}>
                                
                                <SelectTail label="promotions" data={needles?.promotion}  refItem={[component, "promotion_id"]} required="true" />
                                
                                <Dropzone refItem={[component, "photo"]} uploadUrl={uploadUrl} deleteUrl={deleteUrl+"/"} uploadDir={uploadDir}  />
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
                    </Tab>
                </Frame>
                <ButtonContainer>
                    <Button label="save" onClick={saveItem} />
                    <Button label="back" onClick={back} />
                </ButtonContainer>
            </>
    );
}