"use client";
import { View } from "@/Components/Supports/View";

export default function page({params}){
    const {user} = useAuth();
    const panel = user?.role_id == 1 ?  "admin" : "promoter";
    const access = user?.role_id == 1 ?  true : false;
    
    return(
        <View id={params?.id} />
    );
}