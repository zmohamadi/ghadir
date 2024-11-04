<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\PromotionNotice;

class PromotionNoticeFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = PromotionNotice::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence(4),
            'year' => $this->faker->numberBetween(-10000, 10000),
            'photo' => $this->faker->word(),
            'comments' => $this->faker->text(),
            'commitments' => $this->faker->text(),
            'register_status' => $this->faker->boolean(),
            'report_status' => $this->faker->boolean(),
            'has_course' => $this->faker->boolean(),
            'has_tribune' => $this->faker->boolean(),
            'status_id' => $this->faker->numberBetween(-10000, 10000),
            'deleted_at' => $this->faker->dateTime(),
            'user_promotions' => $this->faker->word(),
            'users' => $this->faker->word(),
        ];
    }
}
