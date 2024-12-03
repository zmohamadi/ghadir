"use client";
import { View } from "@/Components/Reports/View";
import { useAuth } from "@/lib";

export default function page({params}){
    const {user} = useAuth();
    const panel = user?.role_id == 1 ?  "admin" : "promoter";
    const access = user?.role_id == 1 ?  true : false;
    
    return(
        <View access={access} user={user?.id} id={params?.id} panel={panel} />
    );
}