<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Support;

class SupportFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Support::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'user_id' => $this->faker->numberBetween(-10000, 10000),
            'content' => $this->faker->paragraphs(3, true),
            'status_id' => $this->faker->numberBetween(-10000, 10000),
            'deleted_at' => $this->faker->dateTime(),
            'users' => $this->faker->word(),
            'supportTypes' => $this->faker->word(),
            'Promotion' => $this->faker->word(),
        ];
    }
}
