"use client";
import { View } from "@/Components/Supports/View";

export default function page({params}){
    const panel = "promoter";

    return(
        <View id={params?.id} panel={panel} />
    );
}