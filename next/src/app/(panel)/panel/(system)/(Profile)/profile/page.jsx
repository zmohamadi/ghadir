"use client";

import { useAuth } from "@/lib/auth";
import PersonnelForm from "@/app/(panel)/panel/(system)/(admin)/(Users)/personnels/(form)/form";
// import PromoterForm from "@/app/(panel)/panel/(system)/(admin)/(Users)/promoters/(form)/form";
import { Form } from "@/Components/Promoters/Form";

export default function page()
{
    const {user} = useAuth();
    const role_id = user?.role_id;
    const panel = user?.role_id == 1 ?  "admin" : "promoter";
    const access = user?.role_id == 1 ?  true : false;

    const query = `promoter=${user?.id}`;

    return <>
            {role_id==1 ? <PersonnelForm panel={panel} access={access} />: <Form /> }
            </>;
}