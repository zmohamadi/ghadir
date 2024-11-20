"use client";

import { Tools,Pic,FeatherIcon } from "@/Theme/Midone/Utils";

export const NotCheckComments = ({ notCheckComments,nextAdmin,mediaPath,Lang }) => {

    return(
        <>
        {/* BEGIN: Inbox Content */}
            <div className="intro-y inbox box mt-5">
                {notCheckComments?.lenght == 0?
                    <div className="p-5 flex flex-col-reverse sm:flex-row text-gray-600 border-b border-gray-200 dark:border-dark-1">{Lang("public.no_data")}</div>
                :
                    <div className="overflow-x-auto sm:overflow-x-visible">
                        {notCheckComments?.map((comment, index)=>{
                            return(
                                <div className="intro-y">
                                    <div className="inbox__item inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                                        <div className="flex px-5 py-3">
                                            <div className="w-56 flex-none flex items-center ml-5">
                                                {/* <input className="form-check-input flex-none" type="checkbox" checked />
                                                <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                                <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a> */}
                                                <FeatherIcon name="Edit" url={nextAdmin+"/blogComments/"+comment?.id+"/edit"} />
                                                <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                                    <Pic src={mediaPath+"/users/"+comment?.creator?.photo} defaultImg={`${mediaPath}/public/default/avatar.png`} classImg="rounded-full" key={"img"+comment?.creator?.photo}  />
                                                </div>
                                                <div className="inbox__item--sender truncate mr-3">{comment?.creator?.firstname+" "+comment?.creator?.lastname}</div>
                                            </div>
                                            <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">{comment?.comment}</span></div>
                                            <div className="inbox__item--time whitespace-nowrap mr-auto pr-10 ltr">{Tools?.toJalaliDateString(comment?.created_at)}</div>
                                        </div>
                                    </div>
                                </div>        
                            );
                        })}
                    </div>
                }
            </div>
        {/* END: Inbox Content */}
        </>
    );
}