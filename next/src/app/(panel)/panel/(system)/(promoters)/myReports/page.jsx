"use client";

import { List } from "@/Components/Reports/List";
import { useAuth } from "@/lib";

export default function Page() {
    const {user} = useAuth();
    const query = `promoter=${user?.id}`;
    return <List query={query} />;
}