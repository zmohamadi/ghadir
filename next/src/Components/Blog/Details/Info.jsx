"use client";

import { useState } from "react";
import {InfoHead} from './InfoHead';
import {InfoUserAdmin} from './InfoUserAdmin';
import {InfoReply} from './InfoReply';
import {InfoComments} from './InfoComments';

export const Info = ({ access,item,comments,creator,editor,laraAdmin,mediaPath,Lang }) => {
    let [parentId, setParentId] = useState();

    return(
        <>
        {/* BEGIN: Content */}
            <div className="intro-y news p-5 box mt-1">
            {/* BEGIN: Blog Layout */}
                <InfoHead item={item} mediaPath={mediaPath} Lang={Lang} />
                <div className="intro-y text-justify leading-relaxed" dangerouslySetInnerHTML={{__html: item?.text}} />
                {access? <InfoUserAdmin creator={creator} editor={editor} mediaPath={mediaPath} Lang={Lang} /> :"" }
            {/* END: Blog Layout */}
            {/* BEGIN: Comments */}
                <div className="intro-y mt-5 pt-5 border-t border-gray-200 dark:border-dark-5">
                    <div className="text-base sm:text-lg font-medium">{Lang("public.comments")}</div>   
                </div>
                <InfoComments comments={comments} mediaPath={mediaPath} Lang={Lang} parent={setParentId} parentId={parentId} />
                <InfoReply laraAdmin={laraAdmin} blogId={item?.id} parentId={parentId} />
            {/* END: Comments */}
            </div>
        {/* END: Content */}
        </>
    );
}