"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid, Frame, FeatherIcon } from "@/Theme/Midone/Utils";
import { useEffect, useState } from "react";
import Link from "next/link";
import { Filtering } from "@/Components/Public/Filtering";

export default function page(){
    const {Lang} = useLang();
    const {laraAdmin,nextAdmin} = useConfig();
    const [filters, setFilters] = useState({});
    const [url, setUrl] = useState(`${laraAdmin}/agree`);

    let info = {
        perPage:20,
        url: url,
        columns: [
          {
            label: "promotion",
            jsx: (item) => (
                <Link href={`${nextAdmin}/promotions/${item.promotion_id}`}>
                    {`${item?.promotion?.title}-${item?.promotion?.year}`}
                </Link>
            ),
          },
            { label: "promoter",jsx: (item) => <span>{item?.promoter?.firstname + " " + item?.promoter?.lastname+"-"+item?.promoter?.mobile}</span>},        
            { label: "created_at", jsx: (item)=><span dir="ltr" className="ltr">{(item?.created_at)}</span>},
            { label: "", sort:false, 
                jsx:(item)=><>
                    <div className='flex justify-center '>
                        <FeatherIcon name="Eye" url={nextAdmin+"/promotions/"+item?.promotion_id} tooltip={Lang('public.view')} />
                    </div>
                </>
            }, 
        ],
    }
  
    useEffect(() => {
      const filterParams = Object.keys(filters)
          .filter((key) => filters[key])
          .map((key) => `${key}=${filters[key]}`)
          .join("&");

      const updatedUrl = filterParams
          ? `${laraAdmin}/courses?${filterParams}`
          : `${laraAdmin}/courses`;

      setUrl(updatedUrl);
  }, [filters, laraAdmin]);

  const handleFiltersChange = (newFilters) => {
      setFilters(newFilters);
  };


    return(
        <>
            <Frame title={Lang(["public.agree"])}>
            <Filtering
                  promotion={true}
                  promoter={true}
                  url="agree"
                  onFiltersChange={handleFiltersChange}
              />
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                </div>
            </Frame>
        </>
    );
}