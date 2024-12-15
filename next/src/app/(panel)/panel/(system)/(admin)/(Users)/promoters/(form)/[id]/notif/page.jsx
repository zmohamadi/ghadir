"use client";
import { Form } from "@/Components/Promoters/Notif";
export default function Notif({params}){
    return<Form id={params?.id} />;
}