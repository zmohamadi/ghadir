
"use client"

import { Grid } from "@/Theme/Midone/Utils";
import { Items } from "@/Components/Ticket/Details/Items";

export const List = ({ id,laraAdmin,laravelUrl,mediaPath,Lang }) => {
    let info = {
        url: `${laraAdmin}${laravelUrl}/list/?id=${id}`,
        theme: (item)=> <Items item={item} Lang={Lang} mediaPath={mediaPath} />,
    }

    return(
        <>
            <div className="col-span-12 md:col-span-12 xxl:col-span-12 mt-3 xxl:mt-6">
                <div className="intro-x flex items-center h-10">
                    {/* <FeatherIcon spanWrapperClass="text-left" name="ArrowDownCircle" onClick={() => Tools?.scrollPage(true,"")} /> */}
                    <h2 className="text-lg font-medium truncate mr-3">{Lang("public.tickets")}</h2>
                </div>
                <div className="report-timeline mt-5 relative">
                    <Grid {...info} activeSearch={false} key={"table key"} />
                </div>
                {/* <FeatherIcon name="ArrowUpCircle" onClick={() => Tools?.scrollPage(false,"")} /> */}
            </div>
        </>
    );
}
