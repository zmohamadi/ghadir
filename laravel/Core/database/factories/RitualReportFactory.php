<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\RitualReport;

class RitualReportFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = RitualReport::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'ritual_id' => $this->faker->numberBetween(-10000, 10000),
            'promotion_report_id' => $this->faker->numberBetween(-10000, 10000),
            'report' => $this->faker->text(),
            'status_id' => $this->faker->numberBetween(-10000, 10000),
            'deleted_at' => $this->faker->dateTime(),
            'ritual' => $this->faker->word(),
            'promotionReport' => $this->faker->word(),
            'cities' => $this->faker->word(),
        ];
    }
}
