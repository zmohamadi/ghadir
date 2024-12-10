"use client";
import { useState } from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar as faStarSolid } from "@fortawesome/free-solid-svg-icons";
import { faStar as faStarRegular } from "@fortawesome/free-regular-svg-icons";
import { Input } from "@/Theme/Midone";

export function SetStars({ initialLevel = 0, component,refName="level_id" }) {
  // مدیریت مقدار انتخاب‌شده
  const [level, setLevel] = useState(initialLevel);

  // تابع تغییر مقدار
  const handleSetLevel = (index) => {
    setLevel(index + 1); // مقدار ستاره کلیک‌شده
  };

  return (
    <span
      style={{
        display: "flex",
        flexDirection: "row",
        alignItems: "center",
        justifyContent: "flex-start",
        width: "68px", // عرض مشخص
        overflow: "hidden", // جلوگیری از اضافه‌بار
        cursor: "pointer", // نشانگر کلیک
      }}
    >
      {/* ورودی مخفی برای ثبت مقدار */}
      <Input type="hidden" defaultValue={level} refItem={[component, refName]} />

      {/* نمایش ستاره‌ها */}
      {Array.from({ length: 5 }).map((_, index) => (
        <FontAwesomeIcon
          key={index}
          icon={index < level ? faStarSolid : faStarRegular}
          onClick={() => handleSetLevel(index)} // تنظیم مقدار با کلیک
          style={{
            color: index < level ? "#FFD700" : "#C0C0C0",
            fontSize: "12px",
          }}
        />
      ))}
    </span>
  );
}
