"use client";

import View from '@/Components/TicketSubject/View';

export default function ShowInfo({ params }){

    return(
        <View id={params?.id} />
    );
}