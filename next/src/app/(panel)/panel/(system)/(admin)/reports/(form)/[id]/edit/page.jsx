"use client";
import { Form } from "@/Components/Reports/Form";

export default function page({params}){
    return(
        <Form id={params?.id} />
    );
}