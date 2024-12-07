"use client";
import { Form } from "@/Components/Supports/Form";
export default function page({params}){
    return(
        <Form id={params?.id}/>
    );
}