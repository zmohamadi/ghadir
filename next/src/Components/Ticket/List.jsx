"use client";

import { useEffect,useRef,useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid,useData,Frame,Tools,FeatherIcon,Pic } from "@/Theme/Midone/Utils";
import { Button,ButtonContainer,Input,Box } from "@/Theme/Midone/Forms";
import { Select } from "@/Theme/Midone/Forms/Select";

export function List({ access,query,formUrl }){
    const {local,Lang} = useLang();
    const { mediaPath,laraAdmin,nextAdmin } = useConfig();
    const {getNeedles} = useData();
    const laravelUrl = "/tickets"; 
    const formUrlNext = nextAdmin+"/"+formUrl;
    const [ needles, setNeedles ] = useState();
    const [ params, setParams ] = useState({ priorityStatus: "", replyStatus: "", subject:"", userInfo:"" });
    const [ url, setUrl ] = useState(`${laraAdmin}${laravelUrl}?${query}`);
    const effectRan = useRef(false);

    useEffect(() => {
        if (!effectRan.current) {
          getNeedles(`${laraAdmin}${laravelUrl}/get-data`, setNeedles);
          effectRan.current = true;
        }
      }, [getNeedles, laraAdmin, formUrlNext]);
    
      useEffect(() => {
        // ساختن query string از params
        const urlItems = Object.keys(params)
            .filter(key => params[key] !== "")
            .map(key => `${key}=${params[key]}`)
            .join("&");
    
        // ادغام query و urlItems با در نظر گرفتن شرایط
        const combinedQuery = [query, urlItems].filter(Boolean).join("&");
    
        // تنظیم URL نهایی
        setUrl(`${laraAdmin}${laravelUrl}?${combinedQuery}`);
    }, [params, query, laraAdmin]);

    const handleFilterChange = (e, filter) => {
        setParams((prevParams) => ({ ...prevParams, [filter]: e.target.value }));
    };
    const clearFilter = () => {
        setParams({ priorityStatus: "", replyStatus: "", subject: "", userInfo: "" });
    };

    let info = {
        insertLink: (!access) && nextAdmin+formUrl+"/new",
        url: url,
        columns: [
            {label: "", jsx: (item)=>(<Pic src={mediaPath + "/users/" + item?.user?.photo} defaultImg={`${mediaPath}/public/default/avatar.png`} classImg="user-avatar rounded-full" key={"img" + item?.user?.photo} />),},
            {label: "title", field: "title"},
            {label: "subject", field: "subject.title_"+local},
            {label: "creator_record", jsx: (item)=><span>{item?.user?.firstname + " " + item?.user?.lastname} <div className="ltr">{Tools?.toJalaliDateString(item?.created_at)}</div> </span>},
            {label: "evaluate", field: "score"},
            {label: "reply_status", jsx: (item)=><span className={"rounded-full py-1 px-2  text-white bg-"+item?.reply_status?.color}>{item?.reply_status?.["title_"+local]}</span>},
            {label: "check_priority", jsx: (item)=><span className={"rounded-full py-1 px-2  text-white bg-"+item?.priority_status?.color}>{item?.priority_status?.["title_"+local]}</span>},
            // {label: "status", jsx: (item)=><span className={"rounded-full py-1 px-2  text-white bg-"+item?.active_status?.color}>{item?.active_status?.["title_"+local]}</span>},
            {label: "", sort:false, width:"110px", jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Eye" url={nextAdmin+formUrl+"/"+item?.id} tooltip={Lang('public.view')} />
                    </div>
                </>
            },
        ],
    }
    // priority_status: "", reply_status: "", subject:"", userInfo:""
    return(
        <Frame title={Lang(["public.tickets"])}>
            {(access) &&
                <Box shadow={false} minIcon={true} min={true} cols={"grid-cols-12"}>
                    <Input label="user" className="col-span-3 md:col-span-3" defaultValue={params.userInfo}
                        onEnter={(e) => handleFilterChange(e, "userInfo")} note={Lang("public.filter_ticket_user")}
                    />
                    <Select label="subject" className="col-span-3 md:col-span-3" defaultValue={params.subject}
                        data={needles?.subject} titleKey={"title_" + local} onChange={(e) => handleFilterChange(e, "subject")}
                    />
                    <Select label="reply_status" className="col-span-3 md:col-span-3" defaultValue={params.replyStatus}
                        data={needles?.statuses?.filter(reply => reply.group_id == 19)} titleKey={"title_" + local} valueKey="code"
                        onChange={(e) => handleFilterChange(e, "replyStatus")}   
                    />
                    <Select label="check_priority" className="col-span-3 md:col-span-3" defaultValue={params.priorityStatus}
                        data={needles?.statuses?.filter(priority => priority.group_id == 24)} titleKey={"title_" + local} valueKey="code"
                        onChange={(e) => handleFilterChange(e, "priorityStatus")}
                    />
                    <ButtonContainer className="mt-7 md:mt-6 text-right ">
                        <Button label="clear_filter" className="btn btn-secondary w-20" onClick={clearFilter} />
                    </ButtonContainer>
                </Box>
            }
            <div className="intro-y col-span-12">
                <Grid {...info} key={"table key"} />
            </div>
        </Frame>
    );
}