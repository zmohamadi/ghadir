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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('family');
            $table->string('mobile');
            $table->string('password');
            $table->string('attribute_name');
            $table->integer('gender_id');
            $table->boolean('is_not_citizen');
            $table->string('melicode');
            $table->string('khadamat_code');
            $table->string('tablighat_office_code');
            $table->string('tablighat_organization_code');
            $table->string('ovghaf_code');
            $table->string('bank_account_number');
            $table->integer('city_id');
            $table->string('city');
            $table->string('village');
            $table->text('address');
            $table->string('postal_code');
            $table->string('photo');
            $table->integer('status_id');
            $table->integer('level_id');
            $table->dateTime('last_login');
            $table->timestamp('deleted_at')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
