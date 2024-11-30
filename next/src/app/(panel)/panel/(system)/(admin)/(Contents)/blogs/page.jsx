"use client";

import { useAuth } from '@/lib';
import {List as Items} from '@/Components/Blog/List';

export default function List(){
    const {user} = useAuth();
    const access = user?.role_id == 1 ? true : false;

    return(
        <Items access={access} />
    );
}