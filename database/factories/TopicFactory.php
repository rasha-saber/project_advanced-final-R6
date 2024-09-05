<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Topic>
 */
class TopicFactory extends Factory
{


    private function generateRandomImage($path)
    {
        $files = scandir($path);
        $files = array_diff($files, array('.', '..'));

        return fake()->randomElement($files);
    }
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => fake()->word(),
            'content' => fake()->text(),
           'published'  => fake()->numberBetween(0, 1),
        //    'published_at'  => fake()->boolean ? now() : null,
           'image' => $this->generateRandomImage(public_path('assests/images/topics/')),
           'category_id' => fake()->numberBetween(1, 10),
           'trending' => fake()->boolean, 
        ];
    }
}
