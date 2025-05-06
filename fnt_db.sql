-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2025-05-05 15:53:10
-- 服务器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `fnt_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `foodie_categories`
--

CREATE TABLE `foodie_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(255) DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `foodie_categories`
--

INSERT INTO `foodie_categories` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Noodles', 'noodles.webp'),
(2, 'Rice', 'rice.webp'),
(3, 'Breakfast', 'breakfast1.webp'),
(4, 'Seafood', 'seafood.webp'),
(5, 'Vegetarian', 'vegetarian.webp'),
(6, 'Desserts', 'desserts.webp'),
(7, 'Beverages', 'beverages.webp'),
(8, 'Snacks', 'snacks.webp'),
(9, 'Street Food', 'street_food.webp'),
(10, 'Fast Food', 'fast_food.webp'),
(11, 'BBQ & Grill', 'bbq_grill.webp'),
(12, 'Bakery', 'bakery.webp'),
(13, 'Local Delights', 'local_delights.webp'),
(14, 'Western Cuisine', 'western_cuisine.webp'),
(15, 'Asian Cuisine', 'asian_cuisine.webp'),
(16, 'Middle Eastern', 'middle_eastern.webp'),
(17, 'Indian Cuisine', 'indian_cuisine.webp'),
(18, 'Japanese Cuisine', 'japanese_cuisine.webp'),
(19, 'Korean Cuisine', 'korean_cuisine.webp'),
(20, 'Chinese Cuisine', 'chinese_cuisine.webp'),
(21, 'Thai Cuisine', 'thai_cuisine.webp'),
(22, 'Vegan', 'vegan.webp'),
(23, 'Halal', 'halal.webp'),
(24, 'Fusion', 'fusion.webp'),
(25, 'Organic', 'organic.webp'),
(26, 'Healthy Options', 'healthy_options.webp'),
(27, 'Buffet', 'buffet.webp');

-- --------------------------------------------------------

--
-- 表的结构 `foodie_vendors`
--

