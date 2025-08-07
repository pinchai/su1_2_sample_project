/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3306
 Source Schema         : su1_2_sample_project

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 07/08/2025 07:54:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of job_batches
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2025_08_07_003350_create_all_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `date_time` datetime NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `paid_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` (`id`, `user_id`, `date_time`, `total`, `paid`, `paid_by`, `paid_ref`, `delivery`, `created_at`, `updated_at`) VALUES (1, 1, '2025-07-28 00:49:44', 326.64, 326.64, NULL, NULL, 'Delivered', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order` (`id`, `user_id`, `date_time`, `total`, `paid`, `paid_by`, `paid_ref`, `delivery`, `created_at`, `updated_at`) VALUES (2, 1, '2025-07-13 00:49:44', 137.09, 137.09, NULL, NULL, 'Pending', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order` (`id`, `user_id`, `date_time`, `total`, `paid`, `paid_by`, `paid_ref`, `delivery`, `created_at`, `updated_at`) VALUES (3, 1, '2025-07-21 00:49:44', 92.11, 92.11, NULL, NULL, 'Pending', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order` (`id`, `user_id`, `date_time`, `total`, `paid`, `paid_by`, `paid_ref`, `delivery`, `created_at`, `updated_at`) VALUES (4, 1, '2025-08-02 00:49:44', 128.95, 128.95, NULL, NULL, 'Shipped', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order` (`id`, `user_id`, `date_time`, `total`, `paid`, `paid_by`, `paid_ref`, `delivery`, `created_at`, `updated_at`) VALUES (5, 1, '2025-07-22 00:49:44', 74.80, 74.80, NULL, NULL, 'Shipped', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order` (`id`, `user_id`, `date_time`, `total`, `paid`, `paid_by`, `paid_ref`, `delivery`, `created_at`, `updated_at`) VALUES (6, 1, '2025-08-02 00:49:44', 120.04, 120.04, NULL, NULL, 'Shipped', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order` (`id`, `user_id`, `date_time`, `total`, `paid`, `paid_by`, `paid_ref`, `delivery`, `created_at`, `updated_at`) VALUES (7, 1, '2025-07-31 00:49:44', 183.55, 183.55, NULL, NULL, 'Pending', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order` (`id`, `user_id`, `date_time`, `total`, `paid`, `paid_by`, `paid_ref`, `delivery`, `created_at`, `updated_at`) VALUES (8, 1, '2025-07-16 00:49:44', 101.40, 101.40, NULL, NULL, 'Shipped', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order` (`id`, `user_id`, `date_time`, `total`, `paid`, `paid_by`, `paid_ref`, `delivery`, `created_at`, `updated_at`) VALUES (9, 1, '2025-07-10 00:49:44', 143.63, 143.63, NULL, NULL, 'Shipped', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order` (`id`, `user_id`, `date_time`, `total`, `paid`, `paid_by`, `paid_ref`, `delivery`, `created_at`, `updated_at`) VALUES (10, 1, '2025-07-19 00:49:44', 31.32, 31.32, NULL, NULL, 'Shipped', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
COMMIT;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
BEGIN;
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (1, 1, 2, 2, 36.62, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (2, 1, 6, 2, 31.32, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (3, 1, 4, 2, 95.38, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (4, 2, 4, 1, 95.38, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (5, 2, 3, 1, 41.71, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (6, 3, 10, 2, 17.42, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (7, 3, 9, 3, 19.09, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (8, 4, 2, 3, 36.62, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (9, 4, 9, 1, 19.09, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (10, 5, 9, 2, 19.09, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (11, 5, 2, 1, 36.62, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (12, 6, 2, 1, 36.62, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (13, 6, 3, 2, 41.71, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (14, 7, 6, 3, 31.32, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (15, 7, 3, 1, 41.71, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (16, 7, 7, 3, 15.96, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (17, 8, 5, 2, 14.08, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (18, 8, 2, 2, 36.62, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (19, 9, 8, 1, 95.75, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (20, 9, 7, 3, 15.96, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES (21, 10, 6, 1, 31.32, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
COMMIT;

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` (`id`, `name`, `price`, `category`, `discount`, `image`, `description`, `created_at`, `updated_at`) VALUES (1, 'T-Shirt', 59.47, 'Clothing', 5.19, 'https://au.ryderwear.com/cdn/shop/products/advance-oversized-t-shirt-black-clothing-ryderwear-502867_1024x1024.jpg?v=1743395911', 'Non atque a incidunt sint dolorem magnam qui repudiandae aut inventore dolor quia autem sed asperiores amet molestias nihil vel amet hic id harum.', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `product` (`id`, `name`, `price`, `category`, `discount`, `image`, `description`, `created_at`, `updated_at`) VALUES (2, 'Jeans', 36.62, 'Clothing', 13.73, 'https://images.napali.app/global/element-products/all/default/xlarge/eljdp00106_element,f_bnt0_frt1.jpg', 'Autem quia fugit eum error hic sunt est ut doloremque consequatur veritatis quos facere assumenda nesciunt enim itaque omnis culpa ullam aut doloribus provident laborum repudiandae est nulla.', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `product` (`id`, `name`, `price`, `category`, `discount`, `image`, `description`, `created_at`, `updated_at`) VALUES (3, 'Jacket', 41.71, 'Clothing', 9.72, 'https://buffalojackson.com/cdn/shop/files/bridger-leather-puffy-jacket-black-lifestyle-3_900x900_crop_center.jpg?v=1698331239', 'Harum quo ullam exercitationem consequatur laboriosam eius est voluptatum necessitatibus ut laborum illo voluptas impedit laborum dolor fugit iste iusto repellendus fugiat omnis rem.', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `product` (`id`, `name`, `price`, `category`, `discount`, `image`, `description`, `created_at`, `updated_at`) VALUES (4, 'Hoodie', 95.38, 'Clothing', 16.61, 'https://contents.mediadecathlon.com/p2372982/k$475393b5a03102723c668517d30284b4/men-s-fitness-hoodie-500-essentials-blue-black-domyos-8667661.jpg?f=1920x0&format=auto', 'Nihil consequatur quis temporibus ex porro dolores qui non fugit blanditiis voluptatibus amet eos magnam et magnam distinctio expedita illum ducimus enim error ipsam quia et dolorem.', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `product` (`id`, `name`, `price`, `category`, `discount`, `image`, `description`, `created_at`, `updated_at`) VALUES (5, 'Shorts', 14.08, 'Clothing', 3.26, 'https://www.shopcoveusa.com/cdn/shop/files/BLACK_FRONT_1200x1200.png?v=1740716160', 'Enim ipsa itaque non amet et et perspiciatis eos porro unde qui maiores omnis aut error consequuntur est laborum esse.', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `product` (`id`, `name`, `price`, `category`, `discount`, `image`, `description`, `created_at`, `updated_at`) VALUES (6, 'Sweater', 31.32, 'Clothing', 18.25, 'https://www.toadandco.com/cdn/shop/files/T2231102-Honey_Brown-1.jpg?v=1689097994', 'Molestiae qui praesentium tenetur repellendus dolores doloremque minus occaecati autem aut officia laborum maiores quia ipsa inventore adipisci debitis et.', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `product` (`id`, `name`, `price`, `category`, `discount`, `image`, `description`, `created_at`, `updated_at`) VALUES (7, 'Blazer', 15.96, 'Clothing', 12.92, 'https://dtcralphlauren.scene7.com/is/image/PoloGSI/s7-AI715928571001_alternate10?$rl_4x5_pdp$', 'Asperiores alias repellendus iure eaque magnam quis quisquam ea aspernatur quibusdam iste debitis non dolorem voluptas voluptatem nobis vel amet ut exercitationem rerum officia.', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `product` (`id`, `name`, `price`, `category`, `discount`, `image`, `description`, `created_at`, `updated_at`) VALUES (8, 'Polo Shirt', 95.75, 'Clothing', 5.84, 'https://dtcralphlauren.scene7.com/is/image/PoloGSI/s7-1266689_alternate10?$rl_4x5_pdp$', 'Quis voluptatibus repudiandae quia fuga architecto eius tempora eos modi accusamus vitae enim ut.', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `product` (`id`, `name`, `price`, `category`, `discount`, `image`, `description`, `created_at`, `updated_at`) VALUES (9, 'Tracksuit', 19.09, 'Clothing', 8.79, 'https://i8.amplience.net/i/jpl/jd_719804_a?qlt=92&w=600&h=765&v=1&fmt=auto', 'Eligendi aliquam aut et in deleniti quaerat sed laudantium voluptates atque nemo et possimus eius possimus rem doloribus.', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `product` (`id`, `name`, `price`, `category`, `discount`, `image`, `description`, `created_at`, `updated_at`) VALUES (10, 'Coat', 17.42, 'Clothing', 16.16, 'https://i5.walmartimages.com/seo/POROPL-Men-Trench-Coat-Winter-Solid-Color-Warm-Lapel-Coat-Business-Long-Trench-Coat-Blue-Size-XXL_8eef02d9-d861-4bea-9ae4-ce7031228506.09845fc95f4bd5e87b805b146828b018.jpeg', 'Ducimus omnis perferendis delectus numquam est et vel dolor eligendi occaecati minima eos sint sed voluptatem corporis saepe ipsa aut voluptates est suscipit corrupti.', '2025-08-07 00:49:44', '2025-08-07 00:49:44');
COMMIT;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_cart
-- ----------------------------
DROP TABLE IF EXISTS `user_cart`;
CREATE TABLE `user_cart` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_cart
-- ----------------------------
BEGIN;
INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES (1, 1, 6, 4, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES (2, 1, 2, 1, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES (3, 1, 2, 1, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES (4, 1, 1, 5, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES (5, 1, 5, 2, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES (6, 1, 8, 3, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES (7, 1, 1, 5, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES (8, 1, 9, 1, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES (9, 1, 6, 3, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES (10, 1, 4, 1, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'admin', 'admin@mail.com', NULL, '$2y$12$Z.BFFgAMhanRcfT2xxJB8u5s48WoKGljYR5HzT239vT9lSfbp3VZ.', NULL, '2025-08-07 00:49:44', '2025-08-07 00:49:44');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
