"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import Link from "next/link";
import { ButtonContainer } from "@/Theme/Midone";

export default function List(){
    const {Lang, local} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy} = useData();

    const formUrl = nextAdmin+"/supports";

    let info = {
        insertLink: formUrl + "/new",
        perPage:20,
        url: laraAdmin+"/supports",
        columns: [
           
            {label: "type", field: "type.title" },
            {label: "promotion", field: "promotion.title" },
            {label: "amount", field: "amount" },
            {label: "pack_items", field: "pack_items" },
            {label: "", sort:false, 
                jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Edit" url={formUrl+"/"+item?.id+"/edit"} tooltip={Lang('public.edit')} />
                        {/* <FeatherIcon name="Lock" url={nextAdmin+"/changePassword/"+item?.id} tooltip={Lang('public.change_password')} /> */}
                        {/* <FeatherIcon name="Eye" url={formUrl+"/"+item?.id} tooltip={Lang('public.view')} /> */}
                        <FeatherIcon name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={()=>destroy(laraAdmin+"/supports"+"/"+item?.id)} />
                    </div>
                </>
            }, 
        ],
    }

    return(
        <>
            <Frame title={Lang(["public.supports"])}>
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                   
                </div>
            </Frame>
        </>
    );
}