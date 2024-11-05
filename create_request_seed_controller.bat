@echo off
setlocal EnableDelayedExpansion
cd Core

rem تعریف آرایه‌ای از نام‌های مدل‌ها
set MODELS=User UserPromotion CulturalUser Promotion Level Note City Province Role Status Support Blog SupportType Ticket TicketSubject Ritual PromotionReport RitualReport Tribune Course Education AudienceType

rem حلقه برای ایجاد Request، Seeder و Controller برای هر مدل
for %%M in (%MODELS%) do (
  set REQUEST_NAME=%%MRequest
  set SEEDER_NAME=%%MSeeder
  set CONTROLLER_NAME=%%MController

  rem ایجاد Request
  php artisan make:request !REQUEST_NAME!

  rem ایجاد Seeder
  php artisan make:seeder !SEEDER_NAME!

  rem ایجاد Controller
  php artisan make:controller !CONTROLLER_NAME!

  echo Request, Seeder, and Controller created for %%M
)
