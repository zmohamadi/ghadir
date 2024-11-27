"use client";

import { useAuth } from '@/lib';
import {List as Items} from '@/Components/Ticket/List';

export default function List(){
    const {user} = useAuth();
    let access = false;
    let query = `filter=MyTicket`;
    let formUrl = "/myTickets";
    if(user?.role_id == 1)
    {
        access = true;
        query = `filter=NotClosed`;
        formUrl = "/waitingTickets";
        // formUrl = "/tickets";
    }

    return(
        <Items access={access} query={query} formUrl={formUrl} />
    );
}