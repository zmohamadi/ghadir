"use client";
import Form from '@/app/(panel)/panel/(system)/(admin)/(Users)/promoters/(form)/form';

export default function Edit({params,id}){
    let userId = params? params?.id : id;

    return(
        <div>
            <Form id={userId} />
        </div>
    );
}