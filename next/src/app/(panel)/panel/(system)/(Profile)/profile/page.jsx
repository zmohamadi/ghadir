"use client";

import { useAuth } from "@/lib/auth";
import PersonnelForm from "@/app/(panel)/panel/(system)/(admin)/(Users)/personnels/(form)/form";
import { Form } from "@/Components/Promoters/Form";
export default function page()
{
    const {user} = useAuth();
    const role_id = user?.role_id;
    return role_id == 1 ? <PersonnelForm />: <Form /> ;
}