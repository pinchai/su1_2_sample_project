<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    //
    public function index()
    {
        $products = DB::table('product')
            ->select('*')
            ->get();

        foreach ($products as $product) {
            $new_price = $product->price - ($product->price * $product->discount / 100);
            $product->new_price = number_format($new_price, 2);
        }

        return view('home',
            [
                'product' => $products
            ]);
    }
}
