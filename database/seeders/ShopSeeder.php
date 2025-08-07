<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class ShopSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = fake();

        // --- USERS ---
        DB::table('users')->insertGetId([
            'name' => 'admin',
            'email' => "admin@mail.com",
            'password' => Hash::make('12345678'),
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // --- PRODUCTS (Clothing) ---
        $productNames = ['T-Shirt', 'Jeans', 'Jacket', 'Hoodie', 'Shorts', 'Sweater', 'Blazer', 'Polo Shirt', 'Tracksuit', 'Coat'];
        $productIds = [];

        foreach ($productNames as $name) {
            $productIds[] = DB::table('product')->insertGetId([
                'name' => $name,
                'price' => $faker->randomFloat(2, 10, 100),
                'category' => 'Clothing',
                'discount' => $faker->randomFloat(2, 0, 20),
                'image' => strtolower(str_replace(' ', '_', $name)) . '.jpg',
                'description' => $faker->sentence(20),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // --- USER CARTS ---
        foreach (range(1, 10) as $i) {
            DB::table('user_cart')->insert([
                'user_id' => 1,
                'product_id' => $faker->randomElement($productIds),
                'qty' => $faker->numberBetween(1, 5),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // --- ORDERS + ORDER DETAILS ---
        for ($i = 1; $i <= 10; $i++) {
            $userId = 1;
            $orderTotal = 0;
            $orderDetails = [];

            // Each order has 1–3 products
            $productsInOrder = $faker->randomElements($productIds, rand(1, 3));
            foreach ($productsInOrder as $productId) {
                $qty = rand(1, 3);
                $price = DB::table('product')->where('id', $productId)->value('price');
                $orderDetails[] = [
                    'product_id' => $productId,
                    'qty' => $qty,
                    'price' => $price,
                ];
                $orderTotal += $qty * $price;
            }

            // Insert order
            $orderId = DB::table('order')->insertGetId([
                'user_id' => $userId,
                'date_time' => Carbon::now()->subDays(rand(0, 30)),
                'total' => $orderTotal,
                'paid' => $orderTotal,
                'delivery' => $faker->randomElement(['Pending', 'Shipped', 'Delivered']),
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            // Insert order details
            foreach ($orderDetails as $detail) {
                DB::table('order_detail')->insert([
                    'order_id' => $orderId,
                    'product_id' => $detail['product_id'],
                    'qty' => $detail['qty'],
                    'price' => $detail['price'],
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
