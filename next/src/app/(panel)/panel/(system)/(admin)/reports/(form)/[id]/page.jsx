"use client";
import { View } from "@/Components/Reports/View";

export default function page({params}){
    return(
        <View id={params?.id} />
    );
}