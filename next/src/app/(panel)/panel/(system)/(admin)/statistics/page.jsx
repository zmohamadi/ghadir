"use client";

import { useState, useMemo } from "react";
import { useConfig, useLang } from "@/lib";
import { Frame, Loading, useData, useFormRefs } from "@/Theme/Midone";
import { Filtering } from "@/Components/Public/Filtering";
import { useRouter } from "next/navigation";

export default function Page() {
  const { Lang } = useLang();
  const { laraAdmin, nextAdmin } = useConfig();
  const component = useFormRefs();
  const { get } = useData();

  const [filters, setFilters] = useState({});
  const [loading, setLoading] = useState(true);

  // محاسبه URL با استفاده از useMemo
  const url = useMemo(() => {
    const filterParams = Object.keys(filters)
      .filter((key) => filters[key])
      .map((key) => `${key}=${filters[key]}`)
      .join("&");

    return filterParams
      ? `${laraAdmin}/statistics?${filterParams}`
      : `${laraAdmin}/statistics`;
  }, [filters, laraAdmin]);

  const fetchData = () => {
    setLoading(true); // فعال کردن حالت لودینگ
    get(url, component, "info", () => {
      setLoading(false); // غیرفعال کردن لودینگ پس از دریافت داده‌ها
    });
  };

  // فراخوانی دوباره لاراول زمانی که URL تغییر کند
  useMemo(() => {
    fetchData();
  }, [url]);

  const handleFiltersChange = (newFilters) => {
    setFilters(newFilters);
  };

  const router = useRouter();
  const goToReports = (href) => {
    router.push(`${nextAdmin}/${href}?promoter=${filters.promoter}&promotion=${filters.promotion}`);
  };

  let statistics = component?.state?.info;

  return (
    <Frame title={Lang("public.statistics")} className="col-span-12">
      <Filtering
        promotion={true}
        province={true}
        promoter={true}
        url="statistics"
        onFiltersChange={handleFiltersChange}
      />
      {loading ? (
        <Loading />
      ) : (
        <>
          {/* Statistics */}
          {statistics && (
            <>
              {[
                {
                  label: "promoters",
                  href: "promoters",
                  key: "promoters",
                  percentKey: "promoters",
                  color: "#0096C7",
                  svg:""
                },
                {
                  label: "agrees",
                  href: "agrees",
                  key: "agrees",
                  percentKey: "agrees",
                  color: "#0096C7",
                  svg:""
                },
                {
                  label: "course",
                  href: "courses",
                  key: "course_count",
                  percentKey: "course_percent",
                  color: "#FF8C00",
                  svg:""
                },
                {
                  label: "people_course",
                  href: "courses",
                  key: "people_course",
                  percentKey: "people_course_percent",
                  color: "#00D1D1",
                  svg:""
                },
                {
                  label: "time_course",
                  href: "courses",
                  key: "time_course",
                  percentKey: "time_course_percent",
                  color: "#800080",
                  svg:""
                },
                {
                  label: "tribune",
                  href: "tribunes",
                  key: "tribune_count",
                  percentKey: "tribune_percent",
                  color: "#FF8C00",
                  svg:""
                },
                {
                  label: "people_tribune",
                  href: "tribunes",
                  key: "people_tribune",
                  percentKey: "people_tribune_percent",
                  color: "#00D1D1",
                  svg:""
                },
                {
                  label: "time_tribune",
                  href: "tribunes",
                  key: "time_tribune",
                  percentKey: "time_tribune_percent",
                  color: "#800080",
                  svg:""
                },
              ].map(({ label, href, key, percentKey, color }, index) => (
                <div
                  key={index}
                  className="col-span-12 sm:col-span-6 xl:col-span-3 intro-y"
                >
                  <div onClick={() => goToReports(href)}
                      className="block cursor-pointer"
                    >
                    {/* لینک با فیلتر */}
                    <div className="report-box zoom-in">
                      <div className="box p-5">
                        <div className="flex">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="24"
                            height="24"
                            viewBox="0 0 24 24"
                            fill="none"
                            stroke={color}
                            strokeWidth="1.5"
                            strokeLinecap="round"
                            strokeLinejoin="round"
                            className="feather feather-monitor report-box__icon text-theme-23"
                          >
                            <rect x="2" y="3" width="20" height="14" rx="2" ry="2"></rect>
                            <line x1="8" y1="21" x2="16" y2="21"></line>
                            <line x1="12" y1="17" x2="12" y2="21"></line>
                          </svg>
                          <div className="mr-auto">
                            <div className="report-box__indicator bg-theme-10 tooltip cursor-pointer">
                              {statistics[percentKey]}%
                            </div>
                          </div>
                        </div>
                        <div className="text-3xl font-bold leading-8 mt-6">
                          {statistics[key]}
                        </div>
                        <div className="text-base text-gray-600 mt-1">
                          {Lang(`public.${label}`)}
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              ))}

              {statistics?.rituals?.length > 0 &&
                statistics.rituals.map((item, index) => (
                  <div
                    key={index}
                    className="col-span-12 sm:col-span-6 xl:col-span-3 intro-y"
                  >
                    <div onClick={() => goToReports(href)}
                      className="block cursor-pointer"
                    >
                      {/* لینک با فیلتر */}
                      <div className="report-box zoom-in">
                        <div className="box p-5">
                          <div className="flex">
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              width="24"
                              height="24"
                              viewBox="0 0 24 24"
                              fill="none"
                              stroke={item?.color || "currentColor"}
                              strokeWidth="1.5"
                              strokeLinecap="round"
                              strokeLinejoin="round"
                              className="feather feather-credit-card report-box__icon text-theme-22"
                            >
                              <rect
                                x="1"
                                y="4"
                                width="22"
                                height="16"
                                rx="2"
                                ry="2"
                              ></rect>
                              <line x1="1" y1="10" x2="23" y2="10"></line>
                            </svg>
                            <div className="mr-auto">
                              <div className="report-box__indicator bg-theme-10 tooltip cursor-pointer">
                                {item?.percent}%
                              </div>
                            </div>
                          </div>
                          <div className="text-3xl font-bold leading-8 mt-6">
                            {item?.count}
                          </div>
                          <div className="text-base text-gray-600 mt-1">
                            {item?.label}
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                ))}
            </>
          )}
        </>
      )}
    </Frame>
  );
}
