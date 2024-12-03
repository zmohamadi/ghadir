"use client";
import { Form } from "@/Components/Promotions/Form";
export default function page({params}){
    return(
        <Form id={params?.id} />
    );
}