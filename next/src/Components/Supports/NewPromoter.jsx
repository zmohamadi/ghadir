"use client";
import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import { useData, useFormRefs, Input, Button, ButtonContainer, Box, Frame, Radio } from "@/Theme/Midone/Forms";
import { useSearchParams } from 'next/navigation';
import { Toast } from '@/Theme/Midone/Utils/Toast';
import { useUtility } from "@/lib";
import { useRouter } from 'next/navigation';
// import Link from "next/link";

export function NewPromoter({ params }) {
    const { Lang } = useLang();
    const { laraAdmin } = useConfig();
    const component = useFormRefs();
    const router = useRouter();

    // Used for component reload!!
    let pload = useSearchParams().get('pload');
    const { reload } = useUtility();
    
    const { save, get, getNeedles } = useData();

    const [promoters, setStudents] = useState([]);
    const [promoter, setStudent] = useState({});
    const formUrl = "/supports";
    const support = params?.id;
    const url = support ? `${laraAdmin}${formUrl}/${support}` : laraAdmin + formUrl;    

    useEffect(() => {
        setStudent({})
        setStudents([])
        get(url, component, "info");
    }, [url, pload]);

    const searchStudent = () => {
        const value = component?.state?.refs?.current?.promoter_code?.value;
        if (!value) {
            Toast.error(Lang('public.error-422'), Lang('public.dear_user'), 3000);
            return;
        }
        getNeedles(`${laraAdmin}/search-promoter/${value}/${support}`, setStudents);
    };

    const handleStudentSelection = (selectedStudent) => setStudent(selectedStudent);
    const saveItem = () => save(`${url}/promoters/new`, component, "save", `/supports/${support}/promoters/new`,()=>{reload()});
    const back = () => router.back();
    const data = component?.state?.info;

    return (
        <>
            <Frame key={pload}>
                <Box title={Lang('public.register_to_support')}>
                    <div className="font-bold p-2">{Lang('promoter')}</div>
                    <Input 
                        // required 
                        label=" "
                        placeholder={Lang('public.search_promoter_for_new_support')}
                        refItem={[component, "promoter_code"]}
                        onEnter = {searchStudent}
                    />
                    <ButtonContainer className="mt-1">
                        <Button label="search" onClick={searchStudent} />
                    </ButtonContainer>
                </Box>
                {promoters.length > 0 && (
                    <Box title={Lang('public.list')} cols={1}>
                        <table className="table-auto w-full mt-4 border-collapse border border-gray-300">
                            <thead>
                                <tr>
                                    <th className="border border-gray-300 p-2">ID</th>
                                    <th className="border border-gray-300 p-2">{Lang('public.name')}</th>
                                    <th className="border border-gray-300 p-2">{Lang('public.lname')}</th>
                                    <th className="border border-gray-300 p-2">{Lang('public.mobile')}</th>
                                    <th className="border border-gray-300 p-2">{Lang('public.level')}</th>
                                    <th className="border border-gray-300 p-2"></th>
                                </tr>
                            </thead>
                            <tbody>
                                {promoters.map((promoter) => (
                                    <tr key={promoter.id}>
                                        <td className="border border-gray-300 p-2">{promoter.id}</td>
                                        <td className="border border-gray-300 p-2">{promoter.firstname}</td>
                                        <td className="border border-gray-300 p-2">{promoter.lastname}</td>
                                        <td className="border border-gray-300 p-2">{promoter.mobile}</td>
                                        <td className="border border-gray-300 p-2">{promoter.level_id}</td>
                                        <td className="border border-gray-300 p-2">
                                            {promoter.userInSupport == false ?(
                                                <Radio 
                                                    id="select" 
                                                    label="select" 
                                                    data={[promoter.id]} 
                                                    refItem={[component, `promoter_${promoter.id}`]} 
                                                    onChange={() => handleStudentSelection(promoter)} 
                                                    defaultValue="0"
                                                    required 
                                                />
                                            ) : (
                                                <>
                                                    <span className="btn btn-success">
                                                        {Lang('public.registered')}
                                                    </span>
                                                </>
                                            )}
                                        </td>
                                    </tr>
                                ))}
                            </tbody>
                        </table>
                    </Box>
                )}
                {promoter?.id && (
                    <Box>
                        <Input 
                            label="promoter" 
                            defaultValue={`${promoter.firstname} ${promoter.lastname}`} 
                            refItem={[component, "promoter"]} 
                        />
                        <Input type="hidden" defaultValue={promoter.id} refItem={[component, "promoter_id"]} />
                        <Input type="hidden" defaultValue={support} refItem={[component, "support_id"]} />
                    </Box>
                )}
            </Frame>
            <ButtonContainer>
                {promoter?.id ? (
                    <>
                        <Button label="save" onClick={saveItem} />
                        <Button label="back" onClick={back} />
                    </>
                ) : (
                    <Button label="back" onClick={back} />
                )}
            </ButtonContainer>
        </>
    );
}
