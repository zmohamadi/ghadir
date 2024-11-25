"use client";

import {List as Items} from '@/Components/Ticket/List';
import { useAuth } from '@/lib';

export default function List(){
    const {user} = useAuth();
    let access = false;
    let query = `filter=MyTicket`;
    let formUrl = "/myTickets";
    if(user?.role_id == 1)
    {
        access = true;
        query = `filter=AllTicket`;
        formUrl = "/tickets";
    }

    return(
        <Items access={access} query={query} formUrl={formUrl} />
    );
}