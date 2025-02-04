"use client";
import { Form } from "@/Components/Reports/Form";
import { FormPromoter } from "@/Components/Reports/FormPromoter";
import { useAuth } from "@/lib";

export default function page(){
    const {user} = useAuth();
    const access = user?.role_id == 1 ? true : false ; 
// console.log(access);

    return access ?  <Form access={true} /> : <FormPromoter access={false} promoter={user?.id} /> ;
}