-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2025 at 02:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nz_fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_msg`
--

CREATE TABLE `admin_msg` (
  `am_id` int(11) NOT NULL,
  `cus_id` varchar(130) NOT NULL,
  `user_id` varchar(130) NOT NULL,
  `message` varchar(500) NOT NULL,
  `status` varchar(1) NOT NULL,
  `cm_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='customer message' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin_msg`
--

INSERT INTO `admin_msg` (`am_id`, `cus_id`, `user_id`, `message`, `status`, `cm_id`) VALUES
(1, 'adiwiryawan@gmail.com', 'admin@admin.com', 'ada dongg.., buruan di checkout yaa...', '0', '4'),
(2, 'adiwiryawan@gmail.com', 'admin@admin.com', 'Kami akan segera proses.. Terimakasih sudah berbelanja disini..', '0', '5'),
(12, 'adiwiryawan@gmail.com', 'admin@admin.com', 'baik sebentar yaa', '0', '24'),
(13, 'adiwiryawan@gmail.com', 'admin@admin.com', '', '0', '0'),
(18, 'meidi@gmail.com', 'meidi', 'Hallo meidi, ada yang bisa kamibantu dalam pemesanan produk ???.', '0', '2'),
(22, 'meidi@gmail.com', 'meidi', 'Pesan baru dari customer.', '0', '22'),
(23, 'arisatya@gmail.com', 'arisatya', 'Sudah di proses, ditunggu ya kak..', '0', '6');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(33) NOT NULL,
  `cus_id` varchar(50) NOT NULL,
  `pro_id` varchar(50) NOT NULL,
  `pro_quantity` varchar(50) NOT NULL DEFAULT '0',
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='cart table';

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cus_id`, `pro_id`, `pro_quantity`, `size`) VALUES
(18, 'adiwiryawan@gmail.com', '1', '1', 'M'),
(19, 'gusrama@gmail.com', '13', '1', 'M'),
(20, 'meidi@gmail.com', '12', '1', 'M'),
(21, 'meidi@gmail.com', '1', '1', 'M'),
(23, 'arisatya@gmail.com', '17', '1', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `customer_logs`
--

CREATE TABLE `customer_logs` (
  `cus_id` varchar(100) NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL DEFAULT '',
  `cus_acc_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Customer Logins';

--
-- Dumping data for table `customer_logs`
--

INSERT INTO `customer_logs` (`cus_id`, `cus_name`, `contact`, `cus_acc_code`) VALUES
('adiwiryawan@gmail.com', 'adi wiryawan', '087760118344', 'adDd7bLcouAMc'),
('arisatya@gmail.com', 'arisatya', '081234567', 'areNRdICtUyG2'),
('gusrama@gmail.com', 'gusrama', '087760118344', 'guregikWF4WT2'),
('meidi@gmail.com', 'meidi', '088111222', 'menSc/yM4UenI');

-- --------------------------------------------------------

--
-- Table structure for table `customer_msg`
--

CREATE TABLE `customer_msg` (
  `cm_id` int(11) NOT NULL,
  `cus_id` varchar(130) NOT NULL,
  `cus_name` varchar(50) NOT NULL,
  `user_id` varchar(130) NOT NULL,
  `message` varchar(500) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='customer message';

--
-- Dumping data for table `customer_msg`
--

INSERT INTO `customer_msg` (`cm_id`, `cus_id`, `cus_name`, `user_id`, `message`, `status`) VALUES
(1, 'gusrama@gmail.com', 'gusrama', '', 'hi', '0'),
(2, 'meidi@gmail.com', 'meidi', '', 'hallo kak adi', '1'),
(4, 'adiwiryawan@gmail.com', 'adi wiryawan', '', 'ada potongan harga nggak admin ganteng???', '1'),
(5, 'adiwiryawan@gmail.com', 'adi wiryawan', '', 'saya mau order sekarang yaa tolong segera di proses... Terimakasih.', '1'),
(6, 'arisatya@gmail.com', 'arisatya', '', 'apakah pesanan saya sudah kirim???', '1'),
(22, 'meidi@gmail.com', 'meidi', '', 'hallo', '1'),
(24, 'adiwiryawan@gmail.com', 'adi wiryawan', '', 'bisa kirim no resi pengiriman???', '1');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `user_id` varchar(130) NOT NULL,
  `name` varchar(130) NOT NULL,
  `access_code` varchar(130) NOT NULL,
  `role` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='login credentials';

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`user_id`, `name`, `access_code`, `role`, `picture`) VALUES
('adiwiryawan@gmail.com', 'adiwiryaawn', 'adDd7bLcouAMc', 'admin', 'adiwiryawan.jpeg'),
('admin@nzfashion.com', 'Administrator', 'adpexzg3FUZAk', 'admin', 'default.jpg'),
('gusrama@gmail.com', 'gusrama', 'guregikWF4WT2', 'staff', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` int(33) NOT NULL,
  `pro_name` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `size` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `brand` varchar(100) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `picture` varchar(150) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='products table';

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `category`, `size`, `price`, `brand`, `description`, `picture`) VALUES
(1, 'POLO IN NAVY ', 'T-Shirts', 'M', 150000, 'POLO', 'MADE IN L.A. TIPPED MONTAUK\r\n-Slub-Spun Jersey\r\n-100% garment dyed cotton.\r\n-Buttonless placket.\r\n-Made in USA\r\n-Machine wash.\r\n-Style Number KN6277411', 'growth-1.jpg'),
(2, 'White Swatter', 'T-Shirts', 'M', 2500, 'POLO', 'ITALIAN COTTON SILK SWATTER\r\n-55% Silk 45% Cotton from Italy.\r\n-Classic fit. \r\n-Contrast tipping.\r\n-Shell buttons.\r\n-Imported.\r\n-Dry Clean.\r\n-SW4739268', '2_3246657913343600311785981549.jpg'),
(3, 'RIVIERA SWEATER', 'T-Shirts', 'M', 2300, 'POLO', 'ITALIAN COTTON SILK\r\n-55% Silk 45% Cotton from Italy.\r\n-Classic fit. \r\n-Contrast tipping.\r\n-Shell buttons.\r\n-Imported.', '3_139956265214719457861182770685.jpg'),
(5, 'FULL PLACKET NAVY', 'Shirts', 'L', 3000, 'POLO', 'MADE IN L.A. MONTAUK TIPPED\r\nManufactured in a legendary Los Angeles factory from premium imported cotton', '5_563606254211656933715331001.jpg'),
(6, 'RIVIERA SWEATER', 'T-Shirts', 'L', 2600, 'POLO', 'ITALIAN COTTON SILK TIPPED RIVIERA SWEATER POLO IN IVORY\r\n55% Silk 45% Cotton from Italy.\r\nClassic fit. \r\nContrast tipping.\r\nShell buttons.\r\nImported.', '6_418917514897548768927856710.jpg'),
(7, 'Blue Sneaker', 'Shoes', 'M', 4000, 'Vans', 'Original style number\r\nVintage-inspired canvas uppers\r\nOrtholite® sockliners\r\nHigher glossed foxing tape\r\nCotton laces', '7_139138358715705227261942431907.jpg'),
(8, 'Blue Sneaker', 'Shoes', 'L', 4000, 'Vans', 'Original style number\r\nVintage-inspired canvas uppers\r\nOrtholite® sockliners\r\nHigher glossed foxing tape\r\nCotton laces', '8_18196284371968891056879629907.jpg'),
(9, 'CLASSIC CHECKERBOARD SNEAKER', 'Shoes', 'M', 5000, 'Vans', 'CLASSIC SLIP ON IN CHECKERBOARD\r\nComposition: Textile\r\nMen\'s sizes only', '9_20118188361239344782736316406.jpg'),
(10, 'BLUE STRECH DENIM', 'Trousers', 'M', 6500, 'TOD SYNDER', 'BLUE STRECH DENIM\r\n85.5% cotton, 13.5% polyester, 1% Elastane\r\n12.5oz denim\r\nSlim fit\r\nLeg opening circumference: 14\"(based on size 32w)\r\nOur most popular wash, a lightly faded vintage blue jean\r\nRoom at the top but tailored through the leg\r\nZipper fly', '10_13910530481591882134902654133.jpg'),
(11, 'BLUE STRECH DENIM', 'Trousers', 'M', 5000, 'TOD SYNDER', '85.5% cotton, 13.5% polyester, 1% Elastane\r\n12.5oz denim\r\nSlim fit\r\nLeg opening circumference: 14\"(based on size 32w)\r\nOur most popular wash, a lightly faded vintage blue jean\r\nRoom at the top but tailored through the leg\r\nZipper fly', '11_5038249701888545113673840029.jpg'),
(12, 'LIGHT BLUE DENIM', 'Trousers', 'L', 5000, 'TOD SYNDER', 'LIGHT BLUE DENIM\r\n\r\nRoom at the top but tailored through the leg\r\nZipper fly\r\nClassic five pocket construction\r\nAntique copper rivets\r\nChain stitching on the coin pocket\r\nMachine Wash', '12_64986202223267464167371999.jpg'),
(13, 'DENIM SHIRT', 'Shirts', 'S', 2300, 'MASS', 'JAPANESE DENIM OVERSHIRT IN STONE WASH\r\n\r\n100% Cotton\r\nJapanese fabric\r\nFits similar to our other overshirts; relaxed enough to layer\r\nGenuine melamine buttons\r\nContrast stitching reminiscent of vintage denim\r\nMachine Was', '13_614220711623602623506044961.jpg'),
(14, 'DENIM SHIRT', 'Shirts', 'S', 2300, 'MASS', 'DENIM SHIRT\r\n\r\n100% Cotton\r\nJapanese fabric\r\nFits similar to our other overshirts; relaxed enough to layer\r\nGenuine melamine buttons\r\nContrast stitching reminiscent of vintage denim\r\nMachine Was', '14_34987495516489749071768653769.jpg'),
(15, 'BROWN BOOTS', 'Shoes', 'S', 4100, 'NIKE', 'BROWN BOOTS NIKE\r\n\r\nAvailable in Tan, Tobacco, Grey and Olive.\r\n\r\nItalian Suede\r\n12mm Rubber Sole\r\nMade in Italy', '15_169461576510076313951700148027.jpg'),
(16, 'BROWN BOOTS', 'Shoes', 'S', 4200, 'NIKE', 'Available in Tan, Tobacco, Grey and Olive.\r\nBOOTS NIKE\r\n\r\nItalian Suede\r\n12mm Rubber Sole\r\nMade in Italy', '16_1530302562176752957977456183.jpg'),
(17, 'BLUE SPIRAL BELT', 'Accessories', 'S', 1200, 'MASS', 'Stretch Woven Belt\r\n\r\nFull Grain Leather Detailing\r\nBrass Buckle\r\nFits small, take 2 sizes larger than normal\r\nMade in Italy', '17_14293864161045553850786866746.jpg'),
(18, 'TIMEX EXPEDITION ', 'Watches', 'M', 12000, 'TIMEX', 'Product: TW2V00700JR\r\nCase Width: 38 mm\r\nCase Material: Stainless Steel\r\nBand Color: Brown\r\nBuckle/Clasp: Buckle\r\nCase Color: Stainless Steel\r\nCase Finish: Brushed/Beadblast\r\nCase Shape: Round', '18_17986187775800240941393947134.jpg'),
(19, 'TIMEX BROWN LEATHER', 'Watches', 'M', 14000, 'TIMEX', 'Dimensions: 38mm case; 18mm lug; 13mm height\r\n\r\nWater Resistance: 50 meter\r\n\r\nWrist Profile: Mens (150 / 183 / 205)\r\n\r\nCrystal: Acrylic\r\n\r\nQuick-Release Horween Leather Strap', '19_205471065314709216112011253181.jpg'),
(20, 'TIMEX MARLIN LEATHER', 'Watches', 'M', 15000, 'TIMEX', 'TIMEX MARLIN LEATHER STRAP\r\n\r\nCase Material: Stainless Steel\r\nBand Color: Blue\r\nBuckle/Clasp: Buckle\r\nCase Color: Stainless Steel\r\nCase Finish: Brushed/Polished\r\nCase Shape: Round\r\nCase Size: Full Size\r\nCrystal/Lens: Acrylic\r\nDial Color: Blue', '20_12620532241850566287826391118.jpg'),
(21, 'ITALIAN SHIRT JACKET', 'Shirts', 'L', 3000, 'TOD SYNDER', '00% Wool\r\nMade in Italy\r\nBrushed finish\r\nTwo oversize chest pockets\r\nGenuine horn buttons\r\nBoxy fit\r\nFor a more tailored fit please size down', '21_1694189644880486150969837333.jpg'),
(22, 'ITALIAN WOOL COAT', 'Shirts', 'L', 4000, 'TOD SYNDER', 'Made in Italy\r\nBrushed finish\r\nTwo oversize chest pockets\r\nGenuine horn buttons\r\nBoxy fit\r\nFor a more tailored fit please size down\r\nDry Clean', '22_708290888460695237199768671.jpg'),
(23, 'SLIM FIT JEAN', 'Trousers', 'L', 4300, 'EDVIN', 'SLIM FIT LIGHTWEIGHT JAPANESE SELVEDGE JEAN\r\n100% cotton\r\n11oz denim\r\nSlim fit \r\nLeg opening circumference: 14\"(based on size 32w).\r\nImported Japanese Selvedge\r\nGenuine Selvedge \r\nDue to the rigid nature of this high-quality denim, we suggest you size up for a more comfortable fit\r\nShank button fly', '23_107542404917033407691855827647.jpg'),
(24, 'CLASSIC FIT JEAN', 'Trousers', 'M', 4300, 'EDVIN', '100% Cotton\r\n12.5oz Denim\r\nAntique Copper Rivets\r\nClassic Fit\r\nFully Relaxed, With a Slightly Tailored Leg\r\nRoomier in the Thighs Than Our Straight Fit\r\nLeg Opening Circumference: 16.5” (Based on a 32W)\r\nVintage-Inspired Shank Button Fly', '24_18037381099298443682046127652.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products_archive`
--

CREATE TABLE `products_archive` (
  `pro_id` int(33) NOT NULL,
  `pro_name` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `size` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `brand` varchar(100) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `picture` varchar(150) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='products table' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products_archive`
--

INSERT INTO `products_archive` (`pro_id`, `pro_name`, `category`, `size`, `price`, `brand`, `description`, `picture`) VALUES
(4, ' RIVIERA SWEATER', 'Shirts', 'M', 2300, 'POLO', 'ITALIAN COTTON SILK\r\n55% Silk 45% Cotton from Italy.\r\nClassic fit. \r\nContrast tipping.\r\nShell buttons.', '4_164852895110551568591827466036.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wis_id` int(33) NOT NULL,
  `cus_id` varchar(50) NOT NULL,
  `pro_id` varchar(50) NOT NULL,
  `pro_quantity` varchar(50) NOT NULL DEFAULT '1',
  `size` varchar(50) NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='cart table' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wis_id`, `cus_id`, `pro_id`, `pro_quantity`, `size`) VALUES
(28, 'adiwiryawan@gmail.com', '1', '1', 'M'),
(30, 'meidi@gmail.com', '17', '1', 'M'),
(31, 'meidi@gmail.com', '8', '1', 'M');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_msg`
--
ALTER TABLE `admin_msg`
  ADD PRIMARY KEY (`am_id`) USING BTREE;

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `customer_logs`
--
ALTER TABLE `customer_logs`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `customer_msg`
--
ALTER TABLE `customer_msg`
  ADD PRIMARY KEY (`cm_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `products_archive`
--
ALTER TABLE `products_archive`
  ADD PRIMARY KEY (`pro_id`) USING BTREE;

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wis_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_msg`
--
ALTER TABLE `admin_msg`
  MODIFY `am_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customer_msg`
--
ALTER TABLE `customer_msg`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products_archive`
--
ALTER TABLE `products_archive`
  MODIFY `pro_id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wis_id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
