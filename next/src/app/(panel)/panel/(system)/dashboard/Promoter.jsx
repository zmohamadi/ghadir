"use client";

import { Frame } from "@/Theme/Midone";
import { useConfig, useLang } from "@/lib";
import Link from "next/link"; // از Link موجود در Next.js استفاده کنید

export default function Promoter() {
    const { Lang } = useLang();
    const { laraAdmin, mediaPath, nextAdmin } = useConfig();
   

    return (
        <Frame>
        Promoter
        </Frame>
    );

}
