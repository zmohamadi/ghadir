<?php

namespace Admin\Controllers\Content;

use Illuminate\Support\Facades\Validator;
use Admin\Controllers\Public\BaseAbstract;
use Admin\Controllers\Public\PublicController;

class BlogCommentController extends BaseAbstract
{
    protected $model = 'Models\Content\BlogComment';
    protected $request = 'Publics\Requests\Content\BlogCommentRequest';
    protected $with = ["confirmStatus","blog","creator","editor"];
    protected $searchFilter = ['title'];

    public function init()
    {
        $this->indexQuery = function ($query) {
            $query->Waiting();
        };
        $this->storeQuery = function ($query) {
            $id = $this->getIdFromUrl();
            $type = request()->type;
            if($type==1) // for confirm
            {
                $query->confirm_user_id = $this->user_id;
                $query->confirm_id = 1;
            }
            else if($type==2) // for rejected
            {
                $query->confirm_user_id = $this->user_id;
                $query->confirm_id = 0;
            }
            else if($type==3) // for edit
            {
                $field = "comment".$id;
                $query->comment = request()->$field;
                $query->editor_id = $this->user_id;
            }
            $query->save();
            $updateCount = new PublicController();
            $updateCount->updateCountComment();
            $updateCount->updateCountCommentWaiting();
            $updateCount->updateCountCommentConfirmed();
            $updateCount->updateCountCommentRejected();
        };
    }
    /**
     * get details of Comment For View
    */
    public function details($id)
    {
        $item = $this->model::find($id);
        $blog = \Models\Content\Blog::with("creator","editor")->select("id","title","text","creator_id","editor_id","created_at")->find($item->blog_id);
        $comments = \Models\Content\BlogComment::where("blog_id", $item->blog_id)->with("confirmStatus","creator","editor","confirmer","childs.confirmer","childs.confirmStatus","childs.creator","childs.editor")->ParentComment()->get();
        $data = [
            "item"=>$item,
            "blog"=>$blog,
            "comments"=>$comments,
        ];
        return \response()->json($data);
    }
    /**
     * post info for Insert Comment
    */
    public function sendComment()
    {
		\DB::beginTransaction();
		try{
            $validator = Validator::make(request()->all(), [
                'comment' => 'required',
            ]);
            if ($validator->fails()) return response()->json(['errors'=>$validator->errors()], 422);

            $confirm_user_id = null;
            $confirm_id = 2;
            if($this->role_id == 1)
            {
                $confirm_user_id = $this->user_id;
                $confirm_id = 1;
            }
            $comment = new $this->model();
            $comment->creator_id = $this->user_id;
            $comment->blog_id = request()->b;
            $comment->parent_id = request()->p;
            $comment->comment = request()->comment;
            $comment->confirm_user_id = $confirm_user_id;
            $comment->confirm_id = $confirm_id;
            $comment->save();
            $updateCount = new PublicController();
            $updateCount->updateCountComment();
            $updateCount->updateCountCommentWaiting();
            $updateCount->updateCountCommentConfirmed();
            $updateCount->updateCountCommentRejected();
            
            \DB::commit();
		}
		catch (\Exception $e) {
			\DB::rollBack();
			return response()->json($e->getMessage(), '501');
		}
    }
    /**
     * post info for Delete Comment
    */
    public function deleteComment($id)
    {
		\DB::beginTransaction();
		try{
            $this->destroy($id);
            
            $updateCount = new PublicController();
            $updateCount->updateCountComment();
            $updateCount->updateCountCommentWaiting();
            $updateCount->updateCountCommentConfirmed();
            $updateCount->updateCountCommentRejected();

            \DB::commit();
        }
        catch (\Exception $e) {
            \DB::rollBack();
            return response()->json($e->getMessage(), '501');
        }
    }
}
