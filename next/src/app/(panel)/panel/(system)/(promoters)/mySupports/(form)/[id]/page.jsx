"use client";
import { View } from "@/Components/Supports/View";
export default function page({params}){
    return(
        <View id={params?.id} />
    );
}