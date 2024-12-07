<?php
namespace Admin\Controllers\Person;

use Admin\Controllers\Public\BaseAbstract;
use Models\Person\CulturalUser;
use Models\Note;
use Models\Notif;
use Models\UserPromotion;

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

    public function init()
    {
        // Function to handle custom query logic for storing records
        $this->storeQuery = function ($query) {
            // Apply operators for filtering or modifying the query
            $query = $this->setOperator($query);
            if (request()->_method != "PUT") {
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
            if(request()->gender != null)
            {
                $gender = request()->gender;
                $query->where('gender_id', $gender);
            };
            if(request()->city != null)
            {
                $city = request()->city;
                $query->where('city_id', $city);
            };
            if(request()->province != null)
            {
                $province = request()->province;
                $query->where('province_id', $province);
            };
            if(request()->status != null)
            {
                $status = request()->status;
                $query->where('status_id', $status);
            };
        };
        
    }
}
