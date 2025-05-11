<?php

namespace Admin\Listeners\CounterMenu;

use Admin\Events\CounterMenu\CounterBlogComment;

class CounterBlogCommentListener
{
    public function handle()
    {
        /**
         * Update field count of tables base_counts For blog-comments 
         */
        \DB::update("UPDATE base_counts SET `count` =
            (SELECT count(*) FROM blog_comments
                WHERE blog_comments.confirm_id = 2 AND blog_comments.deleted_at IS null) WHERE base_counts.title = 'blog-comments'");
    }
}