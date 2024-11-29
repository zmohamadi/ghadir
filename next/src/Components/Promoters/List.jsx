"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData } from "@/Theme/Midone/Utils/Data";
import { Grid, Frame, FeatherIcon, Pic } from "@/Theme/Midone/Utils";
import Link from "next/link";
import { ButtonContainer } from "@/Theme/Midone";

export function List({panel="admin", access=true , query=""}) {
    const {Lang, local} = useLang();
    const {mediaPath, laraAdmin, nextAdmin} = useConfig();
    const {destroy} = useData();

    const formUrl = nextAdmin + "/promoters";

    const renderStars = (level) => {
        if (level === undefined || level === 0) {
            level = 0; // Default value
        }

        const stars = [];
        for (let i = 1; i <= 5; i++) {
            stars.push(
                <span
                    key={i}
                    style={{
                        color: i <= level ? "#FFD700" : "#e4e5e9",
                        fontSize: "18px",
                        // marginRight: "0px",
                    }}
                >
                    {i <= level ? "★" : "☆"}
                </span>
            );
        }
        return stars;
    };


    let info = {
        insertLink: formUrl + "/new",
        perPage: 20,
        url: laraAdmin + "/promoters",
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
            ...(access ? [
                {label: "", jsx: (item) =>(<span>{renderStars(item?.level_id)}</span> )},
                {label: "last_login", field: "last_login"},
            ] : []),
            {label: "gender", sort:false, field: "gender.title_" + local},
            {label: "status", jsx: (item) => <span className={"rounded-full py-1 px-2 text-white bg-" + item?.active_status?.color}>{item?.active_status?.["title_" + local]}</span>},
            { label: "created_at", field: "created_at" },
            
            
            {label: "", sort:false, 
                jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Edit" url={formUrl + "/" + item?.id + "/edit"} tooltip={Lang('public.edit')} />
                        <FeatherIcon name="Lock" url={nextAdmin + "/change-password/" + item?.id} tooltip={Lang('public.change_password')} />
                        <FeatherIcon name="Eye" url={formUrl + "/" + item?.id} tooltip={Lang('public.view')} />
                        <FeatherIcon name="XOctagon" tooltip={Lang('public.delete')} color="darkred" onClick={() => destroy(laraAdmin + "/promoters" + "/" + item?.id)} />
                    </div>
                </> 
            }, 
        ],
    }

    return (
        <>
            <Frame title={Lang(["public.promoters"])}>
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                </div>
            </Frame>
        </>
    );
}
