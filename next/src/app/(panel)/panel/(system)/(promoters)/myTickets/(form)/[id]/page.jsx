"use client";

import { useAuth } from '@/lib';
import View from '@/Components/Ticket/View';

export default function ShowInfo({ params }){
    const {user} = useAuth();
    
    let filterStatus = (user?.role_id == 1)? false : true;

    return(
        <View id={params?.id} filterStatus={filterStatus} />
    );
}