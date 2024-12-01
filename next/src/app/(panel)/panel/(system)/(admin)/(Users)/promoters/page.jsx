"use client";
import { List } from "@/Components/Promoters/List";
import { useAuth } from "@/lib";

export default function page(){
    // const { user } = useAuth({ guard: "admin" });
    const { user } = useAuth({});
    console.log("user");
    console.log(user);
    const panel = user?.role_id == 1 ?  "admin" : "promoter";
    const access = user?.role_id == 1 ?  true : false;
    // const query = user?.role_id == 2 &&`register_status=1`;

    return(
        <List panel={panel} access={access} />
    );
}