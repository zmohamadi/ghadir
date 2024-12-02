"use client";
import { Form } from "@/Components/Promotions/Form";

export default function page(){
    const panel = "promoter";
    const access = false;
    return(
        <Form access={access} panel={panel} />
    );
}