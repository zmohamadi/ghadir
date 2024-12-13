"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import { useAuth } from "@/lib/auth";
import Link from "next/link";
import { useSearchParams } from "next/navigation";

export function List(){
    const {user} = useAuth();
    let query = user?.role_id == 2 &&`promoter=${user?.id}`;
    const access = user?.role_id == 1 ?  true : false;
    const {Lang} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy} = useData();
    const urlParams = useSearchParams()
    const  promotion = urlParams.get('promotion') || null;

    access==true && promotion!= null ? query = "promotion="+promotion : query;

    const formUrl = nextAdmin+"/supports";
    const url = laraAdmin+"/supports?"+query;

    let info = {
        insertLink: access ? `${formUrl}/new` : "",
        // insertLink: `${formUrl}/new`,
        perPage:20,
        url: url,
        columns: [
            // {
            //     label: "",
            //     jsx: (item) => (
            //         <Pic 
            //             src={mediaPath + "/promotions/" +item?. promotion?.photo} 
            //             defaultImg={`${mediaPath}/public/default/avatar.png`} 
            //             classImg="user-avatar" 
            //             key={"img" + item?.promotion?.photo} 
            //         />
            //     ),
            // },
           
            {
                label: "promotion",
                jsx: (item) => (
                    <Link href={`${formUrl}/${item.id}`}>
                        {`${item?.promotion?.title}-${item?.promotion?.year}`}
                    </Link>
                ),
            },
            {label: "type", field: "type.title" },
            {label: "amount", field: "amount" },
            {label: "pack_items", field: "pack_items" },
            { label: "created_at", field: "created_at" },
            {label: "", sort:false, 
                jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon access={access} name="Edit" url={formUrl+"/"+item?.id+"/edit"} tooltip={Lang('public.edit')} />
                        {/* <FeatherIcon access={access} name="Users" url={formUrl+"/"+item?.id+"/promoters"} tooltip={Lang('public.promoters')} /> */}
                        <FeatherIcon name="Eye" url={formUrl+"/"+item?.id} tooltip={Lang('public.view')} />
                        <FeatherIcon access={access} name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={()=>destroy(laraAdmin+"/supports"+"/"+item?.id)} />
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