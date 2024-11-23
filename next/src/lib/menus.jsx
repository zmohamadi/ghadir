'use client'

export const getMenus = (user) => {
    const access = user?.role_id==1 ? true : false; 

    const admin = [
        { title: "dashboard", icon: "Home", href: "/dashboard" },
        { title: "promoters", icon: "PenTool", href: "/promoters" },
        { title: "promotions", icon: "Book", href: "/promotions" },
        { title: "supports", icon: "Aperture", href: "/supports" },
        { title: "reports", icon: "Package", href: "/reports" },
        
        { title: "blogs", icon: "Book", href: "/blogs" },
        { title: "comments", icon: "BookOpen", href: "/blogComments" },
        { title: "tickets", icon: "Book", href: "/tickets" },
        { title: "ticket_subjects", icon: "Book", href: "/ticketSubjects" },
        { title: "personnels", icon: "Aperture", href: "/personnels" },

        
    ];
    const promoter = [
       
        { title: "dashboard", icon: "Pocket", href: "/dashboard" },
        { title: "active_promotions", icon: "Book", href: "/promotions" },
        { title: "myPromotions", icon: "Book", href: "/myPromotions" },
        { title: "myReports", icon: "Book", href: "/myReports" },
        { title: "mySupports", icon: "Book", href: "/mySupports" },
        { title: "myTickets", icon: "Book", href: "/myTickets" },
        { title: "blogs", icon: "Book", href: "/blogs" },
      
    ];
    const commonMenus = [
        { title: "profile", icon: "User", href: "/profile" },
        { title: "change_password", icon: "Lock", href: "/change-password" },
    ];

    return access ? [...admin,...commonMenus] :  [...promoter,...commonMenus];
};
