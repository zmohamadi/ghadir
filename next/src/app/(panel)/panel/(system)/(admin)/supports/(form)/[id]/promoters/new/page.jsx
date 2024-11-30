"use client";
import { NewPromoter } from "@/Components/Supports/NewPromoter"

export default function page({params}){

    return(
        <div>
            <NewPromoter  params={params}/>
        </div>
    );
}