CREATE TABLE `foodie_vendors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `location_latitude` decimal(10,7) DEFAULT NULL,
  `location_longitude` decimal(10,7) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `image_gallery` text DEFAULT NULL,
  `menu_images` text DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `operating_hours` varchar(100) DEFAULT NULL,
  `social_media` varchar(255) DEFAULT NULL,
  `status` enum('close','open') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `foodie_vendors`
--

INSERT INTO `foodie_vendors` (`id`, `user_id`, `vendor_name`, `address`, `location_latitude`, `location_longitude`, `tags`, `category_id`, `description`, `main_image`, `image_gallery`, `menu_images`, `contact_number`, `operating_hours`, `social_media`, `status`, `created_at`, `updated_at`) VALUES
(10, 3, 'Deen Maju Nasi Kandar', '170, Jalan Gurdwara, 10300 George Town, Pulau Pinang', 5.4097434, 100.3281237, 'Muslim-owned', 23, 'Loved by tourists and locals, the legendary Deen Maju Nasi Kandar definitely takes the top spot on our list! With an explosion of authentic flavours, you MUST give their crowd-favourite Fish Head Curry, Fried Chicken, Bendi, Papadom, Daging Kambing and Sambal Prawns a try together with your Nasi Kandar.', '67f7267c667bd.webp', '', '', '', 'Saturday to Thursday (12 – 10 pm), Closed on Fridays', '', 'open', '2025-04-10 02:01:32', '2025-05-02 14:20:56'),
(11, 3, 'Penang Road Famous Teochew Chendul ', '27-29, Lebuh Keng Kwee, George Town, 10100 George Town, Pulau Pinang', 5.4169626, 100.3308945, 'Pork-free', 6, 'If you haven’t enjoyed the iconic Teochew cendol here, you’ve clearly been missing out. With a refreshing and genuine sweetness from Gula Melaka, this coconut milk infused cendol is Penang’s true pride and glory. Join the crowd to see what the hype is all about! P.S: Their delicious Asam Laksa, Char Koay Teow and Fried Oyster Egg dishes are not to be missed too.', '67f72a72f07e9.webp', '', '', '', 'Monday to Sunday (10 am – 5 pm)', '', 'open', '2025-04-10 02:18:26', '2025-05-02 14:43:43'),
(12, 3, 'Siam Road Charcoal Char Koay Teow', '82, Jalan Siam, George Town, 10400 George Town, Pulau Pinang', 5.4148619, 100.3210340, 'Non-halal', 9, 'Next, immerse yourself in a delightful char koay teow feast at Siam Road Charcoal Char Kuey Teow. Filled with wok hei at its best and savoury notes from prawns, eggs and lup cheong, it’s truly viral for being so flawless. Most definitely come here on an empty stomach so that you can order it up to the max without any limits!', '67f72b4c24671.webp', '', '', '', 'Tuesday to Saturday (12 – 6 pm), Closed on Sundays & Mondays', '', 'open', '2025-04-10 02:22:04', '2025-04-17 03:41:06'),
(13, 3, 'Ali Nasi Lemak Daun Pisang', 'Beach St, Georgetown, 10300 George Town, Penang', 5.4150990, 100.3390430, 'Muslim-owned', 13, 'Celebrated as one of the best nasi lemak stalls and selected for a Michelin Guide 2023 award, Ali Nasi Lemak Daun Pisang will have you drooling in hunger! Treat yourself to a wholesome packet of Bilis Telur, Ikan Masin, Sotong, Udang or Ayam Nasi Lemak that will surely fulfil all your sambal spice cravings. Looking like that, we’re totally getting seconds (and maybe even thirds).', '67f72c05844c1.webp', '', '', '', 'Monday to Friday (7 am – 2 pm), Closed on Saturdays & Sundays', '', 'open', '2025-04-10 02:25:09', '2025-05-02 14:16:45'),
(14, 3, 'Char Koay Kak @ Burma Road', 'Union Primary School, Jalan Burma, George Town, Penang', 5.4266183, 100.3171902, 'Non-halal', 9, 'If you’re passing by Burma Road in George Town and you see a humble hawker stall right in front of Union Primary School, then you’re one step away from trying Penang’s famous Char Koay Kak. This Char Koay Kak stall has been around for close to 3 decades and each serving comes with piping hot Koay Kak (rice cakes) fried with Wok Hei and added with dark soy sauce, eggs, seafood, chai poh, and sometimes, you can also add your choice of protein.', '67f72cc490f1e.webp', '', '', '', '2pm-8pm (weekdays only)', '', 'open', '2025-04-10 02:28:20', '2025-05-05 11:44:17'),
(15, 3, 'Hameed Pata Mee Sotong', '5, Esplanade Park, Lebuh Light, 10300 George Town', 5.4201968, 100.3427234, 'Muslim-owned', 1, 'The fun doesn’t stop there street food lovers! Like its name suggests, Hameed Pata Mee Sotong is a viral one for some seriously incredible mee sotong. We highly recommend coming here on an empty stomach so that you can order it up to the max without any limits. Memang sedap!', '67f72dc86c3db.webp', '', '', '', 'Monday to Thursday & Saturday (11.30 am – 8 pm), Saturday (11.30 am – 10 pm), Friday (11.30 am – 1 p', '', 'close', '2025-04-10 02:32:40', '2025-04-10 02:32:40'),
(16, 3, 'Xiang Xia Fish Head Bee Hoon', 'No 107-A, Pengkalan Weld, George Town, 10300 George Town, Pulau Pinang', 5.4113612, 100.3369513, 'Non-halal', 20, 'Ask anyone where the best tom yum noodles in Penang lies and they will surely recommend the one at Xiang Xia Fish Head Bee Hoon. As an underrated spot near Penang’s jetties, they really set the bar high here with their spicy and thick soup consistency for the Tom Yum Noodles. Their Deep Fried Mantis Prawns, Tom Yum Porridge, Sliced Fish Beehoon and Clear Soup Noodles are worth a try too!', '67f7310a47104.webp', '', '', '', 'Monday to Sunday (11 am – 11.30 pm)', '', 'close', '2025-04-10 02:46:34', '2025-04-10 02:46:34'),
(17, 3, 'Teksen Restaurant', '18, Lebuh Carnarvon, George Town, 10100 George Town, Pulau Pinang', 5.4174370, 100.3359620, 'Non-halal', 20, 'Bursting with authentic flavours, your taste buds will definitely come alive at Teksen as you live it up with their well-made traditional Chinese food. Serving up smiles since 1965, we absolutely adore the Curry Stingray, Prawn Omelette, Fried Lala, Belacan Fried Chicken and Braised Duck with Yam dishes. P.S: Teksen was even awarded with a Michelin Guide for good quality and value cooking!', '67f73179927f7.webp', '', '', '', 'Friday to Monday (12 – 2 pm, 5.30 – 8.30 pm), Closed on Tuesdays to Thursdays', '', 'close', '2025-04-10 02:48:25', '2025-04-10 02:48:25'),
(18, 3, 'Wan Tan Mee @ Chulia Street Hawker Food', 'Chulia St, Georgetown, 10450 George Town, Penang', 5.4183711, 100.3362365, 'Non-halal', 9, 'We’re slurping it up with some springy wan tan mee at Chulia Street Hawker Food next! Topped with lustrous dark sauce and loaded with signature char siew, egg noodles, crispy pork lard, wonton, veggies and pickled green chilli, it’ll certainly be a legendary meal to remember.', '67f7327a9f419.webp', '', '', '', 'Monday to Sunday (4.30 – 10.30 pm)', '', 'close', '2025-04-10 02:52:42', '2025-04-10 02:52:42'),
(19, 3, 'Green House Prawn Mee Corner', '133A, Jalan Burma, George Town, 10050 George Town, Pulau Pinang', 5.4187555, 100.3275731, 'Non-halal', 13, 'Some really stinge on the ingredients, while others just lack that special oomph in flavour and texture… Well, not here at Green House Prawn Mee Corner! As a popular late night hangout spot, the irresistible Penang Hokkien Prawn Mee, Loh Mee, Otak Otak and Loh Bak will enrich you with pure satisfaction and nothing less.', '67f7333dbc36b.webp', '', '', '', 'Monday to Sunday (9 am – 1.30 am)', '', 'close', '2025-04-10 02:55:57', '2025-04-10 02:55:57'),
(20, 3, 'Hot Bowl White Curry Mee', '58C, Jalan Rangoon, 10400 George Town, Pulau Pinang', 5.4180311, 100.3243662, 'Non-halal', 1, 'As a Legend of the street and Champion of the spicy zing, Hot Bowl White Curry Mee is another one of our holy grail favourites! Recently awarded with a Michelin Bib Gourmand award, this unforgettable white curry mee consists of a coconut milk-based broth, beancurd puffs, prawns, taugeh, noodles of your choice and their best-selling curry paste on the side. We recommend pairing your bowl of noodles with their melt-in-your-mouth deboned steamed chicken, Teochew guang jiang and spiced loh bak too.', '67f733f268276.webp', '', '', '', 'Tuesday, Thursday to Sunday (8 am – 3 pm), Closed on Mondays & Wednesdays', '', 'close', '2025-04-10 02:58:58', '2025-04-10 02:58:58'),
(21, 3, 'Nasi Padang Minang @ Cafe International Hotel', '92, Jalan Transfer, George Town, 10050 George Town, Pulau Pinang', 5.4211596, 100.3306909, 'Muslim-owned', 15, 'As a family-owned business run by a husband and wife duo, Nasi Padang Minang is another must-visit street food spot whenever you’re in Penang! Flavourful delights such as the Ikan Patin Asam Pedas, Sambal Tofu, Ulam Raja, Ikan Cencaru Bawang and Nasi Padang Minang will be calling your name. It comes widely recommended by Penangites too so don’t sleep on this one foodies!', '67f734741fb20.webp', '', '', '', 'Saturday to Thursday (11 am – 4 pm), Closed on Fridays', '', 'close', '2025-04-10 03:01:08', '2025-04-10 03:01:08'),
(22, 3, 'Moh Theng Pheow', 'Lebuh Chulia, Jalan Masjid, 10200 George Town, Pulau Pinang', 5.4187912, 100.3353132, 'Non-halal', 6, 'Similarly, Moh Theng Pheow is also a Michelin Guide awarded restaurant that you MUST visit! Serving a great variety of authentic Nyonya dishes, you definitely need to try out their famed kuih. From Kuih Lapis, Ang Koo, Kuih Talam, Sri Muka, Nyonya Chang and many more, it’s treat yourself day! Don’t forget to order their Assam Laksa, Nasi Lemak, Nasi Kunyit, Nasi Ulam and Roti Jala Set while you’re there.', '67f734e57d7df.webp', '', '', '', 'Lebuh Chulia, Jalan Masjid, 10200 George Town, Pulau Pinang', '', 'close', '2025-04-10 03:03:01', '2025-04-10 03:03:01'),
(33, 3, 'Green Tom Yum @ Padang Kota Lama', 'Lot 39 Kompleks, Medan Renong, Jalan Tun Syed Sheh Barakbah, George Town, 10200 George Town, Pulau Pinang', 5.4227768, 100.3407302, 'Pork-free', 13, 'Calling all daredevils! Have you ever tried green tom yum before? Filled with aromatic notes of herbs, spice, tanginess and delectable zest, this award-winning Michelin Guide green tom yum is packed to the brim with fresh seafood, mushrooms, tomato and bouncy noodles. Yum, with a satisfying spice that slowly creeps up on you, what’s not to love?', '67ffb16254671.webp', 'vendor_gallery_67ffb4dad7ab2.webp', '', '', 'Thursday to Tuesday (6 – 10 pm), Closed on Wednesdays', '', 'close', '2025-04-16 13:32:18', '2025-04-16 13:48:03'),
(34, 16, 'Union Street Famous Kareem Pasembur Rojak', '48, Bishop St, Georgetown, 10200 George Town, Penang, Malaysia', 5.4187352, 100.3416249, 'Muslim-owned', 9, 'Beware and be prepared for a wait as there’s always a pretty long queue here. As its moniker suggests, Union Street Famous Kareem Pasembur Rojak is indeed famous for their Pasembur Rojak, Telur Goyang, Kebab Daging and Roti Bakar that will make the long wait so worth it. Paired with generous portions and unique flavours, this will be a snap-worthy rojak experience for sure.', '6800655a2eec9.webp', '', '', '', 'Monday to Saturday (11 am – 6 pm), Closed on Sundays', '', 'open', '2025-04-17 02:20:10', '2025-04-17 03:48:05');

-- --------------------------------------------------------

--
-- 表的结构 `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`id`, `user_id`, `token`, `expiry_date`, `created_at`) VALUES
(3, 3, '97a9e34fd38280522611299265e0329687b2bba6d5779b62de78563e4b6d90b1', '2025-04-09 18:13:21', '2025-04-08 16:13:21'),
(4, 3, 'f96fa14107c982badc77e55fbbe77dfd2ec95ea0ad7abe95914c01e57f8b784f', '2025-04-09 18:18:29', '2025-04-08 16:18:29'),
(5, 3, '07bf399cc96baa5ba82355053f2e94d324a2b4ecd269f7ef1b6bec803c61246c', '2025-04-10 00:21:55', '2025-04-08 16:21:55'),
(6, 3, '7f6185ba0031e76641601d47097fece199169dc60a57c17111620cbb7943a437', '2025-04-17 00:15:14', '2025-04-15 16:15:14'),
(7, 3, 'a0ef943ff0bfbe0277c2e71baf4205dd180595a46bb36ecc001a082b7b16a525', '2025-04-17 00:18:20', '2025-04-15 16:18:20'),
(8, 3, 'dc17f92188a8f1edf5b7facd0c89ade433b2dc1db4651298718b61ab2761c562', '2025-04-17 00:21:29', '2025-04-15 16:21:29'),
(9, 3, '57df05d2ceb867d964b8768f6f01c7dc1af5abe1705c258f6ec5500ab5abe566', '2025-04-17 00:22:05', '2025-04-15 16:22:05'),
(10, 3, '7b5c44c9d7c5cb8e403a369cd349bc9c2f210ee5d9069316c1b405a97879b2c1', '2025-04-17 00:25:29', '2025-04-15 16:25:29'),
(11, 3, 'dbed66f56b48f240942c4a94023b3b53d940d92de6d08624508ecd1db40dcb71', '2025-04-17 00:27:09', '2025-04-15 16:27:09'),
(12, 3, '5ae5ab681fcfcb7f79af4edf7240a1b152fcdf828be1f89a95fed3520899ac32', '2025-04-18 09:27:59', '2025-04-17 01:27:59'),
(13, 3, 'b7f5a88d2ceecd548290061c9c37fccb0b321f29704f16d5092a480a576ddb21', '2025-04-18 11:40:05', '2025-04-17 03:40:05'),
(14, 3, 'e0d535e4b65656fbb124b76113fb0507eb6b40978cfdb79abd8476775a53dfdc', '2025-05-03 22:11:18', '2025-05-02 14:11:18'),
(15, 3, '8c0a7fc9ef4b881b61c8887cfee6eb84f4e80ec0ba05909b55925d5a8e100a7f', '2025-05-03 22:12:00', '2025-05-02 14:12:00'),
(16, 3, '43c3922087eb9b423e4641a6c36836983e605669e677bc8afb1d1076d0aeeaa0', '2025-05-03 22:12:46', '2025-05-02 14:12:46'),
(17, 3, 'a2b6e824d3edad78deba5145b9ce8b9f60905715ac0a592e68f7a52f59356131', '2025-05-03 22:14:24', '2025-05-02 14:14:24'),
(18, 3, '92485900faa622ef5ca073dbfc3609d1127c2054718740aac09a9d50758ec3a6', '2025-05-03 22:15:48', '2025-05-02 14:15:48'),
(19, 14, '689d1463f586c481dc3ce6a101ac4649283fa2cf8acbe67cf0d22b6f1cb8152c', '2025-05-03 22:39:05', '2025-05-02 14:39:05');

