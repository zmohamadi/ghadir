"use client";
import { useConfig } from "@/lib/config";
import { useLang } from "@/lib/lang";
import { useData, useFormRefs, Button, ButtonContainer, Frame, Box } from "@/Theme/Midone/Forms";
import { useRouter } from 'next/navigation';
import { Dropzone } from "@/Theme/Midone/Forms/Dropzone";

export default function Page() {
    const { Lang } = useLang();
    const { laraAdmin } = useConfig();
    const router = useRouter();
    let component = useFormRefs();
    const { save } = useData();

    let uploadUrl = laraAdmin + "/upload/.-media-users";
    let deleteUrl = laraAdmin + "/deleteFile/.-media-users";
    let uploadDir = 'media/users/';
   
    const saveItem = () => save(
        laraAdmin + "/students/excel",
        component,
        "new",
        "/students"
    );
    const back = () => router.back();

    return (
        <>
            <Frame title={Lang(["public.students"])}>
                <Box>
                
                    <Dropzone 
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
                <Button label="back" onClick={back} />
            </ButtonContainer>   
        </>
    );
}
