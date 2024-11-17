"use client";
import Form from '@/app/(panel)/panel/(system)/(promoters)/registerPromotion/(form)/form';

export default function page({params}){
    const panel = "promoter";

    return(
        <Form id={params?.id} panel={panel} />
    );
}