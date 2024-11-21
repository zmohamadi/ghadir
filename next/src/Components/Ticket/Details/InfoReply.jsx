"use client";

import { useData,useFormRefs,Button,Input,Textarea,CheckBox,Frame } from "@/Theme/Midone/Forms";

export const InfoReply = ({ laraAdmin,ticketId,parentId=0 }) => {
    let { save } = useData();
    let component = useFormRefs();
    const saveItem = ()=>save(laraAdmin+`/ticket-comment/send?b=${ticketId}&p=${parentId}`, component, "save", `/tickets/${ticketId}?`+Math.random());

    console.log(ticketId+" --- "+parentId);
    return(
        <>
            {/* <div className="news__input relative mt-5">
                <FeatherIcon name="MessageCircle" className="w-5 h-5 absolute my-auto inset-y-0 mr-6 right-0 text-gray-600" />
                <i data-feather="message-circle" className="w-5 h-5 absolute my-auto inset-y-0 mr-6 right-0 text-gray-600"></i> 
                <textarea className="form-control border-transparent bg-gray-200 pl-16 py-6 placeholder-theme-8 resize-none" rows="1" placeholder="نظر خود را بنویسید..."></textarea>
            </div> */}
            <Textarea placeholder="نظر خود را بنویسید..." refItem={[component, "comment"]} required="true"
            />
            <Button className="btn btn-primary w-20 m-3" label="send" onClick={saveItem} />
        </>
    );
}