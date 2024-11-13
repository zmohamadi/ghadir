"use client";

import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useAuth } from "@/lib/auth";
import { useState } from "react";
import Link from "next/link";

export default function Main() {
    const { Lang } = useLang();
    const { nextDomain, nextAdmin } = useConfig();
    const redirectIfAuthenticated = `${nextDomain}${nextAdmin}/verify`;
    const { register } = useAuth({
        middleware: "guest",
        guard: "admin",
        redirectIfAuthenticated,
    });

    const [formData, setFormData] = useState({
        firstname: '',
        lastname: '',
        mobile: '',
        password: ''
    });

    const [errors, setErrors] = useState({});

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData((prevData) => ({ ...prevData, [name]: value }));
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        register({ ...formData, setErrors });
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

    return (
        <>
            <h2 className="intro-x font-bold text-2xl xl:text-3xl text-center xl:text-center">
            {Lang("public.register")}
            </h2>
            
            <form onSubmit={handleSubmit} className="intro-x mt-8">
                {renderInput("firstname")}
                {renderInput("lastname")}
                {renderInput("mobile")}
                {renderInput("password", "password")}
                <div className="intro-x mt-5 xl:mt-8 text-left xl:text-left flex justify-between items-center">
                    <button
                        type="submit"
                        className="btn btn-primary py-3 px-4 w-full xl:w-32 align-top"
                    >
                        {Lang("public.register")}
                    </button>
                    <Link
                        href={`${nextAdmin}/login`}
                        className="btn btn-outline-secondary py-3 px-4 w-full xl:w-32 mt-3 xl:mt-0 align-top"
                    >
                        {Lang("public.login")}
                    </Link>
                </div>
            </form>
        </>
    );
}
