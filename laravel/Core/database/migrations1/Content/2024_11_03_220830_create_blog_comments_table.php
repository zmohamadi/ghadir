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
        Schema::create('blog_comments', function (Blueprint $table) {
            $table->id();
            $table->integer('creator_id')->nullable()->comment('شناسه کاربر ثبت کننده(فرستنده پیام)');
            $table->integer('editor_id')->nullable()->comment('شناسه کاربر ویرایش کننده');
            $table->integer('blog_id')->nullable()->comment('شناسه محتوا');
            $table->integer('parent_id')->default(0)->comment('شناسه پیام اصلی');
            $table->text('comment')->nullable()->comment('اظهار نظر');
            $table->integer('confirmer_id')->nullable()->comment('شناسه پرسنل برای تأیید');
            $table->integer('confirm_id')->default(2)->comment('شناسه وضعیت تأیید، از جدول وضعیت ها');
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
        Schema::dropIfExists('blog_comments');
    }
};
