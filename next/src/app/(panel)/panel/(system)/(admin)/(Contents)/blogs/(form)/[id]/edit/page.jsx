"use client";

import Form from '@/Components/Blog/Form';

export default function Edit({ params }){
    return(
        <Form id={params?.id} />
    );
}