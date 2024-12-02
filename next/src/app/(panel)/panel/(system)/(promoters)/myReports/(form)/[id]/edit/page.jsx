"use client";
import { Form } from "@/Components/Reports/Form";
import { useAuth } from "@/lib";

export default function page({params}){
    const panel = "promoter";
    const {user} = useAuth();
    const access = false;
    return(
        <Form access={access} user={user?.id} id={params?.id} panel={panel} />
    );
}