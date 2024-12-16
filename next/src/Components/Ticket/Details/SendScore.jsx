"use client";

// import { SetStars } from '@/Components/Public/SetStars';
import { useConfig } from '@/lib/config';
import { useData,useFormRefs,Button,ButtonContainer } from "@/Theme/Midone/Forms";
import { Tools } from "@/Theme/Midone/Utils";

export const SendScore = ({ item,Lang }) => {
    const {laraAdmin} = useConfig();
    let component = useFormRefs();
    let { save } = useData();
    const formUrl = "/tickets";

    let url = laraAdmin+formUrl+"/save-evaluate/"+item?.id, method = "edit";

    const saveItem = ()=>save(url, component, method, formUrl);

    return(
        <>
            {(item?.score > 0)?
                <div className=" mt-6 alert alert-success-soft show ">
                    <div className="flex justify-between flex-wrap gap-3">
                        <div className="">
                            <div className=" text-opacity-70 flex items-center leading-3">{Lang(["public.your_evaluate"])}<i data-feather="alert-circle" className="tooltip w-4 h-4 ml-1.5" title="ارزش کلی فروش شما: 158.409.416 تومان"></i> </div>
                            <div className=" relative text-2xl font-medium leading-5 mt-3.5 ltr">
                                <span className="absolute text-lg font-bold top-0 left-0 -mt-1.5"> </span> {Tools?.toJalaliDateString(item?.created_at)}
                            </div>
                        </div>
                        <span className=" btn btn-success rounded-full w-12 h-12">
                        {item?.score}
                        </span>
                    </div>
                </div>
            :
                <>
                    <div className="box flex p-5 mt-5">
                        <div className="w-full relative text-gray-700">
                            <SetStars defaultValue={0} component={component} refName='score' />

                        </div>
                        <ButtonContainer>
                            <Button label="save_score" onClick={saveItem} component={component} />
                        </ButtonContainer>
                    </div>
                </>
            }
        </>
    );
}