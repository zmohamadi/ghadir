"use client";

import { List } from "@/Components/Promotions/List";
import { useAuth } from "@/lib";

export default function Page() {
    const {user} = useAuth();
    const query = `promoter=${user?.id}`;
    return <List query={query} />;
}
