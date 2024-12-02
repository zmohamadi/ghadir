"use client";
import { Form } from "@/Components/Promotions/Form";

export default function page(){
    const panel = "admin";
    const access = true;

    return(
        <Form  panel={panel} access={access}/>
    );
}