"use client";
import { Form } from "@/Components/Reports/Form";
import { useAuth } from "@/lib";

export default function page(){
    const {user} = useAuth();
    const panel = "admin";
    const access = true;

    return(
        <Form panel={panel} access={access} />
    );
}