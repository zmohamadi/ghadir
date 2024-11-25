"use client";

import {List as Items} from '@/Components/TicketSubject/List';
import { useAuth } from '@/lib';

export default function List(){
    const {user} = useAuth();
    const panel = user?.role_id == 1 ?  "admin" : "promoter";
    const access = user?.role_id == 1 ?  true : false;

    return(
        <Items panel={panel} access={access} />
    );
}