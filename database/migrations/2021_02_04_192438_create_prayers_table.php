<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePrayersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prayers', function (Blueprint $table) {
            $table->id();
            $table->string('item1')->default('item1')->nullable();
            $table->string('item2')->default('item2')->nullable();
            $table->string('item3')->default('item3')->nullable();
            $table->string('item4')->default('item4')->nullable();
            $table->string('item5')->default('item5')->nullable();
            $table->string('item6')->default('item6')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('prayers');
    }
}
