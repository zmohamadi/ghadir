"use client";

import { useConfig, useLang } from "@/lib";
import { Box, useData, useFormRefs } from "@/Theme/Midone";

export default function Notif({notifs}) {
    const { Lang } = useLang();
    const { laraAdmin } = useConfig();
    let {save} = useData();
    let component = useFormRefs();


    const saveItem = (alert) => save(`${laraAdmin}/closeAlert/${alert}`, component, "save");
    
    return (
        <>
     
        {notifs?.length > 0 && (
            <>
                <Box cols={"col-12"}>
                    {notifs.map((notif, index) => {
                        return (
                            <div
                                key={index}
                                className="alert alert-secondary show alert-dismissible flex items-center mb-2"
                                role="alert"
                            >
                                <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    strokeWidth="1.5"
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    className="feather feather-alert-octagon w-6 h-6 ml-2"
                                >
                                    <polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
                                    <line x1="12" y1="8" x2="12" y2="12"></line>
                                    <line x1="12" y1="16" x2="12.01" y2="16"></line>
                                </svg>
                                {notif?.content}
                                <button
                                    type="button"
                                    className="btn-close"
                                    data-bs-dismiss="alert"
                                    aria-label="Close"
                                    onClick={() => saveItem(notif.id)} // اینجا تابع را فراخوانی می‌کنیم
                                >
                                    <svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="24"
                                        height="24"
                                        viewBox="0 0 24 24"
                                        fill="none"
                                        stroke="currentColor"
                                        strokeWidth="1.5"
                                        strokeLinecap="round"
                                        strokeLinejoin="round"
                                        className="feather feather-x w-4 h-4"
                                    >
                                        <line x1="18" y1="6" x2="6" y2="18"></line>
                                        <line x1="6" y1="6" x2="18" y2="18"></line>
                                    </svg>
                                </button>
                            </div>
                        );
                    })}
                </Box>
            </>
        )}
        </>
    );

}
