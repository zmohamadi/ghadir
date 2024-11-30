<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;
use Models\Person\Promoter;

class SupportController extends BaseAbstract
{
    protected $model = 'Models\Support';
    protected $request = 'Publics\Requests\SupportRequest';
    protected $searchFilter = ['title'];
    protected $with = ["activeStatus","creator","editor",'type',"promotion"];
    protected $showWith = ["activeStatus","creator","editor",'type',"promoters","promotion"];
    // protected $files = ["photo"];
    protected $needles = ["Base\Status","Promotion","SupportType","Person\Promoter"];

    public function init()
    {
        $this->indexQuery = function ($query) {
            if(request()->promoter)
            {
                $promoter = request()->promoter;
                $query->whereHas('promoters', function ($q) use ($promoter) {
                   $q->where('promoter_id', $promoter);
                });
            };
        };
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
            
            $promoters = request()->promoters;
            // dd($promoters);

            $data = $this->model::find($query->id);

            if (!empty($promoters)) {
                $data->promoters()->detach();
                $data->promoters()->sync($promoters);
            }
            $promotionId = request()->promotion_id;
            $promotionCount = $this->model::where('promotion_id', $promotionId)->count();
            $update = \Models\Promotion::where('id', $promotionId)->update(['sum_support' => $promotionCount]);

        };
    }
    public function searchPromoter($text,$support)
    {
        $users = Promoter::where('mobile', 'like', '%' . $text . '%')
            ->orWhere('firstname', 'like', '%' . $text . '%')
            ->orWhere('lastname', 'like', '%' . $text . '%')
            ->select('id','firstname','lastname',"mobile","level_id")
            ->get();
        // بررسی وضعیت هر پروموتر
        foreach ($users as $value) {
            $value->userInSupport = \DB::table("support_users")
                ->where(["support_id" => $support, "promoter_id" => $value->id])
                ->exists(); // بررسی وجود رکورد
        }
            
        return response()->json($users);
    }
    public function promoterList($support)
    {
        // استفاده از رابطه برای فیلتر داده‌ها
        $collection = Promoter::whereHas('supports', function ($query) use ($support) {
            $query->where('support_id', $support);
        }); // گرفتن مجموعه داده‌ها

        // بازگرداندن داده‌ها به همراه فیلدهای انتخابی
        return $this->grid($collection, ['firstname', 'lastname']);
    }

    public function newPromoter($id, Request $request) {
        $validatedData = $request->validate([
            'promoter_id' => 'required',
            'support_id' => 'required',
        ]);
    
        $data = [
            'promoter_id' => $request->promoter_id,
            'support_id' => $request->support_id,
            ];
        $newRecord = \DB::table("support_users")->insert($data);
        return response()->json($newRecord);
    }

}
