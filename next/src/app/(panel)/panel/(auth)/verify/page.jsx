"use client";

import { useState, useEffect } from "react";
import { useAuth } from "@/lib/auth";
import { useLang } from "@/lib/lang";
import Link from "next/link";
import { useConfig } from "@/lib";

export default function Main() {
    const { Lang } = useLang();
    const { verify } = useAuth({ middleware: "guest", guard: "admin" });
    const { nextDomain, nextAdmin } = useConfig();
    const [verifyCode, setCode] = useState('');
    const [errors, setErrors] = useState({});
    const [isSubmitting, setIsSubmitting] = useState(false);
    const [timeLeft, setTimeLeft] = useState(10); // زمان باقی‌مانده برای تایمر

    const handleSubmit = async () => {
        setIsSubmitting(true);
        try {
            await verify({ verifyCode, setErrors });
        } catch (err) {
            console.error("Verification failed:", err);
        } finally {
            setIsSubmitting(false);
        }
    };

    useEffect(() => {
        // اگر تایمر تمام شد دکمه را غیرفعال می‌کنیم
        if (timeLeft === 0) return;

        const timer = setInterval(() => {
            setTimeLeft((prevTime) => {
                if (prevTime > 0) return prevTime - 1;
                clearInterval(timer); // توقف تایمر بعد از پایان
                return 0;
            });
        }, 1000);

        return () => clearInterval(timer); // پاک‌سازی تایمر هنگام تغییر یا دکمه غیرفعال
    }, [timeLeft]);

    return (
        <>
            <h2 className="intro-x font-bold text-2xl xl:text-3xl text-center xl:text-center">
            {Lang("public.verify_account")}
            </h2>
            <div className="intro-x mt-8">
                <input
                    type="text"
                    onChange={(e) => setCode(e.target.value)}
                    value={verifyCode}
                    className="intro-x login__input form-control py-3 px-4 border-gray-300 block"
                    placeholder={Lang("public.confirm_code")}
                />
                {errors?.verifyCode && (
                    <div className="pristine-error text-theme-24 mt-2">
                        {errors?.verifyCode}
                    </div>
                )}
                <div className="intro-x mt-5 xl:mt-8 text-left xl:text-left flex justify-between gap-4 items-center">
                    <button
                        onClick={handleSubmit}
                        disabled={isSubmitting || timeLeft === 0} // غیرفعال کردن دکمه بعد از اتمام تایمر
                        className={`btn btn-primary py-3 px-4 w-full xl:w-32 align-top ${isSubmitting || timeLeft === 0 ? "opacity-50 cursor-not-allowed" : ""}`}
                    >
                        {isSubmitting ? Lang("public.processing") : Lang("public.send_confirm_code")}
                    </button>
                    <Link
                        href={`${nextAdmin}/resend-code`}
                        className="btn btn-outline-secondary py-3 px-4 w-full xl:w-32 mt-3 xl:mt-0 align-top"
                    >
                        {Lang("public.resend_code")}
                    </Link>
                </div>
                
                {timeLeft > 0 && (
                    <div className="text-center mt-2 text-gray-600">
                        {Lang("public.time_left")} {timeLeft} {Lang("public.seconds")}
                    </div>
                )}
            </div>
        </>
    );
}
