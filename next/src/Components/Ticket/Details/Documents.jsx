"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from '@/lib/config';
import { useData } from "@/Theme/Midone/Forms";
import { FeatherIcon } from "@/Theme/Midone/Utils";

export const Documents = ({item,deleteUrl}) => {
    const {Lang} = useLang();
    const {mediaPath} = useConfig();
    const {destroy} = useData();

    return <>
        {/* <div className="absolute right-0 top-0 mt-3 mr-3">
            <input className="form-check-input border border-gray-500" type="checkbox"/>
        </div> */}
        <a href={mediaPath+"/tickets/"+item} className="w-3/5 file__icon file__icon--file mx-auto">
            <div className="file__icon__file-name">TXT</div>
        </a>
        <a href={mediaPath+"/tickets/"+item} className="block font-medium mt-4 text-center truncate">{item}</a> 
        {/* <div className="text-gray-600 text-xs text-center mt-0.5">{item?.size}</div> */}
        <div className="absolute top-0 left-0 ml-2 mt-2 dropdown mr-auto">
            <a className="dropdown-toggle w-5 h-5 block" href="#wrapper " aria-expanded="false">
                <FeatherIcon name="MoreVertical" />
            </a>
            <div className="dropdown-menu w-40">
                <div className="dropdown-menu__content box dark:bg-dark-1 p-2">
                    <a href={mediaPath+"/tickets/"+item} download={item} target="blank" className="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md">
                        <FeatherIcon name="ExternalLink" className="w-4" />{Lang("public.download")}
                    </a>
                    {/* <a href="#wrapper " onClick={()=>destroy(deleteUrl)} className="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md">
                        <FeatherIcon name="Trash" className="w-4" />{Lang("public.delete")}
                    </a> */}
                </div>
            </div>
        </div> 
    </>
}