"use client";
import { useConfig } from "@/lib/config";
import { useLang } from "@/lib/lang";
import { useData, useFormRefs, Button, ButtonContainer, Frame, Box } from "@/Theme/Midone/Forms";
import { useRouter } from 'next/navigation';
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";
import Link from "next/link";

export default function Page({ params }) {
    const course = params?.id || ''; // Safeguard against undefined params
    const { Lang } = useLang();
    const { laraAdmin, nextAdmin,mediaPath } = useConfig();
    const router = useRouter();
    let component = useFormRefs();
    const { save} = useData();

    let uploadUrl = laraAdmin + "/upload/.-media-users";
    let deleteUrl = laraAdmin + "/deleteFile/.-media-users";
    let uploadDir = 'media/users/';
   
    const saveItem = () => save(
        laraAdmin + "/promoters/excel",
        component,
        "new",
        "/promoters"
    );
    const back = () => router.back();

    return (
        <>
            <Frame title={Lang(["public.promoters"])}>
                <Box>
                    <p className="col-span-12">
                        1) لطفا بررسی کنید نام و نام خانوادگی و شماره موبایل در همه سطرهای فایل اکسل پر شده باشد !
                    </p>
                    <p className="col-span-12">
                        2) لطفا بررسی کنید در فایل اکسل شماره موبایل تکراری ثبت نشده باشد !
                    </p>
                    <p className="col-span-12">
                        3) لطفا بررسی کنید در فایل اکسل شماره موبایل به همراه 0 در ابتدای آن ثبت شده باشد !
                    </p>

                    <Dropzone className="col-span-12"
                        required={true} 
                        refItem={[component, "excel_file"]} 
                        uploadUrl={uploadUrl} 
                        deleteUrl={deleteUrl + "/"} 
                        uploadDir={uploadDir} 
                    />
                </Box>
            </Frame>
            <ButtonContainer>

                <Button label="save" onClick={saveItem} />
                <Link className="btn btn-success mr-1 ml-1" target="_blanket" href={`${mediaPath}/users/users.xlsx`}>{Lang(["public.example_excel"])}</Link>
                <Button label="back" onClick={back} />
            </ButtonContainer>   
        </>
    );
}
