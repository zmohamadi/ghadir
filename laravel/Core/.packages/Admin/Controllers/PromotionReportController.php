<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;
use Models\Promotion;
use Models\Person\Promoter;
use Models\Course;
use Models\Tribune;
use Models\RitualReport;

class PromotionReportController extends BaseAbstract
{
    protected $model = 'Models\PromotionReport';
    protected $request = 'Publics\Requests\PromotionReportRequest';
    protected $searchFilter = ['title'];
    protected $with = ["promotion","promoter","confirmRepo","level"];
    protected $showWith = ["promotion","promoter","tribunes.audienceType","level",
    "courses.audienceType","ritualReports.ritual","confirmRepo"];
    // protected $files = ["photo"];
    protected $needles = ["Person\Promoter",'Base\Status',"Ritual","Base\City", "Base\Province","Promotion","AudienceType","Level"];


    public function init()
    {
        $this->indexQuery = function ($query) {
            
            $query->when(request()->promoter != null, function ($q) {
                $q->where('promoter_id', request()->promoter);
            });
            $query->when(request()->reportStatus != null, function ($q) {
                $q->where('confirm_id', request()->reportStatus);
            });
            $query->when(request()->promotion != null, function ($q) {
                $q->where('promotion_id', request()->promotion);
            });
            // $query->when(request()->promoter != null, function ($q) {
            //     $promoter = request()->promoter;
            //     $q->whereHas('promoter',function($q) use($promoter)
            //     {
            //         $q->where("firstname", 'like', "%$promoter%")->orWhere("lastname", 'like', "%$promoter%");
            //     });
            // });
          
        };

        $this->storeQuery = function ($query) {
            $method = request()->_method; //PUT
            $promoter_id = request()->promoter_id;
            $promotion_id = request()->promotion_id;
            if($promotion_id==0){
                $latestRecord = Promotion::where("report_status", 1)->orderBy('id', 'desc')->first();
                $query->promotion_id = $latestRecord->id;
                $promotion = $latestRecord->id;
                $promotionRecord = $latestRecord;
            }
            else{

                $promotion = request()->promotion_id;
                $promotionRecord = Promotion::find($promotion_id);
            }
           
            $query->save();

        
            // ************************************ Course ************************************
            $courses = $this->getRepeatValues([
                'c_province', 'c_city_id', 'c_city', 'c_village',
                'c_subject', 'c_place_name', 'c_duration', 'c_people_count', 'c_audiencetype_id'
            ]);
        
            if (!empty($courses)) {
                $coursesArray = [];
                foreach ($courses as $value) {
                    $course = [
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
                        'promoter_id' => $promoter_id,
                        'promotion_report_id' => $query->id,
                        'year' => $promotionRecord->year,
                    ];
                    $coursesArray[] = $course;
                }
                
            }
            Course::where(['promotion_id' => $promotion, 'promoter_id' => $promoter_id])->forceDelete();
            if (!empty($coursesArray)) Course::insert($coursesArray);
                
        
            // ************************************ Tribune ************************************
            $tribune = $this->getRepeatValues([
                'tr_province', 'tr_city_id', 'tr_city', 'tr_village',
                'tr_subject', 'tr_place_name', 'tr_duration', 'tr_people_count', 'tr_audiencetype_id'
            ]);
        
            if (!empty($tribune)) {
                $tribuneArray = [];
                foreach ($tribune as $value) {
                    $tribuneData = [
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
                        'year' => $promotionRecord->year,
                        'promoter_id' => $promoter_id,
                    ];
        
                    $tribuneArray[] = $tribuneData;
                }
        
                
            }
            Tribune::where(['promotion_id' => $promotion, 'promoter_id' => $promoter_id])->forceDelete();
            if (!empty($tribuneArray))    Tribune::insert($tribuneArray);
                
        
            // ************************************ Ritual ************************************
            $ritual = $this->getRepeatValues([
                'r_province', 'r_city_id', 'r_city', 'r_village', 'ritual_id', 'r_description', 'r_place_name'
            ]);
        
            if (!empty($ritual)) {
                $ritualArray = [];
                foreach ($ritual as $value) {
                    $ritualData = [
                        'city_id' => $value['r_city_id'] ?? null,
                        'city' => $value['r_city'] ?? null,
                        'province_id' => $value['r_province'] ?? null,
                        'village' => $value['r_village'] ?? null,
                        'place_name' => $value['r_place_name'] ?? null,
                        'description' => $value['r_description'] ?? null,
                        'ritual_id' => $value['ritual_id'] ?? null,
                        'promotion_id' => $promotion,
                        'promotion_report_id' => $query->id,
                        'year' => $promotionRecord->year,
                        'promoter_id' => $promoter_id,
                    ];
        
                    $ritualArray[] = $ritualData;
                }
        
                
            }
            RitualReport::where(['promotion_id' => $promotion, 'promoter_id' => $promoter_id])->forceDelete();
            if (!empty($ritualArray))    RitualReport::insert($ritualArray);
                
        
            // به‌روزرسانی تعداد گزارش‌ها
            $promotionCount = $this->model::where('promotion_id', $promotion)->count();
            Promotion::where('id', $promotion)->update(['report_count' => $promotionCount]);

            $promoterCount = $this->model::where('promoter_id', $promoter_id)->count();
            Promoter::where('id', $promoter_id)->update(['report_count' => $promoterCount]);
        };
        
        
    }
}
