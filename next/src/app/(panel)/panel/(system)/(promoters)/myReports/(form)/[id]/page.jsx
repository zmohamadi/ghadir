"use client";
import { View } from "@/Components/Reports/View";
import { useAuth } from "@/lib";

export default function page({params}){
    const {user} = useAuth();
    return(
        <View promoter={user?.id} id={params?.id} />
    );
}