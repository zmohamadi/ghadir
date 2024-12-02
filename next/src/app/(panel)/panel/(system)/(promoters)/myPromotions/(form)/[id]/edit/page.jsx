"use client";
import { Form } from "@/Components/Promotions/Form";

export default function page({params}){
    const panel = "promoter";
    const access = false;
    
    return(
        <Form access={access} id={params?.id} panel={panel} />
    );
}