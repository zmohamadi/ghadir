"use client";

import {useConfig} from "@/lib/config";
import StoreProvider from "@/redux/StoreProvider";
import Script from 'next/script';
import store from "@/redux/store";
import { App } from "./App";
import "./global.css";
// import { WebVitals } from '@/lib/web-vitals';

export default function Panel({children}){    
    const {laraDomain} = useConfig();

    return <>        
        <html lang="en" suppressHydrationWarning = {true}>
            <head>
                <title >ستاد مبلغین</title>
                <meta charSet="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <meta name="description" content="admin theme" />
                <meta name="keywords" content="admin template, Icewall Admin Template, flat admin template, responsive admin template, web app" />
                <meta name="author" content="Sanegar" />
                <link rel="stylesheet" href={laraDomain + "/admin/Midone-v3/Icewall_v1.0.9_min/dist/css/app-rtl.css"} />
                <link rel="stylesheet" href={laraDomain + "/admin/css/style.css?var=1"} />
                <Script id='tail.select' src={laraDomain + '/admin/Midone-v3/packages/tail.select.1.0.2/tail.select.min.js'} strategy='afterInteractive' />
                <Script id='jquery' src={laraDomain + '/admin/js/jquery-3.3.1.min.js'} strategy='afterInteractive' />
            </head>
            <body className="p-0 " suppressHydrationWarning={true}>
                {/* <WebVitals /> */}
                <StoreProvider store={store}>
                    <App key={"app"}>
                        {children}
                    </App>
                </StoreProvider>
            </body>
        </html>
    </>
}