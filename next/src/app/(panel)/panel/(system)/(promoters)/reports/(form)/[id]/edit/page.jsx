"use client";
import Form from '@/app/(panel)/panel/(system)/(promoters)/reports/(form)/form';

export default function page({params}){
    const panel = "promoter";

    return(
        <Form id={params?.id} panel={panel} />
    );
}