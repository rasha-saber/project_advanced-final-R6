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
        Schema::create('topics', function (Blueprint $table) {
            $table->id();
            $table->string('title', 100);
            $table->text('content');
            // $table->boolean('is_published')->default(false);
            $table->boolean('published')->default(false);
            // $table->timestamp('published_at')->nullable();
            $table->boolean('trending')->default(false); 
            $table->string('image')->nullable();
            $table->foreignId('category_id')->constrained('categories');
            // $table->foreignId('category_id')->constrained()->onDelete('cascade');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('topics');
    }
};
