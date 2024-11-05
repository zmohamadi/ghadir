<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\PromotionReport;

class PromotionReportFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = PromotionReport::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'promotion_id' => $this->faker->numberBetween(-10000, 10000),
            'report' => $this->faker->text(),
            'status_id' => $this->faker->numberBetween(-10000, 10000),
            'deleted_at' => $this->faker->dateTime(),
            'ritualReports' => $this->faker->word(),
            'tribunes' => $this->faker->word(),
            'courses' => $this->faker->word(),
            'Promotion' => $this->faker->word(),
        ];
    }
}
