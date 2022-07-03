<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(mt_rand(2,8)),
            'slug' => $this->faker->slug(),
            'excerpt' => $this->faker->paragraph(),

            // *pilhan 1 bisa menggunakan implode
            // 'body'=>'<p>' . implode('</p><p>',$this->faker->paragraphs(mt_rand(5,10))) . '</p>',

            // *pilhan 2 bisa menggunakan map
            // 'body'=> collect($this->faker->paragraphs(mt_rand(5,10))) -> map(function($p){
            //     return "<p>$p</p>";

            // *pilhan 3 bisa menggunakan arrow function
            'body'=> collect($this->faker->paragraphs(mt_rand(5,10))) -> map(fn($p)=> "<p>$p</p>") -> implode(''),

            'category_id' => mt_rand(1,2),
            'user_id' => mt_rand(1,5),
        ];
    }
}
