<?php

namespace Admin\Controllers\Base;
use App\Http\Controllers\Controller;
use Models\Course;
use Models\Tribune;
use Models\Ritual;
use Models\Promotion;
use Models\Notif;
use Models\RitualReport;

class HomeController extends Controller
{
    public function statistics()
    {
        $city_id = request()->city;
        $province_id = request()->province;
        $year = request()->year;

        $years = Promotion::select('year')->groupBy("year")->get();

        // Filter and fetch aggregated data for courses
        $courseStats = Course::selectRaw('COUNT(*) as count, SUM(people_count) as total_people, SUM(duration) as total_duration')
            ->when($city_id, fn($query) => $query->where('city_id', $city_id))
            ->when($province_id, fn($query) => $query->where('province_id', $province_id))
            ->when($year, fn($query) => $query->where('year', $year))
            ->first();

        // Filter and fetch aggregated data for tribunes
        $tribuneStats = Tribune::selectRaw('COUNT(*) as count, SUM(people_count) as total_people, SUM(duration) as total_duration')
            ->when($city_id, fn($query) => $query->where('city_id', $city_id))
            ->when($province_id, fn($query) => $query->where('province_id', $province_id))
            ->when($year, fn($query) => $query->where('year', $year))
            ->first();

        // Ritual statistics with promotion count
        $rituals = Ritual::withCount(['reports' => function ($query) use ($city_id, $province_id, $year) {
            $query
                ->when($city_id, fn($query) => $query->where('city_id', $city_id))
                ->when($province_id, fn($query) => $query->where('province_id', $province_id))
                ->when($year, fn($query) => $query->where('year', $year));
        }])->get();


        // Total values for percentage calculations
        $totalPeople = ($courseStats->total_people ?? 0) + ($tribuneStats->total_people ?? 0);
        $totalTime = ($courseStats->total_duration ?? 0) + ($tribuneStats->total_duration ?? 0);
        $totalRitualReport = RitualReport::count();

        // Calculate the statistics
        $collection = [
            // Counts
            'course_count' => intval($courseStats->count ?? 0),
            'tribune_count' => intval($tribuneStats->count ?? 0),

            // Percentages for counts
            'course_percent' => ($courseStats->count ?? 0) + ($tribuneStats->count ?? 0) > 0
                ? intval(($courseStats->count ?? 0) * 100 / (($courseStats->count ?? 0) + ($tribuneStats->count ?? 0)))
                : 0,
            'tribune_percent' => ($courseStats->count ?? 0) + ($tribuneStats->count ?? 0) > 0
                ? intval(($tribuneStats->count ?? 0) * 100 / (($courseStats->count ?? 0) + ($tribuneStats->count ?? 0)))
                : 0,

            // Total people
            'people_course' => intval($courseStats->total_people ?? 0),
            'people_tribune' => intval($tribuneStats->total_people ?? 0),

            // Percentages for people
            'people_course_percent' => $totalPeople > 0
                ? intval(($courseStats->total_people ?? 0) * 100 / $totalPeople)
                : 0,
            'people_tribune_percent' => $totalPeople > 0
                ? intval(($tribuneStats->total_people ?? 0) * 100 / $totalPeople)
                : 0,

            // Total time (converted to hours)
            'time_course' => intval(($courseStats->total_duration ?? 0) / 60), // Convert minutes to hours
            'time_tribune' => intval(($tribuneStats->total_duration ?? 0) / 60), // Convert minutes to hours,

            // Percentages for time
            'time_course_percent' => $totalTime > 0
                ? intval(($courseStats->total_duration ?? 0) * 100 / $totalTime)
                : 0,
            'time_tribune_percent' => $totalTime > 0
                ? intval(($tribuneStats->total_duration ?? 0) * 100 / $totalTime)
                : 0,

            // Ritual promotions
            'rituals' => $rituals->map(fn($ritual) => [
                'id' => $ritual->id,
                'label' => $ritual->title,
                'color' => $ritual->color,
                'count' => $ritual->reports_count,
                'percent' => $ritual->reports_count * 100 / $totalRitualReport,
            ]),

            'years'=>$years
        ];

        return response()->json($collection);
    }


    public function home($panel,$user)
    {
        $notif="";
        if($panel=="promoter"){
            $notif = Notif::where(['promoter_id'=>$user,'display'=>1])->get();
        }
       
        $collection['notif'] = $notif;

        return response()->json($collection);

    }
    public function closeAlert($id)
    {
        // پیدا کردن و به‌روزرسانی هشدار مورد نظر
        $update = Notif::where('id', $id)->update(['display' => 0]);

        return response()->json(['message'=>$update , 'success'=>200]);
    }

}
