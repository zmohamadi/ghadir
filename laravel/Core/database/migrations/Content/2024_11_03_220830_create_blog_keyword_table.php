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
        Schema::create('blog_keyword', function (Blueprint $table) {
            $table->id();
            $table->integer('blog_id')->nullable()->comment('شناسه مقاله');
            $table->integer('keyword_id')->nullable()->comment('شناسه کلمه کلیدی');
            $table->timestamp('deleted_at')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('blog_keyword');
    }
};
