"use client";
import { List } from "@/Components/Reports/List";
export default function Page({params}) {
return <List promotion={params?.promotion} promoter={params?.promoter} />;
}
