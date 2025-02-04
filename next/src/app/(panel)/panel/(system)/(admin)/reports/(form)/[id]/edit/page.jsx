"use client";
import { Form } from "@/Components/Reports/Form";
import { FormPromoter } from "@/Components/Reports/FormPromoter";
import { useAuth } from "@/lib";

export default function page({params}){
     const {user} = useAuth();
        const access = user?.role_id == 1 ? true : false ; 
    
    // return(
    //     <Form id={params?.id} />
    // );
    return access ?  <Form access={true} id={params?.id}/> : <FormPromoter id={params?.id} access={false} promoter={user?.id} /> ;
    
}