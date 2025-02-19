<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->integer('category_id');
            $table->integer('subcategory_id')->nullable();
            $table->integer('district_id');
            $table->integer('subdistrict_id')->nullable();
            $table->integer('user_id');
            $table->string('title_en');
            $table->string('title_ta');
            $table->string('image');
            $table->text('details_en')->nullable();
            $table->text('details_ta')->nullable();
            $table->text('tags_en')->nullable();
            $table->text('tags_ta')->nullable();
            $table->integer('headline')->nullable();
            $table->integer('first_section')->nullable();
            $table->integer('first_thumnail')->nullable();
            $table->integer('bigthumnail')->nullable();
            $table->string('post_date')->nullable(); 
            $table->string('post_month')->nullable();
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
        Schema::dropIfExists('posts');
    }
}
