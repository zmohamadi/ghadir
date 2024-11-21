"use client";

import View from '@/Components/Blog/View';

export default function ShowInfo({ params }){
    return(
        <View id={params?.id} />
    );
}