-- --------------------------------------------------------

--
-- 表的结构 `rate_comment`
--

CREATE TABLE `rate_comment` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `rate_comment`
--

INSERT INTO `rate_comment` (`id`, `vendor_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(34, 21, 3, 5, 'Very Recommended', '2025-04-10 03:22:54', '2025-04-10 03:22:54'),
(35, 21, 3, 2, 'Could be better', '2025-04-10 03:23:03', '2025-04-10 03:23:03'),
(44, 13, 17, 3, 'Too spicy', '2025-04-17 03:35:33', '2025-04-17 03:35:33'),
(45, 34, 13, 5, 'Very Recommended', '2025-04-17 03:37:18', '2025-04-17 03:37:18'),
(46, 34, 13, 2, 'Could be better', '2025-04-17 03:37:31', '2025-04-17 03:37:31'),
(47, 34, 13, 4, 'Recommended', '2025-04-17 03:37:41', '2025-04-17 03:37:41');

-- --------------------------------------------------------

--
-- 表的结构 `tourist_categories`
--

CREATE TABLE `tourist_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `tourist_categories`
--

INSERT INTO `tourist_categories` (`id`, `category_name`) VALUES
(4, 'Air Itam'),
(7, 'Batu Ferringhi'),
(5, 'Bayan Lepas'),
(13, 'Bukit Bendera'),
(9, 'Bukit Mertajam'),
(8, 'Butterworth'),
(3, 'Gelugor'),
(11, 'Georgetown'),
(2, 'Jelutong'),
(1, 'Macalister'),
(10, 'Seberang Perai'),
(6, 'Tanjung Bungah'),
(12, 'Teluk Bahang');

-- --------------------------------------------------------

--
-- 表的结构 `tourist_rating`
--

CREATE TABLE `tourist_rating` (
  `id` int(11) NOT NULL,
  `tourist_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `tourist_rating`
--

INSERT INTO `tourist_rating` (`id`, `tourist_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(5, 10, 18, 1, 'Too many bugs', '2025-04-17 03:39:07', '2025-04-17 03:39:07'),
(6, 10, 17, 5, 'Where got too many bug, bo luit said too many bug ... Haiyaaaa', '2025-04-17 03:53:51', '2025-04-17 03:53:51');

-- --------------------------------------------------------

--
-- 表的结构 `tourist_spots`
--

CREATE TABLE `tourist_spots` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `spot_name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `location_latitude` decimal(10,7) DEFAULT NULL,
  `location_longitude` decimal(10,7) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `image_gallery` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `tourist_spots`
--

INSERT INTO `tourist_spots` (`id`, `user_id`, `spot_name`, `address`, `location_latitude`, `location_longitude`, `tags`, `category_id`, `description`, `main_image`, `image_gallery`, `created_at`, `updated_at`) VALUES
(6, 3, 'Escape Penang', '828 Jalan Teluk Bahang, Teluk Bahang, Penang Island 11050 Malaysia', 5.4494408, 100.2151733, 'Amusement &amp; Theme Parks', 6, 'ESCAPE is the fun destination with exciting rides and attractions. Hosted with nature in mind. Located in Teluk Bahang, Penang, Malaysia, ESCAPE re-introduces outdoor play in a natural environment so to give the visitor an appreciation of the world around them and shows that there&#039;s no age limit to having fun.', 'tourist_main_67ff084a7ea93.webp', '', '2025-04-16 01:30:50', '2025-04-16 08:32:40'),
(7, 3, 'Penang Hill', 'Jalan Stesen Bukit Bendera Air Itam, George Town, Penang Island 11500 Malaysia', 5.4071198, 100.2790883, 'Trams', 13, 'Penang Hill is the oldest British hill station in Southeast Asia, dated late 1700&rsquo;s. The highest peak of Penang Hill stand at 833 metres (2,732ft) above sea level. Penang Hill funicular train service started on October 1923 The current funicular trains is the 4th generation system which started its operation on 24th April 2011. The funicular track stretches a distance of 1,996 metres (1.99KM) from lower to Upper Station which is the longest in Asia. Penang Hill funicular tunnel, at 79 metres (258ft) long and 10feet (3.0m) wide with a steepness of 27.9degree, is the steepest tunnel track in the world. There are a total of 52 hill bungalows located on Penang Hill (42 of them are private-owned and 10 bungalows are state-owned). Most of them are more than 100 years old and Bel Retiro (Governors Bungalows) built in1789 is the oldest. Number of visitor to Penang Hill in 2016 exceed 1.6million.', 'tourist_main_67ff6e2d0632b.webp', 'tourist_gallery_67ff6e2d065e8.webp', '2025-04-16 08:45:33', '2025-04-16 14:16:34'),
(8, 3, 'Pinang Peranakan Mansion', '29 Church Street, George Town, Penang Island 10200 Malaysia', 5.4179133, 100.3412375, 'History Museums', 11, 'The 120-year-old mansion contains an amazing array of antique furniture, crystal, art, and collections of jewelry, embroidery, and more.', 'tourist_main_67ffb7a39055b.webp', NULL, '2025-04-16 13:58:59', '2025-04-16 13:58:59'),
(9, 3, 'Kek Lok Si Temple', '1000-L, Tingkat Lembah Ria 1, Air Itam, Penang Island 11500 Malaysia', 5.3954439, 100.2789086, ' Architectural Buildings', 4, 'The Kek Lok Si Temple is the largest Buddhist temple in all of Malaysia. The main features of this hallowed ground is of course the seven-story &quot;Ten Thousand Buddhas&quot; pagoda and the 36m bronze statue of Bodhisattva Kuan Yin, the Goddess of Mercy. The temple is built on a section of Penang Hill, so, going up will give you a good cardio workout. Either that, or join the many others and line up to buy a funicular ticket. Take note that this temple is a very popular tourist destination as the carpark was full of tour coaches. Hence, even though it was a place of worship, do exercise patience as you jostle for space with the hordes of tourists. We managed to go up to the top of the pagoda, but the mass of people lining for tram tickets to the visit the Bodhisattva Kuan Yin was just overwhelming, so we gave that a miss. Nevertheless, a visit will do much good to your spiritual inner self.', 'tourist_main_67ffb860c9721.webp', NULL, '2025-04-16 14:02:08', '2025-04-16 14:02:08'),
(10, 3, 'Entopia', '830 Jalan Teluk Bahang, Teluk Bahang, Penang Island 11050 Malaysia', 5.4494330, 100.2148563, 'Gardens', 12, 'Entopia, a tropical sanctuary for our planet&#039;s little denizens from those that fly freely in the sky to the ones that creep stealthily beneath the ground. Journey into a magical paradise that honours the unsung heroes of our natural world with plenty to discover from outdoor adventures to cavernous mysteries and a multi-storey Indoor Discovery Centre. Live the moment with exciting interactive workshops and activities. There&#039;s something for everyone. Join us to experience the seen and unseen in Nature. We are the voice of nature.', 'tourist_main_67ffb96e57e93.webp', NULL, '2025-04-16 14:06:38', '2025-04-16 14:06:38'),
(11, 3, 'Armenian Street', '94, Lbh Armenian, George Town, Penang Island 10200 Malaysia', 5.4157854, 100.3366787, 'Historic Sites', 11, 'Historical neighborhood with a vibrant collection of street art, cultural sites, and restored shophouses, interlaced with quaint cafes and unique local shops.', 'tourist_main_67ffbb0474582.webp', NULL, '2025-04-16 14:13:24', '2025-04-16 14:13:24'),
(12, 3, 'The Habitat Penang Hill', 'Bukit Bendera, Penang Island 11300 Malaysia', 5.4084613, 100.2773317, ' Nature &amp; Wildlife Areas', 13, 'The Habitat Penang Hill provides the most authentic, diverse and educational Malaysian rainforest experience. Reconnect with nature in its purest form as you immerse yourself in our 130-million year old rainforest. Starting at the forest floor, our Naturalists will take you on a journey along our Nature Trail to explore the myriad of flora and fauna &ndash; plants, trees, insects, birds, reptiles, and mammals that call The Habitat home. Explore the biodiversity of the rainforest canopy on our 230m Langur Way Canopy Walk. Visit Curtis Crest Tree Top Walk at the top of Penang Hill, and embrace the 360-degree panoramic views of Penang Island from the highest viewing point of Penang. Our Shop on the Hill carries educational and ethically produced merchandise themed around all things nature and culture. Finish at our Habitat Caf&eacute; with refreshments ranging from artisanal coffee,and gourmet cakes. Discover a different side of Penang Hill. The Habitat is open from 9am - 6pm (Last entry at 4:45pm)', 'tourist_main_67ffbbacd00b8.webp', NULL, '2025-04-16 14:16:12', '2025-04-16 14:16:12'),
(13, 3, 'Cheong Fatt Tze - The Blue Mansion', '14 Leith Street, George Town, Penang Island 10200 Malaysia', 5.4215310, 100.3348789, ' Historic Sites', 11, 'Discover the story of The Blue Mansion Come in and immerse yourself in the architecture and history of iconic The Blue Mansion, one of George Town&rsquo;s most lauded architectural gems. Our trained guides will provide comprehensive insight into how the mansion came to be, its heritage, and the man whose vision brought this grand home to fruition. Covering the reception hall, the famed courtyard and the museum exhibition on the second floor, the tour will take 45 minutes in total. Please note that in order to guard the privacy of our hotel guests, only some parts of the mansion are accessible during the tour, but we do encourage guests to experience different facets of The Blue Mansion through staying with us, having a classic cocktail at the bar, or enjoying a meal at our restaurant &ndash; Indigo', 'tourist_main_67ffbc32c0450.webp', NULL, '2025-04-16 14:18:26', '2025-04-16 14:18:26'),
(14, 3, 'Chew Jetty', 'Pengkalan Weld, George Town, Penang Island 10300 Malaysia', 5.4121859, 100.3381012, 'Points of Interest &amp; Landmarks', 11, 'Historical waterfront community with traditional stilt houses, vibrant souvenir shops, and Chinese temples, set against a backdrop of harbor views and a lively atmosphere.', 'tourist_main_67ffbcb2be285.webp', NULL, '2025-04-16 14:20:34', '2025-04-16 14:20:34'),
(15, 3, 'Penang Botanical Gardens', 'Bangunan Pavilion, Kompleks Pentadbiran, Jalan Kebun Bunga, 10350 George Town, Pulau Pinang, Malaysia', 5.4311507, 100.2989838, 'Gardens', 11, 'Tranquil botanical retreat with diverse flora, including rainforest trees and specialist plant houses. Features wildlife, shady paths for leisurely strolls, and serene lily ponds.', 'tourist_main_67ffbd32b9567.webp', NULL, '2025-04-16 14:22:42', '2025-04-16 14:22:42');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `dob` date NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'Uploads/default-avatar.png',
  `role` enum('User','Vendor','Admin','PendingVendor') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `contact_number`, `email`, `password`, `address`, `gender`, `dob`, `avatar`, `role`, `created_at`) VALUES
(3, 'WongJZ', '0174908832', 'jiazhun379@gmail.com', '$2y$10$gN0pxH9QLJHls2/PR53qheSDf8yoPhqZ1yl5U1jY5cl/KsA743zhm', '123, address, 10000, pulau pinang, malaysia', 'Male', '2025-03-06', 'Uploads/1002678235.png', 'Admin', '2025-03-12 03:41:43'),
(13, 'Normal User', '0123456789', 'user@ysh-official.com', '$2y$10$cHd28OE7TXFCy2n.8XaN2.UxmffVagLfGo1LV0sYbJ3sW03a9R82a', '123, address, 10000, pulau pinang, malaysia', 'Other', '2025-04-01', 'Uploads/default-avatar.webp', 'User', '2025-04-10 02:03:43'),
(14, 'Foodie Vendor', '0123456789', 'vendor@ysh-official.com', '$2y$10$VXl3lprgSWVYOemRMNvK.exxxoEG0Ueovc786//uabdXN0Kv1lKjK', '123, address, 10000, pulau pinang, malaysia', 'Other', '2025-04-01', 'Uploads/default-avatar.webp', 'Vendor', '2025-04-10 02:04:52'),
(15, 'Administration', '0123456789', 'noreply@ysh-official.com', '$2y$10$.9I6FTIJzYqgg7FLVFcyQ.Nsyv0XF5WPqKBEJwzZFYi8tD5jHMmP2', '123, address, 10000, pulau pinang, malaysia', 'Other', '2025-04-01', 'Uploads/default-avatar.webp', 'Admin', '2025-04-10 02:06:28'),
(16, 'FNT Project', '0123456789', 'sc06230029bse@sentral.edu.my', '$2y$10$uhlozfzHFtRJM4A9Zd.jReDYI0qw.Njh1VnaWchbKiEr8hy93ye4S', '123, address, fnt project, 10000, pulau pinang, malaysia', 'Other', '2025-01-01', 'Uploads/default-avatar.webp', 'Vendor', '2025-04-17 02:15:41'),
(17, 'Khairul', '0195711459', 'sc05240031bse@sentral.edu.my', '$2y$10$TtmqPLPGZ6od.aD6oStXPOeW.cVbjguXkr/wmUuttWLPsKvdUx8OS', 'Penang', 'Male', '2025-04-17', 'Uploads/1000007853.jpg', 'Admin', '2025-04-17 03:33:50'),
(18, 'Law', '010-0000000', 'sc05240032bse@sentral.edu.my', '$2y$10$lpcOLGfJex4jg6Xp/wPDquzRWeu6kUfwoqO3rjzQO3Wr/o7i47lhe', 'Air Itam', 'Other', '2001-09-11', 'Uploads/default-avatar.webp', 'Admin', '2025-04-17 03:38:31'),
(19, 'Yeoh Xin Pei', '0184661801', 'yeohxinpei123@gmail.com', '$2y$10$xK1N0ivMS76zIJ9oPIw3zOKSOrFaO4BxNlp8AS4dCvrQvYbPHXqoK', '26 jalan keranji 1/3 taman bertam', 'Female', '2025-04-22', 'Uploads/default-avatar.webp', 'Admin', '2025-04-17 03:49:35'),
(20, 'Marcelinahh', '0164141529', 'marcelinang748@gmail.com', '$2y$10$l9jWmJzL6l7sSFd5L7W8Ce38xgCAEOM8z3SLo/atEJc3p.Ty12r.6', 'jalan gurdwara', 'Female', '2025-04-17', 'Uploads/default-avatar.webp', 'Admin', '2025-04-17 03:49:48'),
(21, 'Vendor 2', '0123456789', 'vendor2@ysh-official.com', '$2y$10$I44PC5UGoEWheXCBoryAze0b/QHaPZrp9TFM4uyGsrXF3gzyp5MtW', '123, fnt project address, 10000 pulau pinang, malaysia', 'Other', '2025-04-01', 'Uploads/default-avatar.webp', 'Vendor', '2025-04-17 04:10:47'),
(22, 'User 2', '0123456789', 'user2@ysh-official.com', '$2y$10$0YU7MpqQ2w/E4xnduVrLbeVDkzr/.X/BMnAiv4pROnHAtJePOn3U6', '123, fnt project address, 10000 pulau pinang, malaysia', 'Other', '2025-04-01', 'Uploads/default-avatar.webp', 'User', '2025-04-17 04:11:35'),
(23, 'Jia Zhun Wong', '042636368', 'testeralpha@gmail.com', '$2y$10$zRGmA.5j2rLvMHun2wpf/.BX.MZV8h4TdPpscl6N2sqR7Q2AaY0KG', '78-11-7,Casa Impian,Jalan Ooi Thaim Siew', 'Other', '2025-05-22', 'Uploads/default-avatar.webp', 'Vendor', '2025-05-05 09:14:10');

-- --------------------------------------------------------

--
-- 表的结构 `user_settings`
--

CREATE TABLE `user_settings` (
  `setting_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification` tinyint(1) DEFAULT 0,
  `enable_gps` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `user_settings`
--

INSERT INTO `user_settings` (`setting_id`, `user_id`, `notification`, `enable_gps`) VALUES
(1, 3, 1, 1),
(2, 14, 1, 1),
(3, 13, 1, 1),
(4, 15, 0, 0),
(5, 16, 0, 0),
(6, 17, 0, 0),
(7, 18, 0, 0),
(8, 20, 0, 0),
(9, 19, 0, 0);

--
-- 转储表的索引
--

--
-- 表的索引 `foodie_categories`
--
ALTER TABLE `foodie_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- 表的索引 `foodie_vendors`
--
ALTER TABLE `foodie_vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- 表的索引 `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `rate_comment`
--
ALTER TABLE `rate_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- 表的索引 `tourist_categories`
--
ALTER TABLE `tourist_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- 表的索引 `tourist_rating`
--
ALTER TABLE `tourist_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tourist_id` (`tourist_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- 表的索引 `tourist_spots`
--
ALTER TABLE `tourist_spots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_id_2` (`category_id`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 表的索引 `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `foodie_categories`
--
ALTER TABLE `foodie_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用表AUTO_INCREMENT `foodie_vendors`
--
ALTER TABLE `foodie_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `rate_comment`
--
ALTER TABLE `rate_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用表AUTO_INCREMENT `tourist_categories`
--
ALTER TABLE `tourist_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `tourist_rating`
--
ALTER TABLE `tourist_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `tourist_spots`
--
ALTER TABLE `tourist_spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用表AUTO_INCREMENT `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `setting_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 限制导出的表
--

--
-- 限制表 `foodie_vendors`
--
ALTER TABLE `foodie_vendors`
  ADD CONSTRAINT `foodie_vendors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foodie_vendors_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `foodie_categories` (`category_id`) ON DELETE CASCADE;

--
-- 限制表 `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD CONSTRAINT `password_reset_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `rate_comment`
--
ALTER TABLE `rate_comment`
  ADD CONSTRAINT `rate_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rate_comment_ibfk_3` FOREIGN KEY (`vendor_id`) REFERENCES `foodie_vendors` (`id`) ON DELETE CASCADE;

--
-- 限制表 `tourist_rating`
--
ALTER TABLE `tourist_rating`
  ADD CONSTRAINT `tourist_rating_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tourist_rating_ibfk_2` FOREIGN KEY (`tourist_id`) REFERENCES `tourist_spots` (`id`) ON DELETE CASCADE;

--
-- 限制表 `tourist_spots`
--
ALTER TABLE `tourist_spots`
  ADD CONSTRAINT `tourist_spots_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tourist_spots_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tourist_categories` (`id`) ON DELETE CASCADE;

--
-- 限制表 `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `user_settings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
