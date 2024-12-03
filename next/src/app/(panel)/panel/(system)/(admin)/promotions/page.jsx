"use client";

import { List } from "@/Components/Promotions/List";
import { useAuth } from "@/lib";

export default function Page() {
    const {user} = useAuth();
    const query = user?.role_id == 2 &&`register_status=1`;

    return <List query={query} />;
}
