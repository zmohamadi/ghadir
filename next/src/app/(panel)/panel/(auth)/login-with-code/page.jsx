"use client";

import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useAuth } from "@/lib/auth";
import { useState, useEffect } from "react";
import Link from "next/link";

export default function Main() {
    const { Lang } = useLang();
    const { nextDomain, nextAdmin } = useConfig();
    const redirectIfAuthenticated = `${nextDomain}${nextAdmin}/dashboard`;
    const { loginWithCode } = useAuth({
        middleware: "guest",
        guard: "admin",
        redirectIfAuthenticated,
    });

    const [formData, setFormData] = useState({ mobile: "", code: "" });
    const [errors, setErrors] = useState({});
    const [timer, setTimer] = useState(120); // تنظیم تایمر به 120 ثانیه
    const [isTimerActive, setIsTimerActive] = useState(true);

    useEffect(() => {
        if (timer === 0) {
            setIsTimerActive(false); // غیرفعال کردن دکمه پس از پایان تایم
            return;
        }

        if (isTimerActive) {
            const interval = setInterval(() => {
                setTimer((prev) => prev - 1);
            }, 1000);

            return () => clearInterval(interval);
        }
    }, [timer, isTimerActive]);

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData((prevData) => ({ ...prevData, [name]: value }));
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        loginWithCode({ ...formData, setErrors });
    };

    const renderInput = (name, type = "text") => (
        <>
            <input
                dir="rtl"
                type={type}
                name={name}
                value={formData[name]}
                onChange={handleChange}
                className="intro-x login__input form-control py-3 px-4 border-gray-300 block mt-4"
                placeholder={Lang(`public.${name}`)}
            />
            {errors?.[name] && (
                <div className="pristine-error text-theme-24 mt-2">
                    {errors?.[name]}
                </div>
            )}
        </>
    );

    const formatTime = (seconds) => {
        const minutes = Math.floor(seconds / 60);
        const remainingSeconds = seconds % 60;
        return `${String(minutes).padStart(2, "0")}:${String(remainingSeconds).padStart(2, "0")}`;
    };

    return (
        <>
            <h2 className="intro-x font-bold text-2xl xl:text-3xl text-center xl:text-center">
                {Lang("public.login_with_code")}
            </h2>
            <form onSubmit={handleSubmit} className="intro-x mt-8">
                {renderInput("mobile")}
                {renderInput("confirm_code")}

                <div className="intro-x flex text-gray-700 dark:text-gray-600 text-xs sm:text-sm mt-4 justify-between items-center">
                    
                    <div className="flex items-center">
                        {isTimerActive ? (
                            <span>{Lang("public.time_left")}: {formatTime(timer)}</span>
                        ) : (
                            <span>{Lang("public.time_expired")}</span>
                        )}
                            
                    </div>
                    <div className="flex items-center">
                        <Link href={`${nextAdmin}/login`} className="text-blue-900 border-b hover:text-blue-700">
                            {Lang("public.login_with_pass")}
                        </Link>
                    </div>
                </div>
                <div className="intro-x mt-5 xl:mt-8 text-left xl:text-left flex justify-between items-center">
                    <button
                        type="submit"
                        className="btn btn-primary py-3 px-4 w-full xl:w-32 align-top"
                        disabled={!isTimerActive} // دکمه غیرفعال می‌شود وقتی تایم تمام شود
                    >
                        {Lang("public.login")}
                    </button>
                    <Link
                        href={`${nextAdmin}/resend-code`}
                        className="btn btn-outline-secondary py-3 px-4 w-full xl:w-32 mt-3 xl:mt-0 align-top"
                    >
                        {Lang("public.resend_code")}
                    </Link>
                </div>
                
            </form>
        </>
    );
}
