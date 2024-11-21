<?php

namespace Admin\Controllers\Content;

use Admin\Controllers\Public\BaseAbstract;

class BlogCommentController extends BaseAbstract
{
    protected $model = 'Models\Content\BlogComment';
    protected $request = 'Publics\Requests\Content\BlogCommentRequest';
    protected $searchFilter = ['title'];
    protected $with = ["activeStatus","creator","editor"];
    protected $files = ["photo"];

    public function init()
    {
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
            // $query->confirmer_id = $this->user_id;
            // $query->save();               
        };
    }
    /**
     * get details of Comment For View
    */
    public function details($id)
    {
        $item = $this->model::with("confirmStatus","responderUser","confirmUser")->find($id);
        $record_blog = \Models\Content\Blog::with("subject","type","keywords")
                        ->select("id","title","subject_id","type_id","created_at")
                        ->find($item->blog_id);
        $other_comments = \Models\Content\BlogComment::where("id", "!=", $item->id)->where("blog_id", $item->blog_id)
                        ->with("confirmStatus")    
                        ->select("id","sender_name","sender_email","comment","confirm_id","created_at")
                        ->get();
        $item->other_comments = $other_comments;
        $item->record_blog = $record_blog;
        return \response()->json($item);
    }
    /**
     * post info for Insert Comment
    */
    public function sendComment()
    {
        request()->validate([
            'comment' => 'required',
        ]);
        $confirmer_id = null;
        $confirm_id = 2;
        if($this->role_id == 1)
        {
            $confirmer_id = $this->user_id;
            $confirm_id = 1;
        }

        $comment = new $this->model();
        $comment->creator_id = $this->user_id;
        $comment->blog_id = request()->b;
        $comment->parent_id = request()->p;
        $comment->comment = request()->comment;
        $comment->confirmer_id = $confirmer_id;
        $comment->confirm_id = $confirm_id;
        $comment->save();
    }
    /**
     * get statuses of comments Modal
    */
    public function getConfirmShowConfirm($id)
    {
        $item = $this->model::select('id','confirm_id')->find($id);
        $statuses = PublicClr::getRecords('Base-Status', 'group_id', 14);
        $data = [
            "item" => $item,
            "statuses" => $statuses,
        ];
        return \Response::json($data);
    }
    /**
     * edit status for comment in Modal
    */
    public function editConfirm($id)
    {
        $this->validate(request(), ["confirm_id" => "required"]);
        $confirm_edit = PublicClr::updateRecord('Content-BlogComment', $id, ['confirm_id'=>request()->confirm_id,'confirm_user_id'=>$this->user_id]);
        return \Response::json($confirm_edit);
    }
}
