"use client";

import { useConfig } from "@/lib/config";
import { Tools, useFormRefs } from "@/Theme/Midone";
import { useData } from "@/Theme/Midone/Utils/Data";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import { motion } from "framer-motion";

export default function Dashboard() {
    const { Lang } = useLang();
    let { get } = useData();
    let component = useFormRefs();
    const { laraAdmin, mediaPath, nextAdmin } = useConfig();
    const [stats, setStats] = useState({});

    useEffect(() => {
        get(`${laraAdmin}/home`, component, "info");
    }, [laraAdmin]);

    // داده‌ها پس از دریافت از API به استیت منتقل می‌شوند
    useEffect(() => {
        // console.log(component?.state?.info);
        const data = component?.state?.info;
        if (data) {
            setStats({
                promoters: data?.promoters || 0,
                reports: data?.reports || 0,
                // supports: data?.support || 0,
                courses: data?.courses || 0,
                tribunes: data?.tribunes || 0,
            });
        }
    }, [component?.state?.info]);

    const sliderSettings = {
        dots: true,
        infinite: true,
        speed: 500,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: false,
        adaptiveHeight: true,
    };

    return (
        <div className="container mx-auto bg-white">
            <div className="flex justify-between items-center mb-4 pr-5 pl-5" style={{backgroundColor:"#1FAB00"}}>
                <img src={`${mediaPath}/logo/light-logo.png`} className="m-2" width="80px" alt="light-logo.png" />
        
                <button
                    className="border-solid text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition duration-300"
                    onClick={() => window.location.href = '/panel'}
                >
                    ورود به پنل کاربری
                </button>
            </div>
            
            {/* Larger Slider */}
            <div className="w-full max-w-4xl mx-auto">
                <Slider {...sliderSettings}>
                    <div>
                        <img src={`${mediaPath}/1.jpg`} alt="Slide 1" className="w-full h-90 object-cover rounded-lg" />
                    </div>
                    {/* <div>
                        <img src={`${mediaPath}/00.png`} alt="Slide 1" className="w-full h-90 object-cover rounded-lg" />
                    </div> */}
                    <div>
                        <img src={`${mediaPath}/2.jpg`} alt="Slide 2" className="w-full h-90 object-cover rounded-lg" />
                    </div>
                </Slider>
            </div>
            
            {/* Stats Section */}
            <div className="grid grid-cols-4 gap-4 my-8 pr-5 pl-5">
                {Object.entries(stats).map(([key, value]) => (
                    <div 
                        key={key} 
                        style={{ color: "#178C00", border: "1px solid #178C00" }} 
                        className="bg-gray-100 p-4 rounded-lg shadow font-bold flex items-center justify-between flex-row-reverse"
                    >
                        {/* تصویر */}
                        <span>
                            <img width="50px" src={`${mediaPath}/public/${key}.png`} />
                        </span>

                        {/* متن */}
                        <span className="text-right">
                            <motion.p
                                className="text-3xl"
                                animate={{ opacity: [0, 1], y: [10, 0] }}
                                transition={{ duration: 0.5 }}
                            >
                                {value}
                            </motion.p>
                            <p>آمار {Lang('public.' + key)}</p>
                        </span>
                    </div>
                ))}
            </div>


            
            {/* Introduction Section */}
            <div  style={{backgroundColor:"#EAF2B3"}} className=" p-6 rounded-lg shadow-lg flex flex-row items-center gap-6">
                <div className="w-1/2 flex justify-center">
                    <img src={`${mediaPath}/ii.jpg`} alt="معرفی" className="w-100 h-80 object-cover rounded-lg" />
                </div>
                <div className="w-1/2 text-gray-700 text-lg text-justify">
                    <h4 className="font-bold mb-2">{Lang('public.main_title')}</h4>
                    <p>
                    ستاد غدیریه یا ستاد احیای ایام امامت و ولایت، در سال ۱۳۸۶ فعالیت کاری خود را در قالب گروه علمی، تبلیغی و جهادی آغاز نمود و تلاش کرد با نیروهای حوزوی در فضایی عمومی، به معرفی ایام غدیریه و ایجاد فضای شاد و پر طراوت در ۱۵ روز ایام غدیری بپردازد.
این مجموعه‌ی غدیری با تکیه بر آیات و روایات مربوط به احیای ایام غدیر از دهم ذی حجه (عید قربان) تا ۲۵ ذی حجه (روز نزول سوره مبارکه «هل أتی») با عنوان ۱۵ روز شاد غدیری پرداخته و تمامی فعالیت‌های خود را حول این محور تنظیم نموده است.
معرفی ایام غدیریه، برگزاری جشن‌های غدیری، برپایی کاروان شادی، ترویج سنت‌های غدیری از جمله اطعام غدیر از جمله فعالیت‌های مهم این ستاد می‌باشد.                    </p>
                </div>
            </div>

            <footer className="bg-gray-800 text-white py-6 text-right">
                <div className="container mx-auto px-6 grid grid-cols-3 gap-8 text-center md:text-right">
                    {/* ستون پشتیبانی */}
                    <div className="text-right">
                        <h3 className="text-lg mb-3">تماس باما</h3>
                        <ul className="list-disc pr-5 space-y-2">
                            <li>دبیرخانۀ کاروان‌های غدیر: ۰۹۱۰۷۱۹۸۱۶۰</li>
                            <li>مسئول برگزاری دوره‌های آموزشی ایام غدیریه: ۰۹۱۹۶۶۶۰۵۶۲</li>
                            <li>مسئول فروشگاه و محصولات ایام غدیریه: ۰۹۱۲۷۰۰۱۴۴۸</li>
                        </ul>
                    </div>
                    {/* ستون دسترسی سریع */}
                    <div className="text-right">
                        <h3 className="text-lg mb-3">پیوندها</h3>
                        <ul className="list-disc pr-5 space-y-2">
                            <li><a href="https://karavan.ghadiriam.ir/" className="hover:text-gray-400">کاروان غدیر</a></li>
                            <li><a href="https://ghadiriam.ir/%D9%85%D8%B9%D8%B1%D9%81%DB%8C-%D8%A7%DB%8C%D8%A7%D9%85/" className="hover:text-gray-400">معرفی ایام غدیر</a></li>
                            <li><a href="https://ghadiriam.ir/%d8%af%d8%a7%d9%86%d9%84%d9%88%d8%af-%d8%aa%d9%88%d9%84%db%8c%d8%af%d8%a7%d8%aa-%da%af%d8%b1%d8%a7%d9%81%db%8c%da%a9%db%8c-%d8%ba%d8%af%db%8c%d8%b1/" className="hover:text-gray-400">دانلود محتوای گرافیکی</a></li>
                            <li><a href="https://shop.ghadiriam.ir/" className="hover:text-gray-400">فروشگاه</a></li>
                        </ul>
                    </div>
                    {/* ستون شبکه‌های اجتماعی */}
                    <div className="text-right">
                        <h3 className="text-lg mb-3">با ما همراه باشید</h3>
                        <div className="flex justify-center md:justify-start space-x-3">
                            <a href="https://eitaa.com/ghadiriam12" className="hover:text-gray-400 ml-2"><img src={`${mediaPath}/public/eita.webp`} alt="Eeitaa" className="w-6 h-6" /></a>
                            <a href="https://www.aparat.com/rozhaye_asemany" className="hover:text-gray-400"><img src={`${mediaPath}/public/aparat.png`} alt="Aparat" className="w-6 h-6" /></a>
                            <a href="https://sapp.ir/ghadiriam12" className="hover:text-gray-400"><img src={`${mediaPath}/public/surush.jpg`} alt="Soroush" className="w-6 h-6" /></a>
                            <a href="https://www.instagram.com/ghadiriam12/" className="hover:text-gray-400"><img src={`${mediaPath}/public/insta.png`} alt="Instagram" className="w-6 h-6" /></a>
                            <a href="https://t.me/ghadiriam12/" className="hover:text-gray-400"><img src={`${mediaPath}/public/telegram.png`} alt="Telegram" className="w-6 h-6" /></a>
                        </div>
                    </div>
                </div>

                {/* کپی‌رایت */}
                <div className="text-center text-sm mt-6 border-t border-gray-700 pt-4">
                    <p>© 1403 پیام‌رسان غدیر (ghadiriam.ir). تمام حقوق محفوظ است.</p>
                </div>
            </footer>
        </div>
    );
}
