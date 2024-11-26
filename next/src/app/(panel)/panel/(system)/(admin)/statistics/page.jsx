"use client";

import { useState, useEffect } from "react";
import { useConfig, useLang } from "@/lib";
import { Box, Button, ButtonContainer, Frame, Input, useData, useFormRefs } from "@/Theme/Midone";
import { Select } from "@/Theme/Midone/Forms/Select";

export default function page(){

    const { Lang, local } = useLang();
  const { laraAdmin } = useConfig();
  const component = useFormRefs();
  const { get, getNeedles } = useData();

  const [needles, setNeedles] = useState(null);
  const [filters, setFilters] = useState({ city: "", province: "", year: "" });
  const [url, setUrl] = useState(`${laraAdmin}/statistics`);

  useEffect(() => {
    // Fetch initial data
    getNeedles(`${laraAdmin}/promoters/get-needles`, setNeedles);
    get(url, component, "info");
  }, [url]);

  useEffect(() => {
    // Update URL based on filters
    const filterParams = Object.keys(filters)
      .filter((key) => filters[key])
      .map((key) => `${key}=${filters[key]}`)
      .join("&");

    const updatedUrl = filterParams
      ? `${laraAdmin}/statistics?${filterParams}`
      : `${laraAdmin}/statistics`;

    setUrl(updatedUrl);
  }, [filters, laraAdmin]);

  const handleFilterChange = (e, filterKey) => {
    setFilters((prevFilters) => ({ ...prevFilters, [filterKey]: e.target.value }));
  };

  const clearFilter = () => {
    setFilters({ city: "", province: "", year: "" });
  };

  const statistics = component?.state?.info;

//   console.log(statistics);
return (
    <Frame title={Lang("public.statistics")} className="col-span-12">
      <Box shadow={false} minIcon={true} min={true}>
        {/* Filter Selects */}
        <Select
          defaultValue={filters.province}
          onChange={(e) => handleFilterChange(e, "province")}
          className="col-span-5 md:col-span-3"
          label="province"
          data={needles?.province}
          titleKey={"name_" + local}
        />
        <Select
          defaultValue={filters.city}
          onChange={(e) => handleFilterChange(e, "city")}
          className="col-span-5 md:col-span-3"
          label="city"
          data={needles?.city}
          titleKey={"name_" + local}
        />
        <Select
          defaultValue={filters.year}
          onChange={(e) => handleFilterChange(e, "year")}
          className="col-span-5 md:col-span-3"
          label="year"
          data={statistics?.years}
          titleKey={"year"}
          valueKey="year"
        />
        <ButtonContainer className="mt-7 md:mt-6 text-right">
          <Button
            label="clear_filter"
            className="btn btn-secondary w-20"
            onClick={clearFilter}
          />
        </ButtonContainer>
      </Box>

      {/* Statistics */}
      {statistics && (
        <>
          {[
            { label: "course", key: "course_count", percentKey: "course_percent", color: "#FF8C00" },
            { label: "people_course", key: "people_course", percentKey: "people_course_percent", color: "#00D1D1" },
            { label: "time_course", key: "time_course", percentKey: "time_course_percent", color: "#800080" },
            { label: "tribune", key: "tribune_count", percentKey: "tribune_percent", color: "#FF8C00" },
            { label: "people_tribune", key: "people_tribune", percentKey: "people_tribune_percent", color: "#00D1D1" },
            { label: "time_tribune", key: "time_tribune", percentKey: "time_tribune_percent", color: "#800080" }
          ].map(({ label, key, percentKey, color }, index) => (
            <div key={index} className="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
              <div className="report-box zoom-in">
                <div className="box p-5">
                  <div className="flex">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" className="feather feather-monitor report-box__icon text-theme-23">
                      <rect x="2" y="3" width="20" height="14" rx="2" ry="2"></rect>
                      <line x1="8" y1="21" x2="16" y2="21"></line>
                      <line x1="12" y1="17" x2="12" y2="21"></line>
                    </svg>
                    <div className="mr-auto">
                      <div className="report-box__indicator bg-theme-10 tooltip cursor-pointer">{statistics[percentKey]}%</div>
                    </div>
                  </div>
                  <div className="text-3xl font-bold leading-8 mt-6">{statistics[key]}</div>
                  <div className="text-base text-gray-600 mt-1">{Lang(`public.${label}`)}</div>
                </div>
              </div>
            </div>
          ))}

          {statistics?.rituals?.length > 0 && statistics.rituals.map((item, index) => (
            <div key={index} className="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
              <div className="report-box zoom-in">
                <div className="box p-5">
                  <div className="flex">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke={item?.color || "currentColor"} strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" className="feather feather-credit-card report-box__icon text-theme-22">
                      <rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect>
                      <line x1="1" y1="10" x2="23" y2="10"></line>
                    </svg>
                    <div className="mr-auto">
                      <div className="report-box__indicator bg-theme-10 tooltip cursor-pointer">{item?.percent}%</div>
                    </div>
                  </div>
                  <div className="text-3xl font-bold leading-8 mt-6">{item?.count}</div>
                  <div className="text-base text-gray-600 mt-1">{item?.label}</div>
                </div>
              </div>
            </div>
          ))}
        </>
      )}
    </Frame>
  );
}