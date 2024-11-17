"use client";
import { View } from "@/Components/Promotions/View";

export default function page({params}){
    return(
        <View id={params?.id} />
    );
}