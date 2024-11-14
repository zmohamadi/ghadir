"use client";

import { useAuth } from "@/lib/auth";
import PersonnelForm from "@/app/(panel)/panel/(system)/(admin)/(Users)/personnels/(form)/form";
// import PromoterForm from "@/app/(panel)/panel/(system)/(admin)/(Users)/promoters/(form)/form";
import { Form } from "@/Components/Promoters/Form";

export default function page()
{
    const {user} = useAuth({guard: "admin"});
    const role_id = user?.role_id;

    return <>
            {role_id==1 ? <PersonnelForm />: <Form /> }
            </>;
}