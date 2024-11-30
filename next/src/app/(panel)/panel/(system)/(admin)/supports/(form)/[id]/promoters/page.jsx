"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import Link from "next/link";
import { ButtonContainer } from "@/Theme/Midone";

export default function List({params}){
    const {Lang, local} = useLang();
    const {mediaPath,laraAdmin,nextAdmin} = useConfig();
    const {destroy} = useData();
    let support= params?.id ;
    const formUrl = nextAdmin+"/supports/"+support+"/promoters";

    let info = {
        insertLink: formUrl + "/new",
        perPage:20,
        url: laraAdmin+"/promoters/in-support/"+support,
        columns: [
            {
                label: "",
                jsx: (item) => (
                    <Pic 
                        src={mediaPath + "/users/" + item?.photo} 
                        defaultImg={`${mediaPath}/public/default/avatar.png`} 
                        classImg="user-avatar rounded-full" 
                        key={"img" + item?.photo} 
                    />
                ),
            },
            {
                label: "name", 
                jsx: (item) => <Link href={`${formUrl}/${item.id}`}>{item?.firstname + " " + item?.lastname}</Link>,
            },
            {label: "mobile", field: "mobile" },
            // {label: "gender", sort:false, field: "gender.title_"+local},
            // {label: "status", jsx: (item)=><span className={"rounded-full py-1 px-2  text-white bg-"+item?.active_status?.color}>{item?.active_status?.["title_"+local]}</span>},
           

            
            // {label: "", sort:false, 
            //     jsx:(item)=><>
            //         <div className='flex justify-center '>
            //             <FeatherIcon name="Edit" url={formUrl+"/"+item?.id+"/edit"} tooltip={Lang('public.edit')} />
            //             {/* <FeatherIcon name="Lock" url={nextAdmin+"/changePassword/"+item?.id} tooltip={Lang('public.change_password')} /> */}
            //             {/* <FeatherIcon name="Eye" url={formUrl+"/"+item?.id} tooltip={Lang('public.view')} /> */}
            //             <FeatherIcon name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={()=>destroy(laraAdmin+"/promoters"+"/"+item?.id)} />
            //         </div>
            //     </>
            // }, 
        ],
    }

    return(
        <>
            <Frame title={Lang(["public.promoters"])}>
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                   
                </div>
            </Frame>
        </>
    );
}