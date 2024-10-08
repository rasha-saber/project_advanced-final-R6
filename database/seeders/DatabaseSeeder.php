<?php

namespace Database\Seeders;
use App\Models\User;
use App\Models\Category;
use App\Models\Topic;
use App\Models\Message;
use App\Models\Testimonial;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
         User::factory(1)->create();
         Category::factory(10)->create();
         Topic::factory(10)->create();
         Testimonial::factory(10)->create();
        Message::factory(10)->create();


        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
