"use client";

import { List } from "@/Components/Reports/List";
import { useAuth } from "@/lib";

export default function Page() {
    const {user} = useAuth();
    const panel = "admin";
    const access = true;

return <List access={access} panel={panel} />;
}
