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
        Schema::create('tickets', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->nullable()->comment('شناسه کاربر ارسال کننده');            
            $table->integer('subject_id')->nullable()->comment('شناسه موضوع');
            $table->integer('parent_id')->default(0)->comment('شناسه تیکت اصلی');  
            $table->text('text')->nullable()->comment('متن تیکت');
            $table->integer('reply_status_id')->length(1)->default(0)->comment('شناسه وضعیت پاسخ تیکت، از جدول وضعیت ها');
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
        Schema::dropIfExists('tickets');
    }
};
