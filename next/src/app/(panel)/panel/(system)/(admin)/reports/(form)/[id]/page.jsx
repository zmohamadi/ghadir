"use client";
import { View } from "@/Components/Reports/View";
import { useAuth } from "@/lib";

export default function page({params}){
    const {user} = useAuth();
    const panel = "admin";
    const access = true;

    return(
        <View id={params?.id} panel={panel} access={access} />
    );
}