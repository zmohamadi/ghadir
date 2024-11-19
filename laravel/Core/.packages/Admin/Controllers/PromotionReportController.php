<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;
use Models\Course;
use Models\Tribune;
use Models\RitualReport;

class PromotionReportController extends BaseAbstract
{
    protected $model = 'Models\PromotionReport';
    protected $request = 'Publics\Requests\PromotionReportRequest';
    protected $searchFilter = ['title'];
    protected $with = ["promotion"];
    protected $showWith = ["promotion","tribunes.audienceType","courses.audienceType","ritualReports.ritual"];
    protected $files = ["photo"];
    protected $needles = ['Base\Status',"Ritual","Base\City", "Base\Province","Promotion","AudienceType"];


    public function init()
    {
        $this->indexQuery = function ($query) {
            $query->where('promoter_id', $this->user_id);
        };

        $this->storeQuery = function ($query) {
            $promotion = request()->promotion_id;
            $user_id = $this->user_id;
            $query->promoter_id = $this->user_id;
            $query->save();
        
            // ************************************ Course ************************************
            $courses = $this->getRepeatValues(['c_province', 'c_city_id', 'c_city', 'c_village',
                'c_subject', 'c_place_name','c_duration','c_people_count','c_audiencetype_id']);            
            if (!empty($courses)) {
                $coursesArray = [];
                foreach ($courses as $value) {
                    $coursesArray[] = [
                        'city_id' => $value['c_city_id'] ?? null,
                        'city' => $value['c_city'] ?? null,
                        'province_id' => $value['c_province'] ?? null,
                        'village' => $value['c_village'] ?? null,
                        'place_name' => $value['c_place_name'] ?? null,
                        'subject' => $value['c_subject'] ?? null,
                        'duration' => $value['c_duration'] ?? null,
                        'people_count' => $value['c_people_count'] ?? null,
                        'audiencetype_id' => $value['c_audiencetype_id'] ?? null,
                        'promotion_id' => $promotion,
                        'promotion_report_id' => $query->id,
                        'promoter_id' => $user_id,
                    ];
                }
        
                if (!empty($coursesArray)) {
                    // حذف داده‌ها به‌صورت تکی با delete
                    Course::where(['promotion_id' => $promotion, 'promoter_id' => $user_id])
                        ->each(function ($course) {
                            $course->forceDelete(); // یا از forceDelete() استفاده کنید اگر نیازی به soft delete نباشد
                        });
        
                    // اضافه کردن داده‌ها
                    try {
                        Course::insert($coursesArray);
                    } catch (\Exception $e) {
                        Log::error('Error inserting courses: ' . $e->getMessage());
                    }
                }
            }
        
            // ************************************ Tribune ************************************
            $tribune = $this->getRepeatValues(['tr_province', 'tr_city_id', 'tr_city', 'tr_village',
                'tr_subject', 'tr_place_name','tr_duration','tr_people_count','tr_audiencetype_id']);
        
            if (!empty($tribune)) {
                $tribuneArray = [];
        
                foreach ($tribune as $value) {
                    $tribuneArray[] = [
                        'city_id' => $value['tr_city_id'] ?? null,
                        'city' => $value['tr_city'] ?? null,
                        'province_id' => $value['tr_province'] ?? null,
                        'village' => $value['tr_village'] ?? null,
                        'place_name' => $value['tr_place_name'] ?? null,
                        'subject' => $value['tr_subject'] ?? null,
                        'duration' => $value['tr_duration'] ?? null,
                        'people_count' => $value['tr_people_count'] ?? null,
                        'audiencetype_id' => $value['tr_audiencetype_id'] ?? null,
                        'promotion_id' => $promotion,
                        'promotion_report_id' => $query->id,
                        'promoter_id' => $user_id,
                    ];
                }
        
                if (!empty($tribuneArray)) {
                    // حذف داده‌ها به‌صورت تکی با delete
                    Tribune::where(['promotion_id' => $promotion, 'promoter_id' => $user_id])
                        ->each(function ($tribune) {
                            $tribune->forceDelete(); // یا از forceDelete() استفاده کنید اگر نیازی به soft delete نباشد
                        });
        
                    // اضافه کردن داده‌ها
                    try {
                        Tribune::insert($tribuneArray);
                    } catch (\Exception $e) {
                        Log::error('Error inserting tribunes: ' . $e->getMessage());
                    }
                }
            }
        
            // ************************************ Ritual ************************************
            $ritualArray = [];
            $ritual = $this->getRepeatValues(['r_province', 'r_city_id', 'r_city', 'r_village',
                'ritual_id', 'r_description', "r_place_name"]);
        
            // بررسی داده‌های برگشتی از متد getRepeatValues
            if (!empty($ritual)) {
                foreach ($ritual as $value) {
                    $ritualArray[] = [
                        'city_id' => $value['r_city_id'] ?? null,
                        'city' => $value['r_city'] ?? null,
                        'province_id' => $value['r_province'] ?? null,
                        'village' => $value['r_village'] ?? null,
                        'place_name' => $value['r_place_name'] ?? null,
                        'description' => $value['r_description'] ?? null,
                        'ritual_id' => $value['ritual_id'] ?? null,
                        'promotion_id' => $promotion,
                        'promotion_report_id' => $query->id,
                        'promoter_id' => $user_id,
                    ];
                }
        
                if (!empty($ritualArray)) {
                    // حذف داده‌ها به‌صورت تکی با delete
                    RitualReport::where(['promotion_id' => $promotion, 'promoter_id' => $user_id])
                        ->each(function ($ritual) {
                            $ritual->forceDelete(); // یا از forceDelete() استفاده کنید اگر نیازی به soft delete نباشد
                        });
        
                    // اضافه کردن داده‌ها
                    try {
                        RitualReport::insert($ritualArray);
                    } catch (\Exception $e) {
                        Log::error('Error inserting rituals: ' . $e->getMessage());
                    }
                }
            }
        };
        
    }
}
