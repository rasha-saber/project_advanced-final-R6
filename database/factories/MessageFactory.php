<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Message>
 */
class MessageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'sender_name' => fake()->name(),
            'sender_email' => fake()->email(),
           'subject' => fake()->optional()->sentence,
           'body' => fake()->paragraph(),
           'is_read' => fake()->randomElement(['read', 'unread']),
        ];
    }
}
