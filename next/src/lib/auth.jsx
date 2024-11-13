"use client";

import useSWR from 'swr';
import axios from '@/lib/axios';
import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { useConfig } from "@/lib/config";
import { Notif } from '@/Theme/Midone/Utils/Notif';
import { useLang } from '.';

export function useAuth ({ middleware, redirectIfAuthenticated, guard } = {}) {
    const router = useRouter();
    const { laraAdmin, nextAdmin } = useConfig();
    const csrf = () => axios.get('/sanctum/csrf-cookie');
    const { Lang } = useLang();
    
    const [mobile, setMobile] = useState(""); // Use state for mobile number

    const userUrl = `${laraAdmin}/user`;
    const loginUrl = `${laraAdmin}/login`;
    const logoutUrl = `${laraAdmin}/logout`;
    const verifyUrl = `${laraAdmin}/verify`;
    const registerUrl = `${laraAdmin}/register`;
    const resendCodeUrl = `${laraAdmin}/resend-code`;
    const loginWithCodeUrl = `${laraAdmin}/loginWithCode`;

    const { data: user, error, mutate } = useSWR(userUrl, () =>
        axios
            .get(userUrl)
            .then(res => res.data)
            .catch(error => {
                if (error.response?.status !== 409) throw error;
            })
    );

    const register = async ({ setErrors, ...props }) => {
        await csrf();

        setErrors([]);
        try {
            const response = await axios.post(registerUrl, props);
            mutate();
            Notif('success', Lang('public.wait_for_confirm'));
            if (response?.status === 200) {
                setMobile("1111111111111");  // Here set the mobile state
                window.location.href = `${nextAdmin}/verify`;
            }
        } catch (error) {
            if (error?.response?.status !== 422) throw error;
            setErrors(error?.response?.data.errors);
        }
    };

    const verify = async ({ setErrors, ...props }) => {
        await csrf();

        setErrors([]);
        const data = { ...props, mobile }; // Use the mobile state here

        try {
            await axios.post(verifyUrl, data);
            mutate();
            Notif('success', Lang('public.code_send'));
        } catch (error) {
            if (error?.response?.status !== 422) throw error;
            setErrors(error?.response?.data.errors);
        }
    };

    const login = async ({ setErrors, setStatus, ...props }) => {
        await csrf();

        setErrors([]);
        setStatus(null);

        try {
            await axios.post(loginUrl, props);
            mutate();
        } catch (error) {
            if (error.response?.status !== 422) throw error;
            setErrors(error.response?.data.errors);
        }
    };

    const loginWithCode = async ({ setErrors, setStatus, ...props }) => {
        await csrf();

        setErrors([]);
        setStatus(null);

        try {
            await axios.post(loginWithCodeUrl, props);
            mutate();
        } catch (error) {
            if (error.response?.status !== 422) throw error;
            setErrors(error.response?.data.errors);
        }
    };

    const resendCode = async ({ setErrors, setStatus, ...props }) => {
        await csrf();

        setErrors([]);
        setStatus(null);

        try {
            await axios.post(resendCodeUrl, props);
            mutate();
        } catch (error) {
            if (error.response?.status !== 422) throw error;
            setErrors(error.response?.data.errors);
        }
    };

    const logout = async () => {
        if (!error) {
            await axios.post(logoutUrl);
            mutate();
        }
        window.location.pathname = `${nextAdmin}/login`;
    };

    useEffect(() => {
        if (middleware === 'guest' && redirectIfAuthenticated && user) {
            router.push(redirectIfAuthenticated);
        }
        if (window.location.pathname === '/verify-email' && user?.email_verified_at) {
            router.push(redirectIfAuthenticated);
        }
        if (middleware === 'auth' && error) {
            logout();
        }
    }, [user, error]);

    return {
        user,
        login,
        logout,
        register,
        verify,
        loginWithCode,
        resendCode
    };
}
