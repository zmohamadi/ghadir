"use client";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { Grid, Frame, FeatherIcon, useData, useFormRefs } from "@/Theme/Midone/Utils";
import { Box, Button, ButtonContainer, Input, SelectTail } from "@/Theme/Midone";
import { Select } from "@/Theme/Midone/Forms/Select";
import { useEffect, useState } from "react";
import Link from "next/link";

export default function page(){
    const {Lang, local} = useLang();
    const {laraAdmin,nextAdmin} = useConfig();
    const { getNeedles } = useData();
    const formUrl = nextAdmin+"/agree";
    const [filters, setFilters] = useState({ city: "", province: "",promotion:"",promoter:"" });
    const [url, setUrl] = useState(`${laraAdmin}/agree`);
    const [needles, setNeedles] = useState(null);
    const [provinceId, setProvinceId] = useState(null);
    const component = useFormRefs();

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
      // Fetch initial data
      getNeedles(`${laraAdmin}/agree/get-needles`, setNeedles);
    }, [url]);
  
    useEffect(() => {
      const filterParams = Object.keys(filters)
        .filter((key) => filters[key])
        .map((key) => `${key}=${filters[key]}`)
        .join("&");
    
      const updatedUrl = filterParams
        ? `${laraAdmin}/agree?${filterParams}`
        : `${laraAdmin}/agree`;
    
      setUrl(updatedUrl);
    }, [filters, laraAdmin]);
    

    const handleFilterChange = (e, filterKey) => {
      const value = e.target.value;
    
      setFilters((prevFilters) => ({
        ...prevFilters,
        [filterKey]: value,
        ...(filterKey == "province" && { city: "" }), // ریست کردن شهر در صورت تغییر استان
      }));
    
      if (filterKey == "province") {
        setProvinceId(value);
      }
    };
    
  
    const clearFilter = () => {
      setFilters({ city: "", province: "",promotion:"",promoter:"" });
    };
    // console.log(needles?.province);

    return(
        <>
            <Frame title={Lang(["public.agree"])}>
              <Box shadow={false} minIcon={true} min={true}>
                <Select
                  defaultValue={filters.promotion}
                  onChange={(e) => handleFilterChange(e,"promotion")}
                  className="col-span-5 md:col-span-3"
                  label="promotion"
                  data={needles?.promotion}
                />
                <Input label="promoter" className="col-span-3 md:col-span-3" defaultValue={filters.promoter}
                  onEnter={(e) => handleFilterChange(e, "promoter")} note={Lang("public.filter_ticket_user")}
              />


                <ButtonContainer className="mt-7 md:mt-6 text-right">
                  <Button
                    label="clear_filter"
                    className="btn btn-secondary w-20"
                    onClick={clearFilter}
                  />
                </ButtonContainer>
              </Box>
                <div className="intro-y col-span-12">
                    <Grid {...info} />
                </div>
            </Frame>
        </>
    );
}