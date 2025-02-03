"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid, Frame, FeatherIcon } from "@/Theme/Midone/Utils";
import { useMemo, useState } from "react";
import Link from "next/link";
import { Filtering } from "@/Components/Public/Filtering";
import { useSearchParams } from 'next/navigation'
import { useAuth } from "@/lib";

export default function page() {
    const { Lang, local } = useLang();
    const { laraAdmin, nextAdmin } = useConfig();
    const formUrl = nextAdmin + "/agree";
    const {user} = useAuth();
    const access = user?.role_id == 1 ?  true : false;
    
    const urlParams = useSearchParams()
    const getFilterFromUrl = () => {
        return {
            promoter: urlParams.get('promoter') || null,
            promotion: urlParams.get('promotion') || null,
            province: urlParams.get('province') || null,
            city: urlParams.get('city') || null,
        };
    };
    const [filters, setFilters] = useState(getFilterFromUrl());
    
    let info = useMemo(()=>{
        const filterParams = Object.keys(filters)
            .filter((key) => filters[key] && filters[key] != "null")
            .map((key) => `${key}=${filters[key]}`)
            .join("&");

        const url = filterParams
            ? `${laraAdmin}/agree?${filterParams}`
            : `${laraAdmin}/agree`;

        return {
            url,
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
                              <FeatherIcon name="Eye" url={nextAdmin+"/agrees/"+item?.id} tooltip={Lang('public.view')} />
                          </div>
                      </>
                  }, 
              ],
        }
    }, [filters])

    const handleFiltersChange = (newFilters) => {
        setFilters(newFilters);
    };

    return (
        <>
            <Frame title={Lang(["public.agrees"])} >
                {
                    access &&
                    <Filtering
                    exportExcel={true}
                        promotion={true}
                        promoter={true}
                        url="agree"
                        filterList={filters}
                        onFiltersChange={handleFiltersChange}
                    />
                }

                <div className="intro-y col-span-12">
                    <Grid {...info} />
                </div>
            </Frame>
        </>
    );
}
