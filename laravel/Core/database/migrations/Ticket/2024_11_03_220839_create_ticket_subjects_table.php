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
        Schema::create('ticket_subjects', function (Blueprint $table) {
            $table->id();
            $table->string('title_fa', 200)->nullable()->comment('عنوان');
            $table->integer('creator_id')->nullable()->comment('شناسه کاربر ثبت کننده');  
            $table->integer('editor_id')->nullable()->comment('شناسه کاربر ویرایش کننده');          
            $table->integer('count_parent')->default(0)->comment('تعداد تیکت های والد (شروع تیکت)');
            $table->integer('count_parent_awaiting')->default(0)->comment('تعداد تیکت های والد که وضعیت درانتظار پاسخ دارند (شروع تیکت)');
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
        Schema::dropIfExists('ticket_subjects');
    }
};
