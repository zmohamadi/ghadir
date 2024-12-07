"use client";
import { Form } from "@/Components/Reports/Form";
import { useAuth } from "@/lib";

export default function page({params}){
    const {user} = useAuth();  
    return(
        <Form promoter={user?.id} id={params?.id} />
    );
}