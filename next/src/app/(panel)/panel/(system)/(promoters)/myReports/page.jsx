"use client";

import { List } from "@/Components/Reports/List";
import { useAuth } from "@/lib";

export default function Page() {
    const {user} = useAuth();
    const panel = "promoter";
    const access = false;

    const query = `promoter=${user?.id}`;

    return <List access={access} query={query} panel={panel} />;
}