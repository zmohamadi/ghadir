<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\City;

class CityFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = City::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->name(),
            'province_id' => $this->faker->numberBetween(-10000, 10000),
            'postal_code' => $this->faker->postcode(),
            'status_id' => $this->faker->numberBetween(-10000, 10000),
            'deleted_at' => $this->faker->dateTime(),
            'province' => $this->faker->word(),
            'users' => $this->faker->word(),
        ];
    }
}
