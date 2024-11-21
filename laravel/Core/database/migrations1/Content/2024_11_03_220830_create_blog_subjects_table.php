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
        Schema::create('blog_subjects', function (Blueprint $table) {
            $table->id();
            $table->string('title_fa', 50)->nullable()->comment('عنوان');
            $table->integer('order')->default(1)->nullable()->comment("ترتیب");
            $table->integer('count_blog')->default(0)->comment('تعداد محتوا');
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
        Schema::dropIfExists('blog_subjects');
    }
};
