"use client";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faStar as faStarSolid } from '@fortawesome/free-solid-svg-icons';
import { faStar as faStarRegular } from '@fortawesome/free-regular-svg-icons';

export function Stars({ level = 0 }) {
  // console.log(level);

  // مقدار معتبر برای سطح (بین 0 تا 5)
  const validLevel = Math.min(Math.max(level, 0), 5);

  return (
    <span
      style={{
        display: "flex",
        flexDirection: "row",
        alignItems: "center",
        justifyContent: "flex-start",
        width: "68px", // عرض مشخص
        overflow: "hidden", // جلوگیری از اضافه‌بار
      }}
    >
      {Array.from({ length: 5 }).map((_, index) => (
        <FontAwesomeIcon
          key={index}
          icon={index < validLevel ? faStarSolid : faStarRegular}
          style={{
            color: index < validLevel ? "#FFD700" : "#C0C0C0",
            fontSize: "12px",
            // marginRight: "2px",
          }}
        />
      ))}
    </span>
  );
};
