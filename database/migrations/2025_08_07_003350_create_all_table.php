<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // products
        Schema::create('product', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->decimal('price', 10, 2);
            $table->string('category')->nullable();
            $table->decimal('discount', 5, 2)->default(0.00); // percentage or flat
            $table->string('image')->nullable();
            $table->text('description')->nullable();
            $table->timestamps();
        });

        // user_carts
        Schema::create('user_cart', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('product_id');
            $table->integer('qty')->default(1);
            $table->timestamps();
        });

        // orders
        Schema::create('order', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->dateTime('date_time');
            $table->decimal('total', 10, 2);
            $table->decimal('paid', 10, 2);
            $table->string('paid_by')->nullable();
            $table->string('paid_ref')->nullable();
            $table->string('delivery')->nullable(); // status or method
            $table->timestamps();
        });

        // order_details
        Schema::create('order_detail', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('order_id');
            $table->unsignedBigInteger('product_id');
            $table->integer('qty');
            $table->decimal('price', 10, 2); // unit price at time of order
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('order_detail');
        Schema::dropIfExists('order');
        Schema::dropIfExists('user_cart');
        Schema::dropIfExists('product');
    }
};
