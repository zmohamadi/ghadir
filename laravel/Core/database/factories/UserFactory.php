<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\User;

class UserFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = User::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->name(),
            'attribute_name' => $this->faker->regexify('[A-Za-z0-9]{unique}'),
            'family' => $this->faker->word(),
            'gender_id' => $this->faker->numberBetween(-10000, 10000),
            'is_not_citizen' => $this->faker->boolean(),
            'melicode' => $this->faker->word(),
            'khadamat_code' => $this->faker->word(),
            'tablighat_office_code' => $this->faker->word(),
            'tablighat_organization_code' => $this->faker->word(),
            'ovghaf_code' => $this->faker->word(),
            'bank_account_number' => $this->faker->word(),
            'city_id' => $this->faker->numberBetween(-10000, 10000),
            'city' => $this->faker->city(),
            'village' => $this->faker->word(),
            'address' => $this->faker->text(),
            'postal_code' => $this->faker->postcode(),
            'photo' => $this->faker->word(),
            'status_id' => $this->faker->numberBetween(-10000, 10000),
            'level_id' => $this->faker->numberBetween(-10000, 10000),
            'last_login' => $this->faker->dateTime(),
            'deleted_at' => $this->faker->dateTime(),
            'promotions' => $this->faker->word(),
            'cultural_user' => $this->faker->word(),
            'createNotes' => $this->faker->word(),
            'abouteNotes' => $this->faker->word(),
            'promotionReports' => $this->faker->word(),
            'createTickets' => $this->faker->word(),
            'scoreTickets' => $this->faker->word(),
            'repliesTickets' => $this->faker->word(),
            'supports' => $this->faker->word(),
            'education' => $this->faker->word(),
            'cityUser' => $this->faker->word(),
            'role' => $this->faker->word(),
            'status' => $this->faker->word(),
            'gender' => $this->faker->word(),
            'level' => $this->faker->word(),
            'Promotions' => $this->faker->word(),
            'audienceTypes' => $this->faker->word(),
        ];
    }
}
