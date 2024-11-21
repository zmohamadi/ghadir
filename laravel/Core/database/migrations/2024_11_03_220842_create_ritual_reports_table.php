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
        Schema::create('ritual_reports', function (Blueprint $table) {
            $table->id();
            $table->integer('ritual_id');
            $table->integer('promotion_report_id');
            $table->text('report');
            $table->integer('status_id');
            $table->timestamp('deleted_at')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ritual_reports');
    }
};
