<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('blogs', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable()->comment('عنوان');
            $table->integer('subject_id')->nullable()->comment('شناسه موضوع محتوا');
            $table->integer('creator_id')->nullable()->comment('شناسه کاربر ثبت کننده');
            $table->integer('editor_id')->nullable()->comment('شناسه کاربر ویرایش کننده');
            $table->string('thumb')->nullable()->comment('بند انگشتی');
            $table->string('img')->nullable()->comment('چندین عمس');
            $table->string('video')->nullable()->comment('چندین ویدئو');
            $table->string('document')->nullable()->comment('چندین فایل داکیومنت');
            $table->text('summary')->nullable()->comment('متن خلاصه');
            $table->text('text')->nullable()->comment('متن توضیحات');
            $table->integer('count_comment')->default(0)->comment('تعداد پیام');
            $table->integer('count_comment_not_check')->default(0)->comment('تعداد پیام بررسی نشده');
            $table->integer('count_view')->default(0)->comment('تعداد بازدید');
            $table->string('lang', 2)->default('fa')->comment('زبان');
            $table->integer('status_id')->length(1)->default(1)->comment('شناسه وضعیت فعال/غیر فعال');
            $table->timestamp('deleted_at')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('blogs');
    }
};
