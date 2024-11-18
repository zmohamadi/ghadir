"use client";

import { List } from "@/Components/Promotions/List";
import { useAuth } from "@/lib";

export default function Page() {
    const {user} = useAuth();
    const panel = user?.role_id == 1 ?  "admin" : "promoter";
    const access = user?.role_id == 1 ?  true : false;

    return <List panel={panel} access={access} />;
}
