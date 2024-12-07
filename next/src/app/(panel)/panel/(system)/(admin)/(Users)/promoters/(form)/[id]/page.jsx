"use client";
import { View } from "@/Components/Promoters/View";
export default function page({params}){
    return<View id={params?.id} />;
}