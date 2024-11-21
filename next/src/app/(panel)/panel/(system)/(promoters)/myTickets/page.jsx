"use client";

import {List as Items} from '@/Components/Ticket/List';
import { useAuth } from '@/lib';

export default function List(){
    const {user} = useAuth();
    const panel = user?.role_id == 1 ?  "admin" : "promoter";
    const access = user?.role_id == 1 ?  true : false;

    const query = `promoter=${user?.id}`;

    return(
        <Items access={access} query={query} panel={panel} />
    );
}