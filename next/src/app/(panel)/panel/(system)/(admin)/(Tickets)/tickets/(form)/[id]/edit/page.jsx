"use client";

import Form from '@/Components/Ticket/Form';

export default function Edit({ params }){
    return(
        <Form id={params?.id} panel="admin" />
    );
}