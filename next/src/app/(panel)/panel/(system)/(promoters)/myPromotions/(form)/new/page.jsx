"use client";
import { Form } from "@/Components/Promotions/Form";
import { useAuth } from "@/lib";

export default function page(){
    const {user} = useAuth();
    const panel = user?.role_id == 1 ?  "admin" : "promoter";
    const access = user?.role_id == 1 ?  true : false;

    return(
        <Form access={access} panel={panel} />
    );
}