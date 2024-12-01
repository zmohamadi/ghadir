"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { useAuth } from "@/lib/auth";
import { useData,useFormRefs,Input,Button,ButtonContainer,Box,Textarea,Frame, Radio, CheckBox } from "@/Theme/Midone/Forms";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";
import { CheckBoxGroup } from "@/Theme/Midone/Forms/CheckBoxGroup";
import { Loading } from "@/Theme/Midone";

export function Form({id,panel}){
    const link = "/promotions";
    const {Lang, local} = useLang();
    const {laraAdmin} = useConfig();
    const router = useRouter();
    let component = useFormRefs();
    let {save, get, getNeedles} = useData();
    let [needles, setNeedles] = useState();
    
    let uploadUrl = laraAdmin+"/upload/.-media-promotions";
    let deleteUrl = laraAdmin+"/deleteFile/.-media-promotions";
    let uploadDir = 'media/promotions/';
    
    let url = laraAdmin+link, method = "new";
    if(id != 0 && id != undefined) url = laraAdmin+link+"/"+id, method = "edit";

    useEffect(() => {
        getNeedles(laraAdmin+'/promotions/get-needles', setNeedles);
        if(id != 0 && id != undefined) get(url, component, "info");
    }, []);

    const saveItem = ()=>save(url, component, method, link);
    const back = ()=>router.back();
    const data = component?.state?.info;
// console.log(user?.role_id);
// console.log(needles);

    return(
        
            <>
                {/* <Frame title={Lang(["public.support"])}> */}
                    {/* <Box> */}
                    {(data==undefined || needles==null)?
                    <Loading  />
                :<>
                    <div className="pos intro-y grid grid-cols-12 gap-5 mt-5">
                        <div className="intro-y col-span-12 lg:col-span-8">
                            <Input label="title" refItem={[component, "title"]} required="true" />
                            <div className="post intro-y p-3 box mt-5 ">
                                <Input dir="ltr" label="year" refItem={[component, "year"]} required="true" />
                                <Textarea label="description" required="true" refItem={[component, "comments"]}  />
                                <Textarea label="commitments" refItem={[component, "commitments"]}  />
                                <Dropzone className="col-span-12" refItem={[component, "photo"]} required="true" uploadUrl={uploadUrl} deleteUrl={deleteUrl+"/"} uploadDir={uploadDir}  />

                        
                            </div>
                        </div>
                        <div className="col-span-12 lg:col-span-4">
                            <div className="intro-y box p-5">
                                <Radio className="mt-5 border-b-2" 
                                    type="col" label="register" 
                                    refItem={[component, `register_status`]}
                                    data={needles?.status?.filter(item => item.group_id == 11)} 
                                    valueKey="code" titleKey={"title_"+local}  
                                    key={"register_status"+data?.register_status}
                                />
                                <Radio className="mt-5 border-b-2"  defaultValue={data?.report_status} type="col" label="report" 
                                    
                                    refItem={[component, `report_status`]}
                                    data={needles?.status?.filter(item => item.group_id == 8)} valueKey="code" 
                                    titleKey={"title_"+local}  
                                    key={"report_status"+data?.report_status}
                                />
                                <CheckBox name={Lang('public.has')} className="mt-5" label={Lang('public.has_course')} 
                                refItem={[component, `has_course`]} />
                                <CheckBox name={Lang('public.has')} className="mt-5" label={Lang('public.has_tribune')} refItem={[component, `has_tribune`]} />
                                <CheckBoxGroup defaultValue={data?.rituals} className="mt-5 pt-5 border-t-2"  data={needles?.ritual} key={"ritual" + data?.ritual?.length} label={Lang('public.ritual')}  id="ritual" refItem={[component, `ritual`]} />
                                

                            </div>
                        </div>
                    </div></>}
                    {/* </Box>     */}
                {/* </Frame> */}
                <ButtonContainer>
                    <Button label="save" onClick={saveItem} />
                    <Button label="back" onClick={back} />
                </ButtonContainer>
            </>
    );
}