"use client";

import { useConfig } from '@/lib/config';
import { FeatherIcon } from "@/Theme/Midone";

export const Files = ({ data,path="/tickets/",colorIcon="primary",Lang }) => {
    const {mediaPath} = useConfig();

    return(
        <>
            {data?.filter(file => file !== "")?.map((file, index)=>{                
                    return(
                        <a key={file} className={`btn btn-${colorIcon} w-24 mr-2 mb-2`} href={`${mediaPath}${path}${file}`} target="_blank" rel="noopener noreferrer">
                            {Lang("public.file")} {index + 1}
                            <FeatherIcon name="Download" iconClassName="mr-2" />
                        </a>                    
                    );
                })
            }
        </>
    );
}