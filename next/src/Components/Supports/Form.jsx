"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useRouter } from 'next/navigation';
import { useData,useFormRefs,Input,Button,ButtonContainer,Box,Textarea,Frame } from "@/Theme/Midone/Forms";
import { SelectTail } from "@/Theme/Midone/Forms/SelectTail";
import { Loading } from "@/Theme/Midone";
import { Select } from "@/Theme/Midone/Forms/Select";

export function Form({id}){
    const link = "/supports";
    const {Lang} = useLang();
    const {laraAdmin} = useConfig();
    const router = useRouter();
    let component = useFormRefs();
    let {save, get, getNeedles} = useData();
    let [needles, setNeedles] = useState();
    
    let url = laraAdmin+link, method = "new";
    if(id != 0 && id != undefined) url = laraAdmin+link+"/"+id, method = "edit";

    useEffect(() => {
        getNeedles(laraAdmin+'/supports/get-needles', setNeedles);
        if(id != 0 && id != undefined) get(url, component, "info");
    }, []);

    const saveItem = ()=>save(url, component, method, link);
    const back = ()=>router.back();
    const data = component?.state?.info;

    return(
        
            <>
                <Frame title={Lang(["public.support"])}>
                    
                {(data==undefined || needles==null)?
                    <Loading  />
                :<>
                <Box>
                        <Select label="occasion" refItem={[component, "promotion_id"]} 
                            required="true"
                            data={needles?.promotion} 
                        />
                        <Select label="type" refItem={[component, "type_id"]} 
                            required="true"
                            data={needles?.supporttype} 
                        />
                        <Input label="amount_if" refItem={[component, "amount"]}  />

                        <SelectTail multiple={true} label="included_users" refItem={[component, "promoters"]} 
                        >
                            {
                                needles?.promoter?.map((item ,index)=>{
                                    return <option key={"p_"+index} value={item?.id}>{item?.firstname} {item?.lastname}</option>
                                })
                            }
                        </SelectTail>
                        <Textarea label="pack_items"  refItem={[component, "pack_items"]}  />
                        <Textarea label="description" required="true" refItem={[component, "description"]}  />
                    </Box>
                    </>}
                </Frame>
                <ButtonContainer>
                    <Button label="save" onClick={saveItem} />
                    <Button label="back" onClick={back} />
                </ButtonContainer>
            </>
    );
}