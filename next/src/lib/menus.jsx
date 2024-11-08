'use client'

export const getMenus = (user) => {
    const access = user?.role_id==1 ? true : false; 

    const admin = [
        { title: "dashboard", icon: "Home", href: "/dashboard" },
        { title: "promoters", icon: "PenTool", href: "/promoters" },
        { title: "personnels", icon: "Aperture", href: "/personnels" },
        
        { title: "promotions", icon: "Book", href: "/promotions" },
        { title: "supports", icon: "Aperture", href: "/supports" },
        // { title: "reports", icon: "Package", href: "/promotion_reports" },
        
        // { title: "blog", icon: "Book", href: "/blog" },
        // { title: "comments", icon: "BookOpen", href: "/comments" },
        // { title: "tickets", icon: "Book", href: "/tickets" },
        
    ];
    const promoter = [
       
        { title: "dashboard", icon: "Pocket", href: "/promotions" },
        { title: "promotions", icon: "Book", href: "/promotions" },
        { title: "register_promotions", icon: "Package", href: "/register_promotions" },
        { title: "myPromotions", icon: "Book", href: "/myPromotions" },
        { title: "myReports", icon: "Book", href: "/myReports" },
        { title: "mySupports", icon: "Book", href: "/mySupports" },
        // { title: "blog", icon: "Book", href: "/blog" },
        // { title: "tickets", icon: "Book", href: "/myTickets" },
      
    ];
    const commonMenus = [
        { title: "profile", icon: "User", href: "/profile" },
        { title: "change_password", icon: "Lock", href: "/change-password" },
    ];

    return access ? [...admin,...commonMenus] :  [...promoter,...commonMenus];
};
