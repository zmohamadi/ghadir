<?php

namespace Admin\Controllers\Content;

use Admin\Controllers\Public\BaseAbstract;

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
            // $query->text = str_replace("media/blogs", "/media/blogs", request()->text);
            $query->save();
            if(request()->keyword_id) { $query->Keywords()->sync(request()->keyword_id); }
        };
        $this->showQuery = function ($query)
        {
            // $query->withCount('comments');
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
        $all_comments = \Models\Content\BlogComment::where("blog_id",$item->id);
        $access = false;
        if($this->role_id == 1)
        {
            $access = true;
            $comments = $all_comments->ParentComment()->Confirm()->with("creator","editor","childs.creator","childs.editor")->get();
            $awating_comments = \Models\Content\BlogComment::where("blog_id",$item->id)->with("creator","editor")->AwatingConfirm()->get();
        }
        else
        {    
            $comments = $all_comments->active()->ParentComment()->Confirm()->with("creator","editor","childs.creator","childs.editor")->get();
            $awating_comments = \Models\Content\BlogComment::where("blog_id",$item->id)->with("creator","editor")->active()->AwatingConfirm()->get();
        }
        $data = [
            "item"=>$item,
            "creator"=>$creator,
            "editor"=>$editor,
            "comments"=>$comments,
            "awating_comments"=>$awating_comments,
            "access"=>$access,
        ];
        return \response()->json($data);
    }
}
