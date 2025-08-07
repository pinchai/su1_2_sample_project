@extends('master')

@section('title')
    Home
@endsection

@section('content')
    {{--product card--}}
    <div class="container">
        <div class="row">
            @foreach($product as $item)
                <div class="col-md-3">
                    <div class="product-card">
                        <span class="discount-tag">-{{ $item->discount }}%</span>
                        <span class="wishlist">
                  <svg width="22" height="22" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M8 14s6-4.435 6-8.182C14 2.842 11.985 1 8 1S2 2.842 2 5.818C2 9.565 8 14 8 14z"/>
                  </svg>
                </span>
                        <img
                            src="{{ $item->image }}"
                            alt="Refined Serpent Jacket">
                        <div class="card-body">
                            <div class="product-title product-title-clipped">{{ $item->name }}</div>
                            <div>
                                <span class="price">{{ $item->new_price }}</span>
                                <span class="old-price">{{ $item->price }}</span>
                            </div>
                            <button class="btn btn-dark add-cart-btn">Add to Cart</button>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
