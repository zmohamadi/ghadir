"use client";
import { Form } from "@/Components/Promoters/Form";
export default function Edit({params}){
    return<Form id={params?.id} />;
}