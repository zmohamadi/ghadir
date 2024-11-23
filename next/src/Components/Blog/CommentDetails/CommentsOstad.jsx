"use client";

import { useState } from "react";
import { Tools,Pic,FeatherIcon } from "@/Theme/Midone/Utils";

export const Comments = ({ itemId,comments,mediaPath,Lang }) => {
    let classColor = "";

    return(
        <>
            <div className="intro-y news p-5 box mt-1">
                <div className="intro-y mt-5 pb-10">
                    {comments?.map((comments, i)=>{
                        let classDiv = (i==0)? "pt-5" : "mt-5 pt-5 border-t border-gray-200 dark:border-dark-5";
                        classColor = (itemId==comments?.id)? "alert alert-warning-soft show mr-5 p-3" : "";

                        return(
                            <>
                                <div className={classDiv+" "+classColor}>
                                    <div className="flex">
                                        <div className="w-10 h-10 sm:w-12 sm:h-12 flex-none image-fit">
                                            <Pic src={mediaPath+"/users/"+comments?.creator?.photo} defaultImg={`${mediaPath}/public/default/avatar.png`} classImg="rounded-full" key={"img"+comments?.creator?.photo}  />
                                        </div>
                                        <div className="mr-3 flex-1">
                                            <div className="flex items-center">
                                                <span className="font-medium">{comments?.creator?.firstname+" "+comments?.creator?.lastname}</span>
                                                {/* <a className="mr-auto text-xs text-gray-600" onClick={()=>changeParent(comments?.id,comments?.comment)} >{Lang("public.to_answer")}</a> */}
                                            </div>
                                            <div className="text-gray-600 text-xs sm:text-sm ltr">{Tools?.toJalaliDateString(comments?.created_at)}</div>
                                            <div className="mt-2">{comments?.comment}</div>
                                        </div>
                                    </div>
                                </div>
                                {comments?.childs?.map((child, i)=>{
                                    let classDiv = (i==0)? "pt-5" : "mt-5 pt-5 border-t border-gray-200 dark:border-dark-5";
                                    classColor = (itemId==child?.id)? "alert alert-warning-soft show mr-5 p-3" : "";

                                    return(
                                        <div className={"sm:mr-10 mr-7 "+classDiv+" "+classColor}>
                                            {
                                                classColor != "" ?
                                                    <div className='float-left flex flex-row'>
                                                        <div className='bg-white py-1 flex flex-row float-left mx-1 rounded-md'>
                                                            <FeatherIcon iconClassName="ml-2 text-green-600" size="18" name="Pocket" tooltip={Lang('public.edit')} />
                                                            <FeatherIcon iconClassName="ml-2 text-red-600" size="18" name="Delete" tooltip={Lang('public.edit')} />
                                                        </div>
                                                        <div className="text-lg leading-4 text-black hidden">|</div>
                                                        <div className='bg-white py-1 flex flex-row float-left mx-1 rounded-md'>
                                                            <FeatherIcon iconClassName="ml-2 text-black-600" size="18" name="Edit2" tooltip={Lang('public.edit')} />
                                                            <FeatherIcon iconClassName="ml-2 text-red-500" size="18" name="Trash2" tooltip={Lang('public.edit')} />
                                                        </div>
                                                    </div>
                                                    :
                                                    ""
                                            }
                                            <div className="flex">
                                                <div className="w-10 h-10 sm:w-12 sm:h-12 flex-none image-fit">
                                                    <Pic src={mediaPath + "/users/" + child?.creator?.photo} defaultImg={`${mediaPath}/public/default/avatar.png`} classImg="rounded-full" key={"img" + child?.creator?.photo}  />
                                                    
                                                </div>
                                                
                                                <div className="mr-3 flex-1">
                                                    <div className="flex items-center">
                                                        <span className="font-medium">{child?.creator?.firstname+" "+child?.creator?.lastname}</span>
                                                    </div>
                                                    <div className="text-gray-600 text-xs sm:text-sm">{Tools?.toJalaliDateString(comments?.created_at)}</div>
                                                    <div className="mt-2">{child?.comment}</div>
                                                </div>
                                            </div>
                                        </div>
                                    );
                                })}
                            </>
                        );
                    })}
                </div>
            </div>
        </>
    );
}