"use client";

import { useConfig, useLang } from "@/lib";
import Link from "next/link";
import { useAuth } from "@/lib/auth";
import { Box, ButtonContainer } from "@/Theme/Midone";

export default function Blog({blogs}) {
    const { Lang } = useLang();
    const { laraAdmin, mediaPath, nextAdmin } = useConfig();
    
    return (
        <>
        {blogs?.length > 0 && (
            <>
                <Box  title={Lang('public.blog')}  cols={"cols-12"}>
                    {blogs.map((blog, index) => {
                        return (<>
                            <div class="alert alert-success-soft show mb-2" role="alert">
                                <div class="flex items-center">
                                    <Link href={`${nextAdmin}/blogs/${blog?.id}`}> <div class="font-medium text-lg">{blog?.title}</div> </Link>
                                    <div class="text-xs bg-white px-1 rounded-md text-gray-800 mr-auto">{blog?.subject?.title ? blog?.subject?.title : Lang('public.new')}</div>
                                </div>
                                <div className="mt-3" 
                                    dangerouslySetInnerHTML={{
                                        __html: blog?.summary || blog?.text || ""
                                    }} 
                                />
                                <ButtonContainer>
                                    <Link className="btn btn-success" href={`${nextAdmin}/blogs/${blog?.id}`}>{Lang('public.view')}</Link>
                                </ButtonContainer>
                                </div>
                        </>
                                
                        );
                    })}
                </Box>
            </>
        )}
        </>
    );

}
