"use client";

import { useConfig, useLang } from "@/lib";
import Link from "next/link";
import { useAuth } from "@/lib/auth";
import * as Icon from "react-feather";
import { Box, Button, ButtonContainer, CheckBox, Input, useData, useFormRefs } from "@/Theme/Midone";
import { useEffect } from "react";
import { CheckBoxGroup } from "@/Theme/Midone/Forms/CheckBoxGroup";

export default function Promotion({promotions}) {
    const { Lang } = useLang();
    const { laraAdmin, mediaPath, nextAdmin } = useConfig();
    const {user} = useAuth({guard: "admin"});
    let {save} = useData();
    let component = useFormRefs();


    const agreeItem = ()=>save(`${laraAdmin}/agree`, component, "new", `/promotions`);

    return (
       <>
        {promotions?.length > 0 && (
            <>
                <Box title={Lang('public.promotion')} cols={"col-6"}>
                    {promotions.map((promotion, index) => {
                        let agree = promotion?.agrees[0];

                        return (
                            <>
                            <Input type="hidden" defaultValue={promotion.id} refItem={[component, "promotion_id"]} />
                            {/* <Input type="hidden" defaultValue={user.id} refItem={[component, "promoter_id"]} /> */}

                            <div class="alert alert-secondary show mb-2" role="alert">
                                <div class="flex items-center">
                                    <div class="font-medium text-lg">{promotion?.title}</div>
                                    <div class="text-xs bg-gray-600 px-1 rounded-md text-white mr-auto">{promotion?.year}</div>
                                </div>
                                <div className="mt-3" 
                                    dangerouslySetInnerHTML={{
                                        __html: promotion?.comments
                                    }} 
                                />
                                {
                                    promotion?.has_tribune&& <CheckBox 
                                        name={Lang("public.ready")} 
                                        className="mt-5" 
                                        label={Lang("public.holding_course")} 
                                        refItem={[component, "agree_has_tribune"]}
                                        defaultValue={agree?.has_tribune}
                                    />
                                }
                                {
                                    promotion?.has_course&&  <CheckBox
                                        name={Lang("public.ready")} 
                                        className="mt-5" 
                                        label={Lang("public.holding_course")} 
                                        refItem={[component, "agree_has_course"]}
                                        defaultValue={agree?.has_course}
                                    />
                                }
                                {
                                    promotion?.rituals&&  <CheckBoxGroup  data={promotion?.rituals} 
                                            key={"ritual" + promotion?.rituals?.length} label={Lang('public.ritual')}  
                                            id="ritual" refItem={[component, `agree_ritual`]}
                                            defaultValue={agree?.rituals}
                                     />
                                }
                                </div>
                                <ButtonContainer>
                                    <Button label="register" onClick={agreeItem} />
                                    <Link className="btn btn-primary" href={`${nextAdmin}/reports/new?promotion=${promotion?.id}`}>{Lang('public.report')}</Link>
                                </ButtonContainer>
                            </>
                        );
                    })}
                </Box>
                
            </>
        )}
        </>
    );

}
