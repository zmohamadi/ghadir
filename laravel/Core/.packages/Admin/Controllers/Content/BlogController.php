<?php

namespace Admin\Controllers\Content;

use Admin\Controllers\Public\BaseAbstract;
use Models\Content\BlogComment;

class BlogController extends BaseAbstract
{
    protected $model = 'Models\Content\Blog';
    protected $request = 'Publics\Requests\Content\BlogRequest';
    protected $with = ["activeStatus","creator","editor"];
    protected $searchFilter = ['title'];
    protected $files = ["thumb"];

    public function init()
    {
        $this->storeQuery = function ($query)
        {
            $query = $this->setOperator($query);
            $query->save();
        };
    }
    /**
     * get details of Blog For View
    */
    public function details($id)
    {
        $item = $this->model::with("creator","editor")->find($id);
        $creator = \Models\User::select("id","firstname","lastname","photo")->find($item->creator_id);
        $editor = \Models\User::select("id","firstname","lastname","photo")->find($item->editor_id);
        // $all_comments = BlogComment::where("blog_id",$item->id);
        $access = false;
        if($this->role_id == 1)
        {
            $access = true;
            $comments = BlogComment::ParentComment()->with("confirmStatus","creator","editor","childs.confirmStatus","childs.creator","childs.editor")->get();
            $waiting_comments = BlogComment::Waiting()->where("blog_id",$item->id)->with("creator","editor")->get();
        }
        else
        {    
            $comments = BlogComment::ParentComment()->Confirmed()->active()->with("confirmStatus","creator","editor","childs.confirmStatus","childs.creator","childs.editor")->get();
            $waiting_comments = BlogComment::Waiting()->active()->where("blog_id",$item->id)->with("creator","editor")->get();
        }
        $data = [
            "item"=>$item,
            "creator"=>$creator,
            "editor"=>$editor,
            "comments"=>$comments,
            "waiting_comments"=>$waiting_comments,
            "access"=>$access,
        ];
        return \response()->json($data);
    }
}
