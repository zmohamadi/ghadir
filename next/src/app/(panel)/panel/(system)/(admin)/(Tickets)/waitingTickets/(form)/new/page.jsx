"use client";

import { useAuth } from '@/lib';
import Form from '@/Components/Ticket/Form';

export default function New(){
    const {user} = useAuth();

    return(
        user?.role_id == 1 ? <div className="alert alert-danger show mb-2 mt-10">Not Access</div> :  <Form />
    );
}