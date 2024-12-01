"use client";

import { useConfig } from '@/lib/config';
import { useData,useFormRefs,Button,Radio,ButtonContainer } from "@/Theme/Midone/Forms";
import { Tools } from "@/Theme/Midone/Utils";

export const SendScore = ({ item,Lang }) => {
    const {laraAdmin} = useConfig();
    let component = useFormRefs();
    let { save } = useData();
    const formUrl = "/tickets";

    let url = laraAdmin+formUrl+"/save-evaluate/"+item?.id, method = "edit";

    const saveItem = ()=>save(url, component, method, formUrl);

    let options= [];
    for(let i=1; i<=5; i++)
    {
        options.push({id: i, value: i});
    }

    return(
        <>
            {(item?.score > 0)?
                <div className="box p-5 mt-6 bg-theme-10 intro-x">
                    <div className="flex flex-wrap gap-3">
                        <div className="mr-auto">
                            <div className="text-white text-opacity-70 flex items-center leading-3">{Lang(["public.your_evaluate"])}<i data-feather="alert-circle" className="tooltip w-4 h-4 ml-1.5" title="ارزش کلی فروش شما: 158.409.416 تومان"></i> </div>
                            <div className="text-white relative text-2xl font-medium leading-5 pl-3.5 mt-3.5 ltr">
                                <span className="absolute text-lg font-bold top-0 left-0 -mt-1.5"> </span> {Tools?.toJalaliDateString(item?.created_at)}
                            </div>
                        </div>
                        <span className="flex items-center justify-center w-12 h-12 rounded-full bg-white dark:bg-dark-1 bg-opacity-20 hover:bg-opacity-30 text-white">
                            {item?.score}
                        </span>
                    </div>
                </div>
            :
                <>
                    <div className="box flex p-5 mt-5">
                        <div className="w-full relative text-gray-700">
                            <Radio label="evaluate" type="col" data={options} titleKey="id" titleValue="value" defaultValue={3} refItem={[component, "score"]} />
                        </div>
                        <ButtonContainer>
                            <Button label="save_score" onClick={saveItem} />
                        </ButtonContainer>
                    </div>
                </>
            }
        </>
    );
}