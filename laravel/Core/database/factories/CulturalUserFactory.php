<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\CulturalUser;

class CulturalUserFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = CulturalUser::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'user_id' => $this->faker->numberBetween(-10000, 10000),
            'name' => $this->faker->name(),
            'family' => $this->faker->word(),
            'job_position' => $this->faker->word(),
            'gender_id' => $this->faker->numberBetween(-10000, 10000),
            'phone' => $this->faker->phoneNumber(),
            'comments' => $this->faker->text(),
            'status_id' => $this->faker->numberBetween(-10000, 10000),
            'deleted_at' => $this->faker->dateTime(),
            'user' => $this->faker->word(),
        ];
    }
}
