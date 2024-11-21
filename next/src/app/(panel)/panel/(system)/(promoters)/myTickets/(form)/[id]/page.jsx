"use client";

import View from '@/Components/Ticket/View';

export default function ShowInfo({ params }){
    return(
        <View id={params?.id}  panel="promoter" />
    );
}