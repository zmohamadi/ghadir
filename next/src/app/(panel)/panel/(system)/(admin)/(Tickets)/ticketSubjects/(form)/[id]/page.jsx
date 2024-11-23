"use client";

import View from '@/Components/TicketSubject/View';
import { useAuth } from '@/lib';

export default function ShowInfo({ params }){

    return(
        <View id={params?.id} />
    );
}