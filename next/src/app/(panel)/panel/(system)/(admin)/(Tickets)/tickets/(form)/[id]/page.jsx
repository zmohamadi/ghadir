"use client";

import { useAuth } from '@/lib';
import View from '@/Components/Ticket/View';

export default function ShowInfo({ params }){
    const {user} = useAuth();
    let filterStatus = true;
    let formUrl = "";
    if(user?.role_id == 1)
    {
        filterStatus = false;
        formUrl = "/tickets";
    }

    return(
        <View id={params?.id} filterStatus={filterStatus} formUrl={formUrl} />
    );
}