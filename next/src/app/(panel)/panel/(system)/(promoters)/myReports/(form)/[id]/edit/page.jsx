"use client";
import { Form } from "@/Components/Reports/Form";

export default function page({params}){
    const panel = "promoter";

    return(
        <Form id={params?.id} panel={panel} />
    );
}