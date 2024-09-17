<?php

namespace Database\Seeders;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DollarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('dollars')->insert([
            [
                'type' => 'Oficial',
                'icon' => '💵',
                'buy_price' => 0,
                'sell_price' => 0,
                'date' => Carbon::now(), // Fecha actual
            ],
            [
                'type' => 'Blue',
                'icon' => '💵',
                'buy_price' => 0,
                'sell_price' => 0,
                'date' => Carbon::now(), // Fecha actual
            ],
            [
                'type' => 'Cripto',
                'icon' => '₿',
                'buy_price' => 0,
                'sell_price' => 0,
                'date' => Carbon::now(), // Fecha actual
            ],
            [
                'type' => 'Bolsa',
                'icon' => '📈',
                'buy_price' => 0,
                'sell_price' => 0,
                'date' => Carbon::now(), // Fecha actual
            ],
            [
                'type' => 'Turista',
                'icon' => '🏖️',
                'buy_price' => 0,
                'sell_price' => 0,
                'date' => Carbon::now(), // Fecha actual
            ],
            [
                'type' => 'Ahorro',
                'icon' => '💰',
                'buy_price' => 0,
                'sell_price' => 0,
                'date' => Carbon::now(), // Fecha actual
            ],
            [
                'type' => 'MEP',
                'icon' => '🏦',
                'buy_price' => 0,
                'sell_price' => 0,
                'date' => Carbon::now(), // Fecha actual
            ],
            [
                'type' => 'CCL',
                'icon' => '🔗',
                'buy_price' => 0,
                'sell_price' => 0,
                'date' => Carbon::now(), // Fecha actual
            ],
            [
                'type' => 'Tarjeta',
                'icon' => '💳',
                'buy_price' => 0,
                'sell_price' => 0,
                'date' => Carbon::now(), // Fecha actual
            ]
        ]);
    }
}
