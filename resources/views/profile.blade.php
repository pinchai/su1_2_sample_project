@extends('master')

@section('title')
    Profile
@endsection

@section('content')
    <div class="container py-5">
        <div class="row">
            <!-- Left Column: Profile -->
            <div class="col-md-4">
                <div class="profile-section text-center mb-4">
                    <img
                        src="https://lh3.googleusercontent.com/a/ACg8ocLXsp7CqOkhrOtVfXlZoPNMKM1huqRMWuhuri9fdDu4iOv-tUvJPA=s288-c-no"
                        class="profile-img mb-3" alt="Profile">
                    <div class="profile-name">Chai Choeurn</div>
                    <p class="text-muted">chai@example.com</p>
                    <p><strong>Phone:</strong> +855 12 345 678</p>
                    <p><strong>Location:</strong> Phnom Penh, Cambodia</p>
                    <button class="btn btn-primary btn-sm">Edit Profile</button>
                </div>
            </div>

            <!-- Right Column: Orders and Wishlist -->
            <div class="col-md-8">
                <!-- Order History -->
                <div class="mb-4">
                    <h5 class="section-title">Order History</h5>
                    <div class="order-card">
                        <p><strong>Order #12345</strong> | <small>Placed: 2025-08-01</small></p>
                        <p>Items: 3 | Total: $79.99</p>
                        <span class="badge badge-success">Delivered</span>
                    </div>
                    <div class="order-card">
                        <p><strong>Order #12312</strong> | <small>Placed: 2025-07-21</small></p>
                        <p>Items: 1 | Total: $25.00</p>
                        <span class="badge badge-warning">Pending</span>
                    </div>
                </div>

                <!-- Wishlist -->
                <div>
                    <h5 class="section-title">Wishlist</h5>
                    <div class="wishlist-card d-flex justify-content-between align-items-center">
                        <div>
                            <p class="mb-1"><strong>Men's T-Shirt - Blue</strong></p>
                            <p class="text-muted mb-0">$15.00</p>
                        </div>
                        <button class="btn btn-sm btn-outline-primary">Add to Cart</button>
                    </div>
                    <div class="wishlist-card d-flex justify-content-between align-items-center">
                        <div>
                            <p class="mb-1"><strong>Running Shoes - Nike</strong></p>
                            <p class="text-muted mb-0">$59.99</p>
                        </div>
                        <button class="btn btn-sm btn-outline-primary">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
