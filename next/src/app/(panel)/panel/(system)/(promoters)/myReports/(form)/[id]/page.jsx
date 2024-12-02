"use client";
import { View } from "@/Components/Reports/View";
import { useAuth } from "@/lib";

export default function page({params}){
    const panel = "promoter";
    const {user} = useAuth();
    const access = false;
    return(
        <View access={access} user={user?.id} id={params?.id} panel={panel} />
    );
}