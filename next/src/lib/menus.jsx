'use client'
// import { useAuth } from "@/lib/auth";
// const { user } = useAuth({ guard: "admin" });

export const getMenus = (user) => {
    // نقش های استاد دانشجو و استادیار منوی محدود دارند
    // const access = ![1, 2, 3].includes(user?.role_id); 
    const access = true; 

    const commonMenus = [
        { title: "dashboard", icon: "Home", href: "/dashboard" },
        // { title: "myCourses", icon: "Book", href: "/myCourses" },
        // { title: "myCalendar", icon: "Calendar", href: "/myCalendar" }
    ];

    const adminMenus = [
        // {
        //     title: "base_management", icon: "Server", open: false, 
        //     childs: [
        //         { title: "cities", icon: "Aperture", href: "/cities" },
        //         { title: "provinces", icon: "Feather", href: "/provinces" },
        //         // { title: "tools", icon: "Tag", href: "/baseTools" },
        //     ]
        // },
        {
            title: "promotions", icon: "Pocket", open: false, 
            childs: [
                { title: "promotions", icon: "Book", href: "/promotions" },
                { title: "promotion_reports", icon: "Package", href: "/promotion_reports" },
                { title: "supports", icon: "Aperture", href: "/supports" },
            ]
        },
        {
            title: "users", icon: "Shield", open: false, 
            childs: [
                { title: "users", icon: "List", href: "/users" },
                { title: "cultural_users", icon: "PenTool", href: "/cultural_users" },
                { title: "personnels", icon: "Aperture", href: "/personnels" },
                { title: "roles", icon: "Framer", href: "/roles" },
                { title: "access", icon: "Settings", href: "/access" },
            ]
        },
        {
            title: "blog", icon: "PenTool", open: false, 
            childs: [
                { title: "blog", icon: "Book", href: "/blog" },
                { title: "comments", icon: "BookOpen", href: "/comments" },
            ]
        },
        {
            title: "tickets", icon: "PenTool", open: false, 
            childs: [
                { title: "tickets", icon: "Book", href: "/blog" },
                { title: "ticket_subjects", icon: "BookOpen", href: "/ticket_subjects" },
            ]
        },
       
        // {
        //     title: "reports", icon: "Monitor", open: false, 
        //     childs: [
        //         { title: "reports", icon: "Monitor", href: "/reports" },
        //     ]
        // }
    ];
    const commonMenus2 = [
        // { title: "edit_profile", icon: "User", href: "/editProfile" },
        { title: "profile", icon: "User", href: "/viewProfile" },
        { title: "change_password", icon: "Lock", href: "/changePassword" },
    ];

    return access ? [...commonMenus, ...adminMenus,...commonMenus2] :  [...commonMenus,...commonMenus2];
};
