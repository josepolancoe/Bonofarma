-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 02:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bonofarma`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Mr. Master Admin', '', '', 'admin@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1574537538'),
(2, 'Mr. Accountant', '017', 'Dhaka', 'accountant@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '4', '1430737266'),
(3, 'Mr Manager', '021525566', 'Niketon Dhaka', 'manager@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '6', '1433682938'),
(4, 'Polanco', '', '', 'polanco@bonofarma.ga', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1595724621');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `page` longtext DEFAULT NULL,
  `place` longtext DEFAULT NULL,
  `num` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `link` longtext DEFAULT NULL,
  `image_ext` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`, `image_ext`) VALUES
(1, 'home', 'after_slider', '1', '0', '', '.jpg'),
(2, 'home', 'after_slider', '2', '0', '', '.jpg'),
(3, 'home', 'after_slider', '3', '0', '', '.jpg'),
(4, 'home', 'after_slider', '4', '0', '', '.jpg'),
(5, 'home', 'after_featured', '1', '0', '', NULL),
(6, 'home', 'after_featured', '2', '0', '', NULL),
(7, 'home', 'after_featured', '3', '0', '', NULL),
(8, 'home', 'after_featured', '4', '0', '', NULL),
(9, 'home', 'after_search', '1', '0', '', NULL),
(10, 'home', 'after_search', '2', '0', '', NULL),
(11, 'home', 'after_search', '3', '0', '', NULL),
(12, 'home', 'after_search', '4', '0', '', NULL),
(13, 'home', 'after_category', '1', '0', '', NULL),
(14, 'home', 'after_category', '2', '0', '', NULL),
(15, 'home', 'after_category', '3', '0', '', NULL),
(16, 'home', 'after_category', '4', '0', '', NULL),
(17, 'home', 'after_latest', '1', '0', '', NULL),
(18, 'home', 'after_popular', '1', '0', '', NULL),
(19, 'home', 'after_most_viewed', '1', '0', '', NULL),
(20, 'category', 'after_filters', '1', 'ok', '', NULL),
(21, 'featured', 'after_most_sold', '1', '0', '', NULL),
(22, 'featured', 'after_most_viewed', '1', '0', '', NULL),
(23, 'vendor_home', 'after_filter', '1', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `summery` varchar(1000) DEFAULT NULL,
  `author` varchar(500) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `blog_category` varchar(25) DEFAULT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(15, 'sigue una dieta saludable y equilibrada', '', 'Bonofarma', '2020-06-29', '<p xss=\"removed\"><span xss=\"removed\">La <span xss=\"removed\">dieta juega un papel importante en el desarrollo y evolución de la enfermedad</span>. Los hábitos alimentarios están siendo objeto de debate en los últimos años por su potencial contribución en el proceso inflamatorio. Una dieta saludable, variable y equilibrada aporta al organismo los nutrientes suficientes para su correcto funcionamiento.</span></p><p xss=\"removed\"><span xss=\"removed\">Come abundantes verduras, hortalizas frescas, fruta de temporada y legumbres junto con pescado fresco. Evita al máximo consumir productos que contengan grasas saturadas y azúcares, tales como la bollería industrial, comidas precocinadas o zumos envasados.</span></p><p xss=\"removed\"><span xss=\"removed\">En los últimos estudios publicados se ha visto que determinadas colonias bacterianas de <span xss=\"removed\">la flora intestinal pueden tener efectos sobre la inmunidad</span>. Ciertos alimentos como el miso, el té Kombucha, las microalgas, el yogurt y el chocolate negro podrían contribuir al buen estado de la flora intestinal.</span></p>', NULL, '7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `name`) VALUES
(7, 'Alimentación');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `logo` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `logo`) VALUES
(275, 'NIVEA', NULL, 'brand_275.png'),
(276, 'ORAL B', NULL, 'brand_276.png'),
(277, 'JOHNSON\'S ', NULL, 'brand_277.png'),
(278, 'DUREX', NULL, 'brand_278.png'),
(279, 'GILLETTE', NULL, 'brand_279.png'),
(280, 'SUAVE', NULL, 'brand_280.png'),
(281, 'LISTERINE', NULL, 'brand_281.png'),
(282, 'PAMPERS', NULL, 'brand_282.png');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_stock`
--

CREATE TABLE `bundle_stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `product_bundle` longtext DEFAULT NULL,
  `quantity` longtext DEFAULT NULL,
  `rate` longtext DEFAULT NULL,
  `total` longtext DEFAULT NULL,
  `reason_note` longtext DEFAULT NULL,
  `datetime` longtext DEFAULT NULL,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `business_settings_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', 'paypal@mail.com'),
(2, 'shipping_cost', 'ok', '10'),
(3, 'shipping_cost_type', '', 'product_wise'),
(4, 'currency', '', '27'),
(6, 'shipment_info', '', '<p><span style=\"line-height: 17.1429px;\">&nbsp;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '80'),
(9, 'paypal_set', '', 'ok'),
(10, 'paypal_type', '', 'sandbox'),
(11, 'faqs', '', '[{\"question\":\"How to install the script?\",\"answer\":\"<p open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;=\\\"\\\" line-height:=\\\"\\\" 1.4;\\\"=\\\"\\\" style=\\\"padding: 0px;\\\"><span id=\\\"docs-internal-guid-f5a12cba-cd69-9b16-f96d-28e5d9a3f80f\\\" style=\\\"\\\">Please follow the following procedure to install this script in local or, online server:<\\/span><\\/p><p open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;=\\\"\\\" line-height:=\\\"\\\" 1.4;\\\"=\\\"\\\" style=\\\"margin-bottom: 24px; padding: 0px; text-align: justify;\\\"><span style=\\\"vertical-align: baseline;\\\"><\\/span><\\/p><ol open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;\\\"=\\\"\\\" style=\\\"padding: 0px; text-align: justify;\\\"><li style=\\\"line-height: 1.4;\\\">Upload the&nbsp;<span style=\\\"vertical-align: baseline;\\\">zip<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;&nbsp;file downloaded from CodeCanyon to your server in the public_html or, any other directory you intend the script to run.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Extract the&nbsp;<span style=\\\"vertical-align: baseline;\\\">zip&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">file in that directory.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Create a&nbsp;<span style=\\\"vertical-align: baseline;\\\">new database<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;from your server&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">MySQL<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;with&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">PhpMyAdmin<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Create&nbsp;<span style=\\\"vertical-align: baseline;\\\">db user<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;to the database and link that database to the&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">db user<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Go to the URL of the unzipped folder.<br><\\/li><li style=\\\"line-height: 1.4;\\\">Make sure the required files are permitted&nbsp;<span style=\\\"vertical-align: baseline;\\\">writeable<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;in the folder you put them and all the requirements are fulfilled by the server environment.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Fill up these Installation form with your&nbsp;<span style=\\\"vertical-align: baseline;\\\">database hostname<\\/span><span style=\\\"vertical-align: baseline;\\\">,&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database username<\\/span><span style=\\\"vertical-align: baseline;\\\">, &nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database password<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;and&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database name<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;respectively which you have created in the previous step.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Provide your default admin credentials in the form.<br><\\/li><li style=\\\"line-height: 1.4;\\\">Click on \\u201c<span style=\\\"vertical-align: baseline;\\\">Install Supershop<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u201d and wait for the installation to complete.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Links to \\u201c<span style=\\\"vertical-align: baseline;\\\">Activation Form<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u201d, \\\"Admin Panel and the \\\"Frontend\\\" of the site will appear. First, activate the license for your online domain and then browse in it. Admin login URL will be&nbsp;your_site\\/index.php\\/admin<\\/span><\\/li><\\/ol>\"},{\"question\":\"How to setup Business setup?\",\"answer\":\"<ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; text-align: justify;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Log into <\\/span><span style=\\\"vertical-align: baseline;\\\">Admin Panel<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the <\\/span><span style=\\\"vertical-align: baseline;\\\">Navigation<\\/span><span style=\\\"vertical-align: baseline;\\\">, Go to <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">We have divided the whole Vendor Management into 3 parts to simplify the system so that anyone can understand the processes completely. These &nbsp;3 parts are described as Vendor List, Vendor Payments &amp; Vendor Packages.<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor List: <\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Total list of the vendors are shown in a table from where this list can be downloaded in pdf, xls or clv file format. Admin can search for any specific vendor from the search box available in the table.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the list Admin can view a short described profile of the vendors. Admin can approve newly registered vendors and can also postpone the vendors to log in.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can pay to vendor a certain amount to money which are sold through the online payment methods. Admin will not pay to vendor for those products which are sold on cash on delivery method.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can delete any vendor from the list.<\\/span><\\/p><\\/li><\\/ol><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor Payments:<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">A list of vendors are shown who have upgraded their package.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can check payment details.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can delete any payment.<\\/span><\\/p><\\/li><\\/ol><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor Package: <\\/span><span style=\\\"vertical-align: baseline;\\\">Admin can create, edit &amp; delete vendor packages from here. Admin can also download the package list in pdf, csv or xls file format and can search for specific vendor package. Process of creating a vendor package:<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Log in<\\/span><span style=\\\"vertical-align: baseline;\\\"> to the Admin Panel &nbsp;using email &amp; password.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the <\\/span><span style=\\\"vertical-align: baseline;\\\">Navigation<\\/span><span style=\\\"vertical-align: baseline;\\\">, go to <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor ? Vendor Package<\\/span><span style=\\\"vertical-align: baseline;\\\"> where you can see a table of <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor Package List <\\/span><span style=\\\"vertical-align: baseline;\\\">which are created before.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Above the vendor package list, click on the button named \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">Create Vendorship<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 to create the vendor package.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Fill up the form by giving the proper <\\/span><span style=\\\"vertical-align: baseline;\\\">title <\\/span><span style=\\\"vertical-align: baseline;\\\">of the vendor package, set the no. of <\\/span><span style=\\\"vertical-align: baseline;\\\">maximum products<\\/span><span style=\\\"vertical-align: baseline;\\\"> a vendor can upload of this package, define a <\\/span><span style=\\\"vertical-align: baseline;\\\">price<\\/span><span style=\\\"vertical-align: baseline;\\\"> of the package, set the <\\/span><span style=\\\"vertical-align: baseline;\\\">duration of expiration<\\/span><span style=\\\"vertical-align: baseline;\\\"> of the package and select a vendor package <\\/span><span style=\\\"vertical-align: baseline;\\\">seal<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Click the \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">Save<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 button to create the vendor package.<\\/span><\\/p><\\/li><\\/ol><\\/ol><\\/ol><p style=\\\"margin-bottom: 24px; padding: 0px;\\\"><span style=\\\"vertical-align: baseline;\\\">The newly created package will be shown on the <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor Package List (<\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor ? Vendor Package<\\/span><span style=\\\"vertical-align: baseline;\\\">)<\\/span><span style=\\\"vertical-align: baseline;\\\"> table where you can <\\/span><span style=\\\"vertical-align: baseline;\\\">Edit &amp; Delete<\\/span><span style=\\\"vertical-align: baseline;\\\"> the package.<\\/span><\\/p>\"},{\"question\":\"How to Purchase a Product?\",\"answer\":\"<ol style=\\\"padding: 0px; text-align: justify;\\\"><li style=\\\"line-height: 1.6;\\\">Click on the \\u2018<span style=\\\"vertical-align: baseline;\\\">Add to cart<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 button of any product which you want to purchase.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">The products which are added to cart will be in the right side of middle header portion.<br><\\/li><li style=\\\"line-height: 1.6;\\\">From there, go to&nbsp;<span style=\\\"vertical-align: baseline;\\\">checkout<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;page.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Log in<span style=\\\"vertical-align: baseline;\\\">&nbsp;to your account using authenticated email &amp; password or you can login through social media(facebook &amp; google plus). If you already logged in, follow the next step.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">In the checkout page, you can apply the&nbsp;<span style=\\\"vertical-align: baseline;\\\">coupon&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">if it is provided to you. Then click \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">next<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Enter the address where you want to deliver your products. Then click \\u2018<span style=\\\"vertical-align: baseline;\\\">next<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Choose your&nbsp;<span style=\\\"vertical-align: baseline;\\\">payment method<\\/span><span style=\\\"vertical-align: baseline;\\\">. Then Place your order.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Complete the payment using your paypal or stripe account.<br><\\/li><li style=\\\"line-height: 1.6;\\\">System will generate an&nbsp;<span style=\\\"vertical-align: baseline;\\\">invoice&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">for your purchase. You can print the invoice.<\\/span><\\/li><\\/ol>\"}]'),
(12, 'cash_set', '', 'ok'),
(13, 'stripe_set', '', 'ok'),
(14, 'stripe_secret', '', 'sk_test_NYIpPjs6gbmuogdwUuJ8She4'),
(15, 'stripe_publishable', '', 'pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx'),
(16, 'home_def_currency', '', '27'),
(17, 'c2_set', NULL, 'no'),
(18, 'c2_user', NULL, '901378053'),
(19, 'c2_secret', NULL, '8677E1C0-7CB9-4D35-A513-05CA089B5E70'),
(20, 'c2_type', NULL, 'demo'),
(21, 'currency_format', NULL, 'us'),
(22, 'symbol_format', NULL, 's_amount'),
(23, 'no_of_decimals', NULL, '2'),
(24, 'vp_set', NULL, 'no'),
(25, 'vp_merchant_id', NULL, 'DEMO'),
(26, 'pum_set', NULL, 'no'),
(27, 'pum_merchant_key', NULL, 'RR2LThlB'),
(28, 'pum_merchant_salt', NULL, '3M85o3dezx'),
(29, 'pum_account_type', NULL, 'sandbox'),
(30, 'commission_set', NULL, 'no'),
(31, 'commission_amount', NULL, '30'),
(32, 'ssl_store_id', NULL, 'techr5affa68a7602c'),
(33, 'ssl_store_passwd', NULL, 'techr5affa68a7602c@ssl'),
(34, 'ssl_type', NULL, 'sandbox'),
(35, 'ssl_set', NULL, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext DEFAULT NULL,
  `data_brands` longtext DEFAULT NULL,
  `data_vendors` longtext DEFAULT NULL,
  `data_subdets` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `digital`, `banner`, `data_brands`, `data_vendors`, `data_subdets`) VALUES
(26, 'Belleza', NULL, NULL, 'category_26.png', '275:::NIVEA;;;;;;279:::GILLETTE', '', '[{\"sub_id\":\"122\",\"sub_name\":\"Belleza\",\"min\":0,\"max\":0,\"brands\":\"275:::NIVEA;;;;;;279:::GILLETTE\"}]'),
(27, 'Bienestar Sexual', NULL, NULL, 'category_27.png', '278:::DUREX;;;;;;279:::GILLETTE', '', '[{\"sub_id\":\"123\",\"sub_name\":\"Bienestar Sexual\",\"min\":5,\"max\":5,\"brands\":\"278:::DUREX;;;;;;279:::GILLETTE\"}]'),
(28, 'Cuidado Personal', NULL, NULL, 'category_28.jpg', '275:::NIVEA;;;;;;276:::ORAL B;;;;;;277:::JOHNSON\'S ;;;;;;279:::GILLETTE;;;;;;281:::LISTERINE', '', '[{\"sub_id\":\"124\",\"sub_name\":\"Cuidado Personal\",\"min\":11,\"max\":35,\"brands\":\"275:::NIVEA;;;;;;276:::ORAL B;;;;;;277:::JOHNSON S ;;;;;;279:::GILLETTE;;;;;;281:::LISTERINE\"}]'),
(29, 'Medicamentos', NULL, NULL, 'category_29.png', '', '', '[{\"sub_id\":\"126\",\"sub_name\":\"Medicamento\",\"min\":2,\"max\":2,\"brands\":\"\"}]'),
(30, 'Vitaminas', NULL, NULL, 'category_30.png', '', '', '[{\"sub_id\":\"127\",\"sub_name\":\"Suplementos y Proteinas\",\"min\":6,\"max\":6,\"brands\":\"\"}]'),
(32, 'Mamá y Bebé', NULL, NULL, 'category_32.png', '275:::NIVEA;;;;;;276:::ORAL B;;;;;;277:::JOHNSON\'S ;;;;;;280:::SUAVE', '', '[{\"sub_id\":\"125\",\"sub_name\":\"Mam\\u00e1 y Bebe\",\"min\":5,\"max\":28,\"brands\":\"275:::NIVEA;;;;;;276:::ORAL B;;;;;;277:::JOHNSON S ;;;;;;280:::SUAVE\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('00ec44aut1qu8vstr9k68dq2t96dgepf', '18.179.51.86', 1606304282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363330343238313b63757272656e63797c733a323a223237223b),
('01hl2hmm3aob7vhpv949ucb70de3ppu3', '162.158.187.205', 1606572260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363537323235383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('02e49cgqro3i1836k5op4llvqqnglrba', '154.113.16.226', 1606258977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363235383937343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('03rc21faq5pfqd291t2poe9nk8lpedck', '221.14.166.122', 1606919489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363931393438383b63757272656e63797c733a323a223237223b),
('04c9uc24kagdsmun77e7u4m4fq20ip70', '81.171.9.143', 1606325779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363332353737373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('0765j8cht29g0kiq1tv92tmu66lmsk4a', '2.57.122.186', 1606354780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363335343737393b63757272656e63797c733a323a223237223b),
('07g3svgd3vo7iq3ap6i1pij014sp30to', '162.142.125.39', 1606732851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363733323834393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('0ehsuipqr3s683k5svcdi4614gtg0nr9', '191.96.232.248', 1606498137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439383133363b63757272656e63797c733a323a223237223b),
('0et9veenib6bis9l2934olknq16fj554', '104.248.227.214', 1606904396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930343339353b63757272656e63797c733a323a223237223b),
('0fh8faagq14ea1ks5egmj0f31jf9memh', '91.241.19.84', 1606546068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363534363036373b63757272656e63797c733a323a223237223b),
('0fsdabspng4vcqvfplpjsnlqlu8c4i4d', '192.241.239.124', 1606731577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363733313537363b63757272656e63797c733a323a223237223b),
('0fvg8rlqvt5nsgi2pidgs7q23mu2gpsq', '3.236.211.197', 1607013210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373031333230393b63757272656e63797c733a323a223237223b),
('0g40704nor5fpgsrhaq80slvve7vaf1l', '91.241.19.84', 1606687304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638373330313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('0i5v3kr58bntpchsv1ia8ccn5lj2l586', '23.226.131.155', 1606361148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336313134353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('0jl64lvmc9q9fjl1k1qj38n8f6eniv65', '91.241.19.84', 1606019871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363031393837303b63757272656e63797c733a323a223237223b),
('0k5j28q9sc8f50b43omv79k9duc5t650', '193.254.245.90', 1606306183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363330363138323b63757272656e63797c733a323a223237223b),
('0kbv75ooj1agjdu6u5qm8231g27ncjs7', '172.105.89.161', 1606189088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138393038373b63757272656e63797c733a323a223237223b),
('0kl586oi6i77ba3j8h7k2a33ibpj9ko0', '3.239.89.33', 1606804656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830343635353b63757272656e63797c733a323a223237223b),
('0mkspb1ru6qh6dna1h52916h445qbomv', '54.37.160.152', 1606134366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363133343336353b63757272656e63797c733a323a223237223b),
('0pp9b6c00vf77337i78qhtgh6d4n0tbk', '51.38.71.111', 1606655286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363635353238343b63757272656e63797c733a323a223237223b),
('0qhgljuq1otnebga3s0cqljnh97uhpe0', '91.241.19.84', 1606804756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830343735343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('0s1623pnc47gvcn53lg4tnpcm31mam8r', '45.141.87.42', 1606343206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363334333230333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('0ua1vma3su2s3vmqcoki4rgltk8cnbf3', '162.158.187.23', 1606558716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363535383731343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('0uj2j7hi3stnda6vf6gunckrhgtvraih', '104.196.123.118', 1607003244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030333234333b63757272656e63797c733a323a223237223b),
('11tbe7mph5pjtadevh6semond228739r', '91.241.19.84', 1606742887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734323838343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('12h65l6pft0geb74ivrnn0nu2hqvpade', '42.228.79.253', 1606720991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363732303939303b63757272656e63797c733a323a223237223b),
('166kaa4k53920g8nqmjt3varmjkkjsou', '104.248.227.214', 1606904390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930343338393b63757272656e63797c733a323a223237223b),
('195tl2vqjmkchmim1j8pcf9s4v8jjn4i', '91.241.19.84', 1606384833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338343833313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('1dpefheqvm9bel7og5g6nsqhdrgnr097', '209.17.96.10', 1606084008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363038343030363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('1dr3uvbgvmvqip5p4fpm2jh9mfrctmq3', '13.82.199.20', 1607036327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373033363332363b63757272656e63797c733a323a223237223b),
('1kksfpkodgffob64pt5ifkd4rtgft7f4', '49.118.200.137', 1606142390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363134323338393b63757272656e63797c733a323a223237223b),
('1l5ksb97v70te9drtj3g4dkndqt8l07d', '91.241.19.84', 1606384829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338343832383b63757272656e63797c733a323a223237223b),
('1lmed69h141c9rrih5qn0pcoji04p6rn', '91.241.19.84', 1606946583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363934363538323b63757272656e63797c733a323a223237223b),
('1nfsr7pqjnicae44gi5he1mpomvrv8hg', '92.118.160.37', 1606859262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363835393236303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('1nmaubab800rukij9d8n5aurv6pi9uk5', '167.248.133.55', 1606711431, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363731313432383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('1o7dv0dk0rhba17d3bflqu8ogepntteq', '18.206.219.172', 1606188483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138383438323b63757272656e63797c733a323a223237223b),
('1pofra0tv4u73a5qha9oj140bbrv033f', '54.169.228.142', 1606265799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353739383b63757272656e63797c733a323a223237223b),
('1q722crs5maqi7hfvf8fmbl282mnkggp', '18.232.188.54', 1606298402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239383430313b63757272656e63797c733a323a223237223b),
('1ujqmnn5imlh0n9v8abkehbocjtjq3t9', '69.162.83.246', 1606825936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363832353933353b63757272656e63797c733a323a223237223b),
('1vi101olrnneooq6lsgk4dei5ldabfam', '104.248.227.214', 1606990989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303938383b63757272656e63797c733a323a223237223b),
('20ujcsntgtqq1kep0l93r2iau5sb8r7n', '46.161.14.13', 1606020611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363032303630383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('219lh2oa20mh5ntjs5u5v4b61dpp2mne', '91.241.19.84', 1606384827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338343832363b63757272656e63797c733a323a223237223b),
('22l4uqe7rn99ulan4f0ctad9jl9d9pcv', '192.241.238.5', 1606921895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363932313839333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('23a63mcn97dqejfhkhqhq6ts5b5b4aa6', '209.17.96.194', 1606259526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363235393532333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('27g56ho2re9lm0jc56vseqsch93ae8fm', '139.162.119.197', 1606628215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363632383231333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('29bet1du1ot6243s6jvup4dii3r3pr4s', '23.226.131.155', 1606361179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336313137373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('2ab6l314vq7t9r6fejka3o1i395l3eug', '139.219.8.186', 1606388019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338383031373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('2iqu9kt2s5ths5bqre3mkdv66di7cuvp', '123.4.89.128', 1606307179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363330373137383b63757272656e63797c733a323a223237223b),
('2ivvsg6t9q5lbnqsg44394aua8ectb3t', '188.165.169.140', 1606132946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363133323934353b63757272656e63797c733a323a223237223b),
('2l4hinbu6uujdduli1ukssf6tvukjn6a', '192.241.208.132', 1606271838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363237313833373b63757272656e63797c733a323a223237223b),
('2qtfi0vll3f475vibgdhpm69p7ld2mo8', '192.241.217.38', 1606598812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363539383831313b63757272656e63797c733a323a223237223b),
('2r5likufp52tv9im6gfa63p37tl3srqr', '162.243.128.57', 1606195643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363139353634323b63757272656e63797c733a323a223237223b),
('2t0jv3qg2rv77d7a0foua5hgbo5bvipd', '23.129.64.204', 1606149869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363134393836383b63757272656e63797c733a323a223237223b),
('2uf918ubkngtoc173b189ev50javjij2', '162.142.125.55', 1606331830, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333313832383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('2uoki37gsrsm62mmvphhgufh1649ot6g', '91.241.19.84', 1606332924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333323932333b63757272656e63797c733a323a223237223b),
('2v8pag7beb0e8gsjk486d1rg0vjdvrmm', '192.241.219.133', 1606036898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363033363839373b63757272656e63797c733a323a223237223b),
('2vuf9ncnotqstq8v9o0a1dooon1eut6l', '119.179.191.165', 1606355465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363335353436333b63757272656e63797c733a323a223237223b),
('32ac4uodjnhvtl2p1jfkc8aud6oirvdl', '162.158.74.151', 1606087255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363038373235333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('35dag1441tblqe6tagif9gvva2u3pvub', '2.57.122.186', 1606136839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363133363833383b63757272656e63797c733a323a223237223b),
('35js6focd05pkjn6l8hgjmi4ls9p2dsp', '209.17.96.226', 1606787714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363738373731323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('36943bjn1viacb3jrfvsvmcv28mdkt1g', '23.226.131.155', 1606361143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336313134303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('36djbcgplpoisjj9rrp7fptlnv239dv8', '69.162.83.246', 1606016247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363031363234363b63757272656e63797c733a323a223237223b),
('36hc90879flai8qd300det43c25kgd58', '167.248.133.53', 1606766471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363736363436393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('37i54cdcmcnak64i3kc4f41rpir2ud2r', '91.241.19.84', 1606019884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363031393838323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('3b000qt4irtot8vcb8l0hgq3sh33o8ju', '91.241.19.84', 1606167551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136373535303b63757272656e63797c733a323a223237223b),
('3bbc9bg7b96d68gfaapsqsetdpm1fots', '77.247.181.162', 1606814571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363831343537303b63757272656e63797c733a323a223237223b),
('3bthjmfkqq926bip8d3shj1f0m7pee19', '91.241.19.84', 1606847579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834373537383b63757272656e63797c733a323a223237223b),
('3c7bagl926v46u8rvjvjun960eihspp6', '45.153.203.175', 1606520058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363532303035353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('3cgbseuaapuit1si2i0ate5ntaja3tdj', '188.165.169.140', 1606132942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363133323934313b63757272656e63797c733a323a223237223b),
('3clu6p8aqnae3crng1oiphcc1blkh9ea', '138.68.231.115', 1606713102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363731333130313b63757272656e63797c733a323a223237223b),
('3g02cpq1lv4ucivifibn6eroshi0q430', '222.186.136.150', 1606601410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363630313430373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('3h8cl40m2rd30lj315s0t51vhpmlcu51', '80.82.68.29', 1606927943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363932373934303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('3if06dm6u96b036oh9868ceakdvebhh7', '80.82.68.29', 1606856272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363835363237303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('3ivbo2p80bcoa31evqvi86inh7dgmplm', '13.82.199.20', 1607036333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373033363333303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('3kb0fs8loti0vl6pjpllvg2hdrma6np4', '167.248.133.55', 1606711428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363731313432363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('3mjo5d5opejbm4d8n8tp5q0njuti7ikr', '82.221.105.6', 1606848854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834383835333b63757272656e63797c733a323a223237223b),
('3ohu1t1dlfrrv1nfolglcno0f8e4q8k2', '192.241.225.53', 1606184396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138343339353b63757272656e63797c733a323a223237223b),
('3pvecf1bbqk1bl78ignanc3m9pcpbvvv', '91.241.19.84', 1606276073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363237363037303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('3u21t0evt4g6um3nmltu4p908qaj54s4', '69.162.83.246', 1606670764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363637303736333b63757272656e63797c733a323a223237223b),
('42iq7co6a7e0npceb811ijua1hcrgpjv', '67.170.50.251', 1606039632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363033393632393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('433oodeoo2v5suo9g488ki501jo592j2', '91.241.19.84', 1606123498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363132333439363b63757272656e63797c733a323a223237223b),
('43lbds9l4jfqbrbrv3u2nummen7cmmc1', '209.17.96.186', 1606868181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363836383137383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('44oaif19obpoap1vth2dcsn5oor1ds1a', '198.40.238.34', 1606322242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363332323234303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('44sr5gt92q68nc5rjmqmf8cn2sngmb69', '209.17.96.146', 1606255865, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363235353836333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('484sp98gudu3ls732f0n93eeu52n3443', '49.234.153.247', 1606998161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939383136303b63757272656e63797c733a323a223237223b),
('493joc11f8kq2qi8skjnd1me5bgu577e', '138.68.231.115', 1606497631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439373633303b63757272656e63797c733a323a223237223b),
('49e94qu2u7q8a0se9icl39t95carp9fd', '91.241.19.84', 1606804759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830343735383b63757272656e63797c733a323a223237223b),
('49s31ln92tgte20ok86autqsl2g2nbc1', '3.81.25.14', 1606804263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830343236323b63757272656e63797c733a323a223237223b),
('4ced6kfnut5cc5jjg4ge6rk9b4ril3tl', '91.241.19.84', 1606384831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338343833303b63757272656e63797c733a323a223237223b),
('4d1pbcg0e0t9dtq5v0474rc3fe6q70l2', '209.17.97.2', 1606693922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363639333931393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('4ggefphuhkt3nsup5cp535m7mm3oeldi', '45.83.64.37', 1606072752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037323735303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('4hatsbjrh5b80cshajebetvltps7qhpb', '162.158.225.160', 1606107240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363130373134313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630363130373233313b7375726665725f696e666f7c733a3330383a227b22737461747573223a2273756363657373222c22636f756e747279223a224368696c65222c22636f756e747279436f6465223a22434c222c22726567696f6e223a22524d222c22726567696f6e4e616d65223a2253616e746961676f204d6574726f706f6c6974616e222c2263697479223a2253616e746961676f222c227a6970223a223334303333222c226c6174223a2d33332e343531332c226c6f6e223a2d37302e363635332c2274696d657a6f6e65223a22416d65726963612f53616e746961676f222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223136322e3135382e3232352e313630227d223b),
('4ita0ee11e88cld0hqu77of9g58pp8ko', '192.241.234.202', 1606148285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363134383238323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('4kg9qskh5589q2rar0e8jr1rivv9rmjq', '39.100.230.223', 1606681125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638313132333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('4rf9meuheh1h84cev7kvc3aomk0vagb3', '64.31.8.10', 1606862204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363836323230333b63757272656e63797c733a323a223237223b),
('53umjf06vdikldmdfj668nl9f90dnmrp', '54.169.228.142', 1606265828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353832363b63757272656e63797c733a323a223237223b),
('54al8c5jdgvqfe37r0g8snhn6lorv4rl', '34.65.32.160', 1606072225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037323232333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('560slv25tl7bm8g9f44tpl7smsjpgos0', '192.241.235.30', 1606826528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363832363532373b63757272656e63797c733a323a223237223b),
('56onjvn36ms82bsnf1egjksf33iiuu3p', '167.248.133.53', 1606047892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363034373839303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('58g69068eak642h2ae4pmur9u8h03n20', '54.37.160.152', 1606684165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638343136343b63757272656e63797c733a323a223237223b),
('592bdjcgee08qu2mnf8ne74b8okq9hdd', '95.123.41.94', 1606474741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437343733393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('59s4lt1soedvlm8pb8p63tdns4rc4ins', '164.68.112.178', 1606109717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363130393731353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('59vm1pcb56k6687mqo7oifp01fd0nhhu', '77.247.181.162', 1606814572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363831343537303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('5cqhtlpqsr3m2fgf1s3oqclugmkrekuo', '91.241.19.84', 1607009535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030393533343b63757272656e63797c733a323a223237223b),
('5i928j5n765kpo2o94h4ksoog2ktblho', '91.241.19.84', 1606438226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433383231393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('5l66a4kem23ffoakeqda9jr92mg728je', '91.241.19.84', 1606902135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930323133343b63757272656e63797c733a323a223237223b),
('5mr1ennavgjb06h713ihavhhtme8e8d4', '2.57.122.186', 1606478049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437383034383b63757272656e63797c733a323a223237223b),
('5ncqlg2691c8ug1fj9cd9l635f0lsh57', '167.248.133.40', 1606301517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363330313531343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('5q04s2kqu60avv78lq88fn2i9fglu9b7', '54.169.228.142', 1606265842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353834313b63757272656e63797c733a323a223237223b),
('5qgaam2iubs8u66v6soagrbd0mni2skh', '91.241.19.84', 1606076939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037363933383b63757272656e63797c733a323a223237223b),
('5qrca6j9to336ruhfv9epucdi9leadgm', '91.241.19.84', 1606742887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734323838363b63757272656e63797c733a323a223237223b),
('5r3saeinlh3kap9104okn66jd9ou0o02', '54.169.228.142', 1606265806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353830353b63757272656e63797c733a323a223237223b),
('5rdfnh8hfm4qokuh7cs6fmka4huk0tb5', '139.219.8.186', 1606433094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433333039333b63757272656e63797c733a323a223237223b),
('5reuac465cotu6js0ljsp6qt2fgae1md', '104.248.227.214', 1606990995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303939343b63757272656e63797c733a323a223237223b),
('5t7o6q45sg900bbk5mh6i7t9khncemu1', '91.241.19.84', 1606946576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363934363537353b63757272656e63797c733a323a223237223b),
('5vbk4j4f73mmvbdv2c0aac7bj9ae8u7i', '91.241.19.84', 1607009542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030393534303b63757272656e63797c733a323a223237223b),
('5vmtb650sii8pkjkm300rvqck9fjjsue', '91.241.19.84', 1606167550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136373534393b63757272656e63797c733a323a223237223b),
('61m6ntdlaq0f27mnotcm56rbmqejqbvi', '2.57.122.186', 1606327588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363332373538373b63757272656e63797c733a323a223237223b),
('6432pm28oift6rff3m5pe2hm62b8qcku', '91.241.19.84', 1606546065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363534363036343b63757272656e63797c733a323a223237223b),
('67otvintstrj5g7chlbgtat50qqmpmtk', '162.158.225.172', 1606070665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037303635353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630363037303636343b7375726665725f696e666f7c733a3330383a227b22737461747573223a2273756363657373222c22636f756e747279223a224368696c65222c22636f756e747279436f6465223a22434c222c22726567696f6e223a22524d222c22726567696f6e4e616d65223a2253616e746961676f204d6574726f706f6c6974616e222c2263697479223a2253616e746961676f222c227a6970223a223334303333222c226c6174223a2d33332e343531332c226c6f6e223a2d37302e363635332c2274696d657a6f6e65223a22416d65726963612f53616e746961676f222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223136322e3135382e3232352e313732227d223b),
('68k6oc4fhamo58i46d2qkjeh7g9ig4lr', '54.169.228.142', 1606265815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353831343b63757272656e63797c733a323a223237223b),
('69873bqnsnogiab7qfu0c158duhnr6ma', '91.241.19.84', 1606642897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363634323839343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('69so7sfpahkrek0q9hd8fgssc8pndtjt', '34.86.211.97', 1606471597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437313539343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('6b92trv945tobu2o1676b49sjflnvtht', '2.57.122.186', 1606179071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363137393036373b63757272656e63797c733a323a223237223b),
('6c492958jnqguk6q4sq3m8sto2bhlhoe', '91.241.19.84', 1606167545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136373534343b63757272656e63797c733a323a223237223b),
('6cnuub1m82gq4heg7pufq4nc794m6ghh', '77.247.181.162', 1606814571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363831343537303b63757272656e63797c733a323a223237223b),
('6gng6ohpl501he28brlj3op26a5k8im6', '172.69.63.135', 1606483106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438333130343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('6h36enhs9t9h5lkhsuqmvhbbg2dcf59u', '213.217.0.184', 1606749076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734393037333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('6iq3au2lsc0v44k4al64dp4auukvd71m', '92.118.160.1', 1607028432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373032383432393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('6jbf6i4405tiflthr7i2j4e1mig9ro6q', '156.223.100.85', 1606806199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830363139373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('6mg2ufustflje2omca26dv0ffr429i77', '162.142.125.39', 1606182786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138323738313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('6ocj9kk9vatrbp12fp2uro7eah4fesb8', '134.209.211.198', 1606088813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363038383831323b63757272656e63797c733a323a223237223b),
('6q0g84a2acb2k5lmsci3q14s9ch3a420', '138.68.231.115', 1606497629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439373632383b63757272656e63797c733a323a223237223b),
('6s8uipu55bu8pj4m86f1cfqb9no9vjp8', '172.105.89.161', 1606390433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363339303433323b63757272656e63797c733a323a223237223b),
('6udt1k6nho92puc0n8fj92j6ni0s1v0l', '84.17.43.86', 1606524506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363532343530333b63757272656e63797c733a323a223237223b),
('6vtj39v69o23c12qmuemocmvofa4lmrq', '23.129.64.187', 1606657614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363635373631313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('70uia4fdb1tqiljkplla1r4lm1mjqo78', '91.241.19.84', 1606546063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363534363036323b63757272656e63797c733a323a223237223b),
('740k9fvu0uumt57fhhgojk17qv7rj4lp', '39.100.230.223', 1606681122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638313132313b63757272656e63797c733a323a223237223b),
('76ag4ppraehdth7ovqa4cchs00n8el5q', '91.241.19.84', 1606847567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834373536363b63757272656e63797c733a323a223237223b),
('77k698ijjki19k14fo09ajr0bjotrbmm', '192.210.170.111', 1606143676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363134333637353b63757272656e63797c733a323a223237223b),
('7alj3761tqq7tg8jc9grqar236gmnpbj', '193.254.245.90', 1606198741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363139383733393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('7b6hbm6i9f7g07cvuveaan762dksrsir', '52.13.178.206', 1606290342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239303334303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('7hv7qpmsjtn0so2nrn2hnnpf0tmsmgo8', '139.162.119.197', 1606091673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363039313637303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('7jqc03tduep8s14mng4p2jue9iic9eon', '82.221.105.6', 1606848847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834383834353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('7lv3c884cfedaulqlncnr1hjvlmpf80o', '192.241.237.157', 1607012776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373031323737343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('7nhnqfle0lllpm741k5iuoqu8f1ikqqc', '91.241.19.84', 1606276078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363237363037373b63757272656e63797c733a323a223237223b),
('7ve5jvit1kmlvmgbss9r7n9eadig7r57', '45.15.143.172', 1606318859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363331383835373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('7vj50i1rq5cs62vppt4mmdkcnahi69bi', '91.241.19.84', 1606546067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363534363036353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('800p9gmmijbo4isk7jp4rngn8d6juqmi', '138.68.231.115', 1606497628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439373632373b63757272656e63797c733a323a223237223b),
('80bebifvqhioflu878usqk0ubgdckol2', '2.57.122.186', 1606372194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363337323139323b63757272656e63797c733a323a223237223b),
('81bh63iir8cj4h8f6ne497sngjhksgps', '91.241.19.84', 1606946579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363934363537363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('81m1dv7bggglho7m7pv5cp1sbeeikspr', '34.241.152.39', 1606848883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834383838313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('831bah3r8vrvfl66bbrebt6hsu91rfe6', '2.57.122.186', 1606076521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037363532303b63757272656e63797c733a323a223237223b),
('84aq08u4vjq1osllsd7ucd8pf6rds3og', '91.241.19.84', 1606642897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363634323839363b63757272656e63797c733a323a223237223b),
('85gvpj8k15ddet65vrbf3lq3bqii0pmh', '51.75.144.43', 1606149678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363134393637363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('85ln6e2tb976tqsip0pa7ujv7oe2gbhq', '3.128.153.10', 1606927601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363932373539383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('863o14eiuuhammcap167lqtcdqiaosg4', '91.241.19.84', 1606332914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333323931333b63757272656e63797c733a323a223237223b),
('86gn82cofc0h31iteotp617l3h0u8gku', '52.156.139.53', 1606814245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363831343234343b63757272656e63797c733a323a223237223b),
('8eh63md02hof7t07410eu1gj79bofqga', '109.70.100.39', 1606922535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363932323533343b63757272656e63797c733a323a223237223b),
('8fji62dqcrr4r8moa1s4iv11nv83b4pv', '139.162.106.181', 1606949314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363934393331323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('8glmsunq016ggbeoe7srfcuttdtckjbb', '83.97.20.31', 1606632677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363633323637353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('8gokhk44aunnmr7gpo322b4rtigg6tbg', '192.241.236.126', 1606634654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363633343635333b63757272656e63797c733a323a223237223b),
('8gr2or7tdl2j22r4q0b1kn0laerg5hq2', '45.56.78.64', 1606169822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136393832303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('8hj35ahbdologve1iakonkcue2ulldsl', '91.241.19.84', 1606902137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930323133363b63757272656e63797c733a323a223237223b),
('8ic033vts7qe2nipmbnp8tp57noo90ug', '54.169.228.142', 1606265792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353739313b63757272656e63797c733a323a223237223b),
('8ih4199mfrhtkq05mcqj9t3vh6jfp4kk', '91.241.19.84', 1606687307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638373330363b63757272656e63797c733a323a223237223b),
('8j3rba9m0s5q2cb1v7b8d7d3ka4uqnc7', '91.241.19.84', 1606642899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363634323839383b63757272656e63797c733a323a223237223b),
('8k1u39ba0tn3co07ookcmgbkbjsb3k7e', '54.169.228.142', 1606265808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353830373b63757272656e63797c733a323a223237223b),
('8mn04mo3h0us466p84n2dc11tq9rn6pp', '83.97.20.31', 1606514394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363531343339323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('8r71kf9jc6u192g1k8f76r6oont6b3c4', '91.241.19.84', 1606438226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433383231393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('8s69c6sf2t114adecb4a63lkibn73doc', '134.175.110.112', 1606600150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363630303134383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('8v8olhsbga7o8faecvgb09l8dpn6davr', '172.104.242.173', 1606621604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363632313630333b63757272656e63797c733a323a223237223b),
('950af6m3ktmiscqsco8o31d290iatv31', '54.169.228.142', 1606265817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353831363b63757272656e63797c733a323a223237223b),
('96euu0f2i7tdbkkngk6dbempd87fbect', '188.201.254.90', 1606262875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236323837333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('9770scmjei9jde2uuha5hp1dqbh04kjq', '104.248.227.214', 1606904387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930343338363b63757272656e63797c733a323a223237223b),
('97rmrsot9f7m8amrasf9bgc9flu20s5b', '2.57.122.186', 1606397117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363339373131363b63757272656e63797c733a323a223237223b),
('9bl61100q6ivrj7b8g336htnvom7t60p', '3.238.254.102', 1606675108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363637353130373b63757272656e63797c733a323a223237223b),
('9bu22s5b0uuiqh2cfds32hurceq2co3d', '138.68.231.115', 1606497632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439373633313b63757272656e63797c733a323a223237223b),
('9curlme9a21otnl8k2fd988rd0nnq1k1', '49.234.153.247', 1606998169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939383136373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('9dlgm1mrb4jgfl65m1kdchl1qq14dda6', '13.72.81.198', 1606364507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336343530363b63757272656e63797c733a323a223237223b),
('9ecq9d6uhpccgbd0rmoe7iqongf5bskv', '160.39.129.52', 1606566797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363536363739363b63757272656e63797c733a323a223237223b),
('9fjdo5a9vdg9js1e6q4qehlhu7c8ppnc', '104.248.227.214', 1606904397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930343339363b63757272656e63797c733a323a223237223b),
('9gpeuicnkhmlt6oa40gdnvbg8uq4q79c', '5.79.109.48', 1606953636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363935333633353b63757272656e63797c733a323a223237223b),
('9iok4gbu7t7gp4shjsdhtt2asiecrioc', '23.226.131.155', 1606361182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336313138303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('9jegbhpg9fkg2b0qkeo03ivmcud49s2t', '209.17.96.122', 1606416018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363431363031363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('9mbp1dcnup3c8io09om6b3tj6q5opl4m', '91.241.19.84', 1606438230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433383232393b63757272656e63797c733a323a223237223b),
('9nqqfsn2gahvg8molm3hbsdl82fiuq0q', '2.57.122.186', 1606720410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363732303430393b63757272656e63797c733a323a223237223b),
('9opb3dkh0l1iqmn4m6g11nc1mnk20se0', '138.68.231.115', 1606713103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363731333130323b63757272656e63797c733a323a223237223b),
('9p3lp06940l3jg9g6evio089ttllj5pv', '167.172.128.111', 1606186735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138363733323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('9qe1q90ib9o7eq7rflf44nb4qbdtiegc', '69.162.83.246', 1606808009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830383030383b63757272656e63797c733a323a223237223b),
('9quts3r5l6tscivpe3ipgu6hfaed236u', '20.52.158.89', 1606513950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363531333934383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('9rvc7rc0ca31bn99b57q179c3kktqfvc', '91.241.19.84', 1607009537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030393533343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('9schr0u5f4sv3775ahri2bd1r5114593', '49.234.153.247', 1606998163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939383136323b63757272656e63797c733a323a223237223b),
('9si9ppnsj3hc9qof9vfk36gfoh7vb5k7', '209.141.38.163', 1606387196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338373139353b63757272656e63797c733a323a223237223b),
('9sjv1079bmrgm3jv8pct8jvjnkp32teu', '209.17.97.34', 1606962945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363936323934333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('9u1dkfjkmme5nrpa296q31rs7tncbjni', '91.241.19.84', 1606902135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930323133343b63757272656e63797c733a323a223237223b),
('9u7t0de5pd4netgqrgb9k2nt8c8hr5te', '91.241.19.84', 1606687298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638373239373b63757272656e63797c733a323a223237223b),
('9uig44uim8241o8ridgq8no73urgvk7l', '54.169.228.142', 1606265830, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353832393b63757272656e63797c733a323a223237223b),
('a19bjsnkl04m1jh50p34l9vv8974a28d', '60.191.125.35', 1606426593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363432363539323b63757272656e63797c733a323a223237223b),
('a3ob89s7u1j2cdorstu686uffqb473da', '193.254.245.90', 1606306180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363330363137393b63757272656e63797c733a323a223237223b),
('a5mk3oa85416df65c8rkos6ln8hjlmt5', '91.241.19.84', 1606076942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037363933393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('a6a31cem5vhs0j3oku0n5vsc0vgq14no', '91.241.19.84', 1606019876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363031393837323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('a7fa6kflrci1vuaufoeq6h6ipvgir0ff', '54.200.177.40', 1606721088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363732313038373b63757272656e63797c733a323a223237223b),
('a8559tb5hvtmfs8is2fqk46ghv3spjai', '129.146.115.58', 1606892719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363839323731383b63757272656e63797c733a323a223237223b),
('ahri6dtugs1icbbaag7gp2jmq5pg5rq7', '156.223.100.85', 1606805915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830353931323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('aisl94ru4v8df3kls5c1pt8qe3hgq0ig', '91.241.19.84', 1606167549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136373534363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ajuvfq77vev72r61lrdflf2ahqpqm2td', '2.57.122.186', 1606210781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231303738303b63757272656e63797c733a323a223237223b),
('akoauu97la4j43erbtjin9udvi2n208i', '59.95.172.248', 1607028754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373032383735333b63757272656e63797c733a323a223237223b),
('amucg44icu6bcitgc9p9r7kqgigng6j1', '86.28.241.125', 1606540027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363534303032333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('aqk58slp127ir5kqfb3f0pn47jpanqom', '173.255.248.253', 1606935677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363933353637343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('aqkmp1uqloqnoaqvdrdktnsb4t7gmlmk', '91.241.19.84', 1606019885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363031393838343b63757272656e63797c733a323a223237223b),
('as5qvc8jbjgcc3s503itcgcbvls4fb85', '23.226.131.155', 1606354005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363335343030333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('as67snk42khb2hpvdno3s97b32juruui', '45.154.255.66', 1606387185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338373138323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('av3bgnnpn31erfui84s6h1pprlfn2kv7', '91.241.19.84', 1606804763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830343736303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('b0a1cc7hq7fgcesjrma4bqd29c6q8o8i', '104.248.227.214', 1606990987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303938363b63757272656e63797c733a323a223237223b),
('b2ad49fj15ggu67fv99o840r5g70r3do', '91.241.19.84', 1606167554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136373535323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('b2c8irf19vjl55fotj1fu5bk1b4l6hcs', '45.227.255.224', 1606885244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363838353234333b63757272656e63797c733a323a223237223b),
('b493h8n1l48qoubunuepoeqtv91stl0m', '54.169.228.142', 1606265797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353739363b63757272656e63797c733a323a223237223b),
('b60cpboqr1hqrd7uulbvbrmqghktl5ss', '80.14.214.116', 1606312147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363331323134363b63757272656e63797c733a323a223237223b),
('b632ih61ml5gl16faf0lccbcflc7ekhu', '91.241.19.84', 1606804761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830343736303b63757272656e63797c733a323a223237223b),
('b6ijdlme2qj4inl9ij4abshm7nrhm37q', '210.1.31.106', 1606447824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363434373832333b63757272656e63797c733a323a223237223b),
('b75a3i4c6ac2oosc3m4bs7qcps57b6q9', '192.241.231.234', 1606544435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363534343433343b63757272656e63797c733a323a223237223b),
('b7qdbokl2qgdv6g35cjuu49idaroj3jl', '51.254.75.176', 1607004706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030343730333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('b8o6pk92akgmdimg5868sqb53pkqf2ou', '5.188.210.227', 1606992333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939323333323b63757272656e63797c733a323a223237223b),
('b91fon1grlnbl006faboigqq13d99e1p', '91.241.19.84', 1606847572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834373536393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('bb37p5umu87b70uknq0m0vtr6mlconde', '54.169.228.142', 1606265790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353738393b63757272656e63797c733a323a223237223b),
('bbtfkbs3klnmkh6mqife5h2065ks4ijs', '54.169.228.142', 1606265825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353832343b63757272656e63797c733a323a223237223b),
('bfq2qjmqeuq9ku3425od44rhjok5ipp2', '91.241.19.84', 1606276079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363237363037363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('bjnno1gvktc1fbp4squnkpqc0b7dkck7', '210.1.31.106', 1606447826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363434373832353b63757272656e63797c733a323a223237223b),
('blcebk6mt0v44geh2d3s8hu8u1utmij1', '91.241.19.84', 1606438232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433383232393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('bmfs7qupeti5qbmr93m15tvislc3b98q', '193.80.225.136', 1607043775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373034333736393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('bn5d8oq06cevvkc5so5t5doglh4rurn0', '159.89.138.235', 1606559108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363535393130353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('bofor4n38glojebon70f5r3p69sjtmuc', '91.241.19.84', 1606742880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734323837393b63757272656e63797c733a323a223237223b),
('bp7okjvo53stdsj6bm4ke4ch2asfhk5d', '222.186.136.150', 1606155920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363135353931373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('bqlflkmlb7l8ed324p9rmkph21u5ru8q', '209.17.96.74', 1606510331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363531303332393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('bqr2lf3eiu4j2p4es46c1t4gv3t3qvu2', '71.6.232.4', 1606894937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363839343933353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('c4r21n5ihck7njsmugf0gni1un2snr77', '198.41.230.140', 1606781032, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363737363337303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630363738313032393b7375726665725f696e666f7c733a3332333a227b22737461747573223a2273756363657373222c22636f756e747279223a22417267656e74696e61222c22636f756e747279436f6465223a224152222c22726567696f6e223a2243222c22726567696f6e4e616d65223a224275656e6f7320416972657320462e442e222c2263697479223a224275656e6f73204169726573222c227a6970223a2231383731222c226c6174223a2d33342e363033332c226c6f6e223a2d35382e333831362c2274696d657a6f6e65223a22416d65726963612f417267656e74696e612f4275656e6f735f4169726573222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223139382e34312e3233302e313430227d223b),
('c6jlhm4rfofdniqb8tlo68v3cm1410cq', '167.172.128.111', 1606186730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138363732373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('c8mi6ngtbef2ufp6a2hjl8n5j2vjtplk', '51.103.27.243', 1606989587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363938393538363b63757272656e63797c733a323a223237223b),
('cdg4jt2b73qlkgn7ur1ibs308snmbnks', '115.55.16.24', 1606772707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363737323730363b63757272656e63797c733a323a223237223b),
('cec5ffvdihrf8r38alsmu9klesdlcbnd', '91.241.19.84', 1606583846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363538333834353b63757272656e63797c733a323a223237223b),
('ceojjdjq8nrn51m5mkuihts2jkg9hrtm', '2.57.122.186', 1606310312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363331303331313b63757272656e63797c733a323a223237223b),
('ck4o7dkdjpcgcv99ped2vpe4adqhn3r7', '91.241.19.84', 1606742878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734323837373b63757272656e63797c733a323a223237223b),
('cmpiir12jdqijm44gsc9dc2vd391q2d5', '112.185.35.55', 1606556097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363535363039363b63757272656e63797c733a323a223237223b),
('corni5rtrkbjl859ldbac6su68urkgo3', '2.57.122.186', 1606147284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363134373238323b63757272656e63797c733a323a223237223b),
('cs314od9p1qlmlcgdqkh5osgpvd4g0o6', '91.241.19.84', 1606742882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734323837393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ctk5nj4i3lofe6ivekhndt8966n7gov5', '80.82.68.29', 1606953029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363935333032363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('d0343jbn6dh9f843mll8opg3l34vmhn7', '66.240.236.119', 1606808165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830383136343b63757272656e63797c733a323a223237223b),
('d0pgtivh6ubs5c7tmnf1fe4a2q9d3ouc', '91.241.19.84', 1606484927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438343932343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('d2orluketlu5k8hglu1fbfec2dk28qi3', '91.241.19.84', 1606438235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433383233343b63757272656e63797c733a323a223237223b),
('d43savuftuvdj70sfueno7of45hrfqlm', '91.241.19.84', 1607009540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030393533373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('dauujgm2dbpf4mrck6ktbune3gb6g87p', '49.118.200.137', 1606057907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363035373930363b63757272656e63797c733a323a223237223b),
('dc8cu3jg2rcno3ccbd9qhqmoj7ie43np', '78.220.208.104', 1606134771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363133343737303b63757272656e63797c733a323a223237223b),
('dd1tclcrr82cpl2hlvbsmji5vfe6eiek', '74.120.14.56', 1606197092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363139373039303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('dicfrdoelijtm5ltpvabofaug38g1f78', '91.241.19.84', 1606687307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638373330363b63757272656e63797c733a323a223237223b),
('dkm7vd2k3b8nnlc69270lkift9eekham', '80.82.68.29', 1606926382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363932363338303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('dkmcdtb5rt7ij1q8b7q9aq59ti785oqh', '95.123.41.94', 1607035354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373033353335313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('dlpjs6bajjkr7ri9ldqk577ao4mt6cfc', '91.241.19.84', 1606219554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231393535333b63757272656e63797c733a323a223237223b),
('dn6ud9v380e3psf3d1o9spd5n6daoocp', '167.248.133.53', 1606766468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363736363436363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('dnobrjqr87dngvb9iso75ofbqkqgl191', '139.219.8.186', 1606388021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338383032303b63757272656e63797c733a323a223237223b),
('dp0rs9r5brup2j8le0o6hr8otso26gfp', '209.17.97.74', 1606426417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363432363431353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('dqlc1sskqfgg7dpr1a7svbnhr1mdt2ag', '23.226.131.155', 1606361185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336313138323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('dtotmtrmck9q30qa9s8i6ak0vn0i9re9', '91.241.19.84', 1606742883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734323838303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('du7144mqnjq78tohc3nlt73qd6a0g6ld', '196.52.43.111', 1606212516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231323531333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('e1l29qcgppphq6r5d9g552urq4deivcl', '104.248.227.214', 1606990993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303939323b63757272656e63797c733a323a223237223b),
('e6dh2mov9pgdbjjkbrobs537rqe97c2u', '2.57.122.186', 1606970057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363937303035363b63757272656e63797c733a323a223237223b),
('ea059548c3v7lv5i57csa1lrtm78hstu', '45.143.147.38', 1606443568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363434333536363b63757272656e63797c733a323a223237223b),
('ea6t09g4ebv3umuuioamt4nvjvr79bl1', '134.175.110.112', 1606600145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363630303134343b63757272656e63797c733a323a223237223b),
('eadk400oois3hn8mrt2s1vh8g3gu5l29', '162.158.225.174', 1606202660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363230323635373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ecvaiqmhh4rhj54fp6j3isuhi4ka0ftf', '209.17.97.66', 1606617631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363631373632363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ee7gfiko51807kp3tmrv2ggsle9k69f7', '167.248.133.40', 1606301514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363330313531323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('efuffmjt05pncsir3evifcvg4snna892', '2.57.122.186', 1606467696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363436373639353b63757272656e63797c733a323a223237223b),
('egdufo0875dbre8i0fobme979e9rv1l8', '64.31.8.10', 1606087641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363038373633383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ehmsv3ffu7j1j7rh8ic8s8mbncvhl806', '156.223.36.28', 1606645114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363634353131333b63757272656e63797c733a323a223237223b),
('ejrclr2f7l79vau1o5jo9q313uqgs5fp', '2.57.122.186', 1606786800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363738363739393b63757272656e63797c733a323a223237223b),
('ekrgp3kphqaq128dmt8jg02paudgfmbs', '91.241.19.84', 1606946579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363934363537373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('em6a2t6mntkaq13mjg49lon2i588uc5u', '20.46.166.202', 1606473071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437333037303b63757272656e63797c733a323a223237223b),
('entmi373arhj7u6u525f08o2tnatea5j', '192.241.237.155', 1606236892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363233363838393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('epmdg40qamvec2gren35jh4ttl68j56u', '64.31.8.10', 1606070796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037303739343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('epoprff5nnolnv015gqj4a4rcdaj6h4i', '24.63.177.166', 1606290342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239303333393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('eq3ebott5qbcpndaaiim94e9f4oq1vem', '104.152.52.39', 1606271153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363237313135313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('er6iabfi7b1861tcfkt5hr4m370ocdv5', '154.221.31.143', 1606905118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930353131373b63757272656e63797c733a323a223237223b),
('ermiejjd8lc7m5g6o8pi8q16l2d7mdvt', '209.17.96.26', 1606867715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363836373731323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('etsoo087esss3qf2s7gea0cj9crqakej', '162.158.225.166', 1606976980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363937363936383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630363937363937383b7375726665725f696e666f7c733a3330383a227b22737461747573223a2273756363657373222c22636f756e747279223a224368696c65222c22636f756e747279436f6465223a22434c222c22726567696f6e223a22524d222c22726567696f6e4e616d65223a2253616e746961676f204d6574726f706f6c6974616e222c2263697479223a2253616e746961676f222c227a6970223a223334303333222c226c6174223a2d33332e343531332c226c6f6e223a2d37302e363635332c2274696d657a6f6e65223a22416d65726963612f53616e746961676f222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223136322e3135382e3232352e313636227d223b),
('euguehcstktndlaf1c5kngfuud902qtt', '193.118.53.194', 1606977210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363937373230373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ev6gv0n70uuu9plmdts8hqqjtuthhpk9', '104.196.123.118', 1607003245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030333234343b63757272656e63797c733a323a223237223b),
('f2rcddolbgj3k5js4j6t16m1ncii1ir2', '91.241.19.84', 1606902137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930323133363b63757272656e63797c733a323a223237223b),
('f4cvalfup3gs9t6q9vgfeui9kpt517d4', '23.226.131.155', 1606361310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336313135373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('f6q1gcmelfhj0bahkk64q9onm9t1vh9p', '192.241.238.9', 1606972853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363937323835323b63757272656e63797c733a323a223237223b),
('f7lgmbv824gfl1s7ng872a3se6nli3bi', '103.145.13.24', 1606852405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363835323430323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('f8mmi7t0m349bpcvogl86j5k2mi7uarc', '138.68.231.115', 1606713099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363731333039383b63757272656e63797c733a323a223237223b),
('f8ms3c9ir06nqqg843ju5ihjqspfj0vn', '138.68.231.115', 1606713101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363731333130303b63757272656e63797c733a323a223237223b),
('faiaav884o7c5spmrlbruo828ke952kt', '91.241.19.84', 1606076940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037363933393b63757272656e63797c733a323a223237223b),
('fe4lg7s16us12g3pq693sssd3lvafu1i', '115.53.238.81', 1606162567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136323536353b63757272656e63797c733a323a223237223b),
('fgb2g1hfnrkloqm8d43nod01ei1u39rr', '69.162.83.246', 1606027557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363032373535363b63757272656e63797c733a323a223237223b),
('fgfq8larqahbghc258ta9qb9uo087hg1', '167.172.128.111', 1606186727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138363732353b63757272656e63797c733a323a223237223b),
('fhoolotdkdmb8pikqad5udtma6o19jht', '2.57.122.186', 1606050828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363035303832373b63757272656e63797c733a323a223237223b),
('fhqi31clbqlp74tlgp05p2co7jtib041', '162.142.125.55', 1606331828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333313832353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('flqf815jki5g1rni8iv7qjhfj8idhkmk', '91.175.212.5', 1606412404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363431323430323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('fmbisj70ub562g3tfj7pmjucbv0puuku', '167.172.128.111', 1606186731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138363733303b63757272656e63797c733a323a223237223b),
('fn3n80l64405h4padmi4rp8cs9p349sg', '221.15.55.100', 1606297947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239373934363b63757272656e63797c733a323a223237223b),
('fn4o45rd5rgeha2glj4e1omf56i18jg6', '40.86.73.209', 1606766493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363736363439323b63757272656e63797c733a323a223237223b),
('fntvgv6i3borgi22j1u43jntlqvj2gcq', '91.241.19.84', 1606804754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830343735313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('fp3n01kg5jqfaq2ov1cl3oo8o9r4575q', '91.241.19.84', 1606583840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363538333833393b63757272656e63797c733a323a223237223b),
('fs8rfp86ubkfnsdllrdddcu7s81deqns', '52.156.118.118', 1606506042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530363034313b63757272656e63797c733a323a223237223b),
('fvfikvg9bocoshi68tlo0etu0jlemsku', '113.142.72.119', 1606393676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363339333637333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('g22r6r2c491h1smnfa5laf72r1f346tg', '3.229.118.106', 1606528616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363532383631353b63757272656e63797c733a323a223237223b),
('g61odnc49l4pd1emgh1d06p9bda2dpt9', '31.220.2.222', 1606387194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338373139333b63757272656e63797c733a323a223237223b),
('g6r52ofb22qk6nt2uiueuh0og5j65k6o', '91.241.19.84', 1606123495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363132333439333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('g8uhs3nu8t7am3jfuv4bdqqbuakjj1ih', '91.241.19.84', 1606123492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363132333439313b63757272656e63797c733a323a223237223b),
('gav15a6cqgug2vl6s7i82dtf95j3j9sd', '40.84.175.196', 1606861517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363836313531363b63757272656e63797c733a323a223237223b),
('gcql0bul85fek0i4j6l6l14fk2aapcf5', '193.174.89.19', 1606102705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363130323730343b63757272656e63797c733a323a223237223b),
('geobhoia05su5k6jeihsn126oiktjlrb', '137.220.39.199', 1606795388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363739353338373b63757272656e63797c733a323a223237223b),
('gg5mn5tt9gm28juk2atqn5au8u7375m5', '58.217.6.130', 1606709352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363730393335313b63757272656e63797c733a323a223237223b),
('gi5qve93vp3ep1dof06ca3l1ja5133qa', '91.241.19.84', 1606167546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136373534333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('gjhjnjk6rbg6r6m93qhajn3ijfuk6bvt', '193.118.53.194', 1606977218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363937373231373b63757272656e63797c733a323a223237223b),
('goj2eokia16msnh1188ef0mnqst9p0kr', '82.221.105.6', 1606848850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834383834393b63757272656e63797c733a323a223237223b),
('gq0etbcois5ci880hfmfamr4esqjnurh', '31.220.2.223', 1606949430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363934393432383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('gr7o54upnk32362o30mqhei2u6nlqofm', '54.169.228.142', 1606265813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353831313b63757272656e63797c733a323a223237223b),
('gsp36rj07jp3d45fn8cvkgekfvcilovc', '52.156.138.114', 1606990180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303137393b63757272656e63797c733a323a223237223b),
('gvqjs1ipd8sljp2lmup8r315sn7pag2q', '162.158.74.17', 1606828520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363832383531383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('gvsp0a5742r4k6d79l5rnp5kir4lneok', '45.227.255.233', 1606884799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363838343739373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('h1el5h9nlj5v0k93pcjn5nj51lovkni0', '192.241.239.57', 1606221667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363232313636363b63757272656e63797c733a323a223237223b),
('h2c7oh8sksh2oajrarj0g75l3gpkf1p6', '20.52.158.89', 1606038791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363033383738383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('h3lbs9qb16fk5vg7a08uvrrtk671cd4r', '83.97.20.31', 1606165257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136353235343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('h6tefpd7fmcfk753oehsdhfj29vks0r8', '91.241.19.84', 1606902130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930323132373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('h7hpuu0p398ulqirru8dh2kk8oin1c5a', '192.241.222.58', 1606407299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363430373239383b63757272656e63797c733a323a223237223b),
('h7kv7nn1sai3ecfvk5bhtu3s8dvkqrnq', '209.17.96.202', 1606081886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363038313838333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('h82mm5a3g3ldsu4ij2qegjsfocn8tq25', '183.136.225.45', 1606368104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383130323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('h8cf3pritvbe76562jbknicjd77pnct5', '91.241.19.84', 1606583841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363538333833383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('h9i5o53p444tc5udmanao8ka2hk7bi5u', '209.17.96.210', 1606691532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363639313533303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('haupcjf9gph1qmfttra3e2sv8sfpc0bj', '91.241.19.84', 1606332924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333323932333b63757272656e63797c733a323a223237223b),
('hdmtmnpm6lhdsum1t4upbfhujolojlma', '91.241.19.84', 1606687304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638373330313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('heb75gq8aujcmoijn0gd25o0rlq2frdj', '209.17.96.2', 1606970805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363937303830333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('heia5n4a3i2uaceelrjp98klf0ah9ks3', '178.73.215.171', 1606796642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363739363634303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('hg89s8tfiu0hagp785pl69cflp0c0h9q', '54.169.228.142', 1606265795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353739343b63757272656e63797c733a323a223237223b),
('hmh1qe2s4a7utumqp9optlai1kg45nug', '13.82.199.20', 1607036330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373033363332383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('hoaic4k43msunufnmq9693dpi7stdtnn', '54.196.190.243', 1606376249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363337363234363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('hpa0c02ic7ln567i94rc4in158ksi786', '18.232.188.54', 1606298406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239383430353b63757272656e63797c733a323a223237223b),
('hs48a3c4ujelr0sooarvmorcfacr1gt4', '91.241.19.84', 1606546065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363534363036323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('hueebuv2bcq2eaop67ci1snagi9pe9jc', '18.232.188.54', 1606298391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239383339303b63757272656e63797c733a323a223237223b),
('hv1qv8rlkh7j31gslbco8f562bedridr', '103.254.210.244', 1607010861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373031303835383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('hv56l0fc0f1go987cj613ugt9arpjm04', '157.230.84.251', 1606271801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363237313739393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('i2ff9db782bs8mbeps15ig4g4o5ahitm', '83.97.20.31', 1606748129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734383132373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('i4ek0fcmmh3nctm05du99j45vstd782g', '89.248.168.231', 1606053010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363035333030393b63757272656e63797c733a323a223237223b),
('i4vq4m8pl3venmp53redqbv2152t4fuj', '91.241.19.84', 1606946585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363934363538333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('i5tr9mb6lqsl5a0182sd413v1b4hf147', '185.220.102.240', 1606657620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363635373631393b63757272656e63797c733a323a223237223b),
('i7ls3d6vta863sdkk7869at0acksfqr1', '91.241.19.84', 1606642902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363634323839393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('i9ou7anhk1kekqo5rgkejdg90j7r9v49', '193.239.147.111', 1606969789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363936393738383b63757272656e63797c733a323a223237223b),
('i9stlm7g9m1egf1cbprs55li9jb2b58m', '91.241.19.84', 1606076937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037363933343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('i9vg6q5umbf1gja2mu1n7qm33jl2ochh', '91.241.19.84', 1606484922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438343932313b63757272656e63797c733a323a223237223b),
('ib20pknk0r1nckp24tl20a5rk57h53gb', '91.241.19.84', 1606902129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930323132373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ic4hsavd7rrndsmt41if6nvm5c57k8vn', '45.150.206.103', 1606299851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239393834383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('idme9i1av0acblr3nfjheo6pl5be0mh1', '20.67.25.192', 1606468117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363436383131363b63757272656e63797c733a323a223237223b),
('ig3vfup5n0ks44b0m60mds34gs7kbsun', '91.241.19.84', 1606123500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363132333439373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ihq1u67qbgb7cku0se3apjc055ja404m', '2.57.122.186', 1606618102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363631383130313b63757272656e63797c733a323a223237223b),
('iknirv35sb6529bhp98hpaf232kmks63', '45.153.203.175', 1606439976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433393937343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('il1sagdsmrc2g90ps8hu419vfc6a8dbi', '91.241.19.84', 1606687310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638373330373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('j149mndakijj97eh2sndom8u3icebs6b', '91.241.19.84', 1606847565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834373536343b63757272656e63797c733a323a223237223b),
('j2ftnu6uq9btpvij239jirpak03vjka8', '104.248.227.214', 1606990994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303939333b63757272656e63797c733a323a223237223b),
('j2ifgl08s0ebseq98budrtlq96i2dnb0', '162.158.75.18', 1606087257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363038373235363b63757272656e63797c733a323a223237223b),
('j2k3bepjk9odot48ahf12hh2u564oh35', '74.120.14.56', 1606197095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363139373039323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('j3tsksrqqr42c9uje8j212v4pbtg3fvl', '91.241.19.84', 1606384841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338343834303b63757272656e63797c733a323a223237223b),
('j5qingguuejr7liqks6eodmjdgubvfcr', '192.241.219.58', 1606877333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363837373333323b63757272656e63797c733a323a223237223b),
('j9jdlg2gdeuffjd7d1lnosv1kgh5n3f3', '91.241.19.84', 1606438231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433383233303b63757272656e63797c733a323a223237223b),
('jcg3mqrlv0nbttnfn4h579sbs5h8b1kg', '192.241.239.143', 1606267043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236373033393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('jd8jqnf4ma56u95sq6ah6ppoh35dhq64', '91.241.19.84', 1606583846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363538333834353b63757272656e63797c733a323a223237223b),
('je5ckf07kqqsvb1cchkk8fqs2638tgv7', '188.165.169.140', 1606132945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363133323934343b63757272656e63797c733a323a223237223b),
('jfbn8vab94dv2q4cf85b21sb82kmnj2q', '83.97.20.31', 1606975181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363937353137383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('jgpk8rajk9hqogfibatref3uhf07l7r2', '91.241.19.84', 1606219565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231393536343b63757272656e63797c733a323a223237223b),
('ji2cr5butkeacdjpbtjkgup19rh7pvph', '82.208.160.88', 1606843305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834333330323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('jj8gmvfrp3pedi3ijk68h4gq332c92mg', '104.248.227.214', 1606904389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930343338383b63757272656e63797c733a323a223237223b),
('jl0of7v1icdhpgish5eldjceq9p7hp0o', '85.105.97.107', 1606992595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939323539343b63757272656e63797c733a323a223237223b),
('jldnt3h7tq9s4qqs587016vior60aft2', '134.175.110.112', 1606600147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363630303134363b63757272656e63797c733a323a223237223b),
('jq0scapr35ms68iem2efnrcjedah9n55', '192.241.232.167', 1606103576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363130333537353b63757272656e63797c733a323a223237223b),
('jrd7vsirnb8e378uucs3r7ktmjo5e7qp', '210.1.31.106', 1606447831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363434373833303b63757272656e63797c733a323a223237223b),
('jrnu4vrr9j1lah51sbjlht18li8eocmg', '157.7.162.55', 1606298416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239383431353b63757272656e63797c733a323a223237223b),
('jvkfchcmr705bm2fb2fbo0ok8ks35pmk', '39.100.230.223', 1606681103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638313130313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('k09p9fokbv35sgi3bg8csebvso1dn7i7', '66.240.236.119', 1606808159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830383135373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('k0p8jaoafnlmrci132j2o3jd9m5fa80r', '134.209.211.198', 1606088814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363038383831333b63757272656e63797c733a323a223237223b),
('k1eajubdb3ef62pcv04q0kgmlvkuk21p', '91.241.19.84', 1606484914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438343931333b63757272656e63797c733a323a223237223b),
('k1pdm061tv49irpa279m18cutndm3kr7', '108.162.238.7', 1606490195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439303139323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('k1pvcq8lcunf5t7ob0panf39jqjqe47m', '157.245.32.41', 1606991395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939313339343b63757272656e63797c733a323a223237223b),
('k2eb5avij41s2cmikqtl8o6sq7d7pd3h', '209.17.97.50', 1606361431, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336313432393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('k4af748j7fc5mstcffgsmnu40hg5pp5j', '91.241.19.84', 1606583843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363538333834313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('k63rbpp08ge4lpgebelf8qr9b9dfl48m', '91.241.19.84', 1606076937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037363933363b63757272656e63797c733a323a223237223b),
('ka28k0k82vp0impipm22rof3n3kif50h', '95.123.41.94', 1606082482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363038323438303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('kagierb9dctv31747nrfsbq2r0lg3mbc', '91.241.19.84', 1606167542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136373534313b63757272656e63797c733a323a223237223b),
('kdfaje2cdug23be25khanq9h0b5s6fjo', '104.248.227.214', 1606904398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930343339373b63757272656e63797c733a323a223237223b),
('ker2kfm4hcje753fh75dkspmt1lmthot', '91.241.19.84', 1607009537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030393533363b63757272656e63797c733a323a223237223b),
('kglulkai7ajfls9gg0qjf3j8o8hvcm2d', '104.248.227.214', 1606990991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303939303b63757272656e63797c733a323a223237223b),
('ki1cnhs7ii5adlqmquiabad3vn2m3g5e', '192.241.234.58', 1606698792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363639383738393b63757272656e63797c733a323a223237223b),
('kl4b4hahst9j081j6og0gcbmia9cqfq0', '192.241.235.126', 1606362177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336323137363b63757272656e63797c733a323a223237223b),
('klsfmljio5chvalkadn10cqm5daul4gd', '185.17.255.97', 1607011519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373031313531363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('kosb2eab94gh2ctnkb6j54sp2v0vuhus', '109.186.233.90', 1606020575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363032303334383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('kpo9676tj7kedjcp6g77f9qi20n5eorv', '104.248.227.214', 1606990997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303939353b63757272656e63797c733a323a223237223b),
('kprifevhvrqtviu7chcu02jpgk8go4nk', '91.241.19.84', 1606583837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363538333833363b63757272656e63797c733a323a223237223b),
('krbopcemkcqhaktfl5f66qeqp74gc06j', '165.22.3.169', 1606392522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363339323531393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ktufgcue4j0kbkmkkhdm7kgtpa4ts9m9', '91.241.19.84', 1606332916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333323931353b63757272656e63797c733a323a223237223b),
('kvhu04jl2f42iksoo8lnivg2887tto47', '209.17.96.178', 1606603127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363630333132343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('l37pgbnjk99rg07adcnaflmou2nlgfpc', '109.186.233.90', 1606020354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363032303335333b63757272656e63797c733a323a223237223b),
('l5b1a0idm7niud1963up92mp8hhii2sl', '2.57.122.186', 1606428155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363432383135343b63757272656e63797c733a323a223237223b),
('l7e87ufcrd1p6fse7t8brjccfbb44jf3', '91.241.19.84', 1606219563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231393536303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('l7ltc8kcfjuncaleb7cfqaul1bg7flka', '52.138.36.178', 1606204936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363230343933343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('l826ckodi7vtac0168juoon5d5b4qpn6', '91.241.19.84', 1606076934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037363933313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('l9fiuboskpik0jb2qjfuca63b4a7fqr2', '91.241.19.84', 1606276069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363237363036383b63757272656e63797c733a323a223237223b),
('lanvna4iqk9v835adki63r5be5g4ksri', '167.248.133.53', 1606047890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363034373838373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('lcpjrq0ufpkjs7sabjff34vcu6noddgj', '92.118.161.61', 1606507199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530373139363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('lfg1h2bpm3fj90jbsbmbo0t3d99iobkg', '108.162.229.118', 1606333828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333333832363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('lg40q83cm7srsl29r3st8il4emne2i18', '18.206.219.172', 1606188503, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138383530323b63757272656e63797c733a323a223237223b),
('lgi5hblt28nncfqtvua65tqb03qkri8o', '157.7.162.55', 1606298417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239383431363b63757272656e63797c733a323a223237223b),
('lhrnkk3sah2kh3bccd0ge1u4uql6rhse', '124.192.225.40', 1606123846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363132333834333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('lk3s4vic43vmq92fip2uofc856i4gns9', '167.172.128.111', 1606186732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138363733313b63757272656e63797c733a323a223237223b),
('llqo9kpkho9pq2dro7j647jdkehslmhn', '45.83.64.85', 1606982135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363938323133333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('lnmp6vgk2vpg7cucd6hkavhui4iip453', '192.241.228.138', 1606817155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363831373135343b63757272656e63797c733a323a223237223b),
('lpr65v4sliv1922ckvbnonsogvusn74a', '196.52.43.62', 1606505254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530353235313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('lpu5rnf9vbu6ap74kcar13i3p6cknck7', '39.100.230.223', 1606681122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638313132303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ltjpvekjgnu78fgg53nok0ptnp9769o8', '162.158.225.160', 1606030368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363033303331363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630363033303336363b7375726665725f696e666f7c733a3330383a227b22737461747573223a2273756363657373222c22636f756e747279223a224368696c65222c22636f756e747279436f6465223a22434c222c22726567696f6e223a22524d222c22726567696f6e4e616d65223a2253616e746961676f204d6574726f706f6c6974616e222c2263697479223a2253616e746961676f222c227a6970223a223334303333222c226c6174223a2d33332e343531332c226c6f6e223a2d37302e363635332c2274696d657a6f6e65223a22416d65726963612f53616e746961676f222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223136322e3135382e3232352e313630227d223b),
('lu1fqlao9npcva1um665321vubchislu', '188.165.169.140', 1606132943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363133323934323b63757272656e63797c733a323a223237223b),
('luhu6g2e4m6e96igr1l2cluibio03b9o', '168.62.108.78', 1606433665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433333636333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('m06kiko8kdj0hpakjncb2iatpvu23bl2', '2.57.122.186', 1606565128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363536353132373b63757272656e63797c733a323a223237223b),
('m08obhg8iqdo92i6o8l68tk529ei1aqd', '192.241.213.243', 1606137260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363133373235393b63757272656e63797c733a323a223237223b),
('m3kknjoisqlui4ocn079508jk5b0q24f', '91.241.19.84', 1606546069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363534363036383b63757272656e63797c733a323a223237223b),
('m724ml1amb5htul8lrj220d03qkivfc6', '85.105.97.107', 1606992598, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939323539363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('m84cvnf4bec6oghr8t8f5i80rg110mtf', '2.57.122.186', 1606099788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363039393738373b63757272656e63797c733a323a223237223b),
('m9clu85kiqgsjhe4jj8r3n3nmj0311ta', '51.68.82.137', 1606372360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363337323335373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('m9f52v0qtsiqhctcljr7cg60jujv722t', '209.17.96.154', 1606517547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363531373534343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ma8guim17qk1oom7vn90u3dc9rqjb09p', '91.241.19.84', 1606484918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438343931353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('mb185s3sndd3lc1o6cr392spfmls1psq', '154.113.16.226', 1606258972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363235383937313b63757272656e63797c733a323a223237223b),
('mbqaejlu4hl84a30b2ok3pvn6k0snb9o', '128.14.134.134', 1607016968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373031363936363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('miqke71pbpi1hrn31jup9pa4sgsr8g9q', '64.31.8.10', 1606891832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363839313833313b63757272656e63797c733a323a223237223b),
('mivrr4b4o9gs1nbn5ii238lm5i2f9u1n', '210.1.31.106', 1606447829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363434373832383b63757272656e63797c733a323a223237223b),
('ml73gir8numhl0npcoslcfmt8u5h5hev', '91.241.19.84', 1606123493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363132333439313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('mln6tqb1qhkdis8ril069vl761ouu0sr', '45.227.255.224', 1606885243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363838353234323b63757272656e63797c733a323a223237223b),
('mml6dgi9nu45n6glme07onegsa94it72', '163.172.120.214', 1606362532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336323533303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('mn47jdccefe7ctfk9mnbdceuihfo9ot7', '172.104.242.173', 1606957538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363935373533373b63757272656e63797c733a323a223237223b),
('mn9ctc4lav7oslbooc4pe1hc1q42g9mi', '65.60.11.210', 1606308944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363330383934323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('mnarp3r54tpbshd2cr62lv3t3ja4ka36', '45.129.33.160', 1606249635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363234393633333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('mnmfm1h357tgr1k27rabdgo5htjnbmli', '164.68.112.178', 1606714234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363731343233323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('mo01da0h59mdn97eii7da06gr3gkh48s', '162.158.79.67', 1606862235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363836323233333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('moojht0ipp4capc4rlr5cua1565953sa', '162.243.128.225', 1606741437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734313433353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('mp7ot8ds36jh50jkh5lto92ppr3npkhg', '91.241.19.84', 1606847568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834373536373b63757272656e63797c733a323a223237223b),
('mptbd1d470hiohe3blc9aoe9gsnvu5mo', '83.97.20.31', 1606049736, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363034393733333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('mq69qniuk5t7uitttt0kujhuu7kjd1jk', '3.233.242.33', 1606963198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363936333139373b63757272656e63797c733a323a223237223b),
('mr3cnmmg8qaba33k7uar7m6kmmoo3kcb', '91.241.19.84', 1606332920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333323931373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('mrlb6b44oqtac0k8j1limt3fsq94n7ja', '83.142.83.26', 1606392150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363339323134393b63757272656e63797c733a323a223237223b),
('mugof7oldq8dshih695fk0s1jirq4g8k', '91.241.19.84', 1606438233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433383233323b63757272656e63797c733a323a223237223b),
('mvjtr6omp9q97nott5lshbd9asm5bll8', '162.158.126.92', 1606486802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438363830303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('n0p9rj7ugrms8g6usglr7mt8bhf9405l', '162.158.225.166', 1606083392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363038333337363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630363038333338393b7375726665725f696e666f7c733a3330383a227b22737461747573223a2273756363657373222c22636f756e747279223a224368696c65222c22636f756e747279436f6465223a22434c222c22726567696f6e223a22524d222c22726567696f6e4e616d65223a2253616e746961676f204d6574726f706f6c6974616e222c2263697479223a2253616e746961676f222c227a6970223a223334303333222c226c6174223a2d33332e343531332c226c6f6e223a2d37302e363635332c2274696d657a6f6e65223a22416d65726963612f53616e746961676f222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223136322e3135382e3232352e313636227d223b),
('n16j833i93mg0af2gvmijhnh8mhfar1t', '69.162.83.246', 1606243509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363234333530383b63757272656e63797c733a323a223237223b),
('n2mctcfg4ba7bradf2g5t3grr1iv8d4e', '47.89.192.12', 1606303952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363330333935303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('n4jg30fgb0t0oeospm3ijs15vheeq0tk', '71.6.232.4', 1606312556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363331323535343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('n5p914s9j37dgi4aer2diepd86maq1je', '193.174.89.19', 1606172622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363137323632313b63757272656e63797c733a323a223237223b),
('n602vrek5go366n1j3netahvcr2dk64q', '91.241.19.84', 1606219565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231393536343b63757272656e63797c733a323a223237223b),
('n7uj7oaciqdatv5q84bq5mhpmcueiaag', '104.248.227.214', 1606904395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930343339343b63757272656e63797c733a323a223237223b),
('n8nr1jhngilrk9ec37e3kc8pbkbl6g6p', '192.35.168.160', 1606840111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834303130393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('nabd2c7r93gntirud9a0s1lfq12lh08h', '35.204.32.209', 1606048778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363034383737353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ncem1etmraho7qpgu4uqn1cbbk98rtne', '91.241.19.84', 1606484924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438343932333b63757272656e63797c733a323a223237223b),
('net7r4eso62u35lnn53givg30na4ckrb', '192.241.234.100', 1606310476, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363331303437353b63757272656e63797c733a323a223237223b),
('netb0k1pv781po9ek18n08ai9aucvrte', '91.241.19.84', 1606484918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438343931353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('nh6piet0jn2mmvf1uoqoig3lj3hso809', '192.35.168.176', 1606214331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231343332383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('nifdgvlnurkpatgdstsrohvh6fkerdi7', '69.162.83.246', 1606884251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363838343235303b63757272656e63797c733a323a223237223b),
('nirif9papp8rjglo1fbfl4204e9quclv', '45.129.56.200', 1606953634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363935333633333b63757272656e63797c733a323a223237223b),
('nj2ompavqt112venc9hfqqpaf85v1vmm', '80.82.68.29', 1606948610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363934383630373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('njr3mcihqgshafqk4b7kn503b2lh9ldb', '184.154.44.226', 1606985148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363938353134363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('nlaf044rq4fvlb5llcl9mhdrutmi7rte', '91.241.19.84', 1606583844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363538333834323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('nnvtfj8fuvb6el6c7jsutcim1hbbenll', '123.125.21.182', 1606956485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363935363437393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('nopupnjst4ag9o01e4ng5q0a1mu4verk', '167.71.64.214', 1606326856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363332363835353b63757272656e63797c733a323a223237223b),
('nrhaggh28762inr265usdckhimiesm8s', '123.125.21.182', 1606956485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363935363438313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('nrjh0iptl2l1uc420km5h6lsrljmjcei', '112.137.129.111', 1607025272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373032353236393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('nt5iifvuki0je5up5f064fimcd1u80se', '162.158.225.178', 1606280885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363238303836393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630363238303838343b7375726665725f696e666f7c733a3330383a227b22737461747573223a2273756363657373222c22636f756e747279223a224368696c65222c22636f756e747279436f6465223a22434c222c22726567696f6e223a22524d222c22726567696f6e4e616d65223a2253616e746961676f204d6574726f706f6c6974616e222c2263697479223a2253616e746961676f222c227a6970223a223334303333222c226c6174223a2d33332e343531332c226c6f6e223a2d37302e363635332c2274696d657a6f6e65223a22416d65726963612f53616e746961676f222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223136322e3135382e3232352e313738227d223b),
('nu534bv8bs7ksiri9kvd31ueqf6pgnap', '39.100.230.223', 1606681121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638313132303b63757272656e63797c733a323a223237223b),
('o1i6fh4mnpg557uo2oof3uvr70cp7gmp', '192.241.234.215', 1606283391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363238333339303b63757272656e63797c733a323a223237223b),
('o39h8givoptfd3uup4m6g5cnknhnn9dt', '104.248.227.214', 1606904393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930343339323b63757272656e63797c733a323a223237223b),
('o442coeivia9kc85rktude1uuful17s5', '162.158.225.158', 1606166681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136363637383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('o60v8jtt6mr7qdmhagkfjdf3een7tg4n', '91.241.19.84', 1606276073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363237363037303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('o704siucgjc3avo5caf78569i5q70cjh', '2.57.122.186', 1607001786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030313738353b63757272656e63797c733a323a223237223b),
('o8ql7eps8jmeev1kqhur8uku07148amd', '91.241.19.84', 1606019876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363031393837323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('o95hiqesgmqi346nops0phi5n9c498bo', '192.241.236.40', 1606961821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363936313831393b63757272656e63797c733a323a223237223b),
('o9l67hnafcqvt78qcifg8o71dslphpb0', '85.105.97.107', 1606992594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939323539333b63757272656e63797c733a323a223237223b),
('ob48kgn22a9ornkibdrrdtcauj71d22g', '91.241.19.84', 1606276076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363237363037353b63757272656e63797c733a323a223237223b),
('obgf4t72lur4rnonkqhvp136hemocq29', '51.254.59.113', 1606240829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363234303832373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('oc0ss48pht3fq8o5up44s90qf29f528o', '74.120.14.39', 1606121903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363132313930303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ocs8994g8hphitb8dj341abjo8lcqtd7', '143.110.182.156', 1606546313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363534363331303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('oidi7mpbdva6dg6hg9l6sif85apmmc96', '162.243.128.16', 1606047992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363034373938393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('oku08kql5prfuf4d7km6d8hqclsvq6ig', '213.136.84.154', 1606198918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363139383931363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('oo2p89iibt7e97l83m82vco2v6tv358c', '209.17.96.218', 1606165289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136353238363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('oo9a2uar28197la8rlsv6lshi3s0eg0o', '91.241.19.84', 1606219554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231393535333b63757272656e63797c733a323a223237223b),
('oqq4098qcm0qpoij4uhr7a1j2f92fq9e', '83.97.20.31', 1606288892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363238383839303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ou7cnurm42lqhmbgh90sj8ur5jt0ftvk', '91.241.19.84', 1606642899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363634323839383b63757272656e63797c733a323a223237223b),
('ov385mg254eknoumqm7ecf43t655es3k', '54.169.228.142', 1606265783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353738323b63757272656e63797c733a323a223237223b),
('p4nmslgcjobth0k1041nn0r50docnoq1', '45.227.255.224', 1606885226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363838353232343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('pcqbj7pu0kv2o2f0e806sgo5imqal0n4', '162.158.63.142', 1606633079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363633333037373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('pd6ksmbqnc84qhp3nsrgv91kpgseu3fq', '54.169.228.142', 1606265844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353834333b63757272656e63797c733a323a223237223b),
('pf7pdlgilsfm3uj3rjvedjc2brlbvte4', '49.118.200.137', 1606142367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363134323336353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('pfmc6n53vk18o4qldcdegadlgvor50ur', '104.248.227.214', 1606904392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930343339313b63757272656e63797c733a323a223237223b),
('ph1rde07c0vqhpm5411i97kngt01ik26', '64.31.8.10', 1606261693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236313639323b63757272656e63797c733a323a223237223b),
('phmggjf4a4saju37naopb422c29au498', '20.51.216.254', 1606338978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333383937373b63757272656e63797c733a323a223237223b),
('pil5ogec2j58qj1jmn6v0tgufrogv495', '192.241.217.42', 1606375426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363337353432343b63757272656e63797c733a323a223237223b),
('pkd5154560fogegc1k555lcjpf1ulq0p', '64.31.8.10', 1606867205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363836373230343b63757272656e63797c733a323a223237223b),
('pl02i099nn4c9e8thfd8pkdseurqihcp', '54.169.228.142', 1606265849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353834383b63757272656e63797c733a323a223237223b),
('plvs6p230r3hjunclni6ppu395mp1gjn', '91.241.19.84', 1607009539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030393533373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('pmrioje1l3skehcqfdpj1acdqj49u109', '91.241.19.84', 1606123499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363132333439383b63757272656e63797c733a323a223237223b),
('pputc3vjrsqvlhc4tjodat6kh0kcq0v5', '192.241.237.183', 1606497477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439373437363b63757272656e63797c733a323a223237223b),
('ptt79fk6254udq4874mfp3puo1ts5otn', '2.57.122.186', 1606530394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363533303339333b63757272656e63797c733a323a223237223b),
('pug7v0sm57cg3hpf5bpj5ltt37j0vcsv', '91.241.19.84', 1606219558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231393535363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('pujh2sqo801os4hjp0r4a34nce9j4rng', '92.118.161.53', 1606216528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231363532353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('q2nbju51fhbf62itritgjcirjvlrllkr', '104.248.227.214', 1606990988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303938373b63757272656e63797c733a323a223237223b),
('qac01ps165v0bbakk7hbumfs90a8b99k', '91.241.19.84', 1606902140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930323133373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('qbc51v295gkc3iv8hri41mj2qbij5crk', '91.241.19.84', 1606019871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363031393837303b63757272656e63797c733a323a223237223b),
('qbe2udoedmk34ls7afd3d5ngb2v7s7ht', '157.7.162.55', 1606298414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239383431333b63757272656e63797c733a323a223237223b),
('qd3juurk6dk4jdk4mtcu7cdhk88t0ge5', '13.68.156.84', 1606511649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363531313634383b63757272656e63797c733a323a223237223b),
('qd4l4qa2jpnusihguvnfgkup107j92eq', '162.142.125.53', 1606820039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363832303033363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('qdkfkv1ntpie1ek4tejhnobdmfdmukoo', '162.158.225.174', 1606352283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363334373831383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630363335313331353b7375726665725f696e666f7c733a3330383a227b22737461747573223a2273756363657373222c22636f756e747279223a224368696c65222c22636f756e747279436f6465223a22434c222c22726567696f6e223a22524d222c22726567696f6e4e616d65223a2253616e746961676f204d6574726f706f6c6974616e222c2263697479223a2253616e746961676f222c227a6970223a223334303333222c226c6174223a2d33332e343531332c226c6f6e223a2d37302e363635332c2274696d657a6f6e65223a22416d65726963612f53616e746961676f222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223136322e3135382e3232352e313734227d223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a33303b733a31313a22746f74616c5f6974656d73223b643a313b733a31343a22746f74616c5f646973636f756e74223b693a303b733a31303a227365745f636f75706f6e223b693a303b733a33323a226534613632323263646235623334333735343030393034663033643865366135223b613a31313a7b733a323a226964223b733a333a22323432223b733a333a22717479223b643a313b733a363a226f7074696f6e223b733a33383a227b22636f6c6f72223a7b227469746c65223a22436f6c6f72222c2276616c7565223a22227d7d223b733a353a227072696365223b643a33303b733a343a226e616d65223b733a33333a225348414d504f4f204a4f484e534f4e532042414259205645524445203735306d6c223b733a383a227368697070696e67223b733a313a2230223b733a333a22746178223b643a303b733a353a22696d616765223b733a36393a22687474703a2f2f7777772e626f6e6f6661726d612e67612f75706c6f6164732f70726f647563745f696d6167652f70726f647563745f3234325f315f7468756d622e6a7067223b733a363a22636f75706f6e223b733a303a22223b733a353a22726f776964223b733a33323a226534613632323263646235623334333735343030393034663033643865366135223b733a383a22737562746f74616c223b643a33303b7d7d757365725f6c6f67696e7c733a333a22796573223b757365725f69647c733a323a223236223b757365725f6e616d657c733a343a226a6f7365223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a373a22506f6c616e636f223b7469746c657c733a353a2261646d696e223b),
('qep0nku7pvtr1kjqj9hcs7lkhj5ivcn5', '103.145.13.24', 1607035191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373033353138393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('qgkt07raddejkvd3mqkocl170mmjeoaf', '91.241.19.84', 1606332915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333323931333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('qhd1ft8qtm4mfrmbkuf8fkg6hho67vh5', '149.129.50.37', 1606330782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333303738313b63757272656e63797c733a323a223237223b),
('qjpolqk33btoq4uqjh1v0r5eb0a1d7j5', '69.162.83.246', 1606026888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363032363838373b63757272656e63797c733a323a223237223b),
('qk8ak6ds1r76q9pclm94fkjsenj9mlo5', '157.7.162.55', 1606298419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363239383431373b63757272656e63797c733a323a223237223b),
('qkmh6umm9r2ivrsgfdflkune5tjr917a', '104.248.227.214', 1606990985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303938343b63757272656e63797c733a323a223237223b),
('qmvtq7oa0ibvs9ka49co02quqaatj97f', '209.17.96.250', 1606359915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363335393931323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('qpgfhi02k16c1chsj5p5p0boo4f8l8k9', '5.188.210.227', 1606391801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363339313830303b63757272656e63797c733a323a223237223b),
('qpporn7rl7gl6u0dg4c2n6c6fp844ljg', '91.241.19.84', 1606384845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338343834333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('qpq6me134bnn0gk4pp4nsib0in6addke', '91.241.19.84', 1606076942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363037363934313b63757272656e63797c733a323a223237223b),
('qr6ico8q627lj7s72qk3p4oo0d1bq805', '193.107.172.187', 1606455268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363435353236363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('qrlsndlplog2q97m2e61uor00sjdbrke', '192.241.214.87', 1606426727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363432363732343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('qs5u67552fesrd4h2hbg6ajoojrah6bg', '13.90.28.29', 1606358121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363335383131383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('r15ph8cbj2gbjd2qusldbrn0ltv1fl5t', '91.241.19.84', 1606804763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830343736323b63757272656e63797c733a323a223237223b),
('r2ok04bin34jfia8q0l87o88m8mp4jle', '162.142.125.53', 1606820041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363832303033393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('r3m4edc5i83r6dgh9ei5e8bse2uksn2h', '103.28.70.87', 1606526661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363532363636303b63757272656e63797c733a323a223237223b),
('r4v6146bpa70oncokd91j4eec55aegm3', '164.52.24.163', 1606130533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363133303533303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('r5otdg6n6qrksvhq1monsvuodunrt2qe', '185.220.101.20', 1606657652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363635373635313b63757272656e63797c733a323a223237223b),
('r7pbur7be5bi7571j8t7kevgjnmaohak', '18.206.219.172', 1606188495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363138383439343b63757272656e63797c733a323a223237223b),
('r81hursqejvnrk1ri19506hc30ju5t2v', '139.219.8.186', 1606433095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433333039343b63757272656e63797c733a323a223237223b),
('r9iq41pncmvg1q1boh3v4llva78o9jr5', '91.241.19.84', 1606742886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734323838353b63757272656e63797c733a323a223237223b),
('rdaomdsq8l3mjkf0nfrfat4br7jagcnm', '91.241.19.84', 1606847569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834373536363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('rdc5219kk65c2lbmk5gi1vaibd1rl14b', '23.226.131.155', 1606361145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336313134333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('rdpd4ig25cejuf1t646ncvueglbq374s', '209.17.96.114', 1606161473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363136313437313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('rf6k46rsf3hrat0cgohb3u1a47ibstgv', '91.241.19.84', 1606642896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363634323839343b63757272656e63797c733a323a223237223b),
('rfm6e6mg7vl40pf1dfqd8b9gllfmn3r5', '191.233.198.198', 1607030248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373033303234373b63757272656e63797c733a323a223237223b),
('rgnlhbqb9f2umn952crrguok5uc4ip77', '192.241.236.126', 1606485271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438353237303b63757272656e63797c733a323a223237223b),
('rhdvhiv36sqdhftfogilk4tud0nfo6h9', '91.241.19.84', 1606946576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363934363537353b63757272656e63797c733a323a223237223b),
('ri1ha9uvbvb39d38d8u6pqeoevvcss6h', '209.17.96.194', 1606774341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363737343333393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ridln285kbp1gg9v6qjm688jgvheao7h', '3.235.245.60', 1606931081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363933313038303b63757272656e63797c733a323a223237223b),
('rimoiqru3iso3c8b0kq1nvv0a4b7pktp', '69.162.83.246', 1606905046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930353034353b63757272656e63797c733a323a223237223b),
('riskqpkmhqudojb5763l86mk7ds4jh3i', '54.169.228.142', 1606265802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353830313b63757272656e63797c733a323a223237223b),
('riv77kr9u8ch24evv1a7dko8g8f1shdu', '54.213.168.188', 1606705242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363730353233383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('rn2gqe680u6kdfv8ab9bk5c2cmsu80r6', '2.57.122.186', 1606685970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638353936393b63757272656e63797c733a323a223237223b),
('rnobkqqsc3e6l42ikutrv36o379dqdto', '2.57.122.186', 1606581057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363538313035363b63757272656e63797c733a323a223237223b),
('rnppc1gm987v2iobsmskvo0p1a43gjo5', '173.255.248.253', 1606935675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363933353637323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('rsvufhusoedpb14uqm1p21d8cd4seoqb', '91.241.19.84', 1606123502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363132333530313b63757272656e63797c733a323a223237223b),
('rvq56ut0lsdpba289i75qvctbvohu45e', '54.169.228.142', 1606265810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353830393b63757272656e63797c733a323a223237223b),
('s1c0ccskg1og56l26rbb3k8ogn5kdo7f', '69.162.83.246', 1606852786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363835323738343b63757272656e63797c733a323a223237223b),
('s3pnf1sq4q961dpg06bmol2gdtjus5m0', '104.196.123.118', 1607003247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030333234363b63757272656e63797c733a323a223237223b),
('s3rbmm87amjmvt8g9cup1jnbi6j089br', '83.97.20.31', 1606402686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363430323638343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('s4lkd3kgnembqg1j59nlnerim0nmcmbb', '91.241.19.84', 1607009541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030393534303b63757272656e63797c733a323a223237223b),
('s6am7j5nf0rihujpvf1btphte8liqcuf', '186.33.123.89', 1606446056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363434363035353b63757272656e63797c733a323a223237223b),
('s7aokbeeg2ga1l6oijk51ci7j6jb9o1j', '178.73.215.171', 1606195002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363139353030303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('safr8664s2po58ktq9mc1iqu3ltl0ddk', '91.241.19.84', 1606546072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363534363037303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('sai3gvpoonaal08cvsjh96ii15f0bp90', '168.62.108.78', 1606437543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433373534313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('sbgc1o7tmmhspu2o72gmobos79lpg3e8', '91.241.19.84', 1606804752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830343735313b63757272656e63797c733a323a223237223b),
('sctl79f3m5q760um9u9etk0rcu1pjt5u', '54.169.228.142', 1606265823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353832323b63757272656e63797c733a323a223237223b),
('sf3ttomaf19m6qd5uu2f1dooqpkk3tc7', '3.15.193.14', 1606864748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363836343734373b63757272656e63797c733a323a223237223b),
('sfosmqisfcqp17f42b2b9e8p54n08lkh', '104.248.227.214', 1606904391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363930343339303b63757272656e63797c733a323a223237223b),
('sfrfnbak2jqi8ogseh9fej6mtehpudk7', '69.162.99.42', 1606342540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363334323533393b63757272656e63797c733a323a223237223b),
('sh1mlbh7fhs8pkfc58qm0oq96mn09j0f', '54.169.228.142', 1606265846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353834353b63757272656e63797c733a323a223237223b),
('siu2kcjq70ah5njh2esuo4d0kao996th', '139.162.106.181', 1606380706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338303730333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('skn0o1lge4dl3k9u934hbu50ebdfu1ve', '162.158.187.183', 1606472949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437323934363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('slcssko8dlbqmi35m7acv944hfr478t1', '13.92.123.218', 1606786609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363738363630383b63757272656e63797c733a323a223237223b),
('sn7bs7h6picv6bchkbbqe7h1o4ff6er7', '45.153.203.175', 1606601403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363630313430313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('sncp66afn029ksj05ik9gvdflpeqcmm5', '91.241.19.84', 1606219558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363231393535353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('snd1irondtommak82k6slhoevof10vs8', '54.169.228.142', 1606265819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353831383b63757272656e63797c733a323a223237223b),
('sr14viphcff1hb5m3naf1thj7ku6kc8d', '39.100.230.223', 1606681124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638313132333b63757272656e63797c733a323a223237223b),
('sra689vefi0sf32vol49ehdfrct1ume9', '52.229.26.140', 1606280065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363238303036333b63757272656e63797c733a323a223237223b),
('sum8sapnhj1r8gpudtk605qjbjt8j3r3', '54.169.228.142', 1606265804, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353830323b63757272656e63797c733a323a223237223b),
('t21drecjaav6gp7i5ep9ockh2dvbrk6c', '2.57.122.186', 1606658987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363635383938363b63757272656e63797c733a323a223237223b),
('t24etiord6uos4t68jv3np19qbgls3s3', '54.169.228.142', 1606265788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353738373b63757272656e63797c733a323a223237223b),
('t37ugvbm10ac4ev31r1c1k5om8i942am', '93.90.178.136', 1606745554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734353535323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('t3g8ttceci322kpcf8k6b5mfaggvg956', '125.47.74.78', 1606999600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939393539393b63757272656e63797c733a323a223237223b),
('t5s1a2043cm8ock9ua5lva555vhve1gk', '164.115.43.173', 1607005861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030353835393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('t5vckf8eln1c84c3bcflrhv4favheibt', '91.241.19.84', 1606946584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363934363538333b63757272656e63797c733a323a223237223b),
('t7ate04hv5k1eu8cel90f594kpbhgifk', '54.169.228.142', 1606265785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353738343b63757272656e63797c733a323a223237223b),
('t7fm1jpi07cu0n168u7nlp0hqlssbgq7', '91.241.19.84', 1606847580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834373537383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('t7nf62nf9p4ah0vvccvpbh9doj922c9i', '193.254.245.90', 1606306182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363330363138303b63757272656e63797c733a323a223237223b),
('t89s894hfji1jo6mmrillu2mu21l8lve', '104.248.227.214', 1606990992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363939303939313b63757272656e63797c733a323a223237223b),
('t8vdcoiqgbktji8pvgmutlvnd5l1icfu', '198.143.155.122', 1606738407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363733383430353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('tat0mh53m81dtskddf7co7oif1uh5aor', '192.241.208.163', 1606580438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363538303433373b63757272656e63797c733a323a223237223b),
('td3mi36e2cqddgr6gptquceeerdilcsn', '167.99.185.217', 1606935680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363933353637373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('tg8q1etm602htasokihgpf4et6nvgjj9', '54.169.228.142', 1606265834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353833333b63757272656e63797c733a323a223237223b),
('ti5cmsfrtbse67u44118nshrpke20ui3', '51.254.59.113', 1606786426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363738363432303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('tm7herd5pn7nd1utr2ctdk07ougp4p3d', '74.120.14.39', 1606121900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363132313839383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('tn1vh699apius007c4h2osnplu3f5258', '2.57.122.186', 1606827484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363832373438333b63757272656e63797c733a323a223237223b),
('tovabs9jip4ovt7jdhr60qocipdnul73', '89.248.168.231', 1606820012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363832303031313b63757272656e63797c733a323a223237223b),
('tpb7e9sttsfebc3cvbu74qpmcv28p8ok', '104.196.123.118', 1607003248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373030333234373b63757272656e63797c733a323a223237223b),
('tr90kmrvlp00r0qala4g6lba7fjrl0ub', '91.241.19.84', 1606687308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363638373330373b63757272656e63797c733a323a223237223b),
('trnf5hjnspruk3jls8c84718krtdcjuv', '54.169.228.142', 1606265832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353833313b63757272656e63797c733a323a223237223b),
('ts6grscruh55qfqaece84muho7n455g1', '2.57.122.186', 1606408937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363430383933363b63757272656e63797c733a323a223237223b),
('tsim5o0h66nlv1ml77363om2pv54m0au', '193.174.89.19', 1606172623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363137323632323b63757272656e63797c733a323a223237223b),
('tsu0depqcr6oe9d5j7ih4k0vnjugmnnc', '54.169.228.142', 1606265839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353833383b63757272656e63797c733a323a223237223b),
('tvkrnv5epuaomd6j18e6ke2ikil57je5', '192.241.234.7', 1606088918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363038383931373b63757272656e63797c733a323a223237223b),
('u0bbr6jeu52jpfhj0q8jmlebvitpt9fc', '52.53.166.201', 1606798660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363739383635373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('u4svu97pceab73sg3k04o1g6n3i8edri', '54.169.228.142', 1606265781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353737383b63757272656e63797c733a323a223237223b),
('u8kms35017f3au6eoggh0trlkum8hhjt', '83.97.20.31', 1606861854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363836313835323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ucfi6hgboju0quegba322p6acpfl628a', '2.57.122.186', 1606261413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236313431323b63757272656e63797c733a323a223237223b),
('uctvf57atctdd7h0s48ddcucd9rt3ubv', '54.169.228.142', 1606265837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353833363b63757272656e63797c733a323a223237223b),
('udd0aj5u5gbkt72kqng49ohdi4d7pkjk', '162.142.125.39', 1606732854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363733323835323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('udebo7ffv3chmtecr8pji8af3q15qsv9', '87.10.50.2', 1606740742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363734303734303b63757272656e63797c733a323a223237223b),
('ugjo17tr7bt5ahd3m1pcumrnm922oqev', '192.241.237.183', 1606491489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439313438383b63757272656e63797c733a323a223237223b),
('ugmvlha85eatpjomt09bu3krvb8aatac', '3.15.193.14', 1606865999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363836353939363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('uhmivibrebc7pcu9ac6kvnlej39dbg5v', '192.241.218.213', 1606910823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363931303832323b63757272656e63797c733a323a223237223b),
('uk3okq5jb3saq1499bklsc3ks4cgggtd', '64.31.8.10', 1606096397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363039363339313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ukff0oa7e8m7tgvidmoivff0n5a3p9a4', '91.241.19.84', 1606484924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438343932323b63757272656e63797c733a323a223237223b),
('ukomaiohp2muvcl4lnufqfnp4jl648be', '74.120.14.54', 1606874497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363837343439313b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('um8f30pf62oftf416pcn9579uqvj2o23', '193.174.89.19', 1606102707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363130323730363b63757272656e63797c733a323a223237223b),
('upu24b76h01qbaot8r6bvd87u1fmv2s1', '91.241.19.84', 1606019884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363031393838333b63757272656e63797c733a323a223237223b),
('urp8kkucq6iscuegccjchimu0hauf5pd', '13.72.81.198', 1606359549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363335393533363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('urqn0vutcksp7q4sse56p6ou7hg24i27', '23.226.131.155', 1606354002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363335333939383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('uuh2c6bh63ues66jr9f7jo5iqt3unete', '37.49.230.254', 1607023308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373032333330353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('v0m2kvb87hu740sao17hqh22en3he9er', '23.94.160.107', 1606194316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363139343331353b63757272656e63797c733a323a223237223b),
('v2v65tnr6cusfe9lmng1ceg9ci85q3q9', '69.162.99.42', 1606096960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363039363935393b63757272656e63797c733a323a223237223b),
('v5kl8dq029qj4t4hstfkpr8apu95dtqf', '91.241.19.84', 1606332927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363333323932353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('vapamdmqod29s360ae8l42nmerkd47ko', '66.240.236.119', 1606808162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830383136313b63757272656e63797c733a323a223237223b),
('vda3vl6k2982m8r2me8il4mlkvbjud0q', '154.113.16.226', 1606258973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363235383937323b63757272656e63797c733a323a223237223b),
('vj4s6seh849i6va0bav6gv7o1laj7c1t', '66.240.236.119', 1606808164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363830383136333b63757272656e63797c733a323a223237223b),
('vk4bbsuahe1831shaveeaegr460qvtek', '91.241.19.84', 1606642893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363634323839303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('vlv3jl4msa87al8g70fblulhq2bonltg', '2.57.122.186', 1606868447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363836383434363b63757272656e63797c733a323a223237223b),
('vmi1nfrocjgjp9mb7q3d5h25vs4omrha', '103.145.13.129', 1606259895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363235393839343b63757272656e63797c733a323a223237223b),
('vmk2j0piopoc2g6j6edrju1rp27r1bfl', '119.56.241.86', 1606245149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363234353134383b63757272656e63797c733a323a223237223b),
('voc32bdo4tnn1mu5cbiffn3o8f34odeg', '91.241.19.84', 1606384834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363338343833323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('vp1v7h756ik3g12novig54tl5a28ka5c', '91.241.19.84', 1606276069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363237363036383b63757272656e63797c733a323a223237223b),
('vpr3a4vn3m8tdj627vfbonvikhss5dtg', '54.169.228.142', 1606265851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363236353835303b63757272656e63797c733a323a223237223b),
('vr2ak57fft1at07tp45qplcivnv5skpn', '64.253.10.133', 1606790550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363739303534373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('vrnude5br4benukvj695qmln1njv69n5', '69.162.83.246', 1606022382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363032323338313b63757272656e63797c733a323a223237223b),
('vtehanboividtr58tm5jvq83u7raeulb', '196.52.43.89', 1606819731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363831393732393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('vvkpaqkse46hnjjm3oj4fj4o1db2q3g1', '82.221.105.6', 1606848852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363834383835313b63757272656e63797c733a323a223237223b);

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE `contact_message` (
  `contact_message_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext DEFAULT NULL,
  `other` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `spec` varchar(1000) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `till` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency_settings`
--

CREATE TABLE `currency_settings` (
  `currency_settings_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `exchange_rate` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `exchange_rate_def` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_settings`
--

INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `exchange_rate_def`) VALUES
(1, 'U.S. Dollar', '$', '1', 'no', 'USD', '0.28'),
(2, 'Australian Dollar', '$', '1.2762', 'no', 'AUD', '1.2762'),
(5, 'Brazilian Real', 'R$', '3.238', 'no', 'BRL', '3.238'),
(6, 'Canadian Dollar', '$', '1.272', 'no', 'CAD', '1.272'),
(7, 'Czech Koruna', 'Kč', '20.647', 'no', 'CZK', '20.647'),
(8, 'Danish Krone', 'kr', '6.0532', 'no', 'DKK', '6.0532'),
(9, 'Euro', '€', '0.84861', 'no', 'EUR', '0.84861'),
(10, 'Hong Kong Dollar', '$', '7.8264', 'no', 'HKD', '7.8264'),
(11, 'Hungarian Forint', 'Ft', '255.24', 'no', 'HUF', '255.24'),
(12, 'Israeli New Sheqel', '₪', '3.4812', 'no', 'ILS', '3.4812'),
(13, 'Japanese Yen', '¥', '107.12', 'no', 'JPY', '107.12'),
(14, 'Malaysian Ringgit', 'RM', '3.908', 'no', 'MYR', '3.908'),
(15, 'Mexican Peso', '$', '18.722', 'no', 'MXN', '18.722'),
(16, 'Norwegian Krone', 'kr', '7.8278', 'no', 'NOK', '7.8278'),
(17, 'New Zealand Dollar', '$', '1.3753', 'no', 'NZD', '1.3753'),
(18, 'Philippine Peso', '₱', '52.261', 'no', 'PHP', '52.261'),
(19, 'Polish Zloty', 'zł', '3.3875', 'no', 'PLN', '3.3875'),
(20, 'Pound Sterling', '£', '0.71864', 'no', 'GBP', '0.71864'),
(21, 'Russian Ruble', 'руб', '55.929', 'no', 'RUB', '55.929'),
(22, 'Singapore Dollar', '$', '1.3198', 'no', 'SGD', '1.3198'),
(23, 'Swedish Krona', 'kr', '8.1945', 'no', 'SEK', '8.1945'),
(24, 'Swiss Franc', 'CHF', '0.93805', 'no', 'CHF', '0.93805'),
(26, 'Thai Baht', '฿', '31.39', 'no', 'THB', '1'),
(27, 'Soles', 'S/. ', '1', 'ok', '??', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_product`
--

CREATE TABLE `customer_product` (
  `customer_product_id` int(11) NOT NULL,
  `rating_num` decimal(20,2) NOT NULL DEFAULT 0.00,
  `rating_total` int(11) NOT NULL DEFAULT 0,
  `rating_user` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `prod_condition` varchar(10) DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `num_of_imgs` varchar(100) DEFAULT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `add_timestamp` longtext DEFAULT NULL,
  `tag` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `admin_status` varchar(10) DEFAULT NULL,
  `front_image` longtext DEFAULT NULL,
  `brand` longtext DEFAULT NULL,
  `unit` longtext DEFAULT NULL,
  `additional_fields` longtext DEFAULT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT 0,
  `discount` varchar(20) NOT NULL DEFAULT '0.00',
  `discount_type` longtext DEFAULT NULL,
  `tax` varchar(20) NOT NULL DEFAULT '0.00',
  `tax_type` longtext DEFAULT NULL,
  `color` longtext DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `main_image` varchar(100) NOT NULL DEFAULT '0',
  `update_time` longtext DEFAULT NULL,
  `last_viewed` int(200) DEFAULT NULL,
  `is_sold` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `subject` longtext DEFAULT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `body`) VALUES
(1, 'Password Reset Email', 'Password Reset Successful', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">You recently requested a new password. We\'ve received the request and your password has been changed.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]<br></span></p><p><span [removed]=\"font-weight: bold;\">Your new password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(2, 'Account Approval Email', 'Account Approval Status', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site. Your account&nbsp;has been [[status]]. Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(7, 'Vendor Registration Email To Admin', 'Vendor Registration', '<p>Congratulation!</p><p>You have a new Registered Vendor in your sytem.</p><p><span [removed]=\"font-weight: bold;\">Vendor Name : [[vendor_name]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Please login to the admin panel to approve the vendor.</span></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(3, 'Membership Upgrade Email', 'Membership Upgraded', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Your Membership Type is [[package]]. </span></p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administrator team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(4, 'Vendors Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site </span>[[sitename]]<span [removed]=\"font-weight: bold;\">. </span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Your account is now being reviewed by </span>administration team. Please wait for Admin approval. You will get a  confirmation email soon and after that you will be able to login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administration team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(5, 'Users Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site&nbsp;</span>[[sitename]]<span [removed]=\"font-weight: bold;\">.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(6, 'Admins Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for joining at our site&nbsp;</span>[[sitename]]<span [removed]=\"font-weight: bold;\">.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p>&nbsp;Best wishes.</p><p><br></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(9, 'Vendor Payment', 'Admin to Vendor Payment', '<p>Dear <span> [[vendor_name]] ,<br></span></p><p>You have received a new payment from <span>[[from]].</span></p><p><span [removed]=\"font-weight: bold;\">The Amount is : [[amount]].</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(8, 'Vendor Package Upgrade', 'Vendor Package Upgrade ', '<p>A vendor has updated their package. Details are given below.<br></p><p><span [removed]=\"font-weight: bold;\">Vendor Name : [[vendor_name]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span><br><span [removed]=\"font-weight: bold;\"><span>Package Name is : [[vendor_package]]</span></span></p><p><span [removed]=\"font-weight: bold;\"><span><span>Package Amount&nbsp; is : [[package_amount]]</span></span></span></p><p><span [removed]=\"font-weight: bold;\">Please login to the admin panel to approve the vendor.</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'Bonofarma'),
(2, 'system_email', 'system@mail.com'),
(3, 'system_title', 'Bonofarma'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'lang_7'),
(9, 'terms_conditions', '<p>terms and conditions</p>'),
(10, 'fb_appid', '384144461995754'),
(11, 'fb_secret', 'e8be929ace6deaf50d2a717834a03cc4'),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', 'bonofarma,farmacia,botica,farmacia bonofarma,chimbote,ancash'),
(26, 'meta_author', 'Andrés Polanco'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', ''),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', 'AIzaSyC-h1cOx7dMD1b4cOBwcly8OBCLUBKQaw0'),
(44, 'contact_about', '<p><span xss=removed>Somos una Farmacia comercializadora de medicamentos y productos de higiene, de cuidado personal y de belleza.</span><br></p>'),
(39, 'contact_phone', '949027822'),
(40, 'contact_email', 'aalexcasas1026@gmail.com'),
(41, 'contact_website', 'www.bonofarma.ga'),
(42, 'footer_text', '<p><span xss=removed>Somos una Farmacia comercializadora de medicamentos y productos de higiene, de cuidado personal y de belleza.</span><br></p>'),
(43, 'footer_category', '[\"26\",\"27\",\"28\",\"29\",\"30\"]'),
(38, 'contact_address', 'Av Alameda mz C lote 13 zona de reubicación Miraflores alto '),
(45, 'admin_notification_sound', 'no'),
(46, 'admin_notification_volume', '7.47'),
(47, 'privacy_policy', '<p xss=removed>El presente Política de Privacidad establece los términos en que BONOFARMA usa y protege la información que es proporcionada por sus usuarios al momento de utilizar su sitio web. Esta compañía está comprometida con la seguridad de los datos de sus usuarios. Cuando le pedimos llenar los campos de información personal con la cual usted pueda ser identificado, lo hacemos asegurando que sólo se empleará de acuerdo con los términos de este documento. Sin embargo esta Política de Privacidad puede cambiar con el tiempo o ser actualizada por lo que le recomendamos y enfatizamos revisar continuamente esta página para asegurarse que está de acuerdo con dichos cambios.</p><p><br xss=removed></p><p xss=removed><span xss=removed>Información que es recogida</span></p><p xss=removed>Nuestro sitio web podrá recoger información personal por ejemplo: Nombre,  información de contacto como  su dirección de correo electrónica e información demográfica. Así mismo cuando sea necesario podrá ser requerida información específica para procesar algún pedido o realizar una entrega o facturación.</p><p><br xss=removed></p><p xss=removed><span xss=removed>Uso de la información recogida</span></p><p xss=removed>Nuestro sitio web emplea la información con el fin de proporcionar el mejor servicio posible, particularmente para mantener un registro de usuarios, de pedidos en caso que aplique, y mejorar nuestros productos y servicios.  Es posible que sean enviados correos electrónicos periódicamente a través de nuestro sitio con ofertas especiales, nuevos productos y otra información publicitaria que consideremos relevante para usted o que pueda brindarle algún beneficio, estos correos electrónicos serán enviados a la dirección que usted proporcione y podrán ser cancelados en cualquier momento.</p><p xss=removed>BONOFARMA está altamente comprometido para cumplir con el compromiso de mantener su información segura. Usamos los sistemas más avanzados y los actualizamos constantemente para asegurarnos que no exista ningún acceso no autorizado.</p><p><br xss=removed></p><p xss=removed><span xss=removed>Cookies</span></p><p xss=removed>Una cookie se refiere a un fichero que es enviado con la finalidad de solicitar permiso para almacenarse en su ordenador, al aceptar dicho fichero se crea y la cookie sirve entonces para tener información respecto al tráfico web, y también facilita las futuras visitas a una web recurrente. Otra función que tienen las cookies es que con ellas las web pueden reconocerte individualmente y por tanto brindarte el mejor servicio personalizado de su web.</p><p xss=removed>Nuestro sitio web emplea las cookies para poder identificar las páginas que son visitadas y su frecuencia. Esta información es empleada únicamente para análisis estadístico y después la información se elimina de forma permanente. Usted puede eliminar las cookies en cualquier momento desde su ordenador. Sin embargo las cookies ayudan a proporcionar un mejor servicio de los sitios web, estás no dan acceso a información de su ordenador ni de usted, a menos de que usted así lo quiera. Usted puede aceptar o negar el uso de cookies, sin embargo la mayoría de navegadores aceptan cookies automáticamente pues sirve para tener un mejor servicio web. También usted puede cambiar la configuración de su ordenador para declinar las cookies. Si se declinan es posible que no pueda utilizar algunos de nuestros servicios.</p><p><br xss=removed></p><p xss=removed><span xss=removed>Enlaces a Terceros</span></p><p xss=removed>Este sitio web pudiera contener en laces a otros sitios que pudieran ser de su interés. Una vez que usted de clic en estos enlaces y abandone nuestra página, ya no tenemos control sobre al sitio al que es redirigido y por lo tanto no somos responsables de los términos o privacidad ni de la protección de sus datos en esos otros sitios terceros. Dichos sitios están sujetos a sus propias políticas de privacidad por lo cual es recomendable que los consulte para confirmar que usted está de acuerdo con estas.</p><p><br xss=removed></p><p xss=removed><span xss=removed>Control de su información personal</span></p><p xss=removed>En cualquier momento usted puede restringir la recopilación o el uso de la información personal que es proporcionada a nuestro sitio web.  Cada vez que se le solicite rellenar un formulario, como el de alta de usuario, puede marcar o desmarcar la opción de recibir información por correo electrónico.  En caso de que haya marcado la opción de recibir nuestro boletín o publicidad usted puede cancelarla en cualquier momento.</p><p xss=removed>Esta compañía no venderá, cederá ni distribuirá la información personal que es recopilada sin su consentimiento, salvo que sea requerido por un juez con un orden judicial.</p><p xss=removed>BONOFARMA Se reserva el derecho de cambiar los términos de la presente Política de Privacidad en cualquier momento.</p>'),
(48, 'discus_id', ''),
(49, 'home_notification_sound', 'ok'),
(50, 'homepage_notification_volume', '7.36'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'no'),
(54, 'revisit_after', '1'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'google'),
(58, 'vendor_system', 'no'),
(59, 'cache_time', '0'),
(60, 'file_folder', 'jfkfkiriwnfjkmskdcsdfasaa'),
(62, 'slides', 'ok'),
(63, 'preloader', '21'),
(64, 'preloader_bg', 'rgba(48,137,209,1)'),
(65, 'preloader_obj', 'rgba(255,255,255,1)'),
(66, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(67, 'google_api_key', ''),
(68, 'physical_product_activation', 'ok'),
(69, 'digital_product_activation', 'no'),
(70, 'data_all_brands', '275:::NIVEA;;;;;;279:::GILLETTE;;;;;;278:::DUREX;;;;;;276:::ORAL B;;;;;;277:::JOHNSON\'S ;;;;;;281:::LISTERINE;;;;;;280:::SUAVE'),
(79, 'google_analytics_key', 'UA-117985671-1'),
(71, 'data_all_vendors', ''),
(72, 'smtp_host', 'ssl://smtp.googlemail.com'),
(73, 'smtp_port', '465'),
(74, 'smtp_user', 'smtp@gmail.com'),
(75, 'smtp_pass', 'smtp password'),
(76, 'mail_status', 'mail'),
(77, 'captcha_status', 'no'),
(78, 'version', '2.0.0'),
(80, 'g_analytics_set', 'ok'),
(81, 'show_vendor_website', 'no'),
(82, 'bundle_product_activation', 'no'),
(83, 'customer_product_activation', 'no'),
(84, 'wallet_system_set', 'no'),
(85, 'guest_checkout_set', 'ok'),
(86, 'affiliation_validity', '30'),
(87, 'affiliation_point_to_currency_rate', '0.25'),
(88, 'product_affiliation_set', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext DEFAULT NULL,
  `Bangla` longtext DEFAULT NULL,
  `Arabic` longtext DEFAULT NULL,
  `French` longtext DEFAULT NULL,
  `Chinese` longtext DEFAULT NULL,
  `lang_7` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`, `lang_7`) VALUES
(1, 'visit_home_page', 'Visit Home Page', 'দর্শন হোম পেজে', 'الصفحة الرئيسية زيارة', 'visite page d\'accueil', '访问主页', 'Visita la página de inicio'),
(2, 'profile', 'Profile', 'প্রোফাইলে', 'الملف الشخصي', 'Profil', '轮廓', 'Perfil'),
(3, 'logout', 'Logout', 'প্রস্থান', 'خروج', 'se déconnecter', '登出', 'Cerrar sesión '),
(4, 'manage_languages', 'Manage Languages', 'প্রত্যেক পরিচালনা', 'إدارة اللغات', 'gérer langues', '管理语言', 'Administrar idiomas'),
(5, 'add_language', 'Add Language', 'ভাষা যোগ', 'إضافة اللغة', 'ajouter la langue', '添加语言', 'Agregar idioma'),
(6, 'successfully_added!', 'Successfully Added!', 'সফলভাবে যোগ করা হয়েছে!', 'وأضاف بنجاح!', 'Ajouté avec succès!', '添加成功！', '¡Agregado exitosamente!'),
(7, 'back_to_language_list', 'Back To Language List', 'ফিরে ভাষা লিস্টে', 'العودة إلى القائمة لغة', 'Retour à la liste des langues', '回到语言列表', 'Volver a la lista de idiomas'),
(8, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'সত্যিই এই ভাষা মুছে ফেলতে চান?', 'حقا تريد حذف هذه اللغة؟', 'voulez vraiment supprimer cette langue?', '真的要删除这个语言呢？', '¿Realmente quieres eliminar este idioma?'),
(9, 'settings_updated!', 'Settings Updated!', 'সেটিংস আপডেট!', 'ضبط تجديد!', 'Paramètres mis à jour!', '设置更新了！', '¡Ajustes actualizados!'),
(10, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', 'আপনি কি সত্যিই এই ভাষা মুছে দিতে চান?', 'هل حقا تريد حذف هذه اللغة؟', 'voulez-vous vraiment supprimer cette langue?', '你真的要删除这个语言呢？', '¿Realmente desea eliminar este idioma?'),
(11, 'saving..', 'Saving..', 'সংরক্ষণ ..', 'إنقاذ..', 'économie..', '保存..', 'Guardando...'),
(12, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'لوحة القيادة', 'tableau de bord', '仪表板', NULL),
(13, 'products', 'Products', 'পণ্য', 'المنتجات', 'Produits', '制品', 'Productos'),
(14, 'physical_products', 'Physical Products', 'শারীরিক পণ্য', 'المنتجات المادية', 'produits physiques', '实物产品', 'Productos físicos'),
(15, 'category', 'Category', 'বিভাগ', 'فئة', 'Catégorie', '类别', 'Categoria'),
(16, 'brands', 'Brands', 'ব্র্যান্ড', 'العلامات التجارية', 'marques', '品牌', 'Marcas'),
(17, 'sub-category', 'Sub-category', 'উপ-বিভাগ', 'الفئة الفرعية', 'sous-catégorie', '子分类', 'Subcategoría'),
(18, 'all_products', 'All Products', 'সব পণ্য', 'جميع المنتجات', 'tous les produits', '所有产品', 'Todos los productos'),
(19, 'product_stock', 'Product Stock', 'পণ্য স্টক', 'الأسهم المنتج', 'stocks de produits', '产品库存', 'Stock de producto'),
(20, 'digital_products', 'Digital Products', 'ডিজিটাল পণ্য', 'المنتجات الرقمية', 'les produits numériques', '数码产品', 'Productos digitales'),
(21, 'all_digitals', 'All Digitals', 'সব সাংখ্যিক', 'جميع digitals', 'tous les digitals', '所有位数七段', 'Todos los digitales'),
(22, 'sale', 'Sale', 'বিক্রয়', 'تخفيض السعر', 'vente', '拍卖', 'Ventas'),
(23, 'discount_coupon', 'Discount Coupon', 'ডিসকাউন্ট কুপন', 'كوبون الخصم', 'coupon de réduction', '折扣券', 'Cupón de descuento'),
(24, 'ticket', 'Ticket', 'টিকিট', 'تذكرة', 'billet', '票', 'Mensajes'),
(25, 'reports', 'Reports', 'রিপোর্ট', 'تقارير', 'rapports', '报告', 'Informes'),
(26, 'product_compare', 'Product Compare', 'পণ্য তুলনা করুন', 'مقارنة المنتج', 'produit comparer', '产品比较', 'Comparar producto'),
(27, 'product_wishes', 'Product Wishes', 'পণ্য শুভেচ্ছা', 'رغبات المنتج', 'souhaits de produits', '产品的愿望', 'Deseos de producto'),
(28, 'vendors', 'Vendors', 'বিক্রেতারা', 'الباعة', 'vendeurs', '供应商', 'Vendedores'),
(29, 'vendor_list', 'Vendor List', 'বিক্রেতা তালিকা', 'قائمة الموردين', 'liste de fournisseurs', '供应商名单', 'Lista de proveedores'),
(30, 'vendor_payments', 'Vendor Payments', 'বিক্রেতা পেমেন্ট', 'مدفوعات البائعين', 'le paiement des fournisseurs', '供应商付款', 'Pagos de proveedores'),
(31, 'vendor_packages', 'Vendor Packages', 'বিক্রেতা প্যাকেজ', 'حزم بائع', 'forfaits fournisseurs', '供应商封装', 'Paquetes de proveedores'),
(32, 'vendor\'s_slides', 'Vendor\'s Slides', 'বিক্রেতার স্লাইড', 'الشرائح البائع', 'Les diapositives de fournisseurs', '供应商的幻灯片', 'Diapositivas del vendedor'),
(33, 'customers', 'Customers', 'গ্রাহকদের', 'الزبائن', 'les clients', '顾客', 'Clientes'),
(34, 'messaging', 'Messaging', 'মেসেজিং', 'الرسائل', 'Messagerie', '消息', 'Mensajería'),
(35, 'newsletters', 'Newsletters', 'নিউজলেটার', 'النشرات الإخبارية', 'bulletins', '新闻简报', 'Boletines informativos'),
(36, 'contact_messages', 'Contact Messages', 'যোগাযোগের বার্তা', 'رسائل الاتصال', 'messages de contact', '联系人的邮件', 'Mensajes de contacto'),
(37, 'blog', 'Blog', 'ব্লগ', 'مدونة', 'Blog', '博客', NULL),
(38, 'blog_categories', 'Blog Categories', 'ব্লগ বিভাগ', 'فئات بلوق', 'catégories de blog', '博客类别', 'Categorías de blog'),
(39, 'all_blogs', 'All Blogs', 'সব ব্লগ', 'جميع بلوق', 'tous les blogs', '所有博客', 'Todos los blogs'),
(40, 'frontend_settings', 'Frontend Settings', 'ফ্রন্টএন্ড সেটিংস', 'إعدادات الواجهة', 'paramètres frontend', '前端设置', 'Configuraciones frontend'),
(41, 'slider_settings', 'Slider Settings', 'স্লাইডার সেটিংস', 'ضبط المنزلق', 'paramètres de curseur', '滑块设置', ' Configuración del control deslizante'),
(42, 'layer_slider', 'Layer Slider', 'লেয়ার স্লাইডার', 'طبقة المنزلق', 'couche curseur', '层滑块', NULL),
(43, 'top_slides', 'Top Slides', 'শীর্ষ স্লাইড', 'أعلى الشرائح', 'top diapositives', '顶部幻灯片', NULL),
(44, 'display_settings', 'Display Settings', 'প্রদর্শন সেটিং', 'اعدادات العرض', 'paramètres d\'affichage', '显示设置', 'Configuraciones de pantalla'),
(45, 'home_page', 'Home Page', 'হোম পেজে', 'الصفحة الرئيسية', 'page d\'accueil', '主页', 'Página de inicio'),
(46, 'contact_page', 'Contact Page', 'যোগাযোগের পৃষ্ঠায়', 'صفحة الاتصال', 'page de contact', '联系方式页面', 'Pagina de contacto'),
(47, 'footer', 'Footer', 'পেয়াদা', 'تذييل', 'bas de page', '页脚', NULL),
(48, 'theme_color', 'Theme Color', 'থিম রঙ', 'اللون موضوع', 'couleur du thème', '主题颜色', 'Color del tema'),
(49, 'logo', 'Logo', 'লোগো', 'شعار', 'logo', '商标', NULL),
(50, 'favicon', 'Favicon', 'ফেভিকন', 'فافيكون', 'favicon', '图标', NULL),
(51, 'fonts', 'Fonts', 'ফন্ট', 'الخطوط', 'polices', '字体', 'Fuentes'),
(52, 'preloader', 'Preloader', 'preloader', 'تحميل مسبق', 'preloader', '预载', 'Precargador'),
(53, 'site_settings', 'Site Settings', 'সাইট সেটিং', 'إعدادات الموقع', 'les paramètres du site', '站点设置', 'Configuraciones del sitio'),
(54, 'general_settings', 'General Settings', 'সাধারণ সেটিংস', 'الاعدادات العامة', 'réglages généraux', '常规设置', 'Configuración general'),
(55, 'third_party_settings', 'Third Party Settings', 'তৃতীয় পক্ষের সেটিংস', 'إعدادات طرف ثالث', 'paramètres de tiers', '第三方设置', 'Configuraciones de terceros'),
(56, 'build_responsive_pages', 'Build Responsive Pages', 'প্রতিক্রিয়াশীল পৃষ্ঠাগুলি বিল্ড', 'بناء صفحات استجابة', 'construire des pages sensibles', '建立反应灵敏的网页', 'Construir páginas receptivas'),
(57, 'set_default_images', 'Set Default Images', 'সেট ডিফল্ট ইমেজ', 'صور مجموعة افتراضية', 'images ensemble par défaut', '设置默认图像', 'Establecer imágenes predeterminadas'),
(58, 'business_settings', 'Business Settings', 'ব্যবসা সেটিংস', 'ضبط رجال الأعمال', 'les milieux d\'affaires', '商业环境', 'Configuraciones comerciales'),
(59, 'activation', 'Activation', 'সক্রিয়করণ', 'تفعيل', 'activation', '激活', 'Activación'),
(60, 'payment_method', 'Payment Method', 'মূল্যপরিশোধ পদ্ধতি', 'طريقة الدفع او السداد', 'mode de paiement', '付款方法', 'Método de pago'),
(61, 'currency_', 'Currency ', 'মুদ্রা ', 'عملة ', 'devise ', '货币 ', 'Moneda'),
(62, 'faqs', 'Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী', 'الأسئلة الأكثر شيوعا', 'faqs', '常见问题解答', NULL),
(63, 'staffs', 'Staffs', 'কর্মীরা', 'الموظفين', 'états-majors', '员工', 'Personal'),
(64, 'all_staffs', 'All Staffs', 'সমস্ত লাঠি', 'جميع الموظفين', 'tous les états-majors', '全体员工', 'Todo el personal'),
(65, 'staff_permissions', 'Staff Permissions', 'স্টাফ অনুমতি', 'أذونات الموظفين', 'permissions du personnel', '工作人员的权限', 'Permisos de personal'),
(66, 'language', 'Language', 'ভাষা', 'لغة', 'la langue', '语言', 'Idioma'),
(67, 'manage_admin_profile', 'Manage Admin Profile', 'অ্যাডমিন প্রোফাইল পরিচালনা', 'إدارة الملف الشخصي ل admin', 'gérer le profil administrateur', '管理管理配置文件', 'Administrar perfil de administrador'),
(68, 'activate', 'Activate', 'সক্রিয় করা', 'تفعيل', 'activer', '启用', 'Activar'),
(69, 'SEO_proggres', 'SEO Proggres', 'এসইও proggres', 'proggres كبار المسئولين الاقتصاديين', 'proggres SEO', 'SEO proggres', NULL),
(70, 'online_tutorial', 'Online Tutorial', 'অনলাইন টিউটোরিয়াল', 'البرنامج التعليمي على الانترنت', 'tutoriel en ligne', '在线教程', 'Tutorial en línea'),
(71, 'checkout', 'Checkout', 'চেকআউট', 'الدفع', 'check-out', '查看', 'Pagar'),
(72, 'deleted_successfully', 'Deleted Successfully', 'সফলভাবে মোছা', 'حذف بنجاح', 'supprimé avec succès', '成功删除', 'Borrado exitosamente'),
(73, 'cancelled', 'Cancelled', 'বাতিল করা হয়েছে', 'تم الالغاء', 'annulé', '取消', 'Cancelado'),
(74, 'cancel', 'Cancel', 'বাতিল', 'إلغاء', 'Annuler', '取消', 'Cancelar'),
(75, 'required', 'Required', 'প্রয়োজনীয়', 'مطلوب', 'Obligatoire', '需要', 'Requerido'),
(76, 'must_be_a_number', 'Must Be A Number', 'অবশ্যই একটি সংখ্যা হবে', 'يجب أن يكون رقما', 'doit être un nombre', '必须是一个数字', 'Debe ser un número'),
(77, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা আবশ্যক', 'يجب أن يكون عنوان بريد إلكتروني صالح', 'doit être une adresse e-mail valide', '必须是一个有效的E-mail地址', 'Debe ser una dirección de correo electrónico válida '),
(78, 'save', 'Save', 'রক্ষা', 'حفظ', 'enregistrer', '保存', 'Guardar'),
(79, 'product_published!', 'Product Published!', 'পণ্য প্রকাশিত!', 'المنتج نشر!', 'produit publié!', '产品发表！', 'Producto publicado!'),
(80, 'product_unpublished!', 'Product Unpublished!', 'পণ্য অপ্রকাশিত!', 'المنتج غير منشورة!', 'produit inédit!', '产品未公布！', 'Producto no publicado!'),
(81, 'product_featured!', 'Product Featured!', 'পণ্য বৈশিষ্ট্যযুক্ত করা হবে!', 'المنتج المميز!', 'produit vedette!', '产品特色！', 'Producto destacado!'),
(82, 'product_unfeatured!', 'Product Unfeatured!', 'পণ্য unfeatured!', 'المنتج unfeatured!', 'produit unfeatured!', '产品unfeatured！', 'Producto sin características!'),
(83, 'product_in_todays_deal!', 'Product In Todays Deal!', 'আজকের মধ্যে পণ্য মোকাবেলা!', 'المنتج في اليوم التعامل!', 'produit aujourd\'hui face!', '产品在今天的交易！', 'Producto en oferta de hoy!'),
(84, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'পণ্য আজকের ডিল থেকে সরানো!', 'منتج إزالة من صفقة اليوم!', 'produit retiré de la retransmission de ce deal!', '产品从今天的交易中删除！', 'Producto eliminado de la oferta de hoy!'),
(85, 'slider_published!', 'Slider Published!', 'স্লাইডার প্রকাশিত!', 'المنزلق نشرت!', 'curseur publié!', '滑块公布！', 'Slider publicado!'),
(86, 'slider_unpublished!', 'Slider Unpublished!', 'স্লাইডার অপ্রকাশিত!', 'المنزلق غير منشورة!', 'curseur inédit!', '滑块未公布！', 'Control deslizante no publicado!'),
(87, 'page_published!', 'Page Published!', 'পৃষ্ঠা প্রকাশিত!', 'الصفحة نشرت!', 'page publiée!', '公布的一页！', 'Página publicada!'),
(88, 'page_unpublished!', 'Page Unpublished!', 'পৃষ্ঠা অপ্রকাশিত!', 'الصفحة غير منشورة!', 'Page inédite!', '页未公布！', 'Página no publicada!'),
(89, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'নোটিফিকেশন সাউন্ড সক্রিয়!', 'صوت الإعلام تمكين!', 'notification sonore activé!', '通知声音启用！', 'Sonido de notificación habilitado! '),
(90, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'নোটিফিকেশন সাউন্ড অক্ষম!', 'صوت الإعلام تعطيل!', 'notification sonore désactivé!', '通知声音禁用！', 'Notificación de sonido deshabilitado!'),
(91, 'google_login_enabled!', 'Google Login Enabled!', 'গুগল লগ-ইন সক্রিয়!', 'جوجل تسجيل الدخول تمكين!', 'google connexion activé!', '谷歌登录启用！', 'Inicio de sesión de Google habilitado'),
(92, 'google_login_disabled!', 'Google Login Disabled!', 'গুগল লগইন অক্ষম!', 'جوجل تسجيل الدخول تعطيل!', 'google connexion désactivé!', '谷歌登录禁用！', 'Google Login deshabilitado!'),
(93, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'ফেসবুক লগ-ইন সক্রিয়!', 'الفيسبوك تسجيل الدخول تمكين!', 'facebook connexion activé!', 'Facebook登录启用！', 'Inicio de sesión en Facebook habilitado'),
(94, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'ফেসবুক লগইন অক্ষম!', 'الفيسبوك تسجيل الدخول تعطيل!', 'facebook connexion désactivé!', 'Facebook登录禁用！', 'Inicio de sesión en Facebook deshabilitado'),
(95, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'পেপ্যাল ​​অক্ষম!', 'الدفع باي بال تعطيل!', 'paiement paypal désactivé!', '支付宝付款禁用！', 'Pago de Paypal deshabilitado!'),
(96, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'পেপাল পেমেন্ট সক্রিয়!', 'الدفع باي بال تمكين!', 'le paiement par PayPal activé!', '支付宝付款启用！', 'Pago de Paypal habilitado!'),
(97, 'slider_enabled!', 'Slider Enabled!', 'স্লাইডার সক্রিয়!', 'المنزلق تمكين!', 'curseur activé!', '滑块启用！', 'Slider habilitado!'),
(98, 'slider_disabled!', 'Slider Disabled!', 'স্লাইডার অক্ষম!', 'المنزلق تعطيل!', 'curseur désactivé!', '滑块禁用！', 'Slider deshabilitado!'),
(99, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'নগদ পেমেন্ট সক্রিয়!', 'الدفع نقدا تمكين!', 'paiement en espèces activé!', '现金支付启用！', 'Pago en efectivo habilitado!'),
(100, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'নগদ পেমেন্ট নিষ্ক্রিয়!', 'الدفع نقدا تعطيل!', 'paiement en espèces désactivé!', '现金支付禁用！', 'Pago en efectivo deshabilitado!'),
(101, 'enabled!', 'Enabled!', 'সক্রিয়!', 'تمكين!', 'activée!', '启用！', 'Habilitado!'),
(102, 'disabled!', 'Disabled!', 'অক্ষম!', 'معاق!', 'désactivée!', '禁用！', 'Deshabilitado!'),
(103, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'ই-মেইলের বিক্রেতা পাঠানো!', 'إشعار البريد الإلكتروني أرسلت إلى بائع!', 'courriel de notification envoyé au fournisseur!', '通知电子邮件发送给供应商！', '¡Correo electrónico de notificación enviado al vendedor!'),
(104, 'working...', 'Working...', 'কাজ করছে ...', 'العمل ...', 'travailler...', '加工...', 'Trabajando...'),
(105, 'no', 'No', 'না', 'لا', 'non', '没有', 'Nro'),
(106, 'name', 'Name', 'নাম', 'اسم', 'prénom', '名称', 'Nombre'),
(107, 'icon', 'Icon', 'আইকন', 'أيقونة', 'icône', '图标', 'Icono'),
(108, 'publish', 'Publish', 'প্রকাশ করা', 'نشر', 'publier', '发布', 'Publicar'),
(109, 'options', 'Options', 'অপশন', 'خيارات', 'Options', '选项', 'Opciones '),
(110, 'language_enabled', 'Language Enabled', 'ভাষা সক্রিয়', 'لغة سكريبت', 'langue activée', '语言启用', 'Idioma habilitado'),
(111, 'language_disabled', 'Language Disabled', 'ভাষা অক্ষম', 'لغة تعطيل', 'langue désactivé', '禁用语', 'Idioma deshabilitado'),
(112, 'edit_language_list', 'Edit Language List', 'সম্পাদনা নতুন ভাষাটি তালিকায় আগে', 'تحرير القائمة لغة', 'modifier la liste des langues', '编辑语言列表', 'Editar lista de idiomas'),
(113, 'successfully_edited!', 'Successfully Edited!', 'সফলভাবে সম্পাদিত!', 'بنجاح تحريرها!', 'édité avec succès!', '编辑成功！', 'Editado con éxito!'),
(114, 'set_translations', 'Set Translations', 'সেট অনুবাদের', 'تعيين ترجمة', 'traductions set', '译文集', 'Establecer traducciones'),
(115, 'edit_language', 'Edit Language', 'সম্পাদনা ভাষা', 'تحرير لغة', 'modifier la langue', '编辑语言', 'Editar idioma'),
(116, 'edit', 'Edit', 'সম্পাদন করা', 'تحرير', 'modifier', '编辑', 'Editar'),
(117, 'delete_language', 'Delete Language', 'ভাষা মুছতে', 'حذف اللغة', 'supprimer la langue', '删除语言', 'Eliminar idioma'),
(118, 'select_language', 'Select Language', 'ভাষা নির্বাচন কর', 'اختر اللغة', 'Choisir la langue', '选择语言', 'Seleccione el idioma'),
(119, 'word', 'Word', 'শব্দ', 'كلمة', 'mot', '字', 'Palabra'),
(120, 'translation', 'Translation', 'অনুবাদ', 'ترجمة', 'Traduction', '翻译', 'Traducción'),
(121, 'translate', 'Translate', 'অনুবাদ', 'ترجم', 'Traduire', '翻译', 'Traducir'),
(122, 'save_all', 'Save All', 'সব সংরক্ষণ করুন', 'احفظ الكل', 'sauver tous', '保存全部', 'Guardar todo'),
(123, 'saving', 'Saving', 'রক্ষা', 'إنقاذ', 'économie', '保存', 'Guardando'),
(124, 'updated!', 'Updated!', 'আপডেট!', 'تحديث!', 'actualisé!', '更新！', '¡Actualizado!'),
(125, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'সত্যিই এই শব্দ মুছে ফেলতে চান?', 'حقا تريد حذف هذه الكلمة؟', 'voulez vraiment supprimer ce mot?', '真的要删除这个词？', '¿Realmente quieres eliminar esta palabra?'),
(126, 'delete', 'Delete', 'মুছে ফেলা', 'حذف', 'effacer', '删除', 'Eliminar'),
(127, 'home', 'Home', 'বাড়ি', 'الصفحة الرئيسية', 'domicile', '家', 'Hogar'),
(128, 'subtotal', 'Subtotal', 'উপমোট', 'حاصل الجمع', 'Sous-Total', '小计', 'Subtotal'),
(129, 'close', 'Close', 'ঘনিষ্ঠ', 'أغلق', 'Fermer', '关', 'Cerrar'),
(130, 'faq', 'Faq', 'অনবরত জিজ্ঞাসিত প্রশ্ন', 'التعليمات', 'FAQ', '常问问题', NULL),
(131, 'login', 'Login', 'লগইন', 'تسجيل الدخول', 's\'identifier', '登录', 'Iniciar sesión'),
(132, 'registration', 'Registration', 'নিবন্ধন', 'التسجيل', 'enregistrement', '注册', 'Registrate'),
(133, 'customer_registration', 'Customer Registration', 'গ্রাহক নিবন্ধন', 'تسجيل العملاء', 'enregistrement des clients', '客户注册', 'Registro de cliente'),
(134, 'vendor_registration', 'Vendor Registration', 'বিক্রেতার নিবন্ধন', 'تسجيل البائعين', 'l\'inscription des fournisseurs', '供应商登记', 'Registro de comerciante'),
(135, 'what_are_you_looking_for', 'What Are You Looking For', 'আপনি কি খুজছেন', 'عما تبحث', 'que cherchez-vous', '你在找什么', 'Qué estás buscando'),
(136, 'select', 'Select', 'নির্বাচন করা', 'اختار', 'sélectionner', '选择', 'Seleccionar'),
(137, 'all_categories', 'All Categories', 'সব ধরনের', 'جميع الفئات', 'toutes catégories', '所有类别', 'todas las categorias'),
(138, 'product', 'Product', 'পণ্য', 'المنتج', 'produit', '产品', 'Producto'),
(139, 'vendor', 'Vendor', 'বিক্রেতা', 'بائع', 'vendeur', '供应商', 'Vendedor'),
(140, 'compare', 'Compare', 'তুলনা করা', 'قارن', 'comparer', '比较', 'Comparar'),
(141, 'item(s)', 'Item(s)', 'বস্তু (গুলি)', 'العناصر)', 'articles)', '项目（S）', 'Artículos'),
(142, 'homepage', 'Homepage', 'হোমপেজে', 'الصفحة الرئيسية', 'page d\'accueil', '主页', 'Página principal'),
(143, 'all_sub_categories', 'All Sub Categories', 'সব সাব আরও', 'جميع الفئات الفرعية', 'toutes les sous-catégories', '所有子类', 'Todas las subcategorías'),
(144, 'featured_products', 'Featured Products', 'বৈশিষ্ট্যযুক্ত পণ্য', 'منتجات مميزة', 'produits présentés', '特色产品', 'Productos Destacados'),
(145, 'todays_deal', 'Todays Deal', 'আজকের চুক্তি', 'صفقة اليوم', 'la retransmission de ce deal', '今天的交易', 'Oferta de hoy'),
(146, 'all_brands', 'All Brands', 'সব ব্র্যান্ডের', 'جميع العلامات التجارية', 'toutes les marques', '所有品牌', 'Todas las marcas'),
(147, 'all_vendors', 'All Vendors', 'সব বিক্রেতারা', 'جميع البائعين', 'tous les fournisseurs', '所有厂商', 'Todos los vendedores'),
(148, 'blogs', 'Blogs', 'ব্লগ', 'بلوق', 'blogs', '博客', NULL),
(149, 'store_locator', 'Store Locator', 'দোকান লোকেটার', 'فروعنا', 'localisateur de magasin', '商店定位器', 'Localizador de tiendas'),
(150, 'contact', 'Contact', 'যোগাযোগ', 'اتصال', 'contact', '联系', 'Contacto'),
(151, 'more', 'More', 'অধিক', 'أكثر', 'plus', '更多', 'Más'),
(152, 'latest_products', 'Latest Products', 'সাম্প্রতিক পণ্যসমূহ', 'آخر المنتجات', 'derniers produits', '最新产品', 'últimos productos'),
(153, 'more_categories', 'More Categories', 'আরো বিভাগ', 'المزيد من التصنيفات', 'plus de catégories', '多个类别', 'Más categorías'),
(154, 'today\'s_deal', 'Today\'s Deal', 'আজকের চুক্তি', 'صفقة اليوم', 'l\'offre d\'aujourd\'hui', '今天的交易', 'El trato de hoy'),
(155, 'quick_view', 'Quick View', 'তারাতারি দেখা', 'نظرة سريعة', 'aperçu rapide', '快速浏览', 'Vista rápida'),
(156, 'search', 'Search', 'অনুসন্ধান', 'بحث', 'chercher', '搜索', 'Buscar'),
(157, 'latest', 'Latest', 'সর্বশেষ', 'آخر', 'dernier', '最新', 'Último'),
(158, 'featured', 'Featured', 'সুগঠনবিশিষ্ট', 'متميز', 'en vedette', '精选', 'Destacados'),
(159, 'discount', 'Discount', 'ডিসকাউন্ট', 'خصم', 'remise', '折扣', 'Descuento'),
(160, 'add_to_wishlist', 'Add To Wishlist', 'চাহিদাপত্রে যোগ করা', 'إضافة إلى سلة', 'ajouter à la liste de souhaits', '加入收藏', 'Añadir a la lista de deseos'),
(161, 'add_to_cart', 'Add To Cart', 'কার্ট যোগ', 'أضف إلى السلة', 'ajouter au panier', '添加到购物车', 'Añadir al carrito'),
(162, 'out_of_stock', 'Out Of Stock', 'স্টক আউট', 'إنتهى من المخزن', 'rupture de stock', '缺货', 'Agotado'),
(163, 'visit', 'Visit', 'দর্শন', 'زيارة', 'visite', '访问', 'Visita'),
(164, 'recently_viewed', 'Recently Viewed', 'সম্প্রতি দেখা', 'شوهدت مؤخرا', 'vu récemment', '最近浏览过的', 'visto recientemente'),
(165, 'most_viewed', 'Most Viewed', 'সর্বাধিক দেখা', 'الأكثر مشاهدة', 'le plus regardé', '最受关注', 'Mas visto'),
(166, 'our_available_brands', 'Our Available Brands', 'আমাদের উপলব্ধ ব্রান্ডের', 'علاماتنا التجارية المتاحة', 'nos marques disponibles', '我们现有的品牌', 'Nuestras marcas disponibles'),
(167, 'email_address', 'Email Address', 'ই-মেইল ঠিকানা', 'عنوان البريد الإلكتروني', 'adresse e-mail', '电子邮件地址', 'Dirección de correo electrónico'),
(168, 'subscribe', 'Subscribe', 'সাবস্ক্রাইব', 'الاشتراك', 'souscrire', '订阅', 'Suscribir'),
(169, 'categories', 'Categories', 'বিভাগ', 'الفئات', 'Catégories', '类别', 'Categorias'),
(170, 'useful_links', 'Useful Links', 'উপকারী সংজুক', 'روابط مفيدة', 'Liens utiles', '有用的链接', 'Enlaces útiles'),
(171, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'اتصل بنا', 'Contactez nous', '联系我们', 'Contáctenos'),
(172, 'address', 'Address', 'ঠিকানা', 'عنوان', 'adresse', '地址', 'Dirección'),
(173, 'phone', 'Phone', 'ফোন', 'هاتف', 'téléphone', '电话', 'Teléfono'),
(174, 'website', 'Website', 'ওয়েবসাইট', 'موقع الكتروني', 'site Internet', '网站', 'Sitio web'),
(175, 'email', 'Email', 'ই-মেইল', 'البريد الإلكتروني', 'email', '电子邮件', NULL),
(176, 'all_rights_reserved', 'All Rights Reserved', 'সর্বস্বত্ব সংরক্ষিত', 'كل الحقوق محفوظة', 'tous les droits sont réservés', '版权所有', 'Todos los derechos reservados'),
(177, 'terms_&_condition', 'Terms & Condition', 'বিধি - নিষেধ এবং শর্তাবলী', 'الشروط والأحكام', 'termes et conditions', '条款和条件', 'Términos y condiciones'),
(178, 'privacy_policy', 'Privacy Policy', 'গোপনীয়তা নীতি', 'سياسة الخصوصية', 'politique de confidentialité', '隐私政策', 'Política de privacidad'),
(179, 'product_added_to_cart', 'Product Added To Cart', 'পণ্য কার্ট যোগ', 'وأضاف المنتج إلى سلة التسوق', 'produit ajouté au panier', '产品加入购物车', 'Producto agregado al carrito'),
(180, 'added_to_cart', 'Added To Cart', 'কার্ট যোগ', 'إضافة إلى العربة', 'ajouté au panier', '添加到购物车', 'Agregado al carro'),
(181, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'পণ্যের পরিমাণ প্রাপ্যতা অতিক্রম!', 'كمية المنتج تتجاوز توافر!', 'quantité de produit dépasse la disponibilité!', '产品数量超过供应！', 'Cantidad del producto Exceder disponibilidad!'),
(182, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'পণ্য ইতিমধ্যে কার্ট যোগ করা হয়েছে!', 'وأضاف المنتج بالفعل إلى السلة', 'produit déjà ajouté au panier!', '产品已添加到购物车！', 'Producto ya agregado al carrito!'),
(183, 'product_added_to_wishlist', 'Product Added To Wishlist', 'পণ্য লিস্টে যোগ', 'وأضاف المنتج إلى سلة', 'Produit ajouté à la liste de souhaits', '产品加入心愿', 'Producto añadido a la lista de deseos'),
(184, 'wished', 'Wished', 'কাম্য', 'تمنى', 'souhaité', '希望', 'Deseado'),
(185, 'wishing..', 'Wishing..', 'তবেই ..', 'متمنيا ..', 'souhaitant ..', '希望..', 'Deseando...'),
(186, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'পণ্যের তালিকা থেকে সরানো', 'المنتج إزالتها من سلة', 'produit retiré de la liste de souhaits', '从产品的愿望清单中移除', 'Producto eliminado de la lista de deseos'),
(187, 'product_added_to_compared', 'Product Added To Compared', 'পণ্য তুলনা যোগ করা', 'وأضاف المنتج مقارنة', 'Produit ajouté au rapport', '产品附加值比较', 'Producto agregado a comparado'),
(188, 'compared', 'Compared', 'তুলনা', 'مقارنة', 'par rapport', '相比', 'Comparado'),
(189, 'working..', 'Working..', 'কাজ ..', 'العمل ..', 'travailler..', '加工..', 'Trabajando..'),
(190, 'product_removed_from_compare', 'Product Removed From Compare', 'পণ্য তুলনা থেকে সরানো', 'منتج إزالة من المقارنة', 'produit retiré de comparer', '从对比产品中删除', 'Producto eliminado de la comparación'),
(191, 'compare_category_full', 'Compare Category Full', 'বিভাগ পূর্ণ তুলনা', 'مقارنة فئة كاملة', 'comparer la catégorie complète', '比较全品类', 'Comparar categoría completa'),
(192, 'product_already_added_to_compare', 'Product Already Added To Compare', 'পণ্য ইতিমধ্যে তুলনা যোগ করা', 'وأضاف المنتج بالفعل للمقارنة', 'produit déjà ajouté à comparer', '产品已添加到比较', 'Producto ya agregado para comparar'),
(193, 'product_rated_successfully', 'Product Rated Successfully', 'পণ্য সফলভাবে রেট', 'المنتج تصنيفا بنجاح', 'produit évalué avec succès', '产品额定成功', 'Producto calificado exitosamente'),
(194, 'product_rating_failed', 'Product Rating Failed', 'পণ্য রেটিং ব্যর্থ', 'فشل تصنيف المنتج', 'Evaluation du produit a échoué', '产品等级不合格', 'Calificación del producto fallida'),
(195, 'you_already_rated_this_product', 'You Already Rated This Product', 'আপনি ইতিমধ্যে এই পণ্য রেট', 'كنت تصنيفا بالفعل هذا المنتج', 'vous avez déjà évalué ce produit', '您已经评价过此产品', 'Ya calificó este producto'),
(196, 'you_already_subscribed', 'You Already Subscribed', 'আপনি ইতিমধ্যে সাবস্ক্রাইব করা', 'كنت قد اشتركت بالفعل', 'vous êtes déjà inscrit', '你已经订阅', 'Ya te suscribiste'),
(197, 'you_subscribed_successfully', 'You Subscribed Successfully', 'আপনি সফলভাবে সাবস্ক্রাইব', 'كنت قد اشتركت بنجاح', 'vous avez souscrit avec succès', '你成功订阅', 'Te suscribiste exitosamente'),
(198, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'আপনি ইতিমধ্যে এই ব্রাউজার থেকে তিনবার সাবস্ক্রাইব করা', 'كنت قد اشتركت بالفعل ثلاث مرات من هذا المتصفح', 'vous êtes déjà inscrit trois fois à partir de ce navigateur', '你已经订阅三次从这个浏览器', 'Ya te suscribiste tres veces desde este navegador'),
(199, 'logging_in..', 'Logging In..', 'লগ-ইন ..', 'تسجيل الدخول..', 'Se connecter..', '在登录..', 'Iniciando sesión...'),
(200, 'you_logged_in_successfully', 'You Logged In Successfully', 'আপনি সফলভাবে লগ', 'قمت بتسجيل الدخول بنجاح', 'vous vous êtes connecté avec succès', '你登录成功', 'Has iniciado sesión correctamente'),
(201, 'login_failed!_try_again!', 'Login Failed! Try Again!', 'লগইন ব্যর্থ! </font><font>আবার চেষ্টা কর!', 'فشل تسجيل الدخول! </font><font>حاول ثانية!', 'échec de la connexion! </font><font>réessayer!', '登录失败！</font><font>再试一次！', '¡Error de inicio de sesion! ¡Inténtalo de nuevo!'),
(202, 'you_registered_successfully', 'You Registered Successfully', 'আপনি সাফল্যের সাথে নিবন্ধিত', 'قمت بتسجيل بنجاح', 'vous avez enregistré avec succès', '你注册成功', 'Te registraste exitosamente'),
(203, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', 'রেজিস্ট্রেশন ব্যর্থ হয়েছে! </font><font>আবার চেষ্টা কর!', 'فشل في التسجيل! </font><font>حاول ثانية!', 'échec de l\'enregistrement! </font><font>réessayer!', '注册失败！</font><font>再试一次！', '¡Registro fallido! ¡Inténtalo de nuevo!'),
(204, 'submitting..', 'Submitting..', 'জমা ..', 'تقديم..', 'soumission..', '提交..', 'Sumisión..'),
(205, 'email_sent_successfully', 'Email Sent Successfully', 'ইমেল সফলভাবে পাঠানো', 'ارسال البريد الالكتروني بنجاح', 'E-mail envoyé avec succès', '电子邮件发送成功', 'Correo electrónico enviado con éxito '),
(206, 'email_does_not_exist!', 'Email Does Not Exist!', 'ই-মেইল অস্তিত্ব নেই!', 'البريد الإلكتروني غير موجود!', 'email n\'existe pas!', '电子邮件不存在！', '¡El correo electrónico no existe!'),
(207, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'ই-মেইল পাঠানো ব্যর্থ! </font><font>আবার চেষ্টা কর', 'إرسال البريد الإلكتروني فشل! </font><font>حاول ثانية', 'email envoi a échoué! </font><font>réessayer', '电子邮件发送失败！</font><font>再试一次', 'Envío fallido de correo electrónico'),
(208, 'logging_in', 'Logging In', 'লগ-ইন', 'تسجيل الدخول', 'Se connecter', '在登录', 'Iniciando sesión'),
(209, 'adding_to_cart..', 'Adding To Cart..', 'কার্ট যোগ ..', 'مشيرا إلى السلة ..', 'd\'ajouter au panier ..', '添加到购物车..', 'Añadiendo al carro...'),
(210, 'product_removed_from_cart', 'Product Removed From Cart', 'পণ্য কার্ট থেকে সরানো', 'المنتج إزالتها من سلة', 'produit retiré du panier', '从产品的购物车中移除', 'Producto retirado del carrito'),
(211, 'the_field_is_required', 'The Field Is Required', 'ক্ষেত্র প্রয়োজন বোধ করা হয়', 'مطلوب مجال', 'le champ est obligatoire', '现场要求', 'El campo es requerido'),
(212, 'enter_a_valid_email_address', 'Enter A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা লিখুন', 'أدخل عنوان بريد إلكتروني صالح', 'Entrez une adresse mail valide', '输入一个有效的电子邮件地址', 'Introduzca una dirección de correo electrónico válida '),
(213, 'applying..', 'Applying..', 'আবেদন ..', 'تطبيق ..', 'application ..', '应用..', 'Aplicando...'),
(214, 'coupon_not_valid', 'Coupon Not Valid', 'কুপন বৈধ নয়', 'القسيمة غير صالحة', 'coupon pas valide', '优惠券无效', 'Cupón no válido'),
(215, 'coupon_discount_successful', 'Coupon Discount Successful', 'কুপন ডিসকাউন্ট সফল', 'قسيمة خصم ناجحة', 'coupon de réduction réussie', '优惠券折扣成功', 'Cupón de descuento exitoso'),
(216, 'favored', 'Favored', 'বিশেষ সুবিধাপ্রাপ্ত', 'مفضل', 'favorisé', '青睐', 'Favorecido'),
(217, 'successful_login', 'Successful Login', 'সফল অনুপ্রবেশ', 'نجاح تسجيل الدخول', 'Connexion réussie', '登录成功', 'Acceso exitoso'),
(218, 'login_failed', 'Login Failed', 'লগইন ব্যর্থ', 'فشل تسجيل الدخول', 'échec de la connexion', '登录失败', 'Error de inicio de sesion'),
(219, 'sign_in_to_your_account', 'Sign In To Your Account', 'আপনার অ্যাকাউন্টে সাইন ইন করুন', 'تسجيل الدخول إلى حسابك', 'Connectez-vous à votre compte', '登录到您的帐户', 'Iniciar sesión en su cuenta'),
(220, 'password', 'Password', 'পাসওয়ার্ড', 'كلمه السر', 'mot de passe', '密码', 'Contraseña'),
(221, 'forget_password', 'Forget Password', 'পাসওয়ার্ড ভুলে গেছেন', 'نسيت كلمة', 'mot de passe oublié', '忘记密码', 'Contraseña olvidada'),
(222, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'ই-মেইল নতুন পাসওয়ার্ড দিয়ে ডেকে পাঠিয়েছি!', 'تم إرسال رسالة إلكترونية مع كلمة مرور جديدة!', 'email envoyé avec le nouveau mot de passe!', '电子邮件与新密码发送！', 'Correo electrónico enviado con nueva contraseña!'),
(223, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছেন', 'هل نسيت كلمة المرور', 'mot de passe oublié', '忘记密码', 'Se te olvidó tu contraseña'),
(224, 'sign_in', 'Sign In', 'প্রবেশ কর', 'تسجيل الدخول', 'se connecter', '签到', 'Registrate'),
(225, 'this_field_is_required', 'This Field Is Required', 'ঘরটি অবশ্যই পূরণ করতে হবে', 'هذه الخانة مطلوبه', 'Ce champ est requis', '这是必填栏', 'Este campo es requerido'),
(226, 'signing_in...', 'Signing In...', 'সাইন ইন...', 'تسجيل الدخول...', 'Connectez-vous...', '登录中...', 'Iniciando sesión...'),
(227, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'আপনার ই-মেইল পাঠানো নতুন পাসওয়ার্ড', 'كلمة المرور الجديدة إرسالها إلى البريد الإلكتروني الخاص بك', 'nouveau mot de passe envoyé à votre email', '发送到您的邮箱的新密码', 'Nueva contraseña enviada a su correo electrónico'),
(228, 'login_failed!', 'Login Failed!', 'লগইন ব্যর্থ!', 'فشل تسجيل الدخول!', 'échec de la connexion!', '登录失败！', '¡Error de inicio de sesion!'),
(229, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'ভুল ই-মেইল ঠিকানা! </font><font>আবার চেষ্টা কর', 'الخطأ عنوان البريد الإلكتروني! </font><font>حاول ثانية', 'Adresse e-mail mal! </font><font>réessayer', '错误的电子邮件地址！</font><font>再试一次', '¡Dirección de correo errónea! Inténtalo de nuevo'),
(230, 'login_successful!', 'Login Successful!', 'সফল লগইন!', 'تم الدخول بنجاح!', 'connexion réussie!', '登陆成功！', '¡Inicio de sesión correcto!'),
(231, 'SUCCESS!', 'SUCCESS!', 'সাফল্য!', 'نجاح!', 'LE SUCCÈS!', '成功！', '¡ÉXITO!'),
(232, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট করুন', 'اعادة تعيين كلمة السر', 'réinitialiser le mot de passe', '重设密码', 'Restablecer contraseña'),
(233, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'অনুমোদন না অ্যাকাউন্ট. </font><font>অনুমোদনের জন্য অপেক্ষা করুন.', 'حساب غير معتمدة. </font><font>الانتظار للموافقة عليها.', 'compte pas approuvé. </font><font>attendre l\'approbation.', '占未获批准。</font><font>等待批准。', 'Cuenta no aprobada. Espera por aprovacion'),
(234, '24_hours_stock', '24 Hours Stock', '24 ঘণ্টা স্টক', 'الأسهم 24 ساعة', '24 heures Stock', '24小时股票', 'Stock 24 horas'),
(235, '24_hours_sale', '24 Hours Sale', '24 ঘণ্টা বিক্রয়', '24 ساعة بيع', '24 heures vente', '24小时销售', 'Venta 24 horas'),
(236, '24_hours_destroy', '24 Hours Destroy', '24 ঘণ্টা ধ্বংস', '24 ساعة تدمر', '24 heures détruire', '24小时破坏', '24 horas destruye'),
(237, 'total_vendors', 'Total Vendors', 'মোট বিক্রেতারা', 'مجموع الباعة', 'vendeurs au total', '总供应商', 'Vendedores totales'),
(238, 'pending_vendors', 'Pending Vendors', 'বিচারাধীন বিক্রেতারা', 'الباعة في انتظار', 'fournisseurs en attente', '未决的供应商', 'Vendedores pendientes'),
(239, 'vendor_stattistics', 'Vendor Stattistics', 'বিক্রেতার stattistics', 'stattistics بائع', 'stattistics fournisseurs', '供应商stattistics', 'Estadísticas del vendedor'),
(240, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'বিভাগ জ্ঞানী মাসিক স্টক', 'فئة الأسهم الشهري الحكمة', 'catégorie encours mensuel sage', '明智类股票每月', 'Categoría Wise Stock mensual'),
(241, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'বিভাগ জ্ঞানী মাসিক ধ্বংস', 'فئة الحكمة تدمير شهريا', 'catégorie sage mensuel détruire', '类别明智每月破坏', 'Categoría Wise Monthly Destroy'),
(242, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'বিভাগ জ্ঞানী মাসিক বিক্রয়', 'الفئة بيع الشهري الحكمة', 'catégorie vente mensuelle sage', '类别明智每月销售', 'Categoría Venta mensual sabia'),
(243, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'বিভাগ জ্ঞানী মাসিক গ্র্যান্ড মুনাফা', 'فئة الحكمة الربح الكبير الشهري', 'catégorie sage mensuel grande profit', '明智类盛大每月利润', 'Categoría Gran beneficio mensual sabio'),
(244, 'cost', 'Cost', 'মূল্য', 'كلفة', 'Coût', '成本', 'Costo'),
(245, 'value', 'Value', 'মূল্য', 'القيمة', 'valeur', '值', 'Valor'),
(246, 'loss', 'Loss', 'ক্ষতি', 'خسارة', 'perte', '失利', 'Perdida'),
(247, 'profit', 'Profit', 'মুনাফা', 'ربح', 'le profit', '利润', 'Ganancia'),
(248, 'manage_categories_(_physical_product_)', 'Manage Categories ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) পরিচালনা', 'إدارة الفئات (منتج مادي)', 'gérer des catégories (produit physique)', '管理类（产品实物）', 'Administrar categorías (producto físico)'),
(249, 'add_category_(_physical_product_)', 'Add Category ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) যোগ', 'إضافة فئة (منتج مادي)', 'ajouter la catégorie (produit physique)', '添加类别（产品实物）', 'Agregar categoría (producto físico) '),
(250, 'create_category', 'Create Category', 'বিভাগ তৈরি', 'إنشاء فئة', 'créer la catégorie', '创建类别', 'Crear categoría'),
(251, 'banner', 'Banner', 'নিশান', 'راية', 'bannière', '旗帜', 'Bandera'),
(252, 'edit_category_(_physical_product_)', 'Edit Category ( Physical Product )', 'সম্পাদনা বিভাগ (শারীরিক পণ্য)', 'تحرير فئة (منتج مادي)', 'modifier la catégorie (produit physique)', '编辑类（实物产品）', 'Editar categoría (producto físico)'),
(253, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'সত্যিই এই মুছে ফেলতে চান?', 'حقا تريد حذف هذا؟', 'voulez vraiment supprimer ce?', '真的要删除吗？', '¿Realmente quieres eliminar esto?'),
(254, 'category_name', 'Category Name', 'বিভাগ নাম', 'اسم الفئة', 'Nom de catégorie', '类别名称', 'nombre de la categoría'),
(255, 'category_banner', 'Category Banner', 'বিভাগ ব্যানার', 'فئة راية', 'catégorie bannière', '类别旗帜', 'Banner de categoría'),
(256, 'select_category_banner', 'Select Category Banner', 'বিভাগ নির্বাচন করুন ব্যানার', 'حدد فئة راية', 'sélectionnez la catégorie bannière', '选择类别旗帜', 'Seleccionar categoría del banner'),
(257, 'manage_brands_(_physical_product_)', 'Manage Brands ( Physical Product )', 'ব্রান্ডের (শারীরিক পণ্য) পরিচালনা', 'إدارة العلامات التجارية (منتج مادي)', 'gérer les marques (produit physique)', '管理品牌（产品实物）', 'Gestionar marcas (producto físico)'),
(258, 'add_brand_(_physical_product_)', 'Add Brand ( Physical Product )', 'ব্র্যান্ড (শারীরিক পণ্য) যোগ', 'إضافة العلامة التجارية (منتج مادي)', 'ajouter la marque (produit physique)', '加上品牌（产品实物）', 'Agregar marca (producto físico)'),
(259, 'create_brand', 'Create Brand', 'ব্র্যান্ড তৈরি', 'إنشاء العلامة التجارية', 'créer la marque', '创造品牌', 'Crear marca'),
(260, 'edit_brand_(_physical_product_)', 'Edit Brand ( Physical Product )', 'সম্পাদনা ব্র্যান্ড (শারীরিক পণ্য)', 'تحرير العلامة التجارية (منتج مادي)', 'modifier la marque (produit physique)', '编辑品牌（产品实物）', 'Editar marca (producto físico)'),
(261, 'brand', 'Brand', 'তরবার', 'علامة تجارية', 'marque', '牌', 'Marca'),
(262, 'brand_name', 'Brand Name', 'পরিচিতিমুলক নাম', 'اسم العلامة التجارية', 'marque', '品牌', 'Nombre de la marca'),
(263, 'brand_logo', 'Brand Logo', 'ব্র্যান্ড লোগো', 'شعار العلامة التجارية', 'logo de la marque', '品牌标志', 'Logotipo'),
(264, 'select_brand_logo', 'Select Brand Logo', 'নির্বাচন ব্র্যান্ড লোগো', 'حدد شعار العلامة التجارية', 'sélectionnez la marque logo', '选择品牌标志', 'Selecciona el logo de la marca'),
(265, 'manage_sub_categories_(_physical_product_)', 'Manage Sub Categories ( Physical Product )', 'সাব আরও পরিচালনা (শারীরিক পণ্য)', 'إدارة الفئات الفرعية (منتج مادي)', 'gérer les sous-catégories (produit physique)', '管理子类别（产品实物）', 'Administrar subcategorías (producto físico)'),
(266, 'add_sub-category_(_physical_product_)', 'Add Sub-category ( Physical Product )', 'উপ-বিভাগ (শারীরিক পণ্য) যোগ', 'إضافة فئة فرعية (منتج مادي)', 'ajouter des sous-catégories (produit physique)', '添加子类（实物产品）', 'Agregar subcategoría (producto físico)'),
(267, 'create_sub_category', 'Create Sub Category', 'সাব বিভাগ তৈরি', 'إنشاء فئة فرعية', 'créer la sous catégorie', '创建子类别', 'Crear subcategoría'),
(268, 'edit_sub-category_(_physical_product_)', 'Edit Sub-category ( Physical Product )', 'সম্পাদনা উপ-বিভাগ (শারীরিক পণ্য)', 'تعديل فئة فرعية (منتج مادي)', 'modifier la sous-catégorie (produit physique)', '编辑子类（实物产品）', 'Editar subcategoría (producto físico)'),
(269, 'sub_category', 'Sub Category', 'সাব বিভাগ', 'الفئة الفرعية', 'sous catégorie', '子分类', 'Subcategoría'),
(270, 'sub-category_name', 'Sub-category Name', 'উপ-বিভাগ নাম', 'اسم الفئة الفرعية', 'nom de sous-catégorie', '子类别名称', 'Nombre de subcategoría'),
(271, 'sub-category_banner', 'Sub-category Banner', 'উপ-বিভাগ ব্যানার', 'الفئة الفرعية راية', 'sous-catégorie bannière', '子类的旗帜', 'Subcategoría Banner'),
(272, 'select_sub-category_banner', 'Select Sub-category Banner', 'নির্বাচন উপ-বিভাগ ব্যানার', 'حدد فئة فرعية لافتة', 'sélectionner la sous-catégorie bannière', '选择子类的旗帜', 'Seleccionar subcategoría Banner'),
(273, 'manage_product_stock', 'Manage Product Stock', 'পণ্য স্টক পরিচালনা', 'إدارة المخزون المنتج', 'gérer des stocks de produits', '管理产品库存', 'Administrar stock de productos'),
(274, 'destroy_product_entry', 'Destroy Product Entry', 'পণ্য এন্ট্রি ধ্বংস', 'تدمير دخول المنتج', 'détruire l\'entrée du produit', '销毁产品入境', 'Destruir entrada de producto'),
(275, 'add_stock_entry_taken!', 'Add Stock Entry Taken!', 'যোগ স্টক এন্ট্রি নেয়া!', 'إضافة إدخال الأوراق المالية اتخذت!', 'ajouter l\'entrée en stock pris!', '采取增加股票入门！', 'Añadir entrada de stock tomada!'),
(276, 'add_product_stock', 'Add Product Stock', 'পণ্য স্টক যোগ', 'إضافة الأسهم المنتج', 'ajouter des stocks de produits', '增加产品库存', 'Agregar stock de producto'),
(277, 'destroy_entry_taken!', 'Destroy Entry Taken!', 'ধ্বংস এন্ট্রি নেয়া!', 'تدمير دخول اتخذت!', 'détruire l\'entrée prise!', '摧毁采取入口！', '¡Destruye la entrada tomada! '),
(278, 'create_stock', 'Create Stock', 'স্টক তৈরি', 'إنشاء الاسهم', 'créer un stock', '创建库存', 'Crear stock'),
(279, 'ID', 'ID', 'আইডি', 'هوية شخصية', 'ID', 'ID', NULL),
(280, 'product_title', 'Product Title', 'পণ্য শিরোনাম', 'عنوان المنتج', 'titre du produit', '产品称号', 'Titulo del producto'),
(281, 'entry_type', 'Entry Type', 'এন্ট্রি টাইপ', 'نوع دخول', 'Type d\'entrée', '条目类型', ' Tipo de entrada'),
(282, 'quantity', 'Quantity', 'পরিমাণ', 'كمية', 'Quantité', '数量', 'Cantidad'),
(283, 'note', 'Note', 'বিঃদ্রঃ', 'ملاحظة', 'Remarque', '注意', 'Nota'),
(284, 'reduced_quantity_will_be_added.', 'Reduced Quantity Will Be Added.', 'কমে পরিমাণ যোগ করা হবে.', 'وستضاف خفض كمية.', 'quantité réduite sera ajoutée.', '减少量将增加。', 'Se agregará una cantidad reducida.'),
(285, 'added_quantity_will_be_reduced.', 'Added Quantity Will Be Reduced.', 'যোগ পরিমাণ হ্রাস করা হবে.', 'وسيتم خفض الكمية المضافة.', 'quantité ajoutée sera réduite.', '添加量将减少。', 'La cantidad agregada se reducirá.'),
(286, 'rate', 'Rate', 'হার', 'معدل', 'taux', '率', 'precio'),
(287, 'total', 'Total', 'মোট', 'مجموع', 'total', '总', 'Total'),
(288, 'reason_note', 'Reason Note', 'কারণ নোট', 'السبب مذكرة', 'raison Note', '原因笔记', 'Nota de razón'),
(289, 'monetary_loss', 'Monetary Loss', 'আর্থিক ক্ষতি', 'فقدان النقدية', 'perte monétaire', '金钱上的损失', 'Pérdida monetaria'),
(290, 'manage_categories_(_digital_product_)', 'Manage Categories ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) পরিচালনা', 'إدارة الفئات (المنتجات الرقمية)', 'gérer des catégories (produits numériques)', '管理类别（数码产品）', 'Administrar categorías (producto digital)'),
(291, 'add_category_(_digital_product_)', 'Add Category ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) যোগ', 'إضافة فئة (المنتج الرقمي)', 'ajouter la catégorie (produit numérique)', '添加类别（数码产品）', 'Agregar categoría (producto digital)'),
(292, 'edit_category_(_digital_product_)', 'Edit Category ( Digital Product )', 'সম্পাদনা বিভাগ (ডিজিটাল পণ্য)', 'تحرير فئة (المنتج الرقمي)', 'modifier catégorie (produits numériques)', '编辑类别（数码产品）', 'Editar categoría (producto digital)'),
(293, 'manage_sub_categories_(_digital_product_)', 'Manage Sub Categories ( Digital Product )', 'সাব আরও পরিচালনা (ডিজিটাল পণ্য)', 'إدارة الفئات الفرعية (المنتجات الرقمية)', 'gérer les sous-catégories (produits numériques)', '管理子类别（数码产品）', 'Administrar subcategorías (producto digital)'),
(294, 'add_sub-category_(_digital_product_)', 'Add Sub-category ( Digital Product )', 'উপ-বিভাগ (ডিজিটাল পণ্য) যোগ', 'إضافة فئة فرعية (المنتج الرقمي)', 'ajouter des sous-catégories (produits numériques)', '添加子类（数码产品）', 'Agregar subcategoría (producto digital)'),
(295, 'edit_sub-category_(_digital_product_)', 'Edit Sub-category ( Digital Product )', 'সম্পাদনা উপ-বিভাগ (ডিজিটাল পণ্য)', 'تعديل فئة فرعية (المنتج الرقمي)', 'modifier la sous-catégorie (produit numérique)', '编辑子类（数码产品）', 'Editar subcategoría (producto digital)'),
(296, 'manage_product_(_digital_)', 'Manage Product ( Digital )', 'পণ্য (ডিজিটাল) পরিচালনা', 'إدارة المنتجات (رقمي)', 'gérer le produit (numérique)', '管理产品（数码）', 'Gestionar producto (digital)'),
(297, 'add_product', 'Add Product', 'পণ্য যোগ করুন', 'إضافة منتج', 'ajouter le produit', '增加产品', 'Añadir Producto'),
(298, 'create_product', 'Create Product', 'পণ্য তৈরি', 'إنشاء المنتج', 'créer un produit', '创建产品', 'Crear producto'),
(299, 'back_to_product_list', 'Back To Product List', 'ফিরে পণ্যের তালিকাতে', 'العودة إلى قائمة المنتجات', 'Retour à la liste des produits', '回到产品列表', 'Volver a la lista de productos'),
(300, 'download_failed!', 'Download Failed!', 'ডাউনলোড ব্যর্থ হয়েছে!', 'التحميل فشل!', 'Échec du téléchargement!', '下载失败！', 'Descarga fallida!'),
(301, 'image', 'Image', 'ভাবমূর্তি', 'صورة', 'image', '图片', 'Imagen'),
(302, 'title', 'Title', 'খেতাব', 'عنوان', 'Titre', '标题', 'Título'),
(303, 'view_product', 'View Product', 'দৃশ্য পণ্য', 'المنتج رأي', 'produit Aperçu', '查看产品', 'Ver el producto'),
(304, 'successfully_viewed!', 'Successfully Viewed!', 'সফলভাবে দেখা!', 'ينظر بنجاح!', 'vu avec succès!', '成功查看！', 'Visto con éxito!'),
(305, 'view', 'View', 'দৃশ্য', 'رأي', 'vue', '视图', 'Ver'),
(306, 'view_discount', 'View Discount', 'দৃশ্য ছাড়', 'خصم عرض', 'vue rabais', '查看优惠', 'Ver descuento'),
(307, 'viewing_discount!', 'Viewing Discount!', 'ছাড় দেখছেন!', 'عرض خصم!', 'visualisation de réduction!', '查看优惠！', 'Viendo descuento!'),
(308, 'download', 'Download', 'ডাউনলোড', 'تحميل', 'Télécharger', '下载', 'Descargar'),
(309, 'edit_product_(_digital_product_)', 'Edit Product ( Digital Product )', 'সম্পাদনা পণ্য (ডিজিটাল পণ্য)', 'تحرير المنتج (المنتجات الرقمية)', 'produit d\'édition (produits numériques)', '编辑产品（数码产品）', 'Editar producto (producto digital)'),
(310, 'manage_sale', 'Manage Sale', 'বিক্রয় ও পরিচালনা', 'إدارة بيع', 'gérer la vente', '销售管理', 'Gestionar venta'),
(311, 'sale_code', 'Sale Code', 'বিক্রয় কোড', 'كود بيع', 'Code de vente', '销售代码', 'Código de venta'),
(312, 'buyer', 'Buyer', 'ক্রেতা', 'مشتر', 'acheteur', '买方', 'Comprador'),
(313, 'date', 'Date', 'তারিখ', 'تاريخ', 'date', '日期', 'Fecha'),
(314, 'delivery_status', 'Delivery Status', 'প্রসবের অবস্থা', 'حالة التسليم', 'statut de livraison', '邮寄状态', 'Estado de entrega'),
(315, 'payment_status', 'Payment Status', 'লেনদেনের অবস্থা', 'حالة السداد', 'statut de paiement', '支付状态', 'Estado de pago'),
(316, 'admin', 'Admin', 'অ্যাডমিন', 'مشرف', 'administrateur', '管理员', 'Administración'),
(317, 'full_invoice', 'Full Invoice', 'পূর্ণ চালান', 'فاتورة كاملة', 'pleine facture', '全额发票', 'Factura completa'),
(318, 'delivery_payment', 'Delivery Payment', 'ডেলিভারি পেমেন্ট', 'دفع التسليم', 'paiement à la livraison', '货到付款', 'Estado de entrega'),
(319, 'sales', 'Sales', 'বিক্রয়', 'مبيعات', 'Ventes', '销售', 'Ventas'),
(320, 'manage_coupons', 'Manage Coupons', 'কুপন পরিচালনা', 'إدارة القسائم', 'gérer des coupons', '管理优惠券', 'Administrar cupones'),
(321, 'add_coupon', 'Add Coupon', 'কুপন যোগ', 'إضافة قسيمة', 'ajouter coupon', '添加优惠券', 'Añadir cupón'),
(322, 'create_coupon', 'Create Coupon', 'কুপন তৈরি', 'إنشاء قسيمة', 'créer coupon', '创建优惠券', 'Crear cupón'),
(323, 'code', 'Code', 'কোড', 'رمز', 'code', '码', 'Código'),
(324, 'added_by', 'Added By', 'দ্বারা যোগ করা', 'أضيفت من قبل', 'ajouté par', '通过添加', 'Añadido por'),
(325, 'status', 'Status', 'অবস্থা', 'الحالة', 'statut', '状态', 'Estado'),
(326, 'coupon', 'Coupon', 'কুপন', 'كوبون', 'coupon', '优惠券', 'Cupón'),
(327, 'manage_ticket', 'Manage Ticket', 'টিকেট পরিচালনা', 'إدارة تذكرة', 'gérer billet', '管理票', 'Gestionar mensaje'),
(328, 'back_to_ticket_list', 'Back To Ticket List', 'ফিরে টিকেট লিস্টে', 'العودة إلى قائمة تذكرة', 'Retour à la liste de billets', '回票名单', 'Volver a la lista de entradas'),
(329, 'from', 'From', 'থেকে', 'من عند', 'de', '从', 'De'),
(330, 'subject', 'Subject', 'বিষয়', 'موضوع', 'assujettir', '学科', 'Asunto'),
(331, 'view_profile', 'View Profile', 'প্রোফাইল দেখুন', 'عرض الصفحة الشخصية', 'Voir le profil', '查看资料', 'Ver perfil'),
(332, 'new', 'New', 'নতুন', 'جديد', 'Nouveau', '新', 'Nuevo'),
(333, 'view_contact_ticket', 'View Contact Ticket', 'দৃশ্য যোগাযোগের টিকিট', 'تذكرة رأي اتصال', 'billet vue de contact', '查看联系人票', 'Ver mensaje de contacto'),
(334, 'view_ticket', 'View Ticket', 'দৃশ্য টিকিট', 'عرض تذكرة', 'vue billet', '查看门票', 'Ver mensaje'),
(335, 'product_sale_comparison', 'Product Sale Comparison', 'পণ্য বিক্রয় তুলনা', 'مقارنة بيع المنتج', 'la comparaison des produits de la vente', '产品销售比较', 'Comparación de venta de productos'),
(336, 'product_sale_comparison_report', 'Product Sale Comparison Report', 'পণ্য বিক্রয় তুলনা প্রতিবেদন', 'المنتج بيع التقرير مقارنة', 'vente de produits rapport de comparaison', '产品销售比较报告', 'Informe de comparación de venta de productos'),
(337, 'manage_stock_report', 'Manage Stock Report', 'স্টক রিপোর্ট পরিচালনা', 'تقرير إدارة المخزون', 'gérer rapport sur les stocks', '管理库存报告', 'Gestionar informe de stock'),
(338, 'get_stock_report', 'Get Stock Report', 'স্টক রিপোর্ট পেতে', 'الحصول على تقرير المخزون', 'obtenir rapport sur les stocks', '获得股票报告', 'Obtener informe de stock'),
(339, 'product_wishes_report', 'Product Wishes Report', 'পণ্য রিপোর্ট শুভেচ্ছা', 'يرغب المنتج تقرير', 'produit souhaite rapport', '产品希望报告', 'Informe de deseos del producto'),
(340, 'manage_vendors', 'Manage Vendors', 'বিক্রেতারা পরিচালনা', 'إدارة البائعين', 'gérer les fournisseurs', '供应商管理', 'Administrar vendedores'),
(341, 'display_name', 'Display Name', 'প্রদর্শন নাম', 'اسم العرض', 'Afficher un nom', '显示名称', 'Nombre para mostrar'),
(342, 'vendor_approval', 'Vendor Approval', 'বিক্রেতার অনুমোদন', 'موافقة البائع', 'l\'approbation des fournisseurs', '供应商认可', 'Aprobación del vendedor'),
(343, 'approval', 'Approval', 'অনুমোদন', 'موافقة', 'approbation', '赞同', 'Aprobación'),
(344, 'pay_vendor', 'Pay Vendor', 'বেতন বিক্রেতা', 'بائع الأجر', 'salaire fournisseur', '付供应商', 'Proveedor de pago'),
(345, 'pay', 'Pay', 'বেতন', 'دفع', 'Payer', '工资', 'Pagar'),
(346, 'e-mail', 'E-mail', 'ই-মেইল', 'البريد الإلكتروني', 'email', '电子邮件', NULL),
(347, 'manage_vendor_payments', 'Manage Vendor Payments', 'বিক্রেতা পেমেন্ট পরিচালনা', 'إدارة مدفوعات البائعين', 'gérer les paiements des fournisseurs', '管理供应商付款', 'Administrar pagos de proveedores'),
(348, 'amount', 'Amount', 'পরিমাণ', 'كمية', 'montant', '量', 'Cantidad'),
(349, 'upgraded_vendor_package', 'Upgraded Vendor Package', 'আপগ্রেড বিক্রেতা প্যাকেজ', 'حزمة بائع ترقية', 'paquet fournisseur amélioré', '升级包的供应商', 'Paquete de proveedor actualizado'),
(350, 'view_payment_details', 'View Payment Details', 'দৃশ্য পেমেন্ট বিবরণ', 'عرض تفاصيل الدفع', 'afficher les détails de paiement', '查看付款细节', 'Ver detalles de pago'),
(351, 'check_details', 'Check Details', 'বিস্তারিত পরীক্ষা', 'التحقق من التفاصيل', 'vérifier les détails', '查看详细信息', 'Verificar detalles'),
(352, 'membership_payments', 'Membership Payments', 'সদস্যপদ পেমেন্ট', 'مدفوعات عضوية', 'paiements d\'adhésion', '会员费', 'Pagos de membresía'),
(353, 'upgraded_membership', 'Upgraded Membership', 'আপগ্রেড সদস্য', 'عضوية ترقية', 'adhésion améliorée', '升级会员', 'Membresía mejorada'),
(354, 'manage_vendor_package', 'Manage Vendor Package', 'বিক্রেতা প্যাকেজ পরিচালনা', 'إدارة حزمة بائع', 'gérer ensemble des fournisseurs', '管理供应商封装', 'Gestionar paquete de proveedor'),
(355, 'add_vendor_package', 'Add Vendor Package', 'বিক্রেতা প্যাকেজ যোগ', 'إضافة حزمة بائع', 'ajouter package de fournisseur', '加上厂商包', 'Agregar paquete de proveedor'),
(356, 'create_vendor_package', 'Create Vendor Package', 'বিক্রেতা প্যাকেজ তৈরি', 'إنشاء حزمة بائع', 'créer un paquet de fournisseur', '创建包的供应商', 'Crear paquete de proveedor'),
(357, 'seal', 'Seal', 'সীল', 'ختم', 'joint', '密封', 'Cerrar'),
(358, 'price', 'Price', 'মূল্য', 'السعر', 'prix', '价钱', 'Precio'),
(359, 'for', 'For', 'জন্য', 'إلى', 'pour', '对于', 'Para'),
(360, 'lifetime', 'Lifetime', 'জীবনকাল', 'أوقات الحياة', 'durée de vie', '一生', NULL),
(361, 'edit_vendor_package', 'Edit Vendor Package', 'সম্পাদনা বিক্রেতা প্যাকেজ', 'تحرير حزمة بائع', 'package de fournisseur d\'édition', '编辑供应商封装', 'Editar paquete de proveedor'),
(362, 'days', 'Days', 'দিন', 'أيام', 'journées', '天', 'Días'),
(363, 'membership', 'Membership', 'সদস্যতা', 'عضوية', 'adhésion', '籍', 'Afiliación'),
(364, 'manage_product_(_physical_)', 'Manage Product ( Physical )', 'পণ্য পরিচালনা (শারীরিক)', 'إدارة المنتجات (المادية)', 'gérer le produit (physique)', '管理产品（物理）', 'Gestionar producto (físico) '),
(365, 'current_quantity', 'Current Quantity', 'বর্তমান পরিমাণ', 'الكمية الحالية', 'quantité de courant', '当前量', 'Cantidad Actual'),
(366, 'add_product_quantity', 'Add Product Quantity', 'পণ্যের পরিমাণ যোগ', 'إضافة كمية المنتج', 'ajouter la quantité de produit', '增加产品数量', 'Agregar cantidad de producto');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`, `lang_7`) VALUES
(367, 'quantity_added!', 'Quantity Added!', 'পরিমাণ যোগ করা হয়েছে!', 'وأضافت الكمية!', 'quantité ajoutée!', '加入量！', 'Cantidad agregada!'),
(368, 'stock', 'Stock', 'স্টক', 'مخزون', 'Stock', '股票', 'Stock'),
(369, 'reduce_product_quantity', 'Reduce Product Quantity', 'পণ্যের পরিমাণ কমাতে', 'تقليل كمية المنتج', 'réduire la quantité de produit', '减少产品数量', 'Reducir cantidad de producto'),
(370, 'quantity_reduced!', 'Quantity Reduced!', 'পরিমাণ কমে!', 'كمية خفضت!', 'quantité réduite!', '数量减少！', 'Cantidad reducida!'),
(371, 'destroy', 'Destroy', 'ধ্বংস', 'هدم', 'détruire', '破坏', 'Destruir'),
(372, 'edit_product', 'Edit Product', 'সম্পাদনা পণ্য', 'تحرير المنتج', 'produit d\'édition', '编辑产品', 'Editar producto'),
(373, 'product_details', 'Product Details', 'পণ্যের বিবরণ', 'تفاصيل المنتج', 'détails du produit', '产品详情', 'Detalles de producto'),
(374, 'business_details', 'Business Details', 'ব্যবসার বিবরণ', 'تفاصيل العمل', 'détails d\'affaires', '商家详情', 'Detalles comerciales'),
(375, 'customer_choice_options', 'Customer Choice Options', 'গ্রাহকের পছন্দ অপশন', 'خيارات اختيار العملاء', 'options de choix du client', '客户选择的选项', 'Opciones de elección del cliente'),
(376, 'unit', 'Unit', 'একক', 'وحدة', 'unité', '单元', 'Unidad'),
(377, 'unit_(e.g._kg,_pc_etc.)', 'Unit (e.g. Kg, Pc Etc.)', 'ইউনিট (যেমন কেজি, পিসি ইত্যাদি)', 'وحدة (مثلا كجم، وأجهزة الكمبيوتر وغيرها)', 'unité (par exemple kg, pc, etc.)', '单位（例如公斤，PC等）', 'Unidad (p. Ej., Kg, PC, etc.)'),
(378, 'tags', 'Tags', 'ট্যাগ', 'علامات', 'Mots clés', '标签', NULL),
(379, 'images', 'Images', 'চিত্র', 'صور', 'images', '图片', 'Imagenes'),
(380, 'choose_file', 'Choose File', 'ফাইল পছন্দ কর', 'اختر ملف', 'choisir le fichier', '选择文件', 'Elija el archivo'),
(381, 'description', 'Description', 'বিবরণ', 'وصف', 'la description', '描述', 'Descripción'),
(382, 'if_you_need_more_field_for_your_product_,_please_click_here_for_more...', 'If You Need More Field For Your Product , Please Click Here For More...', 'যদি আপনি আপনার পণ্যের জন্য আরো ক্ষেত্রের প্রয়োজন, আরো জন্য এখানে ক্লিক করুন ...', 'اذا كنت بحاجة الى مزيد من المجال للمنتج الخاص بك، الرجاء الضغط هنا لمزيد من ...', 'si vous avez besoin de plus le terrain pour votre produit, s\'il vous plaît cliquez ici pour plus ...', '如果你需要更多的领域为您的产品，请点击这里查看更多...', 'Si necesita más campo para su producto, haga clic aquí para más ...'),
(383, 'add_more_fields', 'Add More Fields', 'আরো ক্ষেত্রের যোগ', 'إضافة المزيد من الحقول', 'ajouter des champs', '添加更多的字段', 'Agregar más campos'),
(384, 'sale_price', 'Sale Price', 'বিক্রয় মূল্য', 'سعر البيع', 'prix de vente', '销售价格', 'Precio de venta '),
(385, 'purchase_price', 'Purchase Price', 'ক্রয় মূল্য', 'سعر الشراء', 'prix d\'achat', '购买价格', 'Precio de compra'),
(386, 'shipping_cost', 'Shipping Cost', 'প্রদান খরচ', 'تكلفة الشحن', 'frais de port', '运输费', 'Costo de envío'),
(387, 'product_tax', 'Product Tax', 'পণ্যের কর', 'الضرائب المنتج', 'taxe sur les produits', '产品税', 'Impuesto de producto'),
(388, 'product_discount', 'Product Discount', 'পণ্য ছাড়', 'خصم المنتج', 'une réduction du produit', '产品折扣', 'Descuento de producto'),
(389, 'color', 'Color', 'রঙ', 'اللون', 'Couleur', '颜色', 'Color'),
(390, 'add_more_colors', 'Add More Colors', 'আরো রং যোগ', 'إضافة المزيد من الألوان', 'ajouter plus de couleurs', '添加更多的色彩', 'Añadir más colores'),
(391, 'if_you_need_more_choice_options_for_customers_of_this_product_,please_click_here.', 'If You Need More Choice Options For Customers Of This Product ,please Click Here.', 'যদি আপনি এই পণ্যের গ্রাহকদের জন্য আরো পছন্দ অপশন প্রয়োজন, এখানে ক্লিক করুন.', 'اذا كنت بحاجة الى مزيد من الخيارات المفضلة للعملاء من هذا المنتج، يرجى الضغط هنا.', 'si vous avez besoin plus d\'options de choix pour les clients de ce produit, s\'il vous plaît cliquez ici.', '如果你需要更多的选择选项本产品的客户，请点击这里。', 'Si necesita más opciones de elección para los clientes de este producto, haga clic aquí.'),
(392, 'add_customer_input_options', 'Add Customer Input Options', 'গ্রাহকের ইনপুট অপশন যোগ', 'إضافة خيارات مدخلات العملاء', 'ajouter des options d\'entrée du client', '添加客户输入选项', 'Agregar opciones de entrada del cliente'),
(393, 'next', 'Next', 'পরবর্তী', 'التالى', 'prochain', '下一个', 'Siguiente'),
(394, 'previous', 'Previous', 'আগে', 'سابق', 'précédent', '以前', 'Anterior'),
(395, 'reset', 'Reset', 'রিসেট', 'إعادة تعيين', 'réinitialiser', '重启', 'Reiniciar'),
(396, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', 'পণ্য আপলোড করা হয়েছে!', 'وقد تم تحميل المنتج!', 'produit a été téléchargé!', '产品已上传！', '¡El producto ha sido cargado!'),
(397, 'upload', 'Upload', 'আপলোড', 'تحميل', 'télécharger', '上载', 'Subir'),
(398, 'field_name', 'Field Name', 'ক্ষেত্র নাম', 'اسم الحقل', 'nom de domaine', '字段名', 'Nombre de un campo'),
(399, 'customer_input_title', 'Customer Input Title', 'গ্রাহকের ইনপুট শিরোনাম', 'عنوان مدخلات العملاء', 'Titre de l\'entrée à la clientèle', '客户输入标题', 'Título de entrada del cliente'),
(400, 'add_options_for_choice', 'Add Options For Choice', 'পছন্দ জন্য অপশন যোগ', 'إضافة خيارات للاختيار', 'ajouter des options pour le choix', '增加对选择题的选项', 'Agregar opciones para elegir'),
(401, 'option_name', 'Option Name', 'বিকল্প নাম', 'اسم الخيار', 'nom de l\'option', '选项名称', 'Nombre de la opción'),
(402, 'details_of', 'Details Of', 'বিস্তারিত', 'تفاصيل', 'les détails de', '细节', 'Detalles de'),
(403, 'tax', 'Tax', 'কর', 'ضريبة', 'impôt', '税', 'Impuesto'),
(404, 'tag', 'Tag', 'ট্যাগ', 'بطاقة', 'Étiquette', '标签', 'Etiqueta'),
(405, 'colors', 'Colors', 'রং', 'الألوان', 'les couleurs', '颜色', 'Colores'),
(406, 'product_color_options', 'Product Color Options', 'পণ্য রঙ অপশন', 'خيارات لون المنتج', 'options de couleur du produit', '产品颜色选项', 'Opciones de color del producto'),
(407, 'add_colors', 'Add Colors', 'রং যোগ', 'إضافة الألوان', 'ajouter des couleurs', '添加颜色', 'Agregar colores'),
(408, 'requirements', 'Requirements', 'প্রয়োজনীয়তা', 'المتطلبات', 'exigences', '要求', 'Requisitos'),
(409, 'add_logo', 'Add Logo', 'লোগো যোগ', 'إضافة شعار', 'ajouter logo', '新增标志', 'Agregar logotipo'),
(410, 'choose_logo', 'Choose Logo', 'লোগো নির্বাচন', 'اختيار شعار', 'choisissez logo', '选择标志', 'Elegir logo'),
(411, 'add_images', 'Add Images', 'ইমেজ যোগ', 'إضافة الصور', 'ajouter des images', '添加图片', 'Añadir imágenes '),
(412, 'if_you_need_to_add_video_for_your_product_,_please_click_here...', 'If You Need To Add Video For Your Product , Please Click Here...', 'যদি আপনি আপনার পণ্যের জন্য ভিডিও যোগ করার জন্য প্রয়োজন, এখানে ক্লিক করুন ...', 'إذا كنت بحاجة إلى إضافة الفيديو للمنتج الخاص بك، الرجاء الضغط هنا ...', 'si vous avez besoin d\'ajouter de la vidéo pour votre produit, s\'il vous plaît cliquez ici ...', '如果您需要添加视频为您的产品，请点击这里...', 'Si necesita agregar video para su producto, haga clic aquí ... '),
(413, 'add_video', 'Add Video', 'ভিডিও যোগ', 'إضافة فيديو', 'ajouter de la vidéo', '添加视频', 'Añadir video'),
(414, 'upload_video', 'Upload Video', 'আপলোড ভিডিও', 'رفع فيديو', 'Télécharger une video', '上传视频', 'Subir video'),
(415, 'choose_video_file', 'Choose Video File', 'ভিডিও ফাইল প্লে', 'اختيار ملف الفيديو', 'choisir le fichier vidéo', '选择视频文件', 'Elegir archivo de video'),
(416, 'choose_sharing_site', 'Choose Sharing Site', 'শেয়ারিং সাইট চয়ন', 'اختيار موقع مشاركة', 'choisir le site de partage', '选择分享网站', 'Elija compartir sitio'),
(417, 'choose_one', 'Choose One', 'একটা পছন্দ কর', 'اختيار واحد', 'choisissez-en un', '选一个', 'Elige uno'),
(418, 'youtube', 'Youtube', 'ইউটিউব', 'موقع YouTube', 'Youtube', 'YouTube的', 'Youtube'),
(419, 'dailymotion', 'Dailymotion', 'Dailymotion', 'ديلي موشن', 'dailymotion', '位DailyMotion', 'Dailymotion'),
(420, 'vimeo', 'Vimeo', 'Vimeo', 'فيميو', 'vimeo', 'VIMEO', 'Vimeo'),
(421, 'link', 'Link', 'লিংক', 'صلة', 'lien', '链接', 'Enlace'),
(422, 'product_file', 'Product File', 'পণ্য ফাইল', 'ملف المنتج', 'fiche produit', '产品文件', 'Archivo de producto'),
(423, 'compressed', 'Compressed', 'সঙ্কুচিত', 'مضغوط', 'comprimé', '压缩', 'Comprimido'),
(424, 'maximum_size', 'Maximum Size', 'সর্বাধিক আকার', 'أكبر مقاس', 'taille maximum', '最大尺寸', 'Talla máxima'),
(425, 'if_you_need_to_add_requirements_of_this_product_for_customers_,please_click_here.', 'If You Need To Add Requirements Of This Product For Customers ,please Click Here.', 'যদি আপনি গ্রাহকদের জন্য এই পণ্যের প্রয়োজনীয়তা যোগ করতে হবে, এখানে ক্লিক করুন.', 'إذا كنت بحاجة إلى إضافة متطلبات هذا المنتج للعملاء، الرجاء الضغط هنا.', 'si vous avez besoin d\'ajouter des exigences de ce produit pour les clients, s\'il vous plaît cliquez ici.', '如果需要添加本品的要求，为客户，请点击这里。', 'Si necesita agregar requisitos de este producto para clientes, haga clic aquí.'),
(426, 'add_product_requirements', 'Add Product Requirements', 'পণ্য প্রয়োজনীয়তা যোগ', 'إضافة متطلبات المنتج', 'ajouter des exigences de produits', '增加产品的要求', 'Agregar requisitos del producto'),
(427, 'remove', 'Remove', 'অপসারণ', 'إزالة', 'retirer', '去掉', 'Eliminar'),
(428, 'video_options', 'Video Options', 'ভিডিও অপশন', 'خيارات الفيديو', 'options vidéo', '视频选项', 'Opciones de video'),
(429, 'choose_an_option', 'Choose An Option', 'একটি বিকল্প নির্বাচন করুন', 'إختر خيار', 'choisis une option', '选择一个选项', 'Elija una opción'),
(430, 'share_link', 'Share Link', 'শেয়ার লিংক', 'رابط المشاركة', 'lien de partage', '分享链接', 'Compartir enlace'),
(431, 'i_want_to_add_video_later', 'I Want To Add Video Later', 'আমি পরে ভিডিও যোগ করতে চান', 'أريد أن أضيف فيديو في وقت لاحق', 'je veux ajouter de la vidéo plus tard', '我想在以后添加视频', 'Quiero agregar video más tarde'),
(432, 'update_product_file', 'Update Product File', 'আপডেটের পণ্য ফাইল', 'ملف تحديث المنتج', 'fiche du produit de mise à jour', '更新产品文件', 'Actualizar archivo de producto'),
(433, 'i_want_to_change_video_later', 'I Want To Change Video Later', 'আমি পরে ভিডিও পরিবর্তন করতে চান', 'أريد أن تغيير الفيديو في وقت لاحق', 'je veux changer vidéo plus tard', '我想以后更改视频', 'Quiero cambiar el video más tarde'),
(434, 'i_want_to_remove_existing_video', 'I Want To Remove Existing Video', 'আমি বিদ্যমান ভিডিওটি সরিয়ে ফেলতে চান', 'أريد أن إزالة الفيديو موجود', 'je veux supprimer la vidéo existante', '我想删除现有的视频', 'Quiero eliminar el video existente'),
(435, 'invoice_for', 'Invoice For', 'জন্য চালান', 'فاتورة', 'facture de', '发票', 'Factura para'),
(436, 'invoice_no:', 'Invoice No:', 'চালান নং:', 'رقم الفاتورة:', 'facturera pas:', '发票号码：', 'N° Factura:'),
(437, 'date_:', 'Date :', 'তারিখ:', 'تاريخ :', 'date :', '日期：', 'Fecha :'),
(438, 'client_information', 'Client Information', 'ক্লায়েন্ট তথ্য', 'معلومات العميل', 'informations client', '客户信息', 'Información del cliente'),
(439, 'first_name', 'First Name', 'প্রথম নাম', 'الاسم الاول', 'Prénom', '名字', 'Nombre de pila'),
(440, 'last_name', 'Last Name', 'নামের শেষাংশ', 'الكنية', 'nom de famille', '姓', 'Apellido'),
(441, 'payment_detail', 'Payment Detail', 'পেমেন্ট বিস্তারিত', 'تفاصيل الدفع', 'détail du paiement', '付款明细', 'Detalles de pago'),
(442, 'due', 'Due', 'কারণে', 'بسبب', 'dû', '应有', 'Debido'),
(443, 'payment_date', 'Payment Date', 'টাকা প্রদানের তারিখ', 'تاريخ الدفع', 'date de paiement', '付款日期', 'Fecha de pago'),
(444, 'payment_invoice', 'Payment Invoice', 'পেমেন্ট চালান', 'فاتورة الدفع', 'facture de paiement', '付款发票', 'Factura de pago'),
(445, 'item', 'Item', 'পদ', 'بند', 'article', '项目', 'Articulo'),
(446, 'unit_cost', 'Unit Cost', 'ইউনিট খরচ', 'تكلفة الوحدة', 'coût unitaire', '单位成本', 'Costo unitario'),
(447, 'sub_total_amount', 'Sub Total Amount', 'সাব মোট পরিমাণ', 'المبلغ الإجمالي الفرعي', 'montant total sous', '子总额', 'Sub importe total'),
(448, 'shipping', 'Shipping', 'পাঠানো', 'الشحن', 'livraison', '运输', 'Envío'),
(449, 'grand_total', 'Grand Total', 'সর্বমোট', 'المبلغ الإجمالي', 'somme finale', '累计', 'Gran total'),
(450, 'address_line_1', 'Address Line 1', 'ঠিকানা লাইন 1', 'العنوان الأول', 'Adresse 1', '地址栏1', 'Dirección Línea 1'),
(451, 'address_line_2', 'Address Line 2', 'ঠিকানা লাইন 2', 'سطر العنوان 2', 'Adresse Ligne 2', '地址行2', 'Dirección Línea 2'),
(452, 'zipcode', 'Zipcode', 'পিনকোড', 'الرمز البريدي', 'code postal', '邮政编码', 'Código postal'),
(453, 'print', 'Print', 'ছাপা', 'طباعة', 'impression', '打印', 'Impresión'),
(454, 'marker_location', 'Marker Location', 'মার্কার অবস্থান', 'علامة المكان', 'emplacement du marqueur', '标记位置', 'Ubicación del marcador '),
(455, 'city', 'City', 'শহর', 'مدينة', 'ville', '市', 'Ciudad'),
(456, 'ZIP', 'ZIP', 'জিপ', 'ZIP', 'ZIP *: FRANÇAIS', '压缩', 'Código postal'),
(457, 'payment_details', 'Payment Details', 'পেমেন্ট বিবরণ', 'بيانات الدفع', 'détails du paiement', NULL, 'Detalles del pago'),
(458, 'coupon_title', 'Coupon Title', 'কুপন শিরোনাম', 'عنوان القسيمة', 'Titre de coupon', NULL, 'Título del cupón'),
(459, 'valid_till', 'Valid Till', 'পর্যন্ত বৈধ', 'صالح حتى', 'valable jusqu\'au', NULL, 'Válida hasta'),
(460, 'coupon_discount_on', 'Coupon Discount On', 'কুপন ডিসকাউন্ট', 'قسيمة خصم على', 'coupon de réduction sur les', NULL, 'Cupón de descuento en'),
(461, 'coupon_code', 'Coupon Code', 'কুপন কোড', 'رمز القسيمة', 'code promo', NULL, 'Código promocional'),
(462, 'discount_type', 'Discount Type', 'ছাড় টাইপ', 'نوع الخصم', 'Type de réduction', NULL, 'Tipo de descuento'),
(463, 'discount_value', 'Discount Value', 'ডিসকাউন্ট মূল্য', 'قيمة الخصم', 'valeur de réduction', NULL, 'Valor de descuento'),
(464, 'user', 'User', 'ব্যবহারকারী', 'مستخدم', 'utilisateur', NULL, 'Usuario'),
(465, 'phone_number', 'Phone Number', 'ফোন নম্বর', 'رقم الهاتف', 'numéro de téléphone', NULL, 'Número de teléfono '),
(466, 'creation_date', 'Creation Date', 'তৈরির তারিখ', 'تاريخ الإنشاء', 'date de création', NULL, 'Fecha de creación'),
(467, 'ticket_from', 'Ticket From', 'থেকে টিকিট', 'تذكرة من', 'billet de', NULL, 'Mensaje de '),
(468, 'date_&_time', 'Date & Time', 'তারিখ সময়', 'التاريخ والوقت', 'date et heure', NULL, 'Fecha y hora'),
(469, 'reply_message', 'Reply Message', 'উত্তর বার্তা', 'رسالة الرد', 'message de réponse', NULL, 'Mensaje de respuesta'),
(470, 'successfully_replied!', 'Successfully Replied!', 'সফলভাবে বললেন!', 'أجاب بنجاح!', 'répondit avec succès!', NULL, '¡Respondido exitosamente!'),
(471, 'reply', 'Reply', 'উত্তর', 'الرد', 'répondre', NULL, 'Respuesta'),
(472, 'refresh', 'Refresh', 'সতেজ করা', 'اعادة تنشيط', 'rafraîchir', NULL, 'Actualizar'),
(473, 'company', 'Company', 'কোম্পানির', 'شركة', 'compagnie', NULL, 'Empresa'),
(474, 'postpone', 'Postpone', 'মুলতবি করা', 'تأجيل', 'remettre à plus tard', NULL, 'Posponer'),
(475, 'approve', 'Approve', 'অনুমোদন করা', 'وافق', 'approuver', NULL, 'Aprobar'),
(476, 'total_sold', 'Total Sold', 'মোট বিক্রি', 'مجموعه تباع', 'total vendu', NULL, 'Total vendido'),
(477, 'paid_by_customer', 'Paid By Customer', 'গ্রাহকের দ্বারা প্রদান করা', 'المدفوع من قبل العميل', 'payé par le client', NULL, 'Pagado por el cliente'),
(478, 'paid_to_vendor', 'Paid To Vendor', 'বিক্রেতার দেওয়া', 'تدفع للبائع', 'payé au fournisseur', NULL, 'Pagado al vendedor'),
(479, 'by_admin', 'By Admin', 'দ্বারা অ্যাডমিন', 'بواسطة admin', 'by admin', NULL, 'Por administrador'),
(480, 'cash_on_delivery', 'Cash On Delivery', 'প্রদানোত্তর পরিশোধ', 'الدفع عند التسليم', 'paiement à la livraison', NULL, 'Contra reembolso'),
(481, 'due_to_vendor', 'Due To Vendor', 'বিক্রেতার কারণে', 'بسبب بائع', 'en raison de fournisseur', NULL, 'Debido al vendedor'),
(482, 'select_payment_method', 'Select Payment Method', 'নির্বাচন পেমেন্ট পদ্ধতি', 'اختار طريقة الدفع', 'Sélectionnez le mode de paiement', NULL, 'Seleccionar forma de pago'),
(483, 'your_card_details_verified!', 'Your Card Details Verified!', 'আপনার কার্ডের বিবরণ যাচাই!', 'تفاصيل بطاقتك التحقق منها!', 'vos coordonnées de carte vérifiées!', NULL, 'Detalles de su tarjeta verificados! '),
(484, 'pay_with_stripe', 'Pay With Stripe', 'ডোরা দিয়ে দিতে', 'دفع مع شريط', 'payer avec bande', NULL, 'Pagar con '),
(485, 'datetime', 'Datetime', 'তারিখ সময়', 'التاريخ والوقت', 'datetime', NULL, 'Fecha y hora'),
(486, 'membership_to_upgrade', 'Membership To Upgrade', 'সদস্যপদ আপগ্রেড করার', 'عضوية لرفع مستوى', 'membres pour mettre à niveau', NULL, 'Membresía para actualizar'),
(487, 'method', 'Method', 'পদ্ধতি', 'طريقة', 'méthode', NULL, 'Método'),
(488, 'details', 'Details', 'বিস্তারিত', 'تفاصيل', 'détails', NULL, 'Detalles'),
(489, 'maximum_products', 'Maximum Products', 'সর্বাধিক পণ্য', 'منتجات القصوى', 'produits maximales', NULL, 'Productos máximos'),
(490, 'timespan', 'Timespan', 'timespan', 'الفترة الزمنية', 'timespan', NULL, 'Espacio de tiempo'),
(491, 'package_seal', 'Package Seal', 'প্যাকেজ সীল', 'حزمة ختم', 'fermeture de l\'emballage', NULL, 'Sello del paquete'),
(492, 'select_package_seal', 'Select Package Seal', 'নির্বাচন প্যাকেজ সীল', 'حدد حزمة ختم', 'select joint package', NULL, 'Seleccionar paquete de sello'),
(493, 'manage_vendor_slides', 'Manage Vendor Slides', 'বিক্রেতার স্লাইড পরিচালনা', 'إدارة الشرائح بائع', 'gérer les diapositives des fournisseurs', NULL, 'Administrar diapositivas de proveedores'),
(494, 'button', 'Button', 'বোতাম', 'زر', 'bouton', NULL, 'Botón'),
(495, 'click_to_check_link', 'Click To Check Link', 'লিংক চেক করতে ক্লিক', 'انقر فوق التحقق من الرابط', 'cliquez pour vérifier le lien', NULL, 'Haga clic para verificar el enlace '),
(496, 'slides', 'Slides', 'স্লাইড', 'الشرائح', 'diapositives', NULL, 'Diapositivas'),
(497, 'manage_users', 'Manage Users', 'ব্যবহারকারীদের পরিচালনা', 'ادارة المستخدمين', 'gérer les utilisateurs', NULL, 'Administrar usuarios '),
(498, 'total_purchase', 'Total Purchase', 'মোট ক্রয়', 'شراء مجموع', 'achat total', NULL, 'Compra total'),
(499, 'users', 'Users', 'ব্যবহারকারী', 'المستخدمين', 'utilisateurs', NULL, 'Los usuarios'),
(500, 'send_newsletter', 'Send Newsletter', 'নিউজলেটার পাঠাতে', 'إرسال الرسائل الإخبارية', 'envoyer la newsletter', NULL, 'Enviar boletín'),
(501, 'e-mails_(users)', 'E-mails (users)', 'ই-মেইল (ব্যবহারকারী)', 'رسائل البريد الإلكتروني (المستخدمين)', 'e-mails (utilisateurs)', NULL, 'Correos electrónicos (usuarios)'),
(502, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'ই-মেইল (সদস্য)', 'رسائل البريد الإلكتروني (مشترك)', 'e-mails (abonnés)', NULL, 'Correos electrónicos (suscriptores)'),
(503, 'from_:_email_address', 'From : Email Address', 'থেকে: ই-মেইল ঠিকানা', 'من: عنوان البريد الإلكتروني', 'à partir de: adresse e-mail', NULL, 'De la dirección de correo electrónico'),
(504, 'newsletter_subject', 'Newsletter Subject', 'নিউজলেটার বিষয়', 'النشرة الموضوع', 'bulletin d\'information sous réserve', NULL, 'Asunto del boletín'),
(505, 'newsletter_content', 'Newsletter Content', 'নিউজলেটার বিষয়বস্তু', 'محتوى النشرة الإخبارية', 'contenu du bulletin', NULL, 'Contenido del boletín'),
(506, 'sending', 'Sending', 'পাঠানোর', 'إرسال', 'envoi', NULL, 'Enviando'),
(507, 'sent!', 'Sent!', 'পাঠানো হয়েছে!', 'أرسلت!', 'envoyé!', NULL, '¡Expedido!'),
(508, 'send', 'Send', 'পাঠান', 'إرسال', 'envoyer', NULL, 'Enviar'),
(509, 'view_contact_message', 'View Contact Message', 'দৃশ্য যোগাযোগের বার্তা', 'رسالة رأي اتصال', 'message visite de contact', NULL, 'Ver mensaje de contacto'),
(510, 'view_message', 'View Message', 'দৃশ্য বার্তা', 'رسالة رأي', 'vue un message', NULL, 'Ver mensaje'),
(511, 'message', 'Message', 'বার্তা', 'الرسالة', 'message', NULL, 'Mensaje'),
(512, 'date_time', 'Date Time', 'তারিখ সময়', 'التاريخ والوقت', 'date heure', NULL, 'Fecha y hora'),
(513, 'message_from', 'Message From', 'থেকে বার্তা', 'رسالة من', 'message de', NULL, 'Mensaje de'),
(514, 'reply_contact_message', 'Reply Contact Message', 'উত্তর যোগাযোগের বার্তা', 'الرد رسالة الاتصال', 'message de réponse de contact', NULL, 'Responder mensaje de contacto'),
(515, 'view_original_message', 'View Original Message', 'মূল বার্তা দেখতে', 'عرض الرسالة الأصلية', 'voir message original', NULL, 'Ver mensaje original'),
(516, 'manage_blog_categories', 'Manage Blog Categories', 'ব্লগ বিভাগ পরিচালনা', 'إدارة الفئات بلوق', 'gérer des catégories de blog', NULL, 'Administrar categorías de blog'),
(517, 'add_blog_category', 'Add Blog Category', 'ব্লগ বিভাগ যোগ', 'إضافة فئة بلوق', 'ajouter la catégorie de blog', NULL, 'Añadir categoría de blog'),
(518, 'create_blog_category', 'Create Blog Category', 'ব্লগ বিভাগ তৈরি', 'إنشاء فئة بلوق', 'créer la catégorie de blog', NULL, 'Crear categoría de blog'),
(519, 'edit_blog_category', 'Edit Blog Category', 'সম্পাদনা ব্লগ বিভাগ', 'تحرير الفئة بلوق', 'modifier la catégorie de blog', NULL, 'Editar categoría del blog'),
(520, 'blog_category', 'Blog Category', 'ব্লগ বিভাগ', 'الفئة بلوق', 'catégorie de blog', NULL, 'Categoría del blog'),
(521, 'manage_blog', 'Manage Blog', 'ব্লগ পরিচালনা', 'إدارة بلوق', 'gérer le blog', NULL, 'Administrar blog'),
(522, 'add_blog', 'Add Blog', 'ব্লগটি যুক্ত', 'إضافة بلوق', 'ajouter le blog', NULL, 'Añadir blog'),
(523, 'create_blog', 'Create Blog', 'ব্লগ তৈরি', 'إنشاء بلوق', 'créer un blog', NULL, 'Blog creativo'),
(524, 'back_to_blog_list', 'Back To Blog List', 'ফিরে ব্লগ লিস্টে', 'العودة إلى قائمة بلوق', 'Retour à la liste des blogs', NULL, 'Volver a la lista de blogs'),
(525, 'edit_blog', 'Edit Blog', 'সম্পাদনা ব্লগ', 'تحرير بلوق', 'modifier le blog', NULL, 'Editar blog'),
(526, 'blog_title', 'Blog Title', 'ব্লগ শিরোনাম', 'عنوان المدونة', 'Titre du Blog', NULL, 'Titulo de Blog'),
(527, 'summery', 'Summery', 'গ্রীষ্মের বৈশিষ্ট্যপূর্ণ', 'صيفي', 'd\'été', NULL, 'Veraniego '),
(528, 'author', 'Author', 'লেখক', 'مؤلف', 'auteur', NULL, 'Autor'),
(529, 'manage_layer_slider', 'Manage Layer Slider', 'লেয়ার স্লাইডার পরিচালনা', 'إدارة طبقة المنزلق', 'gérer la couche curseur', NULL, 'Administrar control deslizante de capa'),
(530, 'create_slider', 'Create Slider', 'স্লাইডার তৈরি', 'إنشاء المنزلق', 'créer curseur', NULL, 'Crear control deslizante'),
(531, 'slider_list', 'Slider List', 'স্লাইডার তালিকা', 'قائمة المنزلق', 'liste de curseur', NULL, 'Lista de control deslizante'),
(532, 'slider_serial', 'Slider Serial', 'স্লাইডার সিরিয়াল', 'المنزلق المسلسل', 'curseur série', NULL, 'Slider Serial'),
(533, 'successfully_serialized!', 'Successfully Serialized!', 'সফলভাবে ধারাবাহিকভাবে!', 'تسلسل بنجاح!', 'sérialisé avec succès!', NULL, '¡Serializado con éxito!'),
(534, 'slider_serial_saved!', 'Slider Serial Saved!', 'স্লাইডার সিরিয়াল সংরক্ষিত!', 'المنزلق مسلسل حفظ!', 'Curseur série sauvé!', NULL, 'Slider Serial Guardado!'),
(535, 'choose_your_slider_style', 'Choose Your Slider Style', 'আপনার স্লাইডার শৈলী চয়ন', 'اختيار نمط التمرير الخاص بك', 'choisissez votre style de curseur', NULL, 'Elige tu estilo de control deslizante'),
(536, 'play', 'Play', 'খেলা', 'لعب', 'jouer', NULL, 'Jugar'),
(537, 'choose', 'Choose', 'পছন্দ', 'اختار', 'choisir', NULL, 'Escoger'),
(538, 'enter_preview', 'Enter Preview', 'প্রিভিউ প্রবেশ', 'دخول المعاينة', 'entrer aperçu', NULL, 'Ingresar vista previa'),
(539, 'creating_slider..', 'Creating Slider..', 'স্লাইডার তৈরি ..', 'خلق المنزلق ..', 'création curseur ..', NULL, 'Creando Slider ..'),
(540, 'slider_added!', 'Slider Added!', 'স্লাইডার যোগ করা হয়েছে!', 'وأضاف المنزلق!', 'Curseur ajouté!', NULL, 'Control deslizante añadido!'),
(541, 'select_background_image', 'Select Background Image', 'নির্বাচন ব্যাকগ্রাউন্ড ইমেজ', 'صورة خلفية مختارة', 'sélectionner l\'image d\'arrière-plan', NULL, 'Seleccionar imagen de fondo'),
(542, 'select_image', 'Select Image', 'নির্বাচন ইমেজ', 'اختر صورة', 'sélectionner l\'image', NULL, 'Seleccionar imagen'),
(543, 'font-color', 'Font-color', 'ফন্টের রং', 'لون الخط', 'couleur de la police', NULL, 'Color de fuente'),
(544, 'background_color', 'Background Color', 'পেছনের রং', 'لون الخلفية', 'Couleur de fond', NULL, 'Color de fondo '),
(545, 'manage_top_carousal_slides', 'Manage Top Carousal Slides', 'শীর্ষ মদ্যপানোৎসব স্লাইড পরিচালনা', 'إدارة أعلى الشرائح إحتفال صاخب مخمور', 'gérer les diapositives de Carrousel top', NULL, 'Gestionar diapositivas de carrusel superior '),
(546, 'add_slides', 'Add Slides', 'স্লাইড যোগ', 'إضافة شرائح', 'ajouter des diapositives', NULL, 'Agregar diapositivas'),
(547, 'create_slides', 'Create Slides', 'স্লাইড তৈরি', 'إنشاء الشرائح', 'créer des diapositives', NULL, 'Crear diapositivas'),
(548, 'edit_slides', 'Edit Slides', 'স্লাইড সম্পাদন', 'تحرير الشرائح', 'diapositives modifier', NULL, 'Editar diapositivas'),
(549, 'slide_banner', 'Slide Banner', 'স্লাইড ব্যানার', 'راية الشرائح', 'slide bannière', NULL, 'Banner de diapositivas'),
(550, 'select_slide_banner', 'Select Slide Banner', 'নির্বাচন স্লাইড ব্যানার', 'حدد راية الشرائح', 'select slide bannière', NULL, 'Seleccione Banner de diapositiva'),
(551, 'button_color:', 'Button Color:', 'বোতাম রঙ:', 'زر اللون:', 'bouton couleur:', NULL, 'Color del boton:'),
(552, 'button_text_color:', 'Button Text Color:', 'বোতাম টেক্সট রঙ:', 'زر لون النص:', 'bouton couleur du texte:', NULL, 'Color del texto del botón:'),
(553, 'button_text', 'Button Text', 'বোতাম টেক্সট', 'زر كتابة', 'bouton de texte', NULL, 'Botón de texto'),
(554, 'button_link', 'Button Link', 'বোতাম লিংক', 'رابط زر', 'lien de bouton', NULL, 'Enlace de botón'),
(555, 'slides_logo', 'Slides Logo', 'স্লাইড লোগো', 'الشرائح شعار', 'diapositives logo', NULL, 'Logotipo de diapositivas'),
(556, 'choose_home_page_style', 'Choose Home Page Style', 'চয়ন হোম পৃষ্ঠা শৈলী', 'اختيار نمط الصفحة الرئيسية', 'choisissez la page d\'accueil de style', NULL, 'Elegir estilo de página de inicio '),
(557, 'updating..', 'Updating..', 'হালনাগাদ করা ..', 'تحديث ..', 'mise à jour ..', NULL, 'Actualizando ..'),
(558, 'home_page_updated!', 'Home Page Updated!', 'হোম পেজে আপডেট!', 'الصفحة الرئيسية تجديد!', 'page d\'accueil mise à jour!', NULL, '¡Página de inicio actualizada!'),
(559, 'update_home_page', 'Update Home Page', 'আপডেটের হোম পেজে', 'تحديث الصفحة الرئيسية', 'mise à jour la page d\'accueil', NULL, 'Actualizar página de inicio'),
(560, 'change_home_page_items', 'Change Home Page Items', 'পরিবর্তন হোম পেজে আইটেম', 'البنود تغيير الصفحة الرئيسية', 'changement page d\'accueil articles', NULL, 'Cambiar elementos de la página de inicio'),
(561, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'সত্যিই এই লোগো মুছে ফেলতে চান?', 'حقا تريد حذف هذا الشعار؟', 'voulez vraiment supprimer ce logo?', NULL, '¿Realmente quieres eliminar este logotipo?'),
(562, 'top_slider', 'Top Slider', 'শীর্ষ স্লাইডার', 'كبار المنزلق', 'top slider', NULL, 'Control deslizante superior'),
(563, 'home_banners', 'Home Banners', 'হোম ব্যানার', 'لافتات المنزل', 'bannières à domicile', NULL, 'Banners caseros'),
(564, 'search_section', 'Search Section', 'অনুসন্ধান অধ্যায়', 'قسم البحث', 'section de recherche', NULL, 'Sección de búsqueda'),
(565, 'category_wise_products', 'Category Wise Products', 'বিভাগ বিজ্ঞ পণ্য', 'فئة المنتجات الحكيمة', 'catégorie produits sages', NULL, 'Categoría Productos sabios'),
(566, 'special_products', 'Special Products', 'বিশেষ পণ্য', 'منتجات خاصة', 'produits spéciaux', NULL, 'productos especiales'),
(567, 'top_carousel_slider', 'Top Carousel Slider', 'শীর্ষ ক্যারোসেলে স্লাইডার', 'كبار المنزلق دائري', 'top carrousel curseur', NULL, 'Control deslizante del carrusel superior'),
(568, 'choose_categories_(max_10)', 'Choose Categories (max 10)', 'চয়ন বিভাগ (সর্বোচ্চ 10)', 'اختيار الفئات (حد أقصى 10)', 'choisir les catégories (max 10)', NULL, 'Elija categorías (máximo 10)'),
(569, 'number_of_todays_deal_(_to_show_)', 'Number Of Todays Deal ( To Show )', 'আজকের চুক্তি সংখ্যা (দেখানোর জন্য)', 'عدد من صفقة اليوم (إظهار)', 'nombre de retransmission de ce deal (montrer)', NULL, 'Número de ofertas de hoy (para mostrar)'),
(570, 'updating', 'Updating', 'হালনাগাদ করা', 'تحديث', 'réactualisation', NULL, 'Actualización'),
(571, 'category_menu_updated!', 'Category Menu Updated!', 'বিভাগ মেনু আপডেট!', 'القائمة فئة تجديد!', 'menu de la catégorie mise à jour!', NULL, '¡Menú de categoría actualizado!'),
(572, 'update', 'Update', 'হালনাগাদ', 'تحديث', 'mettre à jour', NULL, 'Actualizar'),
(573, 'after_slider', 'After Slider', 'স্লাইডার পর', 'بعد المنزلق', 'après curseur', NULL, 'After Slider'),
(574, 'select_banner_image', 'Select Banner Image', 'নির্বাচন ব্যানার ইমেজ', 'اختر صورة لافتة', 'sélectionner l\'image de la bannière', NULL, 'Seleccionar imagen de banner'),
(575, 'banner_updated!', 'Banner Updated!', 'ব্যানার আপডেট!', 'راية تحديث!', 'banner mis à jour!', NULL, 'Banner actualizado!'),
(576, 'parallax_title_for_search', 'Parallax Title For Search', 'অনুসন্ধানের জন্য লম্বন শিরোনাম', 'عنوان المنظر للبحث', 'Titre de la parallaxe pour la recherche', NULL, 'Título de paralaje para búsqueda'),
(577, 'parallax_image_for_search_section', 'Parallax Image For Search Section', 'অনুসন্ধান বিভাগের জন্য লম্বন ইমেজ', 'صورة المنظر لقسم البحث', 'l\'image de parallaxe pour la section de recherche', NULL, 'Imagen de paralaje para la sección de búsqueda'),
(578, 'search_section_updated!', 'Search Section Updated!', 'অনুসন্ধান অধ্যায় আপডেট!', 'قسم البحث تحديث!', 'section de recherche mis à jour!', NULL, 'Sección de búsqueda actualizada!'),
(579, 'featured_products_(_show_/_hide_)', 'Featured Products ( Show / Hide )', 'বৈশিষ্ট্যযুক্ত পণ্য (প্রদর্শন করুন / আড়াল)', 'منتجات مميزة (عرض / إخفاء)', 'produits phares (show / hide)', NULL, 'Productos destacados (Mostrar / Ocultar)'),
(580, 'number_of_products_(_to_show_)', 'Number Of Products ( To Show )', 'পণ্য সংখ্যা (দেখানোর জন্য)', 'عدد من المنتجات (لاظهار)', 'nombre de produits (pour montrer)', NULL, 'Número de productos (para mostrar)'),
(581, 'choose_product_box_style', 'Choose Product Box Style', 'পণ্য বক্স শৈলী চয়ন', 'اختيار المنتج نمط مربع', 'choisissez le style boîte produit', NULL, 'Elegir estilo de caja de producto '),
(582, 'featured_section_updated!', 'Featured Section Updated!', 'বৈশিষ্ট্যযুক্ত অধ্যায় আপডেট!', 'القسم المميز تحديث!', 'section sélectionnée mis à jour!', NULL, 'Sección destacada ¡Actualizada!'),
(583, 'vandor_(_show_/_hide_)', 'Vandor ( Show / Hide )', 'vandor (প্রদর্শন করুন / আড়াল)', 'فاندور (عرض / إخفاء)', 'vandor (afficher / masquer)', NULL, 'Vendedor (Mostrar / Ocultar)'),
(584, 'parallax_title_for_vendors', 'Parallax Title For Vendors', 'বিক্রেতাদের জন্য লম্বন শিরোনাম', 'عنوان المنظر للبائعين', 'Titre de la parallaxe pour les vendeurs', NULL, 'Título de paralaje para vendedores'),
(585, 'parallax_image_for_vendors', 'Parallax Image For Vendors', 'বিক্রেতাদের জন্য লম্বন ইমেজ', 'صورة المنظر للبائعين', 'l\'image de parallaxe pour les vendeurs', NULL, 'Imagen de paralaje para vendedores'),
(586, 'number_of_vendor_(_to_show_)', 'Number Of Vendor ( To Show )', 'বিক্রেতার সংখ্যা (দেখানোর জন্য)', 'عدد من بائع (لاظهار)', 'nombre de fournisseurs (pour montrer)', NULL, 'Número de vendedor (para mostrar)'),
(587, 'vendor_section_updated!', 'Vendor Section Updated!', 'বিক্রেতার অধ্যায় আপডেট!', 'قسم بائع تحديث!', 'section de fournisseur mis à jour!', NULL, 'Sección de proveedores actualizada!'),
(588, 'sub-categories_(promotional)', 'Sub-categories (promotional)', 'উপ-বিভাগ (প্রচারমূলক)', 'فئات فرعية (الترويجية)', 'sous-catégories (promotion)', NULL, 'Subcategorías (promocionales)'),
(589, 'color_preference_:', 'Color Preference :', 'রঙ পছন্দ:', 'تفضيل اللون:', 'de préférence de couleur:', NULL, 'Preferencia de color:'),
(590, 'title_color:', 'Title Color:', 'শিরোনাম রঙ:', 'عنوان اللون:', 'Titre de la couleur:', NULL, 'Título de color:'),
(591, 'add_new', 'Add New', 'নতুন যোগ', 'اضف جديد', 'ajouter de nouvelles', NULL, 'Añadir nuevo'),
(592, 'home_categories_updated!', 'Home Categories Updated!', 'বাড়িতে আরও আপডেট!', 'فئات الوطن تجديد!', 'catégories de maison mis à jour!', NULL, 'Inicio Categorías Actualizadas!'),
(593, 'blog_(_show_/_hide_)', 'Blog ( Show / Hide )', 'ব্লগ (প্রদর্শন করুন / আড়াল)', 'بلوق (عرض / إخفاء)', 'Blog (show / hide)', NULL, 'Blog (Mostrar / Ocultar)'),
(594, 'parallax_title_for_blog', 'Parallax Title For Blog', 'ব্লগের জন্য লম্বন শিরোনাম', 'عنوان المنظر لبلوق', 'titre parallaxe pour blogue', NULL, 'Título de paralaje para blog'),
(595, 'parallax_image_for_blog', 'Parallax Image For Blog', 'ব্লগের জন্য লম্বন ইমেজ', 'صورة المنظر لبلوق', 'l\'image de parallaxe pour blogue', NULL, 'Imagen de paralaje para blog'),
(596, 'number_of_latest_blog_(_to_show_)', 'Number Of Latest Blog ( To Show )', 'সর্বশেষ ব্লগ সংখ্যা (দেখানোর জন্য)', 'عدد آخر بلوق (لاظهار)', 'nombre de dernier blog (montrer)', NULL, 'Número del último blog (para mostrar)'),
(597, 'blog_section_updated!', 'Blog Section Updated!', 'ব্লগ অধ্যায় আপডেট!', 'قسم بلوق تحديث!', 'section blog mis à jour!', NULL, 'Sección del blog actualizada!'),
(598, 'special_products_(_show_/_hide_)', 'Special Products ( Show / Hide )', 'বিশেষ পণ্য (প্রদর্শন করুন / আড়াল)', 'منتجات خاصة (إظهار / إخفاء)', 'produits spéciaux (afficher / masquer)', NULL, 'Productos especiales (Mostrar / Ocultar)'),
(599, 'brand_(_show_/_hide_)', 'Brand ( Show / Hide )', 'ব্র্যান্ড (প্রদর্শন করুন / আড়াল)', 'العلامة التجارية (عرض / إخفاء)', 'marque (show / hide)', NULL, 'Marca (Mostrar / Ocultar)'),
(600, 'number_of_brand_(_to_show_)', 'Number Of Brand ( To Show )', 'ব্র্যান্ড সংখ্যা (দেখানোর জন্য)', 'عدد من العلامة التجارية (لاظهار)', 'nombre de marque (montrer)', NULL, 'Número de marca (para mostrar)'),
(601, 'brand_section_updated!', 'Brand Section Updated!', 'ব্র্যান্ড অধ্যায় আপডেট!', 'قسم العلامة التجارية تحديثها!', 'section de la marque mis à jour!', NULL, 'Sección de marca actualizada!'),
(602, 'banner_published!', 'Banner Published!', 'ব্যানার প্রকাশিত!', 'راية نشرت!', 'bannière publié!', NULL, 'Banner publicado!'),
(603, 'banner_unpublished!', 'Banner Unpublished!', 'ব্যানার অপ্রকাশিত!', 'راية لم تنشر!', 'bannière inédite!', NULL, 'Banner no publicado!'),
(604, 'section_published!', 'Section Published!', 'অধ্যায় প্রকাশিত!', 'القسم نشرت!', 'section publié!', NULL, 'Sección publicada!'),
(605, 'section_unpublished!', 'Section Unpublished!', 'অধ্যায় অপ্রকাশিত!', 'قسم غير منشورة!', 'section inédite!', NULL, 'Sección no publicada!'),
(606, 'category_wise_banners', 'Category Wise Banners', 'বিভাগ জ্ঞানী ব্যানার', 'فئة افتات الحكيمة', 'catégorie bannières sages', NULL, 'Categoría Wise Banners'),
(607, 'title_for_vendor_section', 'Title For Vendor Section', 'বিক্রেতার বিভাগের জন্য শিরোনাম', 'عنوان الباب بائع', 'titre pour la section de fournisseur', NULL, 'Título para la sección del vendedor'),
(608, 'contact_address', 'Contact Address', 'যোগাযোগের ঠিকানা', 'عنوان الإتصال', 'Adresse de contact', NULL, 'Dirección de contacto'),
(609, 'contact_phone', 'Contact Phone', 'ফোনে যোগাযোগ', 'رقم الهاتف', 'Numéro du contact', NULL, 'teléfono de contacto'),
(610, 'contact_email', 'Contact Email', 'যোগাযোগের ই - মেইল', 'تواصل بالبريد الاكتروني', 'Email du contact', NULL, 'Email de contacto'),
(611, 'contact_website', 'Contact Website', 'যোগাযোগের ওয়েবসাইট', 'اتصال الانترنت', 'site de contact', NULL, 'Sitio web de contacto'),
(612, 'contact_about', 'Contact About', 'সম্পর্কে যোগাযোগ', 'الاتصال حول', 'contacter à propos de', NULL, 'Contacto sobre'),
(613, 'footer_settings', 'Footer Settings', 'পাদচরণ সেটিংস', 'إعدادات تذييل', 'paramètres de bas de page', NULL, 'Configuraciones de pie de página'),
(614, 'footer_category', 'Footer Category', 'পাদচরণ বিভাগ', 'فئة تذييل', 'catégorie footer', NULL, 'Categoría de pie de página'),
(615, 'footer_text', 'Footer Text', 'পাদচরণ', 'نص تذييل', 'texte de pied de page', NULL, 'Texto de pie de página'),
(616, 'choose_theme', 'Choose Theme', 'থিম নির্বাচন', 'اختيار موضوع', 'choisissez le thème', NULL, 'Escoge un tema'),
(617, 'theme_updated!', 'Theme Updated!', 'থিম আপডেট!', 'موضوع تحديث!', 'thème mis à jour!', NULL, 'Tema actualizado!'),
(618, 'upload_logo', 'Upload Logo', 'আপলোড লোগো', 'تحميل شعار', 'télécharger logo', NULL, 'Subir logo'),
(619, 'select_logo', 'Select Logo', 'নির্বাচন লোগো', 'حدد شعار', 'sélectionnez logo', NULL, 'Seleccionar logo'),
(620, 'all_logos', 'All Logos', 'সমস্ত লোগো', 'كل الشعارات', 'tous les logos', NULL, 'Todos los logos'),
(621, 'place', 'Place', 'জায়গা', 'مكان', 'endroit', NULL, 'Sitio'),
(622, 'admin_logo', 'Admin Logo', 'অ্যাডমিন লোগো', 'شعار المشرف', 'administrateur logo', NULL, 'Logotipo de administrador'),
(623, 'successfully_selected!', 'Successfully Selected!', 'সফলভাবে নির্বাচিত!', 'اختيار بنجاح!', 'choisi avec succès!', NULL, '¡Seleccionado con éxito!'),
(624, 'change', 'Change', 'পরিবর্তন', 'تغيير', 'changement', NULL, 'Cambio'),
(625, 'homepage_header_logo', 'Homepage Header Logo', 'হোমপেজে হেডার লোগো', 'الصفحة الرئيسية شعار رأس', 'page d\'accueil logo header', NULL, 'Logotipo del encabezado de la página de inicio'),
(626, 'homepage_footer_logo', 'Homepage Footer Logo', 'হোমপেজে ফুটার লোগো', 'الصفحة الرئيسية شعار تذييل', 'page d\'accueil logo footer', NULL, 'Logotipo de pie de página'),
(627, 'successfully_logo_uploaded', 'Successfully Logo Uploaded', 'সফলভাবে আপলোড লোগো', 'بنجاح شعار تحميلها', 'avec succès logo téléchargé', NULL, 'Logotipo cargado correctamente'),
(628, 'select_favicon', 'Select Favicon', 'নির্বাচন ফেভিকন', 'حدد فافيكون', 'sélectionnez favicon', NULL, 'Seleccione Favicon'),
(629, 'favicon_updated!', 'Favicon Updated!', 'ফেভিকন আপডেট!', 'فافيكون تحديث!', 'favicon mis à jour!', NULL, '¡Favicon actualizado!'),
(630, 'choose_font', 'Choose Font', 'ফন্ট পছন্দ', 'اختيار الخط', 'choisissez la police', NULL, 'Elegir fuente'),
(631, 'font_updated!', 'Font Updated!', 'ফন্ট আপডেট!', 'الخط تحديث!', 'police mis à jour!', NULL, 'Fuente actualizada!'),
(632, 'preloaders', 'Preloaders', 'preloaders', 'preloaders', 'preloaders', NULL, 'Precargadores'),
(633, 'preloader_color', 'Preloader Color', 'preloader রঙ', 'اللون تحميل مسبق', 'couleur de préchargement', NULL, 'Color del precargador'),
(634, 'preloader_background', 'Preloader Background', 'preloader পটভূমি', 'خلفية تحميل مسبق', 'preloader fond', NULL, 'Fondo de precargador'),
(635, 'preloader_updated!', 'Preloader Updated!', 'preloader আপডেট!', 'التحميل المسبق لتحديث!', 'Preloader mis à jour!', NULL, 'Preloader actualizado!'),
(636, 'social_links', 'Social Links', 'সামাজিক লিংক', 'الروابط الاجتماعية', 'liens sociaux', NULL, 'vínculos sociales'),
(637, 'system_name', 'System Name', 'সিস্টেমের নামের', 'اسم النظام', 'le nom du système', NULL, 'Nombre del sistema'),
(638, 'system_email', 'System Email', 'সিস্টেম ইমেল', 'نظام البريد الإلكتروني', 'email du système', NULL, 'Correo electrónico del sistema'),
(639, 'system_title', 'System Title', 'সিস্টেম শিরোনাম', 'عنوان النظام', 'titre du système', NULL, 'Título del sistema'),
(640, 'homepage_cache_time', 'Homepage Cache Time', 'হোমপেজে ক্যাশে সময়', 'الوقت مخبأ الصفحة الرئيسية', 'temps de cache page d\'accueil', NULL, 'Tiempo de caché de la página de inicio'),
(641, 'minutes', 'Minutes', 'মিনিট', 'دقيقة', 'minutes', NULL, 'Minutos'),
(642, 'downloadable_product_folder_name', 'Downloadable Product Folder Name', 'ডাউনলোডযোগ্য পণ্য ফোল্ডার নাম', 'اسم مجلد المنتج للتحميل', 'produit téléchargeable nom du dossier', NULL, 'Nombre de la carpeta del producto descargable'),
(643, 'admin_notification_sound', 'Admin Notification Sound', 'অ্যাডমিন নোটিফিকেশন সাউন্ড', 'صوت الإعلام المشرف', 'administrateur notification sonore', NULL, 'Sonido de notificación de administrador'),
(644, 'admin_notification_volume', 'Admin Notification Volume', 'অ্যাডমিন বিজ্ঞপ্তি ভলিউম', 'حجم إخطار المشرف', 'volume de notification admin', NULL, 'Volumen de notificaciones del administrador'),
(645, 'Volume_:_', 'Volume : ', 'ভলিউম: ', 'الصوت : ', 'Le volume : ', NULL, 'Volumen:'),
(646, 'homepage_notification_sound', 'Homepage Notification Sound', 'হোমপেজে নোটিফিকেশন সাউন্ড', 'صوت الإعلام الصفحة الرئيسية', 'son de notification page d\'accueil', NULL, 'Sonido de notificación de la página de inicio'),
(647, 'homepage_notification_volume', 'Homepage Notification Volume', 'হোমপেজে বিজ্ঞপ্তি ভলিউম', 'حجم الاخطار الصفحة الرئيسية', 'volume de notification page d\'accueil', NULL, 'Volumen de notificaciones de la página de inicio'),
(648, 'captcha_settings', 'Captcha Settings', 'ক্যাপচা সেটিংস', 'إعدادات كلمة التحقق', 'paramètres captcha', NULL, 'Configuración de Captcha'),
(649, 'social_login_configuaration', 'Social Login Configuaration', 'সামাজিক লগইন configuaration', 'configuaration تسجيل الدخول الاجتماعي', 'configuaration de connexion sociale', NULL, 'Configuración de inicio de sesión social'),
(650, 'product_comment_settings', 'Product Comment Settings', 'পণ্য মন্তব্য সেটিংস', 'إعدادات المنتج تعليق', 'paramètres produit de commentaire', NULL, 'Configuración de comentarios del producto'),
(651, 'google_map', 'Google Map', 'গুগল মানচিত্র', 'خريطة جوجل', 'Google Map', NULL, 'Mapa de Google'),
(652, 'save_captcha_settings', 'Save Captcha Settings', 'ক্যাপচা সেটিংস সংরক্ষণ', 'حفظ الإعدادات كلمة التحقق', 'enregistrer les paramètres de captcha', NULL, 'Guardar configuración de Captcha'),
(653, 'public_key', 'Public Key', 'সর্বজনীন কী', 'المفتاح العمومي', 'Clé publique', NULL, 'Llave pública'),
(654, 'private_key', 'Private Key', 'প্রাইভেট কী', 'المفتاح الخاص', 'clé privée', NULL, 'Llave privada'),
(655, 'facebook_login_settings', 'Facebook Login Settings', 'ফেসবুক লগইন সেটিংস', 'إعدادات تسجيل الدخول الفيسبوك', 'paramètres de connexion facebook', NULL, 'Configuración de inicio de sesión de Facebook'),
(656, 'google+_login_settings', 'Google+ Login Settings', 'গুগল + লগইন সেটিংস', 'إعدادات تسجيل الدخول جوجل +', 'paramètres google + de connexion', NULL, 'Configuración de inicio de sesión de Google+'),
(657, 'type', 'Type', 'আদর্শ', 'اكتب', 'type', '类型', 'Tipo'),
(658, 'none', 'None', 'না', 'لا شيء', 'aucun', '没有', 'Ninguna'),
(659, 'facebook_comment', 'Facebook Comment', 'ফেসবুক মন্তব্য', 'الفيسبوك تعليق', 'facebook commentaire', 'Facebook的评论', 'Comentario de Facebook'),
(660, 'disqus_comment', 'Disqus Comment', 'Disqus মন্তব্য', 'هارد تعليق', 'Disqus commentaire', 'disqus评论', 'Comentario Disqus'),
(661, 'google_comment', 'Google Comment', 'গুগল মন্তব্য', 'جوجل تعليق', 'google commentaire', '谷歌评论', 'Comentario de Google'),
(662, 'discus_ID', 'Discus ID', 'চাকতি আইডি', 'رمي القرص معرف', 'discus ID', '铁饼ID', 'ID de disco'),
(663, 'fb_comment_id', 'Fb Comment Id', 'FB মন্তব্য আইডি', 'أف ب تعليق معرف', 'fb commentaire id', 'FB评论ID', 'ID del comentario de Fb '),
(664, 'google_map_api_settings', 'Google Map Api Settings', 'গুগল ম্যাপ API সেটিংস', 'جوجل إعدادات خريطة المعهد', 'google map paramètres api', '谷歌地图API设置', 'Configuración de la API de Google Map'),
(665, 'api_key', 'Api Key', 'API কী', 'مفتاح API', 'clé API', 'API密钥', 'Clave API'),
(666, 'add_page', 'Add Page', 'পাতা যোগ কর', 'إضافة صفحة', 'ajouter une page', '添加页面', 'Añadir página'),
(667, 'create_page', 'Create Page', 'পাতা তৈরি করুন', 'إنشاء الصفحة', 'créer une page', '创建页面', 'Crear página'),
(668, 'back_to_page_list', 'Back To Page List', 'পিছন পাতা লিস্টে', 'العودة إلى القائمة الصفحة', 'Retour à la liste de la page', '返回页面列表', 'Volver a la lista de páginas'),
(669, 'page_name', 'Page Name', 'পৃষ্ঠার নাম', 'اسم الصفحة', 'Nom de la page', '网页名称', 'Nombre de la página'),
(670, 'preview', 'Preview', 'প্রিভিউ', 'معاينة', 'Aperçu', '预习', 'Vista anticipada'),
(671, 'edit_page', 'Edit Page', 'সম্পাদনা পাতা', 'تعديل الصفحة', 'modifier la page', '编辑页面', 'Editar página'),
(672, 'page_title', 'Page Title', 'আমার স্নাতকের', 'عنوان الصفحة', 'titre de la page', '页面标题', 'Título de la página'),
(673, 'parmalink', 'Parmalink', 'মাহবুব', 'الرابط الثابت', 'Permalink', '永久链接', 'Parmalink'),
(674, 'number_of_page_parts', 'Number Of Page Parts', 'পৃষ্ঠা যন্ত্রাংশ সংখ্যা', 'عدد الأجزاء الصفحة', 'nombre de pages pièces', '页数件', 'Número de partes de página'),
(675, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'আপনার পৃষ্ঠা তৈরি করতে চলুন শুরু করা যাক', 'يتيح البدء في إنشاء صفحتك', 'laisse commencer à créer votre page', '让我们开始创建你的页面', 'Comencemos a crear su página'),
(676, 'parts', 'Parts', 'যন্ত্রাংশ', 'أجزاء', 'les pièces', '部分', 'Partes'),
(677, 'select_size', 'Select Size', 'নির্বাচন আকার', 'أختر الحجم', 'sélectionnez la taille', '选择大小', 'Selecciona el tamaño'),
(678, 'one-fourth', 'One-fourth', 'এক চতুর্থাংশ', 'ربع', 'un quart', '四分之一', 'Un cuarto'),
(679, 'one-third', 'One-third', 'এক-তৃতীয়াংশ', 'الثلث', 'un tiers', '三分之一', 'Un tercio'),
(680, 'half', 'Half', 'অর্ধেক', 'نصف', 'moitié', '半', 'Medio'),
(681, 'two-third', 'Two-third', 'দুই-তৃতীয়াংশ', 'ثلثي', 'deux tiers', '三分之二', 'Dos tercios'),
(682, 'three-fourth', 'Three-fourth', 'তিন-চতুর্থাংশ', 'ثلاثة ارباع', 'trois quart', '四分之三', 'Tres cuartos'),
(683, 'full', 'Full', 'সম্পূর্ণ', 'كامل', 'plein', '充分', 'Completo'),
(684, 'select_type', 'Select Type', 'নির্বাচন টাইপ', 'اختر صنف', 'sélectionner le genre', '选择类型', 'Seleccione tipo'),
(685, 'content', 'Content', 'সন্তুষ্ট', 'محتوى', 'contenu', '内容', 'Contenido'),
(686, 'widget', 'Widget', 'উইজেট', 'القطعة', 'un widget', '小部件', 'Widget'),
(687, 'product_categories', 'Product Categories', 'পণের ধরন', 'أصناف المنتجات', 'catégories de produits', '产品类别', 'Categorías de Producto'),
(688, 'advance_search', 'Advance Search', 'অগ্রিম অনুসন্ধান', 'بحث متقدم', 'recherche avancée', '高级搜索', 'Búsqueda avanzada'),
(689, 'special_blogs', 'Special Blogs', 'বিশেষ ব্লগ', 'بلوق الخاصة', 'blogs spéciaux', '特殊的博客', 'Blogs especiales'),
(690, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'অনধিক 4 কলাম!', 'لم يكن أكثر من 4 أعمدة!', 'pas plus de 4 colonnes!', '不超过4列！', '¡No más de 4 columnas!'),
(691, 'popular', 'Popular', 'জনপ্রিয়', 'شعبي', 'populaire', '流行', 'Popular '),
(692, 'deals', 'Deals', 'প্রতিষ্ঠান', 'صفقات', 'offres', '交易', 'Ofertas'),
(693, 'page_code', 'Page Code', 'পাতা কোড', 'كود الصفحة', 'code de la page', '网页代码', 'Código de página'),
(694, 'page_tags', 'Page Tags', 'পাতা ট্যাগ', 'علامات الصفحة', 'balises de page', '标签页', 'Etiquetas de página'),
(695, 'column', 'Column', 'স্তম্ভ', 'عمود', 'colonne', '柱', 'Columna'),
(696, '', '', '', '', '', '', ''),
(697, 'most_sold', 'Most Sold', 'সবথেকে বেশি বিক্রিত', 'الأكثر مبيعا', 'les plus vendus', '大部分销往', 'Más vendido'),
(698, 'product_image', 'Product Image', 'পণ্য ইমেজ', 'صورة المنتج', 'image du produit', '产品形象', 'Imagen del producto'),
(699, 'digital_logo_image', 'Digital Logo Image', 'ডিজিটাল লোগো ইমেজ', 'صورة الشعار الرقمية', 'logo image numérique', '数字标识图像', 'Imagen de logotipo digital'),
(700, 'category_image', 'Category Image', 'বিভাগ ইমেজ', 'صورة الفئة', 'catégorie d\'image', '类别形象', 'Imagen de categoría'),
(701, 'sub_category_image', 'Sub Category Image', 'সাব বিভাগ চিত্র', 'صورة الفئة الفرعية', 'Image sous catégorie', '子类别形象', 'Imagen de subcategoría'),
(702, 'brand_image', 'Brand Image', 'প্রতিকি ছবি', 'صورة العلامة التجارية', 'image de marque', '品牌形象', 'Imagen de marca'),
(703, 'blog_image', 'Blog Image', 'ব্লগ ছবি', 'صور بلوق', 'blog image', '博客图片', 'Imagen del blog'),
(704, 'banner_image', 'Banner Image', 'ব্যানার ইমেজ', 'صورة لافتة', 'image de la bannière', '横幅图片', 'Imagen de banner'),
(705, 'user_image', 'User Image', 'ব্যবহারকারী ইমেজ', 'صورة المستخدم', 'image de l\'utilisateur', '用户图像', 'Imagen de usuario'),
(706, 'vendor_logo_image', 'Vendor Logo Image', 'বিক্রেতার লোগো ইমেজ', 'بائع صورة الشعار', 'fournisseur image du logo', '供应商的logo图片', 'Imagen del logotipo del proveedor'),
(707, 'vendor_banner_image', 'Vendor Banner Image', 'বিক্রেতার ব্যানার ইমেজ', 'بائع راية صورة', 'image de la bannière de fournisseur', '供应商横幅图片', 'Imagen de banner de proveedor'),
(708, 'membership_image', 'Membership Image', 'সদস্য ইমেজ', 'صورة عضوية', 'image de l\'adhésion', '会员图像', 'Imagen de membresía'),
(709, 'slides_image', 'Slides Image', 'স্লাইড ইমেজ', 'صورة الشرائح', 'l\'image des diapositives', '幻灯片图像', 'Imagen de diapositivas'),
(710, 'select_default_image', 'Select Default Image', 'নির্বাচন ডিফল্ট ইমেজ', 'الصورة الافتراضية مختارة', 'image par défaut, sélectionnez', '选择默认图像', 'Seleccionar imagen predeterminada'),
(711, 'product_image_updated!', 'Product Image Updated!', 'পণ্য ইমেজ আপডেট!', 'صورة المنتج تجديد!', 'image du produit mis à jour!', '产品形象更新了！', 'Imagen del producto actualizada!'),
(712, 'digital_logo_image_updated!', 'Digital Logo Image Updated!', 'ডিজিটাল লোগো ইমেজ আপডেট!', 'صورة الشعار الرقمية تجديد!', 'logo image numérique mis à jour!', '数字标识图像更新！', 'Imagen del logotipo digital actualizada!'),
(713, 'category_image_updated!', 'Category Image Updated!', 'বিভাগ ইমেজ আপডেট!', 'الفئة صورة تجديد!', 'catégorie d\'image mis à jour!', '类别图像更新！', 'Imagen de categoría actualizada!'),
(714, 'sub_category_image_updated!', 'Sub Category Image Updated!', 'সাব বিভাগ ইমেজ আপডেট!', 'صورة الفئة الفرعية تجديد!', 'Image sous catégorie mise à jour!', '子类图像更新！', 'Imagen de subcategoría actualizada'),
(715, 'brand_image_updated!', 'Brand Image Updated!', 'ব্র্যান্ড ইমেজ আপডেট!', 'صورة العلامة التجارية تجديد!', 'image de marque mis à jour!', '品牌形象更新了！', 'Imagen de marca actualizada!'),
(716, 'blog_image_updated!', 'Blog Image Updated!', 'ব্লগ ইমেজ আপডেট!', 'صورة بلوق تجديد!', 'l\'image de blog mis à jour!', '博客更新的形象！', 'Imagen del blog actualizada'),
(717, 'banner_image_updated!', 'Banner Image Updated!', 'ব্যানার ইমেজ আপডেট!', 'راية صورة تجديد!', 'banner image mise à jour!', '横幅图像更新！', '¡Imagen de banner actualizada!'),
(718, 'user_image_updated!', 'User Image Updated!', 'ব্যবহারকারী ইমেজ আপডেট!', 'صورة المستخدم تجديد!', 'image de l\'utilisateur mis à jour!', '用户图像更新！', 'Imagen de usuario actualizada!'),
(719, 'vendor_logo_image_updated!', 'Vendor Logo Image Updated!', 'বিক্রেতার লোগো ইমেজ আপডেট!', 'بائع صورة شعار تجديد!', 'fournisseur image du logo mis à jour!', '供应商的logo图片更新！', 'Imagen del logotipo del proveedor ¡Actualizada!'),
(720, 'vendor_banner_image_updated!', 'Vendor Banner Image Updated!', 'বিক্রেতার ব্যানার ইমেজ আপডেট!', 'بائع راية صورة تجديد!', 'image de la bannière du fournisseur mis à jour!', '供应商横幅图像更新！', 'Imagen del banner del proveedor ¡Actualizada!'),
(721, 'membership_image_updated!', 'Membership Image Updated!', 'সদস্য ইমেজ আপডেট!', 'صورة عضوية تجديد!', 'image de l\'adhésion mis à jour!', '会员图像更新！', '¡Imagen de membresía actualizada!'),
(722, 'slides_image_updated!', 'Slides Image Updated!', 'স্লাইড ইমেজ আপডেট!', 'الشرائح صورة تجديد!', 'l\'image des diapositives mis à jour!', '幻灯片图像更新！', 'Diapositivas Imagen actualizada!'),
(723, 'manage_activation', 'Manage Activation', 'সক্রিয়করণ পরিচালনা', 'إدارة التنشيط', 'gérer l\'activation', '管理激活', 'Gestionar activación'),
(724, 'business_related', 'Business Related', 'ব্যবসা সংক্রান্ত', 'الأعمال التجارية ذات الصلة', 'lié aux affaires', '业务相关', 'Relacionado al negocio'),
(725, 'physical_product_activation', 'Physical Product Activation', 'শারীরিক পণ্য অ্যাক্টিভেশন', 'تنشيط المنتج المادي', 'activation physique du produit', '实物产品激活', 'Activación física del producto'),
(726, 'physical_product_enabled', 'Physical Product Enabled', 'শারীরিক পণ্য সক্রিয়', 'تمكين منتج مادي', 'produit physique activé', '实物产品启用', 'Producto físico habilitado'),
(727, 'physical_product_disabled', 'Physical Product Disabled', 'শারীরিক পণ্যটি অক্ষম', 'منتج مادي تعطيل', 'produit physique désactivé', '实物产品禁用', 'Producto físico deshabilitado');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`, `lang_7`) VALUES
(728, 'digital_product_activation', 'Digital Product Activation', 'ডিজিটাল পণ্য অ্যাক্টিভেশন', 'تنشيط المنتج الرقمي', 'l\'activation du produit numérique', '数码产品激活', 'Activación de producto digital'),
(729, 'digital_product_enabled', 'Digital Product Enabled', 'ডিজিটাল পণ্য সক্রিয়', 'تمكين المنتجات الرقمية', 'produit numérique activé', '数码产品启用', 'Producto digital habilitado'),
(730, 'digital_product_disabled', 'Digital Product Disabled', 'ডিজিটাল পণ্য নিষ্ক্রিয়', 'المنتجات الرقمية تعطيل', 'produit numérique désactivé', '数码产品禁用', 'Producto digital deshabilitado'),
(731, 'vendor_system_activation', 'Vendor System Activation', 'বিক্রেতার সিস্টেম সক্রিয়করণের', 'تفعيل نظام بائع', 'l\'activation du système du fournisseur', '供应商系统的激活', 'Activación del sistema de proveedores'),
(732, 'vendor_system_enabled', 'Vendor System Enabled', 'বিক্রেতার সিস্টেম সক্রিয়', 'تمكين نظام بائع', 'système de fournisseur activé', '供应商的系统中启用', 'Sistema de proveedor habilitado'),
(733, 'vendor_system_disabled', 'Vendor System Disabled', 'বিক্রেতার সিস্টেম নিষ্ক্রিয়', 'تعطيل نظام بائع', 'système fournisseur désactivé', '供应商系统禁用', 'Sistema de proveedor deshabilitado'),
(734, 'payment_related', 'Payment Related', 'পেমেন্ট সম্পর্কিত', 'دفع ذات الصلة', 'paiement connexes', '支付相关', 'Pago relacionado'),
(735, 'paypal_payment_activation', 'Paypal Payment Activation', 'পেপ্যাল ​​অ্যাক্টিভেশন', 'تفعيل الدفع باي بال', 'activation de paiement paypal', '支付宝付款激活', 'Paypal Activación de pago'),
(736, 'paypal_payment_enabled', 'Paypal Payment Enabled', 'পেপাল পেমেন্ট সক্রিয়', 'تمكين الدفع باي بال', 'paiement paypal activé', '支付宝付款启用', 'Pago de PayPal habilitado'),
(737, 'paypal_payment_disabled', 'Paypal Payment Disabled', 'পেপাল পেমেন্ট নিষ্ক্রিয়', 'الدفع باي بال تعطيل', 'paiement paypal désactivé', '支付宝付款禁用', 'Pago de PayPal deshabilitado'),
(738, 'stripe_payment_activation', 'Stripe Payment Activation', 'ডোরা পেমেন্ট অ্যাক্টিভেশন', 'تفعيل دفع شريط', 'activation de paiement de bande', '条纹支付激活', 'Activación de pago de Stripe'),
(739, 'stripe_payment_enabled', 'Stripe Payment Enabled', 'ডোরা পেমেন্ট সক্রিয়', 'دفع شريط تمكين', 'paiement de bande activée', '启用条纹付款', 'Pago Stripe habilitado'),
(740, 'stripe_payment_disabled', 'Stripe Payment Disabled', 'ডোরা পেমেন্ট নিষ্ক্রিয়', 'دفع شريط تعطيل', 'paiement de bande désactivé', '条纹支付禁用', 'Pago Stripe deshabilitado'),
(741, 'cash_payment_activation', 'Cash Payment Activation', 'নগদ পেমেন্ট অ্যাক্টিভেশন', 'تفعيل الدفع نقدا', 'activation de paiement en espèces', '现金支付激活', 'Activación de pago en efectivo'),
(742, 'cash_payment_enabled', 'Cash Payment Enabled', 'নগদ পেমেন্ট সক্রিয়', 'الدفع نقدا تمكين', 'paiement en espèces a permis', '启用现金支付', 'Pago en efectivo habilitado'),
(743, 'cash_payment_disabled', 'Cash Payment Disabled', 'নগদ পেমেন্ট নিষ্ক্রিয়', 'الدفع نقدا تعطيل', 'paiement en espèces désactivé', '现金支付禁用', 'Pago en efectivo deshabilitado'),
(744, 'manage_business_settings', 'Manage Business Settings', 'ব্যবসা সেটিংস পরিচালনা', 'إدارة إعدادات الأعمال', 'gérer les paramètres d\'affaires', '管理业务设置', 'Administrar la configuración empresarial'),
(745, 'cash_payment', 'Cash Payment', 'নগদে টাকা প্রদান', 'دفع نقدا', 'paiement en espèces', '现金支付', 'Pago en efectivo'),
(746, 'paypal_payment', 'Paypal Payment', 'পেপ্যাল', 'دفع باي بال', 'Paiement PayPal', '支付宝付款', 'Pago PayPal'),
(747, 'paypal_email', 'Paypal Email', 'পেপ্যাল ​​ইমেইল', 'البريد الإلكتروني باي بال', 'paypal email', '贝宝电子邮件', 'Paypal Email'),
(748, 'paypal_account_type', 'Paypal Account Type', 'PayPal অ্যাকাউন্ট টাইপ', 'باي بال نوع الحساب', 'paypal type de compte', 'PayPal帐户类型', 'Tipo de cuenta de Paypal'),
(749, 'stripe_payment', 'Stripe Payment', 'ডোরা পেমেন্ট', 'دفع شريط', 'paiement de bande', '条纹支付', 'Pago Stripe'),
(750, 'stripe_secret_key', 'Stripe Secret Key', 'ডোরা গোপন চাবি', 'المفتاح السري الشريط', 'clé secrète bande', '条纹密钥', 'Stripe Secret Key'),
(751, 'stripe_publishable_key', 'Stripe Publishable Key', 'ডোরা প্রকাশযোগ্য কী', 'شريط مفتاح للنشر', 'stripe clé publiable', '条纹发布的关键', 'Clave de clave publicable'),
(752, 'currency_name', 'Currency Name', 'মুদ্রার নাম', 'اسم العملة', 'nom de la monnaie', '货币名称', 'Nombre de moneda'),
(753, 'currency_symbol', 'Currency Symbol', 'মুদ্রা প্রতীক', 'رمز العملة', 'symbole de la monnaie', '货币符号', 'Símbolo de moneda'),
(754, 'shipping_cost_type', 'Shipping Cost Type', 'শিপিং খরচ টাইপ', 'الشحن نوع التكلفة', 'Type de frais de port', '运输成本类型', 'Tipo de costo de envío'),
(755, 'product_wise', 'Product Wise', 'পণ্য জ্ঞানী', 'المنتج الحكمة', 'produit sage', '产品明智', 'Producto sabio'),
(756, 'fixed', 'Fixed', 'স্থির', 'ثابت', 'fixé', '固定', 'Fijo'),
(757, 'shipping_cost_(If_fixed)', 'Shipping Cost (If Fixed)', 'শিপিং খরচ (সংশোধন তাহলে)', 'تكلفة الشحن (إذا الثابتة)', 'frais de port (Si fixe)', '运输成本（如果固定）', 'Costo de envío (si es fijo)'),
(758, 'shipment_info', 'Shipment Info', 'চালানের তথ্য', 'معلومات الشحن', 'Information d\'expédition', '发货信息', 'Información de envío'),
(759, 'question', 'Question', 'প্রশ্ন', 'سؤال', 'question', '题', 'Pregunta'),
(760, 'answer', 'Answer', 'উত্তর', 'إجابة', 'répondre', '回答', 'Responder'),
(761, 'add_more_FAQs', 'Add More FAQs', 'আরো প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী যোগ', 'إضافة المزيد من الأسئلة الشائعة', 'ajouter plus de FAQs', '添加更多的常见问题解答', 'Agregar más preguntas frecuentes'),
(762, 'manage_payment_methods_&_shipment', 'Manage Payment Methods & Shipment', 'পেমেন্টের &amp; চালান পরিচালনা', 'إدارة وسائل الدفع والشحن', 'gérer les modes de paiement et l\'expédition', '管理付款方式及发货', 'Gestionar métodos de pago y envío'),
(763, 'payment_methods_settings', 'Payment Methods Settings', 'পেমেন্টের সেটিংস', 'ضبط وسائل الدفع', 'paramètres Modes de paiement', '付款方式设置', 'Configuración de métodos de pago'),
(764, 'paypal_settings', 'Paypal Settings', 'পেপাল সেটিংস', 'إعدادات باي بال', 'paramètres paypal', '贝宝设置', 'Configuraciones de Paypal'),
(765, 'stripe_settings', 'Stripe Settings', 'ডোরা সেটিংস', 'إعدادات شريط', 'les paramètres de bande', '条纹设置', 'Configuración de rayas'),
(766, 'shipment_settings', 'Shipment Settings', 'চালানের সেটিংস', 'ضبط شحنة', 'les paramètres d\'expédition', '出厂设置', 'Configuración de envío'),
(767, 'currency_settings', 'Currency Settings', 'মুদ্রা সেটিংস', 'إعدادات العملة', 'paramètres de devise', '货币设置', 'Configuraciones de moneda'),
(768, 'exchange_rate', 'Exchange Rate', 'বিনিময় হার', 'سعر الصرف', 'taux de change', '汇率', 'Tipo de cambio'),
(769, 'default', 'Default', 'ডিফল্ট', 'الافتراضي', 'défaut', '默认', 'Defecto'),
(770, 'exchange_rate_updated', 'Exchange Rate Updated', 'বিনিময় হার আপডেট', 'سعر الصرف تحديثها', 'taux de change mis à jour', '汇率更新', 'Tipo de cambio actualizado'),
(771, 'currency_published', 'Currency Published', 'মুদ্রা প্রকাশিত', 'العملة المنشورة', 'monnaie publié', '货币出版', 'Moneda publicada'),
(772, 'currency_unpublished', 'Currency Unpublished', 'মুদ্রা অপ্রকাশিত', 'عملة غير منشورة', 'monnaie inédite', '货币未公布', 'Moneda no publicada'),
(773, 'syncing..', 'Syncing..', 'সিঙ্ক ..', 'المزامنة ..', 'la synchronisation ..', '同步..', 'Sincronizando ..'),
(774, '!', '!', '!', '!', '!', '！', ''),
(775, 'sync', 'Sync', 'সুসংগত', 'مزامنة', 'synchroniser', '同步', 'Sincronización'),
(776, 'manage_faqs', 'Manage Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী পরিচালনা', 'إدارة الأسئلة المتكررة', 'gérer faqs', '管理常见问题解答', 'Administrar preguntas frecuentes '),
(777, 'manage_staffs', 'Manage Staffs', 'কর্মীরা পরিচালনা', 'إدارة الموظفين', 'gérer le personnel', '管理人员', 'Administrar personal'),
(778, 'add_staff', 'Add Staff', 'স্টাফ যোগ', 'إضافة الموظفين', 'ajouter du personnel', '增加员工', 'Agregar personal'),
(779, 'create_admin', 'Create Admin', 'অ্যাডমিন তৈরি', 'إنشاء المشرف', 'créer administrateur', '创建管理员', 'Crear administrador'),
(780, 'role', 'Role', 'ভূমিকা', 'دور', 'rôle', '角色', 'Papel'),
(781, 'edit_admin', 'Edit Admin', 'সম্পাদনা অ্যাডমিন', 'تحرير المشرف', 'modifier administrateur', '编辑管理', 'Editar administrador'),
(782, 'sddress', 'Sddress', 'sddress', 'sddress', 'sddress', 'sddress', 'Dirección'),
(783, 'Manage_roles', 'Manage Roles', 'ভূমিকা পরিচালনা', 'إدارة الأدوار', 'Gérer les rôles', '管理角色', 'Administrar roles '),
(784, 'add_role', 'Add Role', 'ভূমিকা যোগ', 'إضافة دور', 'ajouter rôle', '添加角色', 'Agregar rol'),
(785, 'create_role', 'Create Role', 'ভূমিকা তৈরি', 'إنشاء دور', 'créer rôle', '创建角色', 'Crear rol'),
(786, 'back_to_role_list', 'Back To Role List', 'ফিরে ভূমিকা লিস্টে', 'العودة إلى قائمة دور', 'Retour à la liste de rôles', '回到角色列表', 'Volver a la lista de roles'),
(787, 'edit_role', 'Edit Role', 'সম্পাদনা ভূমিকা', 'تحرير الدور', 'modifier rôle', '编辑角色', 'Editar rol'),
(788, 'permissions', 'Permissions', 'অনুমতি', 'أذونات', 'autorisations', '权限', 'Permisos'),
(789, 'manage_SEO', 'Manage SEO', 'এসইও পরিচালনা', 'إدارة كبار المسئولين الاقتصاديين', 'gérer SEO', 'SEO管理', 'Administrar SEO'),
(790, 'settings', 'Settings', 'সেটিংস', 'إعدادات', 'paramètres', '设置', 'Configuraciones'),
(791, 'social_network_reach', 'Social Network Reach', 'সামাজিক নেটওয়ার্ক নাগালের', 'الوصول إلى الشبكة الاجتماعية', 'la portée du réseau social', '社会网络覆盖', 'Alcance de redes sociales'),
(792, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'আলেক্সা ট্রাফিক মেট্রিক্স', 'مقاييس المرور اليكسا', 'alexa métriques de trafic', 'Alexa的流量指标', 'Alexa Traffic Metrics'),
(793, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'আলেক্সা ট্রাফিক গ্রাফ', 'الرسوم البيانية المرور اليكسا', 'graphes de trafic alexa', 'Alexa的流量图', 'Gráficos de tráfico de Alexa'),
(794, 'search_index', 'Search Index', 'খোঁজের', 'فهرس البحث', 'index de recherche', '搜索索引', 'Índice de búsqueda'),
(795, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'আলেক্সা ট্রাফিক র্যাঙ্ক', 'اليكسا رتبة المرور', 'alexa rang du trafic', 'Alexa排名', 'Alexa Traffic Rank'),
(796, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'সার্চ ইঞ্জিন অপ্টিমাইজেশান পরিচালনা', 'إدارة محرك البحث الأمثل', 'gérer l\'optimisation des moteurs de recherche', '管理搜索引擎优化', 'Administrar la optimización del motor de búsqueda'),
(797, 'keywords', 'Keywords', 'কীওয়ার্ড', 'الكلمات المفتاحية', 'mots clés', '关键字', 'Palabras clave'),
(798, 'revisit_after', 'Revisit After', 'পরে পরিদর্শন', 'إعادة النظر بعد', 'revoir après', '后重温', 'Volver a visitar después '),
(799, 'sitemap_link', 'Sitemap Link', 'সাইটম্যাপ লিংক', 'رابط خريطة الموقع', 'lien sitemap', '网站地图链接', 'Enlace del mapa del sitio'),
(800, 'admin_login_logo', 'Admin Login Logo', 'অ্যাডমিন লগইন লোগো', 'المشرف شعار تسجيل الدخول', 'admin login logo', '管理员登录标识', 'Logotipo de inicio de sesión de administrador'),
(801, 'home_top_logo', 'Home Top Logo', 'হোম শীর্ষ লোগো', 'المنزل أعلى الشعار', 'accueil top logo', '家顶级标志', 'Inicio Top Logo'),
(802, 'home_bottom_logo', 'Home Bottom Logo', 'হোম নীচে লোগো', 'منزل أسفل الشعار', 'fond de la maison logo', '家庭底部标志', 'Inicio Bottom Logo'),
(803, 'manage_profile', 'Manage Profile', 'প্রোফাইল পরিচালনা', 'إدارة الملف الشخصي', 'gérer le profil', '管理个人资料', 'Administrar perfil'),
(804, 'manage_details', 'Manage Details', 'বিবরণ পরিচালনা', 'إدارة تفاصيل', 'gérer les détails', '细节管理', 'Administrar detalles'),
(805, 'profile_updated!', 'Profile Updated!', 'প্রোফাইল আপডেট!', 'تحديث الملف الشخصي!', 'Profil mis à jour!', '个人资料已更新！', '¡Perfil actualizado!'),
(806, 'update_profile', 'Update Profile', 'প্রফাইল হালনাগাদ', 'تحديث الملف', 'mettre à jour le profil', '更新个人信息', 'Actualización del perfil'),
(807, 'change_password', 'Change Password', 'পাসওয়ার্ড পরিবর্তন', 'تغيير كلمة السر', 'changer le mot de passe', '更改密码', 'Cambia la contraseña'),
(808, 'current_password', 'Current Password', 'বর্তমান পাসওয়ার্ড', 'كلمة السر الحالية', 'Mot de passe actuel', '当前密码', 'contraseña actual'),
(809, 'new_password*', 'New Password*', 'নতুন পাসওয়ার্ড *', 'كلمة السر الجديدة*', 'nouveau mot de passe*', '新密码*', 'Nueva contraseña*'),
(810, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'تأكيد كلمة المرور', 'Confirmez le mot de passe', '确认密码', 'Confirmar contraseña'),
(811, 'password_updated!', 'Password Updated!', 'পাসওয়ার্ড আপডেট করা!', 'تم تحديث كلمة السر!', 'Mot de passe mis à jour!', '密码更新！', '¡Contraseña actualiza!'),
(812, 'update_password', 'Update Password', 'আপডেটের পাসওয়ার্ড', 'كلمة التحديث', 'mise à jour le mot de passe', '更新密码', 'Actualiza contraseña'),
(813, 'password_mismatched', 'Password Mismatched', 'পাসওয়ার্ড সাথে অমিল', 'كلمة المرور غير متطابقة', 'mot de passe dépareillés', '密码不匹配', 'Contraseña no coincidente '),
(814, 'incorrect_password!', 'Incorrect Password!', 'ভুল পাসওয়ার্ড৤!', 'كلمة مرور غير صحيحة!', 'mot de passe incorrect!', '密码不正确！', '¡Contraseña incorrecta!'),
(815, 'language_name', 'Language Name', 'ভাষার নাম', 'اسم اللغة', 'Nom de la langue', '语言名称', 'Nombre del lenguaje'),
(816, 'language_icon', 'Language Icon', 'ভাষা আইকন', 'رمز لغة', 'icône de langue', '语言图标', 'Ícono de idioma'),
(817, 'select_language_icon', 'Select Language Icon', 'ভাষা নির্বাচন আইকন', 'رمز لغة حدد', 'Icône de sélection de la langue', '选择语言图标', 'Seleccionar icono de idioma'),
(818, 'secret', 'Secret', 'গোপন', 'سر', 'secret', '秘密', 'Secreto'),
(819, 'application_name', 'Application Name', 'আবেদনের নাম', 'اسم التطبيق', 'Nom de l\'application', '应用名称', 'Nombre de la aplicación'),
(820, 'client', 'Client', 'মক্কেল', 'زبون', 'client', '客户', 'Cliente'),
(821, 'client_secret', 'Client Secret', 'ক্লায়েন্ট সিক্রেট', 'سر العميل', 'secret client', '客户端密钥', 'Secreto del cliente'),
(822, 'redirect', 'Redirect', 'পুনর্নির্দেশ', 'إعادة توجيه', 'réorienter', '重定向', 'Redirigir'),
(823, 'key', 'Key', 'চাবি', 'مفتاح', 'clé', '键', 'Llave'),
(824, 'visit_my_homepage', 'Visit My Homepage', 'আমার হোমপেজে যান', 'زيارة موقعي', 'visiter ma page d\'accueil', '访问我的主页', 'Visita mi página de inicio'),
(825, 'membership_type', 'Membership Type', 'মেম্বারশিপ টাইপ', 'نوع العضوية', 'Type d\'adhésion', '会员类型', 'tipo de membresía'),
(826, 'membership_details', 'Membership Details', 'সদস্য বিবরণ', 'تفاصيل العضوية', 'les détails d\'adhésion', '会员资料，', 'Detalles de membresía'),
(827, 'membership_expiration', 'Membership Expiration', 'সদস্য মেয়াদপূর্তির', 'انتهاء عضوية', 'expiration de l\'adhésion', '会员到期', 'Vencimiento de membresía'),
(828, 'total_uploaded_products', 'Total Uploaded Products', 'মোট আপলোড পণ্য', 'مجموع المنتجات التي تم تحميلها.', 'produits totaux téléchargés', '总上传产品', 'Total de productos cargados'),
(829, 'uploaded_published_products', 'Uploaded Published Products', 'আপলোড প্রকাশিত পণ্য', 'منتجات المنشورة التي تم تحميلها', 'produits publiés téléchargés', '上传发布的产品', 'Productos publicados cargados'),
(830, 'vendorship_timespan', 'Vendorship Timespan', 'vendorship timespan', 'vendorship زمنية', 'vendorship timespan', 'vendorship时间跨度', 'Tiempo de entrega'),
(831, 'remaining', 'Remaining', 'অবশিষ্ট', 'المتبقية', 'restant', '其余', 'Restante'),
(832, 'paid_by_customers', 'Paid By Customers', 'গ্রাহকদের দ্বারা দেওয়া', 'المدفوعة من قبل العملاء', 'payés par les clients', '由客户支付', 'Pagado por los clientes'),
(833, 'due_from_admin', 'Due From Admin', 'অ্যাডমিন থেকে কারণে', 'بسبب من المشرف', 'en raison de l\'administrateur', '应收管理', 'Debido del administrador'),
(834, 'payment_settings', 'Payment Settings', 'পেমেন্ট সেটিংস', 'إعدادات الدفع', 'paramètres de paiement', '付款设置', 'Configuraciones de pago'),
(835, 'upgrade_package', 'Upgrade Package', 'আপগ্রেড প্যাকেজ', 'حزمة الترقية', 'package de mise à niveau', '升级包', 'Paquete de actualización'),
(836, 'manage_your_product_stock', 'Manage Your Product Stock', 'আপনার পণ্য স্টক পরিচালনা', 'إدارة المخزون المنتج الخاص بك', 'gérer votre stock de produits', '管理你的产品库存', 'Administre su stock de productos'),
(837, 'select_category', 'Select Category', 'বিভাগ নির্বাচন করুন', 'اختر الفئة', 'Choisir une catégorie', '选择类别', 'selecciona una categoría'),
(838, 'choose_product', 'Choose Product', 'পণ্য চয়ন', 'اختيار المنتج', 'choisir le produit', '选择产品', 'Elegir producto'),
(839, 'manage_public_profile_slider', 'Manage Public Profile Slider', 'সর্বজনীন প্রোফাইল স্লাইডার পরিচালনা', 'إدارة المنزلق ملفه الشخصي', 'gérer le profil curseur publique', '管理的公众形象滑块', 'Administrar control deslizante de perfil público'),
(840, 'home_page_style', 'Home Page Style', 'হোম পৃষ্ঠা শৈলী', 'أسلوب الصفحة الرئيسية', 'la page d\'accueil de style', '主页风格', 'Estilo de página de inicio'),
(841, 'manage_site', 'Manage Site', 'সাইট পরিচালনা', 'إدارة الموقع', 'gérer le site', '管理网站', 'Administrar sitio'),
(842, 'vendor_images', 'Vendor Images', 'ভেন্ডর চিত্র', 'الصور مورد معين لل', 'images fournisseurs', '厂商图片', 'Imágenes del vendedor'),
(843, 'social_media', 'Social Media', 'সামাজিক মাধ্যম', 'وسائل التواصل الاجتماعي', 'média sociaux', '社交媒体', 'Redes sociales'),
(844, 'SEO', 'SEO', 'এসইও', 'كبار المسئولين الاقتصاديين', 'référencement', '搜索引擎优化', 'SEO'),
(845, 'select_images', 'Select Images', 'চিত্র নির্বাচন করুন', 'صور مختارة', 'sélectionner les images', '选择图片', 'Seleccionar imagenes'),
(846, 'suggested_width', 'Suggested Width', 'প্রস্তাবিত প্রস্থ', 'عرض المقترح', 'largeur suggérée', '建议宽度', 'Ancho Sugerido'),
(847, 'height', 'Height', 'উচ্চতা', 'ارتفاع', 'la taille', '高度', 'Altura'),
(848, 'cover_photo', 'Cover Photo', 'প্রচ্ছদ ছবি', 'صورة الغلاف', 'photo de couverture', '封面照片', 'Foto de cubierta'),
(849, 'select_photo', 'Select Photo', 'ছবি নির্বাচন করুন', 'اختر الصورة', 'select photo', '选择照片', 'Seleccione Foto'),
(850, 'manage_payment_receiving_settings', 'Manage Payment Receiving Settings', 'পেমেন্ট পাওয়ার সেটিংস পরিচালনা', 'إدارة إعدادات دفع المتلقي', 'gérer les paramètres de réception de paiement', '管理支付接收设置', 'Administrar la configuración de recepción de pagos'),
(851, 'upgrade', 'Upgrade', 'আপগ্রেড', 'تطوير', 'surclassement', '升级', 'Potenciar'),
(852, 'maximum_product', 'Maximum Product', 'সর্বাধিক পণ্য', 'الحد الأقصى المنتج', 'produit maximale', '产品最大', 'Producto maximo'),
(853, 'about', 'About', 'সম্বন্ধে', 'حول', 'sur', '关于', 'Acerca de'),
(854, 'oops', 'Oops', 'ওহো', 'عفوا', 'Oops', '哎呀', 'Ups'),
(855, 'the_page_you_requested_was_not_found', 'The Page You Requested Was Not Found', 'আপনার অনুরোধ পাতা পাওয়া যায় না', 'الصفحة المطلوبة غير متوفرة', 'La page que vous avez demandée n\'a pas été trouvée', '未找到您所请求的页面', 'La página que solicitó no se encontró'),
(856, 'back_to_home', 'Back To Home', 'বাড়িতে ফিরে যাও', 'العودة إلى المنزل', 'de retour à la maison', '返回首页', 'De vuelta a casa'),
(857, 'browse', 'Browse', 'ব্রাউজ', 'تصفح', 'Feuilleter', '浏览', 'Vistazo'),
(858, 'sort_by', 'Sort By', 'ক্রমানুসার', 'ترتيب حسب', 'Trier par', '排序方式', 'Ordenar por'),
(859, 'price_low_to_high', 'Price Low To High', 'মূল্য কম থেকে', 'السعر على ارتفاع منخفض', 'prix croissant', '价格从低到高', 'Precios de barato a caro'),
(860, 'price_high_to_low', 'Price High To Low', 'মূল্য থেকে কম', 'السعر الاعلى الى الادنى', 'prix décroissant', '价格高到低', 'Precio mayor a menor'),
(861, 'oldest', 'Oldest', 'প্রবীণতম', 'أقدم', 'la plus ancienne', '最老的', 'Más antiguo'),
(862, 'newest', 'Newest', 'নতুন', 'أحدث', 'le plus récent', '最新', 'El más nuevo'),
(863, 'sold_by_:', 'Sold By :', 'বিক্রিত :', 'تم بيعها من قبل :', 'vendu par :', '所售 ：', 'Vendido por :'),
(864, 'price_:', 'Price :', 'মূল্য:', 'السعر :', 'prix :', '价钱 ：', 'Precio:'),
(865, 'discount:_', 'Discount: ', 'ছাড়: ', 'خصم: ', 'remise: ', '折扣： ', 'Descuento:'),
(866, '_available', ' Available', ' সহজলভ্য', ' متاح', ' disponible', ' 可用的', 'Disponible'),
(867, '_add_to_wishlist', ' Add To Wishlist', ' চাহিদাপত্রে যোগ করা', ' إضافة إلى سلة', ' ajouter à la liste de souhaits', ' 加入收藏', 'Añadir a la lista de deseos'),
(868, '_compare', ' Compare', ' তুলনা করা', ' قارن', ' comparer', ' 比较', 'Comparar'),
(869, 'sold_category_of_vendor', 'Sold Category Of Vendor', 'বিক্রেতার বিভাগ বিক্রি', 'فئة بيعها من المورد', 'catégorie vendu du vendeur', '供应商出售类', 'Categoría de vendedor vendida'),
(870, 'recent', 'Recent', 'সাম্প্রতিক', 'الأخيرة', 'récent', '最近', 'Reciente'),
(871, 'our_vendors_location', 'Our Vendors Location', 'আমাদের বিক্রেতারা অবস্থান', 'البائعين لدينا موقع', 'notre emplacement des fournisseurs', '我们的供应商的位置', 'Nuestra ubicación de vendedores'),
(872, 'search_vendors', 'Search Vendors', 'অনুসন্ধান বিক্রেতারা', 'الباعة البحث', 'les fournisseurs de recherche', '搜索厂商', 'Buscar vendedores'),
(873, 'go', 'Go', 'যাওয়া', 'اذهب', 'aller', '走', 'Vamos'),
(874, 'our_vendors', 'Our Vendors', 'আমাদের বিক্রেতারা', 'موردينا', 'nos fournisseurs', '我们的供应商', 'Nuestros vendedores'),
(875, 'message_sent!', 'Message Sent!', 'বার্তা পাঠানো!', 'تم الارسال!', 'message envoyé!', '消息发送！', '¡Mensaje enviado!'),
(876, 'incorrect_captcha!', 'Incorrect Captcha!', 'ভুল ক্যাপচা!', 'كلمة التحقق غير صحيح!', 'Captcha incorrecte!', '验证码不正确！', '¡CAPTCHA incorrecto!'),
(877, 'about_us', 'About Us', 'আমাদের সম্পর্কে', 'معلومات عنا', 'à propos de nous', '关于我们', 'Sobre nosotros'),
(878, 'contact_form', 'Contact Form', 'যোগাযোগ ফর্ম', 'نموذج الاتصال', 'formulaire de contact', '联系表', 'Formulario de contacto'),
(879, 'sending..', 'Sending..', 'পাঠানোর ..', 'إرسال..', 'envoi..', '发送..', 'Enviando..'),
(880, 'send_message', 'Send Message', 'বার্তা পাঠান', 'إرسال رسالة', 'envoyer le message', '发信息', 'Enviar mensaje'),
(881, 'enter_valid_email_address', 'Enter Valid Email Address', 'বৈধ ই-মেইল ঠিকানা লিখুন', 'أدخل عنوان بريد إلكتروني صالح', 'entrez l\'adresse e-mail valide', '输入有效电子邮件地址', 'Ingrese una dirección de correo electrónico válida'),
(882, 'message_sent_successfully', 'Message Sent Successfully', 'বার্তাটি সফলভাবে পাঠানো', 'الرسالة أرسلت بنجاح', 'message envoyé avec succès', '消息发送成功', 'Mensaje enviado con éxito'),
(883, 'incorrect_information!Check agian', 'Incorrect Information!Check Agian', 'ভুল তথ্য! চেক ইন করুন', 'معلومات غير صحيحة! تحقق في', 'des informations incorrectes! Arrivée', '不正确的信息！入住', 'Información incorrecta! Compruebe de nuevo'),
(884, 'this_filed_is_required!', 'This Filed Is Required!', 'এই মামলা দায়ের করা প্রয়োজন বোধ করা হয়!', 'هذه المقدمة هو مطلوب!', 'ce dépôt est nécessaire!', '该申请要求！', '¡Este archivo es obligatorio!'),
(885, 'frequently_asked_questions', 'Frequently Asked Questions', 'সচরাচর জিজ্ঞাস্য', 'أسئلة مكررة', 'Questions fréquemment posées', '经常问的问题', 'Preguntas frecuentes'),
(886, 'not_a_member_yet_?', 'Not A Member Yet ?', 'এখনো সদস্য নন ?', 'لست عضوا بعد ؟', 'Pas encore membre ?', '还不是会员？', 'No eres miembro todavía ?'),
(887, 'sign_up_now!', 'Sign Up Now!', 'এখন সাইন আপ!', 'أفتح حساب الأن!', 's\'inscrire maintenant!', '立即注册！', '¡Regístrate ahora!'),
(888, 'forget_your_password_?', 'Forget Your Password ?', 'আপনার পাসওয়ার্ড ভুলে গেছেন ?', 'نسيت كلمة المرور ؟', 'Mot de passe oublié ?', '忘记密码 ？', 'Olvidaste tu contraseña ?'),
(889, 'sign_in_with_facebook', 'Sign In With Facebook', 'ফেসবুকে সাইন - ইন করুন', 'قم بتسجيل الدخول باستخدام الفيسبوك', 'Connectez-vous avec Facebook', '请用facebook', 'Iniciar sesión usando Facebook'),
(890, 'sign_in_with_google', 'Sign In With Google', 'গুগল সাইন ইন', 'تسجيل الدخول مع جوجل', 'connectez-vous avec Google', '在与谷歌', 'Inicia sesión con Google'),
(891, 'submit', 'Submit', 'জমা', 'عرض', 'soumettre', '提交', 'Enviar'),
(892, 'already_a_member_?_click_to_', 'Already A Member ? Click To ', 'ইতিমধ্যে সদস্য? </font><font>ক্লিক করুন', 'عضوا فعلا ؟ </font><font>انقر ل', 'Déjà membre ? </font><font>cliquez pour', '已经是会员 ？</font><font>点击', 'Ya eres usuario ? Haga clic para'),
(893, 'as_customer', 'As Customer', 'গ্রাহক হিসাবে', 'كما العملاء', 'en tant que client', '为客户', 'Como cliente'),
(894, '_or_', ' Or ', ' অথবা ', ' أو ', ' ou ', ' 要么 ', 'O'),
(895, 'sign_up', 'Sign Up', 'নিবন্ধন করুন', 'سجل', 's\'inscrire', '注册', 'Regístrate'),
(896, 'as_vendor', 'As Vendor', 'বিক্রেতা হিসাবে', 'كما بائع', 'en tant que vendeur', '（作为卖方）', 'Como vendedor'),
(897, 'registering..', 'Registering..', 'নিবন্ধনের ..', 'تسجيل ..', 'enregistrement..', '注册..', 'Registrando ..'),
(898, 'register', 'Register', 'নিবন্ধন', 'تسجيل', 'registre', '寄存器', 'Registrarse'),
(899, 'already_a_vendor_?_click_to_', 'Already A Vendor ? Click To ', 'ইতিমধ্যে একটি বিক্রেতা? </font><font>ক্লিক করুন', 'بالفعل بائع؟ </font><font>انقر ل', 'déjà un fournisseur? </font><font>cliquez pour', '已供应商？</font><font>点击', '¿Ya eres un vendedor? Haga clic para'),
(900, 'not_a_member_yet_?_click_to_', 'Not A Member Yet ? Click To ', 'এখনো সদস্য নন ? </font><font>ক্লিক করুন', 'لست عضوا بعد ؟ </font><font>انقر ل', 'Pas encore membre ? </font><font>cliquez pour', '还不是会员？</font><font>点击', 'No eres miembro todavía ? Haga clic para'),
(901, 'back_to_login', 'Back To Login', 'প্রবেশ করতে পেছান', 'العودة لتسجيل الدخول', 'retour connexion', '回到登录', 'Atrás para iniciar sesión'),
(902, 'reset_compare_list', 'Reset Compare List', 'তালিকা তুলনা রিসেট', 'إعادة تعيين قائمة المقارنة', 'réinitialiser la liste de comparaison', '复位对比清单', 'Restablecer lista de comparación'),
(903, 'choose_a_product', 'Choose A Product', 'একটি পণ্য চয়ন', 'اختيار المنتج', 'choisir un produit', '选择一个产品', 'Elige un producto'),
(904, 'my_cart', 'My Cart', 'আমার ট্রলি', 'سلتي', 'mon panier', '我的车', 'Mi carrito'),
(905, '1', '1', '1', '1', '1', '1', ''),
(906, 'orders', 'Orders', 'আদেশ', 'أوامر', 'ordres', '命令', 'Pedidos'),
(907, '2', '2', '2', '2', '2', '2', ''),
(908, 'delivery_address', 'Delivery Address', 'সরবরাহের ঠিকানা', 'عنوان التوصيل', 'adresse de livraison', '邮寄地址', 'Dirección de entrega'),
(909, '3', '3', '3', '3', '3', '3', ''),
(910, 'payments_options', 'Payments Options', 'পেমেন্ট অপশন', 'خيارات الدفع', 'Options de paiement', '支付选项', 'Opciones de pago'),
(911, 'cancel_order', 'Cancel Order', 'আদেশ বাতিল', 'الغاء الطلب', 'annuler la commande', '取消订单', 'Cancelar orden'),
(912, 'place_order', 'Place Order', 'জায়গা অর্ডার', 'أمر مكان', 'Passer la commande', '下订单', 'Realizar pedido'),
(913, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'ملفي الشخصي', 'mon profil', '我的简历', 'Mi perfil'),
(914, 'wishlist', 'Wishlist', 'ইচ্ছেতালিকা', 'مفضلة', 'Liste de souhaits', '愿望清单', 'Lista de deseos'),
(915, 'unit_price', 'Unit Price', 'একক দাম', 'سعر الوحدة', 'prix unitaire', '单价', 'Precio unitario'),
(916, 'change_choices', 'Change Choices', 'পরিবর্তন পছন্দ', 'خيارات التغيير', 'choix de changement', '变化的选择', 'Cambiar opciones'),
(917, 'shopping_cart', 'Shopping Cart', 'বাজারের ব্যাগ', 'عربة التسوق', 'Panier', '购物车', 'Carrito de compras'),
(918, 'coupon_discount', 'Coupon Discount', 'কুপন ডিসকাউন্ট', 'قسيمة خصم', 'bon de réduction', '优惠券折扣', 'Descuento del cupón'),
(919, 'enter_your_coupon_code_if_you_have_one', 'Enter Your Coupon Code If You Have One', 'যদি কেউ থাকেন আপনার কুপন কোড লিখুন', 'إدخال رمز القسيمة إذا كان لديك واحدة', 'entrez votre code de coupon si vous en avez un', '输入您的优惠券代码，如果你有一个', 'Ingrese su código de cupón si tiene uno'),
(920, 'apply_coupon', 'Apply Coupon', 'কুপন প্রয়োগ করুন', 'تطبيق القسيمة', 'Appliquer Coupon', '申请优惠券', 'Aplicar cupón'),
(921, 'postcode/ZIP', 'Postcode/ZIP', 'পিন কোড / জিপ', 'الرمز البريدي / الرمز البريدي', 'code postal / ZIP', '邮编/ ZIP', 'Código postal / ZIP '),
(922, 'ship_to_different_address_for_invoice', 'Ship To Different Address For Invoice', 'চালান জন্য বিভিন্ন ঠিকানায় জাহাজ', 'سفينة إلى عنوان مختلف عن فاتورة', 'navire à l\'adresse différente pour la facture', '船到不同的地址发票', 'Enviar a una dirección diferente para la factura '),
(923, 'paypal', 'Paypal', 'পেপাল', 'باي بال', 'paypal', '贝宝', 'Paypal'),
(924, 'stripe', 'Stripe', 'ডোরা', 'شريط', 'bande', '条纹', 'Raya'),
(925, 'invoice_paper', 'Invoice Paper', 'চালান কাগজ', 'ورقة الفاتورة', 'facture papier', '发票纸', 'Papel de factura'),
(926, 'invoice_no', 'Invoice No', 'চালান নং', 'رقم الفاتورة', 'facturera pas', '发票号码', 'Nro Factura'),
(927, 'client_information:', 'Client Information:', 'ক্লায়েন্ট তথ্য:', 'معلومات العميل:', 'informations sur le client:', '客户资料：', 'Información del cliente:'),
(928, 'first_name:', 'First Name:', 'প্রথম নাম:', 'الاسم الاول:', 'Prénom:', '名字：', 'Nombre de pila:'),
(929, 'last_name:', 'Last Name:', 'নামের শেষাংশ:', 'الكنية:', 'nom de famille:', '姓：', 'Apellido:'),
(930, 'peyment_details_:', 'Peyment Details :', 'peyment বিবরণ:', 'تفاصيل PEYMENT:', 'détails peyment:', 'peyment详细信息：', 'Detalles del pago:'),
(931, 'payment_status_:', 'Payment Status :', 'লেনদেনের অবস্থা :', 'حالة السداد :', 'statut de paiement :', '支付状态 ：', 'Estado de pago :'),
(932, 'payment_method_:', 'Payment Method :', 'মূল্যপরিশোধ পদ্ধতি :', 'طريقة الدفع او السداد :', 'mode de paiement :', '付款方法 ：', 'Método de pago :'),
(933, 'invoice', 'Invoice', 'চালান', 'فاتورة', 'facture d\'achat', '发票', 'Factura'),
(934, 'billed_to', 'Billed To', 'বিল', 'وصفت ل', 'facturé à', '付款人', 'Facturado a'),
(935, 'shipped_to', 'Shipped To', 'বিক্রী', 'تم شحنها إلي', 'expédiés à', '运到', 'Enviado a'),
(936, 'order_date', 'Order Date', 'অর্ডারের তারিখ', 'تاريخ الطلب', 'date de commande', '订购日期', 'Fecha de orden'),
(937, 'order_history', 'Order History', 'অর্ডার ইতিহাস', 'تاريخ الطلب', 'Historique des commandes', '订单历史', 'Historial de pedidos'),
(938, 'downloads', 'Downloads', 'ডাউনলোড', 'التنزيلات', 'téléchargements', '下载', 'Descargas '),
(939, 'edit_profile', 'Edit Profile', 'প্রোফাইল সম্পাদনা', 'تعديل الملف الشخصي', 'modifier le profil', '编辑个人资料', 'Editar perfil'),
(940, 'support_ticket', 'Support Ticket', 'সমর্থন টিকেট', 'بطاقة الدعم', 'ticket de support', '支持票', 'Mensajes'),
(941, 'change_profile_picture', 'Change Profile Picture', 'প্রোফাইল ছবি পরিবর্তন', 'تغيير الصورة الشخصية', 'modifier la photo de profil', '更改资料图片', 'Cambiar foto de perfil'),
(942, 'profile_picture_saved_successfully!', 'Profile Picture Saved Successfully!', 'প্রোফাইল ছবি সফলভাবে সংরক্ষিত!', 'الصورة الشخصية المحفوظة بنجاح!', 'photo de profil enregistré avec succès!', '资料图片保存成功！', '¡Imagen de perfil guardada con éxito!'),
(943, 'edit_failed!', 'Edit Failed!', 'সম্পাদনা ব্যর্থ হয়েছে!', 'تحرير فشل!', 'edit a échoué!', '编辑失败！', '¡Edición fallida!'),
(944, 'try_again!', 'Try Again!', 'আবার চেষ্টা কর!', 'حاول ثانية!', 'réessayer!', '再试一次！', '¡Inténtalo de nuevo!'),
(945, 'save_changes', 'Save Changes', 'পরিবর্তনগুলোর সংরক্ষন', 'حفظ التغييرات', 'Sauvegarder les modifications', '保存更改', 'Guardar cambios'),
(946, 'profile_information', 'Profile Information', 'জীবন তথ্য', 'معلومات الملف الشخصي', 'Informations sur le profil', '档案信息', 'información del perfil '),
(947, 'last_7_days', 'Last 7 Days', 'গত 7 দিনে', '7 أيام الماضية', 'les 7 derniers jours', '过去7天', 'Los últimos 7 días'),
(948, 'last_30_days', 'Last 30 Days', 'শেষ 30 দিন', 'أخر 30 يوم', 'les 30 derniers jours', '最近30天', 'Últimos 30 días'),
(949, 'wished_products', 'Wished Products', 'আকাঙ্ক্ষিত পণ্য', 'منتجات تمنى', 'produits souhaités', '希望产品', 'Productos deseados'),
(950, 'user_since', 'User Since', 'ব্যবহারকারী থেকে', 'مستخدم منذ', 'utilisateur depuis', '用户自', 'Usuario desde'),
(951, 'last_login', 'Last Login', 'গত লগইন', 'آخر تسجيل دخول', 'Dernière connexion', '上次登录', 'Último acceso'),
(952, 'contact_no', 'Contact No', 'যোগাযোগের নম্বর', 'رقم الاتصال', 'contactez pas', '联系方式', 'Nro contacto'),
(953, 'your_wishlist', 'Your Wishlist', 'আপনার ইচ্ছা তালিকা', 'سلة المفضلة', 'votre liste', '您的愿望清单', 'Tu lista de deseos '),
(954, 'availability', 'Availability', 'উপস্থিতি', 'توفر', 'disponibilité', '可用性', 'Disponibilidad'),
(955, 'purchase', 'Purchase', 'ক্রয়', 'شراء', 'achat', '采购', 'Compra'),
(956, 'available', 'Available', 'সহজলভ্য', 'متاح', 'disponible', '可用的', 'Disponible'),
(957, 'your_order_history', 'Your Order History', 'আপনার অর্ডার ইতিহাস', 'تاريخ طلبك', 'historique de vos commandes', '您的订单历史记录', 'Su historial de pedidos'),
(958, 'your_downloads', 'Your Downloads', 'আপনার ডাউনলোড', 'برامجك', 'vos téléchargements', '您的下载', 'Sus descargas'),
(959, 'downloading..', 'Downloading..', 'ডাউনলোডিং ..', 'تحميل ..', 'téléchargement en cours..', '下载..', 'Descargando...'),
(960, 'download_permission_denied', 'Download Permission Denied', 'ডাউনলোড অনুমতি অস্বীকার', 'تحميل تم رفض الإذن', 'téléchargement permission refusée', '下载权限被拒绝', 'Descargar permiso denegado'),
(961, 'personal_info', 'Personal Info', 'ব্যাক্তিগত তথ্য', 'معلومات شخصية', 'Informations personnelles', '个人信息', 'Información personal'),
(962, 'change_your_profile_information', 'Change Your Profile Information', 'আপনার প্রোফাইলের তথ্য পরিবর্তন', 'تغيير معلومات الملف الشخصي', 'modifier vos informations de profil', '更改您的个人信息', 'Cambiar la información de tu perfil'),
(963, 'address 1', 'Address 1', 'ঠিকানা 1', 'العنوان 1', 'Adresse 1', '地址1', 'Dirección 1'),
(964, 'address 2', 'Address 2', 'ঠিকানা ২', 'العنوان 2', 'Adresse 2', '地址2', 'Dirección 2'),
(965, 'skype', 'Skype', 'স্কাইপ', 'سكايب', 'skype', 'Skype的', 'Skype'),
(966, 'google_plus', 'Google Plus', 'গুগল প্লাস', 'جوجل بلس', 'google plus', '谷歌加', 'Google Mas'),
(967, 'facebook', 'Facebook', 'ফেইসবুক', 'فيس بوك', 'Facebook', 'Facebook的', 'Facebook'),
(968, 'info_update_unsuccessful!', 'Info Update Unsuccessful!', 'তথ্য আপডেট অসফল!', 'معلومات تحديث تنجح!', 'Info mise à jour échoue!', '信息更新不成功！', '¡Actualización de información no exitosa!'),
(969, 'info_updated_successfully!', 'Info Updated Successfully!', 'তথ্য সফলভাবে আপডেট!', 'معلومات محدثة بنجاح!', 'Renseignements mis à jour avec succès!', '信息更新成功！', 'Información actualizada con éxito!'),
(970, 'change_your_password', 'Change Your Password', 'আপনার পাসওয়ার্ড পরিবর্তন করুন', 'غير كلمة المرور الخاصة بك', 'changez votre mot de passe', '更改您的密码', 'Cambia tu contraseña'),
(971, 'old_password', 'Old Password', 'পুরাতন পাসওয়ার্ড', 'كلمة المرور القديمة', 'ancien mot de passe', '旧密码', 'Contraseña anterior'),
(972, 'new_password', 'New Password', 'নতুন পাসওয়ার্ড', 'كلمة السر الجديدة', 'nouveau mot de passe', '新密码', 'Nueva contraseña'),
(973, 'confirm_new_password', 'Confirm New Password', 'নিশ্চিত কর নতুন গোপননম্বর', 'تأكيد كلمة المرور الجديدة', 'confirmer le nouveau mot de passe', '确认新密码', 'Confirmar nueva contraseña'),
(974, 'password_change_unsuccessful!', 'Password Change Unsuccessful!', 'পাসওয়ার্ড পরিবর্তন অসফল!', 'تغيير كلمة المرور غير ناجحة!', 'changement de mot de passe échoue!', '密码修改成功！', '¡Cambio de contraseña fallido!'),
(975, 'password_changed_successfully!', 'Password Changed Successfully!', 'পাসওয়ার্ড সফলভাবে পরিবর্তন!', 'تم تغيير الرقم السري بنجاح!', 'Le mot de passe a été changé avec succès!', '密码修改成功！', '¡Contraseña cambiada con éxito!'),
(976, 'all_messages', 'All Messages', 'সব বার্তা', 'جميع الرسائل', 'tous les messages', '所有消息', 'Todos los mensajes'),
(977, 'create_ticket', 'Create Ticket', 'টিকিট তৈরি', 'إنشاء تذكرة', 'créer billet', '创建票', 'Crear mensaje'),
(978, 'ticket_subject', 'Ticket Subject', 'টিকেট বিষয়', 'تذكرة الموضوع', 'sujet du ticket', '单主题', 'Asunto del mensaje'),
(979, 'comment', 'Comment', 'মন্তব্য', 'التعليق', 'commentaire', '评论', 'Comentario'),
(980, 'creating...', 'Creating...', 'তৈরি ...', 'إنشاء...', 'la création ...', '创建...', 'Creando ...'),
(981, 'ticket_created_successfully', 'Ticket Created Successfully', 'টিকেট সফলভাবে তৈরি', 'تذكرة إنشاؤها بنجاح', 'ticket créé avec succès', '票成功创建', 'Mensaje creado con éxito'),
(982, 'ticket_creation_unsuccessful', 'Ticket Creation Unsuccessful', 'টিকেট সৃষ্টি অসফল', 'إنشاء تذكرة ناجحة', 'création de billets infructueuses', '单创建不成功', 'La creación del mensaje no tuvo éxito'),
(983, 'create', 'Create', 'সৃষ্টি', 'خلق', 'Créer', '创建', 'Crear'),
(984, 'your_message', 'Your Message', 'তোমার বার্তা', 'رسالتك', 'votre message', '你的信息', 'Tu mensaje'),
(985, 'replying...', 'Replying...', 'জবাব ...', 'الرد ...', 'répondre ...', '回复...', 'Respondiendo ...'),
(986, 'reply_sent_successfully', 'Reply Sent Successfully', 'উত্তর সফলভাবে পাঠানো', 'الرد إرسالها بنجاح', 'réponse envoyé avec succès', '回复发送成功', 'Respuesta enviada con éxito'),
(987, 'unsuccessful', 'Unsuccessful', 'ব্যার্থ', 'غير ناجح', 'infructueux', '不成功', 'Fracasado'),
(988, 'vendor_public_home', 'Vendor Public Home', 'বিক্রেতা পাবলিক হোম', 'البيت العام الباعة من', 'accueil du public fournisseur', '供应商的众家', 'Vendedor Public Home'),
(989, 'member_since', 'Member Since', 'সদস্য থেকে', 'عضو منذ', 'membre depuis', '会员自', 'Miembro desde'),
(990, 'vendor_rating', 'Vendor Rating', 'বিক্রেতার রেটিং', 'تصنيفهم', 'Note fournisseur', '卖方评级', 'Calificación de proveedor'),
(991, 'about_vendor', 'About Vendor', 'বিক্রেতা সম্পর্কে', 'حول بائع', 'à propos de fournisseur', '有关供应商', 'Sobre el vendedor'),
(992, 'find_location', 'Find Location', 'অবস্থান খুঁজে', 'العثور على الموقع', 'trouver l\'emplacement', '找到位置', 'Encontrar ubicacion'),
(993, 'filters', 'Filters', 'ফিল্টার', 'مرشحات', 'filtres', '过滤器', 'Filtros'),
(994, 'vendor_featured_product', 'Vendor Featured Product', 'বিক্রেতার বৈশিষ্ট্যযুক্ত পণ্য', 'بائع المنتج المميز', 'fournisseur produit vedette', '供应商的特色产品', 'Producto destacado del vendedor'),
(995, 'added_to_wishlist', 'Added To Wishlist', NULL, NULL, NULL, NULL, 'Añadido a la lista de deseos'),
(996, 'all_category', 'All Category', NULL, NULL, NULL, NULL, 'Toda la categoría'),
(997, 'by', 'By', NULL, NULL, NULL, NULL, 'Por'),
(998, 'sold_by', 'Sold By', NULL, NULL, NULL, NULL, 'Vendido por'),
(999, 'last_updated', 'Last Updated', NULL, NULL, NULL, NULL, 'Última actualización '),
(1000, 'review(s)', 'Review(s)', NULL, NULL, NULL, NULL, 'Revisiones'),
(1001, 'add_your_review', 'Add Your Review', NULL, NULL, NULL, NULL, 'Agrega tu evaluación'),
(1002, 'view_details', 'View Details', NULL, NULL, NULL, NULL, 'Ver detalles'),
(1003, 'related_products', 'Related Products', NULL, NULL, NULL, NULL, 'Productos relacionados'),
(1004, 'full_description', 'Full Description', NULL, NULL, NULL, NULL, 'Descripción completa'),
(1005, 'additional_specification', 'Additional Specification', NULL, NULL, NULL, NULL, 'Especificación adicional'),
(1006, 'reviews', 'Reviews', NULL, NULL, NULL, NULL, 'Comentarios'),
(1007, 'color_:', 'Color :', NULL, NULL, NULL, NULL, 'Color :'),
(1008, 'add_to_list', 'Add To List', NULL, NULL, NULL, NULL, 'Agregar a la lista'),
(1009, 'you_have_registered_successfully', 'You Have Registered Successfully', NULL, NULL, NULL, NULL, 'Te has registrado exitosamente'),
(1010, 'email_sending_failed!', 'Email Sending Failed!', NULL, NULL, NULL, NULL, '¡Envío de correo electrónico fallido!'),
(1011, 'working', 'Working', NULL, NULL, NULL, NULL, 'Trabajando'),
(1012, 'fill_all_fields_correctly', 'Fill All Fields Correctly', NULL, NULL, NULL, NULL, 'Rellene todos los campos correctamente'),
(1013, 'deposit_request_sent', 'Deposit Request Sent', NULL, NULL, NULL, NULL, 'Solicitud de depósito enviada'),
(1014, 'deposit_request_sending_failed', 'Deposit Request Sending Failed', NULL, NULL, NULL, NULL, 'Envío de solicitud de depósito fallido'),
(1015, 'payment_info_sent', 'Payment Info Sent', NULL, NULL, NULL, NULL, 'Información de pago enviada'),
(1016, 'payment_info_sending_failed', 'Payment Info Sending Failed', NULL, NULL, NULL, NULL, 'Envío de información de pago fallido'),
(1017, 'wallet', 'Wallet', NULL, NULL, NULL, NULL, 'Billetera'),
(1018, 'state', 'State', NULL, NULL, NULL, NULL, 'Estado'),
(1019, 'country', 'Country', NULL, NULL, NULL, NULL, 'País'),
(1020, 'deposit_to_wallet', 'Deposit To Wallet', NULL, NULL, NULL, NULL, 'Depositar en la billetera'),
(1021, 'your_wallet_history', 'Your Wallet History', NULL, NULL, NULL, NULL, 'Tu historial de billetera'),
(1022, 'time', 'Time', NULL, NULL, NULL, NULL, 'Hora'),
(1023, 'payment_info', 'Payment Info', NULL, NULL, NULL, NULL, 'Información de pago '),
(1024, 'order_tracing', 'Order Tracing', NULL, NULL, NULL, NULL, 'Seguimiento de pedidos'),
(1025, 'order_tracing_unsuccessful!', 'Order Tracing Unsuccessful!', NULL, NULL, NULL, NULL, 'Seguimiento de pedidos fallido!'),
(1026, 'order_traced_successfully!', 'Order Traced Successfully!', NULL, NULL, NULL, NULL, 'Orden trazada con éxito!'),
(1027, 'checking..', 'Checking..', NULL, NULL, NULL, NULL, 'Comprobación..'),
(1028, 'trace_my_order', 'Trace My Order', NULL, NULL, NULL, NULL, 'Traza mi orden'),
(1029, 'pay_to_vendor', 'Pay To Vendor', NULL, NULL, NULL, NULL, 'Pagar al vendedor'),
(1030, 'package_payments', 'Package Payments', NULL, NULL, NULL, NULL, 'Pagos de paquetes'),
(1031, 'wallet_loads', 'Wallet Loads', NULL, NULL, NULL, NULL, 'Cargas de billetera'),
(1032, 'email_templates', 'Email Templates', NULL, NULL, NULL, NULL, 'Plantillas de correo electrónico'),
(1033, 'twocheckout_payment_enabled!', 'Twocheckout Payment Enabled!', NULL, NULL, NULL, NULL, '¡Pago de Twocheckout habilitado!'),
(1034, 'twocheckout_payment_disabled!', 'Twocheckout Payment Disabled!', NULL, NULL, NULL, NULL, '¡Pago de Twocheckout deshabilitado!'),
(1035, 'voguePay_payment_enabled!', 'VoguePay Payment Enabled!', NULL, NULL, NULL, NULL, '¡Pago de VoguePay habilitado!'),
(1036, 'voguePay_payment_disabled!', 'VoguePay Payment Disabled!', NULL, NULL, NULL, NULL, '¡Pago de VoguePay deshabilitado!'),
(1037, 'successfully_enabled!', 'Successfully Enabled!', NULL, NULL, NULL, NULL, '¡Habilitado con éxito!'),
(1038, 'successfully_disabled!', 'Successfully Disabled!', NULL, NULL, NULL, NULL, 'Desactivado con éxito!'),
(1039, 'twocheckout_activation', 'Twocheckout Activation', NULL, NULL, NULL, NULL, 'Activación Twocheckout'),
(1040, 'twocheckout_payment_enabled', 'Twocheckout Payment Enabled', NULL, NULL, NULL, NULL, 'Pago de dos cheques habilitado'),
(1041, 'twocheckout_payment_disabled', 'Twocheckout Payment Disabled', NULL, NULL, NULL, NULL, 'Pago de dos cheques deshabilitado'),
(1042, 'voguePay_activation', 'VoguePay Activation', NULL, NULL, NULL, NULL, 'VoguePay Activation'),
(1043, 'voguePay_payment_enabled', 'VoguePay Payment Enabled', NULL, NULL, NULL, NULL, 'Pago VoguePay habilitado'),
(1044, 'voguePay_payment_disabled', 'VoguePay Payment Disabled', NULL, NULL, NULL, NULL, 'Pago VoguePay deshabilitado'),
(1045, 'twocheckout_settings', 'Twocheckout Settings', NULL, NULL, NULL, NULL, 'Configuración de dos comprobaciones'),
(1046, 'user_id', 'User Id', NULL, NULL, NULL, NULL, 'ID de usuario'),
(1047, 'secret_key', 'Secret Key', NULL, NULL, NULL, NULL, 'Llave secreta'),
(1048, 'account_type', 'Account Type', NULL, NULL, NULL, NULL, 'Tipo de cuenta'),
(1049, 'voguePay_settings', 'VoguePay Settings', NULL, NULL, NULL, NULL, 'Configuración de VoguePay'),
(1050, 'merchant_id', 'Merchant Id', NULL, NULL, NULL, NULL, 'Identificación del comerciante'),
(1051, 'manage_wallet_loads', 'Manage Wallet Loads', NULL, NULL, NULL, NULL, 'Administrar cargas de billetera'),
(1052, 'customer', 'Customer', NULL, NULL, NULL, NULL, 'Cliente'),
(1053, 'i_agree_with', 'I Agree With', NULL, NULL, NULL, NULL, 'Estoy de acuerdo con'),
(1054, 'terms_&_conditions', 'Terms & Conditions', NULL, NULL, NULL, NULL, 'Términos y condiciones'),
(1055, 'you_must_agree_with_terms_&_conditions', 'You Must Agree With Terms & Conditions', NULL, NULL, NULL, NULL, 'Debe aceptar los términos y condiciones'),
(1056, 'deposit', 'Deposit', NULL, NULL, NULL, NULL, 'Depositar'),
(1057, 'transaction_info', 'Transaction Info', NULL, NULL, NULL, NULL, 'Información de la transacción '),
(1058, 'fully_paid', 'Fully Paid', NULL, NULL, NULL, NULL, 'Totalmente pagado'),
(1059, 'payment_from_admin', 'Payment From Admin', NULL, NULL, NULL, NULL, 'Pago del administrador'),
(1060, 'package_upgrade_history', 'Package Upgrade History', NULL, NULL, NULL, NULL, 'Historial de actualización del paquete'),
(1061, 'wrong_order_id!', 'Wrong Order Id!', NULL, NULL, NULL, NULL, 'ID de orden incorrecta'),
(1062, 'order_from', 'Order From', NULL, NULL, NULL, NULL, 'Ordenar desde'),
(1063, 'pending', 'Pending', NULL, NULL, NULL, NULL, 'Pendiente'),
(1064, 'status_updated_on', 'Status Updated On', NULL, NULL, NULL, NULL, 'Estado actualizado el'),
(1065, 'twocheckcout_payment', 'Twocheckcout Payment', NULL, NULL, NULL, NULL, 'Pago de dos cheques'),
(1066, 'twocheckcout_user', 'Twocheckcout User', NULL, NULL, NULL, NULL, 'Usuario Twocheckcout'),
(1067, 'twocheckout_secret', 'Twocheckout Secret', NULL, NULL, NULL, NULL, 'Secreto de dos cheques'),
(1068, 'voguePay_payment', 'VoguePay Payment', NULL, NULL, NULL, NULL, 'Pago VoguePay '),
(1069, 'details_on_delivery_status', 'Details On Delivery Status', NULL, NULL, NULL, NULL, 'Detalles sobre el estado de entrega'),
(1070, 'manage_Admin_payments', 'Manage Admin Payments', NULL, NULL, NULL, NULL, 'Administrar pagos administrativos '),
(1071, 'total_due', 'Total Due', NULL, NULL, NULL, NULL, 'Total adeudado'),
(1072, 'paid_amount', 'Paid Amount', NULL, NULL, NULL, NULL, 'Monto de pago'),
(1073, 'admin_payments', 'Admin Payments', NULL, NULL, NULL, NULL, 'Pagos administrativos'),
(1074, 'manage_package_upgrade_history', 'Manage Package Upgrade History', NULL, NULL, NULL, NULL, 'Administrar historial de actualización de paquetes'),
(1075, 'view_upgrade_details', 'View Upgrade Details', NULL, NULL, NULL, NULL, 'Ver detalles de actualización'),
(1076, 'free', 'Free', NULL, NULL, NULL, NULL, 'Gratis'),
(1077, 'sub-categories_(max 4)', 'Sub-categories (max 4)', NULL, NULL, NULL, NULL, 'Subcategorías (máximo 4)'),
(1078, 'smtp_settings', 'Smtp Settings', NULL, NULL, NULL, NULL, 'Configuraciones Smtp'),
(1079, 'smtp_status', 'Smtp Status', NULL, NULL, NULL, NULL, 'Estado Smtp'),
(1080, 'smtp_host', 'Smtp Host', NULL, NULL, NULL, NULL, 'Smtp Host'),
(1081, 'smtp_port', 'Smtp Port', NULL, NULL, NULL, NULL, 'Puerto smtp'),
(1082, 'smtp_user', 'Smtp User', NULL, NULL, NULL, NULL, 'Usuario Smtp'),
(1083, 'smtp_password', 'Smtp Password', NULL, NULL, NULL, NULL, 'Contraseña Smtp'),
(1084, 'voguepay', 'Voguepay', NULL, NULL, NULL, NULL, 'Voguepay'),
(1085, 'please_fill_the_captcha', 'Please Fill The Captcha', NULL, NULL, NULL, NULL, 'Por favor llene el captcha'),
(1086, 'incorrect_information', 'Incorrect Information', NULL, NULL, NULL, NULL, 'Información incorrecta'),
(1087, 'check_again', 'Check Again', NULL, NULL, NULL, NULL, 'Revisar otra vez'),
(1088, 'this_field_is_required!', 'This Field Is Required!', NULL, NULL, NULL, NULL, '¡Este campo es requerido!'),
(1089, 'blog_details', 'Blog Details', NULL, NULL, NULL, NULL, 'Detalles del blog'),
(1090, 'blog_has_been_uploaded!', 'Blog Has Been Uploaded!', NULL, NULL, NULL, NULL, 'Blog ha sido cargado!'),
(1091, 'provide_payment_info', 'Provide Payment Info', NULL, NULL, NULL, NULL, 'Proporcionar información de pago'),
(1092, 'view_status', 'View Status', NULL, NULL, NULL, NULL, 'Ver el estado de'),
(1093, 'successfully_saved!', 'Successfully Saved!', NULL, NULL, NULL, NULL, '¡Guardado con éxito!'),
(1094, 'no_payment_info_provided', 'No Payment Info Provided', NULL, NULL, NULL, NULL, 'No se proporciona información de pago'),
(1095, 'no_product_from_admin', 'No Product From Admin', NULL, NULL, NULL, NULL, 'Ningún producto del administrador'),
(1096, 'wallet_balance', 'Wallet Balance', NULL, NULL, NULL, NULL, 'Saldo de billetera'),
(1097, 'captcha_status', 'Captcha Status', NULL, NULL, NULL, NULL, 'Captcha Status'),
(1098, 'manage_email_templates', 'Manage Email Templates', NULL, NULL, NULL, NULL, 'Administrar plantillas de correo electrónico'),
(1099, 'Password Reset Email', 'Password Reset Email', NULL, NULL, NULL, NULL, 'Correo electrónico de restablecimiento de contraseña'),
(1100, 'Account Approval Email', 'Account Approval Email', NULL, NULL, NULL, NULL, 'Correo electrónico de aprobación de cuenta'),
(1101, 'Membership Upgrade Email', 'Membership Upgrade Email', NULL, NULL, NULL, NULL, 'Correo electrónico de actualización de membresía '),
(1102, 'Vendors Account Opening', 'Vendors Account Opening', NULL, NULL, NULL, NULL, 'Apertura de cuenta de proveedores'),
(1103, 'Users Account Opening', 'Users Account Opening', NULL, NULL, NULL, NULL, 'Apertura de cuenta de usuario'),
(1104, 'Admins Account Opening', 'Admins Account Opening', NULL, NULL, NULL, NULL, 'Apertura de cuenta de administrador'),
(1105, 'email_body', 'Email Body', NULL, NULL, NULL, NULL, 'Cuerpo del correo electronico'),
(1106, 'N.B', 'N.B', NULL, NULL, NULL, NULL, 'nótese bien'),
(1107, 'do_not_change_the_variables_like', 'Do Not Change The Variables Like', NULL, NULL, NULL, NULL, 'No cambie las variables como'),
(1108, 'choose_background_theme', 'Choose Background Theme', NULL, NULL, NULL, NULL, 'Elegir tema de fondo'),
(1109, 'home_default_currency', 'Home Default Currency', NULL, NULL, NULL, NULL, 'Moneda predeterminada de inicio '),
(1110, 'system_default_currency', 'System Default Currency', NULL, NULL, NULL, NULL, 'Moneda predeterminada del sistema '),
(1111, 'set_currency_format', 'Set Currency Format', NULL, NULL, NULL, NULL, 'Establecer formato de moneda'),
(1112, 'currency_format', 'Currency Format', NULL, NULL, NULL, NULL, 'Formato de moneda'),
(1113, 'symbol_format', 'Symbol Format', NULL, NULL, NULL, NULL, 'Formato de símbolo'),
(1114, 'no_of_decimals', 'No Of Decimals', NULL, NULL, NULL, NULL, 'Nro de decimales'),
(1115, 'all_currencies', 'All Currencies', NULL, NULL, NULL, NULL, 'Todas las monedas'),
(1116, 'product_bundle', 'Product Bundle', NULL, NULL, NULL, NULL, 'Paquete de productos'),
(1117, 'manage_product_bundle', 'Manage Product Bundle', NULL, NULL, NULL, NULL, 'Gestionar paquete de productos'),
(1118, 'add_product_bundle_entry_taken!', 'Add Product Bundle Entry Taken!', NULL, NULL, NULL, NULL, 'Agregar paquete de productos ¡Entrada tomada!'),
(1119, 'add_product_bundle', 'Add Product Bundle', NULL, NULL, NULL, NULL, 'Añadir paquete de productos'),
(1120, 'create_product_bundle', 'Create Product Bundle', NULL, NULL, NULL, NULL, 'Crear paquete de productos '),
(1121, 'back_to_product_bundle_list', 'Back To Product Bundle List', NULL, NULL, NULL, NULL, 'Volver a la lista de paquetes de productos'),
(1122, 'bundle_stock', 'Bundle Stock', NULL, NULL, NULL, NULL, 'Stock de paquete'),
(1123, 'bundle_details', 'Bundle Details', NULL, NULL, NULL, NULL, 'Detalles del paquete'),
(1124, 'bundle_title', 'Bundle Title', NULL, NULL, NULL, NULL, 'Título del paquete'),
(1125, 'add_products', 'Add Products', NULL, NULL, NULL, NULL, 'Agregar productos'),
(1126, 'add_products_from_here', 'Add Products From Here', NULL, NULL, NULL, NULL, 'Agregar productos desde aquí'),
(1127, 'add', 'Add', NULL, NULL, NULL, NULL, 'Añadir'),
(1128, 'add_more_products', 'Add More Products', NULL, NULL, NULL, NULL, ' Agregar más productos'),
(1129, 'bundle_tax', 'Bundle Tax', NULL, NULL, NULL, NULL, 'Impuesto de paquete'),
(1130, 'bundle_discount', 'Bundle Discount', NULL, NULL, NULL, NULL, 'Descuento del paquete '),
(1131, 'product_bundle_has_been_uploaded!', 'Product Bundle Has Been Uploaded!', NULL, NULL, NULL, NULL, '¡Se ha cargado el paquete de productos! '),
(1132, 'No Products are available for this brand', 'No Products Are Available For This Brand', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1133, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`, `lang_7`) VALUES
(1134, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1135, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1136, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1137, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1138, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1139, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1140, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1141, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1142, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1143, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1144, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1145, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1146, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1147, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1148, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1149, 'current_stock', 'Current Stock', NULL, NULL, NULL, NULL, 'Stock actual'),
(1150, 'edit_product_bundle', 'Edit Product Bundle', NULL, NULL, NULL, NULL, 'Editar paquete de productos'),
(1151, 'No brands are available for this sub category', 'No Brands Are Available For This Sub Category', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1152, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1153, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1154, 'product_bundle_has_been_edited!', 'Product Bundle Has Been Edited!', NULL, NULL, NULL, NULL, '¡Se ha editado el paquete de productos!'),
(1155, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1156, 'view_product_bundle', 'View Product Bundle', NULL, NULL, NULL, NULL, 'Ver paquete de productos'),
(1157, 'product_name', 'Product Name', NULL, NULL, NULL, NULL, 'Nombre del producto '),
(1158, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1159, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1160, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1161, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1162, 'add_bundle_quantity', 'Add Bundle Quantity', NULL, NULL, NULL, NULL, 'Agregar cantidad de paquete'),
(1163, 'reduce_bundle_quantity', 'Reduce Bundle Quantity', NULL, NULL, NULL, NULL, 'Reducir cantidad de paquete'),
(1164, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1165, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1166, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1167, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1168, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1169, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1170, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1171, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1172, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1173, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1174, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1175, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1176, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1177, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1178, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1179, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1180, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1181, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1182, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1183, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1184, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1185, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1186, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1187, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1188, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1189, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1190, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1191, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1192, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1193, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1194, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1195, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1196, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1197, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1198, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1199, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1200, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1201, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1202, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1203, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1204, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1205, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1206, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1207, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1208, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1209, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1210, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1211, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1212, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1213, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1214, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1215, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1216, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1217, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1218, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1219, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1220, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1221, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1222, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1223, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1224, 'physical', 'Physical', NULL, NULL, NULL, NULL, 'Físico'),
(1225, 'digital', 'Digital', NULL, NULL, NULL, NULL, 'Digital'),
(1226, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1227, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1228, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1229, 'bundle', 'Bundle', NULL, NULL, NULL, NULL, 'Haz'),
(1230, 'most', 'Most', NULL, NULL, NULL, NULL, 'Más'),
(1231, 'viewed', 'Viewed', NULL, NULL, NULL, NULL, 'Visto'),
(1232, 'Products_:', 'Products :', NULL, NULL, NULL, NULL, 'Productos:'),
(1233, 'added_by:', 'Added By:', NULL, NULL, NULL, NULL, 'Añadido por:'),
(1234, 'bundle_rated_successfully', 'Bundle Rated Successfully', NULL, NULL, NULL, NULL, 'Paquete clasificado con éxito'),
(1235, 'bundle_rating_failed', 'Bundle Rating Failed', NULL, NULL, NULL, NULL, 'Calificación de paquete fallida'),
(1236, 'you_already_rated_this_bundle', 'You Already Rated This Bundle', NULL, NULL, NULL, NULL, 'Ya has calificado este paquete'),
(1237, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1238, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1239, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1240, 'google_analytics', 'Google Analytics', NULL, NULL, NULL, NULL, 'Google analitico'),
(1241, 'tracking_id', 'Tracking Id', NULL, NULL, NULL, NULL, 'ID de rastreo'),
(1242, 'google_analytics_settings', 'Google Analytics Settings', NULL, NULL, NULL, NULL, 'Configuración de Google Analytics'),
(1243, 'manage_pay_to_vendor', 'Manage Pay To Vendor', NULL, NULL, NULL, NULL, 'Administrar pago al proveedor'),
(1244, 'google_analytics_enabled!', 'Google Analytics Enabled!', NULL, NULL, NULL, NULL, 'Google Analytics habilitado!'),
(1245, 'google_analytics_disabled!', 'Google Analytics Disabled!', NULL, NULL, NULL, NULL, 'Google Analytics deshabilitado!'),
(1246, 'show_vendor_website', 'Show Vendor Website', NULL, NULL, NULL, NULL, 'Mostrar sitio web del proveedor'),
(1247, 'vendor_show_enabled', 'Vendor Show Enabled', NULL, NULL, NULL, NULL, 'Mostrar proveedor habilitado'),
(1248, 'vendor_show_disabled', 'Vendor Show Disabled', NULL, NULL, NULL, NULL, 'Mostrar proveedor deshabilitado'),
(1249, 'show_vendors', 'Show Vendors', NULL, NULL, NULL, NULL, 'Mostrar vendedores'),
(1250, 'product_bundle_(_show_/_hide_)', 'Product Bundle ( Show / Hide )', NULL, NULL, NULL, NULL, 'Paquete de productos (Mostrar / Ocultar) '),
(1251, 'bundle_product_section_updated!', 'Bundle Product Section Updated!', NULL, NULL, NULL, NULL, '¡Sección de producto del paquete actualizada!'),
(1252, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1253, 'confirm_payment', 'Confirm Payment', NULL, NULL, NULL, NULL, 'Confirmar pago'),
(1254, 'bundled_product', 'Bundled Product', NULL, NULL, NULL, NULL, 'Producto incluido'),
(1255, 'available_brands', 'Available Brands', NULL, NULL, NULL, NULL, 'Marcas Disponibles'),
(1256, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1257, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1258, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1259, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1260, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1261, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1262, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1263, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1264, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1265, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1266, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1267, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1268, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1269, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1270, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1271, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1272, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1273, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1274, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1275, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1276, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1277, 'bundled_products', 'Bundled Products', NULL, NULL, NULL, NULL, 'Productos incluidos'),
(1278, 'purchase_summary', 'Purchase Summary', NULL, NULL, NULL, NULL, 'Resumen de compra'),
(1279, 'others_info', 'Others Info', NULL, NULL, NULL, NULL, 'Información de otros'),
(1280, 'personal_information', 'Personal Information', NULL, NULL, NULL, NULL, 'Informacion personal'),
(1281, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1282, 'edit_coupon', 'Edit Coupon', NULL, NULL, NULL, NULL, 'Editar cupón'),
(1283, 'coupon_discount_activated', 'Coupon Discount Activated', NULL, NULL, NULL, NULL, 'Descuento de cupón activado'),
(1284, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1285, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1286, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL, 'No hay marcas disponibles para esta subcategoría'),
(1287, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1288, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1289, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1290, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1291, '_added_to_wishlist', ' Added To Wishlist', NULL, NULL, NULL, NULL, 'Añadido a la lista de deseos'),
(1292, 'thanks_for_registration', 'Thanks For Registration', NULL, NULL, NULL, NULL, 'Gracias por registrarte'),
(1293, 'you_have_to_wait_for_admin_approval', 'You Have To Wait For Admin Approval', NULL, NULL, NULL, NULL, 'Tienes que esperar la aprobación del administrador'),
(1294, 'approval_confirmation_will_be_sent_to_your_email', 'Approval Confirmation Will Be Sent To Your Email', NULL, NULL, NULL, NULL, 'La confirmación de aprobación se enviará a su correo electrónico'),
(1295, 'check_your_email', 'Check Your Email', NULL, NULL, NULL, NULL, 'Consultar su correo electrónico'),
(1296, 'after_confirmation_you_can_', 'After Confirmation You Can ', NULL, NULL, NULL, NULL, 'Después de la confirmación puedes'),
(1297, 'login_from_here', 'Login From Here', NULL, NULL, NULL, NULL, ' Inicie sesión desde aquí'),
(1298, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1299, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1300, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1301, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1302, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1303, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1304, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1305, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1306, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1307, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1308, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1309, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1310, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1311, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1312, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1313, 'vendor_payment_status', 'Vendor Payment Status', NULL, NULL, NULL, NULL, 'Estado de pago del proveedor'),
(1314, 'cash', 'Cash', NULL, NULL, NULL, NULL, 'Efectivo'),
(1315, 'post_product', 'Post Product', NULL, NULL, NULL, NULL, 'Publicar producto'),
(1316, 'fill_the_form_to_post_the_product', 'Fill The Form To Post The Product', NULL, NULL, NULL, NULL, 'Rellene el formulario para publicar el producto'),
(1317, 'processing..', 'Processing..', NULL, NULL, NULL, NULL, 'Procesando..'),
(1318, 'Apply', 'Apply', NULL, NULL, NULL, NULL, 'Aplicar'),
(1319, 'admin_payments_details', 'Admin Payments Details', NULL, NULL, NULL, NULL, 'Detalles de pagos administrativos'),
(1320, 'choose_a_country_first', 'Choose A Country First', NULL, NULL, NULL, NULL, 'Elija un país primero'),
(1321, 'select_a_category', 'Select A Category', NULL, NULL, NULL, NULL, 'Seleccione una categoría'),
(1322, 'select_a_category_first', 'Select A Category First', NULL, NULL, NULL, NULL, 'Seleccione una categoría primero'),
(1323, 'new_message', 'New Message', NULL, NULL, NULL, NULL, 'Nuevo mensaje'),
(1324, '_compared', ' Compared', NULL, NULL, NULL, NULL, 'Comparado'),
(1325, 'paid', 'Paid', NULL, NULL, NULL, NULL, 'Pagado'),
(1326, 'loading...', 'Loading...', NULL, NULL, NULL, NULL, 'Cargando...'),
(1327, 'condition', 'Condition', NULL, NULL, NULL, NULL, 'Condición'),
(1328, 'select_a_condition', 'Select A Condition', NULL, NULL, NULL, NULL, 'Seleccione una condición'),
(1329, 'used', 'Used', NULL, NULL, NULL, NULL, 'Usado'),
(1330, 'unit(e.g_Kg,Pc etc)', 'Unit(e.g Kg,Pc Etc)', NULL, NULL, NULL, NULL, 'Unidad (por ejemplo, Kg, PC, etc.)'),
(1331, 'unit_(e.g_Kg,_Pc_etc)', 'Unit (e.g Kg, Pc Etc)', NULL, NULL, NULL, NULL, 'Unidad (por ejemplo, Kg, PC, etc.)'),
(1332, 'unit_(Kg,_Pc_etc)', 'Unit (Kg, Pc Etc)', NULL, NULL, NULL, NULL, 'Unidad (Kg, Pc Etc)'),
(1333, 'choose_files', 'Choose Files', NULL, NULL, NULL, NULL, 'Seleccionar archivos'),
(1334, 'location', 'Location', NULL, NULL, NULL, NULL, 'Ubicación'),
(1335, 'additional_information', 'Additional Information', NULL, NULL, NULL, NULL, 'Información Adicional'),
(1336, 'product_uploaded_successfully!', 'Product Uploaded Successfully!', NULL, NULL, NULL, NULL, '¡Producto cargado con éxito!'),
(1337, 'product_upload_failed!', 'Product Upload Failed!', NULL, NULL, NULL, NULL, '¡Error al cargar producto!'),
(1338, 'your_remaining_product_upload_amount_is:', 'Your Remaining Product Upload Amount Is:', NULL, NULL, NULL, NULL, 'Su cantidad restante de carga del producto es:'),
(1339, 'your_remaining_product_upload_amount_is:_', 'Your Remaining Product Upload Amount Is: ', NULL, NULL, NULL, NULL, 'Su cantidad restante de carga del producto es:'),
(1340, 'please_purchase_a_package_to_upload_more', 'Please Purchase A Package To Upload More', NULL, NULL, NULL, NULL, 'Compre un paquete para cargar más'),
(1341, 'purchase_package', 'Purchase Package', NULL, NULL, NULL, NULL, 'Paquete de compra'),
(1342, 'please_purchase_a_package_to_upload_more_products.', 'Please Purchase A Package To Upload More Products.', NULL, NULL, NULL, NULL, 'Compre un paquete para cargar más productos.'),
(1343, 'your_remaining_product_upload_amount:_', 'Your Remaining Product Upload Amount: ', NULL, NULL, NULL, NULL, 'Su cantidad restante de carga del producto:'),
(1344, 'remaining_product_upload_amount:_', 'Remaining Product Upload Amount: ', NULL, NULL, NULL, NULL, 'Cantidad de carga de producto restante:'),
(1345, 'confirm_your_upload', 'Confirm Your Upload', NULL, NULL, NULL, NULL, 'Confirma tu carga'),
(1346, 'confirm', 'Confirm', NULL, NULL, NULL, NULL, 'Confirmar'),
(1347, 'uploading_a_product_will_cost_you_1_upload_amount', 'Uploading A Product Will Cost You 1 Upload Amount', NULL, NULL, NULL, NULL, 'Cargar un producto le costará 1 monto de carga'),
(1348, 'uploading_a_product_will_cost_you_1_upload_amount</br>after_uploading_a_product_you_can\'t_edit_it', 'Uploading A Product Will Cost You 1 Upload Amount</br>after Uploading A Product You Can\'t Edit It', NULL, NULL, NULL, NULL, 'Cargar un producto le costará 1 cantidad de carga después de cargar un producto que no puede editar'),
(1349, 'uploading_a_product_will_cost_you_1_upload_amount</br><span class=\"text-danger\">After_uploading_a_product_you_can\'t_edit_it</span>', 'Uploading A Product Will Cost You 1 Upload Amount</br><span Class=\"text-danger\">After Uploading A Product You Can\'t Edit It</span>', NULL, NULL, NULL, NULL, 'Cargar un producto le costará 1 monto de carga después de cargar un producto que no puede editar'),
(1350, 'uploading_a_product_will_cost_you_1_upload_amount</br><b class=\"text-danger\">After_uploading_a_product_you_can\'t_edit_it</b>', 'Uploading A Product Will Cost You 1 Upload Amount</br><b Class=\"text-danger\">After Uploading A Product You Can\'t Edit It</b>', NULL, NULL, NULL, NULL, 'Cargar un producto le costará 1 monto de carga después de cargar un producto que no puede editar'),
(1351, 'uploading_a_product_will_cost_you_1_upload_amount</br><b class=\"text-danger\">After_uploading_a_product_you_can_not_edit_it_again</b>', 'Uploading A Product Will Cost You 1 Upload Amount</br><b Class=\"text-danger\">After Uploading A Product You Can Not Edit It Again</b>', NULL, NULL, NULL, NULL, 'Cargar un producto le costará 1 monto de carga después de cargar un producto, no puede editarlo nuevamente'),
(1352, 'package_info', 'Package Info', NULL, NULL, NULL, NULL, 'Información del paquete'),
(1353, 'remaining_upload_amount', 'Remaining Upload Amount', NULL, NULL, NULL, NULL, 'Cantidad de carga restante'),
(1354, 'last_purchased_package', 'Last Purchased Package', NULL, NULL, NULL, NULL, 'Último paquete comprado'),
(1355, 'current_package', 'Current Package', NULL, NULL, NULL, NULL, 'El paquete actual'),
(1356, 'purchase_time', 'Purchase Time', NULL, NULL, NULL, NULL, 'Tiempo de compra'),
(1357, 'customer\'s_uploaded_products', 'Customer\'s Uploaded Products', NULL, NULL, NULL, NULL, 'Productos subidos por el cliente'),
(1358, 'terms_conditions', 'Terms Conditions', NULL, NULL, NULL, NULL, 'Términos y condiciones'),
(1359, 'premium_packeges', 'Premium Packeges', NULL, NULL, NULL, NULL, 'Paquetes Premium'),
(1360, 'product_by', 'Product By', NULL, NULL, NULL, NULL, 'Producto por'),
(1361, 'sold_by:', 'Sold By:', NULL, NULL, NULL, NULL, 'Vendido por:'),
(1362, 'seller:', 'Seller:', NULL, NULL, NULL, NULL, 'Vendedor:'),
(1363, 'premium_packeges_for_customer', 'Premium Packeges For Customer', NULL, NULL, NULL, NULL, 'Paquetes Premium para el cliente'),
(1364, 'product_upload_amount', 'Product Upload Amount', NULL, NULL, NULL, NULL, 'Cantidad de carga del producto'),
(1365, 'amount_of', 'Amount Of', NULL, NULL, NULL, NULL, 'Cantidad de'),
(1366, 'product_upload', 'Product Upload', NULL, NULL, NULL, NULL, 'Carga de producto'),
(1367, 'times', 'Times', NULL, NULL, NULL, NULL, 'Veces'),
(1368, 'seller:_', 'Seller: ', NULL, NULL, NULL, NULL, 'Vendedor:'),
(1369, 'seller_email:', 'Seller Email:', NULL, NULL, NULL, NULL, 'Correo electrónico del vendedor:'),
(1370, 'seller_phone:', 'Seller Phone:', NULL, NULL, NULL, NULL, 'Teléfono del vendedor:'),
(1371, 'not_given', 'Not Given', NULL, NULL, NULL, NULL, 'No dado'),
(1372, 'phone_no.:', 'Phone No.:', NULL, NULL, NULL, NULL, 'Nro de teléfono:'),
(1373, 'express_interest:', 'Express Interest:', NULL, NULL, NULL, NULL, 'Expresa interes:'),
(1374, 'direct_messages:', 'Direct Messages:', NULL, NULL, NULL, NULL, 'Mensajes directos:'),
(1375, 'photo_gallery:', 'Photo Gallery:', NULL, NULL, NULL, NULL, 'Galería de fotos:'),
(1376, 'select_a_payment_method', 'Select A Payment Method', NULL, NULL, NULL, NULL, 'Seleccione un método de pago'),
(1377, 'please_wait', 'Please Wait', NULL, NULL, NULL, NULL, 'Por favor espera'),
(1378, 'confirm_purchase', 'Confirm Purchase', NULL, NULL, NULL, NULL, 'Confirmar compra'),
(1379, 'selected', 'Selected', NULL, NULL, NULL, NULL, 'Seleccionado'),
(1380, 'premium_packege', 'Premium Packege', NULL, NULL, NULL, NULL, 'Packege Premium'),
(1381, 'packege', 'Packege', NULL, NULL, NULL, NULL, 'Packege'),
(1382, 'back_to_packege_list', 'Back To Packege List', NULL, NULL, NULL, NULL, 'Volver a la lista de Packege'),
(1383, 'edit_packege', 'Edit Packege', NULL, NULL, NULL, NULL, 'Editar paquete'),
(1384, 'location:', 'Location:', NULL, NULL, NULL, NULL, 'Ubicación:'),
(1385, 'packege_name', 'Packege Name', NULL, NULL, NULL, NULL, 'Nombre del paquete'),
(1386, 'amount_(USD)', 'Amount (USD)', NULL, NULL, NULL, NULL, 'Monto (USD)'),
(1387, 'amount_of_product_upload', 'Amount Of Product Upload', NULL, NULL, NULL, NULL, 'Cantidad de carga del producto'),
(1388, 'amount_($)', 'Amount ($)', NULL, NULL, NULL, NULL, 'Monto ($)'),
(1389, 'packege_image', 'Packege Image', NULL, NULL, NULL, NULL, 'Imagen Packege'),
(1390, 'select_a_photo', 'Select A Photo', NULL, NULL, NULL, NULL, 'Selecciona una foto'),
(1391, 'customer_products', 'Customer Products', NULL, NULL, NULL, NULL, 'Productos para clientes'),
(1392, 'uploaded_products', 'Uploaded Products', NULL, NULL, NULL, NULL, 'Productos subidos'),
(1393, 'your_uploaded_products', 'Your Uploaded Products', NULL, NULL, NULL, NULL, 'Tus productos cargados'),
(1394, 'unvailable', 'Unvailable', NULL, NULL, NULL, NULL, 'No disponible'),
(1395, 'publish/unpublish', 'Publish/unpublish', NULL, NULL, NULL, NULL, 'Publicar / no publicar'),
(1396, 'publish/_unpublish', 'Publish/ Unpublish', NULL, NULL, NULL, NULL, 'Publicar / Anular publicación'),
(1397, 'product_published', 'Product Published', NULL, NULL, NULL, NULL, 'Producto publicado'),
(1398, 'product_unpublished', 'Product Unpublished', NULL, NULL, NULL, NULL, 'Producto no publicado'),
(1399, 'Unpublish', 'Unpublish', NULL, NULL, NULL, NULL, 'Anular publicación'),
(1400, 'Published', 'Published', NULL, NULL, NULL, NULL, 'Publicado'),
(1401, 'Unpublished', 'Unpublished', NULL, NULL, NULL, NULL, 'Inédito'),
(1402, 'packege_purchase_failed!', 'Packege Purchase Failed!', NULL, NULL, NULL, NULL, '¡Compra fallida de Packege!'),
(1403, 'packege_purchase_successfully!', 'Packege Purchase Successfully!', NULL, NULL, NULL, NULL, '¡Compra de Packege con éxito!'),
(1404, 'purchasing..', 'Purchasing..', NULL, NULL, NULL, NULL, 'Adquisitivo..'),
(1405, 'premium_packages', 'Premium Packages', NULL, NULL, NULL, NULL, 'Paquetes Premium'),
(1406, 'premium_packages_for_customer', 'Premium Packages For Customer', NULL, NULL, NULL, NULL, 'Paquetes Premium para el cliente'),
(1407, 'premium_package', 'Premium Package', NULL, NULL, NULL, NULL, 'Paquete Premium'),
(1408, 'package', 'Package', NULL, NULL, NULL, NULL, 'Paquete'),
(1409, 'back_to_package_list', 'Back To Package List', NULL, NULL, NULL, NULL, 'Volver a la lista de paquetes'),
(1410, 'edit_package', 'Edit Package', NULL, NULL, NULL, NULL, 'Editar paquete'),
(1411, 'package_name', 'Package Name', NULL, NULL, NULL, NULL, 'Nombre del paquete'),
(1412, 'package_image', 'Package Image', NULL, NULL, NULL, NULL, 'Imagen del paquete'),
(1413, 'customer_uploaded_products', 'Customer Uploaded Products', NULL, NULL, NULL, NULL, 'Productos subidos por el cliente'),
(1414, 'back_to_customer_product_list', 'Back To Customer Product List', NULL, NULL, NULL, NULL, 'Volver a la lista de productos del cliente'),
(1415, 'uploaded_by', 'Uploaded By', NULL, NULL, NULL, NULL, 'Subido por'),
(1416, 'customer_status', 'Customer Status', NULL, NULL, NULL, NULL, 'Estado del cliente'),
(1417, 'customer_package_payments', 'Customer Package Payments', NULL, NULL, NULL, NULL, 'Pagos del paquete del cliente'),
(1418, 'customer_package_payment', 'Customer Package Payment', NULL, NULL, NULL, NULL, 'Pago del paquete del cliente'),
(1419, 'back_to_package_payment_list', 'Back To Package Payment List', NULL, NULL, NULL, NULL, 'Volver a la lista de pagos del paquete'),
(1420, 'customer_name', 'Customer Name', NULL, NULL, NULL, NULL, 'Nombre del cliente'),
(1421, 'payment_type', 'Payment Type', NULL, NULL, NULL, NULL, 'Tipo de pago'),
(1422, 'view_package_payment', 'View Package Payment', NULL, NULL, NULL, NULL, 'Ver pago del paquete'),
(1423, 'details_of_package_payment', 'Details Of Package Payment', NULL, NULL, NULL, NULL, 'Detalles del pago del paquete'),
(1424, 'purchase_datetime', 'Purchase Datetime', NULL, NULL, NULL, NULL, 'Fecha de compra'),
(1425, 'change_availability_status', 'Change Availability Status', NULL, NULL, NULL, NULL, 'Cambiar estado de disponibilidad'),
(1426, 'package_payment_info', 'Package Payment Info', NULL, NULL, NULL, NULL, 'Información de pago del paquete'),
(1427, 'purchase_date', 'Purchase Date', NULL, NULL, NULL, NULL, 'Fecha de compra'),
(1428, 'admin_status', 'Admin Status', NULL, NULL, NULL, NULL, 'Estado de administrador'),
(1429, 'not_available_payment_info', 'Not Available Payment Info', NULL, NULL, NULL, NULL, 'No disponible Información de pago'),
(1430, 'availability_status', 'Availability Status', NULL, NULL, NULL, NULL, 'Estado de Disponibilidad'),
(1431, 'sold', 'Sold', NULL, NULL, NULL, NULL, 'Vendido'),
(1432, 'detailed_information', 'Detailed Information', NULL, NULL, NULL, NULL, 'Información detallada'),
(1433, 'customer_product_(_show_/_hide_)', 'Customer Product ( Show / Hide )', NULL, NULL, NULL, NULL, 'Producto del cliente (Mostrar / Ocultar)'),
(1434, 'number_of_product_(_to_show_)', 'Number Of Product ( To Show )', NULL, NULL, NULL, NULL, 'Número de producto (para mostrar)'),
(1435, 'customer_product_section_updated!', 'Customer Product Section Updated!', NULL, NULL, NULL, NULL, 'Sección de productos del cliente ¡Actualizada!'),
(1436, 'customer_products_section_updated!', 'Customer Products Section Updated!', NULL, NULL, NULL, NULL, 'Sección de productos del cliente ¡Actualizada!'),
(1437, 'product_bundle_activation', 'Product Bundle Activation', NULL, NULL, NULL, NULL, 'Activación de paquete de productos'),
(1438, 'product_bundle_enabled', 'Product Bundle Enabled', NULL, NULL, NULL, NULL, 'Paquete de productos habilitado'),
(1439, 'product_bundle_disabled', 'Product Bundle Disabled', NULL, NULL, NULL, NULL, 'Paquete de productos deshabilitado'),
(1440, 'customer_product_activation', 'Customer Product Activation', NULL, NULL, NULL, NULL, 'Activación del producto del cliente'),
(1441, 'customer_product_enabled', 'Customer Product Enabled', NULL, NULL, NULL, NULL, 'Producto del cliente habilitado');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`, `lang_7`) VALUES
(1442, 'customer_product_disabled', 'Customer Product Disabled', NULL, NULL, NULL, NULL, 'Producto del cliente deshabilitado'),
(1443, 'seller_informations', 'Seller Informations', NULL, NULL, NULL, NULL, 'Informaciones del vendedor'),
(1444, 'classifieds', 'Classifieds', NULL, NULL, NULL, NULL, 'Clasificados'),
(1445, 'classifieds_products', 'Classifieds Products', NULL, NULL, NULL, NULL, 'Productos Clasificados'),
(1446, 'classified_products', 'Classified Products', NULL, NULL, NULL, NULL, 'Productos clasificados'),
(1447, 'classified_product_activation', 'Classified Product Activation', NULL, NULL, NULL, NULL, 'Activación de productos clasificados'),
(1448, 'Share', 'Share', NULL, NULL, NULL, NULL, 'Compartir'),
(1449, 'share_links', 'Share Links', NULL, NULL, NULL, NULL, 'Compartir enlaces'),
(1450, 'price:', 'Price:', NULL, NULL, NULL, NULL, 'Precio:'),
(1451, 'condition:', 'Condition:', NULL, NULL, NULL, NULL, 'Condición:'),
(1452, 'product_search', 'Product Search', NULL, NULL, NULL, NULL, 'Búsqueda de Producto'),
(1453, 'all_type', 'All Type', NULL, NULL, NULL, NULL, 'Todo tipo'),
(1454, 'search_by_brand_name', 'Search By Brand Name', NULL, NULL, NULL, NULL, 'Buscar por nombre de marca'),
(1455, 'back_to_profile', 'Back To Profile', NULL, NULL, NULL, NULL, 'Volver al perfil'),
(1456, 'wallet_', 'Wallet ', NULL, NULL, NULL, NULL, 'Billetera'),
(1457, 'search_by_brand', 'Search By Brand', NULL, NULL, NULL, NULL, 'Buscar por marca'),
(1458, 'brand:_', 'Brand: ', NULL, NULL, NULL, NULL, 'Marca:'),
(1459, '_seller:', ' Seller:', NULL, NULL, NULL, NULL, 'Vendedor:'),
(1460, 'seller', 'Seller', NULL, NULL, NULL, NULL, 'Vendedor'),
(1461, 'seller_email', 'Seller Email', NULL, NULL, NULL, NULL, 'Correo electrónico del vendedor'),
(1462, 'phone_no', 'Phone No', NULL, NULL, NULL, NULL, 'Nro de teléfono:'),
(1463, 'no_specification_found!', 'No Specification Found!', NULL, NULL, NULL, NULL, '¡No se ha encontrado ninguna especificación!'),
(1464, 'payumoney', 'Payumoney', NULL, NULL, NULL, NULL, 'Payumoney'),
(1465, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL, 'No hay productos disponibles para esta marca'),
(1466, 'pay_u_money_settings', 'Pay U Money Settings', NULL, NULL, NULL, NULL, 'Configuración de Pay U Money'),
(1467, 'merchant_key', 'Merchant Key', NULL, NULL, NULL, NULL, 'Clave mercantil'),
(1468, 'merchant_salt', 'Merchant Salt', NULL, NULL, NULL, NULL, 'Sal mercante'),
(1469, 'pay_u_money_activation', 'Pay U Money Activation', NULL, NULL, NULL, NULL, 'Pay U Money Activation'),
(1470, 'pay_u_money_payment_enabled', 'Pay U Money Payment Enabled', NULL, NULL, NULL, NULL, 'Pago de pago U Money habilitado'),
(1471, 'pay_u_money_payment_disabled', 'Pay U Money Payment Disabled', NULL, NULL, NULL, NULL, 'Pagar U Dinero Pago deshabilitado'),
(1472, 'payUmoney_payment', 'PayUmoney Payment', NULL, NULL, NULL, NULL, 'PayUmoney Payment'),
(1473, 'payUmoney_merchant_key', 'PayUmoney Merchant Key', NULL, NULL, NULL, NULL, 'PayUmoney Merchant Key'),
(1474, 'payUmoney_merchant_salt', 'PayUmoney Merchant Salt', NULL, NULL, NULL, NULL, 'PayUmoney Merchant Salt'),
(1475, 'video', 'Video', NULL, NULL, NULL, NULL, 'Vídeo'),
(1476, 'if_you_need_to_change_this_video_for_your_product_,_please_click_here...', 'If You Need To Change This Video For Your Product , Please Click Here...', NULL, NULL, NULL, NULL, 'Si necesita cambiar este video para su producto, haga clic aquí ...'),
(1477, 'change_video', 'Change Video', NULL, NULL, NULL, NULL, 'Cambiar video'),
(1478, 'wallet_system', 'Wallet System', NULL, NULL, NULL, NULL, 'Sistema de billetera'),
(1479, 'wallet_system_enabled', 'Wallet System Enabled', NULL, NULL, NULL, NULL, 'Sistema de billetera habilitado'),
(1480, 'wallet_system_disabled', 'Wallet System Disabled', NULL, NULL, NULL, NULL, 'Sistema de billetera deshabilitado'),
(1481, 'Vendor Registration Email To Admin', 'Vendor Registration Email To Admin', NULL, NULL, NULL, NULL, 'Correo electrónico de registro del proveedor al administrador'),
(1482, 'Admin to Vendor Payment', 'Admin To Vendor Payment', NULL, NULL, NULL, NULL, 'Administrador al pago del proveedor'),
(1483, 'Vendor Package Upgrade', 'Vendor Package Upgrade', NULL, NULL, NULL, NULL, 'Actualización de paquete de proveedor'),
(1484, 'Vendor Payment', 'Vendor Payment', NULL, NULL, NULL, NULL, 'Pago del vendedor'),
(1485, 'your_email_address', 'Your Email Address', NULL, NULL, NULL, NULL, 'Tu correo electrónico'),
(1486, 'already_uploaded_maximum_products!', 'Already Uploaded Maximum Products!', NULL, NULL, NULL, NULL, '¡Productos máximos ya cargados!'),
(1487, 'upgrade_your_membership', 'Upgrade Your Membership', NULL, NULL, NULL, NULL, 'Actualice su membresía'),
(1488, 'upgrade_membership', 'Upgrade Membership', NULL, NULL, NULL, NULL, 'Actualizar membresía'),
(1489, 'delete_contents', 'Delete Contents', NULL, NULL, NULL, NULL, 'Eliminar contenido'),
(1490, 'delete_all_categories', 'Delete All Categories', NULL, NULL, NULL, NULL, 'Eliminar todas las categorías'),
(1491, 'delete_all_products', 'Delete All Products', NULL, NULL, NULL, NULL, 'Eliminar todos los productos'),
(1492, 'delete_all_brands', 'Delete All Brands', NULL, NULL, NULL, NULL, 'Eliminar todas las marcas'),
(1493, 'delete_all_classified', 'Delete All Classified', NULL, NULL, NULL, NULL, 'Eliminar todos los clasificados'),
(1494, 'Are You Sure You Want to Delete All Products?', 'Are You Sure You Want To Delete All Products?', NULL, NULL, NULL, NULL, '¿Está seguro de que desea eliminar todos los productos?'),
(1495, 'guest_checkout', 'Guest Checkout', NULL, NULL, NULL, NULL, 'Pago de invitado'),
(1496, 'guest_id', 'Guest Id', NULL, NULL, NULL, NULL, 'ID de invitado'),
(1497, 'invoice_link:', 'Invoice Link:', NULL, NULL, NULL, NULL, 'Enlace de factura:'),
(1498, 'guest_id:', 'Guest Id:', NULL, NULL, NULL, NULL, 'Id de invitado:'),
(1499, 'deleting_all_categories_will_also_result_in_deleting_all_sub-categories_under_it,_are_you_sure_you_want_to_delete_all_categories?', 'Deleting All Categories Will Also Result In Deleting All Sub-categories Under It, Are You Sure You Want To Delete All Categories?', NULL, NULL, NULL, NULL, 'Eliminar todas las categorías también dará como resultado la eliminación de todas las subcategorías, ¿está seguro de que desea eliminar todas las categorías?'),
(1500, 'Are You Sure You Want to Delete All The Brands?', 'Are You Sure You Want To Delete All The Brands?', NULL, NULL, NULL, NULL, '¿Está seguro de que desea eliminar todas las marcas?'),
(1501, 'delete_all_classifieds', 'Delete All Classifieds', NULL, NULL, NULL, NULL, 'Eliminar todos los clasificados'),
(1502, 'invoice_link', 'Invoice Link', NULL, NULL, NULL, NULL, 'Enlace de factura'),
(1503, 'select_sub_category', 'Select Sub Category', NULL, NULL, NULL, NULL, 'Seleccionar subcategoría'),
(1504, 'select_product', 'Select Product', NULL, NULL, NULL, NULL, 'Seleccionar producto'),
(1505, 'guest_checkout_enabled', 'Guest Checkout Enabled', NULL, NULL, NULL, NULL, 'Pago de invitado habilitado'),
(1506, 'guest_checkout_disabled', 'Guest Checkout Disabled', NULL, NULL, NULL, NULL, 'Pago de invitado deshabilitado'),
(1507, 'vendor_commission', 'Vendor Commission', NULL, NULL, NULL, NULL, 'Comisión de vendedores'),
(1508, 'vendor_commission_enabled', 'Vendor Commission Enabled', NULL, NULL, NULL, NULL, 'Comisión de proveedor habilitada'),
(1509, 'vendor_commission_disabled', 'Vendor Commission Disabled', NULL, NULL, NULL, NULL, 'Comisión de proveedores deshabilitada'),
(1510, 'vendor_package', 'Vendor Package', NULL, NULL, NULL, NULL, 'Paquete de vendedor'),
(1511, 'vendor_package_enabled', 'Vendor Package Enabled', NULL, NULL, NULL, NULL, 'Paquete de proveedor habilitado'),
(1512, 'vendor_package_disabled', 'Vendor Package Disabled', NULL, NULL, NULL, NULL, 'Paquete de proveedor deshabilitado'),
(1513, 'vendor_commissions', 'Vendor Commissions', NULL, NULL, NULL, NULL, 'Comisiones de proveedores'),
(1514, 'set_vendor_commission', 'Set Vendor Commission', NULL, NULL, NULL, NULL, 'Establecer comisión de proveedor'),
(1515, 'total_commission', 'Total Commission', NULL, NULL, NULL, NULL, 'Comisión total'),
(1516, 'commission_on_paid', 'Commission On Paid', NULL, NULL, NULL, NULL, 'Comisión de pago'),
(1517, 'sslcommerz', 'Sslcommerz', NULL, NULL, NULL, NULL, 'Sslcommerz'),
(1518, 'commission_amount', 'Commission Amount', NULL, NULL, NULL, NULL, 'Cantidad de la comisión'),
(1519, 'sslcommerz_activation', 'Sslcommerz Activation', NULL, NULL, NULL, NULL, 'Activación Sslcommerz'),
(1520, 'sslcommerz_payment_enabled', 'Sslcommerz Payment Enabled', NULL, NULL, NULL, NULL, 'Pago de Sslcommerz habilitado'),
(1521, 'sslcommerz_payment_disabled', 'Sslcommerz Payment Disabled', NULL, NULL, NULL, NULL, 'Pago de Sslcommerz deshabilitado'),
(1522, 'SSLCommerz_settings', 'SSLCommerz Settings', NULL, NULL, NULL, NULL, 'Configuración de SSLCommerz'),
(1523, 'ssl_store_id', 'Ssl Store Id', NULL, NULL, NULL, NULL, 'Id. De la tienda SSL'),
(1524, 'ssl_store_password', 'Ssl Store Password', NULL, NULL, NULL, NULL, 'Contraseña de la tienda SSL'),
(1525, 'commission', 'Commission', NULL, NULL, NULL, NULL, 'Comisión'),
(1526, 'header_menu', 'Header Menu', NULL, NULL, NULL, NULL, 'Menú de encabezado '),
(1527, 'header', 'Header', NULL, NULL, NULL, NULL, 'Encabezamiento'),
(1528, 'todays_deal_(_show_/_hide_)', 'Todays Deal ( Show / Hide )', NULL, NULL, NULL, NULL, 'Oferta de hoy (Mostrar / Ocultar)'),
(1529, 'flash_section_updated!', 'Flash Section Updated!', NULL, NULL, NULL, NULL, 'Sección Flash actualizada'),
(1530, 'todays_deal_products', 'Todays Deal Products', NULL, NULL, NULL, NULL, 'Productos de hoy'),
(1531, 'latest_featured_products', 'Latest Featured Products', NULL, NULL, NULL, NULL, 'Últimos productos destacados'),
(1532, 'browse_all', 'Browse All', NULL, NULL, NULL, NULL, 'Explorar todo'),
(1533, 'Bulk upload', 'Bulk Upload', NULL, NULL, NULL, NULL, 'Subida masiva'),
(1534, 'Product bulk upload', 'Product Bulk Upload', NULL, NULL, NULL, NULL, 'Carga masiva de productos'),
(1535, 'Physical product', 'Physical Product', NULL, NULL, NULL, NULL, 'Producto fisico'),
(1536, 'Download product bulk upload skeleton file', 'Download Product Bulk Upload Skeleton File', NULL, NULL, NULL, NULL, 'Descargar Product Bulk Upload Skeleton File'),
(1537, 'Download product bulk upload example file', 'Download Product Bulk Upload Example File', NULL, NULL, NULL, NULL, 'Descargue el archivo de ejemplo de carga masiva de productos'),
(1538, 'Sub Category', 'Sub Category', NULL, NULL, NULL, NULL, 'Subcategoría'),
(1539, 'Category Id', 'Category Id', NULL, NULL, NULL, NULL, 'Categoria ID'),
(1540, 'Upload File', 'Upload File', NULL, NULL, NULL, NULL, 'Subir archivo'),
(1541, 'Digital product', 'Digital Product', NULL, NULL, NULL, NULL, 'Producto digital'),
(1542, 'Download digital product bulk upload skeleton file', 'Download Digital Product Bulk Upload Skeleton File', NULL, NULL, NULL, NULL, 'Descarga Digital Product Bulk Upload Skeleton File'),
(1543, 'Download digital produc _bulk upload example file', 'Download Digital Produc  Bulk Upload Example File', NULL, NULL, NULL, NULL, 'Descargar Digital Produc Bulk Upload Example File '),
(1544, 'Products uploaded', 'Products Uploaded', NULL, NULL, NULL, NULL, 'Productos subidos'),
(1545, 'Only this number of products will be uploaded from the xlsx file', 'Only This Number Of Products Will Be Uploaded From The Xlsx File', NULL, NULL, NULL, NULL, 'Solo este número de productos se cargará desde el archivo Xlsx'),
(1546, 'post_product_bulk', 'Post Product Bulk', NULL, NULL, NULL, NULL, 'Publicar producto a granel'),
(1547, 'File is not selected', 'File Is Not Selected', NULL, NULL, NULL, NULL, 'El archivo no está seleccionado'),
(1548, 'Upload your products', 'Upload Your Products', NULL, NULL, NULL, NULL, 'Sube tus productos'),
(1549, 'Sub Category Id', 'Sub Category Id', NULL, NULL, NULL, NULL, 'ID de subcategoría'),
(1550, 'Category ID List', 'Category ID List', NULL, NULL, NULL, NULL, 'Lista de ID de categoría'),
(1551, 'Sub Category ID List', 'Sub Category ID List', NULL, NULL, NULL, NULL, 'Lista de ID de subcategoría'),
(1552, 'Upload Products', 'Upload Products', NULL, NULL, NULL, NULL, 'Subir productos'),
(1553, 'Brand ID List', 'Brand ID List', NULL, NULL, NULL, NULL, 'Lista de ID de marca'),
(1554, 'Category Name', 'Category Name', NULL, NULL, NULL, NULL, 'Nombre de la categoría'),
(1555, 'Sub Category IDs with Category ID', 'Sub Category IDs With Category ID', NULL, NULL, NULL, NULL, 'ID de subcategoría con ID de categoría'),
(1556, 'Sub Category Name', 'Sub Category Name', NULL, NULL, NULL, NULL, 'Nombre de subcategoría'),
(1557, 'Brand IDs', 'Brand IDs', NULL, NULL, NULL, NULL, 'ID de marca'),
(1558, 'Brand ID', 'Brand ID', NULL, NULL, NULL, NULL, 'ID de marca'),
(1559, 'Brand Name', 'Brand Name', NULL, NULL, NULL, NULL, 'Nombre de la marca'),
(1560, 'Category IDs', 'Category IDs', NULL, NULL, NULL, NULL, 'ID de categoría'),
(1561, 'Choose File', 'Choose File', NULL, NULL, NULL, NULL, 'Elija el archivo'),
(1562, 'My Rating', 'My Rating', NULL, NULL, NULL, NULL, 'Mi clasificación'),
(1563, 'Log in to add/edit rating', 'Log In To Add/edit Rating', NULL, NULL, NULL, NULL, 'Iniciar sesión para agregar / editar calificación'),
(1564, 'You have to buy the product to give a review', 'You Have To Buy The Product To Give A Review', NULL, NULL, NULL, NULL, 'Tienes que comprar el producto para dar una reseña'),
(1565, 'All Ratings', 'All Ratings', NULL, NULL, NULL, NULL, 'Todas las clasificaciones'),
(1566, 'No ratings yet', 'No Ratings Yet', NULL, NULL, NULL, NULL, 'Aún no hay calificaciones'),
(1567, 'All Category with ID', 'All Category With ID', NULL, NULL, NULL, NULL, 'Toda la categoría con identificación'),
(1568, 'All Sub Category with ID and Category ID ', 'All Sub Category With ID And Category ID ', NULL, NULL, NULL, NULL, 'Todas las subcategorías con ID e ID de categoría'),
(1569, 'affiliation', 'Affiliation', NULL, NULL, NULL, NULL, 'Afiliación'),
(1570, 'affiliation_points', 'Affiliation Points', NULL, NULL, NULL, NULL, 'Puntos de afiliación'),
(1571, 'copied', 'Copied', NULL, NULL, NULL, NULL, 'Copiado'),
(1572, 'Get Link', 'Get Link', NULL, NULL, NULL, NULL, 'Obtenga el enlace'),
(1573, 'copy', 'Copy', NULL, NULL, NULL, NULL, 'Copiar'),
(1574, 'affiliate', 'Affiliate', NULL, NULL, NULL, NULL, 'Afiliado'),
(1575, 'getting', 'Getting', NULL, NULL, NULL, NULL, 'Consiguiendo'),
(1576, 'getting link', 'Getting Link', NULL, NULL, NULL, NULL, 'Conseguir enlace'),
(1577, 'affiliation_settings', 'Affiliation Settings', NULL, NULL, NULL, NULL, 'Configuraciones de afiliación'),
(1578, 'affiliation_validity', 'Affiliation Validity', NULL, NULL, NULL, NULL, 'Validez de afiliación'),
(1579, 'After this many days the validation for affiliated code will expire', 'After This Many Days The Validation For Affiliated Code Will Expire', NULL, NULL, NULL, NULL, 'Después de estos días, la validación del código afiliado caducará '),
(1580, 'After this many days the validation for affiliated code will expire (default 30d ays)', 'After This Many Days The Validation For Affiliated Code Will Expire (default 30d Ays)', NULL, NULL, NULL, NULL, 'Después de estos días, la validación del código afiliado caducará (30 días predeterminados) '),
(1581, 'After this many days the validation for affiliated code will expire (default 30 days)', 'After This Many Days The Validation For Affiliated Code Will Expire (default 30 Days)', NULL, NULL, NULL, NULL, 'Después de estos muchos días, la validación del código afiliado caducará (por defecto 30 días)'),
(1582, 'ex: 15', 'Ex: 15', NULL, NULL, NULL, NULL, 'Ej: 15'),
(1583, 'Default 30 days', 'Default 30 Days', NULL, NULL, NULL, NULL, 'Predeterminado 30 días'),
(1584, 'affiliation_point_to_currency_rate', 'Affiliation Point To Currency Rate', NULL, NULL, NULL, NULL, 'Punto de afiliación al tipo de cambio'),
(1585, 'ex: 2.56', 'Ex: 2.56', NULL, NULL, NULL, NULL, 'Ej: 2,56'),
(1586, '1 point = X mount of your currency', '1 Point = X Mount Of Your Currency', NULL, NULL, NULL, NULL, '1 punto = X montaje de su moneda'),
(1587, '1 point = X mount of your currency )', '1 Point = X Mount Of Your Currency )', NULL, NULL, NULL, NULL, '1 punto = X montaje de su moneda)'),
(1588, 'Putting 3.2 here means if you convert 10 affiliated points to wallet, you will get 10 x 3.2 = 32 of your currency', 'Putting 3.2 Here Means If You Convert 10 Affiliated Points To Wallet, You Will Get 10 X 3.2 = 32 Of Your Currency', NULL, NULL, NULL, NULL, 'Poner 3.2 aquí significa que si convierte 10 puntos afiliados a Wallet, obtendrá 10 X 3.2 = 32 de su moneda'),
(1589, 'Default 1 A.P. = 1 Actual currency', 'Default 1 A.P. = 1 Actual Currency', NULL, NULL, NULL, NULL, 'Predeterminado 1 AP = 1 Moneda real '),
(1590, 'affiliation_point_earnings', 'Affiliation Point Earnings', NULL, NULL, NULL, NULL, 'Ganancias de puntos de afiliación '),
(1591, 'affiliation_user', 'Affiliation User', NULL, NULL, NULL, NULL, 'Usuario de afiliación '),
(1592, 'points', 'Points', NULL, NULL, NULL, NULL, 'Puntos'),
(1593, 'currency ', 'Currency ', NULL, NULL, NULL, NULL, 'Moneda '),
(1594, 'total earned points', 'Total Earned Points', NULL, NULL, NULL, NULL, 'Total de puntos ganados '),
(1595, 'money converted to currency', 'Money Converted To Currency', NULL, NULL, NULL, NULL, 'Dinero convertido a moneda'),
(1596, 'You have no earnings from product affiliation', 'You Have No Earnings From Product Affiliation', NULL, NULL, NULL, NULL, 'No tiene ganancias por afiliación de productos'),
(1597, 'current_affiliation_link', 'Current Affiliation Link', NULL, NULL, NULL, NULL, 'Enlace de afiliación actual'),
(1598, 'product_affiliation', 'Product Affiliation', NULL, NULL, NULL, NULL, 'Afiliación de producto'),
(1599, 'product_affiliation_enabled', 'Product Affiliation Enabled', NULL, NULL, NULL, NULL, 'Afiliación de producto habilitada'),
(1600, 'product_affiliation_disabled', 'Product Affiliation Disabled', NULL, NULL, NULL, NULL, 'Afiliación de producto deshabilitada'),
(1601, 'channel_comunication', 'Channel Comunication', NULL, NULL, NULL, NULL, 'Canal de comunicación'),
(1602, 'on_delivery', 'On Delivery', NULL, NULL, NULL, NULL, 'Enviado');

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

CREATE TABLE `language_list` (
  `language_list_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'no'),
(2, 'বাংলা', 'Bangla', 'no'),
(4, 'Arabic', 'Arabic', 'no'),
(5, 'French', 'French', 'no'),
(6, 'Chinese', 'Chinese', 'no'),
(7, 'Español', 'lang_7', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `name`) VALUES
(2, ''),
(3, ''),
(46, ''),
(62, ''),
(70, ''),
(71, ''),
(74, ''),
(75, ''),
(76, ''),
(77, ''),
(78, ''),
(79, '');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `membership_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `timespan` varchar(50) DEFAULT NULL,
  `pay_interval` varchar(50) DEFAULT NULL,
  `product_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `title`, `price`, `timespan`, `pay_interval`, `product_limit`) VALUES
(1, 'Silver', '300', '30', '', 10),
(2, 'Platinum', '3500', '30', '', 50),
(7, 'Gold', '2000', '30', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment`
--

CREATE TABLE `membership_payment` (
  `membership_payment_id` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `membership` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_payment`
--

INSERT INTO `membership_payment` (`membership_payment_id`, `vendor`, `timestamp`, `amount`, `details`, `membership`, `method`, `status`) VALUES
(1, 16, 1555409541, 300, NULL, 1, 'paypal', 'due'),
(6, 3, 1474278958, 3500, '{\"mc_gross\":\"43.75\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"QXCY8C6X8J4VG\",\"tax\":\"0.00\",\"address_street\":\"1 Main St\",\"payment_date\":\"03:04:24 Sep 19, 2016 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"95131\",\"first_name\":\"Active\",\"address_country_code\":\"US\",\"address_name\":\"Active IT\",\"notify_version\":\"3.8\",\"custom\":\"6\",\"payer_status\":\"verified\",\"business\":\"kadir_bm@yahoo.com\",\"address_country\":\"United States\",\"address_city\":\"San Jose\",\"quantity\":\"1\",\"verify_sign\":\"A6Fyo.RG2CmUHAdbJ1HeGZnSj3AWAuYRD2vHV92buB9WYMNNbxSvf6Un\",\"payer_email\":\"system@supershop.com\",\"txn_id\":\"6PN17817M0416733P\",\"payment_type\":\"instant\",\"last_name\":\"IT\",\"address_state\":\"CA\",\"receiver_email\":\"kadir_bm@yahoo.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"handling_amount\":\"0.00\",\"transaction_subject\":\"\",\"payment_gross\":\"43.75\",\"shipping\":\"0.00\",\"ipn_track_id\":\"26ff7ba5f0ef\"}', 2, 'paypal', 'paid'),
(7, 5, 1474568814, 300, '{\"mc_gross\":\"3.75\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"QXCY8C6X8J4VG\",\"tax\":\"0.00\",\"address_street\":\"1 Main St\",\"payment_date\":\"11:41:38 Sep 22, 2016 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"95131\",\"first_name\":\"Active\",\"address_country_code\":\"US\",\"address_name\":\"Active IT\",\"notify_version\":\"3.8\",\"custom\":\"7\",\"payer_status\":\"verified\",\"business\":\"kadir_bm@yahoo.com\",\"address_country\":\"United States\",\"address_city\":\"San Jose\",\"quantity\":\"1\",\"verify_sign\":\"A.Z5yEeSJElINVLnLNYfrb750vgiAJdLRn38Ub6I-sD-cMvsd25mBIx-\",\"payer_email\":\"system@supershop.com\",\"txn_id\":\"1W646161MB662172C\",\"payment_type\":\"instant\",\"last_name\":\"IT\",\"address_state\":\"CA\",\"receiver_email\":\"kadir_bm@yahoo.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"handling_amount\":\"0.00\",\"transaction_subject\":\"\",\"payment_gross\":\"3.75\",\"shipping\":\"0.00\",\"ipn_track_id\":\"ef0d66381cdd0\"}', 1, 'paypal', 'paid'),
(8, 1, 1521619820, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CX6D3Rh6VsMGvS\",\"object\":\"customer\",\"account_balance\":0,\"created\":1521619818,\"currency\":null,\"default_source\":\"card_1C821HKmGdRDZlHSwmXJ4Si8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"bicyq@yahoo.com\",\"invoice_prefix\":\"0530537\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1C821YKmGdRDZlHSAV2SCPEB\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1C821YKmGdRDZlHSb3XnAy6N\",\"captured\":true,\"created\":1521619820,\"currency\":\"usd\",\"customer\":\"cus_CX6D3Rh6VsMGvS\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(9, 1, 1521620034, 300, NULL, 1, 'paypal', 'due'),
(10, 1, 1521620159, 300, NULL, 1, 'paypal', 'due'),
(11, 1, 1521620582, 300, NULL, 1, 'paypal', 'due'),
(12, 1, 1521620644, 300, '', 1, 'paypal', 'paid'),
(13, 10, 1525076695, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Cm5UQffha9h2YI\",\"object\":\"customer\",\"account_balance\":0,\"created\":1525076690,\"currency\":null,\"default_source\":\"card_1CMXJNKmGdRDZlHSzMKsk366\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"dixon@gmail.com\",\"invoice_prefix\":\"8BE2516\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CMXJYKmGdRDZlHSZyFpNHni\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CMXJZKmGdRDZlHSm1ufBbIk\",\"captured\":true,\"created\":1525076692,\"currency\":\"usd\",\"customer\":\"cus_Cm5UQffha9h2YI\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(14, 3, 1527065720, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CuiBndcDg1uPoi\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527065726,\"currency\":null,\"default_source\":\"card_1CUskZKmGdRDZlHS0C3mHdQf\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"demovendor.tom@gmail.com\",\"invoice_prefix\":\"2D329EB\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CUskmKmGdRDZlHS3hElyjCo\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CUsknKmGdRDZlHSklvk2Dlo\",\"captured\":true,\"created\":1527065728,\"currency\":\"usd\",\"customer\":\"cus_CuiBndcDg1uPoi\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(15, 16, 1530099145, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D7rc6ldZZFfVqC\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530099144,\"currency\":null,\"default_source\":\"card_1ChbseKmGdRDZlHSfJOumaUL\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"BC19F08\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChbssKmGdRDZlHSCsQxAX1q\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChbssKmGdRDZlHS1GntjkvY\",\"captured\":true,\"created\":1530099146,\"currency\":\"usd\",\"customer\":\"cus_D7rc6ldZZFfVqC\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(16, 16, 1530168298, 2000, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8ACvYDzZXIxFk\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530168298,\"currency\":null,\"default_source\":\"card_1Chts3KmGdRDZlHSFiZIHHEm\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"A938C83\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChtsEKmGdRDZlHS4JZBq5FO\",\"object\":\"charge\",\"amount\":200000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChtsFKmGdRDZlHSQ8v9io5D\",\"captured\":true,\"created\":1530168298,\"currency\":\"usd\",\"customer\":\"cus_D8ACvYDzZXIxFk\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 7, 'stripe', 'paid'),
(17, 16, 1530168373, 300, '{\"mc_gross\":\"300.00\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"RSS9FYUZWM7SC\",\"address_street\":\"99 White Fabien Court\",\"payment_date\":\"23:47:03 Jun 27, 2018 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"37750\",\"first_name\":\"Hillary\",\"address_country_code\":\"US\",\"address_name\":\"Hillary Long\",\"notify_version\":\"3.9\",\"custom\":\"17\",\"payer_status\":\"unverified\",\"address_country\":\"United States\",\"address_city\":\"Voluptatem Omnis perspiciatis cum voluptatem qui beatae dolor duis\",\"quantity\":\"1\",\"verify_sign\":\"At7M.vjpvoOSoEuUejMvbAJc494kAx7kHh-1Y.52PvuWhoDgXxhsXz6a\",\"payer_email\":\"developer.activeitzone@gmail.com\",\"txn_id\":\"2Y8310662A433535N\",\"payment_type\":\"instant\",\"last_name\":\"Long\",\"address_state\":\"IN\",\"receiver_email\":\"alvi@gmail.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"asdddddddddddd\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"transaction_subject\":\"\",\"payment_gross\":\"300.00\",\"ipn_track_id\":\"65414272c8c47\"}', 1, 'paypal', 'paid'),
(18, 16, 1530168775, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AKObcFPP1vAV\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530168775,\"currency\":null,\"default_source\":\"card_1ChtzjKmGdRDZlHSbxWfgNJU\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"D1DE7D7\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChtzvKmGdRDZlHStJqXGEKC\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChtzwKmGdRDZlHSlohqyjOW\",\"captured\":true,\"created\":1530168775,\"currency\":\"usd\",\"customer\":\"cus_D8AKObcFPP1vAV\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(19, 16, 1530169135, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AQZCuS6xk8Hl\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530169134,\"currency\":null,\"default_source\":\"card_1Chu5YKmGdRDZlHSjo3NZYOX\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"C96D5D0\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Chu5jKmGdRDZlHSHmmPoSdN\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Chu5jKmGdRDZlHS4F0fMktr\",\"captured\":true,\"created\":1530169135,\"currency\":\"usd\",\"customer\":\"cus_D8AQZCuS6xk8Hl\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(20, 16, 1530169512, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AWG4ROXH9sMs\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530169511,\"currency\":null,\"default_source\":\"card_1ChuBhKmGdRDZlHSGZRs8N4v\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"9184D2F\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChuBoKmGdRDZlHSLRuAsAcZ\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChuBoKmGdRDZlHSLVz78D7S\",\"captured\":true,\"created\":1530169512,\"currency\":\"usd\",\"customer\":\"cus_D8AWG4ROXH9sMs\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(21, 1, 1530439057, 2000, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9Kz2ZUyQFOQQp\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530439057,\"currency\":null,\"default_source\":\"card_1Cj2J5KmGdRDZlHSvwNT3KqG\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"bicyq@yahoo.com\",\"invoice_prefix\":\"ADC7B23\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Cj2JKKmGdRDZlHSA2ZWo10C\",\"object\":\"charge\",\"amount\":200000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Cj2JKKmGdRDZlHSuWh2VsKJ\",\"captured\":true,\"created\":1530439058,\"currency\":\"usd\",\"customer\":\"cus_D9Kz2ZUyQFOQQp\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 7, 'stripe', 'paid'),
(22, 17, 1531638449, 3500, '', 2, 'cash', 'paid'),
(23, 17, 1531638483, 3500, '', 2, 'cash', 'paid'),
(24, 3, 1532428490, 3500, NULL, 2, 'PayUmoney', 'due'),
(25, 3, 1532428555, 3500, NULL, 2, 'PayUmoney', 'due'),
(28, 3, 1532430467, 2000, '{\"tran_id\":\"20180728\",\"val_id\":\"180724171133QXBFr94e14DEF7j\",\"amount\":\"2000\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"1960\",\"card_no\":\"\",\"bank_tran_id\":\"1807241711331wLRDkP38emj7r5\",\"status\":\"VALID\",\"tran_date\":\"2018-07-24 17:11:23\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"33a9272de9c84e09dd866cfd2ff0d1f8\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"1139b0b541db8af03f4692dc5a95c78e5b34852e7dfca4151635eb9eb3101dd7\",\"currency_type\":\"BDT\",\"currency_amount\":\"2000.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 7, 'SSlcommerz', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `upload_amount` int(11) DEFAULT NULL,
  `image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `name`, `amount`, `upload_amount`, `image`) VALUES
(1, 'Default', '0', 2, '[{\"image\":\"plan_1.png\",\"thumb\":\"plan_1_thumb.png\"}]'),
(2, 'Bronze', '15', 10, '[{\"image\":\"plan_2.png\",\"thumb\":\"plan_2_thumb.png\"}]'),
(3, 'Silver', '25', 15, '[{\"image\":\"plan_3.png\",\"thumb\":\"plan_3_thumb.png\"}]'),
(4, 'Gold', '35', 20, '[{\"image\":\"plan_4.png\",\"thumb\":\"plan_4_thumb.png\"}]'),
(5, 'Platinum', '45', 25, '[{\"image\":\"plan_5.png\",\"thumb\":\"plan_5_thumb.png\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `package_payment`
--

CREATE TABLE `package_payment` (
  `package_payment_id` int(11) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(30) DEFAULT NULL,
  `payment_status` varchar(30) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `purchase_datetime` int(11) DEFAULT NULL,
  `payment_code` varchar(50) DEFAULT NULL,
  `payment_timestamp` int(11) DEFAULT NULL,
  `expire` varchar(20) DEFAULT NULL,
  `expire_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_payment`
--

INSERT INTO `package_payment` (`package_payment_id`, `package_id`, `user_id`, `payment_type`, `payment_status`, `payment_details`, `amount`, `purchase_datetime`, `payment_code`, `payment_timestamp`, `expire`, `expire_timestamp`) VALUES
(1, 2, 7, 'Paypal', 'pending', 'testing', 15, 1526809102, '', 1527663094, '', 0),
(2, 2, 7, 'Paypal', 'pending', 'testing 1234', 15, 1526809416, '', 1527663451, '', 0),
(3, 2, 7, 'Paypal', 'due', 'none', 15, 1526809510, '', 1527663535, '', 0),
(4, 2, 7, 'Paypal', 'due', 'none', 15, 1526809641, '', 1527663565, '', 0),
(5, 2, 7, 'Paypal', 'due', 'none', 15, 1527054416, '', 1527663607, '', 0),
(6, 2, 7, 'Paypal', 'due', 'none', 15, 1527054430, '', 0, '', 0),
(7, 2, 7, 'Paypal', 'due', 'none', 15, 1527054448, '', 0, '', 0),
(8, 2, 7, 'Wallet', 'paid', '', 15, 1527505100, '2018058', 1527505100, 'no', 0),
(9, 2, 7, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CwcODJSgJ33IwX\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527505467,\"currency\":null,\"default_source\":\"card_1CWj9EKmGdRDZlHSZ0dVOt0f\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"6C5D458\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CWj9LKmGdRDZlHSHxfgKBPm\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CWj9MKmGdRDZlHS0E0rSwAI\",\"captured\":true,\"created\":1527505467,\"currency\":\"usd\",\"customer\":\"cus_CwcODJSgJ33IwX\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1527505467, '2018059', 1527505467, 'no', 0),
(10, 2, 7, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CxLBf86vTofKeu\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527672118,\"currency\":null,\"default_source\":\"card_1CXQV9KmGdRDZlHSkj2ffaQQ\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"81BD7F1\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CXQVIKmGdRDZlHSB9JHc7o6\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CXQVJKmGdRDZlHSKXNwZTUC\",\"captured\":true,\"created\":1527672120,\"currency\":\"usd\",\"customer\":\"cus_CxLBf86vTofKeu\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1527672108, '20180510', 1527672108, 'no', 0),
(11, 3, 7, 'Paypal', 'due', 'none', 25, 1527743164, '', 0, '', 0),
(12, 2, 13, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CypmvgOKdcuXS8\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528016564,\"currency\":null,\"default_source\":\"card_1CYs6gKmGdRDZlHSZnAhEeYN\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.shop@gmail.com\",\"invoice_prefix\":\"A2955CE\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CYs6sKmGdRDZlHSuw6LMZos\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CYs6sKmGdRDZlHSuLIyXJWG\",\"captured\":true,\"created\":1528016566,\"currency\":\"usd\",\"customer\":\"cus_CypmvgOKdcuXS8\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1528016552, '20180612', 1528016552, 'no', 0),
(13, 2, 15, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzwzUsnuVldUTd\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528274022,\"currency\":null,\"default_source\":\"card_1CZx5HKmGdRDZlHS2t6FNVNa\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"georgiaray@gmail.com\",\"invoice_prefix\":\"3F6FB06\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZx5QKmGdRDZlHSeqGVQWeW\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZx5QKmGdRDZlHStPMP95rN\",\"captured\":true,\"created\":1528274024,\"currency\":\"usd\",\"customer\":\"cus_CzwzUsnuVldUTd\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1528274007, '20180613', 1528274007, 'no', 0),
(14, 3, 16, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Czx9Z1ME9I52Oj\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528274615,\"currency\":null,\"default_source\":\"card_1CZxErKmGdRDZlHS2ryYMyAq\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"lee@gmail.com\",\"invoice_prefix\":\"845AF91\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZxEzKmGdRDZlHSiZBBQbFq\",\"object\":\"charge\",\"amount\":2500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZxEzKmGdRDZlHSXQWkv6Wi\",\"captured\":true,\"created\":1528274617,\"currency\":\"usd\",\"customer\":\"cus_Czx9Z1ME9I52Oj\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 25, 1528274599, '20180614', 1528274600, 'no', 0),
(15, 4, 17, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzxyZtzTluDcVG\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528277707,\"currency\":null,\"default_source\":\"card_1CZy2jKmGdRDZlHSPEsoHOf8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"larrypena@gmail.com\",\"invoice_prefix\":\"E034D67\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZy2rKmGdRDZlHSC58ffXbO\",\"object\":\"charge\",\"amount\":3500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZy2rKmGdRDZlHSUB0evIC0\",\"captured\":true,\"created\":1528277709,\"currency\":\"usd\",\"customer\":\"cus_CzxyZtzTluDcVG\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 35, 1528277691, '20180615', 1528277692, 'no', 0),
(16, 5, 18, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzyDdeiAUUEPil\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528278604,\"currency\":null,\"default_source\":\"card_1CZyHCKmGdRDZlHS66s0Ctkk\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"noraharris@gmail.com\",\"invoice_prefix\":\"A0030FC\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZyHJKmGdRDZlHSbdCk7oty\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZyHKKmGdRDZlHSohojhb9q\",\"captured\":true,\"created\":1528278605,\"currency\":\"usd\",\"customer\":\"cus_CzyDdeiAUUEPil\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1528278588, '20180616', 1528278588, 'no', 0),
(17, 5, 3, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9i6araPgmiPwn\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530525022,\"currency\":null,\"default_source\":\"card_1CjOflKmGdRDZlHS8xYwhpzq\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer3@shop.com\",\"invoice_prefix\":\"9DFF13D\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CjOfrKmGdRDZlHSnv4Lw7hi\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CjOfrKmGdRDZlHSIRkmP6N4\",\"captured\":true,\"created\":1530525023,\"currency\":\"usd\",\"customer\":\"cus_D9i6araPgmiPwn\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1530525023, '20180717', 1530525023, 'no', 0),
(19, 4, 7, 'PayUmoney', 'due', 'none', 35, 1530531560, '', 0, '', 0),
(20, 5, 22, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DAkrzbCEBlxP03\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530765971,\"currency\":null,\"default_source\":\"card_1CkPM2KmGdRDZlHSFfoyUbJ2\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"marketing.activeitzone@gmail.com\",\"invoice_prefix\":\"A5ED676\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CkPM8KmGdRDZlHSD2Fdrnvb\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CkPM8KmGdRDZlHSBFeIdVNn\",\"captured\":true,\"created\":1530765972,\"currency\":\"usd\",\"customer\":\"cus_DAkrzbCEBlxP03\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1530765972, '20180720', 1530765972, 'no', 0),
(21, 5, 23, 'Wallet', 'paid', '', 45, 1531634185, '20180721', 1531634185, 'no', 0),
(24, 4, 7, 'SSLcommerz', 'paid', '{\"tran_id\":\"20180724\",\"val_id\":\"1807241627541mUbsn0kqoeWVuq\",\"amount\":\"35\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"34.3\",\"card_no\":\"\",\"bank_tran_id\":\"180724162754Ii6p2KJnBH5jDlG\",\"status\":\"VALID\",\"tran_date\":\"2018-07-24 16:27:38\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"37cb03693d014285a7cea9cca3f606ec\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"90cba376582ea23e1bc64274538eec2fc0b5da6b3fbed4c6529afb4406b476ac\",\"currency_type\":\"BDT\",\"currency_amount\":\"35.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 35, 1532427912, '20180724', 1532427912, 'no', 0),
(25, 4, 22, 'SSLcommerz', 'paid', '{\"tran_id\":\"20180725\",\"val_id\":\"1807251144111YNM4LsS30YofK9\",\"amount\":\"35\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"34.3\",\"card_no\":\"\",\"bank_tran_id\":\"1807251144110qo2y4fHI4aWTvE\",\"status\":\"VALID\",\"tran_date\":\"2018-07-25 11:43:52\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"d5f200f705ea203b954f3cf50e72866e\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"0de0de16b0cc67cafdaa4aaedccc4a8be010bb0a827399a35f88e82d142af24d\",\"currency_type\":\"BDT\",\"currency_amount\":\"35.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 35, 1532497253, '20180725', 1532497253, 'no', 0),
(26, 5, 24, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_FEZRsMkhqAuzb7\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1560245404,\"currency\":null,\"default_source\":\"card_1Ek6IjKmGdRDZlHSyVdol7jX\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"hm@gmail.com\",\"invoice_prefix\":\"51F53B47\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Ek6IrKmGdRDZlHSb1FskWjT\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1Ek6IsKmGdRDZlHSA8qHLo6h\",\"billing_details\":{},\"captured\":true,\"created\":1560245405,\"currency\":\"usd\",\"customer\":\"cus_FEZRsMkhqAuzb7\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1Ek6IjKmGdRDZlHSyVdol7jX\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1Ek6IrKmGdRDZlHSb1FskWjT\\/rcpt_FEZRpAv0xKpi1Pr63aOwReZeG4xOTfK\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1560245406, '20190626', 1560245406, 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `parmalink` varchar(100) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `parts` longtext DEFAULT NULL,
  `tag` longtext DEFAULT NULL,
  `fixed` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(11, '0', 'new page1', 'new_page1', NULL, '[{\"size\":\"3\",\"type\":\"widget\",\"content\":\"<p><br><\\/p>\",\"widget\":\"product_categories,advance_search,special_products\"},{\"size\":\"9\",\"type\":\"content\",\"content\":\"<h2><span style=\\\"font-family: inherit; color: rgb(255, 0, 0); vertical-align: super; font-weight: bold;\\\">This is new page<\\/span><\\/h2>\\r\\n<p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur?<\\/p>\\r\\n<img class=\\\"img-responsive\\\" src=\\\"data:image\\/jpeg;base64,\\/9j\\/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP\\/sABFEdWNreQABAAQAAAA8AAD\\/4QMqaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI\\/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjUtYzAxNCA3OS4xNTE0ODEsIDIwMTMvMDMvMTMtMTI6MDk6MTUgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjQxNjQ1RTM3MTE1MTFFNjk4NDhBQTQ5RUREM0E4QjgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjQxNjQ1RTQ3MTE1MTFFNjk4NDhBQTQ5RUREM0E4QjgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCNDE2NDVFMTcxMTUxMUU2OTg0OEFBNDlFREQzQThCOCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCNDE2NDVFMjcxMTUxMUU2OTg0OEFBNDlFREQzQThCOCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI\\/Pv\\/uACZBZG9iZQBkwAAAAAEDABUEAwYKDQAAOJ0AAEtcAAB8gQAAybX\\/2wCEAAYEBAQFBAYFBQYJBgUGCQsIBgYICwwKCgsKCgwQDAwMDAwMEAwODxAPDgwTExQUExMcGxsbHB8fHx8fHx8fHx8BBwcHDQwNGBAQGBoVERUaHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fH\\/\\/CABEIAggBhQMBEQACEQEDEQH\\/xADuAAABBQEBAQAAAAAAAAAAAAABAAIDBAUGBwgBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQYQAAEEAQIFAwIGAwACAwEAAAEAEQIDBBASICExEwUwIhRAMkEjMyQVBlBCNEM1YEQWJREAAQIDAwkFBgUCBQQDAAAAAQACESEDMUESECAwUWFxIjIEgZFCUhNAobHBciPhYoIzFNGSUPBDUyTxomMFczREEgACAQIHAQEAAAAAAAAAAABQESGAAQAQIGBwkGGgcRMBAAIBAwMEAgMBAQEBAAAAAQARIRAxQVFhcSCBkaEwsfDB0eFA8VD\\/2gAMAwEAAhEDEQAAAfRdMyDgIIAINIHJuBJkECBAQQIECBAgQIECBAhIaEgQAECBAgQBpAgRSTq6ZNy2grO1ScmE85lbPR6HA5kdKFj4d\\/KrUklBYBKh9ISFiAgAIIEBBAgTACBAgQIECBAgAIQBMeMIoEzDpJNbFSkcHtlCqYEQwqQSNWIp2V7Od6yHiNFjaJ7mthogYxCTEAAA4CD07EudFxpzSBzHAgAEAAQAYOWkQrNc256FPEFTuZXEY8nfBMe1VThTQW2JHPZ7a\\/N09Bm3gwK6qQJEkii6qNsEpJYuiqbaLWk1uZvUca++T6SAsQIECBAgQMB4IKIcaLtWsRyy4c5jax9skDmUk4wIXgIuZjbT5OreyqQGsrzUiJBEKrdWnSS6HDW3ncLGhUq8i46qsNJzqbZvoQIECBAgQIEEYR5kllSjiye2DEctvOw5jbx9sQDmom6ssBfQ4OZnTS5Ovfzb2Rp1s6kCUC1WbrUWUbmGrEwhpU+hz06b+vHf0i7UuYgLEAYUIECBAySLmp+6r6rlEusawiRpnbFEzI2yQpqVmzORXl3UPHzzqzwdu9m3gBwRT0PaLVZlantQ7eehAhj0661ww3Zz6jo5rly4ADmNZTjW3eT0IECCOSHBv2INFy4usFgkrTOyEIsvbJ7UtDamuCC3FTOsDQHm925m5EOZBnT2PEWQUQs3cbim2DtOWq660wy8zE9D7vPuaSgQIEDRkRBAgQAEAZSDmxdULDEbznahDO2xcxzUVy0CFyLKObdWuLt3cyQAOvFOE9hZXalT089K0VWWl+sqOe7Nr53HaljPpHf5uhtmgQIECBAgQIECBAGUGufc9RLxnKqJxV2V98oROagajZIK9FuT52izx9u7m5QaOtDcDwDMLRb2dWstIR1M9LTkRU+xxmO9bJ9718Ox1YIECBAgQIECBAgQNZnNYOuXU46ZDl2mdlVWJq75wqRSqBDG84XjOUOcbtcvXvZuQGsqjlRPIylg2dVz61MtK1CysFQS+Xt5U1sSdtty7PZzytIECBAgQIECBAgazKc4m\\/P1XP0Y9S+821OUKzckGtCNOh5uqwGfpln64c63pYdW5DIMBUSIUDWV4ubn2z40dpNfDWW3nTXOaqbGtAnqb59Xqwt6wgQIECBAgQIECBrMipx+jm6nl6cqoFZxMjTG2UTlyubPTf5+h7MzXKnphz1PR5uraluCcLYRBUQJY59s\\/PWrNaGuWbj0TbHO9FM5LvLOCDfMug7+S1pIY1DgcCBAgQIECBjMqoyejl6fl7KDmveTwKqjvhTeehl0Qjs8\\/VZpV9uZtZ87Re5+vVglDTTsshDOls5d2p5EbWHCsrRvB6GeN0WOKdnlG4GpcanZhh9O+F6PlTYPs+Do1aRBAgQIGoLK7WfUYm2HW8\\/VUFT0wcnC3Q6OXMI1I2hKyM+m3Rc043E861uc3fPKNZbEdGiqgar4ax5aUZqtdxBi+nd3M05w5fo30+bPQ5ixxE+iu9GPm3t8rOrztzK+p4Orbw2mVITE3ggpE0dIZqo8jHvPtcenKqKt4JGfVVNuXlTn0StldOVGpdVNOB+pFFd\\/5X0GffPh93j9Aunby6XOMzzPRdoqKvI7NLlrEolTl1rGg65ZUOKtXzlN1RLU0fY8k6c8g6bWpFW89YGow1Mtb2W0F48N2+Zaw79rHbOrPrMOvH25s54ibqGmTcc8s5njpGuZl0PjWDr8vv8Aoyz1r1vjfR44YPrfNzLa5nrozpQ8X2rPdlma6N3b24gyHexni7TSRxk+Xr0\\/LhX6U5rQ9Dycfq4oB81nh1Wm+vKYyVAHJGpRxG3Doc\\/pdPnrSvPp+fr53fkquLE3FOnKdE83ExZQZpy1tK6mvF03ZyYuO3d+f7e1j1qo826fOxtuXrOfq0uD2oPRnpNccbfZ6UcLCZq3Ubu4s8zkNfizhtrSYunxuW6OKKdo4x2t419aaKQUlzy2WsGd53Pr2T36iaoC7PPo5HXlqtXAequbT59tjznLo3KmrQyQkOqGlBO\\/G3ofN6O3pPkPT53Q5bdTl6WV2XLuX3FStK\\/Liuvo0c85oiJLAyt\\/LnV10uvDmX5ee8W1QSkcim6pcy\\/1YZvNvHnowfa1r1klIXaxvxd8+YFQXQbRgdk8tz1mcliWFTkmNFoJhNyLK09rw9GjccXpydOelkdFz7OcFOdZ7WdCxM08sZpMDK8qM9rXVq5eMjzplMdDAeSKYTQjSNDYctLs726mCm13EbcVWFEHw9nRee+zz4fndNXnoICZQnJG1CGUkHeZdvfTrz9vJ6Lol7HSaWWWTpu6J2XnHJxcVphSzrl55u326Wzz+f5+a8TRNKkqGtiWUlSfajirGi7bS+lyKYu5jbi7xponk17XDetz8l5ncyWkIABBAkIZEh7616vTuELPMcfTXSqptNd3HDDq9554tdGfzY62zxuc5lcvY6dlx48CvOYAQgLACQGEHNRocLuLfRxNRrus9eO0xqIsIv2uU9Lmxefdo2JtBqaBICetldzO6rL83LrvRx0tVz8ne2kXb036vPCqnmdPQ3NUMs9iIxiudOTsr7ZRcm\\/NouEMIQBABAWBDEOZ3jnbUwNdxlryOuNdzbTvsk2yiYgAIA0UEAG3ydr5pAQIEABDArTJ16aL1uE4i2qZLQqKM1XkN8OrXa8V3TzrXT5rAaAGwTWNGAaJgBPW5ujTlMa3ufoxt+dNTzU6rM2iEHA9MgQIEL2Wl7LUAgQOBAAIUE69PiL7Y3qJNa1EnWQ4nTODMr0LrnRWO6\\/LQBgEgQIECBA1leaszTXOjjtma4oJlSRwXZlSzcEU8JU3tEUo\\/ScN5E0BBAQQIKqbW8vPXiOnq6OnGh4JDWQIkrz6p36ARImvx05DAAAg4CABgALWV35UbXQZbc3pjVERuqIdTGFl46FDhlDGuuV9hGoAggIIECDLmr7OYxz5Xr9LpabgaDQaiIdE5HXOidjZVF+ZFWAFIDWRAGFgRCDQ28dtRQ1nUZbcxphQFeVaQ6O0YosnHQg1VKmmvTJ1lBAQQIECCAdWSxS5ZnM36HR25ERhCORKFOhKu6+PZw9ba5li9HDD0cpB4mMgZGxNRhCELnax6NSZhZ1We3P3hludGL2Fpz22OaiBOQBOkyvaF0s2gQEEBAAQyZq7U0Tbn4XL79XSXcqRQ8UgmBQTkrybmPTtc3Tm6c9Tr4mpFo0g1A05lFVWc1mtrHo0JWPS2p0hrKm4vTW3nvla5UEMFMOKdHLTtJbwQECCBAgiHlw9a5zMNc9S97Yt3k9UVKio4qNa1TlvPocZ66la8\\/0mpUO\\/zY5TgktMcoLk1WHi65ZiNfHe6lzzUS00nnM56CLsTpXuYAAi3BNas3rpoABAggQIM2ae1cpZWGlVGnlXlirmPR5rPTmaVhmppnPJe59fQIIOfpPP0N7eGNTEEjlNNZZlpPD2xy5d+NZiecc0J13qiyRvzZmn2NQ4AMzemm8ACAggIIEGRNX6l7rFjY4S+H5qzmfT5L\\/VnXbtOdXSKM10PFv6fz0B189Y3N9w0HgmJDgIVmq8lNmftlzmuOPh0dUloOdBVmzWzYkEYC9NSgAQiCGQQIIQoTWlUxRdWXVxqjF8Jc8f6HLY3m\\/vHazOnm+S3m1zb+scmjwxsOtTev0cTxIECBAgjQQzQx98uc2wxcOjsM62BSDpTWprAEU0OfLSKafUytPCSk8EDAz5bwvWqmdyE5OGuRz7cFvny3dy3emOn7MO84dXI4fpibl29a5NHMxo6sjHfc0w19uVAAaCQ5kQShiMpaZ85plzcadnjpuskCoi\\/pCGkEdmajiqedoHtEADwfSm0mYT2Zi3umeRx68thvw\\/Xz4HTz6\\/dl03Rj13LpJL4nonW4t\\/T+anszo25bDv6nfg09MUCAAgIRsIYgUdM8PXLks77aL6GaCKUvV1hwyDk7EuUKoNGocYywgAcK3akFl4739MMXj34PHo430OPN0z2\\/Qx0ujPeyNLOuO0O24N+7xp4Uc9K1bbN8qBAgAICEQODLDH2ywdMuQy17NraSmjSBVpXMqHjQOTIJqYuQzabtWTHqUg0+aledLC7W2eXw9PA8vRyvo8uLvht92Oz1ZaMGjlXJ1XqHn79FDcFaLc1YuUCAAkECENIBmio6Rk1FeKLLF5FXbx01bQGBJNw3pkLkN1auzzGtqEaTSnzMLqrVR4g5NOP4+g9mHlnocm525b3Thr5U6Xyjr1HwPS2OnDCw6+h6eJo5bgggaAAgmNEWUWoUubqdiXRpCoA9jm2s6NyYAg4HAgo8W9THSrorAS3MoS0nijbtiasqWXRzHH0bfVh4j6fJvdmO10462VNTzstel+V9qrnqc30\\/sedq9fO+pfSQmgAQIGtOHScxhh3GVF6d526mMH47bCsJkCIjQEMzh6c7k3rsjBgAGtJM1IT0XMmk43Ntq6x456\\/Bq92PQ75dDheUFvi6dT571Kboct19HL7vk9RrG9SKAwAgKI6T06TnFtYydIWveU9ZodJX2GWwTcBAiIIMPy+2DK30iwtFhBzUrTmoM7x5rOy019I8k9jgu92HSa59Jz1yRffeb0s8ruzY0a1Dx77XscHPd3N2FxtA0GoQAGMe1m1NRrPVVxBxFcRsYP0PHVAgIICNBlcPTWyuCLhilLlczXMlKSlLSKXOZa5GemszzL2POm78ejvPpsa4sr1vyOzO4ujGy2aGlUSZk\\/scnKa595cWnIBAGmMcilSr1OXUrl6K9LR2xmqIWui5+lAgIIECAjQECEc1BnVfO4s6bFCXILAz1jSqFcP6vCvR59pz1ONcdT9V8H0I4rD5+iMOh6eaLK5Klnp8\\/L1Pb64TNISAMAQqg5pXGXz9N+Sbp57YgO\\/lq0YE4CMoI0BBAQQIECAgkIGs+bB6Utw29uHQ6T0fPXPld5896dzbLE5uiBPoernn1jC8vs2vV463Xlkuet0wAkwAgrjTWbefL49Wwlsa4zVAC\\/h0IEBYUBhQgQEECGQQIECGgcL5wHfhgIOzLe2jp8KxMde28H0tTq58Xm3rTXQdPPZ1nnvO7NXTC56vNnaxLUXrzAIAAVBrM0yws9tXTHUlmlG41efqAEECAgBkSBAgQ0hMIJCYU42fOVLZiqYWt40OrLrsTAw37PwPS1urnyOfetL3ejCzrMEVl+X06\\/fzS+nzyVI1wawCQGbazO0xxs9tPTG8J86AWhlugQJCYkIAMiAyCERoEhAQQEfzxrFweZLubxN1RtzNfl29B+d9TW6ufMx1rzezthY1ktYXlde31c8nVnD1Z2dudl4pgCWNo2UNcLXP1VbzgqXy2zWvOhAAQQIECG5CAAhpCBAkICBDxDecSlDDv9MTbzcFPx7ei\\/PelqdOGdlrWmtnbGa5LVfk1by3f9Pmr9UWdIZ0cYBBLG0bKWmVvm6aGmMVIDgT16QaIkBApoECBAQIyJJpoCIEaF5YacUrano9EHWZA1uDo9I8fsv7Z0MtKed7G2M2kuZT87aHl01fX5GduSbk35Y9MEE0bxhS0xt83XQ2wbUvVVpq9pmAIJMocBVFCGBlBCYHjQQoQ0ghwVvzRtqNLog6yyX1XmdXofDvPcUsdc\\/PTZ2xmuS1n+T0qXp+nyu9HCKas6xS6OSREsbRTWbUaWWmZcaA3J47nX5twgsSEBBzCBYhQsQX7T2MCqgA5pzOZpeO6qOXe2iTWWw\\/QeDo7Hh3e1Rx1zMtdnbCxpLhZXjdlnfK73YzelzwS7dzDrzsvGWN0VS0xn5umpti9qWazUa+W0bHNBDgIFhAgQAQjlacCEGnAgLXK0\\/G6bJehtD9Zcn6fy10fn9QiqOGuTjrtbY2dIEPP8vptdOVrpyl9PANWGmNV+jilz3SqlpjPz9NbbB9JydWKt8fSAQwgAAANGAIFiqbW+UrEDEECCCMPD9jGC9pMuqEnqPLfX43T5OihhrkY7be2Fm5bi6XDvZ3zsdOcnpYSVMzQCvtyuKE6ZumNzn6M240lUyeAi3zbBiaKaBwPaIOQ4ZEgkpXtJfRmwIENNEPH+mOcZbuZdkyT23i1voj59c3i6cjHbZ2xs1DOeq\\/Nra6cpdZm9LnluXgAjqItcVGmXpne598y411Us1gC2MNUBQASHAkwgAAaNqAxWT6ZwgUOYmOFwWy872nQuX7TSxr2Hj16CGZeXxdWPz77W2Fipg5NIsru9mDqHehjPcTtIGBm6ZnO6Ar4Z4nMA44d3n1AwgAQLAmwADQA0xMcJNXaiUCBYUZc75Bvx3bx4XTy2cb9i4dbsiCtlpz\\/H27WmNm4p8GyC924oD35Xtcng1GDaqBezdOTR0mjLcwhXpLk6QhoPBzCIscCBwPaIiBGgAmoaCGERHRWW3nvdwZvVzNzfrXl9cgSsc1m8nVqTNmoo+fvLpN\\/uwCc3dhM5hyqOKoazS6c7sOtBcuag0xzIAPNsUFD2EEBAtNTQEC0QAICCCuNIaxk9cK0yNuXQ0iHN7MQE3A4BFScu80qpx6aPbjDnUMXF6HMoogAciv14s3zhRqiosYywmwDy6uAgWFNNECCAjckKSGhNE0AxA8poeQ6xNN97GvT5650EuvM8HDIOBY2zj2nuLOuaHVx0XfhBLqY29Dglaz+\\/no6Tvys5kTLAMTs8+hBJuYhBMjQIQGmiBBA0EJgAI2TFecVOLS9hx6bGetZTFrzkCATYxoXOTWXXOBiZI1IwJtBmZLJII3OB347YqAo27YQpnl3QOBqGg5hAiQIACBMc0kRgxgApkMrLopDd080uetVxuzVdqIGIFSAaNoOQRyg6XIiZOcUqVlTMgbQ3qyosqMsocnJydAAiIIZAiexgISAAgIAEDQQBDAZO9ea827eFwWoruMNp03y5GkmkOTcDxNBwNGESBNUtG8m05lai2jH6M2NtQ8LXJ0JD2JBY1MMSCBBoBDmBD2BCBAgch8XWHyxMTWrFblSQINTeEiJs3K0GBqNus0hpqRpAgmuDSs0s\\/aM608ImXOPoEOVojARjINBwFDQc0mkmWESltAJvQ5CVVWo87IS6Q1CTQLN282oYksay1EcVU6JdScx4EHObOksl3tsmJ43Tmy0wLfF0xICb2kCZGmhlEjlzEnLUuaAOBqcSZASxLiVWxMGIcVS0CDkSZuQHIZk5bQYkQbpjRYgApGWLkIu65shwDzOzGBn\\/2gAIAQEAAQUC3BPwOtyf\\/BBFTX+tf3utyflblQhAZ1a+fUvn1L51SObBHNio5kFDIgULAt63retydbluW4Lcty3LctydOnTp06dbluW5bk6dOty3LctyiXU1Oa\\/13NM2hd5d72XX5Vst9yMshb713b13r0J2lCwhDOY4+XKSFpXdkhcVXcu6y+QV8gr5a+YvmL5oXzgvnhfOC+cEMx0L3UZOgFtW1bVtW1bVtW1bVtQitqEVkFoC97m9uQWlAkg7l7u1tCEAjAKUAtgQgFGsKdYa2PvwghpILahFMiFZo6DyMqphShlPI5dYryq5Kt3qVHUetl\\/p1f8AWPtyB7xDkRyb2MgipaBQCmOV49+GhpJfiNZhEKbqjFFUSOUYBTpBA8VDbEW42VXBUx5j05Lcol1l\\/pUP838MnrVIkEcv9G0IXaJUoEGPWCmFePfhhAJlIJuYCZMpohYlIlc3OcVsVuyI7tU4+Wg+LUYyjDqOF+KWkVk\\/p1D91+GV1o6Hp\\/poAmVg57VAIwdZFPuxENCEyATJlMJliQaso9WXk78ikeKhK1eVnCvK8Hd3MKAQGjaFHduHDPpzUXWR9lP\\/AFfhk9aOkun+jJkOSlM6AKARCyeuIObIDhZSCEHMQwd57v3AU9qjaRXnjHzZeJl2L6uJvRyPsp\\/6fwyetPSXT\\/xganQKAUlkg7sMIBCKI1bSaxovIqv7gf3qvjZNEXxiLLY5OEd+Ril4+qVf9tP\\/AE\\/hf1q6S6N+WY6kp0CoKSyfuxENDoAmUumRaywIEUWFUczl1+2c\\/Zui84xlHyW2kYAa7HO2XqlX\\/Zjf9H4Xdaxybk3skUyKmu3ImNE1WCFJZP3YYQCCkVu5hMrByNHcv5Abnn4+T17u5Ri88WEhE+Q8nkYksWd+Xd493h0rLx9Q9Lz7MT9dX\\/dH7Tcy+TLdoVTVvshTALtxV9YCksge\\/DimTIwdDGXaZMpjlRW0rT7IH2YUdtVHKvHk2PmeyGQY5Q8XBlgD8vHO5U+rLpf+lh\\/rK2LqH22QcdgbWROmPLbZCcUZBXTdSWR9+Gn0gFtUxpLTMtERj7vjUckZbKsSDU+UyZlYlYhkY8I9\\/H9ltPKcTzdOFvCBf0ZdL\\/0sP9VTHKHQ9P8AxlP7odDylCwP3AjJ1JZJ92GpSVZdV6TPJ0HQk5fu2Q7fxo5MBZ8aRVmUbR2b3xbW8hbIVGNZeoct\\/syMqyM5+Tt3xyLprDJ7XE+lk+V5\\/K8fJ7ij0j9v4bvy5zZd8boXxa2ZUrrN8brFC1WZAVl26zGnGMbL4qrICquQnysJXICRIrnZKOOI12VZFtXYry6RPHyYW+MwI4GT47Nx4IQl5GPkOz28drK48l1hlXW92rGnNU0SisawbYTcJ1uGt8zEfNg0LRNZUvy\\/Gf8ASVdIhRl7N\\/LuezJlylYXxrijLlKwCZvDfKJJGRNU0XzvqpjVHJ8fXsopO6pQn7XdWz\\/Mc9zNrskLMiumOVjVdvyteFZLHOPOOVdi41+Hg1zl2js8jvhbhR20yLZWHZujmeOolbj48Yq2AgoXjdC8r5U1ZlWNC+xqri25WxceR3QPj5q2G6OFDblLI6RPKT7W\\/b5OQHsm5x7GUsnl3N85fbi87a4DtzMYXbRu8jVZfTvFMY51eyGe1ePmC2Ntu1d2ixRyI5GXDx88FXZ2DRHIoGPVZVZl5sxhu3jKbah8rEhsMqzzzD78Utk5lkYRjmQfKyhsjdLfiydMphjEcp2bIwzYtZnQAz8juW+MLylLliH90s2e1UkFSHs2\\/trsGZOQJVyhYVKySqsYyu9tNphOPlZbLsycp439gw7R3gra6ra\\/KYpw7e9YvC7lkR3K22ELfJ32QRxL7Mm2fesy8zEwMWm6WdLCzLnyZfIVdddWZbYL83EmTdK3fkY0\\/wBx5i\\/8zvMbLyVGfOnK2EeSBR8nzpz95yLyYDLsCtyrdvdk\\/h5K4+zxpPy15STHHmwtvj294+HKMNnl4wUWToFbuTrcUZJ1j+QysdeI8nXmDMwqcrGyMe3Hu8TIzuyPtMh3ac3NyFiePuos+F2K8qmXmI9s4MMadVcZTp242PnfH5wyMS4xsosJuyCK4Z2V3crcVvW9dwruld0qFxjL5RIlJGRIHXwpc3H2+L\\/7F5j7ov25RsXb\\/aHy3tyso2SM06dPxY2TZjX4mTXkUeT8fXl1eEE6s+26qQmIGzMj8bEGDmXG+HluxZO+4X5EqJW21ZNfjMj5EJZhn5Cor5GyWFH2+TBGC6CkgdXToFOnUQ58KGOR9niP+srzH31j2Tj7W\\/IuxxEWBMmTaMmTJkyZf1vJ2w7lZjfZCV+Vd21O1oePorsWb4+7Ihdg5EAfKXjIHblhxzY2YFF9mMvDG6JrA7XS7EINWdSbMMJ0eIa1nn4frk\\/Z4f8A6yvMfdV9tg9n\\/wBfPmwJf0GTJl4WqRyiq\\/bf5WoVzrsIr8fXfkVy\\/eXjysjmWT8xPKyp097Ky8qVd+PKmimeJDxlQ2x95uxOdd2LZfVOuUJMmW1MmTJk2jKPXwwWV9nhv+ory33V\\/bYPy3\\/bZWDKS\\/ipr+Lmv4yxfxtq\\/jbV\\/G2r+NuX8dcsP+u5WVX\\/APks5S\\/q\\/lAqfH5uJi7s3ZKd0sbMhkZHhJS2k324NFfkMilUZ9ORgeOyPKXWnKnstyf3dNouuzIV0+NBeJEoyxu+K52BZtdgy9sltktskxTFMUxXPWPXw45ZYO3wwIyivKQMpVVljUTHt\\/kyqiuxFdiK+PFfGivjRXxor40V8WKhCMIcR5rP8Xi5c7\\/FGjDpNuYvHZsq6rLRca4XXquNFK7NMjOrYvJYdlefVXVCBtqrVETkr+MrX8XWv4utfxda\\/iq1\\/FQX8VBfxMF\\/EQX8PBfxEHxsYVKdW4YlOy8q+vdKFS7fJvabwvkBDJivkRXyIrvxXfC74WN7vRpJJzCDLxuRXfHI+XbZV40BfkRB+MquzWpmS8tifkCuZFNMICq3t2OE4ThOE4TxXtXtXtXtXtUmf\\/Wo\\/mKyTGElI+1\\/YbLFO2wL5FiGRYhkTXyZr5U1XddZOqsVV8eRJoQDVZUvzfDtLG6Ltyku1BdutOpwkVC6cIVFBWdDml\\/nL5y+cvnr56+evnr+QX8iv5EKq\\/uGdjRw7N15WdPbKN5AnmFvky7XxgsqhlsW1MtqZeCxOfoSO+3a5zSPieG5Yo0K2xRtipSmzBR5KKn0lF1sQrXZRpXbWxbEYIxW1YQ53dPH\\/wDSV5Ae6sI0jZ2I9rfyyi42rYVsK2KuiVtlVcaq+O6eyuiKlNl5EbPBeJf40dCQvyluqCNhUu5u2rGrnYuxVEWw9+1NoWR13Ilb1hS53HlgSbJJXkB7h7TCwSrf8uQKsCjFbUI89oXiMfn6F0t9tQaOQfyPPe3wPiBI0RgV2iuwUMcLtQCMIq0VAVSjZCHtMeYyIe7amTBbQjELthzUFKKmm54ivPIX9rIu8jtsyb+4hLcaq9lb\\/lSCnBRgti2cxXKcq64118ds9ldcU3ty4e7y9MJ49PjsSqObl0Y1UvNsD5u4o+V8jOkeRzSYnMlG+vdLxJEpwr5VHlfFwa5LaUAmRUILtK3H5XUlGJBxVf0u\\/UzZtbBzCn7z+l\\/4tilWhUjBdtYNLH0MkvKkaGXct8n\\/ANUSvJT3eGhVOyoU0hbmnRXZsjtU7xs\\/r0nvjBXw2mfOFe2cZVFdqS7MlLHKGPJCqaljzMb8W1SxbN1VZiremVyszj+ZjfoVj3H9LeOyy2pkyFbmMdsfQPulWGjIrGh+Zlc\\/JZdnbw\\/Kjb4LHkBWTAET3KvGjOXx47Z17V\\/Wy\\/kQFZAGERTGNdse+y2ratq2ptLIgrsxV1YCtHtzwyyec8KL48a1I+zm3BXFh6Fs9sYhBXD8uitpW\\/8AsvLybx3mZ7vEUspMDVW5wcW5jVIRy4CK\\/rhH8oNKoCmW7bOMhKPFJbVlhoWfb5Iq8ufHf80QiPa3PUdZSuC+TYhlRXfgu9Ut0TrOW0ScqA5\\/hdNlV06+Q83NqvLT\\/Yxkxq95xqmWJOAhbadvkJAy\\/rYB8sNPJWxoj5HIsqGLKXd9DyEim9vkoe2xeM\\/5oKXThj3Ap1ErathTFNpvsCEpFbVGLI9MjnZSGhTzv83Z+48nJ4LEA7WOsewNdP2Z8gT\\/AFSH70aZ8DKjJ2\\/DwB+TxHTPdGXt8hzjYefiz+3h0mU\\/PRkOSjOK3wUwCmK5rdFe0rYtgQeKiUynHdOMVi86\\/MTfIz5PkLDD1RLLDu53T9mUef8AVamxxplAmOTg0ZGRxnTN\\/TmPZ5B+3aZP41\\/j12re6f3bihJOnTp06givw7dbduDitGMggJbjIgVyBN0tlWONtGTV3B5HHnCawX29sSGLAq77cjr4KrteLTqfMunTp06fWRW5ZXOJj7crbEZGLGynAgY08wY2c2W1bCua5rnrWDt4eSCu+yuJ3eUlIePu9lEIuvPYb+LWFH8tUbWv6ZMDKZzPjWUX03x8nmHHzosZQ5wAcbStpW0pkxXNMmWRHk3t8qxhVCPx6jtHVADe0WdPwclyWTZOM7M2+uP8vMIeZqQ8xUh5StDyNaPkIhSz6yo3VTGVDdj+QkY4lO4zzS+EOmDJqwAqotHI6eMr7\\/mbCZT90ZZVk8kePyahXXyUeScpynPFf0DbfI1gwll2iGFUZUihHHXNmjoyZMmTLKiDOdW5HEC+GvhBfBiv48L+PKHjpN8KyKxMcRPlpft8f9Ww7ot7cMDZS6jH25dgjH+s0nt2xYlEcrBGVnyszx3gPE+Uq8jjehkyiK5m013G9msKxrLe0LrFK+Td6x9qZMmTJtLpPa\\/AyZMhErmtpfycbDXj\\/f8AiQsYPTie4N7PKTY+Ko7Ph8iKKB2qUdsp04+Vg+Pxcnx0\\/FeSq8hi81zXNc1zTlc1lO3eEISvhJbwFG07RZNSnNbpPxzwpEywr12cwIzmELghaEJjQSXVALy1hM6DKNjubg06P0cH7yvIfmX2tE3jkdJUd3HwpgwA2X5NV\\/ibcTLpyqHTp0+jq4OuzGUcnHjCMJQ2fIrVEISEsasr4kGf0uaNdZRxcYo+PoXwJL4uSF27ooErIrNuUe1GvvVRllAd6DbMEB5O19n7yct19o9s+o64\\/wBpr7V5G4WFrrYXeHvpyKr6nTp9HUua\\/C8xYzr3nHq20s34f6sm+hPQCJnGAazlGuQ2YMqQTdRtxraoeYqk85\\/baOY60fbZHfXhHbUYRtDKk1+LuZMmTJlNDpnD8oRsJxrbFVDaOaf6MKe03QVvSg+zBnWD3KNuFKqPl8dHpd1HWn7VnQNeRCUitosjEY+XDEGTVXuW5bluQ9ynyWSfbZMxWL7oRKP0k\\/06wq6+WQQqYw\\/j8KcYz7tcq5\\/+zo6\\/hegFT9qvp7tOJbygVMRIjLcGTJltUYqYV8HFuHcVi1GEIoraGdOnTp0\\/qs6bZb3eVknNE\\/yIHnXZFumZSvwuUVV9qCsq251e2cAGUeRPBBW9C7yUyhMrcW7voOn0dOnTp06dOnXm6ez5Uy0xxy94UCqmlm0r8LlBV9NL224suSPXqNYK1f7HpNAIvp3F3V3F3Su4V3FvK3lbitxW5OnTp06dOnX9pH\\/9E6Y\\/6cgFAgLxo3+QrGlyj1r6aZR9lXUqSiVLWtXENuG78JSAQnFGcG5bWKYpimTJkyZNwRgSu1JdspuD+10eyXVUfaRzX9er3ZERpco9a\\/t0ySqvuKl0CIeO0raFBXAsIyEz0td8es7LqzsflyXJclyXtXtXtXtXtXtR0jZFu5FGxc0xTFMv7JXA+Jkuap6SZwv6zT+20uQ61fbpZzVHU6DqpDStWdD1\\/AxBVY2qRm23nsrW2K2hbVtW1bUwTBck0UyGrcH9mD+JkUVjBlzeMCv6v\\/66UWKv0p+1S+2fWlFD7R9yI0rKsR6\\/goqRDJ06dbgt4Xciu6F3V3V3FvK3SUZunTreFvC3rerBVZDy2BPBywCVjjbL8qUpFf1hx42UdwV+lH2qXSXWroofpjrpLrWrQto3fhasWFcqrqK9n+v5q22rt2rtTXZmuxJdiS7JXaK7ZW1bVFgqzGQIDcP9glYfKsqIyIATyCwsYY2IpLIRWP8AapI9axyUPs1n0rKtKM\\/d+FhWH+jfZEV\\/6cbp063Lcty3lfImU54f7Ti7kwCxiw2+0zG3weVPJ8cxTLJDI9aPtKPU9Y9FR7aI8zoQjPZbKab3f6ziSoboiW4py3yK18mC+TBfJivkxXyQvkr5CN8l3ZrfNPJPJPNfmKDSDJtcsA2SxMNeQie9Ydx8fDGsy8TGoxKty3q8b4f7U\\/aU\\/MffpQXpiOSJAVvkpvVbOc5FH7n9u7nGRRkVv5pwnTLkmTFbVsW0LaEwXLViu7Yu7Ndy1dyxSLgleV\\/7ZVGSjVZuhEwgJFb5LcrQ06uhPJ1XzkyKrEIg2wRsdOFk1iSq6kos\\/wDp+I02p4J4p4Llo4W4Lct63J1uW4rctxW5HbJdEFZJoQL4x5rD8fXly\\/8Az2CFT4zHqydAtskanjT0n9v4xrAjIEIkoghcly05qzdFfJmvkTMgTtssMVC9dyS38DaMCm15LlwNo6Jde0gwEoUW20o52e39ejP4dkuUndclyXJPFBnuPtorbWdaZSp0dAHScNh5b4vtvVblGJX+urrcFuit4ThOE4Trct63ret4W9bgjIuJFZ\\/j7Y5MqMhePp7GDJWcqzYQe4t63rvsjlKN+PJS8hQjnlfNJQyAV3V3lIiS3RdwvajGExZCULI\\/ZcypIUpcv9U2hW1bUybhHVinKc6OdOYUhN7+4Kqv7DmSA8\\/WVlecjdCdgc2Izkt0l+YttiaxNatuQmvQhcvzUJXITsQskoSCYoOr6BZGv9O9VoFf66cuI8fJMmXNHc21o2NOruTCnYScKPdyRElClCqK7a7a7RCECV20QFt5towQiuiPNRlMISKMijB1aIuIhbU2ogu2FsXJMuSHAFyT6cly05L8J1xKs8XiTkPB4qxcDHx5bYpo6ckAEIh+QTLZFGECu3FbQtsVsC2Lau2hBOq1l46DLaE3KQ5oHg3Jy7lHRithXbW2KYLbBMEzLmg6IO3tljEldoxDrcnXNc1F1J1GRB56Oubh0Ey6KCHRR6SKthtIT+0hwnToBEa80Atq2le5e9bCtqNa2ramKIkERYVWJ7JQZe1HaVyZAJmQTFMubbZJpJkYppppLaougCmUekwtoInWYS5t\\/9oACAECAAEFAv8AGjgITJuJ06dOn4HTp06dOnTp06dOnTp06dOnTp06dOn9JkyZNoyZbU3ANHT+k6f64o+puTp0\\/wDgSj6Z+k3IfQFH0jwNrH1Sio\\/QEI+keFkyj19QoxUfoZesUE+g+uKPqfjoyKKh9efRKKCKPDD6A+k63cB4G4xoOiiFLQfQS9GWo1PoSOoQ1COkVH1gpdPQlqNTxk6S0GkQu2olSGg9cKXT1j6LaQDplEJkYqWoUQhBSj6YR9BtW0bQoJuCWhQQi5ZlGDKXVHkbNAoqATooxTcTIRRCCPqsiiVvUeYITaSPNAIQQQXTT8VYVFDSuXIlPoy2LYtqMdBpNBS0HEE6dOq9JdNIyBR0OkUzIl9HQC5oaXdQNatX4jFbdJIKWkeDapDhiWW5GaITp1GWkzygohQGgQCdNrJHWtOidH4GToyTo6HSPDLp6BCZtHUlAc0yJTp+alpuRR1CdPo63LchJbkTwnQcDKZ9JkE7I6hbkCmAQTI9dR6oR9GXpmKZbUOmgTrboeqI4D6gUtDxFP6skNHTrboAivxP0J0Og4DzXbXbXbXbXbXbXbXbRDatzR1dMm5ybWKJQR1ZMm9IoI6BNq6dOty3Lcty3Lcj6DoT0lFE6umR1gVuW5bluTp06dOnXJSQUtI8DegfTdc030h0Og4Sn+g3cxxj1zodBq2h4j6eznHjHAPTkgjoOE\\/RD0TJEqvp6R0P08iyBdD0Zx0h6ckPqJc0eQEyo2OUy2ratq28H48ToalD6jb7p6V9WTaR1knUtAdXTp06dOnRQR+ndT0qUdHdbNZ8APphH6YldVJFVIamSdOrPXijofRdOnT+hKKiFLrJVaQ56SQ0nqdI+kNT6LeqepVelXQooaT1OkfSCPqMm9Hdr+MOiq6I6FT1kiPTCOrfR7eCuWleh0Kl10PqBHgPpnQoaBHSR5aQ0q0OhUrmMZgqyTFD6m0reV3F3F3F3FvW9b13VIKXRA6VaHSZR0lYSapIfQt6FvXRuBkyIUVLgrR1tPLSUVvYxL+s6f0p9fRbhr6HW5HUhUn129I1LtFbJLmnTp+E6hQ6HWwqWpi4qKBfibiJToesy2BdoLsrtlbTodGQUeh0dS+46xRixhJvUI0H1MCjoUCjqNAq5f4aGth9sdDoNLggVEvoOIfWw1t+0aHQaSi4rKhJuMocT\\/Tw1s6DQ6DWcfdD3CHLQcBQ1H041hrb9sdDoNbulB4ygjoODatq2ratqZMmTJkyZN6UNb\\/tGh0Gt5UOAalBHQJ0+jrcty3Bbgty3Lcty3Lcty3J063Lcty3IHWGt+p0GtpUOM8bp06f1mTJkNY62jU6DWSr4RoUNQmTJltW1bVtTJkyZN6Y1hrJSGh0GkuhVfGUNRwOnTp0\\/oPo6dOnTp0+kVyRUijz0Og0mioaDgCKCb1nTp06f0B0URqdJhHQaT0joOAKSGo+ifiidInQlFPpLQaS6oaR6cDp0\\/C2j+u\\/AU6qARW5kS+shoOAIqPTR9T9bX04pBBHSKZFBblu0jL6\\/cy7hXcJ4SNJdEIojRuGB0b6tkdBxSCmoR1MdG4Yl\\/q3To6DjMObLam4W1B+sCZbU3C6dOnTp0\\/A\\/BEt9ceN\\/Vj9U63ldxbjxOn9UIcB9Rk30BOhQ9aJ+jZMmTcDfTFDX\\/\\/aAAgBAwABBQL\\/ABIR4wf8iFuW5OnTp1uT8J9Vvrx6rJkybU\\/XR9QcJ\\/wA9can68euESnU+NvqAh6wTJkRyP1w9X8EENZfXD1CooaBOipfQD0tq2ptB6ktJdSiUEfoCo+jHWWg9EayRRQTaFSR9YqOh446y0HpRCKOhQUtT65UevoDWWg9Rk\\/ocmmUD6ZUeIp06dAolEp0Co81PkdyGsdBoEyPWSdHkgjoVOaKBQlxutyBUlHiOoT6SOgQCNO5TjtlAp9IjkgmQKAOg6LcgpaFWcG5dxdxb0Jp1JEqtFQ0khqyZEIIBMrNIHmualAxUU6imTaGTraU6C5rmuhKKCKuQKPE6EkZoqtFQ0mhruTooaOphMhFRmCmRCsg2lY1rCcMOSATramX4MjpLpcgEyI0dPqEy2qCko6T4RxNrGRCjJ0eaMWUENNoClN1uddF1UlzTjgn0km0ZMtq2oxW1DUKSjpLhA9KJbQh1EcxpFbguSYBRi6AZSPMDlrZ09SKko6S4AfUr4SVGS3hbF+JDFlLgsHL1IoqOh4I+pDqionQEL8NnIMoragiNBpIeqEUNDwAret63ret63ret6B1fkLE+joJuZixmAmTIIIqGsuvqFDQ8DJkyZMmTJltQ9ASZCxHkpQXTQp9Ktbx6Dp06dRRUdJeoPS2P6Fcuekw49UaH6bchx29QX1I9MIqOh1f0APTBQ47RyplrZ19IIqOh1bQfQBCDIcZUSyfS7r6QRQ0PpD0wnUdXTp9Z9apIq3p6QRQ0P0r8op063hdxdxdwruFbuA9OJk2sUUPpyOUdJ8B4azoRoyZMtqZMtqZBFD6YIoaT4H1GrlEenJDVvowplDoFPgbUcDenJD02TJk3oBFBRVmh0Go1qDoKfpH1H9MI6RVmh4RrAoKZ9I+s\\/ogo6DpPqpcAQ1ioWGI9KSGr+kENJaSQ0GjazGkuAcA9Q8ITptWTcJ0PAEyjrLSXAEK3BiQqoOPoR6MQtq2LYti2LYti2lMVHqOCXAENIhlYEfoX9CGj+gVHglwRQ0BTOD6xHpx6ekOA8EENQVMfUia3hbhoybijwHgihqCxnwOnTp06fQ8B9Z1uK3ldxbwnGg0dFHgHQalPyPpHQaH6k8B4DpJHRv8IdY9ZaDQ6QPJHQ8IR1P1R1r6nQaHQFjMI8ToI6nVvpzrDqdBodQeR5I6S4IqSGh+qOsOp0HDFT1PBFSQ0PBuW5bluW5bluW5bluTp06dOnTp06Gp1r6nQcMEeCesVJDQpk2m0raVtWxbFsWxbFsW1bVtW1bVtW1bVtW1Nqda9RwwUuOKPE30b8B1idRodQpcMxpBSQ0KBTp06dOnTp0\\/0B4AdBodAgpcJ0ipIaHVvVbRkyZMmTangGg0Og0Oh4JqCKfUeu3pHhiUNDoNDoeCQUEU2o+vjoeKXXgA0biZMmTJtW9WCZWniidDxS\\/wMdLevFE8B1KbUj60aM62BbG4QdBo\\/oEfWOtxUdDxBBSOoPGfq9qZDQ8b8Tf4EoSW9GX\\/AMFP1e1bU3+FdP8AQN\\/i3+q\\/\\/9oACAECAgY\\/AusdjpCybZFEXRIiL4SRF65qORF8KPzcbFX3FeoX2tT\\/2gAIAQMCBj8C6wvRCZCLrE6mSnJkFnYe8MbGhWIxhkPB08OLcapa\\/dwXJP5Df\\/\\/aAAgBAQEGPwL\\/AA05gdrMBktVq5larVarf8DGQ5kX9gFgVmdNWq1Wq1Wq2ai4w9taPaoC1Sbid7lcFMNeFB\\/Afd7EU32oA85m8\\/LIE46giXSefcmUKs6dWVJ23V7CU32mJsZPtyhNxyBdPsmoscHDYi8W0yHj9JQeLHT9gKb7T9WZRNBmMlzoj9KdWqUvTJkn0+pqOayEaTBIGKYDa0ewt9ohrylupuSdyxYSfKAhRe3k8W9PoHwmHsLfaI6shTtvD3DJUYwweRwxsX3KjWDY2SfGBa3\\/AFBYQf6Iv1mPsLfaA42vn2KCefzQ7kazOdjm1O61YxvHam1LlsWBnO+Y+aafC5Q9gGYfYw3WZrYAtycT5iuwtPYmjsRox2sUKYxN1k2HVBGrWMXQ7IIs1TagdOUM3DDPjo3VNcmr6jPcEXG1xLinbY\\/BVN\\/yQC9Y2tQfCZH3Oy8bk4IOvHA7sWHTlDdmxzbckNHBf5sRc7mMfehT2RKMbZ96xPkLUcP7bZO3mxRtHkVTDy+GO9PHhfHvb+CBUdemKG7JH2SaOxPPhHDHUhDlmsInVhjcLg0bVUqc2IQYO1dRgqD0KQDGU6YiS834rAqbOtODpgMdSwRNsBeUZE9O+LpDlcbjvTcA+2HDi3ontChda3d+CiiA8wWHGVznvTY6IqGilmxNgmSo69ebFfmKY1ohVq2DfeUKdECpTxYapjCetOwPOClwuImYRgcOtGhVrf8ADcHOGGONrhZE6071\\/wBsHC0M5zD57F\\/HAwUapLPTjB+ITPanUademfQ4vUdzQb4Wwu1ldK1hcXNfj6rwyhZtT6DAQ8N9T8Ex\\/m+c04C1nEPmiBeJItB2KOSGrQTM8vZmHIUc2SiAms8TjAL+PSdxgRfUvmsRqPxeaXwRi7EBeoi7LA8omdwTS6QZEna78FFr8LXj7lTU3YqfT9OweiWxc8Ow8MYcJ161j\\/lfxqb2QLXAFxA1bV07qVUBjmBtcmMyzlxATDl0\\/wDIH8Sh0zosBi0POsRVL0ninQfHDVbxydzRjr1r1Ood6LIwYBM1J6rmBVqNKqS+qXYHcvFS5z2kqGPHUdTiXbCJe9Nb5YJo88W962tMEamHiNpUFEK1cKmrFNTyjfl7Mw55y0jqeETrQhHgPK1YanCTYdag3JJR8xn9LV6bzAvt+k2DtKqdB1DHsbXBYzUMMwe1Or1fv0gz7nTtbzd\\/ejS\\/jF+CBczDygiRiYr+bS\\/47Hw9V44nwNzE2FSpTx08NP1xF8L1R\\/8AV9K0VHNEK9V3hZa7tKZWqirCoMIov8DWX7oomm\\/ja2pgpj\\/yGMP7VixwaOBmLmAFwCa0WXoEWsc34qs3bFAnJarUMsswI5OzLvTsmJQObFQUYoB\\/26l8bO9RFhvRbUaHg2goGkT6NTljcdS5pp73GR4Wx1qdjuEbkHVHFtEOaXwE3QsCoUKeGFSdTFI4Ram1eidjpibOpe\\/EN0Niq0qvU0KJeMGBoxO7XI9DSYKgp\\/ueqbzOW1Pd0gNIU2Rrtxkvf+VpNybUeyjQoBsWy4sFllsyoVOpHrV\\/tFzWxGDFw7op1WpyNxVWBksMOGCNUNgLl1EbnNaE5u8dxRfrb70BqEHhWqGQTVuSRRmoRVqtyn6cgQTl2ZJXaH7T4DymY7kQ4YareZnzCdSffY4XG4o0qog4e8awmUxy0wXHbFM3kJhwepBw4NcE\\/E5oqNnTrPAaMVhpm6aZWr1g1lKNRzG2RQruh1LcWKlTH5jzON8FEj0XMj6TIcRhr3r1KkPVeMDWtEmnb811VasG9Q4ltOm4CAdEco2RVJ9RoohjP5NdrdkmQRADeIfdpGYbUccU9kCi0uxYDAm6WpVY+KtHsaE522KLvAb9U1VcLHGWfHPO7I3IVBQitmibWp8zbtYvCZVZyvEQsJk8Tpv1H+hVVjxhexpiDrCk6MeIfNNxftxg\\/wCm9N6Nv3OlINT1TzARtAQezB6bGinTqPMqlOF4VCg3CJQPUs4tgaqnQAQ6mQe6J4iLS4+UL+I8Mcym0Fz3iOPcFR6fC2lTwtqU4yETGHZKa6ttR2Os6o2k12wifZJVxi9KhRcwx87m8MESb04Xxd71E32p\\/lxN+OnduyNQRXZpatFx5SHNGw2+9RxBAUgH1HcpNkdXbYnOJMGuwPaZwRJYCNapNqj1+lbOjXdIA3sdFVKNV7GFjo9G6MIt8pCPTUOnI9Qg42nhbc5dT6bGj0xgbEEvJEu1M6vraf3KbYkG3\\/J1Kr1Fbpx6nT8rDZEiXxTKzzH+RVcam0AXbAVXbW\\/+u9h9M3EgSO9AjUnE24kIKq3EG+MR\\/LPTu+nI1BFfpR0jqg5KbDi24rBkp1DIMOLuEU9vg6geu0\\/Vz\\/BcUfTFusD5hV6fTu+0LaOtsY8F0UG0XBsXB33hCq2FwuITG0G+v07pVagBxR+SdSxPo8UGlog0C44l6PV1fWaaYjQw+KwEG4uKf0tHDh4m1NZItPyCp9NBpZSpEVXuti44yGjWnNDHRpECnitxPFqw3XJ1kyhGOG4XlPYRzCAicIGpFjpOaYO0zvpyNQRXZonPD20wDAYr1+\\/S96lgducqlP0iKmBzy4T4zYBDUAmx6d7n4A52Fsp3KsTSe17wWMaQYmUXe5dO\\/wBNwr0WQcIGOCOB47sJQxAtaRB0QRzKn07X\\/feMdbDdikBvX8WnVxDnpVSJg3s3LqHU2CjWYIPLRfdCFqDi9x6amzjFRs3HULzO9N6h7Hfy6jzB5PCHCQGHZGxCqPTbUDAeqBE3OuEFWq9W8BjiY2yLtXdBNa2t6lSq4Yn3nCJAaoBHDzQsTZRcQIjUoksaFD1C9x8DAqkQeIxB2KxWKxWaJ305GwQyQ2aCxWIMbYM+abH7bx42gRnrKAbUDnYg3EWgOw+UJrmuZSNE\\/wDKNMwc5vmhCRTyT\\/JwRc54MS1vhbG8kp\\/VekxlSkYB+PhjbHD4ip2WvNkTr3qoHNxNdTdPbcuHjOGGyKDhIhNLf26rQ5jtetfc7yVhhDF\\/pt53f0C9Oq3CWzYyEgN6sVisVisVisVisVisUMkdmmL7hIaF7+1UGG7FUP6G\\/wBV\\/Ih6dbpm8ThY8EcpTsLMNN3NTjIkXnWgah\\/SFhxQGpTOLYpRe4+UKdHCy9xtgqVWh\\/8Amlh\\/Ib+xCJDfpE+8rhbCNpvO8oarDpuzStYzmcYBNpjw6DDe5fUVXd\\/s0He8RVko5JrlUwFCmIDWucko06rsYMuxYdXsB3ZQiNC7qnXcNP5nQ7BIJo1L\\/wBjWH+24fJfqOZFxUGCKtDVCewnMjs0rt2QZCuzPbTbzOMAm02crBAaDaZDI86pLqjrAHvC\\/UVcrVapmKkFwhAuN+Q4jhA7SVJs9Znpt4yNyFdme7qD9LPmdDC5uQXYz+KcPO9g\\/wC5H6syeWLyAEHA4riRrCDu\\/TsOtNFyGxQTl2ZwY210k1jeVogNAXX3ZIJouaF0lB4xNfWaC3sJWGmwtFsIlVagDj6VQUztihCnI2EkALhwp9Rr2jBaId6\\/ctvIh7lx1sP\\/AG\\/1Ki4++Kdh\\/wBtuMfmaSI9ymoG0aZm9N3KOQrszjUO5vz0IbqUcjt8F0Df\\/I539rfxyOqf7vVR9xTMOqai5423nuCgwRjKFg7kwgQlxHVh1qJYao22dwWAUcI\\/KAupZeQ10xDZkFQbnIqIMdefbmsTd2Urszg3Qk5DsUVQ\\/JSe7vICr1PKx39F0g81YnuEE4RhG0IkznrlIL7bf1mQWJ8ap7mrkA3FSTon\\/SPuORwNhChHFrvXpspEAguL5AdukahuzMObHQ7TZldrNmQ\\/logd7vwVQectb7\\/wXQ\\/W\\/wCCOxTnsQxxf+RsgO1R9JgG0kqBpN70+6Upps7abxldRFgm3cViFoURo2rsQ0ERMKbQphXq1W5fgonKAVFdSdQpt9xPzVJmsl3cF0bNrz8MkrBaVEyheVI49yjhI7lylRA5ab\\/llZXMbcPYde5UKnhdUa0w1FYfDhid+hAzBoJKIEDszuYrjnmQ1WoLqna6sP7QAsPkZ8ZrpW6mE97skTZGakSB71ry13+WmB3u\\/DLK2PKbDG5ehVEDYGOtlYvUhD1JgbLtCMwaPWuUqcs8wsQCxedznd7lXftgOySw\\/wC20M7sm0OkvmpnL1FXzvDR+kfjlbsOLuVOo6T6ZDgRfsOzRHLMKIU9LyjJzHtVqkooC8Ko\\/wArSe4KnsaPgnfmmm1HWVBP6hkcBbFWTvjbk35KGt8ah\\/UcrvoQdu0nEo7EWo5I+wg3KvC0jD\\/cYJ\\/5WoBF4H7cHZHOujBR8SkghTba8ho7V6GDHRpAMlzSCxUnR1i9dH5eI1Nxknm6QHchu0gC7EYZBoQGuIlco4oqZ9ymfcuYKZarWd6jAEbCpslvQMYFPhOz4hVNsu8ptirsLhxU3ShsyHf8lKz4ZIKj5aUXn9H4pzj4jFepTOF41IOfzgWr0XENNOEzfFEaidJK1YQoutOWGgGsBW5slarVf3rE6MdUZJg8zx7kE8a2ke7Id9qEbQoqN9y6rqjf9tnxOWXantfOnUi1w2Jr2n73T1PTMZhzY\\/ML1mDC8Sqs1O\\/odCVwrimrFZo3aC1TUkw+Gm745h1xW0K1YfeunbfU+479U8sVA2GYKqUHcbJHUuqZQf8AuUi+gSPHTnA9iFVnC8Sq0\\/Kf6atDPJYpaOIcFKB7V+13LiaR2aBlIWAY3b7lHwlBO+o\\/Fe9RPag2xCn5nYY7zBMpixozJfuNmz5hO3TTT4fkVTr9G0HpqXBUHiMTE+p8jcm16Ri13eDeDt0E1EKawhRgrNLNgPYv2wpYm9q4aveF4XLlKsVQ+GQ7lzNGE6xev3Gw3hVYTGMwKhsXCUCm4WH1A9uDfGSdslmvqDkewx3oNPYVxCTxxC6civ5XSjH0VT96jq\\/zcU2tROKm+bToJrYsQCl7KZRlYjBsJnh1ZZ2nUueG8FSqj3qhUqvBZilg4jGwSROs5r2WYmkJtMniaYdygZanI0qgjGRBsIVOiGw6Gv8A6nlqk37IS0ByYHezvLRAFzoAb8pnBTcexq5j2tKa4OEg7DdPDIZ7areV9v1BA+C\\/XFQNoscq\\/SVAWvZKrSdqNjgdRuXo15+lKnV87Lu0X6AQUT7M76T8EMpdDibWhivgWWd4XO1ScO8Ki64nPcy+1u8LCcnqAceu+GrQhQPs0Nae29pI7jlNPW8O90MkwFRh5hoIDldx\\/wBUHWG9Q16Ae09QLnOxjc6eZOOSgB5tAXeIAgHYof4Ew+akPcTldvVmSn+WJ0BQyDPHtPT9RqJpntmMp3qzJVf5Ww7zoDvQzIZZZBLLiwxRhTy2q3SSzX4jAtc0s+qNmWG5XdmSvUvxgHdD2IZJqRgubJf7GboVGQU7ck78hJkE\\/wD+U\\/BbM4oZRu9gtVqtzLFZk255p1GY6bpOaUaPgPFSOthVyMT\\/AJCtUIKyGKq5fDRN3Z4ygkTvRuyWKxWKzQ2bitt4z64dYIBn0wlBazqW8oxaSFBo71So+RvFvMzkjoW7s8ZQjPTxEioQnnUOoFsCxwvgJx3BCfcpxhrUYnDtUAY61TL\\/AN2n9t\\/ZYe7LDQMA1ZpbDaDmwyQyWFWFWLlXKuVcq5VZnbRaM1h8oI\\/u\\/wCi\\/ZZHcsAhTptmG69q\\/cnqTadep6VI21IQnq7V6VFpDYxJMyTtKsVikJjQM3ZhbTZhhe61ReSTtyBDNnm2aKIMCFauZWq1AxjkP5gDBTGKEtqDGmMZYTtTWepHAAO5W5LVG454aDIK1Wq1Ymni1ZgzrFYrM+zOn2KGQu8oJ7lSNsWgxG1QXUVa\\/iqFrYXBslGLvchV5i3k3682CmioC1QyWrZrVyllxtG9WBDhy2KzOnlsU7MkYaCSc3zAjvCIa8tuhE2qB6h\\/en1HGPqP+FuQe\\/tzwsRtyxb3ZOEdmZOxbLkMss61Wq3Q8qsyWKyai1PdRaXMcYwFyP23dyoU78MTvM8j33NHzz2ve6AHh2qUXKTFqVyuyWT1qYnlwnvWFwgQdBZo7VPNiETFVHaguLpmGAuJCi+g4HY4IUaNMsBc3E5xuBuhkvyWKxWKxcqsyWKxbFYphTMMsfGLCtvtOIDeE8Sg5pVqnYmNuBxHsyTy2ZluZerVCBK5VCEsuLv0FuW1W5LMtmhLob\\/6omLmm8gqJfUPaFwtttJMct2SxWKxbFyqzJarFYrMspKduTG3tzNh0luS3LJW5IRRmoz2qRUcWS1XqzQXqclPLrObEcpywzJ58VJWKbVYp5kVzIa71svUM+Ssz7ctuZAqGT\\/\\/2gAIAQEDAT8hhSCSyWREpKwf\\/NUqVKlSpUqVKlQaNpAwn24GUlYaEDq5RB6GEZ7mdglHMB1lOsTC+msrpVlJSUlJWVlZWVlZWUlJSUlZWVlJSV1RUQLHVhs1ZUlcoEYxjGDsaZGYnKuIdKbsTN2i12JS56N3mgG2PaI14D7lytyrmNOZXqSvUncI9U0DrQgUNDv0aaVZWUlZWJmWVlEsGJe8wwRkiiCkrzaVqUtpY2j0Zb2nTy2xCNkCiAgaG7QJxQMRiusrCVbQbzCtD\\/YfhHQ\\/2WbcFJT9RlB6+YAGcfuWrR2\\/jcehUR7s24TJWdQMCHEOZUOZhmdpBBDRbFoETGhjg2hbwTMx4g9HiFYrESBOWNE3PlhcQePp3mfhPBP1X0jVKPyW2YGo5ydszjFSZkUzJUsBmYJvNJCDMDoTgwOi6SQ4QSyGCv8A4EBZef0SyFHppYlVvqlx2PEFuvSufJB6wf1MyoRUhS5etPVtlY05wO\\/zOM3IZOXjUGZezbDYM9Fgxi8xYoaTnoEOGgzl+crmGP5iAoc0v9Q2drhDbzNYP9Si57YxYTPVUUeFqb5xLRXQPaWMwStWydxXq22RKzrTfg+ycdMTu+NJBoNgRIGjhlBRGDSpEzAgTZp1\\/WgGBtgmx4CWem\\/tuOFl1wlZFeAX7uCWYM7Ga6B56xWF2261Mm\\/VWB6UuURJuQ\\/dOEEiTn41FSoJUGdAtMRnMvoTTMCEJiIhrLEmXaA+YIS76eyw4gpAN75d6zXWEChUWPhdsqgP0DuBzcNz7T5Y\\/NsizmfvThDAkZ+NGslZ0zSkK9O1gjfoIYmdAjGGsDmfwNCpxN\\/92jOhRMKYadTAfDO1SvFlFBOZh7P+Rnsr3lhWCgdDc\\/qGTs2f2T+Y2\\/Nsiyllez6EEvilJBK0CWubdc7n4mBZs0EiwSgiovDS3L6S5rn2lqrH1iV8gv4uc9L\\/AJWbzl8ov8YVDgT7Ro5Z7XaZfyzhW63Y\\/UrsVCihTYg5Yftsff8AM9k\\/LvTJTLwM4ih0IVxnKKu794awqdiGbTszBJt0hSmqnuxO2GgAxv8AC5ZQB6kDcBJ0KwfEFfKWIvb7jy5zrdb+4XYtru8Mzl4g3vZ3tj2mb9K\\/nzCws759n1Cvy48x4rk\\/Luz6rDK7TMdAEZwuahQmWbkJL5lCqQPMv02gxpI0DLWGMUIMox3B4II6OP47x8hH4KSnWX87OvSyd2\\/xMod1ERnWPFmF9e0zypwN+\\/atmDe+Ycmdj3I+74\\/lzDSHDWf0wKny8ymkjzD2fh3Z9BlZXaKrQ78v6xYlmkBJLYLJI0bkFYixAlSh0VaNCFDey5teXpL30\\/C\\/8hm5ynyrxDueeXOHeOwuoOzD1c1C8OwGwZPyby45wkMNHBVXgmEC2cOMiqbKeIy87Lbx+lXQzJJfeWg8FwHIw3cg4cU95x7oIs4Mw6bhmXgx94Bu+6ZAtqHqaSyEUg+xKXoH9zZN08xYS85X+e8qSi\\/SKsRxZAUhBmV7sFzKkiZ6DsDrMI2GylPwy85mzmIw4qLbcbeZezO0b5diWURl3Hc\\/YzPvjEJ1PYJu4QLygOVtQ3Vr0I7bKisOIB2brPRGK3cI7qYZHfXkVcWAhRgCWLa+XWxLjYDIqa7mfmdZp2QbE6uLlAbDHs\\/1L0H6PYe896EVgNYU3HLMwDtKzawG5LIg0h0sEDpRGVG5QjrDXufubIC1zqpbPi\\/7iGSHC4gBYWmoLRyuZNJ1lIqyjb3mCEyi14fqeBJkz+0M9owLB+czAIrQ1MFwUf8A2c+dpchTB1S32Mpw9oXPYvXiJ0ZVRmG53HMVspzyGshReAiByrCCqVqdszI8Hz6j5auA4leKdwMOjsg1lrOEveFYFsM3CFyoQTY+hFZ0GnloWrDuqNupg7EsrYr7MfcURcy\\/jaHgmUOvWZTxCPqgLnkTcrPSAbMx7qkq3JihSASWcFG1eyK0LmYvtMR3\\/uO0WRMk6TJ9pfPnf7l2XARhwHPidVLIXCVPWFOOJdWmx4uUUi0Z9p1zh6G11viBl+Q5jwYEop17w8\\/\\/AGNf2l629\\/yPtnC6KZAS7OvBARJVUuD61PapvyIzN8FmGNzA6EUxokO6DEOWXezPG8Cu8e1Au7m4oSnNMbilIaNi\\/iNo4PEKhG4wtWCDY1wC\\/wDMfcFu+qPBTm1ywzYKd7xKd2L+PaHa7Yvf\\/uj2zJpljWXEvq3RxnG7mJXw6A0N5xLyJLbeCYVtAPbAcP5uO0WL3rBkqZdo\\/wA0leKHQdRHjmVBxeYM8+spvY2eYj7ipvvb\\/cFaeh\\/G897oS69vJBR8llpb356kLrVHvILyaPEW7gh9hgr1q4Nj71OdOJ7M0cVi87xI2Thja6qrXWIwOx5R7YvaAOrdU5gDfljBKRtVQXrwTLzLLOLkb7BngyzEuy8uslmN7HSba4HqHVd2hqHkoA1krBfF3FJ\\/1k\\/2BxTQd7pnTvC9jX3iIGbP236l7SxN1YlcOgjcIYybCOoB5hRTbiC02MRlIhW0sifCMJf4Y7aCNDNy8TexfMZnkio+JWvE34q0ZKt9Wjl5Mz7v6m6U+8V+vr0hrUZ7wtjxOHc624G6MfiupqwAhBeD4ksxXhySs37xy6JuUrLgcJvBaGswW4m1Bz8SzINaq83Ko4I5ovrI66e3pLZEMgszmUPhAfSY2dfgO6d18GtD6oBjWt0EXrBXmAGHRSluw6W4n\\/1BAzmpYQ3oVNtlSOmu\\/wBhWJjn2gruVRv3mPeU4zfGPanMziLRlXtmf8e8dp9qYFShZaZb+HSEuH3ROAg6l9F5gxYMZvDPgm52SODfeB1HuOJj9f8Apz9hPOm0Pa+nMBh3gHxS4NO6V2LOV8YgnLYYXAt7gJ8zK+xQ3N3+YFO+54VflOMk5QyI+HIccwfg1Cgy4KlMSBG4MegT1Rr0CjrMOCJh26ldaifH6jLukq91mBt4XmhFaHcIWjl\\/xQS5ixFqOopHCbJSS1n6pl\\/DvNkHyy6H004ZdYgaTQDUYtqGs10Uwo9k44eZZbLpU2O5UylUS2gsOfvNMauFVGqvziC5c9MLpi7EJgapvFfpjK\\/AY20Og3vB5rgd045b5iAGKBu4povdFxs8rhvsLjec+KNy7EZhCW29XxC8qLYBbDF9XkuAviYosOp3jG1y0FLQuC1G5mZlpUd5hxR+ifyO+j78Mvop1xhUXVUo1qU0UicV9BPlL9pfpZLqxp30ZL7EHjZG8ov2YfMtdmK2eDt+iXkizb1MDhfrDYTYpsK2yrYhT61CE046N8mY8RBsGuQFpXeVCcl1u09RKD+C4ze4P0TjgEJ5jiS6kgzWKKwGXtLXcyHiFqtXiWt6Nnd79CAZvGK96c77sG22LuenXXkVGDORYq9kd\\/zb6K+5CakMNj0J2Y9GdqdmdmdidmYYqKt+arao8Sfz2iGHep\\/YS2qgWWBFrpe7DIcCbK2F84upiVr9WxrqD3nK0AUGjW\\/wbiLeG0Cxv0al2phvIHi03maD13PpbbdZXlChWtqgc+N5i\\/GIpuDcg\\/EclV0qXZw4TcXc3JpbOLY9uIpYO9OMaMrkDeqMQLBVM2b2HWtyeH5HsV7ysoTGF+2KTiq2v7jjSs2bXfZrad9O6ncTvp2Z2GdiV0SnpEekOM30RicS0T+HR3iaOYGlKnZnbnbnZnZnZ0VjRk7QFKGj+3QlvEF6xZbKCsjo5lKC2ozfcJXEyougk0Lku9rh6aMbhjsDeKi3GJxjn1hDdlFLu8DNvTC7yhwLUzL3fWKWxFi6Jaha2pqmjus5xB3BZmwR9psAV6Zlpt75+8HtN4Hsyl3ZXoQ1+l4h6WPQxheljpe6dsbGFaWaFELZgKCr\\/tNkLxQisRFpXHtOslfM6qd6dyHUndndi\\/8AsDmPoI6WBbsZY7eb\\/wAQU94PLX2l\\/OlfwLrZIcOsxOMUpp0ZUkfx3hXALYS+0wiWuvqMnINv0RaKXG+HKjxOZgWTvX8kDETu9nssr4nnQOe4mWW93tHZ5j6rdL9As8KWQDJ2hZYMypzdo+5vjDqTqJ1cOrMm8yFGPuzLQCr6vL7sfXiW7XtzPYg\\/nxDzt3nqiiAlOHrjd6srozLnE6QDYSrIvabaHsCHfGGPiUyZi8UpJQo2dF9OJesy+Zvv\\/wBg6PEvGby3TSFialIjU1vbjE6f20KVcxw0U2HaWC1KK1oJI2acA4t5\\/wCR8616r9P4dx4CFf6JeLc\\/x\\/iCIrZzE+8y5Xllmy+2CJyL2yzcrRzyXmZhOMf5FYJzKbn5hI6h9Ri2GgWQcvF6xdLQWf5PfRfKxCJSp00UES8IPQLJeptVrsd\\/YzBuontf7+C8T+5f8mc7RenNPY\\/1gW+b3yX9yjeVB9\\/lFOidB+I23OVcSpUOlejHsxT9ylo4vEpBYmPcHaG43lIQsSkDMEUIlnEY6Nz1HBSAwLOs3nSI5xorEZW9WcNEEF6\\/zvb8OFdM88w7HnLMBusf2+oqD\\/6D+phvGydDMOJa5dE6bMqdv6jIw5WoNcdQ6g94EDbaHEgMpEzNtHpTpsTjkoYIGcQFSkimYcYHlTE5QWy4jaLuF6NzP4PGijentjSN\\/ap78+0\\/gGi\\/f8Fcdnmy5DruxshyV8ywzTFO7ggdV65BG0tubg3ve4OttyNi2nipYFAGmH3Nnl6Kv3glrUYrgDWS8CMPGSsAD7LZfXHQBe5BcjRzdz7t\\/qdr0V1VcuWuZZQYYnhbMrAcMdJe2GuJa3C507zcb94A0CW8zYmPiRP4+83FBjD8U\\/n7REC4Wii4PBv+z+vw1vtm+Wb\\/AEYIqGIKDg\\/GWT\\/9bBFLsZfBM3ZDLy\\/3KRWCM9qd\\/EX2AKZydIYme0dZinswwWcGYtyst7eI69HF\\/VC\\/eKfVlE+m4bl1XIobTFE28J43Z9oIhloYPR6MvYIX7QViIfn2lenaOCQNLAiz3m\\/wb5kO5EZcjZmiYsHxTeaDAYmVAFrCM4\\/Cu7soJQdi39xqtu20+4K7\\/dS6O3UeUp+53pOLGIGLnp2s4lCVKF0HI8tsTH6\\/8csz\\/e5zEULV6J\\/csOD1vc+JTcideFx00watA+8vPHj\\/AIEQalSsmA5W8RMBKSkpKaGRQyQFSYsK3uRwKrxCExKGdpe+x6OZkG7t4\\/CCHYjYIcTYuj7omZ22gt\\/+tsdZ\\/YMmKlyWfCIW7HG+8XMbs7n7gOD8V+QsRVO\\/Ar9FT4zH\\/EbsDMAMZgqA2Ab8P9RS4M9Y8xySxf6RyQttvrFwFSxSZGfElAxnCwmZObW5lAlpzCZPiBbo6k5ae8OcH3+oJ0veyGyL76jbu8O8sWW8y3wm1oQ+pBfchfQKkd1E+A+2F\\/J8J7xhl8GvLt\\/qFQK\\/w3N5z4fOCWdBsFibQOt1X0zGjaXzTVl9BaFm8vQboTS3H2vtcvyVg3uo1uLBlxcw2ljbN2IZL2R59o2V5uzn0A3iNMBjneRsYq+\\/iA7X3OPiHIR7bg1tZ4nQEQy7HpAJ1IQnF1iotSPtENuuZZXk9kS8cQ+7GdP74\\/yMwju9ERZlfZ\\/5Ic\\/Bd5ztiWHt\\/c2Fj3TWAmLSHYSo0Tbo1Z3+m8vLsp0BP\\/r0VK0OZxFkrHWVSvjlUjmjIx6dQNGSC3jRvE72es6Z+k5cHNYjyvdj9ytpHwykIcTbkhJiZRVVE1fOIh2oVOb\\/ALn9E6AHwkJ0F14W\\/bOT6mzFop7S9d7RYMpL1L2E\\/wAIR\\/pqEZwvwz\\/Yarw3hnNyT8DzCqle9EmnA4mUQjRC4oJuJXSHNLtQ0ycs94t+nEu6OfMsFo+IbGw7LK74+of6iRRfJ\\/koMPO066czOEbPePYVVvuTNOW+cmXfezby3DWrKew\\/JmbswtdCDtFRFTwvM3G+cSpt90wXU3giqh+QfqDoxnRfb\\/ybOkRSVlZXQJLIEpUZVL6SutvguUQCmFQ6YqWE5b3iFJui8AjXQEUwGAPfMcNTMbN8Qqp7USkwHTMYNdnHzAE3H3OALNdj+8QzhD4KgdxiFn5v2pp+mEobuv8Aan+4Oy93U6PWdostlU358SxP3awPtmMUC2Coa4fEopPgHk3IScK3Wr67wiG1Y7f\\/AFD\\/ADNolk7070epL9dCtQ2UKwKByQVELik7Ib2ZB1nbaayyVAIEVAjXLLm5XPiQhwu98GUgy9WUOF9qmz921E4+Ca0NYTNGgs3qfDiCgtmuJkgW3ON6OdF0OYUITnljP0FVKyMfEM9Zzv4VMTYjB\\/G0Yjku5sjrl63KteRPYYv4TeKT5M3w3Dg\\/zrK50IAq6V+7jIb5lAJ174ntA+7\\/ALibFczsTtRhbLZb00vtGtYVlMpFNrm4lqtCp0I13e0rcT+NQDpKQ1BJvdfsRwEOzvE9NNaeJOjAU27ZYiw92UNuhtZ7k5lf\\/wAeLKeCchfdOYDtMis2U4gpyOa5OpKrNkuNXsHHiCG2Dfx6mgCpYXkgOj\\/jDUo9yFPxud4ng4LtHXekMzaUfS2cdQ2nfTExCpiNXCqlw71iN+dTCCEF1xCUKVAbkssTccS+kkikpKIS+jXsSricaVqBXpKWPYyuATSV9yU+N\\/UsqoFZdE+SGY6Kfc+MMfWt38wuGxYRNlXRvjqTBNF7n+daAmUsnJ1j2v0V5jvK3bsps9xlg8uU6L2yq8TbzNnK\\/wBuUSE1azm2l9EXFDwvS8q8OsI2VaLYekJUoie6eowOTA7lIdjPsXU6vQpgkr3ih7QJ9wWtkEu4GPYbIA\\/42ljHe37Q3kdMt7nScIHpl\\/CdYdiWHtg\\/Uvg1iAOHMXH+2\\/0lYdNPeBzRrOzggsneY5F0Vk6LJOw2XA9EdHlKkaiKB7Sppx0ltht2lvCE7JvuZSWS\\/TmZmZcfc0JuheMfqI3+C37iW9f8tp2B2a\\/ct5q+f1Bbo8xwjSl614mPvcm17pQjlHagiWwmznib84r+5d2PXDE6LYFR6cYLm66PZY9rei8hn7lkGlpbUMRnScGl+d5aCl9p4+ZtQ5jlAoTklmjgV3cU\\/wANmVfX\\/YHojhPQL0GKCCdGUFJbeYMXyw49kDKVFOkR0lQJUNLly5cuXL0uXGnfMBRgtfUVtKIDg3UvBfacSQBOxxDLLkBeJdF431XtcT0nlH7hd1uMk2WatiPbo\\/cF6CY2YojYl7pibngpyd3nMG5XFuP+QZVgbsj9jEIWlbdjR0YIrKSkpKTExDeU2SD6wQGGzYYuDZigmypmZ\\/Pcubo7uS2AXoJeu0aWYViMkzPsB2K3wpT\\/AMbAUV9CzcUIZbnE0RO3NmbTBBW09y\\/JmCjXS\\/hiJy1m5v51iARxLylb0WvmICX2XkvTaEtLy0vMk6MdpHwOIygzOHTf4Mfjvh3w\\/KK0mCu3SGxefuXYAPfV9mSDVCjlr9wAEvaQpJeC75Rm1GRmZibE4nubfi+dpmc3HeU7cbRQCgHaN5dLbhUu\\/MrK6ycReY1JvG0GKnJ2AuAqbq5SUlNFJSKMJTKZTMypUqVKlSmTbB95dnHyUP6lKBsEuIxWv5AX9pSWvZzO9qsh\\/cKSKeKboQcw5goaKcEY\\/YM\\/YnJ6ZHXxHssmFy\\/0s65euyNIalZCOYJ1MzrZWvb13MHtov1gXloKPs\\/sF\\/sswYjbH25zcRMAnDEwdxmSGzftBCBvN02YQguTwAW5KO7kjtB8oJ6DbNs4TYm6J0mFxONFpfpOxO1LemAtLy2paWltAlHKV8CXPMzxMWv\\/AO5czy7y82EqofPB8JK4bQb6WzCEpLt+2NK4sQ7pRMM6XNkBky2hjsiTemsJfm6eiq88pfrLTynlqMHs0EyYTGpIv0cfuHS488S3CYYjHBnEvedJjH8u2nxOUUPDQ3lgOwhuSxDc8IHeaZTmD2RyxccmNiIYEYdx4l8oQ3JSPI0Ll5ynAPWHnPFldEpG0CPbjSvNp7kxYRtDSrxP8i3B8hYObq49Ft78EpgbRsRYN1ubTfC57C7LftgabWKHhoPPSOx5g36OIdkNpmvrpy1g7JewmDiOZadud+KnrHiK0+cr1lOul3JXXFSrm6t4NKlJRKNN82Su91\\/csa2MPSJozczMGwEVIxu4SoAxXm4xav8A4pivZOJsYOZsaKu5jQHDNk+ugweulhUs0HiLCLjL3iNAsq9SnX0TR68r0njLx207UIZxyJSIJ2mdqU6SnSA6DuYkQSN3XjF9zZjOD5S5XKccEBxD7\\/3AKvQzmWd5Ce1EwvME2zmLGM2odV9FDhHQ15TlAqJILLwlrekai8l7yyFoFJ13C3KK8pZ\\/1P5mHTPmHZndJXyQ6xO4S\\/WeUQZswtgAIXVhHeZly9OsqTgD2G3MqVh4f9RxeGiJQuCW\\/wBRtseDhAnuFuuY+WFwf6mybtRZDSo0j4EqiI6G+8zCgfEwHeXjGtiynNzrEElehcuXL9AacxmsARENmUFD+NydqC6Z0wFiMyvkwW43gs8hiLkbTWq8d2bhLc3u\\/O2Zfebd+kzk5R3eV5juTZT6QA85szCOZTMOFwtrms6VE4isuvcDLjaOCcIi1pipOB43g21vtEYdKHfzvI8H2lP\\/AKi44Qg\\/El12EGmfBiY95knbZi6D+R4lNFEs6TfXTHsv6pECve1gAlSPBfs5gYKdj+paPqUh0C7MuWZTAdtOeSeaeSN3TPHJFuHs0NlMhDbS5xR3um7PtLsbqcnw2i7qFGKJgRNFqFfpg+6IZv2lOIDeVANo9uW2+Z8YS7ehXVPeV3jYcJP9eI7WCbxm7mPVEv2x58Su2FwN4A0kC+gA97jEKYaHdUDWRbXNKlnHvVhym\\/OY5cPmU47PnpFi9IV3tpOWCmBbxBNB1l4g2gPvibKodmdI\\/MBqU3HJ\\/sobrWYIanvDoRu2PeM2jtOqFdu8xZw8Q2LdsQywp59yEugTq2lq2fedxLxa9p1TEtpCN2VMsm7mblUfcdd4K5eFey5mDJshYtp8sth5loFiFT\\/ZQxHibTt5tArqVvKHj6mOBJbb9ssd5ZL2e8sVwTCTHpMMjIsEHPLy95lS66x2LV5Zu\\/hw95nsx4PiWnHvUsdLixlHZtMGS+ZRgVe8rY04GJ0\\/Ms4\\/M\\/tCd5bWHE6hb5nBv7w4FB1nY5PiHT+jNvohSqCoZ0y6yuZZx9xVxxoR3hXiDTGSG0eTpDwVl\\/IQ7dpgqHJmjPabIO7s+4BHfS+wF7s4UYc2MD+OINkMMw6anjMH\\/ItnneV95\\/Ur15bHQjvop0OY245jVf6PxK3q8bktWOeWKMvtANstiTEc8uU0pu99oKc1C2zYgIDclfaYmCX3jA5BM3LtO57TpYveYqudD5lSdu0MtmNWqWXXd3jtWlekf9kpEp+0ebmdujGHF5icp3LnZvLliLwg\\/Ov3HxMswBt8JSK2mUpL\\/wDyNkQcNnEUDJu39s6ifH7lrFXdhuvhNybeZWsfaXeD2Y5bQ\\/xfWGAxJ0anBfmP\\/Y5D1n8mgzNuMEA2\\/Eup0lb+L6xM94Z3+4OKonxEOxU7N53Q+nMtvxG64lSu2idjKNvtKN2OsasuI7Tc47TL1YV\\/IdYrcDOJyYO3MArsVttmFNtbMPupU5k5sLQ6ohVe+xUqjgi+8tvl5me33nufMef7xRwPe5RsfudevvQ8dwQfFxs4UfRFbi4XZ8yja32mfBB2By\\/1LU4GGY3UTvpZ+cDrfmI85OZwq5iu8HO8L6wG9oeJRglaHmY536Rp22lVA6qYjrKdZXCUKY1nHW9yCk0TziG0Qn1LBTCgOe7LaPqOcT63uy3KDtOR9\\/8AJ2BMzZ8xysUb5glgUck67DzB4y7wDa8diHlGgMZdmszB3dZdzPBmdqH830LJY\\/r4jMlM6COUhfA5\\/wCxmLEm8RfeXv2hbXeV0gPMbLild5WBaRHUwNkUe51iYijpE7SndFHAQBwSx4qDsxL7b6Swzv8A1K9kKoErDdkn6d4Kd3ossV8vq\\/UGO2qwV3h4JRsWdZisUI7ShZ0rvOGy1KAbUSicMWZowLhGvNyq7r0LmxcclICtmJfYr2nU79ohnJ\\/N4toFdH+S8bb8f7mD91Nzcnm3hFjOW+8qI8S2tmYcxQc7dd5WsGI5HWcnwy20zwe8FzYT+Yl+sqevpO\\/bOx7Sm8Be0xZt4Id1GkZZZrFG0SVBe3+z+5sj8\\/5HCiG4EWbv1Kco71BJi0W1Kgrt7THnEFMMqi4Y8uIrGm6viblCOLZlaeFy14J05gO9vSVwXtB1v6J2PuLbt76OKezh27TK+vE5ObiruvZmK5hljDL\\/APJZ5TFHsS2tvqVvqOy\\/8uG0GYVl3xKXK4ruXBdntOa060fMUAolcznOYECrgVUirkQUpbvFtnJ3jQVRKlS+R+GVZv7Ny1qiYsYmy4scpfyIbVeGHn8sr4PadeZyC3KuYZeqW35ecwc2dwih4gizmWGYYg48M+W5\\/9oACAECAwE\\/Ibly\\/wD8dhB0Wt+hKlarH04tmZf\\/AKgAAAF6Xow0qIvpStDLoVoRkUJSUlks9ePWVKlSvxh+CtR6VSpXpX0s6EP\\/AMKuXL9L9IyoEPx3EkV+g159FSvzJqSV6Cs1v8ht9fOpo+jD6L+FWgGgUVU0qV6L9ZIKPzMIuPxl0vOpRlab9av\\/ADMJs\\/FYw1c6MdDs\\/wDAmh+JhHWR9IegdUWJebjEjvFT+cm3Q0PU6Vwj6FaKlaXiLopdkOjuzDaOgfzEGNDQJWpFq4R\\/EFxBmybIbRNLzplj8\\/drGly\\/SvQ\\/iURbihtOiEtjTeNtzKnTdD\\/zBjGJAgfhLUu29C2WbbxctG31lWEsLoEcthV+MrQ8eutFRIRWhNOWhNKmMrE6Zhl24m8wPugrroXcGTSNKg1oz0n1LsSV6Nugem\\/RcNGJbEWYeJvIeipdps7zlcsCeYd7lbjMGyLXDibtusPoARUTKQEToVHA1BjQxNblxRh0MosFrQThZBMRF6MqDbfWG4b04Ey5meIm8PhLVRU2ZxyiG+myVNvQNA0SXEejbrXUtKNGVKl6U0GNJF0ubCC3QszBKzBWwsTdiZ+JslUS7IcwSpUdGtuEUSiAMNFpbQeoqEGq5el6XAd4wMZhabZRAQB4lpUyxHwJdwKlS234gKI7m+VosaCL0W0VOsWDFh6C4MuBnDF9V6touIWR4iVT0l4h5iCAz3CZ5hTMbhxMUnbRII+k9A6iCoR0I6XE01pUqVKlSpUqXZJaWC5lAVFxZvFKky3hvRzAlCG85dQglSpUqVpUqGla5qIwNHRG341rTZNtQhTM2RsQBmDEHzAgJ4rRhKla1+A0noGGipKSnqJbSWTEzio7xrhMHtMIAgccT9TqixQUw0ItLSmVKlSvQax0MYD8bAVt\\/gKTLmVUshGJayoJM6M3RlL6NSVlZWVlZSXqtupfQqVKlaVKj\\/CQjqcSyWRiaB+YTbqfUXLly5cX8DCV73rp6DD116HCbdTA0D6Fy5cX4lgy\\/mbPTemMdVj8NSvUTLl6L8zCJFubfW6Vy6OLly\\/TcvWTZoaV+B\\/CwlBZWubfWwmK4TfX4a9AwIaP\\/gdbeaBkCKhMwnZemuhKdEpqGAypfouMLS9Zl+m\\/S\\/hYaFIPEJuQbKEbmEKS4tB5jtLyLL9DYIrpWofguX+M0Ye3oBzOge8Bu50SGXpQQPxGk40WXpf5nWshy6TfFjQ4YnnLrSNkvR3g1B\\/BWp403fgbl9akv0mlhiUGdaN4aDoENo8ei\\/kmM3fhdFei2D6Llxxvhw+gGCcejtjBj8JrMT8hcG5UqV6N0SE3gV6AYGjf6Ar+WdGK0r0VK9NXK0qVKi7l4hBzLCunpzVVoP1+KpXqBKly9Lly5c57aJvRaFiuKtMiO2mL6Qm2IpxNhlI9INzZ6r0uXL9TL\\/AlmheWntloSv2l+kBzvMN62Q05R0EwRW3GzJLEwq7NJKlSpUqVKlQJU40qV+MVK0VKlaLRNG2EN9Nuh1yaZezBUuJQsh+E0vQ0r1r1K3L9VStGG60PSLi9GhhZDP4jRNK0VK\\/Ay7xj2Ig3PShl\\/ihmCDXy0qvsf3Kl6EqVK0VKlQjqNml\\/kTHpxm9DGdPGgtlS02nolI7Xp7DgqWadmDoephrB\\/wCpgi0WJY3oTWlj4i+blmIS6\\/CyoP8A6CLEWLCE9vWaXui1ZtK3rOqoESH\\/AJaiQm6NSofi08elxUpwyxBsg\\/hCPpXLly5foqVKlSpUqVK0r0Ugz8fgtfZvGWcxOLtD1l20UvSpUqVKlSpX4L9OzUytH8EHrFFOIsIPqdmplfiB6yspKaKlSpUqV6NsTRZfgXBN5GcaP0+zR6lMrKSmtVlZWVlZWV\\/A\\/v12aMWA7wPXXMOYzjQfRImhFly\\/oFy5cuXrUr0V6Ac+i6W+uuZQ5jDV+jdtDH0ICU1a6lJRMa16ahzowVpXXRS+reWkRhtqPo3Wy5fqBcv0jUrL0VlfRyxpi6maGnq3j0Oz0PSI4aBGXpUqVKlaYl+kyRv1V6KqbTJuVOX06zGDTb6FTqLjU6X+YlpcuXLlzglSjErE6ENOhYK1MUO8MZgPS39DcvVei5fpr1XL0XLlxS8oXC7x4sxVbpcuPQXMN9TY1QQI6DR9df8AjVwkcRz6KnQsS4bYaDKiY2lyjR9dy\\/Xf4a9Itmk4D6bCoaVQQlEVj6VuJX\\/rJKTfFm70VKnJHiV5Y6dKEYZeg\\/8AoV+ispoZu9FaVEewl4aNapcaa1MG\\/wAN\\/wDguM3R0ib0uXKyvoFNFyyX\\/wDgEYdGLS5fpXL9J6KZTG+lZcvS\\/Rety5fquOiqX7SzeXLly5cYYuXLl+qoal+Jf4CvwVcdL9JmCKpct0PSQNCLLdSOtempUrTMplal5aJq2h6b0SVC9KZUqV6DQ0KoN6f\\/2gAIAQMDAT8hqVKlSvRUqVKlSpUqVKlSpUqVK1qVK0qVKlSpUqVKlStRNElaVLPXUqVKlSvw1pWlaVKlSpUqVKlSpUqVKgRlaulxB6ySD0Kg0qVKlSpUqVKlStFf+NZcv8Lh6L\\/Af+nz+QfjHoshlxf\\/AE36p+I0uXoB0NNR\\/M\\/+Bw\\/Eei3GZhlYNmPqMPXf5z8oaViOlyhjLvWX\\/wCYjpPxEdbolHYv3j4qO0P52Do\\/iNZqem4Q0Lj2gzUDiYQtNkF\\/nZu0dePQEIZaaz0X6QlQSqdLqnZjxoY\\/m2RZ0dFl6sOdRqPwCEZum4hzOmMJRow\\/P2Td6VaX6a1HrCGhunVAtjmOhcRm2P5tus7a8ak3arUeoLlabEd4wRXzLvbeNwlxZWZXkmX8ltgz6eItJJ6QDLL4GVlqnchK1E5m6PVhzGAdkuNy2OJyS7nQ6FuJdfH1IJWW6N2iy4TiGVB0ELMkGFWiCF1ROozLzJX8+tXeocGxrqrZmX1m22WJcorMm2ZzdOIZiwzElwRLRg1rKPHjSs6OLTiPqyBTpUXvLibbvWNVu\\/cWJsmbDDxLESinE2ZBM3C7TmCi\\/wBQ5O0BmK8zYvbEFOpt9IDejCOpMnX3axpxoLaFBjFstOrN8w6BcO04e0qZrhKltrxAqYdoNwLHc2pl4veI7zAwYl3Q5mGNBtoHPocY1LlsEzlING\\/VWl4jN2gQIytFSpsMp94NjLFTd401PYShQb4hdw7yjDiCYm0C0MTc88H9xxS7jqZuio6LFNBUEqGtv9FJUR0a9daWrm+SV5RSDTNvnaJeYWWH6GByZlpcs9oaq\\/VVGEqVE0r0G70q0glSpUqVKlSpUqPFaJjxBxcuVZ3QDJdcw3IBM7TPQsWkd50Q40HOlkVKlSpUCVKlSpUSDTu9UyvVUrSpUGjZMEHEFT3g1l9R3nEEBqxWd5TdvBGH29G4qVKlSpUqVKlSpUrV3+pV6wKSks1wg+Y3l0whVUr4ShzZA7cw4wcOCYFRKzaxY1wUuXL\\/AAkU36OXF\\/H\\/AIUV+GDfAlO69pd2ibLiwXLaZe2jGolMzMzMzLZbLS0tLRaN+ggSpX4T+FmC+kYYl6Z15fPpSpUqVKlSpUqVAjN+o9B6wr8BKuAqu82aXLl60BW8oXrQ16KlStKlSoNG7WMvUaVKlSvxwy5m31326Swh9Pety5cuXHp3ejX\\/AIQjMpdm317JeGZZIMH0\\/wDD96mhDQfhNDWY3Zs0v0C9NytYFh9Vy9L9OuKMNK0YQ\\/G6YuG5cmO8ZPbL9tJmp3jDEuy4LRpUrRlQh0V6FUT\\/AMRHTaQx0XqukplQJU4IbytlarpDjKtI0qMfTUqVK\\/II6m1nM3x02jNwdZLIhv8AkPOlaq\\/8LzLNI5m+OjCKgegNlxsRK\\/EcQ5hD1kK\\/IhhhxD6JzofTRVoOPyCH4TRfprWoYszgm2LOm\\/QjD0KmC8mSXPj8kg\\/ivRf4ZZ0whXo3fhCgNsPyhoQOly\\/W3SpuhtFiZ7ysTJhtLLHStvrqvR0Gv9vxXrPQtSpWpUqEJugaN5sS7hqFCpuIb6Kz0DV5yb5o5jv+CpUqPqV+A0lZX0ZUG6VW+hv0T1TBRDOGHiR77tLLly5cuXLly5cN9F0PwtkHRcuXpcuCSs3fgHMWommGvxMxAjoVrfrH4F6XKejfqTdHrZGvMT8NSoS4suXL\\/Cku7MalaVqNWbtSHEevhIIkqPrAuKDmBKm781p3tLw0LNFiXCN3oVD6SWByMN6pXqDQb6H\\/ANoQUQhqGmbr4hrRt63QixP\\/AGDY9Yup0iG3MFS4eZWlSvQjFmDH\\/wAxqdFj65nJyQXokuXL0L0d0Gb6KlSpUqVrcuXL\\/M2PP4Jd9ZmmWh59WM6CVAly5cuXLly9K\\/G+mza8+iY674dRfqnnVcv8XxaWl5aXl5aXl5bQtd2p9IdTn0xzLl65b0MNCzUry0tLS0t+R5+HrH0HUTZDVL0xKaDRgRJTWvzXL0L\\/AORByeg3aP8AGwi5ctmdLly\\/Rf4F3qt2oR31Fnot2s1VpUqVKlSvQmitFvSVekEw9eNe70CnzocNC6K1uXL9VSpX\\/gOD8ObvRYapoTVX5qlSpXoTRNAhKhFfomjpl6VMTVUr8AKlaKlempUrWoJWNdcQgQNaH0uNd34H8t\\/grSpUEIJub+mwjAlTZrlor\\/3hhEJvrpJyPTQx1MDKl\\/8A4MInem2BNvqUM4PSX6GCv\\/NUqVraXmyE2ypUrStNul61or0Prr\\/yCRY1Fuly9KZUqVKlStKlSpWr\\/wCojSah669N6PoxoPTUr01K0rSpUqV6ibSjKynH\\/huOjH0H5i\\/Ua0ypUrSoaCJ+R0T\\/AMGJcuXpehpf4l6XL0uX6mEdf\\/\\/aAAwDAQACEQMRAAAQkFmWxySyQEkkklDb\\/wAkqSeImie+TOuZ0Oaa\\/wB9m222SCH0fszct1aTgNQBR3smyTfxLImyJp6EOcrBqLPRP4a+KA7BJJJKJLtZXtI2GlABX8KCbp\\/oJJJJTafjEU0cZf2z9XZ++GUtJIJJI7BdkqEg8799RP8ATqkxTqymqSSqEPs+MunPd1yaA9jSBqSSGSSWEDSKsRUni\\/yej8c6dBSSSSSSQqdzXhUZHJUR2zkIUuKSSSSSSiTx1HoAckS0KIK7X7NySSSSSUe4zCA1fXMjp9wlDrNISSSSSSAXTjwhehCAK45v6BbN6mCSSSUrRpGOqllAHUkLLUp\\/EYLySSSaOp1uKW7\\/AA5Ao\\/zdR2COX4dsXGVAypL\\/AIPToVXnOCNZEIazvBkAodZLampzsaE55sLSYiLzoXPjVtbYcJuT9BeRDZlnGArFSMK71fi\\/zMPOkM4xZ\\/b8I9v+aDTiWLvVUXhmyOJfIZ4Itg2cnhX4v6N74YWqjJ5QHWrqeBJ7MWBeYTbjdgzmy\\/PW7M+OiWpQj4RSCNf+9jMw6NXazQxelHReWjB7BefHygQLKt+rJPu8No3V1iMMyGkU+unYoWRpbJbkC6JXQjsNJfuSNnxpCIvVJbpOSMxQ27LQAvKSl89PXYuHZZvaJwylykY5u2T\\/ALp5QYTdeyzf+HplBPQHRMXwl7Fx86SlIiWfecsnUWzpf4zbaH\\/KQ9RR5m2z\\/wCO8bCu6HmiUXmdO\\/nstvL8tl\\/9ZvNkkDrHbH4VklhMGMw8sll8K30\\/wW0wLoogoWDHyxkTt3ktYxVV+jmoNIkkklgRXhKwNerkfwYO+\\/7+5XklMNgyNIHPkb+slHeXMVIAOEuktEIOsc+0TlQuBOCJd2WJrVwklopICS2MlknPsNNQpT7b8gIgBFsB5juJgUErjGemihiPbRgyU\\/2HA1176Mo\\/DABrk4UUbAhYUC0vQ3UtdAntoI3\\/AOW+1uCzx\\/oISa5wsuiYr\\/vveS7Q5S1ru1k1LLLPmXtf99fkQemjs6xjV27pzbWKl41db7\\/rsh+gLUE9EaGqM3dibmM9GGz7Pk2w9nSMLTkiuPb2HNrav\\/zVrv8AbbkKbIwBP6lv77fQBoa7Xef9mgdUey1M4bgVxc7c1LmBGm6eFAXNDFsSxaavOr4yQ4zWWbfDtG0bbkZCi0Jfqv52Ti\\/sktFtbYOn0tZXNaD9DdcWp605phisbjLg46CaMgqiXeTQ\\/inBXG3\\/AMh8kIdZhiee0PDjF3HoPN6YO3IRYpucYIWravuXWu8Xv7z2Rv3shfb227bu3d3nR9n+AfM8yRMb0U+m9Xly+ztK1y3\\/AK+eFERSkJYPxnqOS6gYJljz7LnAthvasrL4T3YhEvreu54iIojKDXULMem5PrN2evRuwx8Mx2rUZrRQs3IrZLbcGKol6BaNeMCrRYUJNndGh2b4kWYRJrBy9GBYLZL3U0HxNE1Zt8ONf34CTvnCSkR35QHjfJrH+0cuPAzE8Ll8EXSCnLf5M0mvjUtwi2nIPqmr5jdHzIMY6JQk6baDPxoKalByqnw0ZIY2EJpA1y55dwwSxv2UvjDxeXLG\\/wB8TOQlT\\/e9GYnA6GGEYESlX\\/\\/aAAgBAQMBPxATmX8zq53Z3YDmU8wfmA8wO8JWmJiUSiUSiUSpRKlSpUqUSiUSkpKSkpKyspKSsr0hW+YcMJ70+wg\\/i6QDvDqTed5USNgYui34lAVEwrrFTZsPmcUPvLGz5gQo8MCMkMs3aMdFOAkvUZYLp8Q03uTuzv6fdndh153J3PTddyd2d2dyd6d+d6MGPdlYCU61DdeIu7nBBENloWWWnMAbvifM1MCRoecr9y5ZQUXfLMkP3FNv3GYxr9osK98zHGG8FFB5htEHm5XM\\/mHB80tou+7GDh1cgpzUBAjwpbsEwBLbrpEFpibhDkgf9yVf6QX+ky7ko7PmINz5iNCfM5SU8YqZJ4ynSeAlepOo\\/U7h8TtR6E7EqYJTZIUZCA8G7mMfuVKJ23Z4jPhjKYSYob7wTTen9TZ3uuNV1GZBBrDacErxOnZnHPiMDGGxTEfBygODMpECC3K3uUJy6CsHurgS1Yd3BONNBfzcrLcxK6FZhBQgCvVvAJuIWzcxvYtQYzC7q79h3hte1I3YHkekFVsLfpBhKlZ\\/AlzJnaCJZoqfxGC68p7MoW5cAUq2HbHDK\\/HRy7TL4iS\\/WDWfMmC7T7c2o1DC3MIgo0RorDtxbSgKZoDKrQQBwpuLM+DZ5hcCLXr4g095xvUoxFBrboHWsEKbYug9THa6cIWW5Dw6SoxmM9w4PxtLkHsNxRf7hUDfEooyvM+3GM3G4zMi58Uza0c6JGfTEVCTCmEJeXaZ2MRCXKRA8Qs1FtNqBoN2CEsLlXx79nZfw5jsl1PH+jAFBQp95ZXN\\/wBlKzINYqUNHonMhg6X1DJ7zdJWeRZD5RUAMJtaZhYw6iYFdFrQEdvUoigPmUF1hxblYnwQ4O8zJV5kr66wc5ghXEoCMQ4mK1HomconLcvTW0wl4jHaWES+i+k3I1452mCGS3KjB8wC7sV23fca\\/oPYqCU1wfNMLJgsDESuVRN0yFmXdUWd0lMeBQ7RLRkLqJRiWb1hU9nlcMlG9LRxXJtL0X6QupNmqVCb7jm06fBDa8ypvVmPlTriJM5GJY\\/gIy25eYpINFGJm10maOekYvVjpGGY419dVG5EK6HtzKU1ADisSwngfdMeJA33ZwLz0r3qZsrKWsXvv4jlQN5iNFqC72y30CphCl5t3JzMeBu0Coa7kRQ2QYehBjZcA9JDMxVUELJkcU8cp8UV90+1LPKlGftMcoOjJEdIdIFQ9TWI5VFvjE7MybSiPePESV2hBzERkGPeZTshjy7QX0\\/6SbgyDuB\\/cW85x\\/X9SoHzFfZh4FMzE\\/ycUJSxXmXXK6oAYhMNkU5nh2Wz6IYj5Opx+ZVF0xY6E18EtT3n3J8ynBXP9wLjpCFV4ntYXZSUGSIQgPagMmlXWbSHEvI99DFN9GluwaxzniZ8EqPAwc9d4i3ZYs64f6hcbKXgUTcUUKD\\/ADGh0W2QclT\\/ACWlLQ5vN9s\\/MNl3AaExTTAKr90YQGbAHS4JbcXQ9VtBs\\/Lvz41gTbfbc4eJlXvDB3hE9U2HevuVBDLEqJtDdgJV+BqBRR+6LFt7ZjpnaNm8veUIpPNRSKjbkmIYqoF2x7hp2A2wpnar4Cj6JglpT2rQfDFGUm30QfUAhbCXqd\\/YmXQsu9Kw9ob3MD1ZX\\/No6v60VsEMr2N5gp9UXMmnOHd6w2eGj50vzLtxSvZxKZu2g\\/0\\/ldQ8UGXTfM\\/MdviUDpcJQ5jluk3jVzD6FAgXdlgzZKC3nYYA43alBQSE0g3Bn4lgJRPMKoCKq6xLzMAwxCqCsdqgg4snRkPLBwguOmZ+ajV\\/Dwr7FIS2w5wDA8zECGD2T77cy1nI0HJcObPgn920RSQBrS4FuQ+aQzSWixV7n6gmO8\\/ubADYXwGIxb0K7Xk9n8v0IJGf9\\/zNvxLgbjcNiVwyEanJfslwvSVSFbUAaFCoiwFyWwS6MqclssK\\/iEAyoeYgZcyiQ2jGVHaMWuJYygDs48xXsmx9fbOnhQOjj3fUuNszcRQPED10Rjlap+YBEYwd8g9gSsvFh7nAeY64wTG6Lu2ChNssrXOkyBWkqYLp7S5Ylca17JyHiojBTgpod39\\/4mUg04Kn3GGbSAWPgzvx60JyIPa8fhYWdIJxsnUfc2\\/E4SFy9bgHwSuX8ZlbiHfFwNKllYlUBjrKTY8zN15gXvpK\\/rHfFx1BlpztANFwdgmDgtgRty0xl\\/hCHwVJyGge5+8HeC4QCr+UYuOt4oTSK3LfJGYPCNhRRRuG532iO4gssscWlqVVEoz4Eyp4LFzUAti2PHCRsg8qjDypuuLU4GUC9sw8subzuTLyHxxA5vegNdnvY9pSBZV5Ez808VL9Zu9u\\/wAwQNcDCmDcFVYwji78L49K7bisH1Epiu5ljLghPNhmf4o2PEV8QAwLIF8LMcvhxBpnaDdsKXFtZYLfMGWUb5gwKFb3EZiYajkjAIeYQFhWwbquI8aHdyp2WhL3Lhv7ktABvhl+ud0InxhodVzGwgRQ6ujnxE45SmUStsi6YIum1SwlkU0pwLMwQCLgoOEW5u130lhzMjDGjIG1olxeLOFbrV6O1W+IaZGKSGS2ku3jtCxiM20ZU3x0Jm6AltrgKaBjCYHYO1ct7cuPzOUtV0KJ7KIzzkD3p8Fcwx3Fq8J0O0pEnRiB3htwuXESGUcTN2whzBYIbwTLMxneAmGLRFJNniKKhwxU3CyII7EiUsX6JsCAlwkt5gAl4ZgW3C+01JRj8V3OfhVRht3CJr6xddxgYtE7THEmU0QUgxnRXKroBcaHFJZYETQYacTdlOwDueD8pYDUqkc1QeHac\\/d20dAZOIpnWIyVC09C\\/koRExVsG5\\/W5ZQ9RWrdJLQDljdvRLFqmIUzaTnIWBRHpYPiicRT6tvNwFesSO6xD2OCFQAD2ALmLzc7on7RZUBFLbapwln\\/AGFY8AFNt2MwQOzDLiGyLuqB1mxIaBSW4DxcQk7u3op7vMVRWe8ZH4iWMlGxdy9xiAF2VXmwdZZid3WXqE5jEGEGNy23CF0D0XNijyNxDimbIjpTi+ZYiUR5mZuxTFks0aZPeEj3tUEgYUz1j9Up6oalx3L+oQDcji9v9sAsc4mDVRFVwSkdpA0cAtuAYsCw21lA\\/uVIK2YlKSmmG1H9zaeMplpVb2WOCsodqiysLsMynDVwjypu9TcjvQPexvPd1T\\/SISp5MMS5qyl4e\\/tFooy+AKDsrO5gjRFYymjuG9YHdgJGk5wb007hZHrJZqChZyFiFXZqKQ3NrEuOEqAFlCHeQawx8aAt8JtkyJBcBltKl\\/Lu3zTC2mjtlwlN52uZVFK+uI8kCGCWfWw4qM+xvFTbBMYo39iGjBBw3UntCwUpQfZcLJ+XcjDLB3dZYsCLYuO8LzzFzsXiDiqWTiAERXJDC1hutpSrB1W4uSK6wziuoGTMFS7JmzVr9Srq8n5j9UZo5uCp2DHeGnafZfuObtLh9CKLgAoQZQC1O5EC4JWKGympSW3REUAwIS5NOSjYzgvOQ4DVgvjCH7mc0rPOLPImfBwbHoVSu5cHQaCbzuKsrmvERf8AqtgzykBVRh7J3YCpC5igtHfrCGaeY2l2X4pdo2Qg1CdxYOzEyfMRi0+k1G6W99ZGANG8hai6h1TYCsyel2w88qaIKZWmjLTZiGe9Ch1KG16jLMnB8eFhC8ByC5hTYyJhl88uLjjnTgV6BuWyTN9zS8F1dMwF274yXC+8UYgkOMHd90YR5BOaueW0HbBLPYcSjbxuSkF1OJTFT55hQC9v0lbU2IdF9t3aKMfBdtRe4b2I+JMRNueZtDTaXoAh+qVW6tf1EA6ShGR1TyuPvvBoSq3gdZYL7ylXyrszAf8A6gGLKAu+0vKuOrsIi73MyoEbr0C64D4QRoASq2hHN3AcqYwkMvN\\/sDksjI8tbs5Df\\/k5huKIC0eYxVlw6he6OdlRtYD68E2AMADH27pr3VsKZhqG7lrSUsziuIooxVd4mMuNdR84JUZZRhVwWjm4HlSQ62+FZbtpUo5FYU3OHFLxDoAB7sXTbGL2PMtY+pb99yOtguZ1fjRYcZoEfnYGLwfkYfVs4XhXv2lO0HNkI9exMDFdsSAG+a5nUe8WXZ5XCGCpTU5JXFPMGQpesOJO8HzJW9wbmFcHCwcEcCSwOk3nqjEy\\/VEh3hV\\/ESt5OY1rUWdlhau7D9pQtfEQDanwio4JymZkc1e8cd7i4zozf0XgiW75Twns19ytnlvg8pKK9kgyu\\/U2Pe3jy9ioyCzfDI3IWOEiNhTQZu2b0OAnQY5ols2mQ9BXsAKc5eiEKllBBZs8XFOOLlGlAeSpeAzqHwy6vhIkD2mGFtxFDpcQOXwNhm5uACqzAKGW94HeVDtMyxCgdBZiB\\/ECIAA4pwDlhw7Zm9pb+ZavFh0pfqJmjtGS+CZO0A+QrzvDSrSgvgNiBGCyXGY5MRYvmClmYy2Ou9AKHS43RJHVu6K1L9E94X6g+wgDd\\/2ltjDb6qMhSoi5a2LTFm8WXvbEMtoucbztRVTwnIqRKniELPeHAblQV8wa8A6FKCyMQwYc1LQSzJ5dEwlAwvSJgtOB6t73UsMTFPAxZxbN9sQqlgEciO1nc9oRmG\\/hLyKXQ4gLHOslGvBYwrMb2QBu2HmOgtoR5UIKChSyq3viG1FhSqb2oIOCpU0liaowDC4Mdec1mZt3+djOH4hjjcD\\/AMlf4iSuTcsOBeZgExZdMBi4m77wm5imPKVbDDCZMxw8wJCHSqobQ95nXulq12hs9oFp6\\/1MVxiAfybks\\/g4hGJHLcSj5lEQ40qJRKuhSdye7rrfbJ2EYP8AkfMCBgngEA6QEbkoXKh0KVxBlBKOhMBVGM4cwrN+ZGWbFE09VbRb9GrSPryMrTaV8qD9ISnaOqPjMTjBKiHKuFvhpQwXVkApaXiYAagY63eZMWaZlyqPXXab0NdstXEWWhHdx9AOyNldgbbTc5oO4bMONpQE4sHr0YgxAtgIgptUCwzOR+g09NPJ0gekT0lOkB0nZhWVlPEqEJY4KjDOkz\\/d+oruyNntBn9U8xge2fufNj9QyBbgdl9xPlB7KI7KPWzvojziXObZI6wW+Emtt4T4DGVwWbZD2mQlNJwYyUjukWtIoLMobS7hdSjG2rAhU1Qpyo5TJdUAyCAHI7o4zTpGcBzIzxx9szQKHdNmPiVfEuQrWY3j2Ywu70KTqQ7DFQdr+MKNm3GMbw7wRzsjIopuy3c6ximqgPSlneUJWkJJnlKH9ktWzVWFrQDH7iNDDWy2\\/L0hWUhaoBSRXgSikkoIO6EWrLHrOB4dVQiJLX8aZDusq2qp\\/wDCn\\/yJ\\/wDAiO\\/wR634n\\/xp3fxO8+I9V8TqHxE2n4ijZVmIULG0x9WI2e0KRdK5RU2jXMNfudN0\\/U3kGKcINwi3CdnHoYdLMeyBRrwHdm0wQ5d\\/cczvoQwknVvmJvybPJ4hiy3Ash9wA+zMZtIjAVUC2XW+CI2xbxv9W+t3WcaGUtjtSq57YluLO7wUhyK4Lllc25SjNuaU8xtmTcdcWsHfurlzKawbo1e+GVAqRZwbPLkGExERoHs6+0YylKpFF4oQrmWeaBZ8fHA8IlSil9bIbyc7NdIldIUHzNm1THvFn9UV\\/hOEPiK\\/wjOHxHjHwTonwRbhXiO4fERwrxBwyO2kEDLtibOgx+iEFLtiCDcQmCeMiu0I7wxHGHR\\/Mv4fMV\\/1D\\/6p2U6kSzryHgxqOsDRvhFJ6JToBbMFJVHhSj8EsEG62Lt9uVSccYIntHqO2ItIfFdimThgjw6CoAF5T\\/iPDicACNGxibhzuw5gXlxah0Oj3lbwVVBLhZZ1Q3OTh2Yvu0AbiwMAgo\\/dvvlo6SsVKt6iz3YWx8bALXwYFRSyWdI9udknbJ2CZNiX0EvpI9kFNoQNjDd9JRTf\\/U\\/VEIo1M7whe0rvSkBqWdr4hOTE7qBd3zDcqhhWloXfm6F7G72jG1be+8\\/fJN0IZ8SptEgZignReDl\\/1CKzIfi4Gg26bmnK7VCbEswug+covYiTZZbJUyNr7y3gFebQvvE9Y5wi1hGBFHsbxJaJQEeMWdWQVZRp5gIFsGajqieSnm93zKFsCl9s\\/wDERZmlvXAygyX7xzFZ8x6WOtypyvmHb9wjZgdjcegwPDLmqYdh0mMNLC3bBY2e0ttuYUOd4Ws3tOEbxuJRA8QgXiU8Tsx6EKt1FdohfYPjbCyrhqI7QLSpuXb2By92CM2CDnNf3QKFUVZrDmCEdv0ASgoc4hYF4+pkA0tqcxHYHGKCO0VAD3Ykv3BTOztFEhTbEuHdMwPMl\\/DHyCGc8\\/8AYLtl42S110FObJcKou9YKbynnMvMsFzFOWAIE5uXu7hvZiEHiH4MbPaZHxcFLhj8F4\\/c2VeX1BA5IRPMeRqmAjHuWJVy3XayKeAHqDd7rLLgaBA05lxaXvcj7MwLqwftlTg2XZu9hkkvDFskLFI5M8SjdL7v8m+o8Wy3VV93mWBxXQ3ReTuG70uOFJpaHMJtcnYpHb5Zpx0fZiCgZjA6mDyl3KmnK+7t7QidmPbePTheKl4ipWmY1iLNQgNtoVP3DraAVguXSFXxLTVSfDANLHXMWLib7u+o8o4fTK5+X1ALMVcoS7SvSJyNpaY4ndAj6P45jCGhqFy4Szekvf8A1AWDcdD\\/AOR1D1cRFcHcEtwXgMXYjlpVlttiIeCq5emIPkMhd92NwFWtZhzZRRe3dhkB715ePiWoJhxuDYgsicIHbPMzKogAwUNhyRGqsB2dmVnXaUx3jRtAOSCCEJeMBgKt7l4aepLncINtVGC2wW0DD0gUc1MtAHHiGcK\\/yVKw7LV7xUCh2OzFov8A0TkkqsYwj8kSDEyBCIx36cl2GYWVA7lbrussd9DQdegTV1xHxvH3NeTnlZsiav0meNYtWn4QllQtAPjYeIoYayF+l6Q010Kgwh3ZaLN3LI3a9ow8RA+\\/ZBKegcCcgQNGS5TveeID\\/ox8Q4bI6Ie7UohSqwMcuHgQ3wQ5Dpjk1byCC66Kx3h1vnvmz7mYw98IvF4ly68xbMRMRjX4RlczJXYlLudg28zEkCHRTtPACFaIbaQr1wCGpWwTJJzDaSaZGsWoTYgBUZI1Zt7sF6LmHpvxgq\\/lsQ7XaC0buIollJWKxaz23iyhkHYV\\/MMbtt9x+iE9hp3UHv2ipZRob5GbFK3yysEIsLsAFU+YpmxpeM1Fp1JiDLqAyMFDIvbvEGihqzW\\/2dlpPMBCG9I\\/mD5QJQWRfDY0TAmAYB4Wr3jXvNpWg0wgIYNtr2OGKaozYHAFmIfjeZtV8Q25XBhhWTpLiW9oQInFZnjWI1KYjdgJKp0\\/uVZYrPMoSqblnUnD8Nd6qVeIa7QxHYqDtOgjgGOU2VbXWvTYZdjLLlzZXiCCu7LYuOgcbpTRso725fMLawZ2J9XNmXlk\\/ZJmme8rx+4DGpRFolqeRk7TYkTqYCm5+iN0HIOQnAIPb+SypL2Mp5hGVumu3DLHqEKFuu9iyGwIFKiDIbd3WBUooEwtrDHjeEgI7glN7tB7QfxDIUKvfXhsRxtBO0OnHow6EA4iEGWZuBm6BdghvUqKnuQsfQ1MjpEERN3WAPzSeUPqWzE4gXGMsPs\\/6jF4gdZfSba1LLYkO7zPfJWDtM8sV3Rw28EvpNOCcVmDY3hOj+nhDNueQ+qKtAGJ1Mn3AGUwSi0Di8QWFsh5G7X6G\\/MKW6UBb08H2xe5uAVKC+D2jyp3QqA5zeNywXSnLB1PeEt\\/wKYOyCqWINZ1MC9B7Nk5YDh5NzsxRrP3Hke5AD1WAlFcLFK3isdiUnTRudVgEzXYmIm8OxtKwaimgUdJRvSx6PhZAL6iE\\/2Icq74J81EU3O2APhUeCrcH9hP1lIF7Z6VmeSXLlx1\\/wDBN0ju6X0jE8QZlwLHboVyLRqpkK4YWJU2e2kkKC3ReEhJjPBP48zx2w6JkhoCMLRbYF4FcRjs2KXijYe0EjFyWiG1v2RausiPi3BKS2uBpHe+DxDzbilHJ+4WZ6yro94FsQ2OUvDSA2UTbupEb4rXVNNcub1tFjxVS2rFYiQmW55gG+hKlOGJbS81\\/UR0aIAdpXuM6e0G5UqNHKGMpwxvZsspOoOzLgbRhGjfeo3bF8l28pTo3uQqzR8P3ExD9Vj6ZRsId7Pu4MWewUJ8cx+iIYTmEQ+Y8OoCdt39QCcjsL1BFNuBXdi3QNexv7hW2H90P0TreU5\\/5JFOPmGORu20wVt3j6Ri1tXjkr2lgcA1TIw87Qa2upT3grFbUobPKWipiLjK\\/WhUCGHbL+Vjh4ZyzoPrxzvhsi0Bc2YgZ6592tEQwBoWRDEkGTenolW8UQxOuUarfEOazRZOSxMwJbG8VtCAZSIsq5cdfMVhbtAZw\\/I6MAaB9DL7lXCPP2WEu4KzC3yp9IC3fZJ\\/UOBx0grq853f7gZWq3Mj\\/k+\\/B3IjF2hT5DFrbY9ISiWAYis95mr9EQbJfAAPkmVfB1ivu8TJXh26xaOoAbejYrrHoote4zzlrEMlJfDms7hDUJWLHCNf9iPuaB7t7x082rz0gZTGSr5iBFJoZrTYgiB3+YIgmzt6FIN6BCozFXMqj2veNKF0ERFV4GW4Q4ByJG8Aq6lzQlJESjfadyDyMTqJXrPOB2jhxMm8OVbwP7hdRute8EmGvf8AuLlgqNBL7kIsJeDZ+ZlRwYMj5YaDHNV48ogQvF2Ku+ESNEATDcsJmGDZ1W5mZpaFVYH5Io03a+oN8rLAXJm9oGJhDasUn0kUg88MdJWqgs7t7vQ5iLjFqXVx2PaWBWC1LBA2nJVoVt22HpOnLZcZmMmL3Yb9hK5SoTfQ55unIW6nw7\\/uVX03NaZVZ1UQN4dvd6QPIlK4LLikHEdQgBNlrF1kCHaJmivzG4gZdUC0ctSuw7XMWLXvVTn8SxVLDHZjN7IR5EajA23dcS1i1L2tGDihsWidesbZ5GOnaKyjmtvmK1g8j37wsUFq+uDaALOTOeYLq0UMWqj3mZCjTuly3ACy6ZZ\\/TSZ8Bvhwxy2kAKSisizPMRQvxGDY2K6pb\\/GI20KHVhKDgx5RTFN5KwPTrMS6tKdNn7iyLrzYfFGnFsd1QF+kygRnUPR4CBcQbDyHuHiGASCiNDYkuMy4\\/Kv6hEuE25snaaQGhdyPUiryXAJsTBgqAKmQi7sPFzZAWIb+IZ87O9xiWlW17zFRVJurpX9QPBBI9GAeCV8gs6IlUwOPlBkzWYFTdr7AxHqbMIzuu0MBAApprxLPUcLHtmMuwWxcZ4xcSAa7WNnxAnOuSXrtVTbm9wR6NmOZWXS0q3naXGwFFqDMl71CIAsRSkV8XL0GnQx4iBS4ksm+Bs9oHlF\\/EHYWTfcdg+IpZcI5y3Drc24jq6CG6vEuJNlNyh4xBtTXSzM9xRvGHfIn1MPLxKhylb9mzBLq+SgNcO5WIt4CvQTNMjx8RYhYedmqKRtljvv+oEYljRuTtTtRQhW8kEEPKV3gi\\/GY2SUPBiUew05raYhOZqV2AqHBoqyd+bS3qdxT+mimxO3Owl+kRl5OTrvUlfCDeTEJAFsocMZdseIqtld6nRPFSrNPDEAuw60sOd7gFf7i1UGwy\\/cbzgrlG1mqcXOdaF8J\\/iypOM+0dXKm8Agw8gPLKO0SGxQwo9+kVUzKi7s+OXKFVG1W7Q1MJZyxnq9Iq603nmPc\\/aFVWNoisa6MMNR1EHj6JzSBy60d0HaEOXZLJay7Phs2KhG5Ec09zuC9nIxTA2\\/plkWXSqTNRvCopOYvi73FBVVV9Y8EpvvMplO5OgQVDebzBczzOCPdOxUF0lHEy52h1tAuhkf6ZU7xLsJxTN8QDzAXtMNiF3lvUCWu3Y6QEbDuhUbxkO0uP2WQxrZ3ppH7Mal7dpR7hGEGRnwiLTrKnr\\/3GIoAcLHbBP8ASBWys7mOzGyGVz0jJOCA3bw6s\\/RCUKy47SgCgyVhd1mWBYKS3mwOmydYtrm5ItjbosTZGWgfHcvY3tzBQzgsBZXUc8h3GIcX3IGJ1fc\\/jMIcymkFO75lzlXfaXQVUMuA6EqnOLKYgCIdCAKmYzG2czmDbeFdJjpBIllQZSANy4UFQG7fFxPwABn3CHK3G5H4cxFHTeofKVEtUvkuK3d9mYRSLyMt1sgUHDeFVDOxLGqwjuLadi2VgWji5\\/xjWnNHpVzhqewbERAW8Wrq5u7bRDzE3FAb0O5KgiVFrfG\\/mX2MVgIAMxiiKOwPqi1YyYxoB4YoLrephfsizuRFFpc8gRs945KbR2EsfmmIHDBSOmMiBYoHLbuho4sPyx3PcxEMR3lO8JKtjV3cwMKbm32lQBEjbI4HMeRXlmLFK4O0lxgSyyKkKuhODMN5ZyTvEIIzMzKioIuKcnRyS0yW9n+oZ7ld58pdZbbBPAWGr0QBPuTmvVO32H9wsK7eiifKUHcHD6am3FJYIifJgIqjKd9LsSF\\/ryTlfDtDNhuIVorpTFeYNpV5u7ELYFWCg6qsSDmZmdy7m6Y5BGibYI9oh0KOZANTsJl9KVNghRtnCMptG1h9Gtg4d7hkgF38Nt7ciM9CU5dKMIkQqjgt242Q\\/wDlMPzX\\/DWw+rcB1WKxFQMdoVW8veHVFCQQHeVaLLDmExfGCeKV4\\/y52GgBvZ+Z1D7m3Z+YqwyyUgICUlNSyUmEQUDyL\\/cewKIgZF+7aJqu6d5ystMXKywxgo95TDBhMMymQZP+RVeqaV9FnZELdTZwuXAojVnptHiCrKaiT2nrO6lp4lClJhrrTsry1QvZlTSqV2C0TuuHHrGhueeq5JY8ELYnOwlkNZsuFawTBYW5GIKJk15m1Qdx2gRA0LagiaDDCVdHQsY1N4OkUGCV3uJesXMxvfpBHmX3l95ctlyyWS5ZotFje3PjmEkfBkp2AYJe3dOHxGbqbHjtCF0BuxjYytQDboKPJxyB70+NjBHvhKoBFCxSZlB6QHxDblSh+bSKi+YWl1AoMJpy32jdtF5cgFPHJ6zaCEFgee5wISsO0A4XKiZEQDHOMBp21LYZnSzTYsmiYl7XUwV1Sx9neC6Dc8s36ZceuiNDMvN9C+kphcpgU520YmJiYmNLNCYjC7CU6wWAxQvXOWVN4GxD9wCtlwN+F7EeUxC6ZSM\\/cQ1QmHW447ocOXi4u5RY+JTeAGlOWF2uKoZaHmu8tJzBFbw6bN+73ThUNW4G4xaWzkv51hiz8hlrNyEEVcah\\/cQUTaPQlYiWPOV3vlBbWxBx1zuBTqugMtOHXW2gaEDWxquCzed6d6HUgQKWloagubI+IU\\/uVLs4e83DiDADn+Mv152CDFCluOLvTey2esXXarA3NsJSEy41i+2Np++ZTn+ZafOgDaIIjTwxGGg0bARPH3S6DAYJ1XsgVQ2Dc8kYxxTR9Swg8MXUVlxvymMdYLVK1WKh5w7zIr6QuLwzMIrk37k95fee8uWS4QonlvPKece6W6wfLF9ZfrF9YdWHPBom5mGcKnNqZSCgi2MvWOijvjrL1yZubqqPuCWgLpKriiviBEsqxiMkVscnfbHEe8MZo2fM+jFmLEMReTgR95CZnsAO9RxVfsfeG+qUxsw7kubz9k\\/fANvYZknaZKi5YWkNKlSiV1YTswm7D5h0E7JDtRcpCoV1cNpYW7wV3nel4qdydNhRvL9WH+nUY\\/pZYpwLv5goHcuCUoWAUXwMxDTMAEDi63zLg5BkBd95UC3O5pX+2YhBt0Sw8xfFFHieApDlVgnKlZ7D7xEdIcOLh8y5idIi2eZeqMypCqNEuN2hpe72CMdn4mwM1tNxZnwzvLBxDpztQkPoIJsIcyTxTGKpy+J5gSoFHVxOtVxYtJ2zFJHEoMt45hd0lw1KVvGRr4EwWd6jswqqOTCQRNhsFHztGy5MjzvmFyudsdS5YBaz0QK+IMOkI2x9qWQHCzilcbPsBqVjoXMibbuAntHnyjhcN+jwxFRoTCXCZLeXP1BGr9V9Zam9j4ldoBpluxUSZMzKi2i1fcZWKwteA5Zv83BG5e8u+0hTtYK391RJlX2gFWvaL\\/4TyIbgo1Cqla35ISwLQVW8eK\\/CHbK9WWVd3dlyHUCHMkxg14riPskKwUgdsXzOJpS1Ue7mZmBIbrNX7y7Fgi9hvbO8ZdBpz3i7\\/Zcy8SJxMYGe6WyvEIvoX8ZiA62Zn9BFhjknUP1EOwzAQinbB8yp+yGrdyDm6zMu0SyVe5CG9LoZcCESnpK0L1Tzze8Kebwf7ByhPCofWZR3nVR\\/qC6kICQQAcz+ZgW4+ZcA7N7SgrFNk5g1AKiKh5Ick7UqtiGyqqbWeVQmwIoYWdzzN9AWFuxBsSlTfDle8sa1oG93bP3C\\/CXhMrsQvbr2sJhrrjeYtuy+3T2gQ68E+zHJdoq+RT3YMHeVL3iy8Rqju\\/og9ofkgUS75O3mb2cm8DNPMsfNJcK2+syHaLHI3l3c+YZWm29zF7HPvL+PeedSr\\/uIb\\/aI8PmJQPZPzF9knWZbfNgxgvzBMge0N4Am1EL0Q3P3DZ6wm1Hw3KIdBTvvEucOOuwIPcI89HhlhoiRscSqV5ukpC02UYXZg1J1Uwi7PmEAKqtgu3hBCrR0Vdrghf3kngY\\/iEoquVfP\\/ZbIlJhO8OXiLR8wPgix4isuFt9oiU4uNHFwxubf+iZh2HQ5mdDGd9+ZRdm8a208REjLi4h8UvQxbeWwCiKkO5EXtQN5C8jKfkVcQZLpEMOdVqcxeI52hyIjFoL4Ys5flcJZ\\/wBzA1Gj9gQ5dvaWOXxEZUt8g9E5JR2Xg8XxGhUDpHnW14gjmU53iestePeFatMO5s29p3QXa6w7HTCBoKSO1FLt3m9ODi2OLdIigdHnsB7xCr6yite9EDGY49Djy6z7ZteYFr2l7jPGC\\/lj+koI7MBIyYPiUvcDt3e0oZM8zaKwdB7TOtyspPhiGkvCsjk9pvCy4HUFuyMfWyICKqVPgreC8y3aDRmfKBHtA9InaeUaZuecKAdfudJvrFpDh\\/mR5IkPpkLyQtuEcQW8kvgVC+ktXws7Jo4I6LIbfLtQb0YzmK9o3I5FuKGYCSq0BsUgUWKpJsIM28lKZ5Dl9yHBUiVJd73Gyb1Y9R2gaHeGi9pjTL+1R8EzDrDTLoJwwkiwid1arbvzLM8hfo0Q7zd5H3L\\/AC1ao6Dw4YaW85sSFa5bWyCq1iswPNU7TErabxZLgdwcu85DeH\\/zOexisP3N8BMbG\\/zFD7VTPTb5IX4PvZUW19GKbUeTKG2PyzAUiYzMrT+5sF6J\\/ccaoDcwfESDR1QbYE2Ax8y3FrdVSP8A3mMLcLt3ydVAscyt4YFu3CSpxagGlB08MjdW8AZ9o9VTQwuXIZKdpVVJ3GkMZWG4x1AjAXUA4NshfroErUNhRWA2jfMLEHylD3f4GVFbXKB2WRYJau7MDHQIuSMpul+0lVfUf6gMtNw4ZYNKIcEnQ4fcB8Wh7a6BsHiWXNiG6avMW7G2cxxl3bm5Uee9whsONmdL4XzKjh0FMAsPDeXHJd3pF0lqukuGrTsQAhW8uIAlBbG0MNMMJXOBsBvAIbveFlovzDDQHeddHiAFli4YZw4zBbgR9911XSCVPbKMf6PETgSpaFWeZmq6twMfMDW62uNm4vjhUQ04MlwNpvEBKC8b8XGhUSlujoBGqL7kq8vLE52EjCTd9os2Nb0H3CIP1WAfEUGNNxbQWJddNjl\\/aYZwuUq4LQhE6CYdDLsGy4U4gowM5bjBAc0PlDSnuAMebiV5N9EtVHmFl25EN8aOn9y6i46VKWKTAjsDJGLhjmB3Sm+kF2ovxNuBv2jEDlnDhYvmL2eUUlBdlrxGRsHN94pTSg7FQ51POPmOPg6XKhaMYzb7to1qnrhuF2PbcMCo9CAfocRotCuGv9g2B22KqKbmeMV8Q0B9gX1DiIE0OaR5Eh2pKbJZ+4KhF5C3xPaY0BVFNIMNUQ41VB3h5Hh0qu\\/ArsSxDXNQbVeSLmktCUVRuHEXfaKqCBxzE7K3woxzVzpMfxcjlBsy0LK6BIsBoQeyssSv092ASPnneyKKdkp81Al2sPc94mtV1bgdibedoUB1Dm6feACkurGybPgggQ6D47w+xNtdHrjrLb9apy94MZ3ArRFqVzjNwWyWqbjXB9SxXuwBsX5SlXisKvmVvb4zDa7tsXfwRUNCxSo\\/UHQIikLTXmD84W\\/jMoLAoMHhJ3MNoN029qQ89ouxDsWQ95aAMlRFqWLAYNlccRw3WF0N\\/uXpbHTcviGWL2RDtdfziAof5vMtaP8AOksFOO7B7NcQ3Gw0rSuiS+Y3BhA+2VdqgltYLFM8pTLI2GJxQsvzLqulq3eDvfawLCtCsRHt+gZpQnlGBRb2GHiHU5+ZZVFe1QLZQHMDsJfUimVnDCveCRcfqRcOPNun+zKEKSrHiWBLu5DxAARVMlb3EImOwPuceIVbC4UIicPeWWpXAp74hbuYY8HxDFCpgXh4uMptPIynI+IqgV4UF\\/uHvsc0sUCX2uXGvb4cfMBPBSS9vdt2gXKrxtHAlZwU4hRGuOIAXRd95bXYOLKiVwAKy3raL7h5A4PglIibrRm75yQuWpwNZ+IPbbfKIVnNcF4ibGxsR39oG5LMGHPWLthaG+ZkHJjL43gLoNbLG\\/zzlm8LPliAowVVpTou3jpARXMFuHCdSMTVFn3L2E0niFtdRBwN3iJIMebIWQ+L55e7FhYBsXR93MjmzfNQe9wuSqhXRXiZHjG6p+2KwtXhO33NgYdF3LJs8y05KDgqDabOAP3RTKPddc+KIvtHQB9lxO1HAZjfMrDZ7PvMaRYbUDUK8WdXYcPuUtAXW4+Gs\\/uPttTbpbCgDAUWGl8TCxeQ8Mf3AlEKS0R2C8PEoMOOh9OZeF23qyAW74tHvAJOVlNvab9HxpYMNDN\\/sqUUWWUcM78wC8DesvdLidCeKVX5hZsNOu1TpsO4n\\/Im+d1Kpcg8hxAaVlzzKNX0jkFr6xFy2VGgYaobzXMwHNuruH4hu1Y1Zc1jaEraOh8RJcKt7DB6OzbdcNrIWFbZhchRzJh\\/Z1ge3KVRl77+IFoZSJx55vMs4SGxpQrsyoHRiR3ROyF0GubgrpMrClFs7CUrpvQqI5LbD+oES3uT\\/UoLw9cJmzRbZ19EE0qeTMHjw2fogbBKz+8x2MaK3e0Zmr1QWAuB4ocfLLwu3LeYLJO2LXPhlJROKO\\/WWRcKF7HQwGGDju8sQAp1tyXsy\\/Y+8Grtd4p46SwFUUPCbidYhJWOG8Qd7F4iBW2f5vOCy+WIwJldhUAKrDlmvH+QaDM7Vgmypk73mybIRbvunmI5LB0N4i2FcO3mAOXUbtgSwru\\/5MouXiWdam9+JUDKxSvCbgDsbMwQoCulZi7AAWjana43cBsXUXcB7iYlCj7Kb17QsFVkpXpvGjLq00cW9yYQ0rDJdV0blGUgmW0dK2ZZ2mgUpy9Z6sMp2B7xfIEeoF1pvnMWgfvtO1tEGtMG264xMFWqMfbLFYPUGPMYs8ZQT26ROtzD+qpgb8gWHPaoOizgCne4I2TYAcd4AXuDNpfsFZjvG9RDPQuGY0UhRMG+CbPpwAXhSBRQXfGXyiNyV2VHHfEERRVVbbbKV1UYUKz0R5lLIPiomJXAyDmotBGeTH1M4v7VBrDu5udZ9t\\/EVgKOrcg8orhav+4YJnVpWIRKz3D+5arV9tMuswcDv8Qo0A4ra5ghDdVmG+ihqyhBMrNWpaf1NtwPLn7gFoPN5PaJhdFb2e8Uvpje\\/iB4S8tGZYEFOOvtCli+W2oK1vcbb74I2KZOasw42mK68Kv9S8haw8bZjl22wef4HrFy1TYUy0iS7A1wvdV4j4SVpuLPFw42GNUNH1AlAmypghPBN717xJFjIm3usomfj\\/jMQEANlJYyB2B2hbIjay7jmAGbx\\/dSgtjuXeYaq7G6fmKU1F2CnOSI0tva1XPfeBoC3sr+lle1uI\\/3CtpLwLzFFZNjSpvoeSzD2yzMgHvvycrkgZeTuxSBS9+qvhDgpA3bJdYSDCW37S2d8F5upW0wFsHM994WACy81i2ALUorKf1EBRJvWPiFDRFxSpAyl5Bw8TBKOGLtggUwpKaK6QzpwYTD4iZYoMnUmJbeWTxUcwuyUMuzUOQpfvC+8q3ehGrsSz5VWDao0WiuhWIqMAWsHiPEy4avneVNCQwiXFVAbyKC432ldBllDBhxFJmw5seEXoi1dAPpLYQig4Xna5etfF\\/4idrvsTJord1\\/sUqg4Y4AUN7T\\/UQ6DoRW0b3naSDP6gvRy63DjTUv2NcLvENgy32IFZI5WX3CZdLsrzPiFxZ9h9zFlNUm94JaWb2pbxiBEtDjl8QsVG7f8EdAvJ0mUZpw4uzwy+NuycW7D6ip2LyuV3XwSmruFwm2GWLu7cWkekHAdC3iFVJbwNsd5SWl+TUwBV7BGlCvdgVheBVLEt+8QJG66V\\/cHcl\\/07lSlYl1YIHfMHEHoLGOYi8ywq\\/aoiKeG\\/3DKLsVTkVBRC58\\/UeCAUBFYF2yE7+aIoU5GKcVDQ9zBeLY4FQLRe7xib4qotpzKIiWqbTo7dY1hENi7ivr7IURzrB4LPu5WzAUpKTJvYvjpUNgqdLLguiu9jMRPQUwd9woNe7G7RdXgKrzFI8t6P6jcoDpl8rC2w0o0nLA3K1C594HAWc5d\\/8AINRzYdr8xHMQMBWfeLRAOMqxWw67iAqw8sqBZniUKtndMSqjiN\\/1KKZWtyTg9ip\\/\\/9oACAECAwE\\/EK6ly4SpWl\\/hvW9L0uXpel+q5ely4otBlMWLN8rJeKl4OA6KRYODl4KGgvLS0tLS3\\/gAAdZWVlZSZS5fSxtGupDMHFS8tLy8vgcxJoolSKahFrFn0EWQqARqYmIoiJWDeoekElSoEqGmNDRqVmBAlRJWipV6Q0xKiIxSJAhpRGS8LTfmbI4m+bJUr8FQNXbUhpWfQ+g1V0uOoHQI4l7XEYRcSmsy4054JX4mmkCLjtONRBzouXplGjKj6KpUSOtatkTOg1mSMUl5lI6Dov8ADtmzRdoaG84hvoNQwRJUCLlDUuDoSBAhAgR8SoxVzmNRK72TKolh7oQ0K0GOcW\\/SLIiPQxhobziE51IegoRKzoEY6VCBHbSHMdiEpMPaZ8SthXn8qoR1DQnOhCHoqXdBNGMNCBrmDkQjljA1vDbEWSewfmISk9AnMdRgx0qPE3xNR0IGm8xZrSavwZvDrHBwlEwzNoYj8xN0GjdE0cxYMGLUEgY2Io8Q5iQJloa6AmEZWLmYp9GojG2Jb0QmEG8xVTLD8pN+p36FKXHVSRLlaG6bNFSoS4lytKMT5n6lhcMbkdVj7wqYlkcx2VFiun5SbGo4wjfpUuZEIvQI7TdL0XRdCMZTLRMIf0m3MTAhZLNfEC0x\\/GJlOsckaFjzfXSowfwk3aw5l6VmEUeZkTJoVQiYhzKgTnRhiKRQd2AHERK3hLKeTKKU29pctNv5mW3+Vx7kQg8TmWSwI+TFWSGbEpH13qGZdp51rMCMtpSZ4UJIxQBl2lBZtozwHSgZjgOWCv2hCbbbyvWIdO\\/+TYS3dcwptuQpY4JYhVFTKCrzAtbsw3+obs6ShqUjABUJGe4hKlR1NhHYlWCLRYxMysyswYyNxjvAR3BwXbBKUsGTBBoZV8dv+6rhMVwQfr9y9tbp379jTRfa7cd4h5NpuZF\\/EreSy4B3Q2foV52g8YztEt+ZUwwxEDFjMQxG8eCdZLmIJtGsoYCDHDmVaLtIJeY0j6Ca5mZklW7MTMK32b+5dnjptXatMauATL3kvqULqOabwB1wdxtC1Tb4lJRRnaMXfs6QlbDk5\\/71ZdFmMZ\\/uBWDv89WNS+WYwlx3SM1S5e4suo7IuZazLM02CWMcWhYZYwl5gLMeS5aEIiQ5WKtG02EslbxEMjTKtO5HGLYe+isYJdVxD0welQTcATd2VBVOrL\\/P3KPLPeIYCjiCpOdMZU4MdI75fDOFCCGgARgBiCOWPEcami3l5jvL3G3LM+JZUWMMDLwYwThnrzLmdmcDeEbJxdZQHaW2Qnbu\\/naHUMuJmpjv\\/kBo5bspUNiANjnxHrlH\\/UPdwFdyXmH6QviA1KQS+jeDh1JeLZAsyMd0LCKLGijSZZSAbnG21XUfQI0xBtuRrDaEhI6CMrG9T39VMK3cRQa\\/nSFnlshDkiy+5Lf8\\/wCRyHlAoDJotbmCGiOgy9FaLGixZcyto261BzoKpW9CR\\/ACKuSCcNzelOIgl94neQiz4cw7EGnfsxFZj6iM00TGziLMYqJ577xAR\\/CESYNFk0xwhNF4YxhUxWEOYMaGGZJUdWNul6V66goOrCbsNQVENnC5bLiPc4i2czcYt7zHcU03xMRAKgzDiLvRUrRUqVKgSpU3TYaduvfDnQKJ3J3IjrPOW6y\\/WL6x60J07zyTy+oUmyrr+e8aXtjvMYdS5tBlwFW3DFG0RoZUlRRVwA4dH86ywW3D57E3MJUSiWNR6HeJqOeYiWE7TOwztS\\/SWlpaUyomjZBKDS4jTPKzBy0vLS0tLS0a5isufRWtRkO9Sygx2gMRW9pgVi\\/4\\/Uwh\\/uexmBiUARi9vWARBiWV8yspK6l2p2tR7MehCOSYyjodGkMvMFodRWpVj8OTMHMdAN42oc1DK2XHehxET0qNhlQDaJKZTMzMzMzMzMy2Wx4ii0PEUGXmNMVep7WWN\\/gcM8QLisuLHvKJRL6ROsNiMOkdCs0xMTExAJSUTExrV6UU0dsuXodDg\\/C5YhtFCXTB00HXGhuK1dYM6Muwl6XqGlag0bNFFovCYJmI6XDH4VRDOV1E6LMS4rLXmLFVBmJvZlHR9AuDLl6l64iptiXGjpcWGjKi4\\/CrYMQFNghCNmGE0r0Um2WU+8Fx0+o\\/WpDQJWhFamyDUECo7ZzH0M2\\/CqIZdKidxvxCYOSiDVZ8RohiAi6ivJN220C8sp6sOkqPChKZfQ\\/IR0Bgy5hoWsGMLQoQMWLmc+k\\/jTKuMycJgmIdWKb2VNOIbS2cAbw0rDE4EaQVsjF52TOBJhXA6SKwYYwqiGC6DiPEI6VmXLlxh\\/EcsGIQhO8BRNi4N3qseINlisPeYIptt9fEEMEulAOi7xK0Rgj67i5imbojEyaLm70MD8KqGjXTKDHd3ho+JU5TJ0lERuy9IY+gbHmddrxALdsBIhuPMpoapLFksL9bCDeLMxIxRcuc+hleTaHSgYGEgarEghGqWYzCtjv2xbEzLxHUssGDdjAol16TJHWWYWwrOrxbA7xNp6dpcDQMzfMiD0FZ9LUNySoKUyoSiPzN4EJvSJupYvb9TMkqTvLgp+YlmWZIFRXBpUDsgTeV26+mtBlxTdBWjPKjLb9Dq2goHO+O0NUNserQiBW0G4qSpSneKtm0sr5ZdspO+dEfKM6EzRYiw0qbDzfxAK7n4GVAzN0eItRis6KlStSozecxCySgbSjpK3OuVmWEx8zDwm25XaB\\/MrR4TRTfFiZLRTLFjoypUqVK1DQRvil6FaG6VjFkp6HluwpNggYjkSlsoI+6UMbxYe5xHT8QgreuITlHTvihCFn5gFu\\/3P5Uz\\/GElNmv1FY8QcS5cuXKSyU0FoM41Jtl7qLLl6VqIhTHHmBZW\\/iXG\\/1CioIMwbWGKmQfeDcB7swUvLwwNGPR\\/wB2mT8IqUIxmNyEGIUVumpxH6mBb6SGOEqd0k9\\/\\/kHHmDiUlJTRWU9IgjGok3zEqHpqg6EbwctL6GLQ0AEcsVyMx4PchvN7zFFmDUoXj\\/koYEoKQ5UL5P8ApCsMOT3Is+i5egugbjcVtBgG8oxExK0VKlEqVLR7fGgYMGVKgFgqwwvmJeIsDAzDUGKvdHFzFVLSur+oKdOMxaV35gxdCm\\/6g5g36MQ1cEiMqF4D8UoTdBbU+8S\\/+Juge0xhAWCMpjYgR5oicziKw8Tam2d47Sz3mrxLENmT+yKGbwCAi8ko+jmrKQkAkoalSO7QalL9VemoncIjcRG1nvOowXIy5uiJuMRGpfoztPxPrEpS+kBWIsCKRh0OMQWRNNsIrlPOH\\/pHH+Bs6TjJHZKlSpUqYGlMQVuXbwURczn\\/AMNStGKwYBnDTFxcwLgks+pYLNAm2UDqiXiPJ\\/8AIYF7TohC5cuXLjCDh0k3kq5X\\/jSMdBitqGmLfaJAVuRvqO03QJtm0Uxt+x\\/LjjsG3rf+QbuZ2j41vR1Hc40YJRFfpv13Lly5cuYly46AVFle0VN45R2TfoOYE2aXPPjz\\/MS07TG\\/ltBsNtEb9TwyyOyCUmmyXKSmpSVKlfiAFRioN2Bpked+oYbQ5lQQhLNN3\\/X7h145p1im4\\/r2ipjvEqVK074stEioqzd+ABUuXLZbLi6LZbLZmKxozE+ZaJKPIlEDE36zQi\\/NPxMjrmCDB4JW3DXfN0GgwPoK9ZSUlJSUlPSEUlZWVlZSVgAaMwfmB0hRPfKPuGG0Gm2EJi8P3MJPETDxBlxUqVoeYi2ghmJnhMk787s7s70734Faqrr+E8J4TwmQRNN7zGLEs6z9PRBm3Q3lh5lxjxEw8QlSMElstzD0jVo9ArzrDUo6QBCbS2W6htKlRctCSKIqJOZERjATi4HouEaZ6RWm5m2bDxKhMFat03tCSHKaKwEYUldKsrqVCAO0rQGtaNh2iVpsPeW7YiwXZMk8TBccTjVslyrvYgyaTxHh4ImdKm5WndHjTbFo3y8tLdZbqy0vLy2W6BGVkEJWUNapKyvG8K6VcyLzcFOY+KlFa4mI0OmyXMA7w24mBFxNvwQ1sK6aboWqaMtKzpIdCkolxWUlZTpKdIPSVtElSpWgFCIHmKisMaSW4G0V3Voqx99CTZLlgO03Ssjgmz4PTgjrXKPOm\\/S5cWLL9LoRppXl5aDgpzJSWuplcrYNUo1TzmXlhTtLlTnWuUFxUTCYA6EPRUI0meJcCSkczy9NDL0qEVKhoXBQE8JbXuxKTdjsvcv6ITDBpbxOcGmE2Lc1suT3hucDQr8BDTcGWQVFN0qCVAlQGVK0VKiSpUqUSj0rUtmZmMuKJ0sl++YHK9orL1mYXNpljZmyUp7Q0A0FGYYBwQu2Y\\/KpQ5hqlxFhhvrWlykpL0JZpei5cvS\\/Q0lQFYxlQLiJ9PibKQY6nchTDvNyFmjKyhu8SFcvzOWOlaVrb8RtMNCMuXDOtQlR0plajL1DSoQHidrUlFMqVqf7pinVncU3RJRmNhDdphh30XKWyGL55joSpWgEqOmJet+lJUvRcxKhzM7hG26BhMxlaKZZMwRZcB+06rPnAHGlsAZNBUuJcQxZoa3L9AYa3qMNNpel6Eb4xJ3ndi+srywkSVlYaAmVlNBETGSdFDtKlSx2YNwjE1zrcvQhF9Fxgx0vRLhQ7MvMRMEcR0LHRZ0alzOiaKYkG95m3jI2FxCXrQ6SF0XLiwUtly8FouZl6LUYVwtiGA0xXiLEW9BzlEpbhzh2yiRpBlzECoRUXWWO0E430US4MuEuXCbl1FgsBYLrCKXGJcKixWWxKhRTvADmWG2lb0XtGDaCoyYjLLLXoK3lYPMtlSptBMEd5tlDKPfVQ0wtlQ64mmeIDLQcvBekpTtaFS0YJRSJAainvCDTMRJTHEU50RGiX6TBklLxO0Q0bm8rpKxAdCTbpRWQxZp\\/\\/9oACAEDAwE\\/EL+nklSof+B4AKlegV+QABqDEyk4l7CkqbZely5cuLKuEHoxiiYlSpUqVK0VorRX5wAeiCIjDRekXGgEDAysoQILL1YSAu0vLS8tLS0tLS0tLQUvE\\/G6spjqrmyXLlwZcuWy\\/TB0XLgwY6Bc6kTERVYgVptj\\/wCBl6FnEdR1fUECJK1vSkuEYb1DYId6Lo\\/krW4xjpxo6Aly46PM2aXCDrcGLMmXDQarXSA3IS9\\/KECDOjHRjOJem8YOl6ZI8Sowhpeq6Rly5v02RAGz0jSW1ctIr01AhPUQuY6MYxnGo1FvS4ZU3zZLlwh6hNiG730X4hu7MMyzcxEFeq0v8TGMZxovqbI8xY1IR9Bo2ysO2fuMIGJsrgnV2OlQ\\/n2Sx9B2lYieitTBmbNH0mMGGcfEvR7IxuniMXCVEyY4qX+d4i0bIRMakiSyWmqKgzNmiwdAy5c3dDAlSeIfJGYNgsPnKw3MRSxYnMgp\\/OXS6DRtWl6LfCXLhVcWb5s1PTdDnxDTXSorEz\\/hzLFK3FLTtKgmUG6bvzb0csECyJK1o5QLJgsqVMVRJum313MFEuzOMmfunsEraN5g7w2MdF7zIGC4GKlfl3NBguCO0uFhlgJhA4izJGPM2RYPouQAYiYJdBEs3lcf3BoNusMx5frxA2pf8b9CPYO8zFd5s0naiOQRRjLd41X4bjiqWG0vEHGpBcGoizBMErY30gQN2AS6q5M396VhEiyzaGeyAbuxEjsNY\\/z\\/AGJwyxCkP6d4Qu\\/ecqU57bReyUd\\/+\\/zaFVsHEeY4WoqWcXriYZ6SwjlynDLCoLpfo3SNcOViO5ZWRsRYlwlQcYjxKJjiaE3vMqUJseOXlhNtX5\\/5KNp3vfk3eyIBG0Wyq3WcIc\\/r\\/sI9uIxbxxB7Adzi4LNTw\\/xiUXI+oo3tmNtoxoMm+f57EaI4OPO3mowNFF6W77SpgbDmG0EguGNYYFuRmKGZbvKsKIHFy4XHiXSymWkvGiwjWUOsRUoO8Gy2dPqQwDpKzbegfbt5IzOurc7h5ibYIiwEwDo+2OQcRj3MnvDGw8N\\/zxG\\/i\\/8AktszxW3WWyrFw8sXR+okFhw5\\/wAerAsCuT+5YdZlbDibLDVMC94kJdMrRLhqbIhiPUaotmGiOtdN4mCcSoaEGAMoj3ME9zC2qjVe6YheT\\/ZeswWi4tjuzfc3LwSgVBJRV1BzV7OlxRlcgr+XGAO3zj4Ir42oOgvWp8f\\/AGOEyV2Hd\\/W0bQhvM81nz5l+WVZzv\\/nWYbNzhBUYxYPFMLmAIssriGOdRpFI1QspgWxKIITQMkwCXjSJWijfoQxW9BLmWOnEDBgcQhwRrEePuiu5kVGhRa3C78+0F2Kqfz+olDPZ8On+xNk5b\\/z+MoMRb8+I8l3r1K5YAAe6+YpbhNnsYT5jRfWDLAsjzvqQCMM9AMDA0hSXJWQBoNTbBoFsCyYZaoqV5d4SEqJElQNCRCEaBsMGh3jIt4xvvFaa3iE2jZLcbs3Rwy2Cnn\\/IRZ49ng6s3mHoaqZFW6euP76RLhj9\\/wDuZVkW1j3yyqJivmBifviXKlRgV6QBo2iuDW3QjpVdSaTqz0XaoRI2SQPYmGZUUrmbvnzKQLO\\/D1v+pUyOdyuYJs\\/pmCG\\/8P5mCldfWPC7uYjbkT4jvNx3jklj2zodU6Vm0VBQ0NXo2\\/W5cwJKlSpUDUrUbI40JclrHrK8toKvUD0xz2j3DB7PPv1nVDjMWXh+\\/qXHkDjonQlFZFt2OP8AYI2F\\/wCQbkr9JxEtQ2lnDVrTX8L+yIINBzCO2uvPGB6SnSV6SsNIq2SmZhcreIACL8f8gjEzejAfD\\/cOhLr\\/AGJZioiWMiHYZXx\\/kMaoU25z1e8HKeLuHGZdBsfzeUlKA\\/nzLFXRioouN8xmIespKSkslkuXLly4656KGE4JxE\\/g\\/iWoJDj8Dq6uP\\/YYvrMkz2FmeLl8DfgOry+AggNh7X98TobRBj\\/6RQphvEhNlP7laLQVV++jU1FwsmnOi+aE15huCtNjouM2SyXLl+i5c3+IpbUI9+02AZvFdGNAb1GG4PCIxusbxLcv3jFqWhyZ+JRoTqU0VlZWVnSgh0b9KTiGIsypelkUgXglCj8AzCyoDHlDHdpepaedA4a3QBHJGEuehlSpUtotAlpaWlfoG7QZvtEZvqVDUs1Z\\/DsRiD43TdCW8SnmVGAGf0lwuMnjnUKftLmdAy9Q0T0xb4Zm2VjBnQdEnaBR+AWxQWSLSo6brmZlQWjs\\/qN039cygMgxrzKC9f0laVDRl63mbNDpizfBqFjRNCxTKJOT8OBGC3gZgXkU3KykZtBS0zABbLlNvnJ\\/ZMGdsWvmVGMY6lxgc6+6KiLFCziMBUEGsK\\/AGgYmxu1CSu1QwCNQ7XpB8LDNvvG+gER6fEVyHtNwXMyNQm5AkOZ48laWEghz0qiO8MtUZ1SQJxKlSoECH4To5CK0eY5fiCGgIkIqwrUA+YlRilXztMYvzvpVFRYLQKm8AwRK9GabtPMNpeJWgkk\\/E2Iy1GEc8x\\/MQLB3jv4aaalcmIFGJbfQXEqKkSL7MQy+X4ElGmJpHMLGgOPQIb\\/iNUBBRP3f1LjDUCMXTEs2i6ijN+lSn9jCqY6p\\/CyzRFcGIkDW4M3SzeV6xUtLSnUNFi1Li+Yi44iBmZZuIkwIrTGbIGZbVWa2v46d2V2hUeb\\/ABbYYY5slRnGlSoGlGGDEMxBlQB4iOJcWFsMwwCk\\/VBVpgHbRw4Yqim70QtTj47y+hyWTEn4iog3pxQdKgampSIOIBiUWwekuXHMSDTADMBUSgOhPoS07Y1EhvFgm3Xe+K+ZnuBQ8dzv+PZBBGw129SyXLlxY6FgupALEFDEsAnCAY6XCcrm0ju8cRzN0rFTEtv203y0M6mJqqCK3PwLou5sjzo7aUaLS8v6CSMzKLhAY0qByzHgghTtBSk3ltGSyEZYnTOnGXoYbgA3S+P+RmjU7jxXkzDQH83mK8xMypUqVKlMYvLDDi4BcdpdS5RZWVKlelApeZbsQ6X3KEzzcOlYgws2hIjgGGAIsO0NmNVBRw6DaEIzNAA6EYd87xl2FnbCYuexFz6BaX0X0rjhFCM4IMVM2S31ul3dGkrARLLImJvRDgEP0iYiYdFk1C5ePMsJctsdyXj0\\/jHQJn\\/MR29dGlJXKDuS0VyS5AZTouXLlstlsoEr0XLixHSeJ3TNZzHaOY6VAwICDd0NSrZQslQirlJElSvUwuKiMVaTSqVK03lSoAUk5FwSC2yMXGFyoxtFmBYNwKm586XOgmY6Fxm6bsP+zOD1\\/qVWMODMGvSNtVI2EsI3hCkSU+q5fpA2WA8oFvTDqgTqTrJR1gAI5wTdJveZa5nmBBbkpPfMdMGM3ReIHxKVm5EsiXvGVaXLly5dBUVQsR0RWwJWPUS\\/RWlSpXpJUYW8QGAw5lIdCPMeIzfKh6Iw2xuIqsjnJKr1NalaDpTJpCVuI4lzEomPXcv8JCMMbuEcT10G82RZu0Jnv+jBWv8A4ljEtdw1pzorUEFTmJHi\\/DDX4c61KlSpWlaVLiizbLdIMI8mnmKM3aVHDnxOFK0SmnQaYlda6d8suAzFLDlg1LS0tLS0pi+kLly5cuXpcGXOMZaR\\/E0O8UdpujGbruf\\/ABAqcQmRvEslLSLFlzZBZqid4GBKV6g3hqVKlSpUqVK0qbtCLMK0G5FHfTsm+MZehxZLW4TmUkiJhl6bI8SzSy4CAlYnhHtl+k8YvpBMtL6Vk7s78NAetHqaBBfWOjcNNrRmD2uKMcdpujGYENjAzLzElb0Oq7IWsQm3R1xF04J2odDRdPOvodyC6y\\/WX6xfWFeZXrE9ZXrKdYDrK9Z04S5uIaDK9otTN8dKKiy0XnSpTGhpJfTHTEZUZehmOdnSqVoqVKlSvRfouUldFul+hWp1i+iM6VDUeITmDpQ90qbJtm1og4iRWqvW8ZfpLS8voXC1qMXLly0uECK9LhKN8+hv0FiLEcE3POt8abZsg0b4Yk2Skr1gVKlQGKGXltC8vLQcaaKyZIS0uO96ibtN8eJv03fMdcqbQsMqj3rASIly\\/QLlszKlehsJWty9LjdsuIizeGCpcsy0E3SoMQ2jzCb3ouzkzNsFzNpdBRF\\/GuEqVGH0SpWpcWbS87aCs0YSpcJuhDicTN0yHvHW5Za2lkKR1AqXLS8tLS3owZTRdMRDHQqVoPLBHY+IHHRyV+2eEt3gG2pZNnQ5hAxGGEFPzHQFiwfQHR0vW5cuXL0XFlw1cwiiUlJQVBKV3BhSDslAVUoiGmM5IczJoxhSGYlK8wUK8TMsyQ1fRUtlOjpnWpXpuDMSokaqNRBHA\\/8AxPJ8wqx99CKEuIDHeSbo4y7RVuCwHSHpUZNXQPRcuYldJcvSyXK0SVK0rQYzaFJ3Etk6G\\/MTEsgkuccyS3DS5bhjvCsMytBcdaMPQwdbYa0aXqeoEdwnZYQBo4PRKJSBUww3ZZoslXzCaQpsy2WxWGzMSow9YJWlaJpUqJq+g3lCGNOkXpABtNhUvRaZ0hyxLy8vLQJbQ2iiY0Nxh6LlkrSpWlaV6qgSpUCIMwIN7IS2ZoSpUzLgmoGXUvQOi4MQjFELj0mgwJUqUlJRKSiEIhoVKlSpWgXKORKesoMNcyokCBZGe8zDS2WxYsIUJvg9FzRISpUqVK1UJTpKS3SCy2WwzMSku42QlZ1KnlLuYhxEQnaYgECNSiVpvGMJuhmVurBvW4MNLixYpEIMVOZSHTpS4aLriUuFI25lsPRUHroalJSLqXFjGXN2mqRK0\\/\\/Z\\\" data-filename=\\\"category_4.jpg\\\" style=\\\"margin: 10px; width: 517px;\\\"><p><br><\\/p>\",\"widget\":\"\"}]', NULL, NULL);
INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(12, 'ok', 'Documentation', 'Documentation', NULL, '[{\"size\":\"3\",\"type\":\"widget\",\"content\":\"<p><br><\\/p>\",\"widget\":\"product_categories\"},{\"size\":\"9\",\"type\":\"content\",\"content\":\"<h3><span style=\\\"background-color: transparent; color: rgb(0, 0, 0); font-family: Roboto; font-size: 14.6667px; font-weight: 700; text-decoration: underline; white-space: pre-wrap;\\\">Structure &amp; Information of Important Common Elements<\\/span><\\/h3><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Header<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-indent: 36pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We can divide the header into three major parts.<\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Top Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Top header contains the options for \\u201cLanguage Change\\u201d, \\u201cCurrency Change \\u201d, \\u201cFAQ\\u201d, \\u201cCustomer Login\\u201d, \\u201cCustomer Registration\\u201d &amp; \\u201cVendor Registration\\u201d.<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Middle Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Middle header contains admin uploaded &amp; selected \\u201chome page header logo\\u201d, \\u201csearch bar(product &amp; vendor based search)\\u201d, \\u201ccompare button (from where user can moved the all compared product list page)\\u201d &amp; \\u201ccart button(from where customer moved to checkout page.)\\u201d. &nbsp;<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Bottom Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Bottom Header contains the link for \\u201cHome page\\u201d, \\u201cAll categories(with all sub categories in dropdown)\\u201d, \\u201cFeatured product\\u201d, \\u201cToday\\u2019s deal\\u201d, \\u201cAll brands\\u201d, \\u201cAll vendors\\u201d, \\u201cStore locator\\u201d, \\u201ccontact\\u201d &amp; \\u201cMore(Admin created custom responsive page will be shown on dropdown)\\u201d. <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/header\\/header1.php<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Logo upload directory<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; logo &gt; upload logo &gt; change home page item &gt; top slider<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"2\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We designed three different types of \\u201cproduct box\\u201d for the frontend design to the aspection of making anyone\\u2019s site eye catching and to make difference which will reduce the necessity of custom design. One\\u2019s don\\u2019t need to have any coding knowledge for changing the design and structure. All three designed product box contain the same informations and data for better understand. Please follow the step by step instructions : &nbsp;<\\/span><\\/p><\\/li><\\/ol><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Image:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> This part for product image.After hovering the image \\u201cquick view\\u201d button will appear(where customer can view the short description of the &nbsp;product). <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><\\/ul><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Title:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Admin \\/ vendor uploaded product title has been shown is here. Click on product title ones can visit the product detail page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Price:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Admin \\/ vendor fixed product sale price will be shown in here &nbsp;(discounted amount should be deducted &amp; viewed in a smart graphics).<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Add to Cart:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> While customers \\/ users take a approach to purchase the chosen product they should click on \\u201cadd to cart\\u201d button for adding in the cart list.Cart list is available in the header(right top part) from where anyone can be moved to check out page with login. <\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Compare:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">For the same category wise product user can add the products in compare list by clicking on \\u201ccompare button\\u201d. Compared products showed in the top right part of the header.From here anyone can visit the compare page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Wish:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Any user can wish their products while they are logged in.Wished product log has been listed into the user profile.The wishlist button is available in the top header(right) part from where user can look upon his\\/her wished product list.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Vendor Name:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Vendor &nbsp;name will be shown in here.By clicking on the name ones can visit the vendor\\u2019s public profile.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Out of Stock:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If any product crossed the stock limit the product will be unavailable and the \\u201cout of stock\\u201d sticker viewed on the product box.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Discount:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">&nbsp;Any discounted product will have the \\u201cDiscount sticker\\u201d with the limitation of discounted amount or discounted percentage.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; home page &gt; select home page &gt; change home page item &gt; featured product\\/category wise product &gt; choose product box style.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">.<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><br><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"3\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Sidebar section : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Sidebar section contain the most advance search options like as category, sub category, brand and price range. Bottom of this section holds the special products such as popular, latest &amp; today\\u2019s deal products.<\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">. <\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"4\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><span class=\\\"Apple-tab-span\\\" style=\\\"white-space:pre;\\\">\\t<\\/span><\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">There are two parts of the footer.<\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer Top<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Top footer contains some options such as footer logo,subscription box categories links, page links, contact details,social media links.All elements sorted in four columns.Category &amp; text in footer has been managed by admin.<\\/span><\\/p><\\/li><\\/ul><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer Bottom <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">: <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">This portion contains the \\u201cdeveloper authority name\\u201d,\\u201dterms &amp; condition\\u201d,\\u201dprivacy policy\\u201d and \\u201cpayment gateway logo\\u201d<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; footer.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Structure &amp; Information of Home page<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Home page : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We designed two most conspicuous and absolutely customizable types of home with the utmost experience of qualified user interface perception for representing your eCommerce in a distinctive aspection.We splat the whole home page into several parts such as Layer slider , home top part , advance search area, featured product area, category wise products(for home page 1), category wise banner(for homepage 2), latest blogs (home page 1), special products (Latest products, Most sold, Most viewed product).All of these very specific portions is easily editable with having the options of enable\\/disable.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">admin(login) &gt; frontend settings &gt; display settings &gt; home page &gt; choose homepage &gt; change home page items.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(255, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">product box<\\/span><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">.<\\/span><br><\\/p>\",\"widget\":\"\"}]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, 'staff', 'admin', 'parent', ''),
(2, 'edit', 'admin_edit', '1', ''),
(3, 'view', 'admin_view', '1', ''),
(4, 'delete', 'admin_delete', '1', ''),
(5, 'banner', 'banner', 'parent', ''),
(6, 'edit', 'banner_edit', '5', ''),
(7, 'view', 'banner_view', '5', ''),
(8, 'delete', 'banner_delete', '5', ''),
(9, 'brand', 'brand', 'parent', ''),
(10, 'edit', 'brand_edit', '9', ''),
(11, 'view', 'brand_view', '9', ''),
(12, 'delete', 'brand_delete', '9', ''),
(13, 'business settings', 'business_settings', 'parent', ''),
(14, 'edit', 'business_settings_edit', '13', ''),
(15, 'view', 'business_settings_view', '13', ''),
(16, 'delete', 'business_settings_delete', '13', ''),
(17, 'category', 'category', 'parent', ''),
(18, 'edit', 'category_edit', '17', ''),
(19, 'view', 'category_view', '17', ''),
(20, 'delete', 'category_delete', '17', ''),
(21, 'contact message', 'contact_message', 'parent', ''),
(22, 'edit', 'contact_message_edit', '21', ''),
(23, 'view', 'contact_message_view', '21', ''),
(24, 'delete', 'contact_message_delete', '21', ''),
(25, 'site settings', 'site_settings', 'parent', ''),
(26, 'edit', 'site_settings_edit', '25', ''),
(27, 'view', 'site_settings_view', '25', ''),
(28, 'delete', 'site_settings_delete', '25', ''),
(29, 'product', 'product', 'parent', ''),
(30, 'edit', 'product_edit', '29', ''),
(31, 'view', 'product_view', '29', ''),
(32, 'delete', 'product_delete', '29', ''),
(33, 'report', 'report', 'parent', ''),
(34, 'edit', 'report_edit', '33', ''),
(35, 'view', 'report_view', '33', ''),
(36, 'delete', 'report_delete', '33', ''),
(37, 'role', 'role', 'parent', ''),
(38, 'edit', 'role_edit', '37', ''),
(39, 'view', 'role_view', '37', ''),
(40, 'delete', 'role_delete', '37', ''),
(41, 'sale', 'sale', 'parent', ''),
(42, 'edit', 'sale_edit', '92', ''),
(43, 'view', 'sale_view', '92', ''),
(44, 'delete', 'sale_delete', '92', ''),
(45, 'slider', 'slider', 'parent', ''),
(46, 'edit', 'slider_edit', '45', ''),
(47, 'view', 'slider_view', '45', ''),
(48, 'delete', 'slider_delete', '45', ''),
(49, 'stock', 'stock', 'parent', ''),
(50, 'edit', 'stock_edit', '49', ''),
(51, 'view', 'stock_view', '49', ''),
(52, 'delete', 'stock_delete', '49', ''),
(53, 'sub category', 'sub_category', 'parent', ''),
(54, 'edit', 'sub_category_edit', '53', ''),
(55, 'view', 'sub_category_view', '53', ''),
(56, 'delete', 'sub_category_delete', '53', ''),
(57, 'user', 'user', 'parent', ''),
(58, 'edit', 'user_edit', '57', ''),
(59, 'view', 'user_view', '57', ''),
(60, 'delete', 'user_delete', '57', ''),
(61, 'newsletter', 'newsletter', 'parent', ''),
(62, 'language', 'language', 'parent', ''),
(63, 'page', 'page', 'parent', ''),
(64, 'Discount Coupon', 'coupon', 'parent', ''),
(65, 'vendor', 'vendor', 'parent', ''),
(66, 'membership', 'membership', 'parent', ''),
(67, 'SEO', 'seo', 'parent', ''),
(68, 'Membership Payments', 'membership_payment', 'parent', ''),
(69, 'blog', 'blog', 'parent', NULL),
(70, 'slides', 'slides', 'parent', NULL),
(71, 'digital category', 'category_digital', 'parent', NULL),
(72, 'edit', 'category_digital_edit', '71', NULL),
(73, 'delete', 'category_digital_delete', '71', NULL),
(74, 'view', 'category_digital_view', '71', NULL),
(75, 'sub-category', 'sub_category', 'parent', NULL),
(77, 'edit', 'sub_category_edit', '75', NULL),
(78, 'delete', 'sub_category_delete', '75', NULL),
(79, 'view', 'sub_category_view', '75', NULL),
(80, 'digital sub-category', 'sub_category_digital', 'parent', NULL),
(81, 'edit', 'sub_category_digital_edit', '80', NULL),
(82, 'delete', 'sub_category_digital_delete', '80', NULL),
(83, 'view', 'sub_category_digital_view', '80', NULL),
(84, 'digital', 'digital', 'parent', NULL),
(85, 'edit', 'digital_edit', '84', NULL),
(86, 'delete', 'digital_delete', '84', NULL),
(87, 'view', 'digital_view', '84', NULL),
(88, 'product', 'product', 'parent', NULL),
(89, 'edit', 'product_edit', '88', NULL),
(90, 'delete', 'product_delete', '88', NULL),
(91, 'view', 'product_view', '88', NULL),
(92, 'sale', 'sale', 'parent', NULL),
(93, 'email tracing', 'email_tracing', 'parent', NULL),
(94, 'widget', 'widget', 'parent', NULL),
(95, 'display settings', 'display_settings', 'parent', NULL),
(96, 'banner', 'banner', 'parent', NULL),
(97, 'captha & social settings', 'captha_n_social_settings', 'parent', NULL),
(98, 'business settings', 'business_settings', 'parent', NULL),
(99, 'ticket', 'ticket', 'parent', NULL),
(100, 'default images', 'default_images', 'parent', NULL),
(101, 'Pay to Vendor', 'pay_to_vendor', 'parent', NULL),
(102, 'email template', 'email_template', 'parent', NULL),
(103, 'product bundle', 'product_bundle', 'parent', NULL),
(104, 'edit', 'product_bundle_edit', '103', NULL),
(105, 'view', 'product_bundle_view', '103', NULL),
(106, 'delete', 'product_bundle_delete', '103', NULL),
(107, 'bundle_stock', 'bundle_stock', '103', NULL),
(108, 'customer package payment', 'package_payment', 'parent', NULL),
(109, 'classified products', 'customer_products', 'parent', NULL),
(110, 'customer premium package', 'package', 'parent', NULL),
(111, 'delete all', 'delete_all', 'parent', NULL),
(112, 'delete all categories', 'delete all categories', '111', NULL),
(113, 'delete all products', 'delete all products', '111', NULL),
(114, 'delete all brands', 'delete all brands', '111', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL DEFAULT 0,
  `rating_total` decimal(20,2) NOT NULL DEFAULT 0.00,
  `rating_user` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `added_by` varchar(30) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `num_of_imgs` varchar(100) DEFAULT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `purchase_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` varchar(20) NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext DEFAULT NULL,
  `featured` longtext DEFAULT NULL,
  `tag` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `front_image` longtext DEFAULT NULL,
  `brand` longtext DEFAULT NULL,
  `current_stock` int(11) DEFAULT 0,
  `unit` longtext DEFAULT NULL,
  `additional_fields` longtext DEFAULT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT 0,
  `background` longtext DEFAULT NULL,
  `discount` varchar(20) NOT NULL DEFAULT '0.00',
  `discount_type` longtext DEFAULT NULL,
  `tax` varchar(20) NOT NULL DEFAULT '0.00',
  `tax_type` longtext DEFAULT NULL,
  `color` longtext DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `main_image` varchar(100) NOT NULL DEFAULT '0',
  `download` varchar(200) DEFAULT NULL,
  `download_name` varchar(200) DEFAULT NULL,
  `deal` varchar(10) DEFAULT NULL,
  `num_of_downloads` int(11) NOT NULL DEFAULT 0,
  `update_time` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `logo` longtext DEFAULT NULL,
  `video` longtext DEFAULT NULL,
  `last_viewed` int(200) DEFAULT NULL,
  `products` longtext DEFAULT NULL,
  `is_bundle` varchar(10) DEFAULT NULL,
  `vendor_featured` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(230, 0, '0.00', '[]', 'Jabón Dove', '{\"type\":\"admin\",\"id\":\"1\"}', 28, '                                                                                <p>Jabon para rostro Dove</p>', 120, '1', '2.50', '1.50', '3', '1593493839', 'ok', '', 'ok', '0', '275', 0, '1 jabón', '{\"name\":\"null\",\"value\":\"null\"}', 12, NULL, '', 'percent', '18', 'percent', '[\"rgba(255,255,255,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1594090606, NULL, 'no', NULL),
(231, 0, '0.00', '[]', 'Nastiflu', '{\"type\":\"admin\",\"id\":\"1\"}', 29, '                                                                                <p>Nastiflu antigripal<br></p>', 121, '1', '2.00', '1.50', '0.00', '1594154726', 'ok', '', 'ok', '0', NULL, 7, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '0', 'percent', '18', 'percent', '[\"rgba(204,204,204,1)\"]', '[{\"no\":\"1\",\"title\":\"tipo\",\"name\":\"choice_1\",\"type\":\"single_select\",\"option\":[\"grande\",\"mediano\",\"chico\"]}]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1604529915, NULL, 'no', NULL),
(232, 0, '0.00', '[]', 'Shampoo HS', '{\"type\":\"admin\",\"id\":\"1\"}', 28, '                                        <p>Shampoo HS<br></p>', 120, '1', '23.00', '18.00', '1.00', '1594157222', 'ok', '', 'ok', '0', '276', 5, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '18', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(233, 0, '0.00', '[]', 'SHAMPOO JOHNSONS BABY AMARILLO 750ml', '{\"type\":\"admin\",\"id\":\"4\"}', 28, '<p><span xss=removed>El shampoo para bebe JOHNSON\'S baby pH Balanceado limpia eficazmente y con seguridad, sin resecar y sin dejar residuos. Tiene pH balanceado, y no contiene jabon ni alcohol, lo que lo hace suave con el cuero cabelludo. No produce ardor en los ojos y es suave con la piel del bebe.</span><br></p>', 124, '1', '35.00', '31.00', '', '1605139219', 'ok', '', 'ok', '0', '277', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(234, 0, '0.00', '[]', 'DUREX CONDONES SENSITIVO DELGADO', '{\"type\":\"admin\",\"id\":\"4\"}', 27, '<p class=\"lead\" xss=removed>Durex Sensitivo Delgado tienen forma anatómica y son más delgados para una mayor sensación.</p><div><br></div>', 123, '1', '4.50', '4.00', '', '1605139272', 'ok', '', 'ok', '0', '278', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(235, 0, '0.00', '[]', 'PRESTOBARBA 3 HOJAS GILLETTE ICE', '{\"type\":\"admin\",\"id\":\"4\"}', 28, '<p class=\"lead\" xss=removed>Ofrece una máxima comodidad al afeitarse con la mínima irritació³n de la pi­el.</p>', 124, '1', '10.50', '10.00', '', '1605139397', 'ok', '', 'ok', '0', '279', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(236, 0, '0.00', '[]', 'PAÑAL PAMPERS PREMIUM CARE M', '{\"type\":\"admin\",\"id\":\"4\"}', 32, '<p class=\"lead\" xss=removed>Los canales Extra Sec Pods distribuyen uniformemente el pipí para mantener al bebé hasta 2 veces más sequito* con un pañal sin colgar. La distribución uniforme ayuda a reducir que el pañal cuelgue.</p><div><br></div>', 125, '1', '28.00', '26.00', '', '1605139485', 'ok', '', 'ok', '0', '280', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(237, 0, '0.00', '[]', 'NASTIFLU', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '<p class=\"lead\" xss=removed>Nastiflu (Acetaminofen, dextrometorfano, fenilefrina, clorfeniramina) este indicado para el alivio sintomatico de procesos catarrales y gripales.</p><div><br></div>', 126, '1', '2.00', '1.80', '', '1605139548', 'ok', '', 'ok', '0', NULL, NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(238, 0, '0.00', '[]', 'ELECTRORAL SABOR A FRESA', '{\"type\":\"admin\",\"id\":\"4\"}', 30, '<p class=\"lead\" xss=removed>ELECTRORAL® N.F. es una solución de mantenimiento formulada con una concentración de 45 mEq de sodio y 25 g de glucosa (2,5%) por litro. Estas concentraciones de sodio y glucosa de acuerdo a estudios clínicos internacionales y opiniones nacionales, son óptimas ya que el sodio con esta cantidad de mEq/L asociados a 25 g/L de glucosa mejora su utilización y reduce la posibilidad de una mala absorción del carbohidrato.</p><div><br></div>', 127, '1', '6.00', '5.00', '', '1605139594', 'ok', '', 'ok', '0', NULL, NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(239, 0, '0.00', '[]', 'PAÑAL PARA ADULTO SECURE', '{\"type\":\"admin\",\"id\":\"4\"}', 32, '<p><span xss=removed>Pañal</span><span xss=removed> diseñado </span><span xss=removed>para</span><span xss=removed> personas con incontinencia urinaria severa, con capacidad </span><span xss=removed>de</span><span xss=removed> movimiento nula.</span><br></p>', 125, '1', '13.10', '10.10', '', '1605139750', 'ok', '', 'ok', '0', '280', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(240, 0, '0.00', '[]', 'ENJUAGUE BUCAL ZERO ALCOHOL', '{\"type\":\"admin\",\"id\":\"4\"}', 28, '<p><span xss=removed>Tecnología Exclusiva para un aliento más Fresco y sin Ardor en tu Boca. Descubre. Sin </span><span class=\"hcV4Re nkGKTb\" xss=removed>alcohol</span><span xss=removed>. Sin ardor. Frescura intentsa. Más confianza. Tipos: Sin </span><span class=\"hcV4Re nkGKTb\" xss=removed>Alcohol</span><span xss=removed>, Antibacterial, X-Freeze.</span><br></p>', 124, '1', '20.60', '19.50', '', '1605139805', 'ok', '', 'ok', '0', '281', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1605143621, NULL, 'no', NULL),
(241, 0, '0.00', '[]', 'PAPEL HIGIÉNICO SUAVE JUMBO', '{\"type\":\"admin\",\"id\":\"4\"}', 32, '<p><br></p>', 125, '1', '4.60', '3.60', '', '1605139866', 'ok', '', 'ok', '0', '280', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 20, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1605920567, NULL, 'no', NULL),
(242, 0, '0.00', '[]', 'SHAMPOO JOHNSONS BABY VERDE 750ml', '{\"type\":\"admin\",\"id\":\"4\"}', 28, '<p>SHAMPOO JOHNSONS BABY VERDE 750ml<br></p>', 124, '1', '30.00', '25.00', '0', '1605929834', 'ok', '', 'ok', '0', '277', 75, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 22, NULL, '0', 'percent', '0', 'percent', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1606083376, NULL, 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_affiliation`
--

CREATE TABLE `product_affiliation` (
  `product_affiliation_id` bigint(20) NOT NULL,
  `product_affiliator_id` int(11) NOT NULL,
  `product_affiliator_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_affiliation_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `generated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_affiliation`
--

INSERT INTO `product_affiliation` (`product_affiliation_id`, `product_affiliator_id`, `product_affiliator_type`, `product_affiliation_code`, `product_id`, `generated_at`) VALUES
(1, 3, '', 'aff_633c966eb2f97153cdeb', 98, '2019-12-10 06:46:48'),
(2, 3, '', 'aff_62a7da485edb52b8808f', 218, '2019-12-10 06:47:50'),
(3, 3, '', 'aff_17725c5b92fc62ebc3f8', 212, '2019-12-12 10:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_affiliation_code_use`
--

CREATE TABLE `product_affiliation_code_use` (
  `product_affiliation_code_use_id` bigint(20) NOT NULL,
  `affiliator_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affiliation_user_id` int(11) NOT NULL,
  `points` decimal(20,2) NOT NULL DEFAULT 0.00,
  `currency` decimal(20,2) NOT NULL DEFAULT 0.00,
  `used_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_affiliation_code_use`
--

INSERT INTO `product_affiliation_code_use` (`product_affiliation_code_use_id`, `affiliator_id`, `product_id`, `code`, `affiliation_user_id`, `points`, `currency`, `used_at`) VALUES
(1, 3, 218, 'aff_62a7da485edb52b8808f', 9, '100.00', '25.00', '2019-12-11 06:26:07'),
(2, 3, 98, 'aff_633c966eb2f97153cdeb', 9, '24.00', '6.00', '2019-12-12 01:41:41'),
(3, 3, 212, 'aff_17725c5b92fc62ebc3f8', 9, '100.00', '25.00', '2019-12-12 05:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_affiliation_points_total`
--

CREATE TABLE `product_affiliation_points_total` (
  `product_affiliation_points_total_id` bigint(20) NOT NULL,
  `affiliator_id` int(11) NOT NULL,
  `points` decimal(20,2) NOT NULL DEFAULT 0.00,
  `currency` decimal(20,2) NOT NULL DEFAULT 0.00,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_affiliation_points_total`
--

INSERT INTO `product_affiliation_points_total` (`product_affiliation_points_total_id`, `affiliator_id`, `points`, `currency`, `updated_at`) VALUES
(1, 3, '224.00', '56.00', '2019-12-12 05:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `permission` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Product Manager', '[\"13\",\"17\",\"21\",\"37\",\"41\",\"45\",\"49\"]', 'Manages Products'),
(4, 'Accountant', '[\"9\",\"13\",\"17\",\"21\"]', 'Accountancy and Support'),
(6, 'Manager', '[\"5\",\"13\",\"29\",\"33\",\"37\",\"41\",\"57\",\"63\",\"103\"]', 'Manager of Active Super shop');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_code` longtext DEFAULT NULL,
  `buyer` longtext DEFAULT NULL,
  `guest_id` varchar(100) DEFAULT NULL,
  `product_details` longtext DEFAULT NULL,
  `shipping_address` longtext DEFAULT NULL,
  `vat` longtext DEFAULT NULL,
  `vat_percent` varchar(10) DEFAULT NULL,
  `shipping` longtext DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` longtext DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `payment_timestamp` longtext DEFAULT NULL,
  `grand_total` longtext DEFAULT NULL,
  `sale_datetime` longtext DEFAULT NULL,
  `delivary_datetime` longtext DEFAULT NULL,
  `delivery_status` longtext DEFAULT NULL,
  `viewed` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `guest_id`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(232, '202011232', '26', NULL, '{\"be83ab3ecd0db773eb2dc1b0a17836a1\":{\"id\":\"232\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":23,\"name\":\"Shampoo HS\",\"shipping\":\"1.00\",\"tax\":4.14,\"image\":\"http:\\/\\/bonofarma.ga\\/uploads\\/product_image\\/product_232_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"be83ab3ecd0db773eb2dc1b0a17836a1\",\"subtotal\":23}}', '{\"firstname\":\"jose\",\"lastname\":\"polanco\",\"address1\":\"av villareal 401\",\"address2\":\"av villareal 401\",\"zip\":\"13001\",\"email\":\"joseandres_pj@hotmail.es\",\"phone\":\"937199302\",\"langlat\":\"(-8.094920199999999, -79.0142616)\",\"payment_type\":\"cash_on_delivery\"}', '4.14', '', '1', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '28.14', '1605929507', '', '[{\"admin\":\"\",\"status\":\"delivered\",\"comment\":\"\",\"delivery_time\":1605930549}]', 'ok'),
(231, '202011231', '26', NULL, '{\"be83ab3ecd0db773eb2dc1b0a17836a1\":{\"id\":\"232\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":23,\"name\":\"Shampoo HS\",\"shipping\":\"1.00\",\"tax\":4.14,\"image\":\"http:\\/\\/www.bonofarma.ga\\/uploads\\/product_image\\/product_232_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"be83ab3ecd0db773eb2dc1b0a17836a1\",\"subtotal\":23}}', '{\"firstname\":\"jose\",\"lastname\":\"polanco\",\"address1\":\"av villareal 401\",\"address2\":\"av villareal 401\",\"zip\":\"13001\",\"email\":\"joseandres_pj@hotmail.es\",\"phone\":\"937199302\",\"langlat\":\"(-8.094920199999999, -79.0142616)\",\"payment_type\":\"cash_on_delivery\"}', '4.14', '', '1', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', '', NULL, '28.14', '1605925999', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `elements` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `elements`, `status`, `title`, `style`, `serial`) VALUES
(2, '{\"images\":[],\"texts\":[{\"name\":\"text_1\",\"text\":\"WELCOME\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_2\",\"text\":\"YOUR SHOP NAME\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_3\",\"text\":\"SHOP TITLE\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"}]}', '0', 'Welcome 2', '1', 0),
(4, '{\"images\":[],\"texts\":[{\"name\":\"text_1\",\"text\":\"Introducing \",\"color\":\"rgba(33,38,51,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_2\",\"text\":\"Active Super Shop\",\"color\":\"rgba(101,3,199,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_3\",\"text\":\"Multi-vendor CMS version 1.5.2\",\"color\":\"rgba(167,0,181,1)\",\"background\":\"rgba(0,0,0,0)\"}]}', '0', 'Welcome Slider', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_style`
--

CREATE TABLE `slider_style` (
  `slider_style_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider_style`
--

INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(1, 'WELCOME TYPE 1', '{\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:6500;transition2d:all;transition3d:15;\\\"\",\n   \"background\":\"bg\",\n   \"images\":[\n\n   ],\n   \"texts\":[\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"WELCOME\",\n         \"name\":\"text_1\",\n         \"style\":\"top:30%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:50px;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      },\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"YOUR SHOP NAME\",\n         \"name\":\"text_2\",\n         \"style\":\"top:50%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:100px;  white-space: nowrap;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; delayin:500; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      },\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"SHOP TITLE\",\n         \"name\":\"text_3\",\n         \"style\":\"top:70%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:40px; white-space: nowrap;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; delayin:1200; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      }\n   ]\n}'),
(2, 'WELCOME TYPE 2', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:4500;transition2d:24,25,27,28,34,35,37,38,110,113;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"ase\",\r\n         \"style\":\"top:20px; left:50%;width:220px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:4600; easingin:easeOutQuad; fadein:false; rotatein:-10; offsetxout:0; durationout:1500;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"WELCOME TO\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:260px; left:50%; text-align: center;  font-weight: 300; width:300px; height:60px; font-size:30px; line-height:60px; border-radius:5px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:top; durationout:750; durationin:1000; fadeout:false;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"YOUR SHOP NAME\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:340px; left:50%; text-align: center; font-weight: 300; width:500px; height:100px; font-size:40px; line-height:100px; border-radius:5px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:bottom; durationin:1000; durationout:750; fadeout:false;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#8D00B0\"\r\n      }\r\n   ]\r\n}'),
(3, 'SLIDER TYPE 1', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7000;transition2d:76,77,78,79;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Product Image 1\",\r\n         \"name\":\"circle_1\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:1500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; \"\r\n      },\r\n      {\r\n         \"show_name\":\"Product Image 2\",\r\n         \"name\":\"circle_2\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:3000; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; \"\r\n      },\r\n      {\r\n         \"show_name\":\"Product Image 3\",\r\n         \"name\":\"circle_3\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:4500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; easingout:easeInQuart; fadeout:false; \"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:105px; left:30px; text-align: center; font-weight: 300; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:155px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:205px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:1000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:left; delayin:1000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:255px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX;  border-radius:100px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:1500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:1500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:305px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:2000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:2000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 1\",\r\n         \"name\":\"product_title_1\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:1750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 2\",\r\n         \"name\":\"product_title_2\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:3250; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 3\",\r\n         \"name\":\"product_title_3\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:4750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(4, 'SLIDER TYPE 2', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:4500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:80px; white-space:nowrap; width:220px;\",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:180px; white-space:nowrap;width:220px; \",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:280px; white-space:nowrap; width:220px;\",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_3\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:700px; font-weight:300; font-size:40px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURe 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:107px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:157px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:207px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:257px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:307px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_6\",\r\n         \"style\":\"top:357px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      }\r\n   ]\r\n}'),
(5, 'SLIDER TYPE 3', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:580px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:680px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:780px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_3\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:80px; font-weight:300; font-size:40px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:107px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:157px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:207px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:257px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:307px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:116px; font-weight:300; font-size:30px; white-space:nowrap;\",\r\n         \"data_ls\":\"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_6\",\r\n         \"style\":\"top:357px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(6, 'SLIDER TYPE 4', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"name\":\"long_1\",\r\n         \"style\":\"top:60px;left:578px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"name\":\"semi_long_1\",\r\n         \"style\":\"top:170px;left:800px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"name\":\"square_1\",\r\n         \"style\":\"top:265px;left:1020px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:50px; font-size:50px; font-weight:300; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:500; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotatexout:90; transformoriginout:50; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:1000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:1500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:2000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:2500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:3000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 7\",\r\n         \"name\":\"product_feature_7\",\r\n         \"style\":\"top:400px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:3500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(7, 'SLIDER TYPE 5', '{\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\n   \"background\":\"bg_apple\",\n   \"images\":[\n      {\n         \"name\":\"long_1\",\n         \"style\":\"top:50%; left:50%;width:200px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"show_name\":\"IMAGE\"\n      }\n   ],\n   \"texts\":[\n      {\n         \"element\":\"h6\",\n         \"show_name\":\"PRICE\",\n         \"name\":\"price\",\n         \"style\":\"top:55%; left:39%; durationin:500; delayin:600; fadein:false; rotatein:30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1; scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#B816B2; border-radius:5px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"color\":\"#ffffff\",\n         \"background\":\"#b816b2\"\n      },\n      {\n         \"element\":\"h6\",\n         \"show_name\":\"PRODUCT TITLE\",\n         \"name\":\"product_title\",\n         \"style\":\"top:45%; left:36%; durationin:500; delayin:500; fadein:false; rotatein:-30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1;scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#760093;border-radius:5px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"color\":\"#ffffff\",\n         \"background\":\"#760093\"\n      }\n   ]\n}'),
(8, 'SLIDER TYPE 6', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:100px; width:250px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:1500; rotateyin:90; transformoriginin:left; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:left; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:400px; width:250px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:1500; rotateyin:-90; transformoriginin:right; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:right; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"font-family:Roboto;top:25px; left:192px; font-weight:100; text-align:center; width:340px; font-size:40px; border-radius:5px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:2000; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotateout:-90; transformoriginout:left; \",\r\n         \"color\":\"#34009d\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\" DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:50px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:2300; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:90px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:2700; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:150px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:3000; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:190px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:3400; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:250px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:3700; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:290px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:4100; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 7\",\r\n         \"name\":\"dummy_text_7\",\r\n         \"style\":\"top:360px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:4400; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 8\",\r\n         \"name\":\"dummy_text_8\",\r\n         \"style\":\"top:400px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:4800; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(9, 'SLIDER TYPE 7', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:50px; left:50%;width:278px; white-space:nowrap;\",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"IMAGE\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; \",\r\n         \"color\":\"#fff\",\r\n         \"background\":\"#11008b\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; \",\r\n         \"color\":\"#d9482b\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}');
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(10, 'SLIDER TYPE 8', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7000;transition2d:76,77,78,79;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:120px; left:42%;width:180px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:120px; left:58%;width:180px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:50px; left:50%;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; \",\r\n         \"color\":\"#fff\",\r\n         \"background\":\"#11008b\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 7\",\r\n         \"name\":\"dummy_text_7\",\r\n         \"style\":\"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(11, 'WELCOME TYPE 3', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:8000;transition2d:4;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"ase\",\r\n         \"style\":\"top:45%; left:45%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:right 50% 0; offsetxout:0; durationout:1500; showuntil:1000; rotateyout:-90; transformoriginout:right 50% 0;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"Introducing\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:40%; left:50%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:50; durationin:750; easingin:easeOutBack; skewxin:-50; offsetxout:-50; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;\",\r\n         \"color\":\"#C505BD\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"Your Shop Name\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:50%; left:50%; font-weight: 300; font-size:50px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:-100; durationin:750; delayin:250; easingin:easeOutBack; skewxin:-50; offsetxout:100; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;\",\r\n         \"color\":\"#8D00AF\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"your Shop Slogan\",\r\n         \"name\":\"text_3\",\r\n         \"style\":\"top:47%; left:690px; font-weight: 300; font-size:35px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:left 50% 0; offsetxout:0; durationout:1500; showuntil:1500; rotateyout:-90; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#8D00AF\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      }\r\n   ]\r\n}'),
(12, 'SLIDER TYPE 9', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:9500;transition2d:5;timeshift:-3000;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"semi_long_1\",\r\n         \"style\":\"top:120px; left:300px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:1000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      },\r\n      {\r\n         \"show_name\":\"Image 2\",\r\n         \"name\":\"semi_long_2\",\r\n         \"style\":\"top:120px; left:200px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:2000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      },\r\n      {\r\n         \"show_name\":\"Image 3\",\r\n         \"name\":\"semi_long_3\",\r\n         \"style\":\"top:120px; left:100px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:3000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:60px; left:800px; font-weight: 300; font-size:50px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:50; durationin:3000; rotateyin:60; transformoriginin:right 50% 0; offsetxout:-50; durationout:3000; rotateyout:-60; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#730091\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h2\",\r\n         \"show_name\":\"BIG SALE\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:120px; left:801px; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:-50; durationin:3000; delayin:500; rotateyin:-60; transformoriginin:left 50% 0; offsetxout:50; durationout:3000; rotateyout:60; transformoriginout:right 50% 0;\",\r\n         \"color\":\"#FA6BF3\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h3\",\r\n         \"show_name\":\"$99\",\r\n         \"name\":\"text_3\",\r\n         \"style\":\"top:200px; left:850px; font-weight: 300; font-size:120px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:4000; delayin:2000; rotateyin:450; transformoriginin:left 50% 0; offsetxout:0; durationout:500; easingout:easeInBack; rotateyout:90; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#730091\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      }\r\n   ]\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slides_id` int(11) NOT NULL,
  `button_color` longtext DEFAULT NULL,
  `text_color` longtext DEFAULT NULL,
  `button_text` varchar(300) DEFAULT NULL,
  `button_link` varchar(500) DEFAULT NULL,
  `uploaded_by` longtext DEFAULT NULL,
  `added_by` longtext DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slides_id`, `button_color`, `text_color`, `button_text`, `button_link`, `uploaded_by`, `added_by`, `status`) VALUES
(15, '', '', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(16, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(19, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(20, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(24, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(25, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(26, 'rgba(255,0,0,1)', 'rgba(255,255,255,1)', 'Demo', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"12\"}', '0'),
(27, 'rgba(134,217,29,1)', 'rgba(29,92,214,1)', 'link', 'www.google.com', 'vendor', '{\"type\":\"vendor\",\"id\":\"13\"}', 'ok'),
(29, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(30, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(31, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(32, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(33, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(34, 'rgba(245,233,233,1)', 'rgba(18,17,17,1)', 'Demo', 'https://www.google.com', 'vendor', '{\"type\":\"vendor\",\"id\":\"17\"}', 'ok'),
(39, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok'),
(40, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `social_links_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'http://facebook.com/Bonofarma'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'http://skype.com/'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `category` longtext DEFAULT NULL,
  `sub_category` longtext DEFAULT NULL,
  `product` longtext DEFAULT NULL,
  `quantity` longtext DEFAULT NULL,
  `rate` longtext DEFAULT NULL,
  `total` longtext DEFAULT NULL,
  `reason_note` longtext DEFAULT NULL,
  `datetime` longtext DEFAULT NULL,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `type`, `category`, `sub_category`, `product`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '6', '15', '42', '50', '140.00', '7000', '', '1474202947', NULL, NULL),
(2, 'add', '6', '13', '41', '80', '220.00', '17600', '', '1474205403', NULL, NULL),
(3, 'add', '3', '19', '45', '10', '400.00', '4000', '', '1474273237', NULL, '{\"type\":\"vendor\",\"id\":\"2\"}'),
(4, 'destroy', '3', '19', '45', '3', NULL, '3', '', '1474273259', NULL, '{\"type\":\"vendor\",\"id\":\"2\"}'),
(5, 'add', '7', '24', '46', '50', '170.00', '8500', '', '1474279907', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(6, 'add', '7', '23', '47', '25', '8.00', '200', '', '1474283137', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(7, 'add', '7', '25', '48', '35', '6.00', '210', '', '1474284193', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(8, 'add', '5', '29', '50', '50', '15.25', '762.5', '', '1474485138', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(9, 'add', '5', '29', '49', '45', '34.35', '1545.75', '', '1474485156', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(10, 'add', '5', '29', '51', '25', '11.11', '277.75', '', '1474485808', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(11, 'add', '5', '29', '52', '18', '9.56', '172.08', '', '1474487386', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(12, 'add', '5', '27', '53', '10', '85.00', '850', '', '1474488421', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(13, 'add', '5', '27', '55', '15', '101.00', '1515', '', '1474489704', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(14, 'add', '5', '27', '54', '15', '100.00', '1500', '', '1474489715', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(15, 'add', '5', '27', '56', '25', '85.00', '2125', '', '1474490017', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(16, 'add', '5', '28', '57', '20', '65.00', '1300', '', '1474490674', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(17, 'add', '5', '28', '58', '25', '60.00', '1500', '', '1474491530', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(18, 'add', '5', '28', '59', '20', '65.00', '1300', '', '1474492165', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(19, 'add', '5', '30', '61', '100', '41.00', '4100', '', '1474493210', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(20, 'add', '5', '28', '60', '20', '75.00', '1500', '', '1474493219', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(21, 'add', '5', '30', '62', '80', '620.00', '49600', '', '1474493510', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(22, 'add', '5', '30', '63', '50', '650.00', '32500', '', '1474493879', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(23, 'add', '4', '9', '65', '30', '11.26', '337.8', '', '1474572304', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(24, 'add', '4', '9', '66', '35', '15.35', '537.25', '', '1474572782', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(25, 'add', '4', '9', '67', '30', '13.20', '396', '', '1474574151', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(26, 'add', '4', '10', '68', '20', '12.36', '247.2', '', '1474575119', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(27, 'add', '4', '10', '69', '30', '8.20', '245.99999999999997', '', '1474575712', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(28, 'add', '4', '11', '70', '25', '3.35', '83.75', '', '1474576989', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(29, 'add', '4', '11', '71', '50', '2.88', '144', '', '1474577860', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(30, 'add', '4', '11', '72', '10', '8.90', '89', '', '1474578795', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(31, 'add', '4', '36', '73', '15', '38.32', '574.8', '', '1474580033', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(32, 'add', '4', '36', '74', '20', '41.38', '827.6', '', '1474580235', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(33, 'add', '4', '36', '75', '20', '39.63', '792.6', '', '1474580993', NULL, NULL),
(34, 'add', '1', '3', '76', '10', '43567.00', '435670', '', '1474721288', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(35, 'add', '1', '3', '77', '15', '58378.00', '875670', '', '1474722264', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(36, 'add', '1', '3', '78', '20', '131772.00', '2635440', '', '1474722788', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(37, 'add', '1', '63', '79', '5', '1734589.00', '8672945', '', '1474790400', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(38, 'add', '1', '63', '80', '10', '558900.00', '5589000', '', '1474792233', NULL, NULL),
(39, 'add', '1', '63', '81', '5', '3234690.00', '16173450', '', '1474792382', NULL, NULL),
(40, 'add', '1', '63', '82', '8', '4467490.00', '35739920', '', '1474792879', NULL, NULL),
(41, 'add', '1', '5', '83', '12', '11670.00', '140040', '', '1474793757', NULL, NULL),
(42, 'add', '1', '5', '84', '25', '42879.00', '1071975', '', '1474796354', NULL, NULL),
(43, 'add', '1', '5', '85', '18', '74590.00', '1342620', '', '1474796688', NULL, NULL),
(44, 'add', '1', '2', '86', '16', '45000.00', '720000', '', '1474799085', NULL, NULL),
(45, 'add', '1', '6', '87', '10', '41000.00', '410000', '', '1474800049', NULL, NULL),
(46, 'add', '1', '6', '88', '25', '33890.00', '847250', '', '1474800332', NULL, NULL),
(47, 'add', '1', '6', '89', '10', '42000.00', '420000', '', '1474801376', NULL, NULL),
(48, 'add', '2', '62', '90', '45', '61897.00', '2785365', '', '1474802601', NULL, NULL),
(49, 'add', '2', '17', '92', '55', '42000.00', '2310000', '', '1474803009', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(50, 'add', '2', '62', '91', '10', '65000.00', '650000', '', '1474889590', NULL, NULL),
(52, 'add', '4', '10', '69', '0', '8.20', '0', '', '1475390469', NULL, NULL),
(53, 'add', '2', '18', '93', '10', '350.00', '3500', '', '1475483558', NULL, NULL),
(54, 'add', '2', '18', '94', '10', '350.00', '3500', '', '1475485603', NULL, NULL),
(56, 'add', '2', '18', '96', '100', '350.00', '35000', '', '1475498670', NULL, NULL),
(59, 'add', '1', '3', '4', '100', '88000.00', '8800000', '', '1476007723', NULL, NULL),
(60, 'add', '1', '2', '1', '50', '120000.00', '6000000', '', '1476007803', NULL, NULL),
(61, 'destroy', '4', '36', '74', '2', NULL, '0', 'sale', '1517725191', '5', NULL),
(62, 'destroy', '4', '36', '73', '1', NULL, '0', 'sale', '1517732450', '6', NULL),
(63, 'destroy', '4', '36', '73', '1', NULL, '0', 'sale', '1517732639', '7', NULL),
(64, 'add', '4', '10', '37', '100', '150.00', '15000', '', '1517942532', NULL, NULL),
(65, 'add', '4', '8', '36', '100', '210.00', '0', '', '1517942542', NULL, NULL),
(66, 'add', '4', '35', '35', '100', '240.00', '24000', '', '1517942553', NULL, NULL),
(67, 'add', '4', '9', '26', '100', '10.00', '1000', '', '1517942563', NULL, NULL),
(68, 'add', '4', '37', '25', '100', '250.00', '25000', '', '1517942574', NULL, NULL),
(69, 'add', '4', '37', '24', '100', '400.00', '40000', '', '1517942585', NULL, NULL),
(70, 'add', '4', '37', '23', '100', '210.00', '21000', '', '1517942598', NULL, NULL),
(71, 'add', '4', '40', '18', '200', '100.00', '20000', '', '1517942609', NULL, NULL),
(72, 'add', '4', '35', '17', '150', '120.00', '18000', '', '1517942624', NULL, NULL),
(73, 'add', '4', '39', '16', '200', '110.00', '22000', '', '1517942637', NULL, NULL),
(74, 'add', '4', '37', '15', '200', '130.00', '0', '', '1517942647', NULL, NULL),
(75, 'add', '4', '34', '14', '100', '320.00', '32000', '', '1517942656', NULL, NULL),
(76, 'add', '4', '8', '12', '200', '180.00', '36000', '', '1517942666', NULL, NULL),
(77, 'add', '4', '11', '11', '100', '6500.00', '650000', '', '1517942677', NULL, NULL),
(78, 'add', '1', '5', '2', '100', '18000.00', '1800000', '', '1517942691', NULL, NULL),
(79, 'add', '4', '10', '7', '500', '35.00', '17500', '', '1517942704', NULL, NULL),
(80, 'add', '5', '30', '8', '300', '650.00', '195000', '', '1517942726', NULL, NULL),
(81, 'add', '5', '28', '9', '500', '120.00', '60000', '', '1517942751', NULL, NULL),
(82, 'add', '16', '78', '101', '10', '95.00', '950', '', '1518078812', NULL, NULL),
(83, 'add', '16', '78', '103', '20', '125.00', '2500', '', '1518079324', NULL, NULL),
(84, 'add', '16', '78', '102', '15', '125.00', '1875', '', '1518079332', NULL, NULL),
(85, 'add', '16', '78', '104', '15', '125.00', '1875', '', '1518079423', NULL, NULL),
(86, 'add', '16', '78', '104', '100', '125.00', '12500', '', '1518079433', NULL, NULL),
(87, 'add', '16', '78', '103', '150', '125.00', '18750', '', '1518079443', NULL, NULL),
(88, 'add', '16', '78', '102', '90', '125.00', '11250', '', '1518079453', NULL, NULL),
(89, 'add', '16', '78', '101', '120', '95.00', '11400', '', '1518079464', NULL, NULL),
(90, 'add', '1', '6', '89', '50', '42000.00', '2100000', '', '1518079474', NULL, NULL),
(91, 'add', '1', '6', '88', '50', '33890.00', '1694500', '', '1518079483', NULL, NULL),
(92, 'add', '1', '6', '87', '80', '41000.00', '3280000', '', '1518079495', NULL, NULL),
(93, 'add', '1', '6', '86', '80', '45000.00', '3600000', '', '1518079507', NULL, NULL),
(94, 'add', '16', '78', '105', '120', '110.00', '13200', '', '1518079727', NULL, NULL),
(95, 'add', '16', '78', '106', '150', '122.00', '18300', '', '1518079898', NULL, NULL),
(96, 'add', '16', '79', '107', '120', '145.00', '17400', '', '1518080173', NULL, NULL),
(97, 'add', '16', '79', '108', '80', '144.00', '11520', '', '1518080359', NULL, NULL),
(98, 'add', '16', '79', '110', '50', '75.00', '3750', '', '1518081142', NULL, NULL),
(99, 'add', '16', '79', '109', '60', '140.00', '8400', '', '1518081151', NULL, NULL),
(100, 'add', '16', '79', '111', '100', '95.00', '9500', '', '1518081235', NULL, NULL),
(101, 'add', '16', '79', '112', '150', '50.00', '7500', '', '1518081346', NULL, NULL),
(102, 'add', '16', '80', '113', '150', '95.00', '14250', '', '1518081575', NULL, NULL),
(103, 'add', '16', '80', '114', '130', '98.00', '12740', '', '1518081650', NULL, NULL),
(104, 'add', '16', '80', '115', '200', '100.00', '20000', '', '1518081994', NULL, NULL),
(105, 'add', '5', '27', '117', '85', '45.00', '3825', '', '1518082666', NULL, NULL),
(106, 'add', '16', '80', '116', '100', '92.00', '9200', '', '1518082674', NULL, NULL),
(107, 'add', '5', '27', '118', '80', '56.00', '4480', '', '1518082825', NULL, NULL),
(108, 'add', '5', '27', '120', '80', '65.00', '5200', '', '1518083101', NULL, NULL),
(109, 'add', '5', '27', '119', '80', '65.00', '5200', '', '1518083110', NULL, NULL),
(110, 'add', '5', '28', '121', '50', '79.00', '3950', '', '1518083320', NULL, NULL),
(111, 'add', '5', '28', '122', '60', '55.00', '3300', '', '1518083433', NULL, NULL),
(112, 'add', '5', '28', '123', '60', '66.00', '3960', '', '1518083632', NULL, NULL),
(113, 'add', '5', '29', '124', '82', '45.00', '3690', '', '1518083830', NULL, NULL),
(114, 'add', '5', '29', '124', '56', '45.00', '2520', '', '1518084168', NULL, NULL),
(115, 'add', '5', '30', '126', '55', '90.00', '4950', '', '1518084178', NULL, NULL),
(116, 'add', '5', '30', '127', '80', '125.00', '10000', '', '1518084186', NULL, NULL),
(117, 'add', '5', '29', '125', '50', '56.00', '2800', '', '1518084194', NULL, NULL),
(118, 'add', '4', '37', '128', '80', '120.00', '9600', '', '1518086137', NULL, NULL),
(119, 'add', '4', '37', '129', '100', '145.00', '14500', '', '1518086245', NULL, NULL),
(120, 'add', '1', '2', '130', '50', '32000.00', '1600000', '', '1518091220', NULL, NULL),
(121, 'destroy', '4', '36', '75', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(122, 'destroy', '5', '28', '58', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(123, 'destroy', '5', '28', '57', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(124, 'destroy', '5', '27', '54', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(125, 'destroy', '5', '29', '50', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(126, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1519796196', '12', NULL),
(127, 'destroy', '0', '0', '101', '1', NULL, '0', 'sale', '1521374128', '15', NULL),
(128, 'destroy', '0', '0', '101', '1', NULL, '0', 'sale', '1521430987', '16', NULL),
(129, 'destroy', '13', '75', '99', '1', NULL, '0', 'sale', '1521541152', '17', NULL),
(130, 'destroy', '0', '0', '102', '1', NULL, '0', 'sale', '1521616455', '18', NULL),
(131, 'destroy', '0', '0', '102', '7', NULL, '0', 'sale', '1521616557', '19', NULL),
(132, 'destroy', '0', '0', '102', '1', NULL, '0', 'sale', '1521616913', '20', NULL),
(133, 'add', '4', '10', '37', '500', '150.00', '75000', '', '1522827326', NULL, NULL),
(134, 'add', '1', '5', '2', '100', '18000.00', '1800000', '', '1522827360', NULL, NULL),
(135, 'add', '4', '10', '7', '1000', '35.00', '35000', '', '1522827390', NULL, NULL),
(136, 'add', '4', '34', '14', '150', '320.00', '0', '', '1522827433', NULL, NULL),
(137, 'add', '4', '37', '15', '200', '130.00', '0', '', '1522827463', NULL, NULL),
(138, 'add', '4', '39', '16', '200', '110.00', '0', '', '1522827488', NULL, NULL),
(139, 'add', '4', '35', '17', '100', '120.00', '12000', '', '1522827994', NULL, NULL),
(140, 'add', '4', '40', '18', '150', '100.00', '15000', '', '1522828021', NULL, NULL),
(141, 'add', '4', '35', '35', '200', '240.00', '0', '', '1522828073', NULL, NULL),
(142, 'add', '4', '9', '26', '200', '10.00', '0', '', '1522828105', NULL, NULL),
(143, 'add', '4', '37', '25', '200', '250.00', '50000', '', '1522828132', NULL, NULL),
(144, 'add', '4', '37', '24', '200', '400.00', '0', '', '1522828163', NULL, NULL),
(145, 'add', '4', '37', '23', '300', '210.00', '0', '', '1522828256', NULL, NULL),
(146, 'add', '4', '8', '36', '400', '210.00', '0', '', '1522828286', NULL, NULL),
(147, 'add', '4', '8', '12', '300', '180.00', '0', '', '1522828328', NULL, NULL),
(148, 'add', '4', '11', '11', '250', '6500.00', '0', '', '1522828413', NULL, NULL),
(149, 'add', '5', '28', '9', '250', '120.00', '0', '', '1522828467', NULL, NULL),
(150, 'add', '5', '30', '8', '300', '650.00', '195000', '', '1522828488', NULL, NULL),
(151, 'add', '17', '78', '103', '30', '4.40', '132', '', '1522837440', NULL, NULL),
(152, 'add', '17', '78', '104', '50', '4.72', '236', '', '1522837706', NULL, NULL),
(153, 'add', '17', '78', '105', '20', '5.50', '110', '', '1522837862', NULL, NULL),
(154, 'add', '18', '79', '106', '15', '18.30', '274.5', '', '1522838553', NULL, NULL),
(155, 'add', '18', '79', '107', '12', '22.63', '271.56', '', '1522838928', NULL, NULL),
(156, 'add', '21', '80', '108', '5', '57.53', '287.65', '', '1522841201', NULL, NULL),
(157, 'add', '21', '80', '109', '1', '58.77', '58.77', '', '1522841562', NULL, NULL),
(158, 'add', '16', '81', '110', '5', '719.99', '3599.95', '', '1522842237', NULL, NULL),
(159, 'add', '16', '81', '111', '3', '209.99', '629.97', '', '1522842721', NULL, NULL),
(160, 'add', '16', '81', '112', '2', '629.99', '1259.98', '', '1522842852', NULL, NULL),
(161, 'add', '1', '3', '124', '200', '54000.00', '10800000', '', '1522922112', NULL, NULL),
(162, 'add', '1', '3', '125', '300', '59000.00', '17700000', '', '1522922301', NULL, NULL),
(163, 'add', '5', '27', '127', '25', '169.99', '4249.75', '', '1522925860', NULL, NULL),
(164, 'add', '5', '27', '127', '75', '169.99', '12749.25', '', '1522925881', NULL, NULL),
(165, 'add', '5', '27', '128', '100', '372.06', '37206', '', '1522926055', NULL, NULL),
(166, 'add', '5', '27', '130', '500', '79.20', '0', '', '1522930929', NULL, NULL),
(167, 'add', '5', '28', '129', '500', '50.00', '0', '', '1522930942', NULL, NULL),
(168, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1523524543', '21', NULL),
(169, 'destroy', '1', '3', '125', '1', NULL, '0', 'sale', '1523535450', '22', NULL),
(170, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1523535591', '23', NULL),
(171, 'destroy', '5', '27', '128', '1', NULL, '0', 'sale', '1523535591', '23', NULL),
(172, 'destroy', '0', '0', '126', '1', NULL, '0', 'sale', '1523852571', '24', NULL),
(173, 'destroy', '0', '0', '119', '1', NULL, '0', 'sale', '1523852571', '24', NULL),
(174, 'add', '1', '6', '131', '25', '26999.00', '674975', '', '1523857079', NULL, NULL),
(175, 'add', '1', '6', '132', '10', '4999.00', '49990', '', '1523861112', NULL, NULL),
(176, 'add', '1', '63', '133', '5', '117139.33', '585696.65', '', '1523863280', NULL, NULL),
(177, 'add', '1', '63', '134', '10', '794782.29', '7947822.9', '', '1523863576', NULL, NULL),
(178, 'add', '5', '28', '135', '200', '63.75', '12750', '', '1523867199', NULL, NULL),
(179, 'add', '5', '28', '136', '150', '44.99', '6748.5', '', '1523867819', NULL, NULL),
(180, 'add', '5', '29', '137', '500', '52.99', '26495', '', '1523868841', NULL, NULL),
(181, 'add', '5', '29', '138', '300', '31.80', '9540', '', '1523869110', NULL, NULL),
(182, 'add', '5', '29', '139', '300', '45.99', '13797', '', '1523869336', NULL, NULL),
(183, 'add', '5', '30', '140', '50', '26724.99', '1336249.5', '', '1523870296', NULL, NULL),
(184, 'add', '5', '30', '141', '100', '664.99', '66499', '', '1523870578', NULL, NULL),
(185, 'add', '16', '81', '142', '100', '794.00', '79400', '', '1523871020', NULL, NULL),
(186, 'add', '16', '81', '143', '100', '625.00', '62500', '', '1523871351', NULL, NULL),
(187, 'add', '16', '81', '144', '200', '409.00', '81800', '', '1523871782', NULL, NULL),
(188, 'add', '16', '83', '145', '50', '70.72', '3536', '', '1523872591', NULL, NULL),
(189, 'add', '16', '83', '146', '100', '11.58', '1158', '', '1523872944', NULL, NULL),
(190, 'add', '16', '83', '147', '140', '91.97', '12875.8', '', '1523873194', NULL, NULL),
(191, 'add', '16', '83', '148', '200', '96.28', '19256', '', '1523873449', NULL, NULL),
(192, 'add', '16', '83', '149', '50', '105.97', '5298.5', '', '1523873845', NULL, NULL),
(193, 'add', '16', '83', '150', '200', '36.43', '7286', '', '1523874195', NULL, NULL),
(194, 'add', '4', '9', '151', '300', '43.98', '13193.999999999998', '', '1523874895', NULL, NULL),
(195, 'add', '4', '10', '152', '250', '13.59', '3397.5', '', '1523875175', NULL, NULL),
(196, 'add', '4', '9', '153', '300', '19.99', '5996.999999999999', '', '1523875678', NULL, NULL),
(197, 'add', '4', '10', '154', '200', '16.29', '3258', '', '1523875974', NULL, NULL),
(198, 'add', '4', '11', '155', '50', '18.99', '949.4999999999999', '', '1523876663', NULL, NULL),
(199, 'add', '4', '11', '156', '10', '4530.00', '45300', '', '1523876990', NULL, NULL),
(200, 'add', '4', '37', '157', '100', '51.00', '5100', '', '1523877983', NULL, NULL),
(201, 'add', '4', '37', '158', '120', '158.99', '19078.800000000003', '', '1523878181', NULL, NULL),
(202, 'destroy', '4', '37', '158', '1', NULL, '0', 'sale', '1524471441', '29', NULL),
(203, 'add', '16', '87', '159', '500', '4500.00', '2250000', '', '1524784507', NULL, NULL),
(204, 'add', '16', '85', '160', '500', '1000.00', '0', '', '1524784752', NULL, NULL),
(205, 'add', '16', '88', '161', '500', '800.00', '0', '', '1524784866', NULL, NULL),
(206, 'add', '16', '86', '162', '500', '900.00', '450000', '', '1524845655', NULL, NULL),
(207, 'add', '16', '81', '166', '12', '125.00', '1500', '', '1524911159', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(208, 'add', '16', '81', '168', '5', '1190.00', '5950', '', '1524984498', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(209, 'add', '16', '83', '169', '5', '800.00', '4000', '', '1524984850', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(210, 'add', '16', '81', '170', '25', '1195.00', '29875', '', '1524984898', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(211, 'add', '16', '81', '171', '25', '1190.00', '29750', '', '1524985905', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(212, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1525079391', '38', NULL),
(213, 'destroy', '1', '3', '125', '1', NULL, '0', 'sale', '1526119327', '39', NULL),
(214, 'destroy', '1', '5', '2', '2', NULL, '0', 'sale', '1527064445', '44', NULL),
(215, 'destroy', '16', '85', '160', '1', NULL, '0', 'sale', '1528016175', '45', NULL),
(216, 'add', '4', '11', '172', '50', '40.00', '2000', '', '1528779289', NULL, NULL),
(217, 'add', '4', '11', '173', '50', '62.00', '3100', '', '1528779815', NULL, NULL),
(218, 'add', '4', '11', '174', '50', '30.00', '1500', '', '1528780266', NULL, NULL),
(219, 'add', '5', '89', '175', '100', '68.00', '6800', '', '1528785307', NULL, NULL),
(220, 'add', '5', '89', '176', '120', '12.00', '1440', '', '1528785411', NULL, NULL),
(221, 'add', '5', '89', '177', '45', '10.00', '450', '', '1528785743', NULL, NULL),
(222, 'add', '5', '89', '178', '60', '74.80', '4488', '', '1528786064', NULL, NULL),
(223, 'add', '16', '88', '180', '10', '3500.00', '35000', '', '1528787255', NULL, NULL),
(224, 'destroy', '13', '74', '182', '1', NULL, '0', 'sale', '1529556702', '56', NULL),
(225, 'destroy', '16', '81', '144', '1', NULL, '0', 'sale', '1530089371', '62', NULL),
(226, 'add', '4', '8', '183', '25', '180.00', '4500', '', '1530166850', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(227, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530166970', '63', NULL),
(228, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530174197', '64', NULL),
(229, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1530174441', '65', NULL),
(230, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530176426', '67', NULL),
(231, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(232, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(233, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(234, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530177969', '69', NULL),
(235, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530177969', '69', NULL),
(236, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530178305', '70', NULL),
(237, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530178305', '70', NULL),
(238, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530178457', '71', NULL),
(239, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530178457', '71', NULL),
(240, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(241, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(242, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(243, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530178827', '73', NULL),
(244, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530179102', '74', NULL),
(245, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530179102', '74', NULL),
(246, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530180438', '75', NULL),
(247, 'destroy', '0', '0', '163', '1', NULL, '0', 'sale', '1530181282', '76', NULL),
(248, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181282', '76', NULL),
(249, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181401', '77', NULL),
(250, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181508', '78', NULL),
(251, 'destroy', '4', '8', '183', '2', NULL, '0', 'sale', '1530182283', '79', NULL),
(252, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530182577', '80', NULL),
(253, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530182891', '81', NULL),
(254, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530183079', '82', NULL),
(255, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530421619', '83', NULL),
(256, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530422129', '84', NULL),
(257, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530422501', '85', NULL),
(258, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530423355', '86', NULL),
(259, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1530423355', '86', NULL),
(260, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530423911', '87', NULL),
(261, 'add', '21', '80', '184', '500', '189.99', '94995', '', '1530427971', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(262, 'add', '21', '80', '185', '50', '40.99', '2049.5', '', '1530428579', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(263, 'add', '16', '83', '186', '300', '249.00', '74700', '', '1530428936', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(264, 'add', '16', '86', '187', '50', '1049.00', '52450', '', '1530429328', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(265, 'add', '5', '90', '188', '100', '154.99', '15499', '', '1530429645', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(266, 'add', '5', '90', '189', '500', '38.98', '19490', '', '1530431736', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(267, 'add', '5', '30', '190', '500', '99.84', '49920', '', '1530434062', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(268, 'add', '5', '28', '191', '100', '56.99', '5699', '', '1530434437', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(269, 'add', '21', '80', '192', '200', '385.00', '77000', '', '1530435423', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(270, 'add', '21', '80', '193', '300', '80.00', '24000', '', '1530435832', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(271, 'add', '21', '80', '194', '50', '199.99', '9999.5', '', '1530436258', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(272, 'add', '21', '80', '195', '400', '39.99', '15996', '', '1530436731', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(273, 'add', '21', '80', '196', '100', '230.97', '23097', '', '1530437119', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(274, 'add', '4', '40', '197', '200', '23.99', '4798', '', '1530437673', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(275, 'add', '4', '35', '198', '500', '34.99', '17495', '', '1530438201', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(276, 'add', '4', '36', '199', '140', '34.98', '4897.2', '', '1530438511', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(277, 'add', '4', '11', '200', '600', '12.97', '7782', '', '1530439263', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(278, 'add', '16', '87', '201', '50', '1049.00', '52450', '', '1530440570', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(279, 'add', '16', '87', '202', '300', '28.99', '8697', '', '1530441002', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(280, 'add', '16', '86', '203', '100', '49.34', '4934', '', '1530441771', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(281, 'add', '16', '81', '204', '200', '249.99', '49998', '', '1530442235', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(282, 'add', '16', '81', '205', '500', '49.99', '24995', '', '1530442480', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(283, 'add', '16', '85', '206', '100', '399.00', '39900', '', '1530444192', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(284, 'add', '17', '93', '207', '500', '39.00', '19500', '', '1530509804', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(285, 'add', '17', '78', '208', '500', '40.00', '20000', '', '1530511789', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(286, 'add', '17', '91', '209', '400', '28.50', '11400', '', '1530512382', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(287, 'add', '17', '96', '210', '100', '75.00', '7500', '', '1530512762', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(288, 'add', '17', '93', '211', '500', '28.00', '14000', '', '1530513333', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(289, 'add', '1', '1', '212', '50', '63750.00', '3187500', '', '1530514188', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(290, 'add', '1', '1', '213', '150', '39190.00', '5878500', '', '1530514879', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(291, 'add', '1', '2', '214', '1000', '535500.00', '535500000', '', '1530515357', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(292, 'add', '1', '1', '215', '100', '15350.00', '1535000', '', '1530523300', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(293, 'add', '1', '1', '216', '100', '44100.00', '4410000', '', '1530523869', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(294, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530605298', '89', NULL),
(295, 'destroy', '16', '88', '180', '6', NULL, '0', 'sale', '1530703163', '90', NULL),
(296, 'destroy', '5', '89', '175', '95', NULL, '0', 'sale', '1530708356', '91', NULL),
(297, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530764395', '93', NULL),
(298, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530764928', '94', NULL),
(299, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530765068', '95', NULL),
(300, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530765242', '96', NULL),
(301, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530779882', '99', NULL),
(302, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1530780344', '100', NULL),
(303, 'destroy', '5', '30', '190', '1', NULL, '0', 'sale', '1530780876', '103', NULL),
(304, 'destroy', '0', '0', '122', '1', NULL, '0', 'sale', '1530781627', '104', NULL),
(305, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531038537', '107', NULL),
(306, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531038756', '108', NULL),
(307, 'destroy', '1', '2', '214', '1', NULL, '0', 'sale', '1531629840', '134', NULL),
(308, 'destroy', '4', '11', '173', '1', NULL, '0', 'sale', '1531633208', '142', NULL),
(309, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531633208', '142', NULL),
(310, 'destroy', '16', '81', '142', '1', NULL, '0', 'sale', '1531633431', '147', NULL),
(311, 'destroy', '16', '86', '162', '1', NULL, '0', 'sale', '1531633712', '148', NULL),
(312, 'destroy', '5', '29', '138', '1', NULL, '0', 'sale', '1531633810', '149', NULL),
(313, 'destroy', '0', '0', '121', '16', NULL, '0', 'sale', '1531636774', '150', NULL),
(314, 'add', '5', '28', '217', '200', '88.95', '17790', '', '1531637332', NULL, '{\"type\":\"vendor\",\"id\":\"17\"}'),
(315, 'add', '5', '28', '217', '100', '88.95', '8895', '', '1531637661', NULL, '{\"type\":\"vendor\",\"id\":\"17\"}'),
(316, 'destroy', '4', '11', '172', '44', NULL, '0', 'sale', '1531638155', '151', NULL),
(317, 'destroy', '4', '11', '155', '50', NULL, '0', 'sale', '1531638276', '152', NULL),
(318, 'destroy', '4', '11', '174', '45', NULL, '0', 'sale', '1531638403', '153', NULL),
(319, 'destroy', '4', '11', '200', '600', NULL, '0', 'sale', '1531638867', '154', NULL),
(320, 'destroy', '5', '28', '217', '1', NULL, '0', 'sale', '1531638930', '155', NULL),
(321, 'destroy', '5', '89', '178', '56', NULL, '0', 'sale', '1531639886', '156', NULL),
(322, 'destroy', '0', '0', '123', '2', NULL, '0', 'sale', '1531640276', '157', NULL),
(323, 'destroy', '0', '0', '123', '26', NULL, '0', 'sale', '1531640427', '158', NULL),
(324, 'destroy', '4', '11', '173', '49', NULL, '0', 'sale', '1531640653', '159', NULL),
(325, 'destroy', '0', '0', '122', '20', NULL, '0', 'sale', '1531640792', '160', NULL),
(326, 'destroy', '5', '28', '191', '100', NULL, '0', 'sale', '1531641121', '161', NULL),
(327, 'add', '16', '88', '180', '500', '3500.00', '1750000', '', '1531642809', NULL, NULL),
(328, 'add', '4', '11', '200', '500', '12.97', '6485', '', '1531642840', NULL, NULL),
(329, 'add', '4', '11', '174', '500', '30.00', '15000', '', '1531642856', NULL, NULL),
(330, 'add', '4', '11', '172', '500', '40.00', '20000', '', '1531642878', NULL, NULL),
(331, 'add', '4', '11', '155', '500', '18.99', '9495', '', '1531642899', NULL, NULL),
(332, 'destroy', '4', '11', '174', '500', NULL, '0', 'sale', '1531733208', '165', NULL),
(333, 'destroy', '16', '85', '206', '1', NULL, '0', 'sale', '1532334222', '168', NULL),
(334, 'destroy', '5', '90', '189', '1', NULL, '0', 'sale', '1532409777', '170', NULL),
(335, 'add', '5', '27', '220', '125', '110.00', '13750', '', '1554029932', NULL, '{\"type\":\"vendor\",\"id\":\"18\"}'),
(336, 'destroy', '5', '27', '220', '1', NULL, '0', 'sale', '1554030325', '185', NULL),
(337, 'destroy', '13', '75', '221', '1', NULL, '0', 'sale', '1554033364', '186', NULL),
(338, 'destroy', '13', '75', '221', '1', NULL, '0', 'sale', '1554033644', '187', NULL),
(339, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1554103346', '188', NULL),
(340, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1554103474', '189', NULL),
(341, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1554103623', '190', NULL),
(342, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1560848821', '193', NULL),
(343, 'destroy', '13', '73', '100', '1', NULL, '0', 'sale', '1560853989', '194', NULL),
(344, 'add', '24', '114', '226', '10', '20.00', '200', '', '1571652007', NULL, NULL),
(345, 'destroy', '24', '114', '226', '4', NULL, '0', 'sale', '1571652104', '195', NULL),
(346, 'add', '24', '114', '227', '100', '117.00', '11700', '', '1571724012', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(347, 'add', '24', '114', '228', '100', '36.00', '3600', '', '1571724396', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(350, 'add', '4', '5', '225', '100', '19.00', '1900', '', '1574742818', NULL, NULL),
(351, 'add', '1', '1', '218', '100', '234', '23400', '', '1575877383', NULL, NULL),
(352, 'destroy', '1', '1', '218', '1', NULL, '0', 'sale', '1576052995', '197', NULL),
(353, 'destroy', '1', '1', '218', '1', NULL, '0', 'sale', '1576057728', '198', NULL),
(354, 'destroy', '1', '1', '218', '1', NULL, '0', 'sale', '1576063839', '210', NULL),
(355, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1576064394', '211', NULL),
(356, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1576064677', '212', NULL),
(357, 'destroy', '1', '1', '212', '1', NULL, '0', 'sale', '1576145480', '215', NULL),
(358, 'destroy', '1', '1', '212', '1', NULL, '0', 'sale', '1576145647', '216', NULL),
(359, 'add', '25', '119', '229', '25', '20.00', '500', '', '1593421951', NULL, NULL),
(360, 'destroy', '25', '119', '229', '1', NULL, '0', 'sale', '1593422425', '217', NULL),
(361, 'destroy', '25', '119', '229', '1', NULL, '0', 'sale', '1593426013', '218', NULL),
(362, 'destroy', '25', '119', '229', '1', NULL, '0', 'sale', '1593451352', '219', NULL),
(365, 'destroy', '28', '120', '230', '1', NULL, '0', 'sale', '1593507461', '220', NULL),
(364, 'add', '28', '120', '230', '1', '1.50', '1.5', '', '1593494012', NULL, NULL),
(366, 'add', '28', '120', '230', '1', '1.50', '1.5', '', '1593730121', NULL, NULL),
(367, 'destroy', '28', '120', '230', '1', NULL, '0', 'sale', '1593730326', '221', NULL),
(368, 'add', '28', '120', '232', '10', '18.00', '180', '', '1594158144', NULL, NULL),
(369, 'add', '29', '121', '231', '10', '1.50', '15', '', '1594158159', NULL, NULL),
(370, 'destroy', '28', '120', '232', '1', NULL, '0', 'sale', '1594160336', '223', NULL),
(371, 'destroy', '29', '121', '231', '1', NULL, '0', 'sale', '1595724252', '224', NULL),
(372, 'destroy', '29', '121', '231', '1', NULL, '0', 'sale', '1595783846', '225', NULL),
(373, 'destroy', '28', '120', '232', '1', NULL, '0', 'sale', '1600912348', '226', NULL),
(374, 'destroy', '29', '121', '231', '1', NULL, '0', 'sale', '1604530047', '227', NULL),
(375, 'destroy', '28', '120', '232', '1', NULL, '0', 'sale', '1604535914', '228', NULL),
(376, 'destroy', '28', '120', '232', '1', NULL, '0', 'sale', '1605925999', '231', NULL),
(377, 'destroy', '28', '120', '232', '1', NULL, '0', 'sale', '1605929507', '232', NULL),
(378, 'add', '28', '124', '242', '50', '25.00', '1250', '', '1605929887', NULL, NULL),
(379, 'add', '28', '124', '242', '25', '25.00', '625', '', '1605931343', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `email` varchar(600) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`subscribe_id`, `email`) VALUES
(1, 'sub1@mail.com'),
(2, 'sub2@mail.com'),
(3, 'sub3@mail.com'),
(4, 'sub4@mail.com'),
(5, 'jose_polanco_gonzales@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` longtext DEFAULT NULL,
  `category` longtext DEFAULT NULL,
  `brand` varchar(2000) NOT NULL DEFAULT '[]',
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext DEFAULT NULL,
  `affiliation` tinyint(4) NOT NULL DEFAULT 0,
  `affiliation_points` decimal(10,0) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category_name`, `category`, `brand`, `digital`, `banner`, `affiliation`, `affiliation_points`) VALUES
(122, 'Belleza', '26', '[\"275\",\"279\"]', NULL, 'sub_category_122.png', 0, '0'),
(123, 'Bienestar Sexual', '27', '[\"278\",\"279\"]', NULL, 'sub_category_123.png', 0, '0'),
(124, 'Cuidado Personal', '28', '[\"275\",\"276\",\"277\",\"279\",\"281\"]', NULL, 'sub_category_124.png', 0, '0'),
(125, 'Mamá y Bebe', '32', '[\"275\",\"276\",\"277\",\"280\"]', NULL, 'sub_category_125.png', 0, '0'),
(126, 'Medicamento', '29', '[]', NULL, 'sub_category_126.png', 0, '0'),
(127, 'Suplementos y Proteinas', '30', '[]', NULL, 'sub_category_127.png', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `time`, `from_where`, `to_where`, `subject`, `view_status`) VALUES
(22, '1605929629', '{\"type\":\"user\",\"id\":\"26\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'Consulta', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_message`
--

CREATE TABLE `ticket_message` (
  `ticket_message_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(100) DEFAULT NULL,
  `message` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_message`
--

INSERT INTO `ticket_message` (`ticket_message_id`, `time`, `from_where`, `to_where`, `ticket_id`, `subject`, `view_status`, `message`) VALUES
(34, '1605929629', '{\"type\":\"user\",\"id\":\"26\"}', '{\"type\":\"admin\",\"id\":\"\"}', 22, 'Consulta', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'dolor de garganta, flema, que pastilla podría consumir');

-- --------------------------------------------------------

--
-- Table structure for table `ui_settings`
--

CREATE TABLE `ui_settings` (
  `ui_settings_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '46'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '78'),
(9, 'home_bottom_logo', '78'),
(11, 'fav_ext', 'png'),
(12, 'side_bar_pos_category', 'right'),
(14, 'footer_color', 'blue-1'),
(15, 'header_color', 'blue-1'),
(19, 'parallax_blog_title', 'Blog Bonofarma'),
(16, 'font', 'Poppins'),
(17, 'parallax_vendor_title', 'OUR VENDOR'),
(18, 'home_page_style', '3'),
(20, 'no_of_featured_products', '4'),
(21, 'no_of_vendor', '10'),
(22, 'no_of_brands', '12'),
(23, 'brand_show', 'no'),
(24, 'featured_show', 'ok'),
(25, 'vandors_show', 'no'),
(26, 'blog_show', 'no'),
(27, 'parallax_search_title', 'Search Products'),
(28, 'no_of_blog', NULL),
(29, 'featured_product_box_style', '1'),
(30, 'no_of_todays_deal', NULL),
(31, 'special_products_show', 'ok'),
(32, 'category_slides', 'ok'),
(33, 'home_categories', '[{\"category\":\"28\",\"sub_category\":[\"120\"],\"color_back\":null,\"color_text\":null}]'),
(34, 'category_product_box_style', '1'),
(35, 'top_slide_categories', '[\"26\",\"27\",\"28\",\"29\",\"30\"]'),
(36, 'email_theme_style', 'style_1'),
(37, 'email_theme_style_2', '<div style=\"margin: 0px 10px; background: #45a9b9; padding: 30px;\"><div style=\"margin: 0px auto; background: #eff7ff; padding: 30px;\">[[body]]</div></div>'),
(38, 'email_theme_style_3', '<div style=\"margin: 0px 10px; background: repeating-linear-gradient(-45deg, red 0, red 1em, #fffdeb 0, #fffdeb 2em, #58a 0, #58a 3em, #fffdeb 0, #fffdeb 4em); padding: 15px;\"><div style=\"margin: 0px auto; background: #fffdeb; padding: 30px;\">[[body]]</div></div>'),
(39, 'email_theme_style_4', '<div style=\"margin: 0px 10px; background: #f7f7f7; padding: 30px;\"><div style=\"padding: 30px; background: #76cece; border-radius:5px 5px 0px 0px; box-shadow: 0px -1px 7px #616565; display:block;\"><div style=\"background-image:url([[logo]]); background-repeat:no-repeat; height:80px; width:auto; display:block;\"></div></div><div style=\"margin: 0px auto; background: rgba(255, 255, 255, 0.91); padding: 30px; box-shadow: 0px 3px 7px #616565; border-radius:0px 0px 5x 5px;\">[[body]]</div></div>'),
(40, 'product_bundle_show', 'no'),
(41, 'no_of_product_bundle', '6'),
(42, 'product_bundle_box_style', '2'),
(43, 'customer_product_show', 'no'),
(44, 'no_of_customer_product', '6'),
(45, 'header_homepage_status', 'yes'),
(46, 'header_all_categories_status', 'yes'),
(47, 'header_featured_products_status', 'yes'),
(48, 'header_todays_deal_status', 'yes'),
(49, 'header_bundled_product_status', 'no'),
(50, 'header_classifieds_status', 'no'),
(51, 'header_latest_products_status', 'no'),
(52, 'header_all_brands_status', 'yes'),
(53, 'header_all_vendors_status', 'no'),
(54, 'header_blogs_status', 'no'),
(55, 'header_store_locator_status', 'yes'),
(56, 'header_contact_status', 'yes'),
(57, 'header_more_status', 'no'),
(58, 'home3_categories', '[{\\\"category\\\":\\\"4\\\",\\\"sub_category\\\":[\\\"8\\\",\\\"11\\\",\\\"34\\\",\\\"35\\\",\\\"36\\\",\\\"37\\\",\\\"39\\\",\\\"40\\\"],\\\"color_back\\\":null,\\\"color_text\\\":null},{\\\"category\\\":\\\"5\\\",\\\"sub_category\\\":[\\\"27\\\",\\\"28\\\",\\\"29\\\",\\\"30\\\",\\\"89\\\",\\\"90\\\"],\\\"color_back\\\":null,\\\"color_text\\\":null}]'),
(59, 'todays_deal_show', 'no'),
(60, 'todays_deal_product_box_style', '2'),
(61, 'no_of_deal_products', '8');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` longtext DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `address1` longtext DEFAULT NULL,
  `address2` longtext DEFAULT NULL,
  `city` longtext DEFAULT NULL,
  `zip` longtext DEFAULT NULL,
  `langlat` varchar(100) DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `fb_id` longtext DEFAULT NULL,
  `g_id` varchar(50) DEFAULT NULL,
  `g_photo` longtext DEFAULT NULL,
  `creation_date` longtext DEFAULT NULL,
  `google_plus` longtext DEFAULT NULL,
  `skype` longtext DEFAULT NULL,
  `facebook` longtext DEFAULT NULL,
  `wishlist` longtext DEFAULT NULL,
  `last_login` varchar(50) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'default',
  `user_type_till` varchar(200) DEFAULT NULL,
  `left_product_type` varchar(5000) NOT NULL DEFAULT '[]',
  `downloads` varchar(10000) NOT NULL DEFAULT '[]',
  `country` longtext DEFAULT NULL,
  `state` longtext DEFAULT NULL,
  `wallet` varchar(1000) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `package_info` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `user_type`, `user_type_till`, `left_product_type`, `downloads`, `country`, `state`, `wallet`, `product_upload`, `package_info`) VALUES
(26, 'jose', 'polanco', 'joseandres_pj@hotmail.es', '937199302', 'av villareal 401', 'av villareal 401', 'Trujillo', '13001', '(-8.094920199999999, -79.0142616)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1593422142', '', '', '', '[\"231\"]', '1606346751', 'default', NULL, '[]', '[]', 'Perú', 'La Libertad', 'MjE=', 2, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `user_rating`
--

CREATE TABLE `user_rating` (
  `rating_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `address1` longtext DEFAULT NULL,
  `address2` longtext DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `membership` varchar(50) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `approve_timestamp` int(20) DEFAULT NULL,
  `member_timestamp` int(20) DEFAULT NULL,
  `member_expire_timestamp` int(11) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `last_login` int(20) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `google_plus` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pinterest` varchar(300) DEFAULT NULL,
  `stripe_details` varchar(500) DEFAULT NULL,
  `paypal_email` varchar(200) DEFAULT NULL,
  `preferred_payment` varchar(100) DEFAULT NULL,
  `cash_set` varchar(20) DEFAULT NULL,
  `stripe_set` varchar(20) DEFAULT NULL,
  `paypal_set` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `keywords` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `lat_lang` varchar(300) NOT NULL DEFAULT '(0,0)',
  `country` longtext DEFAULT NULL,
  `city` longtext DEFAULT NULL,
  `zip` longtext DEFAULT NULL,
  `state` longtext DEFAULT NULL,
  `c2_set` varchar(20) DEFAULT NULL,
  `c2_user` longtext DEFAULT NULL,
  `c2_secret` longtext DEFAULT NULL,
  `vp_set` varchar(50) DEFAULT NULL,
  `vp_merchant_id` varchar(500) DEFAULT NULL,
  `pum_set` varchar(20) DEFAULT NULL,
  `pum_merchant_key` varchar(500) DEFAULT NULL,
  `pum_merchant_salt` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_invoice`
--

CREATE TABLE `vendor_invoice` (
  `vendor_invoice_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_load`
--

CREATE TABLE `wallet_load` (
  `wallet_load_id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `amount` varchar(1000) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `timestamp` varchar(100) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `bundle_stock`
--
ALTER TABLE `bundle_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`business_settings_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`contact_message_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `currency_settings`
--
ALTER TABLE `currency_settings`
  ADD PRIMARY KEY (`currency_settings_id`);

--
-- Indexes for table `customer_product`
--
ALTER TABLE `customer_product`
  ADD PRIMARY KEY (`customer_product_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`language_list_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membership_id`);

--
-- Indexes for table `membership_payment`
--
ALTER TABLE `membership_payment`
  ADD PRIMARY KEY (`membership_payment_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `package_payment`
--
ALTER TABLE `package_payment`
  ADD PRIMARY KEY (`package_payment_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_affiliation`
--
ALTER TABLE `product_affiliation`
  ADD PRIMARY KEY (`product_affiliation_id`);

--
-- Indexes for table `product_affiliation_code_use`
--
ALTER TABLE `product_affiliation_code_use`
  ADD PRIMARY KEY (`product_affiliation_code_use_id`);

--
-- Indexes for table `product_affiliation_points_total`
--
ALTER TABLE `product_affiliation_points_total`
  ADD PRIMARY KEY (`product_affiliation_points_total_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `slider_style`
--
ALTER TABLE `slider_style`
  ADD PRIMARY KEY (`slider_style_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slides_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`social_links_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`ticket_message_id`);

--
-- Indexes for table `ui_settings`
--
ALTER TABLE `ui_settings`
  ADD PRIMARY KEY (`ui_settings_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_rating`
--
ALTER TABLE `user_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
  ADD PRIMARY KEY (`vendor_invoice_id`);

--
-- Indexes for table `wallet_load`
--
ALTER TABLE `wallet_load`
  ADD PRIMARY KEY (`wallet_load_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `bundle_stock`
--
ALTER TABLE `bundle_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `business_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `contact_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_settings`
--
ALTER TABLE `currency_settings`
  MODIFY `currency_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer_product`
--
ALTER TABLE `customer_product`
  MODIFY `customer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1603;

--
-- AUTO_INCREMENT for table `language_list`
--
ALTER TABLE `language_list`
  MODIFY `language_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `membership_payment`
--
ALTER TABLE `membership_payment`
  MODIFY `membership_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `package_payment`
--
ALTER TABLE `package_payment`
  MODIFY `package_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `product_affiliation`
--
ALTER TABLE `product_affiliation`
  MODIFY `product_affiliation_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_affiliation_code_use`
--
ALTER TABLE `product_affiliation_code_use`
  MODIFY `product_affiliation_code_use_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_affiliation_points_total`
--
ALTER TABLE `product_affiliation_points_total`
  MODIFY `product_affiliation_points_total_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider_style`
--
ALTER TABLE `slider_style`
  MODIFY `slider_style_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slides_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `social_links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ui_settings`
--
ALTER TABLE `ui_settings`
  MODIFY `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_rating`
--
ALTER TABLE `user_rating`
  MODIFY `rating_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
  MODIFY `vendor_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wallet_load`
--
ALTER TABLE `wallet_load`
  MODIFY `wallet_load_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
