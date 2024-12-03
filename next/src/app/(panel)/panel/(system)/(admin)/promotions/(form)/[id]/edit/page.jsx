"use client";
import { Form } from "@/Components/Promotions/Form";

export default function page({params}){
    const {user} = useAuth();
    const panel = user?.role_id == 1 ?  "admin" : "promoter";
    const access = user?.role_id == 1 ?  true : false;
    
    return(
        <Form id={params?.id} />
    );
}