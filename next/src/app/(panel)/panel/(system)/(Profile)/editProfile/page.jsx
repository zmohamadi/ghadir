"use client";
import { useAuth } from "@/lib/auth";

export default function EditProfile(){
    const {user} = useAuth({guard: "admin"});
    const id = user?.id;
    const role = user?.role_id;



    return(
        123
    );
}