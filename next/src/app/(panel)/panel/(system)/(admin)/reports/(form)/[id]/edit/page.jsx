"use client";
import { Form } from "@/Components/Reports/Form";
import { useAuth } from "@/lib";

export default function page({params}){
    const {user} = useAuth();
    const panel = "admin";
    const access = true;

    return(
        <Form id={params?.id} panel={panel} access={access} />
    );
}