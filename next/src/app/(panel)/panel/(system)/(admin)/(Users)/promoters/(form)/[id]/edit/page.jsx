"use client";
import { Form } from "@/Components/Promoters/Form";

export default function Edit({params}){
    return(
        <div>
            <Form id={params?.id} />
        </div>
    );
}