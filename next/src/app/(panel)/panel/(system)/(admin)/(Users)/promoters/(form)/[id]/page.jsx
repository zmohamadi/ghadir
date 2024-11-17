"use client";
import { View } from "@/Components/Promoters/View";

export default function page({params}){
    return(
        <div>
            <View id={params?.id} />
        </div>
    );
}