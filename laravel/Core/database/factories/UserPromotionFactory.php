<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\UserPromotion;

class UserPromotionFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = UserPromotion::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'user_id' => $this->faker->numberBetween(-10000, 10000),
            'position_id' => $this->faker->numberBetween(-10000, 10000),
            'city_id' => $this->faker->numberBetween(-10000, 10000),
            'city' => $this->faker->city(),
            'village' => $this->faker->word(),
            'place_name' => $this->faker->word(),
            'status_id' => $this->faker->numberBetween(-10000, 10000),
            'deleted_at' => $this->faker->dateTime(),
            'user' => $this->faker->word(),
            'position' => $this->faker->word(),
        ];
    }
}
