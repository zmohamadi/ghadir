<?php
namespace Admin\Controllers\Person;

use Admin\Controllers\Public\BaseAbstract;
use Models\Person\Promoter;
use Models\Person\CulturalUser;
use Models\Note;
use Models\Notif;
use Models\UserPromotion;
use Admin\Controllers\Person\PromoterExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;


class PromoterController extends BaseAbstract
{
    protected $model = 'Models\Person\Promoter';
    protected $request = "Publics\Requests\PromoterRequest";
    protected $with = ["role", "gender", "activeStatus", "cityUser", 'level', "education"];
    protected $showWith = ["role", "gender", "activeStatus", "cityUser", 'level', "education", "culturalUsers",
     "notes.creator","notif.creator","promotionInfos","supports.promotion","agrees.promotion","agrees.rituals","reports.promotion"];
    protected $needles = ["Base\City", "Base\Province", "Base\Gender", "Level", "Education", 'Base\Status', "PromotionPosition"];
    protected $searchFilter = ["firstname", "lastname", "mobile", "codemeli"];
    protected $files = ["photo"];

    public function exportExcel()
    {
        $filters = request()->all();

        return Excel::download(new PromoterExport($filters), 'promoters.xlsx', \Maatwebsite\Excel\Excel::XLSX, [
            'Content-Type' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
        ]);    }
    public function init()
    {
        // Function to handle custom query logic for storing records
        $this->storeQuery = function ($query) {
        
            // dd(45);
            // Apply operators for filtering or modifying the query
            $query = $this->setOperator($query);
            if (request()->_method == "PUT") {
                
                $query->complete_profile = 1;
            }
            if (request()->_method != "PUT" && $this->role_id==1) {
                $query->password = bcrypt(request()->mobile);
            }
            $query->save();
            // ************************************ Notes ************************************
            // Retrieve repeated 'note' values from the request input and prepare for insertion
            $notesArray = [];
            $notes = $this->getRepeatValues(['note']);
            foreach ($notes as $value) {
                $notesArray[] = [
                    'content' => $value['note'] ,
                    'promoter_id' => $query->id,
                    'creator_id' => $this->user_id,
                    'created_at' => now(),
                ];
            }

            // Delete existing notes for this promoter and insert the new notes, if any
            if (!empty($notesArray)) {
                Note::where('promoter_id', $query->id)->forceDelete();
                Note::insert($notesArray);
            }
            // ************************************ Notif ************************************
            // Retrieve repeated 'notif' values from the request input and prepare for insertion
            $notifArray = [];
            $notif = $this->getRepeatValues(['notif']);
            // dd($notif);

            foreach ($notif as $value) {
                $notifArray[] = [
                    'content' => $value['notif'],
                    'promoter_id' => $query->id,
                    'creator_id' => $this->user_id,
                    'created_at' => now(),
                ];
            }
            // dd($notifArray);

            // Delete existing notif for this promoter and insert the new notif, if any
            if (!empty($notifArray)) {
                Notif::where('promoter_id', $query->id)->forceDelete();
                Notif::insert($notifArray);
            }

            // ************************************ Cultural Users ************************************
            // Retrieve repeated cultural user values from the request input and prepare for insertion
            $culturalUsers = [];
            $cusers = $this->getRepeatValues(['c_name', 'c_family', 'c_phone', 'c_gender_id', 'c_comments', 'c_job_position']);
            foreach ($cusers as $value) {
                $culturalUsers[] = [
                    'name' => $value['c_name'] ?? null,
                    'family' => $value['c_family'] ?? null,
                    'phone' => $value['c_phone']?? null ,
                    'job_position' => $value['c_job_position'] ?? null,
                    'gender_id' => $value['c_gender_id']?? null ,
                    'comments' => $value['c_comments'] ?? null,
                    'promoter_id' => $query->id,
                ];
            }

            // Delete existing cultural users for this promoter and insert the new ones, if any
            if (!empty($culturalUsers)) {
                CulturalUser::where('promoter_id', $query->id)->forceDelete();
                CulturalUser::insert($culturalUsers);
            }

            // ************************************ Positions ************************************
            // Retrieve repeated position values from the request input and prepare for syncing
            $positionsArray = [];
            $positions = $this->getRepeatValues(['pos_province', 'pos_city_id', 'pos_city', 'pos_village', 'promotion_position', 'place_name']);
            foreach ($positions as $value) {
                $positionsArray[] = [
                    'city_id' => $value['pos_city_id'] ?? null ,
                    'province_id' => $value['pos_province'] ?? null,
                    'city' => $value['pos_city']?? null ,
                    'village' => $value['pos_village'] ?? null,
                    'position_id' => $value['promotion_position'] ?? null,
                    'place_name' => $value['place_name']?? null ,
                    'promoter_id' => $query->id,
                ];
            }

            // Sync new positions with the promoter's existing positions, detaching any that are no longer included
            if (!empty($positionsArray)) {
                UserPromotion::where('promoter_id', $query->id)->forceDelete();
                UserPromotion::insert($positionsArray);
            }

            $countagrees = \Models\PromotionAgree::where('promoter_id', $query->id)->count();
            $query->agree_count = $countagrees;
            $countreports = \Models\PromotionReport::where('promoter_id', $query->id)->count();
            $query->report_count = $countreports;
            $query->save();
        };

        // Uncomment and modify the below indexQuery if additional filtering by role_id is needed for listing
        
        $this->indexQuery = function ($query) {
            $query->when(request()->province != null, function ($q) {
                $q->where('province_id', request()->province);
            });
            $query->when(request()->city != null, function ($q) {
                $q->where('city_id', request()->city);
            });
            $query->when(request()->gender != null, function ($q) {
                $q->where('gender_id', request()->gender);
            });
            $query->when(request()->promoterStatus != null, function ($q) {
                $q->where('status_id', request()->promoterStatus);
            });
            $query->when(request()->promoterWorkStatus != null, function ($q) {
                $q->where('work_status', request()->promoterWorkStatus);
            });
            $query->when(request()->acoountPromoter != null, function ($q) {
                
                $acoountPromoter = request()->acoountPromoter;

                switch ($acoountPromoter) {
                    case 1:
                        $field="has_khadamat_code";
                        break;
                    case 2:
                        $field="has_tablighat_office_code";
                        break;
                    case 3:
                        $field="has_tablighat_organization_code";
                        break;
                    case 4:
                        $field="has_ovghaf_code";
                        break;
                }
                $q->where($field,1);
            });
            
        };
        
    }
    public function importExcel(Request $request)
    {
        // اعتبارسنجی
        $request->validate([
            'excel_file' => 'required',
        ]);

        $filename = rtrim($request->input('excel_file'), '###');
        $filePath = public_path('media/users/' . $filename);

        if (!file_exists($filePath)) {
            return response()->json(['message' => 'فایل اکسل یافت نشد.'], 404);
        }

        $data = Excel::toArray([], $filePath);

        // dd($data);

        if (empty($data)) {
            return response()->json(['message' => 'فایل اکسل خالی است یا فرمت آن صحیح نیست.'], 400);
        }

        $rows = array_slice($data[0], 1); // حذف ردیف اول (عنوان ستون‌ها)
        $userData = [];
        $skippedCount = 0;
        $existingMobiles = $this->model::pluck('mobile')->toArray(); // گرفتن شماره‌های موجود در دیتابیس
        $tempUserData = [];

        foreach ($rows as $row) {
            if (count($row) < 3) {
                $skippedCount++;
                continue;
            }

            $mobile = trim($row[2] ?? '');

            if (empty($mobile) || in_array($mobile, $existingMobiles) || isset($tempUserData[$mobile])) {
                $skippedCount++;
                continue;
            }

            $tempUserData[$mobile] = true;

            $userData[] = [
                'firstname'  => $row[0] ?? null,
                'lastname'   => $row[1] ?? null,
                'mobile'     => $mobile,
                'role_id'    => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }

        if (!empty($userData)) {
            $this->model::insert($userData);
        }

        return response()->json([
            'message' => 'عملیات وارد کردن داده‌ها تکمیل شد',
            'inserted_count' => count($userData),
            'skipped_count' => $skippedCount
        ]);
    }

    
}
