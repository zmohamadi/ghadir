"use client";
import { Form } from "@/Components/Promotions/Form";

export default function page({params}){
    const panel = "promoter";

    return(
        <Form id={params?.id} panel={panel} />
    );
}