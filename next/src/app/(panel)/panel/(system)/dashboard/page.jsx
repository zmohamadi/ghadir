"use client";

import { useAuth } from "@/lib/auth";
import Promoter from "./Promoter";
import Manager from "./Manager";

export default function Dashboard() {
    const { user } = useAuth({ guard: "admin" });
   
    return user?.role_id==1 ? <Manager/> : <Promoter/> 
    
}