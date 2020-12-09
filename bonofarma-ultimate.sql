-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 08:43 PM
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
(1, 'Alexander', '', '', 'alex@bonofarma.ga', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1574537538'),
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
(282, 'PAMPERS', NULL, 'brand_282.png'),
(283, 'MEDIFARM', NULL, 'brand_283.'),
(284, 'ABBOTT', NULL, 'brand_284.'),
(285, 'ABL PHAR', NULL, 'brand_285.'),
(286, 'ABLPHARM', NULL, 'brand_286.'),
(287, 'AC FARMA', NULL, 'brand_287.'),
(288, 'ALKHOFAR', NULL, 'brand_288.'),
(289, 'ALKOFAR', NULL, 'brand_289.'),
(290, 'ALKOFARM', NULL, 'brand_290.'),
(291, 'ALKOMED', NULL, 'brand_291.'),
(292, 'ALPHARMA', NULL, 'brand_292.'),
(293, 'AMERICA ', NULL, 'brand_293.'),
(294, 'ANDREU', NULL, 'brand_294.'),
(295, 'APROPO', NULL, 'brand_295.'),
(296, 'AQD MEDI', NULL, 'brand_296.'),
(297, 'AVAL HAN', NULL, 'brand_297.'),
(298, 'AXON', NULL, 'brand_298.'),
(299, 'BAGO', NULL, 'brand_299.'),
(300, 'BARIOSKA', NULL, 'brand_300.'),
(301, 'BAXTER', NULL, 'brand_301.'),
(302, 'BAYER', NULL, 'brand_302.'),
(303, 'BEL NATU', NULL, 'brand_303.'),
(304, 'BEXIMCO ', NULL, 'brand_304.'),
(305, 'BLAMAC', NULL, 'brand_305.'),
(306, 'BIOTECH', NULL, 'brand_306.'),
(307, 'BONOFARM', NULL, 'brand_307.'),
(308, 'BONAPHAR', NULL, 'brand_308.'),
(309, 'BOEHRING', NULL, 'brand_309.'),
(310, 'BRAUN', NULL, 'brand_310.'),
(311, 'CHANGZHO', NULL, 'brand_311.'),
(312, 'CIFARMA', NULL, 'brand_312.'),
(313, 'CIPA', NULL, 'brand_313.'),
(314, 'COASPHAR', NULL, 'brand_314.'),
(315, 'COLGATE ', NULL, 'brand_315.'),
(316, 'COASFARM', NULL, 'brand_316.'),
(317, 'CORPORAC', NULL, 'brand_317.'),
(318, 'DANY', NULL, 'brand_318.'),
(319, 'DELEOS', NULL, 'brand_319.'),
(320, 'DELFARMA', NULL, 'brand_320.'),
(321, 'DLEOS', NULL, 'brand_321.'),
(322, 'D\'LEOS', NULL, 'brand_322.'),
(323, 'DRONNVEL', NULL, 'brand_323.'),
(324, 'DRONNVEL', NULL, 'brand_324.'),
(325, 'EUROFARM', NULL, 'brand_325.'),
(326, 'EFILA SA', NULL, 'brand_326.'),
(327, 'FARMINDU', NULL, 'brand_327.'),
(328, 'FAES FAR', NULL, 'brand_328.'),
(329, 'FAMILI D', NULL, 'brand_329.'),
(330, 'GABBLAN', NULL, 'brand_330.'),
(331, 'FARVET', NULL, 'brand_331.'),
(332, 'G & G', NULL, 'brand_332.'),
(333, 'GARDEN H', NULL, 'brand_333.'),
(334, 'GALENO', NULL, 'brand_334.'),
(335, 'GENFAR', NULL, 'brand_335.'),
(336, 'GENCOPHA', NULL, 'brand_336.'),
(337, 'GEDEON R', NULL, 'brand_337.'),
(338, 'GENOMMA', NULL, 'brand_338.'),
(339, 'GLAXO SM', NULL, 'brand_339.'),
(340, 'GENTS', NULL, 'brand_340.'),
(341, 'GLICI', NULL, 'brand_341.'),
(342, 'GRUPO FA', NULL, 'brand_342.'),
(343, 'HERSIL', NULL, 'brand_343.'),
(344, 'HENO DE ', NULL, 'brand_344.'),
(345, 'HUGGIES', NULL, 'brand_345.'),
(346, 'INDUFAR', NULL, 'brand_346.'),
(347, 'INDUQUIM', NULL, 'brand_347.'),
(348, 'IQ MEDIC', NULL, 'brand_348.'),
(349, 'INTAS PH', NULL, 'brand_349.'),
(350, 'IQFARMA', NULL, 'brand_350.'),
(351, 'IQMED', NULL, 'brand_351.'),
(352, 'ISANA', NULL, 'brand_352.'),
(353, 'ISCO SER', NULL, 'brand_353.'),
(354, 'J.H.R', NULL, 'brand_354.'),
(355, 'JENFARMA', NULL, 'brand_355.'),
(356, 'JOHNS BA', NULL, 'brand_356.'),
(357, 'JOHNSON ', NULL, 'brand_357.'),
(358, 'JPS', NULL, 'brand_358.'),
(359, 'KIMBERLY', NULL, 'brand_359.'),
(360, 'LABOFAR', NULL, 'brand_360.'),
(361, 'LABORATO', NULL, 'brand_361.'),
(362, 'LABOGEN', NULL, 'brand_362.'),
(363, 'LABOT', NULL, 'brand_363.'),
(364, 'LAFAR', NULL, 'brand_364.'),
(365, 'LAFARMED', NULL, 'brand_365.'),
(366, 'LAFARPE', NULL, 'brand_366.'),
(367, 'LANMAN &', NULL, 'brand_367.'),
(368, 'LANSIER', NULL, 'brand_368.'),
(369, 'LECLER', NULL, 'brand_369.'),
(370, 'LEE MARK', NULL, 'brand_370.'),
(371, 'LIPHARMA', NULL, 'brand_371.'),
(372, 'LUCERITO', NULL, 'brand_372.'),
(373, 'LUSA', NULL, 'brand_373.'),
(374, 'LUXOR', NULL, 'brand_374.'),
(375, 'LYAFARM', NULL, 'brand_375.'),
(376, 'MAGMA', NULL, 'brand_376.'),
(377, 'MARCAHUA', NULL, 'brand_377.'),
(378, 'MARKOS', NULL, 'brand_378.'),
(379, 'MAVER', NULL, 'brand_379.'),
(380, 'MEDCO', NULL, 'brand_380.'),
(381, 'MEDIDERM', NULL, 'brand_381.'),
(382, 'MEDIFARM', NULL, 'brand_382.'),
(383, 'MEDROCK', NULL, 'brand_383.'),
(384, 'MERCK', NULL, 'brand_384.'),
(385, 'NATURA L', NULL, 'brand_385.'),
(386, 'NATURAGE', NULL, 'brand_386.'),
(387, 'MKT PHAR', NULL, 'brand_387.'),
(389, 'NIPRO', NULL, 'brand_389.'),
(390, 'OBLONGAS', NULL, 'brand_390.'),
(391, 'OQPHARMA', NULL, 'brand_391.'),
(392, 'OTROS', NULL, 'brand_392.'),
(393, 'P&G', NULL, 'brand_393.'),
(394, 'PERSONAL', NULL, 'brand_394.'),
(395, 'PERUANO ', NULL, 'brand_395.'),
(396, 'PFIZER', NULL, 'brand_396.'),
(397, 'PHARMAGE', NULL, 'brand_397.'),
(398, 'PHARMED ', NULL, 'brand_398.'),
(399, 'PLUS COS', NULL, 'brand_399.'),
(400, 'POPULARE', NULL, 'brand_400.'),
(401, 'PORTUGAL', NULL, 'brand_401.'),
(402, 'PROCTER ', NULL, 'brand_402.'),
(403, 'PROTISA', NULL, 'brand_403.'),
(404, 'QMEDIC', NULL, 'brand_404.'),
(405, 'QUILAB', NULL, 'brand_405.'),
(406, 'REUTER', NULL, 'brand_406.'),
(407, 'REXONA', NULL, 'brand_407.'),
(408, 'ROCHE', NULL, 'brand_408.'),
(409, 'ROEMMERS', NULL, 'brand_409.'),
(410, 'ROXFARMA', NULL, 'brand_410.'),
(411, 'SANOFI A', NULL, 'brand_411.'),
(412, 'SCHICK', NULL, 'brand_412.'),
(413, 'SCHWARZK', NULL, 'brand_413.'),
(414, 'SENOSIAI', NULL, 'brand_414.'),
(415, 'SHERFARM', NULL, 'brand_415.'),
(416, 'SHERIFAR', NULL, 'brand_416.'),
(417, 'SIEGFRIE', NULL, 'brand_417.'),
(418, 'SOFIFARM', NULL, 'brand_418.'),
(419, 'STERILLA', NULL, 'brand_419.'),
(420, 'TAIAN CH', NULL, 'brand_420.'),
(421, 'TECNOFAR', NULL, 'brand_421.'),
(422, 'TERBOL', NULL, 'brand_422.'),
(423, 'TEVA PER', NULL, 'brand_423.'),
(424, 'THEFAR', NULL, 'brand_424.'),
(425, 'TRIFARMA', NULL, 'brand_425.'),
(426, 'TUINIES', NULL, 'brand_426.'),
(427, 'UNILEVER', NULL, 'brand_427.'),
(428, 'VARIOS', NULL, 'brand_428.'),
(429, 'VENOJET', NULL, 'brand_429.'),
(430, 'VICK', NULL, 'brand_430.'),
(431, 'VID NATU', NULL, 'brand_431.'),
(432, 'VIFARMA', NULL, 'brand_432.'),
(433, 'VITALINE', NULL, 'brand_433.'),
(434, 'VITALIS', NULL, 'brand_434.'),
(435, 'YOBEL', NULL, 'brand_435.'),
(436, 'DROGUERI', NULL, 'brand_436.');

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
(11, 'faqs', '', '[{\"question\":\"\\u00bfQu\\u00e9 es Bonofarma?\",\"answer\":\"<div>Somos una Farmacia comercializadora de medicamentos y productos de higiene, de cuidado personal y de belleza.<\\/div>\"},{\"question\":\"\\u00bfQu\\u00e9 es lo que se puede hacer en la p\\u00e1gina?\",\"answer\":\"<p>A trav\\u00e9s de esta p\\u00e1gina, las personas podr\\u00e1n realizar sus pedidos farmac\\u00e9uticos desde la comodidad de su casa evitando as\\u00ed la proliferaci\\u00f3n del virus.<br><\\/p>\"},{\"question\":\"\\u00bfPor qu\\u00e9 lo hacen?\",\"answer\":\"<p>Para contribuir al cuidado de la salud de las personas que hacen largas colas esperando para ser atendidas en el establecimiento. Pudiendo recibir el pedido en su casa o recogerlo en la farmacia.<br><\\/p>\"}]'),
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
(29, 'Medicamentos', NULL, NULL, 'category_29.png', '275:::NIVEA;;;;;;276:::ORAL B;;;;;;277:::JOHNSON\'S ;;;;;;278:::DUREX;;;;;;279:::GILLETTE;;;;;;280:::SUAVE;;;;;;281:::LISTERINE;;;;;;282:::PAMPERS;;;;;;283:::MEDIFARM;;;;;;284:::ABBOTT;;;;;;285:::ABL PHAR;;;;;;286:::ABLPHARM;;;;;;287:::AC FARMA;;;;;;288:::ALKHOFAR;;;;;;289:::ALKOFAR;;;;;;290:::ALKOFARM;;;;;;291:::ALKOMED;;;;;;292:::ALPHARMA;;;;;;293:::AMERICA ;;;;;;294:::ANDREU;;;;;;295:::APROPO;;;;;;296:::AQD MEDI;;;;;;297:::AVAL HAN;;;;;;298:::AXON;;;;;;299:::BAGO;;;;;;300:::BARIOSKA;;;;;;301:::BAXTER;;;;;;302:::BAYER;;;;;;303:::BEL NATU;;;;;;304:::BEXIMCO ;;;;;;305:::BLAMAC;;;;;;306:::BIOTECH;;;;;;307:::BONOFARM;;;;;;308:::BONAPHAR;;;;;;309:::BOEHRING;;;;;;310:::BRAUN;;;;;;311:::CHANGZHO;;;;;;312:::CIFARMA;;;;;;313:::CIPA;;;;;;314:::COASPHAR;;;;;;315:::COLGATE ;;;;;;316:::COASFARM;;;;;;317:::CORPORAC;;;;;;318:::DANY;;;;;;319:::DELEOS;;;;;;320:::DELFARMA;;;;;;321:::DLEOS;;;;;;322:::D\'LEOS;;;;;;323:::DRONNVEL;;;;;;324:::DRONNVEL;;;;;;325:::EUROFARM;;;;;;326:::EFILA SA;;;;;;327:::FARMINDU;;;;;;328:::FAES FAR;;;;;;329:::FAMILI D;;;;;;330:::GABBLAN;;;;;;331:::FARVET;;;;;;332:::G & G;;;;;;333:::GARDEN H;;;;;;334:::GALENO;;;;;;335:::GENFAR;;;;;;336:::GENCOPHA;;;;;;337:::GEDEON R;;;;;;338:::GENOMMA;;;;;;339:::GLAXO SM;;;;;;340:::GENTS;;;;;;341:::GLICI;;;;;;342:::GRUPO FA;;;;;;343:::HERSIL;;;;;;344:::HENO DE ;;;;;;345:::HUGGIES;;;;;;346:::INDUFAR;;;;;;347:::INDUQUIM;;;;;;348:::IQ MEDIC;;;;;;349:::INTAS PH;;;;;;350:::IQFARMA;;;;;;351:::IQMED;;;;;;352:::ISANA;;;;;;353:::ISCO SER;;;;;;354:::J.H.R;;;;;;355:::JENFARMA;;;;;;356:::JOHNS BA;;;;;;357:::JOHNSON ;;;;;;358:::JPS;;;;;;359:::KIMBERLY;;;;;;360:::LABOFAR;;;;;;361:::LABORATO;;;;;;362:::LABOGEN;;;;;;363:::LABOT;;;;;;364:::LAFAR;;;;;;365:::LAFARMED;;;;;;366:::LAFARPE;;;;;;367:::LANMAN &;;;;;;368:::LANSIER;;;;;;369:::LECLER;;;;;;370:::LEE MARK;;;;;;371:::LIPHARMA;;;;;;372:::LUCERITO;;;;;;373:::LUSA;;;;;;374:::LUXOR;;;;;;375:::LYAFARM;;;;;;376:::MAGMA;;;;;;377:::MARCAHUA;;;;;;378:::MARKOS;;;;;;379:::MAVER;;;;;;380:::MEDCO;;;;;;381:::MEDIDERM;;;;;;382:::MEDIFARM;;;;;;383:::MEDROCK;;;;;;384:::MERCK;;;;;;385:::NATURA L;;;;;;386:::NATURAGE;;;;;;387:::MKT PHAR;;;;;;389:::NIPRO;;;;;;390:::OBLONGAS;;;;;;391:::OQPHARMA;;;;;;392:::OTROS;;;;;;393:::P&G;;;;;;394:::PERSONAL;;;;;;395:::PERUANO ;;;;;;396:::PFIZER;;;;;;397:::PHARMAGE;;;;;;398:::PHARMED ;;;;;;399:::PLUS COS;;;;;;400:::POPULARE;;;;;;401:::PORTUGAL;;;;;;402:::PROCTER ;;;;;;403:::PROTISA;;;;;;404:::QMEDIC;;;;;;405:::QUILAB;;;;;;406:::REUTER;;;;;;407:::REXONA;;;;;;408:::ROCHE;;;;;;409:::ROEMMERS;;;;;;410:::ROXFARMA;;;;;;411:::SANOFI A;;;;;;412:::SCHICK;;;;;;413:::SCHWARZK;;;;;;414:::SENOSIAI;;;;;;415:::SHERFARM;;;;;;416:::SHERIFAR;;;;;;417:::SIEGFRIE;;;;;;418:::SOFIFARM;;;;;;419:::STERILLA;;;;;;420:::TAIAN CH;;;;;;421:::TECNOFAR;;;;;;422:::TERBOL;;;;;;423:::TEVA PER;;;;;;424:::THEFAR;;;;;;425:::TRIFARMA;;;;;;426:::TUINIES;;;;;;427:::UNILEVER;;;;;;428:::VARIOS;;;;;;429:::VENOJET;;;;;;430:::VICK;;;;;;431:::VID NATU;;;;;;432:::VIFARMA;;;;;;433:::VITALINE;;;;;;434:::VITALIS;;;;;;435:::YOBEL;;;;;;436:::DROGUERI', '', '[{\"sub_id\":\"126\",\"sub_name\":\"Medicamento\",\"min\":0,\"max\":105,\"brands\":\"275:::NIVEA;;;;;;276:::ORAL B;;;;;;277:::JOHNSON S ;;;;;;278:::DUREX;;;;;;279:::GILLETTE;;;;;;280:::SUAVE;;;;;;281:::LISTERINE;;;;;;282:::PAMPERS;;;;;;283:::MEDIFARM;;;;;;284:::ABBOTT;;;;;;285:::ABL PHAR;;;;;;286:::ABLPHARM;;;;;;287:::AC FARMA;;;;;;288:::ALKHOFAR;;;;;;289:::ALKOFAR;;;;;;290:::ALKOFARM;;;;;;291:::ALKOMED;;;;;;292:::ALPHARMA;;;;;;293:::AMERICA ;;;;;;294:::ANDREU;;;;;;295:::APROPO;;;;;;296:::AQD MEDI;;;;;;297:::AVAL HAN;;;;;;298:::AXON;;;;;;299:::BAGO;;;;;;300:::BARIOSKA;;;;;;301:::BAXTER;;;;;;302:::BAYER;;;;;;303:::BEL NATU;;;;;;304:::BEXIMCO ;;;;;;305:::BLAMAC;;;;;;306:::BIOTECH;;;;;;307:::BONOFARM;;;;;;308:::BONAPHAR;;;;;;309:::BOEHRING;;;;;;310:::BRAUN;;;;;;311:::CHANGZHO;;;;;;312:::CIFARMA;;;;;;313:::CIPA;;;;;;314:::COASPHAR;;;;;;315:::COLGATE ;;;;;;316:::COASFARM;;;;;;317:::CORPORAC;;;;;;318:::DANY;;;;;;319:::DELEOS;;;;;;320:::DELFARMA;;;;;;321:::DLEOS;;;;;;322:::D LEOS;;;;;;323:::DRONNVEL;;;;;;324:::DRONNVEL;;;;;;325:::EUROFARM;;;;;;326:::EFILA SA;;;;;;327:::FARMINDU;;;;;;328:::FAES FAR;;;;;;329:::FAMILI D;;;;;;330:::GABBLAN;;;;;;331:::FARVET;;;;;;332:::G & G;;;;;;333:::GARDEN H;;;;;;334:::GALENO;;;;;;335:::GENFAR;;;;;;336:::GENCOPHA;;;;;;337:::GEDEON R;;;;;;338:::GENOMMA;;;;;;339:::GLAXO SM;;;;;;340:::GENTS;;;;;;341:::GLICI;;;;;;342:::GRUPO FA;;;;;;343:::HERSIL;;;;;;344:::HENO DE ;;;;;;345:::HUGGIES;;;;;;346:::INDUFAR;;;;;;347:::INDUQUIM;;;;;;348:::IQ MEDIC;;;;;;349:::INTAS PH;;;;;;350:::IQFARMA;;;;;;351:::IQMED;;;;;;352:::ISANA;;;;;;353:::ISCO SER;;;;;;354:::J.H.R;;;;;;355:::JENFARMA;;;;;;356:::JOHNS BA;;;;;;357:::JOHNSON ;;;;;;358:::JPS;;;;;;359:::KIMBERLY;;;;;;360:::LABOFAR;;;;;;361:::LABORATO;;;;;;362:::LABOGEN;;;;;;363:::LABOT;;;;;;364:::LAFAR;;;;;;365:::LAFARMED;;;;;;366:::LAFARPE;;;;;;367:::LANMAN &;;;;;;368:::LANSIER;;;;;;369:::LECLER;;;;;;370:::LEE MARK;;;;;;371:::LIPHARMA;;;;;;372:::LUCERITO;;;;;;373:::LUSA;;;;;;374:::LUXOR;;;;;;375:::LYAFARM;;;;;;376:::MAGMA;;;;;;377:::MARCAHUA;;;;;;378:::MARKOS;;;;;;379:::MAVER;;;;;;380:::MEDCO;;;;;;381:::MEDIDERM;;;;;;382:::MEDIFARM;;;;;;383:::MEDROCK;;;;;;384:::MERCK;;;;;;385:::NATURA L;;;;;;386:::NATURAGE;;;;;;387:::MKT PHAR;;;;;;389:::NIPRO;;;;;;390:::OBLONGAS;;;;;;391:::OQPHARMA;;;;;;392:::OTROS;;;;;;393:::P&G;;;;;;394:::PERSONAL;;;;;;395:::PERUANO ;;;;;;396:::PFIZER;;;;;;397:::PHARMAGE;;;;;;398:::PHARMED ;;;;;;399:::PLUS COS;;;;;;400:::POPULARE;;;;;;401:::PORTUGAL;;;;;;402:::PROCTER ;;;;;;403:::PROTISA;;;;;;404:::QMEDIC;;;;;;405:::QUILAB;;;;;;406:::REUTER;;;;;;407:::REXONA;;;;;;408:::ROCHE;;;;;;409:::ROEMMERS;;;;;;410:::ROXFARMA;;;;;;411:::SANOFI A;;;;;;412:::SCHICK;;;;;;413:::SCHWARZK;;;;;;414:::SENOSIAI;;;;;;415:::SHERFARM;;;;;;416:::SHERIFAR;;;;;;417:::SIEGFRIE;;;;;;418:::SOFIFARM;;;;;;419:::STERILLA;;;;;;420:::TAIAN CH;;;;;;421:::TECNOFAR;;;;;;422:::TERBOL;;;;;;423:::TEVA PER;;;;;;424:::THEFAR;;;;;;425:::TRIFARMA;;;;;;426:::TUINIES;;;;;;427:::UNILEVER;;;;;;428:::VARIOS;;;;;;429:::VENOJET;;;;;;430:::VICK;;;;;;431:::VID NATU;;;;;;432:::VIFARMA;;;;;;433:::VITALINE;;;;;;434:::VITALIS;;;;;;435:::YOBEL;;;;;;436:::DROGUERI\"}]'),
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
('1oa1jtkr4od9qjjbum3hfucl4e400opv', '2.57.122.186', 1607493775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373439333737343b63757272656e63797c733a323a223237223b),
('3fdttgccrme6f5fsb6kb77lsu0qq9kd0', '91.241.19.84', 1607527678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373532373637373b63757272656e63797c733a323a223237223b),
('4u3h6roiv0e3sa7haa5e8gng30bs6u75', '51.159.31.121', 1607518900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373531383839393b63757272656e63797c733a323a223237223b),
('5034gah0n7f92cjf3el7og816r33r093', '51.15.21.205', 1607530294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533303239333b63757272656e63797c733a323a223237223b),
('5ts2n6o32pcqpr8m849i20t03onqnbt3', '91.241.19.84', 1607527681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373532373637383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('61srjk8lm4cft9v0l0c02bnmbahmh85r', '23.129.64.181', 1607534207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533343230343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('67ejnb5lpk19mp49ujujta170oje70vb', '74.120.14.54', 1607514131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373531343132383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('6l39q1969unvq5k1u382ifatsieqt0ak', '162.158.225.146', 1607542904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373534323736373b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a373a22506f6c616e636f223b7469746c657c733a353a2261646d696e223b),
('7hnessbobutj4ml9adt2ripev2o7kmto', '154.211.7.5', 1607481891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373438313839303b63757272656e63797c733a323a223237223b),
('8aij4cv4rm83e48e80vi1f0pap8kbls3', '::1', 1607141881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373134303230333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a373a22506f6c616e636f223b7469746c657c733a353a2261646d696e223b73656172636865645f6361747c733a323a223239223b757365725f6c6f67696e7c733a333a22796573223b757365725f69647c733a323a223236223b757365725f6e616d657c733a343a226a6f7365223b),
('8bca0n042dotl885n21hr6julls2dbn3', '128.14.134.170', 1607538492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533383438393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('950qoj1oiijg17nl7sq5k9akskn3ch50', '162.158.225.132', 1607539899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533333637333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630373533353231313b7375726665725f696e666f7c733a3330383a227b22737461747573223a2273756363657373222c22636f756e747279223a224368696c65222c22636f756e747279436f6465223a22434c222c22726567696f6e223a22524d222c22726567696f6e4e616d65223a2253616e746961676f204d6574726f706f6c6974616e222c2263697479223a2253616e746961676f222c227a6970223a223334303333222c226c6174223a2d33332e343531332c226c6f6e223a2d37302e363635332c2274696d657a6f6e65223a22416d65726963612f53616e746961676f222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223136322e3135382e3232352e313332227d223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a373a22506f6c616e636f223b7469746c657c733a353a2261646d696e223b),
('95o633bqplov04v511s0fkdptntneigt', '59.52.179.86', 1607542275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373534323237323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('9948sct10oeibrftnkht4hnqepbpaf0d', '51.159.31.121', 1607516869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373531363836363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('9brot06s5uksutmjvdmss7d41lebetkr', '23.129.64.181', 1607534214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533343231333b63757272656e63797c733a323a223237223b),
('a2spbouslkh4vbkcejid2ic4603eghp0', '59.52.102.196', 1607542279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373534323237363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('aoclp91vcoe9l97mgv3avmej3bvj9102', '51.75.214.178', 1607516374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373531363337333b63757272656e63797c733a323a223237223b),
('b4q4n0747b7jgl2eo9s8bj00cjn31eu7', '39.96.139.158', 1607507556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373530373535343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('bca75sgm05m7k59ji5q9tl261dbsjmgt', '23.129.64.181', 1607534211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533343231303b63757272656e63797c733a323a223237223b),
('cljtan2dk9sq2g0qgdutt0nstfbfpoif', '91.241.19.84', 1607527675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373532373637343b63757272656e63797c733a323a223237223b),
('cvp8a54gqve1okm5un548mpd10hdqnbd', '51.159.31.121', 1607519409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373531393430383b63757272656e63797c733a323a223237223b),
('eflk13phohrnktq4rokccn55foogapg9', '118.89.65.15', 1607490299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373439303239363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('hnh5mo6kftvj1mmnrl56e5k1k58c8ios', '2.57.122.186', 1607484250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373438343234393b63757272656e63797c733a323a223237223b),
('ho7cifda0mv4dofkeqe6g7pngnl3d4cc', '91.241.19.84', 1607527673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373532373637323b63757272656e63797c733a323a223237223b),
('i2fl9mbc5c1sd6hnk6jkp35s5grk2tiv', '154.211.7.5', 1607481893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373438313839323b63757272656e63797c733a323a223237223b),
('i86cu89g5adsn9eco361ijp2i0fd0np6', '128.14.134.170', 1607492725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373439323732323b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('j19cika83og95b2if48gmim9l9j12vj0', '69.162.83.246', 1607511900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373531313839393b63757272656e63797c733a323a223237223b),
('jemtak5bkpm2efi1f2t34n78ekugentr', '162.158.225.166', 1607482974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373437363031373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630373437363131333b7375726665725f696e666f7c733a3330383a227b22737461747573223a2273756363657373222c22636f756e747279223a224368696c65222c22636f756e747279436f6465223a22434c222c22726567696f6e223a22524d222c22726567696f6e4e616d65223a2253616e746961676f204d6574726f706f6c6974616e222c2263697479223a2253616e746961676f222c227a6970223a223334303333222c226c6174223a2d33332e343531332c226c6f6e223a2d37302e363635332c2274696d657a6f6e65223a22416d65726963612f53616e746961676f222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223136322e3135382e3232352e313636227d223b),
('jg9mdrp1nbv67dfi4fekpi9nfg04hkhm', '69.162.83.246', 1607517967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373531373936363b63757272656e63797c733a323a223237223b),
('jr715jril7aptgb2dpl0a8top036b5rp', '91.241.19.84', 1607527677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373532373637343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('k2e2i7hqglncknufnl12pghk0lrbv025', '39.107.178.184', 1607505087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373530353038343b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('khh1oubvdpg9buu2uvmjhbad49s1bqev', '71.6.232.4', 1607482630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373438323632373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('kq6s9s13rjo03lv70878gkb7c1m758rv', '74.120.14.54', 1607514128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373531343132353b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('krgh962i98220ph0b12jap49mm5gl69a', '23.129.64.181', 1607534205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533343230343b63757272656e63797c733a323a223237223b),
('ljrspv3lf5h64bf79rnql82uvsgo0j1b', '118.89.65.15', 1607490290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373439303238393b63757272656e63797c733a323a223237223b),
('lvoigm5u712r1ci0ppornq4v78p31ni1', '60.251.123.1', 1607541834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373534313833333b63757272656e63797c733a323a223237223b),
('misp6epb1vlck8m9g3c3c414gtiunv9j', '51.159.31.121', 1607514811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373531343831303b63757272656e63797c733a323a223237223b),
('mr480hcm69qikcb24drtt7ltq00co73t', '162.158.225.132', 1607489536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373438333234373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b74696d657374616d707c693a313630373438383137353b7375726665725f696e666f7c733a3330383a227b22737461747573223a2273756363657373222c22636f756e747279223a224368696c65222c22636f756e747279436f6465223a22434c222c22726567696f6e223a22524d222c22726567696f6e4e616d65223a2253616e746961676f204d6574726f706f6c6974616e222c2263697479223a2253616e746961676f222c227a6970223a223334303333222c226c6174223a2d33332e343531332c226c6f6e223a2d37302e363635332c2274696d657a6f6e65223a22416d65726963612f53616e746961676f222c22697370223a22436c6f7564666c6172652c20496e632e222c226f7267223a22436c6f7564666c6172652c20496e632e222c226173223a224153313333333520436c6f7564666c6172652c20496e632e222c227175657279223a223136322e3135382e3232352e313332227d223b757365725f6c6f67696e7c733a333a22796573223b757365725f69647c733a323a223236223b757365725f6e616d657c733a343a226a6f7365223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a373a22506f6c616e636f223b7469746c657c733a353a2261646d696e223b),
('nluu18k56h6qq7259tkc41e761486dub', '23.129.64.181', 1607534212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533343230383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ntl8i24tflrk4haqm7rvaf7016otth1i', '2.57.122.186', 1607530196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533303139353b63757272656e63797c733a323a223237223b),
('o2bvb3eqvp3eb7t5bu61up408h3etr9o', '193.239.147.234', 1607503224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373530333232333b63757272656e63797c733a323a223237223b),
('o56dcnafg7f6tro8kq05vs5gou42esg8', '91.241.19.84', 1607523165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373532333136343b63757272656e63797c733a323a223237223b),
('oc22ftf1o13h6bjcti3j96e077acd5gr', '151.80.101.103', 1607542881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373534323837383b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('oobao4o7i1aq301vgojia0vsdg6inttc', '69.162.83.246', 1607516506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373531363530353b63757272656e63797c733a323a223237223b),
('oq6trogg9d1f63hnscrh6a2pd89jpgds', '91.241.19.84', 1607527682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373532373637393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('pm58p77ntetpbbb3107sokl4pspm7n88', '40.74.231.153', 1607486357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373438363335363b63757272656e63797c733a323a223237223b),
('qadp82iq6mobemcvjlj4gulqvi17d2dl', '118.89.65.15', 1607490288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373439303238373b63757272656e63797c733a323a223237223b),
('qtso57hi2d021utupq6965koh12tokja', '188.255.75.238', 1607532456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533323434393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('rr2epl9eau8pafp5hqeu3ljcchhkobkt', '209.17.96.58', 1607488276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373438383237333b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('s99hngtvj2jkrkf92873ag8qgfthbcp8', '160.39.192.165', 1607539013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533393031323b63757272656e63797c733a323a223237223b),
('sd2o51aa5c18aee1cipc0h866cetjh9a', '23.129.64.181', 1607534199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533343139363b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('sep3vudfvemn63in658geiuie1car2qn', '162.158.225.146', 1607491198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373439313139373b),
('sgtajacrkru5j0ovrpggd53o1gr9dsl4', '192.241.236.197', 1607505066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373530353036353b63757272656e63797c733a323a223237223b),
('t90cmdjg6q4hh2mvpfkjf8k0l5canvn5', '51.254.59.113', 1607478510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373437383530373b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('ung38ndb7smjbs2u18s2dp5kvhp11g7s', '162.158.225.178', 1607490382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373439303337393b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('utll3jtunn5nt1c7uk4t611aphhrs8sl', '120.200.183.4', 1607494382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373439343338303b63757272656e63797c733a323a223237223b636f6d706172657c733a323a225b5d223b),
('uv5rno7k1t0ntt15eqmth86g9htbrtb5', '::1', 1607140203, ''),
('vb0sr9na80qrip3jum1uq5ihpbqtp4qb', '91.241.19.84', 1607527674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373532373637333b63757272656e63797c733a323a223237223b);

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
(70, 'data_all_brands', '275:::NIVEA;;;;;;279:::GILLETTE;;;;;;278:::DUREX;;;;;;276:::ORAL B;;;;;;277:::JOHNSON\'S ;;;;;;281:::LISTERINE;;;;;;280:::SUAVE;;;;;;282:::PAMPERS;;;;;;283:::MEDIFARM;;;;;;284:::ABBOTT;;;;;;285:::ABL PHAR;;;;;;286:::ABLPHARM;;;;;;287:::AC FARMA;;;;;;288:::ALKHOFAR;;;;;;289:::ALKOFAR;;;;;;290:::ALKOFARM;;;;;;291:::ALKOMED;;;;;;292:::ALPHARMA;;;;;;293:::AMERICA ;;;;;;294:::ANDREU;;;;;;295:::APROPO;;;;;;296:::AQD MEDI;;;;;;297:::AVAL HAN;;;;;;298:::AXON;;;;;;299:::BAGO;;;;;;300:::BARIOSKA;;;;;;301:::BAXTER;;;;;;302:::BAYER;;;;;;303:::BEL NATU;;;;;;304:::BEXIMCO ;;;;;;305:::BLAMAC;;;;;;306:::BIOTECH;;;;;;307:::BONOFARM;;;;;;308:::BONAPHAR;;;;;;309:::BOEHRING;;;;;;310:::BRAUN;;;;;;311:::CHANGZHO;;;;;;312:::CIFARMA;;;;;;313:::CIPA;;;;;;314:::COASPHAR;;;;;;315:::COLGATE ;;;;;;316:::COASFARM;;;;;;317:::CORPORAC;;;;;;318:::DANY;;;;;;319:::DELEOS;;;;;;320:::DELFARMA;;;;;;321:::DLEOS;;;;;;322:::D\'LEOS;;;;;;323:::DRONNVEL;;;;;;324:::DRONNVEL;;;;;;325:::EUROFARM;;;;;;326:::EFILA SA;;;;;;327:::FARMINDU;;;;;;328:::FAES FAR;;;;;;329:::FAMILI D;;;;;;330:::GABBLAN;;;;;;331:::FARVET;;;;;;332:::G & G;;;;;;333:::GARDEN H;;;;;;334:::GALENO;;;;;;335:::GENFAR;;;;;;336:::GENCOPHA;;;;;;337:::GEDEON R;;;;;;338:::GENOMMA;;;;;;339:::GLAXO SM;;;;;;340:::GENTS;;;;;;341:::GLICI;;;;;;342:::GRUPO FA;;;;;;343:::HERSIL;;;;;;344:::HENO DE ;;;;;;345:::HUGGIES;;;;;;346:::INDUFAR;;;;;;347:::INDUQUIM;;;;;;348:::IQ MEDIC;;;;;;349:::INTAS PH;;;;;;350:::IQFARMA;;;;;;351:::IQMED;;;;;;352:::ISANA;;;;;;353:::ISCO SER;;;;;;354:::J.H.R;;;;;;355:::JENFARMA;;;;;;356:::JOHNS BA;;;;;;357:::JOHNSON ;;;;;;358:::JPS;;;;;;359:::KIMBERLY;;;;;;360:::LABOFAR;;;;;;361:::LABORATO;;;;;;362:::LABOGEN;;;;;;363:::LABOT;;;;;;364:::LAFAR;;;;;;365:::LAFARMED;;;;;;366:::LAFARPE;;;;;;367:::LANMAN &;;;;;;368:::LANSIER;;;;;;369:::LECLER;;;;;;370:::LEE MARK;;;;;;371:::LIPHARMA;;;;;;372:::LUCERITO;;;;;;373:::LUSA;;;;;;374:::LUXOR;;;;;;375:::LYAFARM;;;;;;376:::MAGMA;;;;;;377:::MARCAHUA;;;;;;378:::MARKOS;;;;;;379:::MAVER;;;;;;380:::MEDCO;;;;;;381:::MEDIDERM;;;;;;382:::MEDIFARM;;;;;;383:::MEDROCK;;;;;;384:::MERCK;;;;;;385:::NATURA L;;;;;;386:::NATURAGE;;;;;;387:::MKT PHAR;;;;;;389:::NIPRO;;;;;;390:::OBLONGAS;;;;;;391:::OQPHARMA;;;;;;392:::OTROS;;;;;;393:::P&G;;;;;;394:::PERSONAL;;;;;;395:::PERUANO ;;;;;;396:::PFIZER;;;;;;397:::PHARMAGE;;;;;;398:::PHARMED ;;;;;;399:::PLUS COS;;;;;;400:::POPULARE;;;;;;401:::PORTUGAL;;;;;;402:::PROCTER ;;;;;;403:::PROTISA;;;;;;404:::QMEDIC;;;;;;405:::QUILAB;;;;;;406:::REUTER;;;;;;407:::REXONA;;;;;;408:::ROCHE;;;;;;409:::ROEMMERS;;;;;;410:::ROXFARMA;;;;;;411:::SANOFI A;;;;;;412:::SCHICK;;;;;;413:::SCHWARZK;;;;;;414:::SENOSIAI;;;;;;415:::SHERFARM;;;;;;416:::SHERIFAR;;;;;;417:::SIEGFRIE;;;;;;418:::SOFIFARM;;;;;;419:::STERILLA;;;;;;420:::TAIAN CH;;;;;;421:::TECNOFAR;;;;;;422:::TERBOL;;;;;;423:::TEVA PER;;;;;;424:::THEFAR;;;;;;425:::TRIFARMA;;;;;;426:::TUINIES;;;;;;427:::UNILEVER;;;;;;428:::VARIOS;;;;;;429:::VENOJET;;;;;;430:::VICK;;;;;;431:::VID NATU;;;;;;432:::VIFARMA;;;;;;433:::VITALINE;;;;;;434:::VITALIS;;;;;;435:::YOBEL;;;;;;436:::DROGUERI'),
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
(12, '0', 'Documentation', 'Documentation', NULL, '[{\"size\":\"3\",\"type\":\"widget\",\"content\":\"<p><br><\\/p>\",\"widget\":\"product_categories\"},{\"size\":\"9\",\"type\":\"content\",\"content\":\"<h3><span style=\\\"background-color: transparent; color: rgb(0, 0, 0); font-family: Roboto; font-size: 14.6667px; font-weight: 700; text-decoration: underline; white-space: pre-wrap;\\\">Structure &amp; Information of Important Common Elements<\\/span><\\/h3><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Header<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-indent: 36pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We can divide the header into three major parts.<\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Top Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Top header contains the options for \\u201cLanguage Change\\u201d, \\u201cCurrency Change \\u201d, \\u201cFAQ\\u201d, \\u201cCustomer Login\\u201d, \\u201cCustomer Registration\\u201d &amp; \\u201cVendor Registration\\u201d.<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Middle Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Middle header contains admin uploaded &amp; selected \\u201chome page header logo\\u201d, \\u201csearch bar(product &amp; vendor based search)\\u201d, \\u201ccompare button (from where user can moved the all compared product list page)\\u201d &amp; \\u201ccart button(from where customer moved to checkout page.)\\u201d. &nbsp;<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Bottom Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Bottom Header contains the link for \\u201cHome page\\u201d, \\u201cAll categories(with all sub categories in dropdown)\\u201d, \\u201cFeatured product\\u201d, \\u201cToday\\u2019s deal\\u201d, \\u201cAll brands\\u201d, \\u201cAll vendors\\u201d, \\u201cStore locator\\u201d, \\u201ccontact\\u201d &amp; \\u201cMore(Admin created custom responsive page will be shown on dropdown)\\u201d. <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/header\\/header1.php<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Logo upload directory<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; logo &gt; upload logo &gt; change home page item &gt; top slider<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"2\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We designed three different types of \\u201cproduct box\\u201d for the frontend design to the aspection of making anyone\\u2019s site eye catching and to make difference which will reduce the necessity of custom design. One\\u2019s don\\u2019t need to have any coding knowledge for changing the design and structure. All three designed product box contain the same informations and data for better understand. Please follow the step by step instructions : &nbsp;<\\/span><\\/p><\\/li><\\/ol><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Image:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> This part for product image.After hovering the image \\u201cquick view\\u201d button will appear(where customer can view the short description of the &nbsp;product). <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><\\/ul><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Title:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Admin \\/ vendor uploaded product title has been shown is here. Click on product title ones can visit the product detail page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Price:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Admin \\/ vendor fixed product sale price will be shown in here &nbsp;(discounted amount should be deducted &amp; viewed in a smart graphics).<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Add to Cart:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> While customers \\/ users take a approach to purchase the chosen product they should click on \\u201cadd to cart\\u201d button for adding in the cart list.Cart list is available in the header(right top part) from where anyone can be moved to check out page with login. <\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Compare:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">For the same category wise product user can add the products in compare list by clicking on \\u201ccompare button\\u201d. Compared products showed in the top right part of the header.From here anyone can visit the compare page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Wish:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Any user can wish their products while they are logged in.Wished product log has been listed into the user profile.The wishlist button is available in the top header(right) part from where user can look upon his\\/her wished product list.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Vendor Name:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Vendor &nbsp;name will be shown in here.By clicking on the name ones can visit the vendor\\u2019s public profile.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Out of Stock:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If any product crossed the stock limit the product will be unavailable and the \\u201cout of stock\\u201d sticker viewed on the product box.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Discount:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">&nbsp;Any discounted product will have the \\u201cDiscount sticker\\u201d with the limitation of discounted amount or discounted percentage.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; home page &gt; select home page &gt; change home page item &gt; featured product\\/category wise product &gt; choose product box style.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">.<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><br><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"3\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Sidebar section : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Sidebar section contain the most advance search options like as category, sub category, brand and price range. Bottom of this section holds the special products such as popular, latest &amp; today\\u2019s deal products.<\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">. <\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"4\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><span class=\\\"Apple-tab-span\\\" style=\\\"white-space:pre;\\\">\\t<\\/span><\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">There are two parts of the footer.<\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer Top<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Top footer contains some options such as footer logo,subscription box categories links, page links, contact details,social media links.All elements sorted in four columns.Category &amp; text in footer has been managed by admin.<\\/span><\\/p><\\/li><\\/ul><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer Bottom <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">: <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">This portion contains the \\u201cdeveloper authority name\\u201d,\\u201dterms &amp; condition\\u201d,\\u201dprivacy policy\\u201d and \\u201cpayment gateway logo\\u201d<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; footer.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Structure &amp; Information of Home page<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Home page : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We designed two most conspicuous and absolutely customizable types of home with the utmost experience of qualified user interface perception for representing your eCommerce in a distinctive aspection.We splat the whole home page into several parts such as Layer slider , home top part , advance search area, featured product area, category wise products(for home page 1), category wise banner(for homepage 2), latest blogs (home page 1), special products (Latest products, Most sold, Most viewed product).All of these very specific portions is easily editable with having the options of enable\\/disable.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">admin(login) &gt; frontend settings &gt; display settings &gt; home page &gt; choose homepage &gt; change home page items.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(255, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">product box<\\/span><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">.<\\/span><br><\\/p>\",\"widget\":\"\"}]', NULL, NULL);

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
(231, 0, '0.00', '[]', 'Nastiflu', '{\"type\":\"admin\",\"id\":\"1\"}', 29, '                                                                                <p>Nastiflu antigripal<br></p>', 121, '1', '2.00', '1.50', '0.00', '1594154726', 'ok', '', 'ok', '0', NULL, 7, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 7, NULL, '0', 'percent', '18', 'percent', '[\"rgba(204,204,204,1)\"]', '[{\"no\":\"1\",\"title\":\"tipo\",\"name\":\"choice_1\",\"type\":\"single_select\",\"option\":[\"grande\",\"mediano\",\"chico\"]}]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1607047965, NULL, 'no', NULL),
(232, 0, '0.00', '[]', 'Shampoo HS', '{\"type\":\"admin\",\"id\":\"1\"}', 28, '                                        <p>Shampoo HS<br></p>', 120, '1', '23.00', '18.00', '1.00', '1594157222', 'ok', '', 'ok', '0', '276', 7, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '18', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(233, 0, '0.00', '[]', 'SHAMPOO JOHNSONS BABY AMARILLO 750ml', '{\"type\":\"admin\",\"id\":\"4\"}', 28, '<p><span xss=removed>El shampoo para bebe JOHNSON\'S baby pH Balanceado limpia eficazmente y con seguridad, sin resecar y sin dejar residuos. Tiene pH balanceado, y no contiene jabon ni alcohol, lo que lo hace suave con el cuero cabelludo. No produce ardor en los ojos y es suave con la piel del bebe.</span><br></p>', 124, '1', '35.00', '31.00', '', '1605139219', 'ok', '', 'ok', '0', '277', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(234, 0, '0.00', '[]', 'DUREX CONDONES SENSITIVO DELGADO', '{\"type\":\"admin\",\"id\":\"4\"}', 27, '<p class=\"lead\" xss=removed>Durex Sensitivo Delgado tienen forma anatómica y son más delgados para una mayor sensación.</p><div><br></div>', 123, '1', '4.50', '4.00', '', '1605139272', 'ok', '', 'ok', '0', '278', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(235, 0, '0.00', '[]', 'PRESTOBARBA 3 HOJAS GILLETTE ICE', '{\"type\":\"admin\",\"id\":\"4\"}', 28, '<p class=\"lead\" xss=removed>Ofrece una máxima comodidad al afeitarse con la mínima irritació³n de la pi­el.</p>', 124, '1', '10.50', '10.00', '', '1605139397', 'ok', '', 'ok', '0', '279', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(236, 0, '0.00', '[]', 'PAÑAL PAMPERS PREMIUM CARE M', '{\"type\":\"admin\",\"id\":\"4\"}', 32, '<p class=\"lead\" xss=removed>Los canales Extra Sec Pods distribuyen uniformemente el pipí para mantener al bebé hasta 2 veces más sequito* con un pañal sin colgar. La distribución uniforme ayuda a reducir que el pañal cuelgue.</p><div><br></div>', 125, '1', '28.00', '26.00', '', '1605139485', 'ok', '', 'ok', '0', '280', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(237, 0, '0.00', '[]', 'NASTIFLU', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '<p class=\"lead\" xss=removed>Nastiflu (Acetaminofen, dextrometorfano, fenilefrina, clorfeniramina) este indicado para el alivio sintomatico de procesos catarrales y gripales.</p><div><br></div>', 126, '1', '2.00', '1.80', '', '1605139548', 'ok', '', 'ok', '0', NULL, NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1607047962, NULL, 'no', NULL),
(238, 0, '0.00', '[]', 'ELECTRORAL SABOR A FRESA', '{\"type\":\"admin\",\"id\":\"4\"}', 30, '<p class=\"lead\" xss=removed>ELECTRORAL® N.F. es una solución de mantenimiento formulada con una concentración de 45 mEq de sodio y 25 g de glucosa (2,5%) por litro. Estas concentraciones de sodio y glucosa de acuerdo a estudios clínicos internacionales y opiniones nacionales, son óptimas ya que el sodio con esta cantidad de mEq/L asociados a 25 g/L de glucosa mejora su utilización y reduce la posibilidad de una mala absorción del carbohidrato.</p><div><br></div>', 127, '1', '6.00', '5.00', '', '1605139594', 'ok', '', 'ok', '0', NULL, NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(239, 0, '0.00', '[]', 'PAÑAL PARA ADULTO SECURE', '{\"type\":\"admin\",\"id\":\"4\"}', 32, '<p><span xss=removed>Pañal</span><span xss=removed> diseñado </span><span xss=removed>para</span><span xss=removed> personas con incontinencia urinaria severa, con capacidad </span><span xss=removed>de</span><span xss=removed> movimiento nula.</span><br></p>', 125, '1', '13.10', '10.10', '', '1605139750', 'ok', '', 'ok', '0', '280', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(240, 0, '0.00', '[]', 'ENJUAGUE BUCAL ZERO ALCOHOL', '{\"type\":\"admin\",\"id\":\"4\"}', 28, '<p><span xss=removed>Tecnología Exclusiva para un aliento más Fresco y sin Ardor en tu Boca. Descubre. Sin </span><span class=\"hcV4Re nkGKTb\" xss=removed>alcohol</span><span xss=removed>. Sin ardor. Frescura intentsa. Más confianza. Tipos: Sin </span><span class=\"hcV4Re nkGKTb\" xss=removed>Alcohol</span><span xss=removed>, Antibacterial, X-Freeze.</span><br></p>', 124, '1', '20.60', '19.50', '', '1605139805', 'ok', '', 'ok', '0', '281', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1605143621, NULL, 'no', NULL),
(241, 0, '0.00', '[]', 'PAPEL HIGIÉNICO SUAVE JUMBO', '{\"type\":\"admin\",\"id\":\"4\"}', 32, '<p><br></p>', 125, '1', '4.60', '3.60', '', '1605139866', 'ok', '', 'ok', '0', '280', NULL, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 20, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1605920567, NULL, 'no', NULL),
(242, 0, '0.00', '[]', 'SHAMPOO JOHNSONS BABY VERDE 750ml', '{\"type\":\"admin\",\"id\":\"4\"}', 28, '<p>SHAMPOO JOHNSONS BABY VERDE 750ml<br></p>', 124, '1', '30.00', '25.00', '0', '1605929834', 'ok', '', 'ok', '0', '277', 75, 'unidad', '{\"name\":\"null\",\"value\":\"null\"}', 22, NULL, '0', 'percent', '0', 'percent', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1606083376, NULL, 'no', NULL),
(246, 0, '0.00', '[]', 'AB-MOKS FORTE (AMOXICI 750 MG/AMB 15MG)/5ML x 70 ml', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        AB-MOKS FORTE (AMOXICI 750 MG/AMB 15MG)/5ML x 70 ml', 126, '1', '35.00', '35.00', '0', '1607126658', 'no', '', 'ok', '0', NULL, 1, 'und', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(245, 0, '0.00', '[]', 'AB-MOKS (AMOXICILINA 250MG/AMBRO15MG)x 60 ml', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        AB-MOKS (AMOXICILINA 250MG/AMBRO15MG)x 60 ml', 126, '2', '18.90', '18.90', '0', '1607126657', 'no', '', 'ok', '0', NULL, 1, 'und', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(247, 0, '0.00', '[]', 'AB-MOKS FORTE CAJA X 60 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                                                                                                        AB-MOKS FORTE CAJA X 60 TAB.', 126, '1', '2.50', '2.50', '0', '1607126658', 'no', '', 'ok', '0', NULL, 76, 'und', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1607136416, NULL, 'no', NULL),
(248, 0, '0.00', '[]', 'ABUBRON AB FCO X 60 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ABUBRON AB FCO X 60 ML.', 126, '0', '18.00', '18.00', '0', '1607126658', 'no', NULL, 'ok', '0', '286', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(249, 0, '0.00', '[]', 'ACEITE DE OLIVA LA BOTIJA EXTRA VIRGEN X 200 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACEITE DE OLIVA LA BOTIJA EXTRA VIRGEN X 200 ML.', 126, '0', '10.00', '10.00', '0', '1607126658', 'no', NULL, 'ok', '0', '287', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(250, 0, '0.00', '[]', 'ACEITE ROSADO (PG) X 30ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACEITE ROSADO (PG) X 30ML', 126, '0', '2.00', '2.00', '0', '1607126658', 'no', NULL, 'ok', '0', '287', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(251, 0, '0.00', '[]', 'ACI BASIC X 150ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACI BASIC X 150ML.', 126, '0', '23.00', '23.00', '0', '1607126658', 'no', NULL, 'ok', '0', '287', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(252, 0, '0.00', '[]', 'ACI TIP X 140 COMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACI TIP X 140 COMP.', 126, '0', '1.50', '1.50', '0', '1607126658', 'no', NULL, 'ok', '0', '287', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(253, 0, '0.00', '[]', 'ACICLAV 500MG + 125MG X 14 TABL. (AMOXICILINA + ACI. CLA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACICLAV 500MG + 125MG X 14 TABL. (AMOXICILINA + ACI. CLA)', 126, '0', '3.50', '3.50', '0', '1607126658', 'no', NULL, 'ok', '0', '287', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(254, 0, '0.00', '[]', 'ACICLOVIR 5% CREMA X 5GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACICLOVIR 5% CREMA X 5GR.', 126, '0', '3.50', '3.50', '0', '1607126658', 'no', NULL, 'ok', '0', '287', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(255, 0, '0.00', '[]', 'ACICLOVIR 800 MG CJA.X 10 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACICLOVIR 800 MG CJA.X 10 TAB.', 126, '0', '2.00', '2.00', '0', '1607126658', 'no', NULL, 'ok', '0', '287', 31, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(256, 0, '0.00', '[]', 'ACICLOVIR 800MG X 10 TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACICLOVIR 800MG X 10 TAB', 126, '0', '2.00', '2.00', '0', '1607126658', 'no', NULL, 'ok', '0', '288', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(257, 0, '0.00', '[]', 'ACIDINO X 60 TABL. MAST.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACIDINO X 60 TABL. MAST.', 126, '0', '1.50', '1.50', '0', '1607126658', 'no', NULL, 'ok', '0', '288', 20, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(258, 0, '0.00', '[]', 'ACIDO ALENDRONICO 70MG X 20 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACIDO ALENDRONICO 70MG X 20 TABL.', 126, '0', '4.00', '4.00', '0', '1607126658', 'no', NULL, 'ok', '0', '289', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(259, 0, '0.00', '[]', 'ACIDO BORICO POTE X 50 GR.00', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACIDO BORICO POTE X 50 GR.00', 126, '0', '3.00', '3.00', '0', '1607126658', 'no', NULL, 'ok', '0', '289', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(260, 0, '0.00', '[]', 'ACIDO FOLICO 0.5 MB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACIDO FOLICO 0.5 MB', 126, '0', '0.20', '0.20', '0', '1607126658', 'no', NULL, 'ok', '0', '290', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(261, 0, '0.00', '[]', 'ACIDOR EXTRA RAPID SUP. ORAL 150 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ACIDOR EXTRA RAPID SUP. ORAL 150 ML', 126, '0', '16.00', '16.00', '0', '1607126658', 'no', NULL, 'ok', '0', '290', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(262, 0, '0.00', '[]', 'AEROCAMARA ADULTO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AEROCAMARA ADULTO', 126, '0', '15.00', '15.00', '0', '1607126658', 'no', NULL, 'ok', '0', '290', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(263, 0, '0.00', '[]', 'AEROCAMARA NEONATAL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AEROCAMARA NEONATAL', 126, '0', '14.90', '14.90', '0', '1607126658', 'no', NULL, 'ok', '0', '290', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(264, 0, '0.00', '[]', 'AEROLISIN ANIS GOTAS X 15ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AEROLISIN ANIS GOTAS X 15ML.', 126, '0', '12.00', '12.00', '0', '1607126658', 'no', NULL, 'ok', '0', '290', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(265, 0, '0.00', '[]', 'AEROX PLUS GOTAS X 15ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AEROX PLUS GOTAS X 15ML.', 126, '0', '17.00', '17.00', '0', '1607126658', 'no', NULL, 'ok', '0', '290', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(266, 0, '0.00', '[]', 'AFLORAC 5ML X 10 AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AFLORAC 5ML X 10 AMP.', 126, '0', '4.00', '4.00', '0', '1607126658', 'no', NULL, 'ok', '0', '291', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(267, 0, '0.00', '[]', 'AGUA DE AZAHAR X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AGUA DE AZAHAR X 120ML.', 126, '0', '2.00', '2.00', '0', '1607126658', 'no', NULL, 'ok', '0', '292', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(268, 0, '0.00', '[]', 'AGUA FLORIDA X 22ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AGUA FLORIDA X 22ML', 126, '0', '2.50', '2.50', '0', '1607126658', 'no', NULL, 'ok', '0', '293', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(269, 0, '0.00', '[]', 'AGUA FLORIDA X 70ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AGUA FLORIDA X 70ML.', 126, '0', '3.50', '3.50', '0', '1607126658', 'no', NULL, 'ok', '0', '294', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(270, 0, '0.00', '[]', 'AGUA OXIGENADA X1000ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AGUA OXIGENADA X1000ML.', 126, '0', '6.00', '6.00', '0', '1607126658', 'no', NULL, 'ok', '0', '295', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(271, 0, '0.00', '[]', 'AGUA PARA INYECCION DESTILADA AMP. X 5ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AGUA PARA INYECCION DESTILADA AMP. X 5ML.', 126, '0', '1.00', '1.00', '0', '1607126658', 'no', NULL, 'ok', '0', '295', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(272, 0, '0.00', '[]', 'AGUJA DESCARTABLE 22 X 1 1/2 X 100 UNID', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AGUJA DESCARTABLE 22 X 1 1/2 X 100 UNID', 126, '0', '0.20', '0.20', '0', '1607126658', 'no', NULL, 'ok', '0', '295', 35, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(273, 0, '0.00', '[]', 'AGUJA DESCARTABLE.23 X 1 1/2 X 100 UNID', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AGUJA DESCARTABLE.23 X 1 1/2 X 100 UNID', 126, '0', '0.20', '0.20', '0', '1607126658', 'no', NULL, 'ok', '0', '295', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(274, 0, '0.00', '[]', 'AGUJA DESCARTABLE.MEDIC 21. X 1 1/2 X 100 UNID', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AGUJA DESCARTABLE.MEDIC 21. X 1 1/2 X 100 UNID', 126, '0', '0.20', '0.20', '0', '1607126659', 'no', NULL, 'ok', '0', '295', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(275, 0, '0.00', '[]', 'ALBENDAZOL 100MG/5ML SUSP X 20ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALBENDAZOL 100MG/5ML SUSP X 20ML.', 126, '0', '4.00', '4.00', '0', '1607126659', 'no', NULL, 'ok', '0', '296', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(276, 0, '0.00', '[]', 'ALCOHOL 70° X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALCOHOL 70° X 120ML.', 126, '0', '2.00', '2.00', '0', '1607126659', 'no', NULL, 'ok', '0', '297', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(277, 0, '0.00', '[]', 'ALCOHOL EN GEL 70% BONOFARMA 1 LITRO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALCOHOL EN GEL 70% BONOFARMA 1 LITRO', 126, '0', '30.00', '30.00', '0', '1607126659', 'no', NULL, 'ok', '0', '298', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(278, 0, '0.00', '[]', 'ALCOHOL EN GEL 70% BONOFARMA 500 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALCOHOL EN GEL 70% BONOFARMA 500 ML', 126, '0', '15.00', '15.00', '0', '1607126659', 'no', NULL, 'ok', '0', '299', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(279, 0, '0.00', '[]', 'ALCOHOL PURO 120ML 96%', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALCOHOL PURO 120ML 96%', 126, '0', '1.50', '1.50', '0', '1607126659', 'no', NULL, 'ok', '0', '299', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(280, 0, '0.00', '[]', 'ALCOHOL YODADO X 30 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALCOHOL YODADO X 30 ML.', 126, '0', '2.00', '2.00', '0', '1607126659', 'no', NULL, 'ok', '0', '299', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(281, 0, '0.00', '[]', 'ALENDRON 70MG X 20 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALENDRON 70MG X 20 TABL.', 126, '0', '5.90', '5.90', '0', '1607126659', 'no', NULL, 'ok', '0', '299', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(282, 0, '0.00', '[]', 'ALERCHECK PLUS X 10MG X 30 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALERCHECK PLUS X 10MG X 30 CAP.', 126, '0', '1.50', '1.50', '0', '1607126659', 'no', NULL, 'ok', '0', '299', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(283, 0, '0.00', '[]', 'ALERLIV (LEVOCETIRIZINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALERLIV (LEVOCETIRIZINA)', 126, '0', '2.50', '2.50', '0', '1607126659', 'no', NULL, 'ok', '0', '299', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(284, 0, '0.00', '[]', 'ALGODON X 25GR', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALGODON X 25GR', 126, '0', '2.00', '2.00', '0', '1607126659', 'no', NULL, 'ok', '0', '300', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(285, 0, '0.00', '[]', 'ALICAM FORTE 500MG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALICAM FORTE 500MG', 126, '0', '0.50', '0.50', '0', '1607126659', 'no', NULL, 'ok', '0', '300', 239, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(286, 0, '0.00', '[]', 'ALOPURINOL 300MG CAJA 30 TABLETAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALOPURINOL 300MG CAJA 30 TABLETAS', 126, '0', '1.50', '1.50', '0', '1607126659', 'no', NULL, 'ok', '0', '301', 29, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(287, 0, '0.00', '[]', 'ALUMBRE EXTRA SOBRE X 55 GR X 50 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALUMBRE EXTRA SOBRE X 55 GR X 50 UNID.', 126, '0', '3.00', '3.00', '0', '1607126659', 'no', NULL, 'ok', '0', '302', 12, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(288, 0, '0.00', '[]', 'ALWAYS NOCHES TRANQUILAS X 8UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ALWAYS NOCHES TRANQUILAS X 8UNID.', 126, '0', '6.50', '6.50', '0', '1607126659', 'no', NULL, 'ok', '0', '302', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(289, 0, '0.00', '[]', 'AMBROMOX (AMOXICILINA 250MG/AMBROXOL15MG)/5ML FCO X 60 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMBROMOX (AMOXICILINA 250MG/AMBROXOL15MG)/5ML FCO X 60 ML', 126, '0', '18.90', '18.90', '0', '1607126659', 'no', NULL, 'ok', '0', '302', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(290, 0, '0.00', '[]', 'AMBROXOL 15MG JBE. X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMBROXOL 15MG JBE. X 120ML.', 126, '0', '6.00', '6.00', '0', '1607126659', 'no', NULL, 'ok', '0', '302', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(291, 0, '0.00', '[]', 'AMBROXOL 30MG/5ML. JBE. X120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMBROXOL 30MG/5ML. JBE. X120ML.', 126, '0', '6.50', '6.50', '0', '1607126659', 'no', NULL, 'ok', '0', '303', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(292, 0, '0.00', '[]', 'AMIGDAZOL B ( SPRAY BUCAL 30 ML )', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMIGDAZOL B ( SPRAY BUCAL 30 ML )', 126, '0', '20.90', '20.90', '0', '1607126659', 'no', NULL, 'ok', '0', '303', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(293, 0, '0.00', '[]', 'AMIKACINA 500MG/2ML AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMIKACINA 500MG/2ML AMP.', 126, '0', '3.50', '3.50', '0', '1607126659', 'no', NULL, 'ok', '0', '304', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(294, 0, '0.00', '[]', 'AMIKAGRAM 1G/4ML AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMIKAGRAM 1G/4ML AMP.', 126, '0', '32.00', '32.00', '0', '1607126659', 'no', NULL, 'ok', '0', '306', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(295, 0, '0.00', '[]', 'AMINAXOL ABX', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMINAXOL ABX', 126, '0', '2.00', '2.00', '0', '1607126659', 'no', NULL, 'ok', '0', '306', 33, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(296, 0, '0.00', '[]', 'AMLODIPINO 10MG X100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMLODIPINO 10MG X100 TABL.', 126, '0', '0.30', '0.30', '0', '1607126659', 'no', NULL, 'ok', '0', '305', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(297, 0, '0.00', '[]', 'AMLODIPINO 5MG X 100 TBL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMLODIPINO 5MG X 100 TBL.', 126, '0', '0.50', '0.50', '0', '1607126659', 'no', NULL, 'ok', '0', '305', 56, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(298, 0, '0.00', '[]', 'AMLODIPINO 5MG X 100 TBL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMLODIPINO 5MG X 100 TBL.', 126, '0', '0.50', '0.50', '0', '1607126659', 'no', NULL, 'ok', '0', '309', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(299, 0, '0.00', '[]', 'AMOXICILINA + ÁCIDO CLAVULÁNICO 250MG/62.5MG/5ML X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMOXICILINA + ÁCIDO CLAVULÁNICO 250MG/62.5MG/5ML X 60ML.', 126, '0', '22.00', '22.00', '0', '1607126659', 'no', NULL, 'ok', '0', '308', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(300, 0, '0.00', '[]', 'AMOXICILINA 250MG/5ML SUSP. X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMOXICILINA 250MG/5ML SUSP. X 60ML.', 126, '0', '5.00', '5.00', '0', '1607126659', 'no', NULL, 'ok', '0', '308', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(301, 0, '0.00', '[]', 'AMOXICILINA 250MG/5ML SUSP. X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMOXICILINA 250MG/5ML SUSP. X 60ML.', 126, '0', '5.00', '5.00', '0', '1607126659', 'no', NULL, 'ok', '0', '308', 13, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(302, 0, '0.00', '[]', 'AMOXICILINA 500MG + AC. CLAVULANICO125MG X 10 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMOXICILINA 500MG + AC. CLAVULANICO125MG X 10 TABL.', 126, '0', '2.50', '2.50', '0', '1607126659', 'no', NULL, 'ok', '0', '308', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(303, 0, '0.00', '[]', 'AMOXICILINA 500MG CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMOXICILINA 500MG CAJA X 100 TAB.', 126, '0', '0.40', '0.40', '0', '1607126659', 'no', NULL, 'ok', '0', '308', 102, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(304, 0, '0.00', '[]', 'AMOXICILINA 500MG CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMOXICILINA 500MG CAJA X 100 TAB.', 126, '0', '0.20', '0.20', '0', '1607126659', 'no', NULL, 'ok', '0', '308', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(305, 0, '0.00', '[]', 'AMOXICILINA 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMOXICILINA 500MG X 100 TABL.', 126, '0', '0.50', '0.50', '0', '1607126659', 'no', NULL, 'ok', '0', '308', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(306, 0, '0.00', '[]', 'AMOXICLIN DUO RESPIRATORIO 875/60MG CAJA X 15TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMOXICLIN DUO RESPIRATORIO 875/60MG CAJA X 15TAB.', 126, '0', '3.50', '3.50', '0', '1607126659', 'no', NULL, 'ok', '0', '308', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(307, 0, '0.00', '[]', 'AMOXIDIN 7 250MG/5ML. SUSP. X 105ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMOXIDIN 7 250MG/5ML. SUSP. X 105ML.', 126, '0', '19.00', '19.00', '0', '1607126659', 'no', NULL, 'ok', '0', '308', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(308, 0, '0.00', '[]', 'AMPICILINA 500 MG X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMPICILINA 500 MG X 100 CAP.', 126, '0', '0.50', '0.50', '0', '1607126660', 'no', NULL, 'ok', '0', '307', 16, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(309, 0, '0.00', '[]', 'AMPICILINA 500 MG X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AMPICILINA 500 MG X 100 CAP.', 126, '0', '0.50', '0.50', '0', '1607126660', 'no', NULL, 'ok', '0', '307', 50, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(310, 0, '0.00', '[]', 'ANAFLEX MUJER 150 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ANAFLEX MUJER 150 CAP.', 126, '0', '1.50', '1.50', '0', '1607126660', 'no', NULL, 'ok', '0', '310', 24, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(311, 0, '0.00', '[]', 'ANEMIUS 50MG/1ML .GOTAS X 20 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ANEMIUS 50MG/1ML .GOTAS X 20 ML.', 126, '0', '35.90', '35.90', '0', '1607126660', 'no', NULL, 'ok', '0', '310', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(312, 0, '0.00', '[]', 'ANEURIN 1000 AMP.+JERINGA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ANEURIN 1000 AMP.+JERINGA', 126, '0', '16.00', '16.00', '0', '1607126660', 'no', NULL, 'ok', '0', '311', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(313, 0, '0.00', '[]', 'ANTALGINA 500MG X100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ANTALGINA 500MG X100 TABL.', 126, '0', '0.50', '0.50', '0', '1607126660', 'no', NULL, 'ok', '0', '312', 98, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(314, 0, '0.00', '[]', 'ANTIGRIPINA PLUS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ANTIGRIPINA PLUS', 126, '0', '2.00', '2.00', '0', '1607126660', 'no', NULL, 'ok', '0', '313', 165, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(315, 0, '0.00', '[]', 'APIRON 1G/2ML SOL. X 5 AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'APIRON 1G/2ML SOL. X 5 AMP.', 126, '0', '6.00', '6.00', '0', '1607126660', 'no', NULL, 'ok', '0', '313', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(316, 0, '0.00', '[]', 'ARNICA DE LEOS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ARNICA DE LEOS', 126, '0', '2.50', '2.50', '0', '1607126660', 'no', NULL, 'ok', '0', '316', 16, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(317, 0, '0.00', '[]', 'ARTIFLAM 15 MG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ARTIFLAM 15 MG', 126, '0', '2.00', '2.00', '0', '1607126660', 'no', NULL, 'ok', '0', '316', 23, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(318, 0, '0.00', '[]', 'ASEPXIA JABON AZUFRE EFECTO ANTI SEBO 100G.NF HIDRO-FORCE', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ASEPXIA JABON AZUFRE EFECTO ANTI SEBO 100G.NF HIDRO-FORCE', 126, '0', '12.50', '12.50', '0', '1607126660', 'no', NULL, 'ok', '0', '316', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(319, 0, '0.00', '[]', 'ASEPXIA JABON EXFOLIANTE X 100GR. NUEVA FORMULA HIDRO-FORCE', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ASEPXIA JABON EXFOLIANTE X 100GR. NUEVA FORMULA HIDRO-FORCE', 126, '0', '12.00', '12.00', '0', '1607126660', 'no', NULL, 'ok', '0', '316', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(320, 0, '0.00', '[]', 'ASEPXIA JABON FORTE X 100GR. NUEVA FORMULA HIDRO-FORCE', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ASEPXIA JABON FORTE X 100GR. NUEVA FORMULA HIDRO-FORCE', 126, '0', '12.50', '12.50', '0', '1607126660', 'no', NULL, 'ok', '0', '316', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(321, 0, '0.00', '[]', 'ASEPXIA JABON NEUTRO X 100GR.NUEVA FORMULA HIDRO-FORCE', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ASEPXIA JABON NEUTRO X 100GR.NUEVA FORMULA HIDRO-FORCE', 126, '0', '12.00', '12.00', '0', '1607126660', 'no', NULL, 'ok', '0', '314', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(322, 0, '0.00', '[]', 'ASMASOL 100MCG DOSIS INHALADOR AEROSOL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ASMASOL 100MCG DOSIS INHALADOR AEROSOL.', 126, '0', '10.00', '10.00', '0', '1607126660', 'no', NULL, 'ok', '0', '314', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(323, 0, '0.00', '[]', 'ASPIRADOR NASAL PARA BEBE- (22811)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ASPIRADOR NASAL PARA BEBE- (22811)', 126, '0', '10.00', '10.00', '0', '1607126660', 'no', NULL, 'ok', '0', '314', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(324, 0, '0.00', '[]', 'ASPIRINA 100MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ASPIRINA 100MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126660', 'no', NULL, 'ok', '0', '314', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(325, 0, '0.00', '[]', 'ASPIRINA 500MG X 140 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ASPIRINA 500MG X 140 TABL.', 126, '0', '0.70', '0.70', '0', '1607126660', 'no', NULL, 'ok', '0', '314', 12, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(326, 0, '0.00', '[]', 'ATORVASTATINA 20 MG CJA.X TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ATORVASTATINA 20 MG CJA.X TAB. REC.', 126, '0', '1.50', '1.50', '0', '1607126660', 'no', NULL, 'ok', '0', '314', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(327, 0, '0.00', '[]', 'ATORVASTATINA 20MG CJA.X 10 TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ATORVASTATINA 20MG CJA.X 10 TAB. REC.', 126, '0', '1.00', '1.00', '0', '1607126660', 'no', NULL, 'ok', '0', '314', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(328, 0, '0.00', '[]', 'ATORVASTATINA 20MG CJA.X TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ATORVASTATINA 20MG CJA.X TAB. REC.', 126, '0', '1.20', '1.20', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(329, 0, '0.00', '[]', 'AVAL DEO COLOGNE XTREME SPRAY X 160ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AVAL DEO COLOGNE XTREME SPRAY X 160ML.', 126, '0', '8.00', '8.00', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(330, 0, '0.00', '[]', 'AXE BODY SPRAY BLACKFCO X 90 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AXE BODY SPRAY BLACKFCO X 90 ML.', 126, '0', '11.00', '11.00', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(331, 0, '0.00', '[]', 'AXE SPRAY APOLLO 48H.FRESH FCO X 150 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AXE SPRAY APOLLO 48H.FRESH FCO X 150 ML.', 126, '0', '14.00', '14.00', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(332, 0, '0.00', '[]', 'AXE SPRAY BLACK NIGHT 48H FRESH FCO X 150 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AXE SPRAY BLACK NIGHT 48H FRESH FCO X 150 ML.', 126, '0', '14.00', '14.00', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(333, 0, '0.00', '[]', 'AXE SPRAY MUSK 48H.FRESH FCO X 150 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AXE SPRAY MUSK 48H.FRESH FCO X 150 ML.', 126, '0', '14.00', '14.00', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(334, 0, '0.00', '[]', 'AZIFAR 200MG/5ML X 30 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AZIFAR 200MG/5ML X 30 ML', 126, '0', '26.00', '26.00', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(335, 0, '0.00', '[]', 'AZIMUT 200MG/5ML X 30ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AZIMUT 200MG/5ML X 30ML.', 126, '0', '48.00', '48.00', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(336, 0, '0.00', '[]', 'AZITROMAC 500MG X 30 COMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AZITROMAC 500MG X 30 COMP.', 126, '0', '5.00', '5.00', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 13, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(337, 0, '0.00', '[]', 'AZITROMEDIC 200MG/5ML X 30 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AZITROMEDIC 200MG/5ML X 30 ML', 126, '0', '22.00', '22.00', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(338, 0, '0.00', '[]', 'AZITROMICINA 500 MG CJA. X 3 TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AZITROMICINA 500 MG CJA. X 3 TAB. REC.', 126, '0', '2.50', '2.50', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 15, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(339, 0, '0.00', '[]', 'AZITROMICINA 500 MG X 3 TABELTA CAJA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AZITROMICINA 500 MG X 3 TABELTA CAJA', 126, '0', '3.50', '3.50', '0', '1607126660', 'no', NULL, 'ok', '0', '315', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(340, 0, '0.00', '[]', 'AZO BACCIDAL X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'AZO BACCIDAL X 100 TABL.', 126, '0', '2.00', '2.00', '0', '1607126660', 'no', NULL, 'ok', '0', '317', 95, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(341, 0, '0.00', '[]', 'BABARIA CREMA FACIAL DE DIA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BABARIA CREMA FACIAL DE DIA', 126, '0', '7.90', '7.90', '0', '1607126660', 'no', NULL, 'ok', '0', '317', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(342, 0, '0.00', '[]', 'BABARIA CREMA PIES SECO AGRIETADOS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BABARIA CREMA PIES SECO AGRIETADOS', 126, '0', '7.90', '7.90', '0', '1607126661', 'no', NULL, 'ok', '0', '318', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(343, 0, '0.00', '[]', 'BACSULFIN FORTE FORTE X 100 COMPRIMIDOS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BACSULFIN FORTE FORTE X 100 COMPRIMIDOS.', 126, '0', '2.00', '2.00', '0', '1607126661', 'no', NULL, 'ok', '0', '319', 31, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(344, 0, '0.00', '[]', 'BACTRIM FORTE SUSP. FCO X 100 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BACTRIM FORTE SUSP. FCO X 100 ML.', 126, '0', '32.00', '32.00', '0', '1607126661', 'no', NULL, 'ok', '0', '319', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(345, 0, '0.00', '[]', 'BACTRIM FORTE X 100 COMPRIMIDOS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BACTRIM FORTE X 100 COMPRIMIDOS.', 126, '0', '2.00', '2.00', '0', '1607126661', 'no', NULL, 'ok', '0', '319', 107, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(346, 0, '0.00', '[]', 'BAHIA BLOQUEADOR KIDS FROZEN DISNEY X 20 SACHET X 10G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BAHIA BLOQUEADOR KIDS FROZEN DISNEY X 20 SACHET X 10G', 126, '0', '2.50', '2.50', '0', '1607126661', 'no', NULL, 'ok', '0', '319', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(347, 0, '0.00', '[]', 'BAHIA BLOQUEADOR SOLAR FPS 45 X 20 SACHET 10 G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BAHIA BLOQUEADOR SOLAR FPS 45 X 20 SACHET 10 G', 126, '0', '2.50', '2.50', '0', '1607126661', 'no', NULL, 'ok', '0', '319', 17, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(348, 0, '0.00', '[]', 'BAHIA SACHET BLOQUEADOR FACES SPF 90 X 10GR X 20 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BAHIA SACHET BLOQUEADOR FACES SPF 90 X 10GR X 20 UNID.', 126, '0', '2.50', '2.50', '0', '1607126661', 'no', NULL, 'ok', '0', '320', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(349, 0, '0.00', '[]', 'BAHIA SOLAR COOL GEL ALOE VERA ALIVIA QUEMADURAS 240G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BAHIA SOLAR COOL GEL ALOE VERA ALIVIA QUEMADURAS 240G', 126, '0', '24.00', '24.00', '0', '1607126661', 'no', NULL, 'ok', '0', '320', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(350, 0, '0.00', '[]', 'BANES FORTE X 60 ML SUSP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BANES FORTE X 60 ML SUSP', 126, '0', '19.00', '19.00', '0', '1607126661', 'no', NULL, 'ok', '0', '320', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(351, 0, '0.00', '[]', 'BATROXIN BALSAMICO X 150 TABL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BATROXIN BALSAMICO X 150 TABL', 126, '0', '2.00', '2.00', '0', '1607126661', 'no', NULL, 'ok', '0', '320', 44, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(352, 0, '0.00', '[]', 'BATROXIN FORTE X 100 TABL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BATROXIN FORTE X 100 TABL', 126, '0', '2.00', '2.00', '0', '1607126661', 'no', NULL, 'ok', '0', '320', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(353, 0, '0.00', '[]', 'BECLOMETASONA 250MCG/DS INH X 200 DOSIS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BECLOMETASONA 250MCG/DS INH X 200 DOSIS', 126, '0', '24.00', '24.00', '0', '1607126661', 'no', NULL, 'ok', '0', '320', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(354, 0, '0.00', '[]', 'BEL NATUR JABON GLICERINA BACTERIN 90 G .', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BEL NATUR JABON GLICERINA BACTERIN 90 G .', 126, '0', '3.00', '3.00', '0', '1607126661', 'no', NULL, 'ok', '0', '320', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(355, 0, '0.00', '[]', 'BEL NATUR JABON GLICERINA RUDA 90 G .', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BEL NATUR JABON GLICERINA RUDA 90 G .', 126, '0', '3.00', '3.00', '0', '1607126661', 'no', NULL, 'ok', '0', '320', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(356, 0, '0.00', '[]', 'BENZYL LOCION 25% X120 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BENZYL LOCION 25% X120 ML', 126, '0', '15.00', '15.00', '0', '1607126661', 'no', NULL, 'ok', '0', '320', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(357, 0, '0.00', '[]', 'BETAMETASONA 0.05% CR X 20GR', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BETAMETASONA 0.05% CR X 20GR', 126, '0', '4.00', '4.00', '0', '1607126661', 'no', NULL, 'ok', '0', '320', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(358, 0, '0.00', '[]', 'BETAPLUSS 0.05% X 20GR', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BETAPLUSS 0.05% X 20GR', 126, '0', '4.00', '4.00', '0', '1607126661', 'no', NULL, 'ok', '0', '321', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(359, 0, '0.00', '[]', 'BIBERON DE VERIO TRANSPARENTE TUINIES 8 ONZ(22578)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BIBERON DE VERIO TRANSPARENTE TUINIES 8 ONZ(22578)', 126, '0', '21.90', '21.90', '0', '1607126661', 'no', NULL, 'ok', '0', '322', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(360, 0, '0.00', '[]', 'BICARBONATO DE SODIO POTE X 50GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BICARBONATO DE SODIO POTE X 50GR.', 126, '0', '2.50', '2.50', '0', '1607126661', 'no', NULL, 'ok', '0', '322', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(361, 0, '0.00', '[]', 'BICARBONATO DE SODIO X 10GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BICARBONATO DE SODIO X 10GR.', 126, '0', '1.00', '1.00', '0', '1607126661', 'no', NULL, 'ok', '0', '436', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(362, 0, '0.00', '[]', 'BILIOX CAJA X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BILIOX CAJA X 100 CAP.', 126, '0', '2.00', '2.00', '0', '1607126661', 'no', NULL, 'ok', '0', '323', 40, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(363, 0, '0.00', '[]', 'BIO COLLAGEN X100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BIO COLLAGEN X100 CAP.', 126, '0', '55.00', '55.00', '0', '1607126661', 'no', NULL, 'ok', '0', '323', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL);
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(364, 0, '0.00', '[]', 'BIOPROSSX100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BIOPROSSX100 CAP.', 126, '0', '55.00', '55.00', '0', '1607126661', 'no', NULL, 'ok', '0', '326', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(365, 0, '0.00', '[]', 'BIPROFENID 100MG CAJA X 30 TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BIPROFENID 100MG CAJA X 30 TAB. REC.', 126, '0', '2.00', '2.00', '0', '1607126661', 'no', NULL, 'ok', '0', '326', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(366, 0, '0.00', '[]', 'BISACODILO X 100 TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BISACODILO X 100 TAB', 126, '0', '1.50', '1.50', '0', '1607126661', 'no', NULL, 'ok', '0', '326', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(367, 0, '0.00', '[]', 'BISMELAT TABL. MASTICABLE X 160 TABL. X 80 SOBR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BISMELAT TABL. MASTICABLE X 160 TABL. X 80 SOBR.', 126, '0', '1.50', '1.50', '0', '1607126661', 'no', NULL, 'ok', '0', '325', 18, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(368, 0, '0.00', '[]', 'BISMUTOL SUSP X 150ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BISMUTOL SUSP X 150ML', 126, '0', '15.00', '15.00', '0', '1607126661', 'no', NULL, 'ok', '0', '325', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(369, 0, '0.00', '[]', 'BISMUTOL TABL. MASTICABLE X 160 TABL. X 80 SOBR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BISMUTOL TABL. MASTICABLE X 160 TABL. X 80 SOBR.', 126, '0', '1.50', '1.50', '0', '1607126661', 'no', NULL, 'ok', '0', '328', 35, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(370, 0, '0.00', '[]', 'BISOLVON PEDIATRICO 4MG /5ML.PEDIATRICO X 120 ML.JBE.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BISOLVON PEDIATRICO 4MG /5ML.PEDIATRICO X 120 ML.JBE.', 126, '0', '22.90', '22.90', '0', '1607126661', 'no', NULL, 'ok', '0', '329', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(371, 0, '0.00', '[]', 'BONACOXIB ETORICOXIB 120 MG CAJA X 7 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BONACOXIB ETORICOXIB 120 MG CAJA X 7 TAB.', 126, '0', '6.50', '6.50', '0', '1607126661', 'no', NULL, 'ok', '0', '329', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(372, 0, '0.00', '[]', 'BONACOXIB ETORICOXIB 90 MG CAJA X 7 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BONACOXIB ETORICOXIB 90 MG CAJA X 7 TAB.', 126, '0', '5.00', '5.00', '0', '1607126661', 'no', NULL, 'ok', '0', '327', 11, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(373, 0, '0.00', '[]', 'BONAFLORA 250MG X 10 SOBR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BONAFLORA 250MG X 10 SOBR.', 126, '0', '4.00', '4.00', '0', '1607126661', 'no', NULL, 'ok', '0', '327', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(374, 0, '0.00', '[]', 'BREFLEX 50 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BREFLEX 50 TABL.', 126, '0', '3.00', '3.00', '0', '1607126661', 'no', NULL, 'ok', '0', '327', 41, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(375, 0, '0.00', '[]', 'BROCOFLAM BALSAMICO SUSP. ORAL X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BROCOFLAM BALSAMICO SUSP. ORAL X 60ML.', 126, '0', '13.90', '13.90', '0', '1607126661', 'no', NULL, 'ok', '0', '327', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(376, 0, '0.00', '[]', 'BRONCO AMOXICLIN 500', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BRONCO AMOXICLIN 500', 126, '0', '2.00', '2.00', '0', '1607126661', 'no', NULL, 'ok', '0', '327', 21, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(377, 0, '0.00', '[]', 'BRONCO AMOXIDIN 250 MG X 105ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BRONCO AMOXIDIN 250 MG X 105ML.', 126, '0', '25.90', '25.90', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(378, 0, '0.00', '[]', 'BRONCO CLARIMAC X 30 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BRONCO CLARIMAC X 30 TABL.', 126, '0', '5.00', '5.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 43, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(379, 0, '0.00', '[]', 'BRONCO MAGNIMOX 250MG X 60ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BRONCO MAGNIMOX 250MG X 60ML', 126, '0', '16.90', '16.90', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(380, 0, '0.00', '[]', 'BRONCO MEDICAL 500/8MG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BRONCO MEDICAL 500/8MG', 126, '0', '2.00', '2.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(381, 0, '0.00', '[]', 'BRONCOFLAM BALSAMICO SUSPENCION 60ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BRONCOFLAM BALSAMICO SUSPENCION 60ML', 126, '0', '19.00', '19.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 86, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(382, 0, '0.00', '[]', 'BRONCOFLAM BALSAMICO X 100', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BRONCOFLAM BALSAMICO X 100', 126, '0', '2.00', '2.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(383, 0, '0.00', '[]', 'BRONCOPHAR PLUS DIEPHAR X 60 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BRONCOPHAR PLUS DIEPHAR X 60 UNID.', 126, '0', '1.50', '1.50', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 19, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(384, 0, '0.00', '[]', 'BRONQUIO FLEMITOSS JARABE 120 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BRONQUIO FLEMITOSS JARABE 120 ML', 126, '0', '14.10', '14.10', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 86, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(385, 0, '0.00', '[]', 'BUK CARAMELOS SOBRE FRESA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BUK CARAMELOS SOBRE FRESA', 126, '0', '1.00', '1.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(386, 0, '0.00', '[]', 'BUSCAPINA COMPUESTA X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'BUSCAPINA COMPUESTA X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 21, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(387, 0, '0.00', '[]', 'CALCIO 600 MG + VIT D 125 UI CJA X 30 TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CALCIO 600 MG + VIT D 125 UI CJA X 30 TAB. REC.', 126, '0', '1.00', '1.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(388, 0, '0.00', '[]', 'CALVUMAX 500MG + 125MG X 14 TABL. (AMOXICILINA + ACI. CLA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CALVUMAX 500MG + 125MG X 14 TABL. (AMOXICILINA + ACI. CLA)', 126, '0', '3.50', '3.50', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 20, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(389, 0, '0.00', '[]', 'CAPTOPRIL CAJA 25MG X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CAPTOPRIL CAJA 25MG X 100 TAB.', 126, '0', '0.20', '0.20', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 166, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(390, 0, '0.00', '[]', 'CAPTOPRIL CAJA 25MG X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CAPTOPRIL CAJA 25MG X 100 TAB.', 126, '0', '0.80', '0.80', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 120, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(391, 0, '0.00', '[]', 'CARAMELOS MULTIBIOTICOS MENTOL/EUCALIPTO X 50 SOBRES', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CARAMELOS MULTIBIOTICOS MENTOL/EUCALIPTO X 50 SOBRES', 126, '0', '3.00', '3.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(392, 0, '0.00', '[]', 'CARAMELOS MULTIBIOTICOS NARANJA X 50 SOBRES', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CARAMELOS MULTIBIOTICOS NARANJA X 50 SOBRES', 126, '0', '3.00', '3.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(393, 0, '0.00', '[]', 'CARBAMAZEPINA 200MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CARBAMAZEPINA 200MG X 100 TABL.', 126, '0', '0.30', '0.30', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 50, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(394, 0, '0.00', '[]', 'CARDIOTON R 100MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CARDIOTON R 100MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(395, 0, '0.00', '[]', 'CAREFREE PROTECTORES DESODORANTE X 15 UNI', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CAREFREE PROTECTORES DESODORANTE X 15 UNI', 126, '0', '3.90', '3.90', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(396, 0, '0.00', '[]', 'CAREFREE PROTECTORES ORIGINAL X 15 UN', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CAREFREE PROTECTORES ORIGINAL X 15 UN', 126, '0', '4.00', '4.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(397, 0, '0.00', '[]', 'CB-ZADOL X 100TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CB-ZADOL X 100TAB', 126, '0', '1.00', '1.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(398, 0, '0.00', '[]', 'CEFABRONCOL 250MG/15MG/5ML FCO X 75ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEFABRONCOL 250MG/15MG/5ML FCO X 75ML', 126, '0', '29.00', '29.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(399, 0, '0.00', '[]', 'CEFABRONCOL CAJA X 60 CAP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEFABRONCOL CAJA X 60 CAP', 126, '0', '2.50', '2.50', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(400, 0, '0.00', '[]', 'CEFACROL IM 1000MG INY.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEFACROL IM 1000MG INY.', 126, '0', '18.00', '18.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(401, 0, '0.00', '[]', 'CEFADROXILO 500MG CAPSULA. X 100', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEFADROXILO 500MG CAPSULA. X 100', 126, '0', '2.00', '2.00', '0', '1607126662', 'no', NULL, 'ok', '0', '327', 50, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(402, 0, '0.00', '[]', 'CEFADROXILO 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEFADROXILO 500MG X 100 TABL.', 126, '0', '2.00', '2.00', '0', '1607126662', 'no', NULL, 'ok', '0', '331', 40, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(403, 0, '0.00', '[]', 'CEFALEXINA 250MG/5ML PPS. FCO. X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEFALEXINA 250MG/5ML PPS. FCO. X 60ML.', 126, '0', '10.00', '10.00', '0', '1607126662', 'no', NULL, 'ok', '0', '332', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(404, 0, '0.00', '[]', 'CEFALEXINA 500MG CJA.X 10 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEFALEXINA 500MG CJA.X 10 CAP.', 126, '0', '1.20', '1.20', '0', '1607126662', 'no', NULL, 'ok', '0', '330', 16, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(405, 0, '0.00', '[]', 'CEFALOGEN 1GR AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEFALOGEN 1GR AMP.', 126, '0', '17.00', '17.00', '0', '1607126662', 'no', NULL, 'ok', '0', '334', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(406, 0, '0.00', '[]', 'CEFTREX 1 G AMP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEFTREX 1 G AMP', 126, '0', '18.00', '18.00', '0', '1607126662', 'no', NULL, 'ok', '0', '333', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(407, 0, '0.00', '[]', 'CEFTRIAXONA 1GR X 1 AMP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEFTRIAXONA 1GR X 1 AMP', 126, '0', '5.00', '5.00', '0', '1607126662', 'no', NULL, 'ok', '0', '337', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(408, 0, '0.00', '[]', 'CELECOXIB 200MG X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CELECOXIB 200MG X 100 CAP.', 126, '0', '1.00', '1.00', '0', '1607126662', 'no', NULL, 'ok', '0', '336', 12, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(409, 0, '0.00', '[]', 'CELECOXINNE 200 MG CAP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CELECOXINNE 200 MG CAP', 126, '0', '2.00', '2.00', '0', '1607126663', 'no', NULL, 'ok', '0', '336', 34, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(410, 0, '0.00', '[]', 'CELESTAL X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CELESTAL X 100 CAP.', 126, '0', '2.00', '2.00', '0', '1607126663', 'no', NULL, 'ok', '0', '336', 15, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(411, 0, '0.00', '[]', 'CEPHTRONEX1GR AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEPHTRONEX1GR AMP.', 126, '0', '7.00', '7.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(412, 0, '0.00', '[]', 'CEPILLO KOLYNOS MASTER PLUS X 12 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CEPILLO KOLYNOS MASTER PLUS X 12 UNID.', 126, '0', '3.00', '3.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 18, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(413, 0, '0.00', '[]', 'CERA DENTAL NDEL PINO BARRA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CERA DENTAL NDEL PINO BARRA', 126, '0', '1.00', '1.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(414, 0, '0.00', '[]', 'CETIFILM', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CETIFILM', 126, '0', '1.50', '1.50', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(415, 0, '0.00', '[]', 'CETIRIZINA 10MG CJA X 100 TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CETIRIZINA 10MG CJA X 100 TAB. REC.', 126, '0', '0.40', '0.40', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(416, 0, '0.00', '[]', 'CETIRIZINA 10MG CJA.X SUSP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CETIRIZINA 10MG CJA.X SUSP', 126, '0', '6.00', '6.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(417, 0, '0.00', '[]', 'CETIRIZINA 10MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CETIRIZINA 10MG X 100 TABL.', 126, '0', '0.40', '0.40', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 91, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(418, 0, '0.00', '[]', 'CETIRIZINA JARABE 5MG X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CETIRIZINA JARABE 5MG X 60ML.', 126, '0', '6.50', '6.50', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(419, 0, '0.00', '[]', 'C-FLOX 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'C-FLOX 500MG X 100 TABL.', 126, '0', '2.00', '2.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 41, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(420, 0, '0.00', '[]', 'CIALGOLD 20 MG (TADALAFILO)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CIALGOLD 20 MG (TADALAFILO)', 126, '0', '19.00', '19.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(421, 0, '0.00', '[]', 'CINTA ADHESIVA QUIRURGICA X 2.5CMX5M (VERDE Y ROJO)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CINTA ADHESIVA QUIRURGICA X 2.5CMX5M (VERDE Y ROJO)', 126, '0', '5.50', '5.50', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(422, 0, '0.00', '[]', 'CIPROF 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CIPROF 500MG X 100 TABL.', 126, '0', '2.00', '2.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 47, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(423, 0, '0.00', '[]', 'CIPROFLOXACINO 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CIPROFLOXACINO 500MG X 100 TABL.', 126, '0', '0.30', '0.30', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(424, 0, '0.00', '[]', 'CIPROFLOXACINO 500MG X 100TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CIPROFLOXACINO 500MG X 100TAB', 126, '0', '0.50', '0.50', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(425, 0, '0.00', '[]', 'CIPROLIN 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CIPROLIN 500MG X 100 TABL.', 126, '0', '2.00', '2.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(426, 0, '0.00', '[]', 'CIRUELAX FORTE X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CIRUELAX FORTE X 100 CAP.', 126, '0', '1.50', '1.50', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 13, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(427, 0, '0.00', '[]', 'CITROCALCIO 1500MG + VIT D 400 U.I X 30 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CITROCALCIO 1500MG + VIT D 400 U.I X 30 TAB.', 126, '0', '1.20', '1.20', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 13, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(428, 0, '0.00', '[]', 'CLARIMACROL 500 MG CAJA X 50 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLARIMACROL 500 MG CAJA X 50 TAB.', 126, '0', '3.50', '3.50', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(429, 0, '0.00', '[]', 'CLARITROMAC 250MG/5ML SUSP. X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLARITROMAC 250MG/5ML SUSP. X 60ML.', 126, '0', '35.00', '35.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(430, 0, '0.00', '[]', 'CLARITROMICINA 250MG/5ML PPS FCO X 50 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLARITROMICINA 250MG/5ML PPS FCO X 50 ML.', 126, '0', '22.00', '22.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(431, 0, '0.00', '[]', 'CLARITROMICINA 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLARITROMICINA 500MG X 100 TABL.', 126, '0', '2.50', '2.50', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 13, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(432, 0, '0.00', '[]', 'CLAVUMASS 500MG + 125MG X 14 TABL. (AMOXICILINA + ACI. CLA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLAVUMASS 500MG + 125MG X 14 TABL. (AMOXICILINA + ACI. CLA)', 126, '0', '3.50', '3.50', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(433, 0, '0.00', '[]', 'CLENXOL F X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLENXOL F X 100 TABL.', 126, '0', '2.50', '2.50', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 18, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(434, 0, '0.00', '[]', 'CLINDA C 300 MG CAP ( CLINDAMICINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLINDA C 300 MG CAP ( CLINDAMICINA)', 126, '0', '2.00', '2.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 42, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(435, 0, '0.00', '[]', 'CLINDAMED 300', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLINDAMED 300', 126, '0', '2.00', '2.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(436, 0, '0.00', '[]', 'CLINDAPHARM 300 MG CAP ( CLINDAMICINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLINDAPHARM 300 MG CAP ( CLINDAMICINA)', 126, '0', '2.00', '2.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(437, 0, '0.00', '[]', 'CLINOMIN X 1 AMP. X 1ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLINOMIN X 1 AMP. X 1ML.', 126, '0', '17.50', '17.50', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(438, 0, '0.00', '[]', 'CLOBETASOL 0.05% CREMA X 25 GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLOBETASOL 0.05% CREMA X 25 GR.', 126, '0', '6.00', '6.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(439, 0, '0.00', '[]', 'CLOBETASOL 0.05% UNGUENTO TUBO X 25 GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLOBETASOL 0.05% UNGUENTO TUBO X 25 GR.', 126, '0', '7.00', '7.00', '0', '1607126663', 'no', NULL, 'ok', '0', '335', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(440, 0, '0.00', '[]', 'CLODERM COMPUESTO 20G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLODERM COMPUESTO 20G', 126, '0', '13.00', '13.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(441, 0, '0.00', '[]', 'CLONAZEPAM 0,5MG CAJA X 100 TABLETAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLONAZEPAM 0,5MG CAJA X 100 TABLETAS', 126, '0', '0.40', '0.40', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 92, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(442, 0, '0.00', '[]', 'CLONAZEPAM 2MG CAJA X 100 TABLETAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLONAZEPAM 2MG CAJA X 100 TABLETAS', 126, '0', '0.40', '0.40', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(443, 0, '0.00', '[]', 'CLORANFENICOL 500MG X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLORANFENICOL 500MG X 100 CAP.', 126, '0', '1.50', '1.50', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 69, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(444, 0, '0.00', '[]', 'CLORFENAMINA 10MG/1ML X 50 AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLORFENAMINA 10MG/1ML X 50 AMP.', 126, '0', '2.00', '2.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(445, 0, '0.00', '[]', 'CLORFENAMINA 4MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLORFENAMINA 4MG X 100 TABL.', 126, '0', '0.20', '0.20', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 224, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(446, 0, '0.00', '[]', 'CLORFENAMINA MALEATO 2MG/5ML JBE. 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLORFENAMINA MALEATO 2MG/5ML JBE. 60ML.', 126, '0', '5.00', '5.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(447, 0, '0.00', '[]', 'CLORFENAMINA MALEATO JBE X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLORFENAMINA MALEATO JBE X 120ML.', 126, '0', '3.50', '3.50', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(448, 0, '0.00', '[]', 'CLORURO DE SODIO 9% X 1000ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLORURO DE SODIO 9% X 1000ML.', 126, '0', '7.50', '7.50', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(449, 0, '0.00', '[]', 'CLOTRIMAZOL 1% CREMA X 20GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLOTRIMAZOL 1% CREMA X 20GR.', 126, '0', '3.50', '3.50', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(450, 0, '0.00', '[]', 'CLOTRIMAZOL CREMA TOPICA TUBO X 40G.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLOTRIMAZOL CREMA TOPICA TUBO X 40G.', 126, '0', '6.00', '6.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(451, 0, '0.00', '[]', 'CLOTRIMAZOL CREMA TOPICA TUBO X 40G.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLOTRIMAZOL CREMA TOPICA TUBO X 40G.', 126, '0', '6.00', '6.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(452, 0, '0.00', '[]', 'CLOTRIMAZOL CREMA VAG. 1% TUBO X 40G/6APL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CLOTRIMAZOL CREMA VAG. 1% TUBO X 40G/6APL.', 126, '0', '15.90', '15.90', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(453, 0, '0.00', '[]', 'COLÀGENO HIDROLIZADO 200 G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COLÀGENO HIDROLIZADO 200 G', 126, '0', '60.00', '60.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(454, 0, '0.00', '[]', 'COLGATE CEPILLO EXTRA SUAVE KIDS (5+)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COLGATE CEPILLO EXTRA SUAVE KIDS (5+)', 126, '0', '4.00', '4.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(455, 0, '0.00', '[]', 'COLGATE KIDS CEPILLO DENTAL 5 +', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COLGATE KIDS CEPILLO DENTAL 5 +', 126, '0', '3.00', '3.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(456, 0, '0.00', '[]', 'COLGATE KIDS GEN DENTAL C/FLUOR.FRUTTIFRUTTI X 50G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COLGATE KIDS GEN DENTAL C/FLUOR.FRUTTIFRUTTI X 50G', 126, '0', '4.00', '4.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(457, 0, '0.00', '[]', 'COLGATE KIDS SABOR FRESANTÁSTICO.GEL.C/FLUORX 50 GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COLGATE KIDS SABOR FRESANTÁSTICO.GEL.C/FLUORX 50 GR.', 126, '0', '4.00', '4.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(458, 0, '0.00', '[]', 'COLGATE TRIPLE ACC EXTRA BLANC X 45ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COLGATE TRIPLE ACC EXTRA BLANC X 45ML.', 126, '0', '4.50', '4.50', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(459, 0, '0.00', '[]', 'COLGATE TRIPLE ACCION (MENTA ORIGINAL)FAMILIARX 150ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COLGATE TRIPLE ACCION (MENTA ORIGINAL)FAMILIARX 150ML', 126, '0', '8.90', '8.90', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(460, 0, '0.00', '[]', 'COLGATE TRIPLE ACCION EXTRA BPREMIER CLEAR X 50 ML + CEPILLO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COLGATE TRIPLE ACCION EXTRA BPREMIER CLEAR X 50 ML + CEPILLO', 126, '0', '4.50', '4.50', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(461, 0, '0.00', '[]', 'COLIRIO EYEMO FRASC. X 12ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COLIRIO EYEMO FRASC. X 12ML.', 126, '0', '10.00', '10.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(462, 0, '0.00', '[]', 'COLIRIO EYEMO FRASC. X 8ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COLIRIO EYEMO FRASC. X 8ML.', 126, '0', '10.00', '10.00', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(463, 0, '0.00', '[]', 'COMPLEJO B FORTE', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COMPLEJO B FORTE', 126, '0', '1.50', '1.50', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 48, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(464, 0, '0.00', '[]', 'COMPLEJO B JARABE X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COMPLEJO B JARABE X 120ML.', 126, '0', '9.90', '9.90', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(465, 0, '0.00', '[]', 'COMPLEJO B JARABE X 180ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COMPLEJO B JARABE X 180ML.', 126, '0', '7.90', '7.90', '0', '1607126664', 'no', NULL, 'ok', '0', '335', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(466, 0, '0.00', '[]', 'COMPLEJO B X 300 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COMPLEJO B X 300 CAP.', 126, '0', '0.15', '0.15', '0', '1607126664', 'no', NULL, 'ok', '0', '338', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(467, 0, '0.00', '[]', 'COMPLEJO B X 300 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COMPLEJO B X 300 CAP.', 126, '0', '0.20', '0.20', '0', '1607126664', 'no', NULL, 'ok', '0', '338', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(468, 0, '0.00', '[]', 'CONTROLGYN TIRA CAJA X1', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CONTROLGYN TIRA CAJA X1', 126, '0', '5.00', '5.00', '0', '1607126664', 'no', NULL, 'ok', '0', '338', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(469, 0, '0.00', '[]', 'CORTA UÑA ADULTO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CORTA UÑA ADULTO', 126, '0', '3.00', '3.00', '0', '1607126664', 'no', NULL, 'ok', '0', '338', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(470, 0, '0.00', '[]', 'CORTA UÑA PEDIATRICO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CORTA UÑA PEDIATRICO', 126, '0', '3.50', '3.50', '0', '1607126664', 'no', NULL, 'ok', '0', '338', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(471, 0, '0.00', '[]', 'COTIDIAN CLASICO G PAÑAL PARA ADULTO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COTIDIAN CLASICO G PAÑAL PARA ADULTO', 126, '0', '3.00', '3.00', '0', '1607126665', 'no', NULL, 'ok', '0', '338', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(472, 0, '0.00', '[]', 'COTIDIAN TOALLA-MULTIUSO.TALLA.UNICO X 10 UN.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COTIDIAN TOALLA-MULTIUSO.TALLA.UNICO X 10 UN.', 126, '0', '4.50', '4.50', '0', '1607126665', 'no', NULL, 'ok', '0', '340', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(473, 0, '0.00', '[]', 'COXMARK120MG CAJA X 7 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'COXMARK120MG CAJA X 7 TAB.', 126, '0', '7.50', '7.50', '0', '1607126665', 'no', NULL, 'ok', '0', '340', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(474, 0, '0.00', '[]', 'CRANEODOL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CRANEODOL', 126, '0', '2.00', '2.00', '0', '1607126665', 'no', NULL, 'ok', '0', '339', 13, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(475, 0, '0.00', '[]', 'CRECIMAX PLUS SUSP. X 180ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'CRECIMAX PLUS SUSP. X 180ML.', 126, '0', '26.00', '26.00', '0', '1607126665', 'no', NULL, 'ok', '0', '339', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(476, 0, '0.00', '[]', 'DAMICOCYN 1.5 MG TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DAMICOCYN 1.5 MG TAB', 126, '0', '15.00', '15.00', '0', '1607126665', 'no', NULL, 'ok', '0', '339', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(477, 0, '0.00', '[]', 'DEFLAZACORT 6MG CJA.X 10 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEFLAZACORT 6MG CJA.X 10 TAB.', 126, '0', '2.00', '2.00', '0', '1607126665', 'no', NULL, 'ok', '0', '339', 37, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(478, 0, '0.00', '[]', 'DERMAFAR CREMA X 35G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DERMAFAR CREMA X 35G', 126, '0', '23.00', '23.00', '0', '1607126665', 'no', NULL, 'ok', '0', '341', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(479, 0, '0.00', '[]', 'DESLORATADINA 2.5MG/5ML JBE. FCO. X 60 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DESLORATADINA 2.5MG/5ML JBE. FCO. X 60 ML.', 126, '0', '18.00', '18.00', '0', '1607126665', 'no', NULL, 'ok', '0', '342', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(480, 0, '0.00', '[]', 'DESTOLIT 5% CREMA 30MG (PERMETRINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DESTOLIT 5% CREMA 30MG (PERMETRINA)', 126, '0', '27.94', '27.94', '0', '1607126665', 'no', NULL, 'ok', '0', '342', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(481, 0, '0.00', '[]', 'DEXALOR X 100MG.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEXALOR X 100MG.', 126, '0', '2.50', '2.50', '0', '1607126665', 'no', NULL, 'ok', '0', '342', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(482, 0, '0.00', '[]', 'DEXAMARK 4MG CAJA X 30 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEXAMARK 4MG CAJA X 30 TAB.', 126, '0', '2.00', '2.00', '0', '1607126665', 'no', NULL, 'ok', '0', '344', 22, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(483, 0, '0.00', '[]', 'DEXAMETASONA 4MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEXAMETASONA 4MG X 100 TABL.', 126, '0', '0.50', '0.50', '0', '1607126665', 'no', NULL, 'ok', '0', '344', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(484, 0, '0.00', '[]', 'DEXAMETASONA 4MG/1ML - 50 AMPOLLA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEXAMETASONA 4MG/1ML - 50 AMPOLLA', 126, '0', '2.50', '2.50', '0', '1607126665', 'no', NULL, 'ok', '0', '343', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(485, 0, '0.00', '[]', 'DEXAMETASONA 4MG/ML INY. CJA. X 10 AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEXAMETASONA 4MG/ML INY. CJA. X 10 AMP.', 126, '0', '3.00', '3.00', '0', '1607126665', 'no', NULL, 'ok', '0', '343', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(486, 0, '0.00', '[]', 'DEXAMEX 4MG CAJA X 30 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEXAMEX 4MG CAJA X 30 TAB.', 126, '0', '2.00', '2.00', '0', '1607126665', 'no', NULL, 'ok', '0', '345', 97, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(487, 0, '0.00', '[]', 'DEXCORTIL 4MG/2ML(DEXAMETASONA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEXCORTIL 4MG/2ML(DEXAMETASONA)', 126, '0', '3.50', '3.50', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 25, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(488, 0, '0.00', '[]', 'DEXPHARM 4MG CAJA X 30 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEXPHARM 4MG CAJA X 30 TAB.', 126, '0', '2.00', '2.00', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 95, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(489, 0, '0.00', '[]', 'DEXTROMETORFANO 15MG JBE. X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEXTROMETORFANO 15MG JBE. X 120ML.', 126, '0', '6.50', '6.50', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(490, 0, '0.00', '[]', 'DEXTROSA 5% X 1000ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DEXTROSA 5% X 1000ML.', 126, '0', '4.50', '4.50', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(491, 0, '0.00', '[]', 'DIAGRIN FLEX SABOR A NARANJA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DIAGRIN FLEX SABOR A NARANJA', 126, '0', '5.00', '5.00', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(492, 0, '0.00', '[]', 'DICLOFENACO 1% GEL TUBO X 50G.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DICLOFENACO 1% GEL TUBO X 50G.', 126, '0', '6.00', '6.00', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(493, 0, '0.00', '[]', 'DICLOFENACO 50MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DICLOFENACO 50MG X 100 TABL.', 126, '0', '1.00', '1.00', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 60, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(494, 0, '0.00', '[]', 'DICLOFENACO SODICO 75MG/3ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DICLOFENACO SODICO 75MG/3ML.', 126, '0', '2.50', '2.50', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(495, 0, '0.00', '[]', 'DICLOMAX 250MG/5ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DICLOMAX 250MG/5ML', 126, '0', '19.90', '19.90', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(496, 0, '0.00', '[]', 'DICLOXACILINA 500MG CJA.X 50 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DICLOXACILINA 500MG CJA.X 50 CAP.', 126, '0', '0.80', '0.80', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 44, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(497, 0, '0.00', '[]', 'DICLOXACILINA 500MG CJA.X 50 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DICLOXACILINA 500MG CJA.X 50 CAP.', 126, '0', '0.80', '0.80', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 87, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(498, 0, '0.00', '[]', 'DICLOXINA 500MG X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DICLOXINA 500MG X 100 CAP.', 126, '0', '1.50', '1.50', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 105, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(499, 0, '0.00', '[]', 'DICODRIN 20MG CAJA X 30 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DICODRIN 20MG CAJA X 30 TAB.', 126, '0', '1.50', '1.50', '0', '1607126665', 'no', NULL, 'ok', '0', '346', 22, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(500, 0, '0.00', '[]', 'DIFECLOX 75 MG /5 ML (DICLOFENACO)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DIFECLOX 75 MG /5 ML (DICLOFENACO)', 126, '0', '3.50', '3.50', '0', '1607126665', 'no', NULL, 'ok', '0', '347', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(501, 0, '0.00', '[]', 'DIGERMIN 5ML X 10 AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DIGERMIN 5ML X 10 AMP.', 126, '0', '4.00', '4.00', '0', '1607126665', 'no', NULL, 'ok', '0', '347', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(502, 0, '0.00', '[]', 'DIOXAFLEX CB PLUS X 120 CAPSULAS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DIOXAFLEX CB PLUS X 120 CAPSULAS.', 126, '0', '4.00', '4.00', '0', '1607126666', 'no', NULL, 'ok', '0', '347', 12, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(503, 0, '0.00', '[]', 'DIVONAL 50MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DIVONAL 50MG X 100 TABL.', 126, '0', '1.00', '1.00', '0', '1607126666', 'no', NULL, 'ok', '0', '347', 85, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(504, 0, '0.00', '[]', 'DIZOLVIN 30 MG/5ML JBE X 120 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DIZOLVIN 30 MG/5ML JBE X 120 ML', 126, '0', '12.00', '12.00', '0', '1607126666', 'no', NULL, 'ok', '0', '347', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(505, 0, '0.00', '[]', 'DOLO CALM EXTRA FORTE 10 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLO CALM EXTRA FORTE 10 TABL.', 126, '0', '2.00', '2.00', '0', '1607126666', 'no', NULL, 'ok', '0', '349', 48, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL);
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(506, 0, '0.00', '[]', 'DOLO LIVIOLEX SUSP X 60 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLO LIVIOLEX SUSP X 60 ML.', 126, '0', '19.00', '19.00', '0', '1607126666', 'no', NULL, 'ok', '0', '349', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(507, 0, '0.00', '[]', 'DOLO MELOXIC X 60 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLO MELOXIC X 60 TABL.', 126, '0', '2.50', '2.50', '0', '1607126666', 'no', NULL, 'ok', '0', '348', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(508, 0, '0.00', '[]', 'DOLO NEUROBION FORTE DC CAJA X 3 JER. INY. INTRAMUS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLO NEUROBION FORTE DC CAJA X 3 JER. INY. INTRAMUS', 126, '0', '38.00', '38.00', '0', '1607126666', 'no', NULL, 'ok', '0', '350', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(509, 0, '0.00', '[]', 'DOLO NEUROBION FORTE X 200 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLO NEUROBION FORTE X 200 TABL.', 126, '0', '3.00', '3.00', '0', '1607126666', 'no', NULL, 'ok', '0', '350', 27, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(510, 0, '0.00', '[]', 'DOLO NEUROPRESS FORTE X 60 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLO NEUROPRESS FORTE X 60 TABL.', 126, '0', '2.00', '2.00', '0', '1607126666', 'no', NULL, 'ok', '0', '350', 72, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(511, 0, '0.00', '[]', 'DOLOAPROXOL DUAL FORTE', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLOAPROXOL DUAL FORTE', 126, '0', '2.00', '2.00', '0', '1607126666', 'no', NULL, 'ok', '0', '350', 73, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(512, 0, '0.00', '[]', 'DOLOCHECK PLUS 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLOCHECK PLUS 100 CAP.', 126, '0', '1.00', '1.00', '0', '1607126666', 'no', NULL, 'ok', '0', '350', 70, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(513, 0, '0.00', '[]', 'DOLOFLAM EXTRA FORTE 400MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLOFLAM EXTRA FORTE 400MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126666', 'no', NULL, 'ok', '0', '350', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(514, 0, '0.00', '[]', 'DOLOPRESS FORTE X 200 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLOPRESS FORTE X 200 TABL.', 126, '0', '2.00', '2.00', '0', '1607126666', 'no', NULL, 'ok', '0', '350', 247, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(515, 0, '0.00', '[]', 'DOLOPRESS RAPID X 10 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLOPRESS RAPID X 10 TABL.', 126, '0', '2.00', '2.00', '0', '1607126666', 'no', NULL, 'ok', '0', '350', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(516, 0, '0.00', '[]', 'DOLORAL SUSPENSION 100MG/5ML X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOLORAL SUSPENSION 100MG/5ML X 60ML.', 126, '0', '14.00', '14.00', '0', '1607126666', 'no', NULL, 'ok', '0', '350', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(517, 0, '0.00', '[]', 'DONAMEDICAL 2MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DONAMEDICAL 2MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126666', 'no', NULL, 'ok', '0', '351', 88, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(518, 0, '0.00', '[]', 'DOXIMED 100 MG X 100 CAP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DOXIMED 100 MG X 100 CAP', 126, '0', '1.50', '1.50', '0', '1607126666', 'no', NULL, 'ok', '0', '351', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(519, 0, '0.00', '[]', 'DR.FLU CAPSULA BLANDA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DR.FLU CAPSULA BLANDA', 126, '0', '0.81', '0.81', '0', '1607126666', 'no', NULL, 'ok', '0', '352', 50, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(520, 0, '0.00', '[]', 'DR.KAUFMAN CLASICO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DR.KAUFMAN CLASICO', 126, '0', '3.50', '3.50', '0', '1607126666', 'no', NULL, 'ok', '0', '353', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(521, 0, '0.00', '[]', 'DROXILAR 500MG X 48 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DROXILAR 500MG X 48 CAP.', 126, '0', '4.00', '4.00', '0', '1607126666', 'no', NULL, 'ok', '0', '354', 46, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(522, 0, '0.00', '[]', 'DULCOLAX', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'DULCOLAX', 126, '0', '2.00', '2.00', '0', '1607126666', 'no', NULL, 'ok', '0', '355', 55, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(523, 0, '0.00', '[]', 'ELECTROLIGHT FRESA X 475ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ELECTROLIGHT FRESA X 475ML', 126, '0', '2.50', '2.50', '0', '1607126666', 'no', NULL, 'ok', '0', '356', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(524, 0, '0.00', '[]', 'ELECTRORAL NF ANIS X 1000ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ELECTRORAL NF ANIS X 1000ML.', 126, '0', '11.00', '11.00', '0', '1607126666', 'no', NULL, 'ok', '0', '356', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(525, 0, '0.00', '[]', 'ELECTRORAL PEDIATRICO FRESA X 1000ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ELECTRORAL PEDIATRICO FRESA X 1000ML.', 126, '0', '11.00', '11.00', '0', '1607126666', 'no', NULL, 'ok', '0', '357', 13, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(526, 0, '0.00', '[]', 'ELIXIR ESTOMACAL X 30ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ELIXIR ESTOMACAL X 30ML.', 126, '0', '2.00', '2.00', '0', '1607126666', 'no', NULL, 'ok', '0', '357', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(527, 0, '0.00', '[]', 'ENALAPRIL 10MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ENALAPRIL 10MG X 100 TABL.', 126, '0', '0.20', '0.20', '0', '1607126666', 'no', NULL, 'ok', '0', '357', 116, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(528, 0, '0.00', '[]', 'ENALAPRIL 20MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ENALAPRIL 20MG X 100 TABL.', 126, '0', '0.20', '0.20', '0', '1607126666', 'no', NULL, 'ok', '0', '357', 150, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(529, 0, '0.00', '[]', 'ENDDOL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ENDDOL', 126, '0', '2.00', '2.00', '0', '1607126666', 'no', NULL, 'ok', '0', '357', 168, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(530, 0, '0.00', '[]', 'ENSURE ADVANCE VAINILLA LTA 850G.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ENSURE ADVANCE VAINILLA LTA 850G.', 126, '0', '105.00', '105.00', '0', '1607126666', 'no', NULL, 'ok', '0', '357', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(531, 0, '0.00', '[]', 'ENTEROGERMINA 5ML X 10 AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ENTEROGERMINA 5ML X 10 AMP.', 126, '0', '4.00', '4.00', '0', '1607126666', 'no', NULL, 'ok', '0', '357', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(532, 0, '0.00', '[]', 'ENTEROXOL 50MG/15ML X 120ML SUSP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ENTEROXOL 50MG/15ML X 120ML SUSP', 126, '0', '18.00', '18.00', '0', '1607126667', 'no', NULL, 'ok', '0', '357', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(533, 0, '0.00', '[]', 'ENZO 4 JARABE DE ENZIMA DIGESTIVA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ENZO 4 JARABE DE ENZIMA DIGESTIVA', 126, '0', '29.90', '29.90', '0', '1607126667', 'no', NULL, 'ok', '0', '357', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(534, 0, '0.00', '[]', 'ENZO X 30 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ENZO X 30 CAP.', 126, '0', '2.00', '2.00', '0', '1607126667', 'no', NULL, 'ok', '0', '358', 67, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(535, 0, '0.00', '[]', 'EQUIPO DE VENOCLISIS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'EQUIPO DE VENOCLISIS', 126, '0', '1.50', '1.50', '0', '1607126667', 'no', NULL, 'ok', '0', '358', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(536, 0, '0.00', '[]', 'EQUIPO DE VOLUTROL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'EQUIPO DE VOLUTROL', 126, '0', '12.00', '12.00', '0', '1607126667', 'no', NULL, 'ok', '0', '358', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(537, 0, '0.00', '[]', 'ERITROMICINA 500MG CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ERITROMICINA 500MG CAJA X 100 TAB.', 126, '0', '1.00', '1.00', '0', '1607126667', 'no', NULL, 'ok', '0', '358', 28, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(538, 0, '0.00', '[]', 'ESOMEPRAZOL 40MG X 100 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ESOMEPRAZOL 40MG X 100 UNID.', 126, '0', '2.00', '2.00', '0', '1607126667', 'no', NULL, 'ok', '0', '358', 40, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(539, 0, '0.00', '[]', 'ESPASMODEL COMPUESTO X100 TAB (PARGEVERINA+CLONIXI', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ESPASMODEL COMPUESTO X100 TAB (PARGEVERINA+CLONIXI', 126, '0', '2.00', '2.00', '0', '1607126667', 'no', NULL, 'ok', '0', '358', 37, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(540, 0, '0.00', '[]', 'ESPASMOKOLIC X100 TAB (PARGEVERINA+CLONIXI', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ESPASMOKOLIC X100 TAB (PARGEVERINA+CLONIXI', 126, '0', '2.00', '2.00', '0', '1607126667', 'no', NULL, 'ok', '0', '359', 83, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(541, 0, '0.00', '[]', 'ESPASMOSEDIL COMPUESTO X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ESPASMOSEDIL COMPUESTO X 100 TAB.', 126, '0', '2.00', '2.00', '0', '1607126667', 'no', NULL, 'ok', '0', '359', 87, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(542, 0, '0.00', '[]', 'ETIQUET JABON X 90GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ETIQUET JABON X 90GR.', 126, '0', '2.00', '2.00', '0', '1607126667', 'no', NULL, 'ok', '0', '359', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(543, 0, '0.00', '[]', 'ETORCOX 120MG CAJA X 14 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ETORCOX 120MG CAJA X 14 TAB.', 126, '0', '7.50', '7.50', '0', '1607126667', 'no', NULL, 'ok', '0', '359', 22, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(544, 0, '0.00', '[]', 'EVERDRIN FORTE MIGRAÑA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'EVERDRIN FORTE MIGRAÑA', 126, '0', '2.00', '2.00', '0', '1607126667', 'no', NULL, 'ok', '0', '359', 91, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(545, 0, '0.00', '[]', 'EXADIOL FLEX X 10 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'EXADIOL FLEX X 10 TABL.', 126, '0', '3.00', '3.00', '0', '1607126667', 'no', NULL, 'ok', '0', '359', 13, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(546, 0, '0.00', '[]', 'EYEMICIN 0.3% X 10 ML SOLUCION OFTALMIICA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'EYEMICIN 0.3% X 10 ML SOLUCION OFTALMIICA', 126, '0', '14.00', '14.00', '0', '1607126667', 'no', NULL, 'ok', '0', '359', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(547, 0, '0.00', '[]', 'FAMIDAL OVULOS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FAMIDAL OVULOS', 126, '0', '4.50', '4.50', '0', '1607126667', 'no', NULL, 'ok', '0', '359', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(548, 0, '0.00', '[]', 'FARMISIL 1% CREMA TOPICA TUBO X 15G.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FARMISIL 1% CREMA TOPICA TUBO X 15G.', 126, '0', '16.00', '16.00', '0', '1607126667', 'no', NULL, 'ok', '0', '359', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(549, 0, '0.00', '[]', 'FEBRIFLAM X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FEBRIFLAM X 100 TAB.', 126, '0', '1.50', '1.50', '0', '1607126667', 'no', NULL, 'ok', '0', '359', 63, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(550, 0, '0.00', '[]', 'FENITOINA SODICA 100MG X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FENITOINA SODICA 100MG X 100 TAB.', 126, '0', '1.00', '1.00', '0', '1607126667', 'no', NULL, 'ok', '0', '360', 60, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(551, 0, '0.00', '[]', 'FER-IN-SOL 125MG/1ML .GOTAS X 20 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FER-IN-SOL 125MG/1ML .GOTAS X 20 ML.', 126, '0', '25.00', '25.00', '0', '1607126667', 'no', NULL, 'ok', '0', '360', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(552, 0, '0.00', '[]', 'FLAMALGESICO X 60 ML SUSP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLAMALGESICO X 60 ML SUSP', 126, '0', '10.00', '10.00', '0', '1607126667', 'no', NULL, 'ok', '0', '362', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(553, 0, '0.00', '[]', 'FLAPEX-E 20 BLISTER X 6 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLAPEX-E 20 BLISTER X 6 CAP.', 126, '0', '1.50', '1.50', '0', '1607126667', 'no', NULL, 'ok', '0', '361', 32, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(554, 0, '0.00', '[]', 'FLATUZYM X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLATUZYM X 100 CAP.', 126, '0', '1.50', '1.50', '0', '1607126667', 'no', NULL, 'ok', '0', '361', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(555, 0, '0.00', '[]', 'FLAVOXATO 200MG X 20 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLAVOXATO 200MG X 20 TABL.', 126, '0', '2.00', '2.00', '0', '1607126667', 'no', NULL, 'ok', '0', '361', 14, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(556, 0, '0.00', '[]', 'FLOGOFLEX RELAX X 100 TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLOGOFLEX RELAX X 100 TAB', 126, '0', '2.50', '2.50', '0', '1607126667', 'no', NULL, 'ok', '0', '361', 128, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(557, 0, '0.00', '[]', 'FLORATIL 250MG X 10 SOBR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLORATIL 250MG X 10 SOBR.', 126, '0', '5.00', '5.00', '0', '1607126667', 'no', NULL, 'ok', '0', '361', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(558, 0, '0.00', '[]', 'FLORBACT Z', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLORBACT Z', 126, '0', '5.00', '5.00', '0', '1607126667', 'no', NULL, 'ok', '0', '361', 20, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(559, 0, '0.00', '[]', 'FLORIL COLIRIO X 15ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLORIL COLIRIO X 15ML.', 126, '0', '10.00', '10.00', '0', '1607126667', 'no', NULL, 'ok', '0', '361', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(560, 0, '0.00', '[]', 'FLORIL COLIRIO X 8ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLORIL COLIRIO X 8ML.', 126, '0', '9.50', '9.50', '0', '1607126667', 'no', NULL, 'ok', '0', '361', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(561, 0, '0.00', '[]', 'FLOXIFAR 500 MG X 30 UND', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLOXIFAR 500 MG X 30 UND', 126, '0', '3.50', '3.50', '0', '1607126667', 'no', NULL, 'ok', '0', '361', 37, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(562, 0, '0.00', '[]', 'FLUCONAZOL 150MG CJA.X 1 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLUCONAZOL 150MG CJA.X 1 CAP.', 126, '0', '2.00', '2.00', '0', '1607126667', 'no', NULL, 'ok', '0', '361', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(563, 0, '0.00', '[]', 'FLUCONAZOL 200 MG .X 1 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLUCONAZOL 200 MG .X 1 CAP.', 126, '0', '4.00', '4.00', '0', '1607126668', 'no', NULL, 'ok', '0', '361', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(564, 0, '0.00', '[]', 'FLUCONAZOL 200 MG X 5 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLUCONAZOL 200 MG X 5 TABL.', 126, '0', '4.00', '4.00', '0', '1607126668', 'no', NULL, 'ok', '0', '363', 24, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(565, 0, '0.00', '[]', 'FLUCONAZOL150MG X 5 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLUCONAZOL150MG X 5 TABL.', 126, '0', '4.00', '4.00', '0', '1607126668', 'no', NULL, 'ok', '0', '363', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(566, 0, '0.00', '[]', 'FLUDYCISTEINA 100MG/5 ML X 120 ML (ACETILCISTEINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLUDYCISTEINA 100MG/5 ML X 120 ML (ACETILCISTEINA)', 126, '0', '26.00', '26.00', '0', '1607126668', 'no', NULL, 'ok', '0', '364', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(567, 0, '0.00', '[]', 'FLUIBRONCOLORAL 600 MG CAJA X 20 SOBRES', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLUIBRONCOLORAL 600 MG CAJA X 20 SOBRES', 126, '0', '3.50', '3.50', '0', '1607126668', 'no', NULL, 'ok', '0', '364', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(568, 0, '0.00', '[]', 'FLUJESIN 150MG X 1 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLUJESIN 150MG X 1 CAP.', 126, '0', '8.00', '8.00', '0', '1607126668', 'no', NULL, 'ok', '0', '364', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(569, 0, '0.00', '[]', 'FLUMIL M 150MG X 1 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLUMIL M 150MG X 1 CAP.', 126, '0', '8.00', '8.00', '0', '1607126668', 'no', NULL, 'ok', '0', '364', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(570, 0, '0.00', '[]', 'FLUOXETINA 20 MG CAJA X 100 CAPSULAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FLUOXETINA 20 MG CAJA X 100 CAPSULAS', 126, '0', '1.50', '1.50', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(571, 0, '0.00', '[]', 'FOEMINA(SACAPEZON) (PEZONERA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FOEMINA(SACAPEZON) (PEZONERA)', 126, '0', '9.50', '9.50', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(572, 0, '0.00', '[]', 'FRAMIDEX GOTAS OFT/OTIC X 2.5ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FRAMIDEX GOTAS OFT/OTIC X 2.5ML.', 126, '0', '10.90', '10.90', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(573, 0, '0.00', '[]', 'FRASCO COLECTOR DE ORINA ESTERIL 120 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FRASCO COLECTOR DE ORINA ESTERIL 120 ML', 126, '0', '1.50', '1.50', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(574, 0, '0.00', '[]', 'FRASCO COLECTOR ESTERIL TAPA ROSCA HECESX 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FRASCO COLECTOR ESTERIL TAPA ROSCA HECESX 60ML.', 126, '0', '1.50', '1.50', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(575, 0, '0.00', '[]', 'FRUTTI.PED PEDIATRICO 500 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FRUTTI.PED PEDIATRICO 500 ML', 126, '0', '8.00', '8.00', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(576, 0, '0.00', '[]', 'FRUTTIFLEX 50 FRESA SOL ORAL X 1000 ML ADULTO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FRUTTIFLEX 50 FRESA SOL ORAL X 1000 ML ADULTO', 126, '0', '10.00', '10.00', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 12, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(577, 0, '0.00', '[]', 'FUROSEMIDA 40MG CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'FUROSEMIDA 40MG CAJA X 100 TAB.', 126, '0', '0.30', '0.30', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 24, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(578, 0, '0.00', '[]', 'GASA ESTERIL 10 X 10 SOBRE X 8 PLG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GASA ESTERIL 10 X 10 SOBRE X 8 PLG', 126, '0', '2.50', '2.50', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(579, 0, '0.00', '[]', 'GASA ESTERIL 5 X 5 CAJA X 20 UND.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GASA ESTERIL 5 X 5 CAJA X 20 UND.', 126, '0', '1.50', '1.50', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(580, 0, '0.00', '[]', 'GASA ESTERIL 7.5 X 7.5 CM SOBRE X20X 8 PLG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GASA ESTERIL 7.5 X 7.5 CM SOBRE X20X 8 PLG', 126, '0', '2.00', '2.00', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(581, 0, '0.00', '[]', 'GASEOMEDIC 40 TABLETAS X 100 TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GASEOMEDIC 40 TABLETAS X 100 TAB', 126, '0', '1.50', '1.50', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 57, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(582, 0, '0.00', '[]', 'GASEOMEDIC GOTAS ANIS FCO X 15ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GASEOMEDIC GOTAS ANIS FCO X 15ML', 126, '0', '12.00', '12.00', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(583, 0, '0.00', '[]', 'GASLESS MAX 80MG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GASLESS MAX 80MG', 126, '0', '1.50', '1.50', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 23, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(584, 0, '0.00', '[]', 'GASTRORAL SUSP FCO X 200 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GASTRORAL SUSP FCO X 200 ML', 126, '0', '22.90', '22.90', '0', '1607126668', 'no', NULL, 'ok', '0', '365', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(585, 0, '0.00', '[]', 'GEMFIBROZILO 600MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GEMFIBROZILO 600MG X 100 TABL.', 126, '0', '1.00', '1.00', '0', '1607126668', 'no', NULL, 'ok', '0', '366', 29, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(586, 0, '0.00', '[]', 'GENFAR VIT', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GENFAR VIT', 126, '0', '1.50', '1.50', '0', '1607126668', 'no', NULL, 'ok', '0', '367', 89, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(587, 0, '0.00', '[]', 'GENTAMICINA 160 MG/2ML INY. CAJA X 1 AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GENTAMICINA 160 MG/2ML INY. CAJA X 1 AMP.', 126, '0', '4.00', '4.00', '0', '1607126668', 'no', NULL, 'ok', '0', '367', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(588, 0, '0.00', '[]', 'GENTAMICINA GOT. OFT. X 5ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GENTAMICINA GOT. OFT. X 5ML.', 126, '0', '6.00', '6.00', '0', '1607126668', 'no', NULL, 'ok', '0', '368', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(589, 0, '0.00', '[]', 'GENTAOFTAL X 10 ML SOLUCION OFTALMIICA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GENTAOFTAL X 10 ML SOLUCION OFTALMIICA', 126, '0', '14.00', '14.00', '0', '1607126668', 'no', NULL, 'ok', '0', '368', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(590, 0, '0.00', '[]', 'GINOXICAM 20MG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GINOXICAM 20MG', 126, '0', '2.00', '2.00', '0', '1607126668', 'no', NULL, 'ok', '0', '368', 91, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(591, 0, '0.00', '[]', 'GLIBENCLAMIDA 5MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GLIBENCLAMIDA 5MG X 100 TABL.', 126, '0', '0.50', '0.50', '0', '1607126668', 'no', NULL, 'ok', '0', '368', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(592, 0, '0.00', '[]', 'GLICOMED 850MG CAJA X 30 TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GLICOMED 850MG CAJA X 30 TAB. REC.', 126, '0', '1.50', '1.50', '0', '1607126668', 'no', NULL, 'ok', '0', '369', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(593, 0, '0.00', '[]', 'GRAVAVIF FORTE X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GRAVAVIF FORTE X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126669', 'no', NULL, 'ok', '0', '369', 28, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(594, 0, '0.00', '[]', 'GRAVOL SUPOSITORIOS PARA NIÑOS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GRAVOL SUPOSITORIOS PARA NIÑOS', 126, '0', '6.50', '6.50', '0', '1607126669', 'no', NULL, 'ok', '0', '369', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(595, 0, '0.00', '[]', 'GRIPA C JUNIOR X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GRIPA C JUNIOR X 100 TABL.', 126, '0', '1.00', '1.00', '0', '1607126669', 'no', NULL, 'ok', '0', '369', 19, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(596, 0, '0.00', '[]', 'GRIPACHECK X 100 CAP BLANDAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GRIPACHECK X 100 CAP BLANDAS', 126, '0', '2.00', '2.00', '0', '1607126669', 'no', NULL, 'ok', '0', '369', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(597, 0, '0.00', '[]', 'GRIPALERTX TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GRIPALERTX TAB', 126, '0', '2.00', '2.00', '0', '1607126669', 'no', NULL, 'ok', '0', '369', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(598, 0, '0.00', '[]', 'GUANTES DE EXAMEN TALLA L X 50 UNID', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GUANTES DE EXAMEN TALLA L X 50 UNID', 126, '0', '1.50', '1.50', '0', '1607126669', 'no', NULL, 'ok', '0', '369', 44, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(599, 0, '0.00', '[]', 'GUANTES QUIRURGICOS ESTERILES #7 1/2 X 50', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GUANTES QUIRURGICOS ESTERILES #7 1/2 X 50', 126, '0', '2.00', '2.00', '0', '1607126669', 'no', NULL, 'ok', '0', '369', 25, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(600, 0, '0.00', '[]', 'GUANTES QUIRURGICOS ESTERILES #7 X 50', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GUANTES QUIRURGICOS ESTERILES #7 X 50', 126, '0', '2.00', '2.00', '0', '1607126669', 'no', NULL, 'ok', '0', '370', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(601, 0, '0.00', '[]', 'GYNOVAL CAP. BLANDAS VAGINALES X 100', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'GYNOVAL CAP. BLANDAS VAGINALES X 100', 126, '0', '5.00', '5.00', '0', '1607126669', 'no', NULL, 'ok', '0', '371', 11, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(602, 0, '0.00', '[]', 'HEAD & SHOULDERS HIDRATACION SHAMPOO X 375ML .', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HEAD & SHOULDERS HIDRATACION SHAMPOO X 375ML .', 126, '0', '18.90', '18.90', '0', '1607126669', 'no', NULL, 'ok', '0', '372', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(603, 0, '0.00', '[]', 'HEAD & SHOULDERS HIDRATACION SHAMPOO X 375ML+180 .', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HEAD & SHOULDERS HIDRATACION SHAMPOO X 375ML+180 .', 126, '0', '21.00', '21.00', '0', '1607126669', 'no', NULL, 'ok', '0', '373', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(604, 0, '0.00', '[]', 'HEAD & SHOULDERS MEN SHAMPOO X 90ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HEAD & SHOULDERS MEN SHAMPOO X 90ML.', 126, '0', '5.50', '5.50', '0', '1607126669', 'no', NULL, 'ok', '0', '374', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(605, 0, '0.00', '[]', 'HEDERA HELIX 39.5 MG/ 5ML X 100 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HEDERA HELIX 39.5 MG/ 5ML X 100 ML', 126, '0', '13.50', '13.50', '0', '1607126669', 'no', NULL, 'ok', '0', '375', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(606, 0, '0.00', '[]', 'HEMOCYTON JBE X 340ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HEMOCYTON JBE X 340ML', 126, '0', '24.50', '24.50', '0', '1607126669', 'no', NULL, 'ok', '0', '375', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(607, 0, '0.00', '[]', 'HENO DE PRAVIA . JABON NAT.C/CREMA HIDRATANTEX 150GR', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HENO DE PRAVIA . JABON NAT.C/CREMA HIDRATANTEX 150GR', 126, '0', '4.50', '4.50', '0', '1607126669', 'no', NULL, 'ok', '0', '375', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(608, 0, '0.00', '[]', 'HENO DE PRAVIA ORIGINAL JABON NATX 150GR (AMARILLO)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HENO DE PRAVIA ORIGINAL JABON NATX 150GR (AMARILLO)', 126, '0', '3.50', '3.50', '0', '1607126669', 'no', NULL, 'ok', '0', '376', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(609, 0, '0.00', '[]', 'HEPABION FORTE 100', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HEPABION FORTE 100', 126, '0', '3.00', '3.00', '0', '1607126669', 'no', NULL, 'ok', '0', '376', 77, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(610, 0, '0.00', '[]', 'HEPABIONTA X 200 GRAGEAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HEPABIONTA X 200 GRAGEAS', 126, '0', '2.50', '2.50', '0', '1607126669', 'no', NULL, 'ok', '0', '377', 31, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(611, 0, '0.00', '[]', 'HEPABON FORTE CAP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HEPABON FORTE CAP', 126, '0', '2.00', '2.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 22, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(612, 0, '0.00', '[]', 'HEPALIVIO B', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HEPALIVIO B', 126, '0', '2.00', '2.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 89, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(613, 0, '0.00', '[]', 'HEPAVIT B COMPLEX', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HEPAVIT B COMPLEX', 126, '0', '2.00', '2.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 33, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(614, 0, '0.00', '[]', 'HIDROCLOROTIAZIDA 50MG X 30 TABL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HIDROCLOROTIAZIDA 50MG X 30 TABL', 126, '0', '0.50', '0.50', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 88, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(615, 0, '0.00', '[]', 'HIGANATUR MAX FORTE X 60 CAPSULA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HIGANATUR MAX FORTE X 60 CAPSULA', 126, '0', '3.00', '3.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(616, 0, '0.00', '[]', 'HIPOGLOS POMADA X 20GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HIPOGLOS POMADA X 20GR.', 126, '0', '15.00', '15.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(617, 0, '0.00', '[]', 'HIRUDOID FORTE GEL X 14GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HIRUDOID FORTE GEL X 14GR.', 126, '0', '15.00', '15.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(618, 0, '0.00', '[]', 'HIRUDOID POMADA X 14 GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HIRUDOID POMADA X 14 GR.', 126, '0', '15.00', '15.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(619, 0, '0.00', '[]', 'HISALER X 10MG X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HISALER X 10MG X 100 CAP.', 126, '0', '2.00', '2.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 33, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(620, 0, '0.00', '[]', 'HISOPOS TUINIES (PURO ALGODON)X 50 UN', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HISOPOS TUINIES (PURO ALGODON)X 50 UN', 126, '0', '3.00', '3.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(621, 0, '0.00', '[]', 'HISOPOS TUINIES X 50 UN (BOLSITA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HISOPOS TUINIES X 50 UN (BOLSITA)', 126, '0', '1.50', '1.50', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(622, 0, '0.00', '[]', 'HUGGIES REC/NAC X 20 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HUGGIES REC/NAC X 20 UNID.', 126, '0', '12.00', '12.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(623, 0, '0.00', '[]', 'HUGGIES TOALLAS H.LIMPIEZA (MANZANILLA) (AMARILLO)X 80 TOALLAS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HUGGIES TOALLAS H.LIMPIEZA (MANZANILLA) (AMARILLO)X 80 TOALLAS.', 126, '0', '8.00', '8.00', '0', '1607126669', 'no', NULL, 'ok', '0', '378', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(624, 0, '0.00', '[]', 'HUGGIES TOALLAS HUMEDAS ACTIVE FRESH X 120(VERDE).', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HUGGIES TOALLAS HUMEDAS ACTIVE FRESH X 120(VERDE).', 126, '0', '12.50', '12.50', '0', '1607126670', 'no', NULL, 'ok', '0', '378', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(625, 0, '0.00', '[]', 'HUGGIES TOALLAS HUMEDAS ACTIVE FRESH X 16 (VERDE).', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HUGGIES TOALLAS HUMEDAS ACTIVE FRESH X 16 (VERDE).', 126, '0', '2.80', '2.80', '0', '1607126670', 'no', NULL, 'ok', '0', '378', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(626, 0, '0.00', '[]', 'HUGGIES TOALLAS HUMEDAS ONE DONE 48 LIMPIEZA TOTAL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HUGGIES TOALLAS HUMEDAS ONE DONE 48 LIMPIEZA TOTAL', 126, '0', '10.00', '10.00', '0', '1607126670', 'no', NULL, 'ok', '0', '378', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(627, 0, '0.00', '[]', 'HUGGIES TOALLAS HUMEDAS RECIEN NACIDO 48 UNID.A 0 MESES', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HUGGIES TOALLAS HUMEDAS RECIEN NACIDO 48 UNID.A 0 MESES', 126, '0', '10.00', '10.00', '0', '1607126670', 'no', NULL, 'ok', '0', '378', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(628, 0, '0.00', '[]', 'HUMED X 15ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'HUMED X 15ML.', 126, '0', '23.00', '23.00', '0', '1607126670', 'no', NULL, 'ok', '0', '378', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(629, 0, '0.00', '[]', 'IBUPROFENO 100MG /5MLSUSP. FCO. X 60 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'IBUPROFENO 100MG /5MLSUSP. FCO. X 60 ML.', 126, '0', '6.00', '6.00', '0', '1607126670', 'no', NULL, 'ok', '0', '378', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(630, 0, '0.00', '[]', 'IBUPROFENO 100MG/5ML SUSP. FCO.X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'IBUPROFENO 100MG/5ML SUSP. FCO.X 120ML.', 126, '0', '6.00', '6.00', '0', '1607126670', 'no', NULL, 'ok', '0', '378', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(631, 0, '0.00', '[]', 'IBUPROFENO 100MG/5ML SUSP. X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'IBUPROFENO 100MG/5ML SUSP. X 60ML.', 126, '0', '3.50', '3.50', '0', '1607126670', 'no', NULL, 'ok', '0', '378', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(632, 0, '0.00', '[]', 'IBUPROFENO 100MG/5ML X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'IBUPROFENO 100MG/5ML X 120ML.', 126, '0', '6.00', '6.00', '0', '1607126670', 'no', NULL, 'ok', '0', '378', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(633, 0, '0.00', '[]', 'IBUPROFENO 400MG CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'IBUPROFENO 400MG CAJA X 100 TAB.', 126, '0', '0.30', '0.30', '0', '1607126670', 'no', NULL, 'ok', '0', '379', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(634, 0, '0.00', '[]', 'IBUPROFENO 800MG X 50 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'IBUPROFENO 800MG X 50 TABL.', 126, '0', '1.00', '1.00', '0', '1607126670', 'no', NULL, 'ok', '0', '380', 22, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(635, 0, '0.00', '[]', 'ICY HOT X 100 G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ICY HOT X 100 G', 126, '0', '22.90', '22.90', '0', '1607126670', 'no', NULL, 'ok', '0', '381', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(636, 0, '0.00', '[]', 'IRRIGOR PLUS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'IRRIGOR PLUS', 126, '0', '2.00', '2.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 28, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(637, 0, '0.00', '[]', 'ISANA DESODORANTE PARA PIES SPRITE', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ISANA DESODORANTE PARA PIES SPRITE', 126, '0', '11.00', '11.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(638, 0, '0.00', '[]', 'ISOCONAZOL 1% CREMA X 10GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ISOCONAZOL 1% CREMA X 10GR.', 126, '0', '19.00', '19.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(639, 0, '0.00', '[]', 'JABON ASEPXIA CARBON DETOX X100G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JABON ASEPXIA CARBON DETOX X100G', 126, '0', '15.00', '15.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(640, 0, '0.00', '[]', 'JABON DOVE ESFOLIACION SUAVE 90 G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JABON DOVE ESFOLIACION SUAVE 90 G', 126, '0', '4.00', '4.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(641, 0, '0.00', '[]', 'JABON DOVE LECHE DE COCO 90 G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JABON DOVE LECHE DE COCO 90 G', 126, '0', '4.00', '4.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(642, 0, '0.00', '[]', 'JABON DOVE ORIGINAL 90 G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JABON DOVE ORIGINAL 90 G', 126, '0', '4.00', '4.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(643, 0, '0.00', '[]', 'JABON GLIC. FLORESTA ALOE VERA X 100GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JABON GLIC. FLORESTA ALOE VERA X 100GR.', 126, '0', '3.00', '3.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(644, 0, '0.00', '[]', 'JABON GLIC. FLORESTA MIEL DE ABEJA X 100GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JABON GLIC. FLORESTA MIEL DE ABEJA X 100GR.', 126, '0', '3.00', '3.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(645, 0, '0.00', '[]', 'JAIMICIL 1% CREMA TOPICA TUBO X 20G.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JAIMICIL 1% CREMA TOPICA TUBO X 20G.', 126, '0', '16.90', '16.90', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(646, 0, '0.00', '[]', 'JERINGA 5ML C/AGUJA X 100', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JERINGA 5ML C/AGUJA X 100', 126, '0', '0.50', '0.50', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 36, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(647, 0, '0.00', '[]', 'JET FLOX 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JET FLOX 500MG X 100 TABL.', 126, '0', '2.00', '2.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(648, 0, '0.00', '[]', 'JOHNSON ACEITE ORIGINAL X 50ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JOHNSON ACEITE ORIGINAL X 50ML', 126, '0', '8.00', '8.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL);
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(649, 0, '0.00', '[]', 'JOHNSON BABY JABON X 80G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JOHNSON BABY JABON X 80G', 126, '0', '4.00', '4.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(650, 0, '0.00', '[]', 'JOHNSON BABY SHAMPOO X 750ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JOHNSON BABY SHAMPOO X 750ML.', 126, '0', '29.90', '29.90', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(651, 0, '0.00', '[]', 'JOHNSON BABY SHAMPOO. X 200 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JOHNSON BABY SHAMPOO. X 200 ML.', 126, '0', '11.00', '11.00', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(652, 0, '0.00', '[]', 'JOHNSON BABY SHAMPOO.CABELLO CLARO X 100ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JOHNSON BABY SHAMPOO.CABELLO CLARO X 100ML.', 126, '0', '7.90', '7.90', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(653, 0, '0.00', '[]', 'JOHNSONS ACEITE X 50ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'JOHNSONS ACEITE X 50ML.', 126, '0', '7.50', '7.50', '0', '1607126670', 'no', NULL, 'ok', '0', '283', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(654, 0, '0.00', '[]', 'KENALMED 10 MG CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KENALMED 10 MG CAJA X 100 TAB.', 126, '0', '2.00', '2.00', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 49, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(655, 0, '0.00', '[]', 'KETAXAL 10 MG CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KETAXAL 10 MG CAJA X 100 TAB.', 126, '0', '2.00', '2.00', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(656, 0, '0.00', '[]', 'KETOALGIN 10 MG CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KETOALGIN 10 MG CAJA X 100 TAB.', 126, '0', '2.00', '2.00', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 61, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(657, 0, '0.00', '[]', 'KETONES 10 MG TAB X 100 UND (KETOROLACO TROMETAMINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KETONES 10 MG TAB X 100 UND (KETOROLACO TROMETAMINA)', 126, '0', '2.00', '2.00', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 70, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(658, 0, '0.00', '[]', 'KETONIL 2% X 130 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KETONIL 2% X 130 ML', 126, '0', '30.00', '30.00', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(659, 0, '0.00', '[]', 'KETOPROFENO 100MG CAJA X 30 TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KETOPROFENO 100MG CAJA X 30 TAB. REC.', 126, '0', '2.00', '2.00', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 41, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(660, 0, '0.00', '[]', 'KETOPROFENO GEL AL 2.5%', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KETOPROFENO GEL AL 2.5%', 126, '0', '13.00', '13.00', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(661, 0, '0.00', '[]', 'KETOROLACO 10MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KETOROLACO 10MG X 100 TABL.', 126, '0', '0.40', '0.40', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 58, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(662, 0, '0.00', '[]', 'KETOROLACO 30MG/ML INY. CAJA X 5 AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KETOROLACO 30MG/ML INY. CAJA X 5 AMP.', 126, '0', '3.00', '3.00', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(663, 0, '0.00', '[]', 'KITADOL MIGRAÑA X 40 SOBRES.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KITADOL MIGRAÑA X 40 SOBRES.', 126, '0', '2.30', '2.30', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 11, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(664, 0, '0.00', '[]', 'KONZIL SACHET SHAMPOO Y ACONDIC. X 30ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KONZIL SACHET SHAMPOO Y ACONDIC. X 30ML.', 126, '0', '1.50', '1.50', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(665, 0, '0.00', '[]', 'KOTEX TOALLA NOCTURNA CON ALAS TELA X 8 TOALLAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'KOTEX TOALLA NOCTURNA CON ALAS TELA X 8 TOALLAS', 126, '0', '6.50', '6.50', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(666, 0, '0.00', '[]', 'LACTUFAR 3.33G/5ML SOL. ORAL X 100ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LACTUFAR 3.33G/5ML SOL. ORAL X 100ML.', 126, '0', '19.90', '19.90', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(667, 0, '0.00', '[]', 'LACTULOSA 3.3G/5ML FCO X 120 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LACTULOSA 3.3G/5ML FCO X 120 ML', 126, '0', '15.00', '15.00', '0', '1607126671', 'no', NULL, 'ok', '0', '283', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(668, 0, '0.00', '[]', 'LADY SPEED STICK AEROSOL X 100ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LADY SPEED STICK AEROSOL X 100ML.', 126, '0', '10.00', '10.00', '0', '1607126671', 'no', NULL, 'ok', '0', '383', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(669, 0, '0.00', '[]', 'LADY SPEED STICK X 16 SACHET.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LADY SPEED STICK X 16 SACHET.', 126, '0', '0.70', '0.70', '0', '1607126671', 'no', NULL, 'ok', '0', '383', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(670, 0, '0.00', '[]', 'LARITOL DX X 10 TABL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LARITOL DX X 10 TABL', 126, '0', '2.00', '2.00', '0', '1607126671', 'no', NULL, 'ok', '0', '383', 37, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(671, 0, '0.00', '[]', 'LARITOL DX X 10MG.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LARITOL DX X 10MG.', 126, '0', '2.50', '2.50', '0', '1607126671', 'no', NULL, 'ok', '0', '383', 18, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(672, 0, '0.00', '[]', 'LASIX 40MG X 20 COMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LASIX 40MG X 20 COMP.', 126, '0', '1.50', '1.50', '0', '1607126671', 'no', NULL, 'ok', '0', '383', 40, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(673, 0, '0.00', '[]', 'LAXAPHILLS CLASICA X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LAXAPHILLS CLASICA X 120ML.', 126, '0', '8.50', '8.50', '0', '1607126671', 'no', NULL, 'ok', '0', '383', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(674, 0, '0.00', '[]', 'LAXOVEN SOLUCION RECTAL(ENEMA) X 240ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LAXOVEN SOLUCION RECTAL(ENEMA) X 240ML', 126, '0', '33.90', '33.90', '0', '1607126671', 'no', NULL, 'ok', '0', '383', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(675, 0, '0.00', '[]', 'LAXULOSA 3.36 SOLC. 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LAXULOSA 3.36 SOLC. 120ML.', 126, '0', '20.00', '20.00', '0', '1607126671', 'no', NULL, 'ok', '0', '383', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(676, 0, '0.00', '[]', 'LECHE MAGNESIA CIRUELA FRASC. X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LECHE MAGNESIA CIRUELA FRASC. X 120ML.', 126, '0', '8.50', '8.50', '0', '1607126671', 'no', NULL, 'ok', '0', '383', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(677, 0, '0.00', '[]', 'LECHE MAGNESIA KIDS DURAZNO X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LECHE MAGNESIA KIDS DURAZNO X 120ML.', 126, '0', '9.00', '9.00', '0', '1607126671', 'no', NULL, 'ok', '0', '383', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(678, 0, '0.00', '[]', 'LECHE MAGNESIA PHILLIPS CLASICA X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LECHE MAGNESIA PHILLIPS CLASICA X 120ML.', 126, '0', '9.00', '9.00', '0', '1607126671', 'no', NULL, 'ok', '0', '384', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(679, 0, '0.00', '[]', 'LERTAMINE 5MG TB X 100 UND (LEVOCETIRIZINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LERTAMINE 5MG TB X 100 UND (LEVOCETIRIZINA)', 126, '0', '2.50', '2.50', '0', '1607126671', 'no', NULL, 'ok', '0', '384', 77, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(680, 0, '0.00', '[]', 'LEVOCIX 750 MG X 30 UND', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LEVOCIX 750 MG X 30 UND', 126, '0', '6.00', '6.00', '0', '1607126671', 'no', NULL, 'ok', '0', '384', 41, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(681, 0, '0.00', '[]', 'LEVO-DEL 5MG TB X 100 UND (LEVOCETIRIZINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LEVO-DEL 5MG TB X 100 UND (LEVOCETIRIZINA)', 126, '0', '2.50', '2.50', '0', '1607126671', 'no', NULL, 'ok', '0', '384', 97, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(682, 0, '0.00', '[]', 'LEVOFLOXACINO 500MG X 10 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LEVOFLOXACINO 500MG X 10 TABL.', 126, '0', '3.00', '3.00', '0', '1607126671', 'no', NULL, 'ok', '0', '387', 35, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(683, 0, '0.00', '[]', 'LIMONADA PURAGANTE MARKOS X 200ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LIMONADA PURAGANTE MARKOS X 200ML.', 126, '0', '11.00', '11.00', '0', '1607126672', 'no', NULL, 'ok', '0', '385', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(684, 0, '0.00', '[]', 'LIMONADA PURGANTE EVAKUA X 200ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LIMONADA PURGANTE EVAKUA X 200ML.', 126, '0', '10.00', '10.00', '0', '1607126672', 'no', NULL, 'ok', '0', '386', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(685, 0, '0.00', '[]', 'LINCOMICINA 500MG CAJA X 20 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LINCOMICINA 500MG CAJA X 20 CAP.', 126, '0', '2.00', '2.00', '0', '1607126672', 'no', NULL, 'ok', '0', '389', 19, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(686, 0, '0.00', '[]', 'LINDIOL 1.5 MG X 1 TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LINDIOL 1.5 MG X 1 TAB', 126, '0', '18.00', '18.00', '0', '1607126672', 'no', NULL, 'ok', '0', '389', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(687, 0, '0.00', '[]', 'LISTERINE ANTICARIES ZERO ALCOHOL X 180 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LISTERINE ANTICARIES ZERO ALCOHOL X 180 ML.', 126, '0', '10.00', '10.00', '0', '1607126672', 'no', NULL, 'ok', '0', '390', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(688, 0, '0.00', '[]', 'LIVOLIN FORTE X 30 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LIVOLIN FORTE X 30 CAP.', 126, '0', '2.50', '2.50', '0', '1607126672', 'no', NULL, 'ok', '0', '391', 18, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(689, 0, '0.00', '[]', 'LOI 500 MG X 10 UND', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LOI 500 MG X 10 UND', 126, '0', '4.00', '4.00', '0', '1607126672', 'no', NULL, 'ok', '0', '391', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(690, 0, '0.00', '[]', 'LORAT JBE X 60 ML (LORATADINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LORAT JBE X 60 ML (LORATADINA)', 126, '0', '12.00', '12.00', '0', '1607126672', 'no', NULL, 'ok', '0', '391', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(691, 0, '0.00', '[]', 'LORATADINA 10 MG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LORATADINA 10 MG', 126, '0', '0.50', '0.50', '0', '1607126672', 'no', NULL, 'ok', '0', '391', 17, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(692, 0, '0.00', '[]', 'LORATADINA 10MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LORATADINA 10MG X 100 TABL.', 126, '0', '0.50', '0.50', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 29, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(693, 0, '0.00', '[]', 'LORATADINA 5MG/5ML X 100ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LORATADINA 5MG/5ML X 100ML', 126, '0', '10.00', '10.00', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(694, 0, '0.00', '[]', 'LORATADINA10 MG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LORATADINA10 MG', 126, '0', '0.50', '0.50', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(695, 0, '0.00', '[]', 'LORISTAT 10 MG (LORATADINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LORISTAT 10 MG (LORATADINA)', 126, '0', '1.50', '1.50', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(696, 0, '0.00', '[]', 'LOSARTAN 50MG X 60 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LOSARTAN 50MG X 60 TABL.', 126, '0', '0.40', '0.40', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(697, 0, '0.00', '[]', 'LOSARTAN 50MG X 60 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LOSARTAN 50MG X 60 TABL.', 126, '0', '0.30', '0.30', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 40, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(698, 0, '0.00', '[]', 'LUBRICANTE LEGEND SENSE 5ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LUBRICANTE LEGEND SENSE 5ML.', 126, '0', '2.00', '2.00', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(699, 0, '0.00', '[]', 'LUBRICANTE PIEL SEX. & LUB. 25 SACHETS X 8G.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LUBRICANTE PIEL SEX. & LUB. 25 SACHETS X 8G.', 126, '0', '2.00', '2.00', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(700, 0, '0.00', '[]', 'LUXASONA 20MG CAJA X 30 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'LUXASONA 20MG CAJA X 30 TAB.', 126, '0', '1.50', '1.50', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(701, 0, '0.00', '[]', 'MAGNE POWER EFERV. NARANJA X 33 SOBRES', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MAGNE POWER EFERV. NARANJA X 33 SOBRES', 126, '0', '1.50', '1.50', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 34, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(702, 0, '0.00', '[]', 'MANTEQUILLA DE CACAO X 100 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MANTEQUILLA DE CACAO X 100 UNID.', 126, '0', '0.50', '0.50', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 90, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(703, 0, '0.00', '[]', 'MAXIDOL COMPUESTO X 100 TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MAXIDOL COMPUESTO X 100 TAB', 126, '0', '2.00', '2.00', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 39, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(704, 0, '0.00', '[]', 'MAXIFLAM FORTE 550MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MAXIFLAM FORTE 550MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126672', 'no', NULL, 'ok', '0', '392', 82, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(705, 0, '0.00', '[]', 'MEBENDAZOL 100MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MEBENDAZOL 100MG X 100 TABL.', 126, '0', '1.90', '1.90', '0', '1607126672', 'no', NULL, 'ok', '0', '393', 79, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(706, 0, '0.00', '[]', 'MEDASONIL 4MG CAJA X 30 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MEDASONIL 4MG CAJA X 30 TAB.', 126, '0', '2.00', '2.00', '0', '1607126672', 'no', NULL, 'ok', '0', '393', 38, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(707, 0, '0.00', '[]', 'MEDGYNOL TAB METODOS ANTICONCEPTIVOS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MEDGYNOL TAB METODOS ANTICONCEPTIVOS', 126, '0', '9.50', '9.50', '0', '1607126672', 'no', NULL, 'ok', '0', '393', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(708, 0, '0.00', '[]', 'MEDIMOXILIN 250MG/5ML SUSP. X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MEDIMOXILIN 250MG/5ML SUSP. X 60ML.', 126, '0', '15.00', '15.00', '0', '1607126672', 'no', NULL, 'ok', '0', '393', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(709, 0, '0.00', '[]', 'MEDIPIEL B CREMA X 20GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MEDIPIEL B CREMA X 20GR.', 126, '0', '13.00', '13.00', '0', '1607126672', 'no', NULL, 'ok', '0', '393', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(710, 0, '0.00', '[]', 'MEDITRIM SUSP. FCO X 60 ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MEDITRIM SUSP. FCO X 60 ML.', 126, '0', '19.00', '19.00', '0', '1607126672', 'no', NULL, 'ok', '0', '394', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(711, 0, '0.00', '[]', 'MEDIXAN 15 MG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MEDIXAN 15 MG', 126, '0', '2.00', '2.00', '0', '1607126673', 'no', NULL, 'ok', '0', '395', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(712, 0, '0.00', '[]', 'MEDRAVOL 50 MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MEDRAVOL 50 MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126673', 'no', NULL, 'ok', '0', '395', 17, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(713, 0, '0.00', '[]', 'MELOXICAM 15MG CAJA X 10 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MELOXICAM 15MG CAJA X 10 TAB.', 126, '0', '1.00', '1.00', '0', '1607126673', 'no', NULL, 'ok', '0', '396', 40, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(714, 0, '0.00', '[]', 'MEMOVITAL B12 X 12O ML SUSP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MEMOVITAL B12 X 12O ML SUSP', 126, '0', '29.00', '29.00', '0', '1607126673', 'no', NULL, 'ok', '0', '396', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(715, 0, '0.00', '[]', 'MENTHOLATUM UNG. 5GR X 24 LATAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MENTHOLATUM UNG. 5GR X 24 LATAS', 126, '0', '1.50', '1.50', '0', '1607126673', 'no', NULL, 'ok', '0', '397', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(716, 0, '0.00', '[]', 'MENTHOLATUM UNG. POTE X 85G.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MENTHOLATUM UNG. POTE X 85G.', 126, '0', '14.90', '14.90', '0', '1607126673', 'no', NULL, 'ok', '0', '397', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(717, 0, '0.00', '[]', 'MERIFAR 4MG/ML X 15 ML SOL ORAL-GOTAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MERIFAR 4MG/ML X 15 ML SOL ORAL-GOTAS', 126, '0', '17.00', '17.00', '0', '1607126673', 'no', NULL, 'ok', '0', '397', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(718, 0, '0.00', '[]', 'METFORMINA 850MG CAJA X 30 TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'METFORMINA 850MG CAJA X 30 TAB. REC.', 126, '0', '0.50', '0.50', '0', '1607126673', 'no', NULL, 'ok', '0', '397', 95, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(719, 0, '0.00', '[]', 'METOCLOPRAMIDA 10 MG CAJA X 100 TABLETAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'METOCLOPRAMIDA 10 MG CAJA X 100 TABLETAS', 126, '0', '0.50', '0.50', '0', '1607126673', 'no', NULL, 'ok', '0', '397', 95, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(720, 0, '0.00', '[]', 'METRONIDAZOL 250MG X 60ML SUSP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'METRONIDAZOL 250MG X 60ML SUSP.', 126, '0', '6.00', '6.00', '0', '1607126673', 'no', NULL, 'ok', '0', '397', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(721, 0, '0.00', '[]', 'METRONIDAZOL 250MG/5ML FCO X 120ML SUSP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'METRONIDAZOL 250MG/5ML FCO X 120ML SUSP.', 126, '0', '8.00', '8.00', '0', '1607126673', 'no', NULL, 'ok', '0', '397', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(722, 0, '0.00', '[]', 'METRONIDAZOL 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'METRONIDAZOL 500MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 50, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(723, 0, '0.00', '[]', 'METRONIDAZOL 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'METRONIDAZOL 500MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(724, 0, '0.00', '[]', 'MEXADEX 4MG/2ML(DEXAMETASONA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MEXADEX 4MG/2ML(DEXAMETASONA)', 126, '0', '3.50', '3.50', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 18, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(725, 0, '0.00', '[]', 'MICOMISIL CREMA X 15GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MICOMISIL CREMA X 15GR.', 126, '0', '17.00', '17.00', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(726, 0, '0.00', '[]', 'MICROGYNON X 21 GRAGEAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MICROGYNON X 21 GRAGEAS', 126, '0', '11.00', '11.00', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(727, 0, '0.00', '[]', 'MIGRADEL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MIGRADEL', 126, '0', '2.50', '2.50', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 17, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(728, 0, '0.00', '[]', 'MIGRALIVIA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MIGRALIVIA', 126, '0', '1.50', '1.50', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(729, 0, '0.00', '[]', 'MINOCILINA 100 MG X 100 CAP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MINOCILINA 100 MG X 100 CAP', 126, '0', '4.50', '4.50', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(730, 0, '0.00', '[]', 'MIODEL RELAX 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MIODEL RELAX 100 TABL.', 126, '0', '2.50', '2.50', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 12, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(731, 0, '0.00', '[]', 'MIOFEDROL RELAX PLUS X 100 COMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MIOFEDROL RELAX PLUS X 100 COMP.', 126, '0', '2.50', '2.50', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 85, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(732, 0, '0.00', '[]', 'MIOPRESS FORTE X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MIOPRESS FORTE X 100 TABL.', 126, '0', '2.00', '2.00', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 93, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(733, 0, '0.00', '[]', 'MOCO DE GORILA X 90GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MOCO DE GORILA X 90GR.', 126, '0', '3.00', '3.00', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(734, 0, '0.00', '[]', 'MODITYS 2MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MODITYS 2MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 99, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(735, 0, '0.00', '[]', 'MUCOTRIM GOTAS X 20ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MUCOTRIM GOTAS X 20ML.', 126, '0', '15.00', '15.00', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(736, 0, '0.00', '[]', 'MULTIGESICO 400', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MULTIGESICO 400', 126, '0', '0.88', '0.88', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 54, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(737, 0, '0.00', '[]', 'MULTIPIEL UNGUENTO X 14 GR', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MULTIPIEL UNGUENTO X 14 GR', 126, '0', '24.00', '24.00', '0', '1607126673', 'no', NULL, 'ok', '0', '398', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(738, 0, '0.00', '[]', 'MYCTRIM SUSP X 60 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'MYCTRIM SUSP X 60 ML', 126, '0', '15.00', '15.00', '0', '1607126673', 'no', NULL, 'ok', '0', '399', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(739, 0, '0.00', '[]', 'NAPROCOP COMPUESTO CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NAPROCOP COMPUESTO CAJA X 100 TAB.', 126, '0', '1.50', '1.50', '0', '1607126674', 'no', NULL, 'ok', '0', '399', 85, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(740, 0, '0.00', '[]', 'NAPRODEL 550MG X 120 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NAPRODEL 550MG X 120 TABL.', 126, '0', '2.00', '2.00', '0', '1607126674', 'no', NULL, 'ok', '0', '400', 69, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(741, 0, '0.00', '[]', 'NAPROXENO 550MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NAPROXENO 550MG X 100 TABL.', 126, '0', '0.50', '0.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 11, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(742, 0, '0.00', '[]', 'NASTIFLU ANTIGRIPAL X 60 SOBRES', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NASTIFLU ANTIGRIPAL X 60 SOBRES', 126, '0', '2.50', '2.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 15, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(743, 0, '0.00', '[]', 'NASTIZOL COMPOSITUM FORTE X 150 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NASTIZOL COMPOSITUM FORTE X 150 TABL.', 126, '0', '2.00', '2.00', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 93, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(744, 0, '0.00', '[]', 'NASTIZOL COMPOSITUM JUNIOR X 150 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NASTIZOL COMPOSITUM JUNIOR X 150 TABL.', 126, '0', '1.00', '1.00', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(745, 0, '0.00', '[]', 'NEKO JAB EXTRAPROTECCION X 75G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NEKO JAB EXTRAPROTECCION X 75G', 126, '0', '4.00', '4.00', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(746, 0, '0.00', '[]', 'NENISTECIN 100000 UL/ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NENISTECIN 100000 UL/ML', 126, '0', '25.00', '25.00', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(747, 0, '0.00', '[]', 'NEOALERGINE PLUS X 10MG X 30 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NEOALERGINE PLUS X 10MG X 30 CAP.', 126, '0', '1.50', '1.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(748, 0, '0.00', '[]', 'NEOENZIMAX NF X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NEOENZIMAX NF X 100 CAP.', 126, '0', '1.50', '1.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 84, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(749, 0, '0.00', '[]', 'NICOVEL CAP. BLANDAS VAGINALES X 100', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NICOVEL CAP. BLANDAS VAGINALES X 100', 126, '0', '4.50', '4.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 22, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(750, 0, '0.00', '[]', 'NIKZON MASTICABLE X 90 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NIKZON MASTICABLE X 90 TABL.', 126, '0', '1.50', '1.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 82, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(751, 0, '0.00', '[]', 'NITAZOXANIDA 500 MG X 6 TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NITAZOXANIDA 500 MG X 6 TAB', 126, '0', '2.50', '2.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 12, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(752, 0, '0.00', '[]', 'NODIAL CREMA X 10G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NODIAL CREMA X 10G', 126, '0', '10.00', '10.00', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(753, 0, '0.00', '[]', 'NOPUCID 10 X 40 SACHET.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NOPUCID 10 X 40 SACHET.', 126, '0', '2.00', '2.00', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(754, 0, '0.00', '[]', 'NORPRAZOLE 20 MG X100 CAP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NORPRAZOLE 20 MG X100 CAP', 126, '0', '1.00', '1.00', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 37, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(755, 0, '0.00', '[]', 'NOSOTRAS INVISIBLE RAPIGEL X 10 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NOSOTRAS INVISIBLE RAPIGEL X 10 UNID.', 126, '0', '4.50', '4.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(756, 0, '0.00', '[]', 'NOSOTRAS NATURAL ALAS TELA X 10 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NOSOTRAS NATURAL ALAS TELA X 10 UNID.', 126, '0', '3.90', '3.90', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(757, 0, '0.00', '[]', 'NOSOTRAS NATURAL BUENAS NOCHES X 10 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NOSOTRAS NATURAL BUENAS NOCHES X 10 UNID.', 126, '0', '6.50', '6.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(758, 0, '0.00', '[]', 'NOTIPHARM', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'NOTIPHARM', 126, '0', '16.90', '16.90', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(759, 0, '0.00', '[]', 'OLD SPICE CHAMPION 150 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'OLD SPICE CHAMPION 150 ML', 126, '0', '14.50', '14.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(760, 0, '0.00', '[]', 'OLD SPICE CITRON 150 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'OLD SPICE CITRON 150 ML', 126, '0', '14.50', '14.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(761, 0, '0.00', '[]', 'OLD SPICE PURE SPORT 150 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'OLD SPICE PURE SPORT 150 ML', 126, '0', '14.50', '14.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(762, 0, '0.00', '[]', 'OLD SPICE VIP 150 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'OLD SPICE VIP 150 ML', 126, '0', '14.50', '14.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(763, 0, '0.00', '[]', 'OMEGA 3,6,9 500MG X 100 CBG FCO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'OMEGA 3,6,9 500MG X 100 CBG FCO', 126, '0', '45.00', '45.00', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(764, 0, '0.00', '[]', 'OMEPRAZOL 20MG CAJA X 10 CAP. LIB. RET.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'OMEPRAZOL 20MG CAJA X 10 CAP. LIB. RET.', 126, '0', '0.50', '0.50', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 52, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(765, 0, '0.00', '[]', 'OMEPRAZOL 20MG CAP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'OMEPRAZOL 20MG CAP', 126, '0', '0.30', '0.30', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 139, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(766, 0, '0.00', '[]', 'OMISWISS 20 MG X100 CAP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'OMISWISS 20 MG X100 CAP', 126, '0', '1.00', '1.00', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(767, 0, '0.00', '[]', 'ORABIOT BALSAMICO X 60 ML SUSP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ORABIOT BALSAMICO X 60 ML SUSP', 126, '0', '16.90', '16.90', '0', '1607126674', 'no', NULL, 'ok', '0', '401', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(768, 0, '0.00', '[]', 'ORABIOTIC 500 MG TAB (AMOXICILINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ORABIOTIC 500 MG TAB (AMOXICILINA)', 126, '0', '1.00', '1.00', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 37, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(769, 0, '0.00', '[]', 'ORFENADRINA 60MG/2ML X 25 AMPOLLA.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ORFENADRINA 60MG/2ML X 25 AMPOLLA.', 126, '0', '3.50', '3.50', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 15, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(770, 0, '0.00', '[]', 'OTOMICIN GOTAS OTICAS X 10ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'OTOMICIN GOTAS OTICAS X 10ML.', 126, '0', '16.90', '16.90', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(771, 0, '0.00', '[]', 'OXIDO DE ZINC X 6G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'OXIDO DE ZINC X 6G', 126, '0', '1.00', '1.00', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(772, 0, '0.00', '[]', 'PANADOL ANTIGRIPAL ADULTO X 50 SOBRES', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PANADOL ANTIGRIPAL ADULTO X 50 SOBRES', 126, '0', '3.00', '3.00', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 24, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(773, 0, '0.00', '[]', 'PANADOL FORTE TABL. X 24 SOBRES', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PANADOL FORTE TABL. X 24 SOBRES', 126, '0', '2.50', '2.50', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 13, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(774, 0, '0.00', '[]', 'PANADOL GOTAS 100MG X 15ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PANADOL GOTAS 100MG X 15ML.', 126, '0', '17.00', '17.00', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(775, 0, '0.00', '[]', 'PANADOL JBE 160MG/5ML FCO X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PANADOL JBE 160MG/5ML FCO X 60ML.', 126, '0', '17.50', '17.50', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(776, 0, '0.00', '[]', 'PANAFLAM FORTE X 200 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PANAFLAM FORTE X 200 TABL.', 126, '0', '2.00', '2.00', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 80, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(777, 0, '0.00', '[]', 'PANKREOFLAT N TABLETA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PANKREOFLAT N TABLETA', 126, '0', '2.50', '2.50', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(778, 0, '0.00', '[]', 'PANTENE 2 EN 1 RIZOS DEFINIDOS 100 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PANTENE 2 EN 1 RIZOS DEFINIDOS 100 ML', 126, '0', '5.50', '5.50', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(779, 0, '0.00', '[]', 'PAÑAL BABYSEC PREMIUM XG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PAÑAL BABYSEC PREMIUM XG', 126, '0', '1.00', '1.00', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(780, 0, '0.00', '[]', 'PAÑAL BABYSEC PREMIUM XXG X 44UN', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PAÑAL BABYSEC PREMIUM XXG X 44UN', 126, '0', '1.10', '1.10', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 42, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(781, 0, '0.00', '[]', 'PARACETAMOL 100MG/ML GOTAS X 10ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PARACETAMOL 100MG/ML GOTAS X 10ML.', 126, '0', '3.90', '3.90', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(782, 0, '0.00', '[]', 'PARACETAMOL 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PARACETAMOL 500MG X 100 TABL.', 126, '0', '0.30', '0.30', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 270, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(783, 0, '0.00', '[]', 'PARACETAMOL 500MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PARACETAMOL 500MG X 100 TABL.', 126, '0', '0.25', '0.25', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(784, 0, '0.00', '[]', 'PARACETAMOL JARABE X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PARACETAMOL JARABE X 120ML.', 126, '0', '5.00', '5.00', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(785, 0, '0.00', '[]', 'PARACETAMOL JARABE X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PARACETAMOL JARABE X 60ML.', 126, '0', '5.00', '5.00', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(786, 0, '0.00', '[]', 'PARAMIDOL 120 MG/5 ML X 90 ML (PARACETAMOL)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PARAMIDOL 120 MG/5 ML X 90 ML (PARACETAMOL)', 126, '0', '12.00', '12.00', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(787, 0, '0.00', '[]', 'PARGEVIN COMPUESTO INY. CAJA X 2 AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PARGEVIN COMPUESTO INY. CAJA X 2 AMP.', 126, '0', '22.00', '22.00', '0', '1607126675', 'no', NULL, 'ok', '0', '401', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(788, 0, '0.00', '[]', 'PEPTO GASTRIN SUSP. X 150ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PEPTO GASTRIN SUSP. X 150ML', 126, '0', '17.90', '17.90', '0', '1607126675', 'no', NULL, 'ok', '0', '402', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(789, 0, '0.00', '[]', 'PIROXICAM 0.5% GEL X 30G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PIROXICAM 0.5% GEL X 30G', 126, '0', '9.00', '9.00', '0', '1607126675', 'no', NULL, 'ok', '0', '402', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(790, 0, '0.00', '[]', 'PLENITUD PRACTI PAÑAL X 10 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PLENITUD PRACTI PAÑAL X 10 UNID.', 126, '0', '4.50', '4.50', '0', '1607126675', 'no', NULL, 'ok', '0', '402', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(791, 0, '0.00', '[]', 'PLENITUD PRACTI PAÑAL X 20 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PLENITUD PRACTI PAÑAL X 20 UNID.', 126, '0', '8.50', '8.50', '0', '1607126675', 'no', NULL, 'ok', '0', '402', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL);
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(792, 0, '0.00', '[]', 'PLENITUD PRACTI PAÑAL X UNID.SALE POR UNIDAD', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PLENITUD PRACTI PAÑAL X UNID.SALE POR UNIDAD', 126, '0', '0.50', '0.50', '0', '1607126675', 'no', NULL, 'ok', '0', '402', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(793, 0, '0.00', '[]', 'PLIDAN COMPUESTO NF TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PLIDAN COMPUESTO NF TAB', 126, '0', '1.50', '1.50', '0', '1607126675', 'no', NULL, 'ok', '0', '403', 34, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(794, 0, '0.00', '[]', 'PONDS CREMA C 10G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PONDS CREMA C 10G', 126, '0', '1.00', '1.00', '0', '1607126675', 'no', NULL, 'ok', '0', '403', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(795, 0, '0.00', '[]', 'PONDS CREMA CLARANT B3 PIEL NORMAL SECA SACHET X 20.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PONDS CREMA CLARANT B3 PIEL NORMAL SECA SACHET X 20.', 126, '0', '1.30', '1.30', '0', '1607126676', 'no', NULL, 'ok', '0', '404', 14, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(796, 0, '0.00', '[]', 'PONDS CREMA REJUVENES 10GR X 20 SACHET.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PONDS CREMA REJUVENES 10GR X 20 SACHET.', 126, '0', '1.00', '1.00', '0', '1607126676', 'no', NULL, 'ok', '0', '404', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(797, 0, '0.00', '[]', 'PONDS CREMA S. HUMECTANTE X 10GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PONDS CREMA S. HUMECTANTE X 10GR.', 126, '0', '1.00', '1.00', '0', '1607126676', 'no', NULL, 'ok', '0', '404', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(798, 0, '0.00', '[]', 'PONSTAN RD X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PONSTAN RD X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126676', 'no', NULL, 'ok', '0', '405', 64, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(799, 0, '0.00', '[]', 'PORTIL CREMA X 20GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PORTIL CREMA X 20GR.', 126, '0', '6.00', '6.00', '0', '1607126676', 'no', NULL, 'ok', '0', '405', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(800, 0, '0.00', '[]', 'PREDCORT 25MG/5ML MG SUSP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PREDCORT 25MG/5ML MG SUSP', 126, '0', '24.00', '24.00', '0', '1607126676', 'no', NULL, 'ok', '0', '405', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(801, 0, '0.00', '[]', 'PREDNISONA 20MG CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PREDNISONA 20MG CAJA X 100 TAB.', 126, '0', '0.50', '0.50', '0', '1607126676', 'no', NULL, 'ok', '0', '405', 90, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(802, 0, '0.00', '[]', 'PREDNISONA 5MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PREDNISONA 5MG X 100 TABL.', 126, '0', '0.25', '0.25', '0', '1607126676', 'no', NULL, 'ok', '0', '406', 183, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(803, 0, '0.00', '[]', 'PRESERVATIVO ENJOY LOVE CLASICO X 24.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO ENJOY LOVE CLASICO X 24.', 126, '0', '4.00', '4.00', '0', '1607126676', 'no', NULL, 'ok', '0', '407', 16, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(804, 0, '0.00', '[]', 'PRESERVATIVO ENJOY LOVE ESPUELAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO ENJOY LOVE ESPUELAS', 126, '0', '4.00', '4.00', '0', '1607126676', 'no', NULL, 'ok', '0', '408', 11, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(805, 0, '0.00', '[]', 'PRESERVATIVO ENJOY LOVE RIBBER (C/AROS) X 24.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO ENJOY LOVE RIBBER (C/AROS) X 24.', 126, '0', '4.00', '4.00', '0', '1607126676', 'no', NULL, 'ok', '0', '408', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(806, 0, '0.00', '[]', 'PRESERVATIVO GENTS C/RETARDANTE X 24.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO GENTS C/RETARDANTE X 24.', 126, '0', '5.00', '5.00', '0', '1607126676', 'no', NULL, 'ok', '0', '409', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(807, 0, '0.00', '[]', 'PRESERVATIVO GENTS RIBBER (C/AROS) X 24.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO GENTS RIBBER (C/AROS) X 24.', 126, '0', '4.00', '4.00', '0', '1607126676', 'no', NULL, 'ok', '0', '409', 14, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(808, 0, '0.00', '[]', 'PRESERVATIVO LEGEND SENSE X3 UND.CLASICO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO LEGEND SENSE X3 UND.CLASICO', 126, '0', '3.50', '3.50', '0', '1607126676', 'no', NULL, 'ok', '0', '410', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(809, 0, '0.00', '[]', 'PRESERVATIVO PIEL C/AROS X 3 X 24 CJAS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO PIEL C/AROS X 3 X 24 CJAS.', 126, '0', '4.00', '4.00', '0', '1607126676', 'no', NULL, 'ok', '0', '410', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(810, 0, '0.00', '[]', 'PRESERVATIVO PIEL C/ESPUELAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO PIEL C/ESPUELAS', 126, '0', '4.00', '4.00', '0', '1607126676', 'no', NULL, 'ok', '0', '410', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(811, 0, '0.00', '[]', 'PRESERVATIVO PIEL CLASICO X 3 X 24 CJAS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO PIEL CLASICO X 3 X 24 CJAS.', 126, '0', '4.00', '4.00', '0', '1607126676', 'no', NULL, 'ok', '0', '410', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(812, 0, '0.00', '[]', 'PRESERVATIVO PIEL SENSITIVO X 3 X 24 CJAS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO PIEL SENSITIVO X 3 X 24 CJAS.', 126, '0', '4.00', '4.00', '0', '1607126676', 'no', NULL, 'ok', '0', '410', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(813, 0, '0.00', '[]', 'PRESERVATIVO PIEL TRIPLE SENSACION X 3 X 24 CJAS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRESERVATIVO PIEL TRIPLE SENSACION X 3 X 24 CJAS.', 126, '0', '4.00', '4.00', '0', '1607126676', 'no', NULL, 'ok', '0', '410', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(814, 0, '0.00', '[]', 'PROCOPS 50 (SILDENAFILO) X 50MG X 10 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PROCOPS 50 (SILDENAFILO) X 50MG X 10 TABL.', 126, '0', '5.00', '5.00', '0', '1607126676', 'no', NULL, 'ok', '0', '410', 13, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(815, 0, '0.00', '[]', 'PRONADOL 120 MG/5ML JBE', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PRONADOL 120 MG/5ML JBE', 126, '0', '11.00', '11.00', '0', '1607126677', 'no', NULL, 'ok', '0', '410', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(816, 0, '0.00', '[]', 'PROSTADEL LP (TAMSULOSINA) 0.4MG X 30 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PROSTADEL LP (TAMSULOSINA) 0.4MG X 30 CAP.', 126, '0', '4.00', '4.00', '0', '1607126677', 'no', NULL, 'ok', '0', '410', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(817, 0, '0.00', '[]', 'PROTEX JAB. F/MEN SPORT X 130 GR', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PROTEX JAB. F/MEN SPORT X 130 GR', 126, '0', '3.50', '3.50', '0', '1607126677', 'no', NULL, 'ok', '0', '410', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(818, 0, '0.00', '[]', 'PROTEX JAB. FRESH X 120 GR', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PROTEX JAB. FRESH X 120 GR', 126, '0', '3.00', '3.00', '0', '1607126677', 'no', NULL, 'ok', '0', '410', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(819, 0, '0.00', '[]', 'PULMOL COMPUESTO JBE. X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PULMOL COMPUESTO JBE. X 120ML.', 126, '0', '17.90', '17.90', '0', '1607126677', 'no', NULL, 'ok', '0', '411', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(820, 0, '0.00', '[]', 'PYRIMEDIC', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'PYRIMEDIC', 126, '0', '2.00', '2.00', '0', '1607126677', 'no', NULL, 'ok', '0', '411', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(821, 0, '0.00', '[]', 'QUENALMED 10 MG CAJA X 100 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'QUENALMED 10 MG CAJA X 100 TAB.', 126, '0', '2.00', '2.00', '0', '1607126677', 'no', NULL, 'ok', '0', '411', 99, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(822, 0, '0.00', '[]', 'RADSKIL B CREMA X 20 G', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'RADSKIL B CREMA X 20 G', 126, '0', '13.00', '13.00', '0', '1607126677', 'no', NULL, 'ok', '0', '411', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(823, 0, '0.00', '[]', 'RANITIDINA 300MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'RANITIDINA 300MG X 100 TABL.', 126, '0', '0.50', '0.50', '0', '1607126677', 'no', NULL, 'ok', '0', '411', 19, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(824, 0, '0.00', '[]', 'REDEX PLUS SOL. INY. X 2 AMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'REDEX PLUS SOL. INY. X 2 AMP.', 126, '0', '16.90', '16.90', '0', '1607126677', 'no', NULL, 'ok', '0', '412', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(825, 0, '0.00', '[]', 'REDEX X 10 TABLETAS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'REDEX X 10 TABLETAS.', 126, '0', '2.50', '2.50', '0', '1607126677', 'no', NULL, 'ok', '0', '412', 15, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(826, 0, '0.00', '[]', 'REPELENTE FLORESTA FAMILIAR 10 G. X 20 SACHET.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'REPELENTE FLORESTA FAMILIAR 10 G. X 20 SACHET.', 126, '0', '2.00', '2.00', '0', '1607126677', 'no', NULL, 'ok', '0', '412', 12, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(827, 0, '0.00', '[]', 'REPRIMAN GOTAS ORALES FCO. X 10ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'REPRIMAN GOTAS ORALES FCO. X 10ML.', 126, '0', '14.50', '14.50', '0', '1607126677', 'no', NULL, 'ok', '0', '413', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(828, 0, '0.00', '[]', 'REPRIMAN JARABE (METAMIZOL SODICO 250 MG/5ML)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'REPRIMAN JARABE (METAMIZOL SODICO 250 MG/5ML)', 126, '0', '14.00', '14.00', '0', '1607126677', 'no', NULL, 'ok', '0', '414', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(829, 0, '0.00', '[]', 'REPRIMAN X 100 COMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'REPRIMAN X 100 COMP.', 126, '0', '1.00', '1.00', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 98, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(830, 0, '0.00', '[]', 'REUMAFROST POTE X 60GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'REUMAFROST POTE X 60GR.', 126, '0', '12.00', '12.00', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(831, 0, '0.00', '[]', 'REXIVIN TABLETAS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'REXIVIN TABLETAS.', 126, '0', '2.50', '2.50', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 42, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(832, 0, '0.00', '[]', 'RHINO-BB 0.9% GOTAS X 15ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'RHINO-BB 0.9% GOTAS X 15ML.', 126, '0', '10.00', '10.00', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(833, 0, '0.00', '[]', 'RIGEVIDON 21 + 7', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'RIGEVIDON 21 + 7', 126, '0', '10.00', '10.00', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(834, 0, '0.00', '[]', 'ROXTRIM FORTE ANITDIARE X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ROXTRIM FORTE ANITDIARE X 60ML.', 126, '0', '13.00', '13.00', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(835, 0, '0.00', '[]', 'RYNA-DEL TAB (DESLORATADINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'RYNA-DEL TAB (DESLORATADINA)', 126, '0', '2.50', '2.50', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 19, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(836, 0, '0.00', '[]', 'SACHA INCHE 500MG', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SACHA INCHE 500MG', 126, '0', '2.00', '2.00', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 60, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(837, 0, '0.00', '[]', 'SAL DE ANDREWS TRIPLE ACCION X 90 SOBRES.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SAL DE ANDREWS TRIPLE ACCION X 90 SOBRES.', 126, '0', '1.30', '1.30', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(838, 0, '0.00', '[]', 'SAL DE ANDREWS X 100 SOBRES.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SAL DE ANDREWS X 100 SOBRES.', 126, '0', '0.70', '0.70', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 51, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(839, 0, '0.00', '[]', 'SALBUTAMOL 100MCG DOSIS INHALADOR AEROSOL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SALBUTAMOL 100MCG DOSIS INHALADOR AEROSOL.', 126, '0', '10.00', '10.00', '0', '1607126677', 'no', NULL, 'ok', '0', '415', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(840, 0, '0.00', '[]', 'SALBUTAMOL 4MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SALBUTAMOL 4MG X 100 TABL.', 126, '0', '1.00', '1.00', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 50, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(841, 0, '0.00', '[]', 'SALBUTAMOL AEROSOL 100MCG/200 DOS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SALBUTAMOL AEROSOL 100MCG/200 DOS.', 126, '0', '10.00', '10.00', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(842, 0, '0.00', '[]', 'SALBUTAMOL AEROSOL 100MCG/200 DOS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SALBUTAMOL AEROSOL 100MCG/200 DOS.', 126, '0', '10.00', '10.00', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(843, 0, '0.00', '[]', 'SALES DE REHIDRATACION ORAL CAJA X 25 SOBRES', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SALES DE REHIDRATACION ORAL CAJA X 25 SOBRES', 126, '0', '2.50', '2.50', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 25, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(844, 0, '0.00', '[]', 'SAMI PLUS TEST DE EMBARAZO - CASSETTE', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SAMI PLUS TEST DE EMBARAZO - CASSETTE', 126, '0', '8.00', '8.00', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(845, 0, '0.00', '[]', 'SAMI PLUS TEST DE EMBARAZO - TIRA 10 MLU/ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SAMI PLUS TEST DE EMBARAZO - TIRA 10 MLU/ML', 126, '0', '6.00', '6.00', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(846, 0, '0.00', '[]', 'SANIPEL C \"CREMA\" X 10 GR', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SANIPEL C \"CREMA\" X 10 GR', 126, '0', '13.00', '13.00', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(847, 0, '0.00', '[]', 'SCHICK 2 AMARILLA X 24', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SCHICK 2 AMARILLA X 24', 126, '0', '1.50', '1.50', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(848, 0, '0.00', '[]', 'SCHICK QUATTRO TITANIUM PIEL NORMAL X 4 HOJAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SCHICK QUATTRO TITANIUM PIEL NORMAL X 4 HOJAS', 126, '0', '4.50', '4.50', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(849, 0, '0.00', '[]', 'SCHICK XTREME 3 HOJAS BLADES MUJER', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SCHICK XTREME 3 HOJAS BLADES MUJER', 126, '0', '3.50', '3.50', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(850, 0, '0.00', '[]', 'SEDAL SHAMPOO DUO 2 EN 1 FCO X 340ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SEDAL SHAMPOO DUO 2 EN 1 FCO X 340ML.', 126, '0', '14.90', '14.90', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(851, 0, '0.00', '[]', 'SEDOTROPINA FLAT X 15ML GOTAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SEDOTROPINA FLAT X 15ML GOTAS', 126, '0', '21.90', '21.90', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(852, 0, '0.00', '[]', 'SERTRALINA 50 MG CAJA X 100TABELTAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SERTRALINA 50 MG CAJA X 100TABELTAS', 126, '0', '1.00', '1.00', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(853, 0, '0.00', '[]', 'SHAMPOO H&S 90 ML LIMPIEZA RENOVADORA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SHAMPOO H&S 90 ML LIMPIEZA RENOVADORA', 126, '0', '5.50', '5.50', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(854, 0, '0.00', '[]', 'SIFACOX 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SIFACOX 100 CAP.', 126, '0', '2.00', '2.00', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 41, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(855, 0, '0.00', '[]', 'SILDEN UP 100MG CAJA X 50 TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SILDEN UP 100MG CAJA X 50 TAB. REC.', 126, '0', '5.00', '5.00', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 47, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(856, 0, '0.00', '[]', 'SILDEN UP 50 MG CAJA X 60 TAB. REC.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SILDEN UP 50 MG CAJA X 60 TAB. REC.', 126, '0', '5.00', '5.00', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 88, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(857, 0, '0.00', '[]', 'SILDENAFILO 100MG CJA.X 1 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SILDENAFILO 100MG CJA.X 1 TAB.', 126, '0', '3.50', '3.50', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 10, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(858, 0, '0.00', '[]', 'SILDENAFILO 50MG X 1TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SILDENAFILO 50MG X 1TAB', 126, '0', '3.50', '3.50', '0', '1607126678', 'no', NULL, 'ok', '0', '415', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(859, 0, '0.00', '[]', 'SILIMARINA', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SILIMARINA', 126, '0', '1.00', '1.00', '0', '1607126678', 'no', NULL, 'ok', '0', '416', 17, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(860, 0, '0.00', '[]', 'SIMEVET FRESA GOTAS X 15ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SIMEVET FRESA GOTAS X 15ML.', 126, '0', '12.00', '12.00', '0', '1607126678', 'no', NULL, 'ok', '0', '416', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(861, 0, '0.00', '[]', 'SITIDERM NF CREMA X 10 GR', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SITIDERM NF CREMA X 10 GR', 126, '0', '10.00', '10.00', '0', '1607126678', 'no', NULL, 'ok', '0', '417', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(862, 0, '0.00', '[]', 'SORGAZOL X100 CAP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SORGAZOL X100 CAP', 126, '0', '1.00', '1.00', '0', '1607126678', 'no', NULL, 'ok', '0', '417', 68, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(863, 0, '0.00', '[]', 'SPEED STICK EXTREME ULTRA X 100ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SPEED STICK EXTREME ULTRA X 100ML.', 126, '0', '8.00', '8.00', '0', '1607126678', 'no', NULL, 'ok', '0', '417', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(864, 0, '0.00', '[]', 'SULFA ALKOMED X 2GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SULFA ALKOMED X 2GR.', 126, '0', '1.50', '1.50', '0', '1607126678', 'no', NULL, 'ok', '0', '417', 19, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(865, 0, '0.00', '[]', 'SULFACID BALSAMICO X 100 COMPRIMIDOS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SULFACID BALSAMICO X 100 COMPRIMIDOS.', 126, '0', '2.00', '2.00', '0', '1607126678', 'no', NULL, 'ok', '0', '417', 96, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(866, 0, '0.00', '[]', 'SULFADIAZINA DE PLATA 1% X 30GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SULFADIAZINA DE PLATA 1% X 30GR.', 126, '0', '12.00', '12.00', '0', '1607126678', 'no', NULL, 'ok', '0', '417', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(867, 0, '0.00', '[]', 'SULFAMETOXAZOL + TRIMETOPRIMA 800MG/1600MG.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SULFAMETOXAZOL + TRIMETOPRIMA 800MG/1600MG.', 126, '0', '2.00', '2.00', '0', '1607126678', 'no', NULL, 'ok', '0', '417', 28, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(868, 0, '0.00', '[]', 'SULFAMETOXAZOL + TRIMETOPRIMA JBE 200MG/80MG/5 ML X 60 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SULFAMETOXAZOL + TRIMETOPRIMA JBE 200MG/80MG/5 ML X 60 ML', 126, '0', '6.00', '6.00', '0', '1607126679', 'no', NULL, 'ok', '0', '417', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(869, 0, '0.00', '[]', 'SULFAMETOXAZOL + TRIMETOPRIMA JBE 400 MG/80MG/5 ML X 60 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SULFAMETOXAZOL + TRIMETOPRIMA JBE 400 MG/80MG/5 ML X 60 ML', 126, '0', '5.00', '5.00', '0', '1607126679', 'no', NULL, 'ok', '0', '417', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(870, 0, '0.00', '[]', 'SUPOSITORIO DE GLICE. ADULTO X 100 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SUPOSITORIO DE GLICE. ADULTO X 100 UNID.', 126, '0', '0.80', '0.80', '0', '1607126679', 'no', NULL, 'ok', '0', '418', 15, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(871, 0, '0.00', '[]', 'SUPOSITORIO DE GLICE. NIÑO X 100 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'SUPOSITORIO DE GLICE. NIÑO X 100 UNID.', 126, '0', '0.70', '0.70', '0', '1607126679', 'no', NULL, 'ok', '0', '419', 49, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(872, 0, '0.00', '[]', 'TAMSULOFAR (TAMSULOSINA) 0.4MG X 30 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TAMSULOFAR (TAMSULOSINA) 0.4MG X 30 CAP.', 126, '0', '2.90', '2.90', '0', '1607126679', 'no', NULL, 'ok', '0', '420', 58, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(873, 0, '0.00', '[]', 'TAMSULOSINA 0.4MG X 50 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TAMSULOSINA 0.4MG X 50 CAP.', 126, '0', '1.80', '1.80', '0', '1607126679', 'no', NULL, 'ok', '0', '421', 33, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(874, 0, '0.00', '[]', 'TANDERIL 100MG CJA.X 20 TAB. LIB. EX.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TANDERIL 100MG CJA.X 20 TAB. LIB. EX.', 126, '0', '2.00', '2.00', '0', '1607126679', 'no', NULL, 'ok', '0', '422', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(875, 0, '0.00', '[]', 'TAPSIN COMP CAL/DIA LIMON + MIEL CJA X 60 SOB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TAPSIN COMP CAL/DIA LIMON + MIEL CJA X 60 SOB.', 126, '0', '3.00', '3.00', '0', '1607126679', 'no', NULL, 'ok', '0', '422', 25, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(876, 0, '0.00', '[]', 'TDN ALLERGY X 10MG X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TDN ALLERGY X 10MG X 100 CAP.', 126, '0', '1.50', '1.50', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 34, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(877, 0, '0.00', '[]', 'TERBINA-DEL 250 MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TERBINA-DEL 250 MG X 100 TABL.', 126, '0', '3.00', '3.00', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 72, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(878, 0, '0.00', '[]', 'TERBINAFINA 1% CREMA TOPICA TUBO X 20G.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TERBINAFINA 1% CREMA TOPICA TUBO X 20G.', 126, '0', '11.00', '11.00', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(879, 0, '0.00', '[]', 'TERBINAFINA 250 MG TAB VIA ORAL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TERBINAFINA 250 MG TAB VIA ORAL', 126, '0', '2.80', '2.80', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 27, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(880, 0, '0.00', '[]', 'TERBISPOR 1% CREMA TOPICA TUBO X 20G.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TERBISPOR 1% CREMA TOPICA TUBO X 20G.', 126, '0', '16.00', '16.00', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(881, 0, '0.00', '[]', 'TERBISPOR 250 MG TAB VIA ORAL', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TERBISPOR 250 MG TAB VIA ORAL', 126, '0', '3.00', '3.00', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 28, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(882, 0, '0.00', '[]', 'TERMOMETRO ORAL CLINICO X 12 UNI.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TERMOMETRO ORAL CLINICO X 12 UNI.', 126, '0', '3.50', '3.50', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(883, 0, '0.00', '[]', 'TEST 7 (DX DE EMBARAZO EN CASSETTE) 25ML/ML TIPO 1', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TEST 7 (DX DE EMBARAZO EN CASSETTE) 25ML/ML TIPO 1', 126, '0', '8.00', '8.00', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(884, 0, '0.00', '[]', 'TIGLITOR 20 MG. CAJA X 30 TAB.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TIGLITOR 20 MG. CAJA X 30 TAB.', 126, '0', '2.00', '2.00', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 16, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(885, 0, '0.00', '[]', 'TILO SOBRE X 3GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TILO SOBRE X 3GR.', 126, '0', '0.80', '0.80', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 54, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(886, 0, '0.00', '[]', 'TINIDAL X 500MG 8 TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TINIDAL X 500MG 8 TAB', 126, '0', '2.50', '2.50', '0', '1607126679', 'no', NULL, 'ok', '0', '423', 14, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(887, 0, '0.00', '[]', 'TINTURA DE ARNICA X 30ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TINTURA DE ARNICA X 30ML.', 126, '0', '2.00', '2.00', '0', '1607126679', 'no', NULL, 'ok', '0', '424', 11, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(888, 0, '0.00', '[]', 'TINTURA DE YODO X 30ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TINTURA DE YODO X 30ML.', 126, '0', '2.00', '2.00', '0', '1607126679', 'no', NULL, 'ok', '0', '424', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(889, 0, '0.00', '[]', 'TIOCTAN FORTEX 100 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TIOCTAN FORTEX 100 UNID.', 126, '0', '1.50', '1.50', '0', '1607126679', 'no', NULL, 'ok', '0', '424', 30, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(890, 0, '0.00', '[]', 'TOALLAS HUMEDAS BABYSEC PREMIUM(ALOE VERA)X 50 TOALLITAS.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TOALLAS HUMEDAS BABYSEC PREMIUM(ALOE VERA)X 50 TOALLITAS.', 126, '0', '8.90', '8.90', '0', '1607126679', 'no', NULL, 'ok', '0', '424', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(891, 0, '0.00', '[]', 'TOALLITAS H. PEQUITAS ALOE +VIT E X 72 UND', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TOALLITAS H. PEQUITAS ALOE +VIT E X 72 UND', 126, '0', '8.90', '8.90', '0', '1607126679', 'no', NULL, 'ok', '0', '425', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(892, 0, '0.00', '[]', 'TOBAFAN FORTE 2MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TOBAFAN FORTE 2MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126679', 'no', NULL, 'ok', '0', '426', 8, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(893, 0, '0.00', '[]', 'TOBAN F 2MG X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TOBAN F 2MG X 100 TABL.', 126, '0', '1.50', '1.50', '0', '1607126679', 'no', NULL, 'ok', '0', '426', 88, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(894, 0, '0.00', '[]', 'TOCAS DE ENFERMERA T/ELASTICA X 50 BLANCO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TOCAS DE ENFERMERA T/ELASTICA X 50 BLANCO', 126, '0', '1.00', '1.00', '0', '1607126680', 'no', NULL, 'ok', '0', '426', 31, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(895, 0, '0.00', '[]', 'TOP DEL FORTE CJA X120 TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TOP DEL FORTE CJA X120 TAB', 126, '0', '2.00', '2.00', '0', '1607126680', 'no', NULL, 'ok', '0', '426', 38, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(896, 0, '0.00', '[]', 'TOPIMICYN UNG X 14GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TOPIMICYN UNG X 14GR.', 126, '0', '23.90', '23.90', '0', '1607126680', 'no', NULL, 'ok', '0', '426', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(897, 0, '0.00', '[]', 'TRICOFAR ORAL 500 MG (METRONIDAZOL)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TRICOFAR ORAL 500 MG (METRONIDAZOL)', 126, '0', '2.00', '2.00', '0', '1607126680', 'no', NULL, 'ok', '0', '426', 26, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(898, 0, '0.00', '[]', 'TRIMICOT CREMA X 10GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TRIMICOT CREMA X 10GR.', 126, '0', '13.00', '13.00', '0', '1607126680', 'no', NULL, 'ok', '0', '426', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(899, 0, '0.00', '[]', 'TUINIES BIBERON DE VIDRIO DECOR ACINT C/ASAS 8 ONZ 22544', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES BIBERON DE VIDRIO DECOR ACINT C/ASAS 8 ONZ 22544', 126, '0', '20.00', '20.00', '0', '1607126680', 'no', NULL, 'ok', '0', '426', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(900, 0, '0.00', '[]', 'TUINIES MORDEDOR REFRIG. MANITO', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES MORDEDOR REFRIG. MANITO', 126, '0', '7.50', '7.50', '0', '1607126680', 'no', NULL, 'ok', '0', '426', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(901, 0, '0.00', '[]', 'TUINIES MORDEDOR REFRIG. PERLA 22330', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES MORDEDOR REFRIG. PERLA 22330', 126, '0', '7.50', '7.50', '0', '1607126680', 'no', NULL, 'ok', '0', '426', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(902, 0, '0.00', '[]', 'TUINIES PROTECTORES PARA LACTANCIA X 12 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES PROTECTORES PARA LACTANCIA X 12 UNID.', 126, '0', '11.00', '11.00', '0', '1607126680', 'no', NULL, 'ok', '0', '426', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(903, 0, '0.00', '[]', 'TUINIES PROTECTORES PARA LACTANCIA X 24 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES PROTECTORES PARA LACTANCIA X 24 UNID.', 126, '0', '14.00', '14.00', '0', '1607126680', 'no', NULL, 'ok', '0', '426', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(904, 0, '0.00', '[]', 'TUINIES TETINA SILICONA ANAT. # 2.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES TETINA SILICONA ANAT. # 2.', 126, '0', '3.50', '3.50', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 5, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(905, 0, '0.00', '[]', 'TUINIES TETINA SILICONA ANAT. # 3.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES TETINA SILICONA ANAT. # 3.', 126, '0', '3.50', '3.50', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 1, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(906, 0, '0.00', '[]', 'TUINIES TETINA SILICONA ANAT. # 4.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES TETINA SILICONA ANAT. # 4.', 126, '0', '3.50', '3.50', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(907, 0, '0.00', '[]', 'TUINIES TETINA SUPER SILICONA.22120', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES TETINA SUPER SILICONA.22120', 126, '0', '5.50', '5.50', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(908, 0, '0.00', '[]', 'TUINIES TETINA SUPER SILICONA.PREMIUN', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES TETINA SUPER SILICONA.PREMIUN', 126, '0', '5.00', '5.00', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(909, 0, '0.00', '[]', 'TUINIES-CHUPON DE ENTRETENER C/PROT- (22211)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TUINIES-CHUPON DE ENTRETENER C/PROT- (22211)', 126, '0', '8.90', '8.90', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(910, 0, '0.00', '[]', 'TYPIREC PLUS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'TYPIREC PLUS', 126, '0', '2.50', '2.50', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 43, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(911, 0, '0.00', '[]', 'UROBIOTIC FORTE X 100 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'UROBIOTIC FORTE X 100 TABL.', 126, '0', '2.00', '2.00', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 19, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(912, 0, '0.00', '[]', 'UROMAX FORTE X 400MG+100MG X 100 CAPS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'UROMAX FORTE X 400MG+100MG X 100 CAPS', 126, '0', '2.00', '2.00', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 79, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(913, 0, '0.00', '[]', 'URONOLAB FORTE X 102 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'URONOLAB FORTE X 102 TABL.', 126, '0', '2.00', '2.00', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(914, 0, '0.00', '[]', 'UROTAN D X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'UROTAN D X 100 CAP.', 126, '0', '2.00', '2.00', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 37, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(915, 0, '0.00', '[]', 'VALSARTAN 160MG X 14 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VALSARTAN 160MG X 14 TABL.', 126, '0', '0.50', '0.50', '0', '1607126680', 'no', NULL, 'ok', '0', '427', 14, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(916, 0, '0.00', '[]', 'VASELINA REUTER SIN OLOR X 18GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VASELINA REUTER SIN OLOR X 18GR.', 126, '0', '2.00', '2.00', '0', '1607126680', 'no', NULL, 'ok', '0', '428', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(917, 0, '0.00', '[]', 'VELOMICIN 500MG (CEFRADINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VELOMICIN 500MG (CEFRADINA)', 126, '0', '2.50', '2.50', '0', '1607126680', 'no', NULL, 'ok', '0', '428', 87, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(918, 0, '0.00', '[]', 'VEMOXIL 500MG X 100 CAP.(AMOXICILINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VEMOXIL 500MG X 100 CAP.(AMOXICILINA)', 126, '0', '1.00', '1.00', '0', '1607126680', 'no', NULL, 'ok', '0', '428', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(919, 0, '0.00', '[]', 'VENDAS ELASTICAS MEDICAL 2\"X 5YDAS', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VENDAS ELASTICAS MEDICAL 2\"X 5YDAS', 126, '0', '1.00', '1.00', '0', '1607126680', 'no', NULL, 'ok', '0', '428', 9, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(920, 0, '0.00', '[]', 'VENDITAS CURE BAND X 100 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VENDITAS CURE BAND X 100 UNID.', 126, '0', '0.10', '0.10', '0', '1607126680', 'no', NULL, 'ok', '0', '428', 100, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(921, 0, '0.00', '[]', 'VENOSMIL 200 MG X 60 CAP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VENOSMIL 200 MG X 60 CAP', 126, '0', '3.00', '3.00', '0', '1607126680', 'no', NULL, 'ok', '0', '428', 36, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(922, 0, '0.00', '[]', 'VERALER 2.5MG/5ML FCO X 60 ML (LEVOCETIRIZINA)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VERALER 2.5MG/5ML FCO X 60 ML (LEVOCETIRIZINA)', 126, '0', '26.00', '26.00', '0', '1607126680', 'no', NULL, 'ok', '0', '428', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(923, 0, '0.00', '[]', 'VICK 44 JBE X 120 ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VICK 44 JBE X 120 ML', 126, '0', '16.90', '16.90', '0', '1607126681', 'no', NULL, 'ok', '0', '428', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(924, 0, '0.00', '[]', 'VICK VAPORUB LATA X 12GR X 12 UNID.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VICK VAPORUB LATA X 12GR X 12 UNID.', 126, '0', '3.00', '3.00', '0', '1607126681', 'no', NULL, 'ok', '0', '428', 11, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(925, 0, '0.00', '[]', 'VICK VAPORUB POTE X 100GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VICK VAPORUB POTE X 100GR.', 126, '0', '15.50', '15.50', '0', '1607126681', 'no', NULL, 'ok', '0', '428', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(926, 0, '0.00', '[]', 'VICK VAPORUB POTE X 50GR.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VICK VAPORUB POTE X 50GR.', 126, '0', '11.50', '11.50', '0', '1607126681', 'no', NULL, 'ok', '0', '428', 3, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(927, 0, '0.00', '[]', 'VICKZZZ X 40 TABL.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VICKZZZ X 40 TABL.', 126, '0', '2.50', '2.50', '0', '1607126681', 'no', NULL, 'ok', '0', '428', 7, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(928, 0, '0.00', '[]', 'VINAGRE BULLY X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VINAGRE BULLY X 120ML.', 126, '0', '3.00', '3.00', '0', '1607126681', 'no', NULL, 'ok', '0', '429', 2, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(929, 0, '0.00', '[]', 'VINAGRE BULLY X 120ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VINAGRE BULLY X 120ML.', 126, '0', '2.90', '2.90', '0', '1607126681', 'no', NULL, 'ok', '0', '429', 11, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(930, 0, '0.00', '[]', 'VIOLETA DE GENCIANA X 30ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VIOLETA DE GENCIANA X 30ML.', 126, '0', '2.00', '2.00', '0', '1607126681', 'no', NULL, 'ok', '0', '430', 6, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(931, 0, '0.00', '[]', 'VITALIS 20 MG (TADALAFILO)', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'VITALIS 20 MG (TADALAFILO)', 126, '0', '20.00', '20.00', '0', '1607126681', 'no', NULL, 'ok', '0', '430', 4, '', NULL, 0, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(932, 0, '0.00', '[]', 'VITAMINA C 500MGI X 100 CAP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        VITAMINA C 500MGI X 100 CAP.', 126, '1', '1.50', '1.50', '0', '1607126681', 'no', '', 'ok', '0', NULL, 39, 'und ', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL);
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(933, 0, '0.00', '[]', 'VITAPYRENA FORTE X 50 SOBRES.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        VITAPYRENA FORTE X 50 SOBRES.', 126, '1', '3.00', '3.00', '0', '1607126681', 'no', '', 'ok', '0', NULL, 42, 'und ', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(934, 0, '0.00', '[]', 'VITAVERAN B12 CIP FCO X340ML', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        VITAVERAN B12 CIP FCO X340ML', 126, '1', '25.00', '25.00', '0', '1607126681', 'no', '', 'ok', '0', NULL, 1, 'und ', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(935, 0, '0.00', '[]', 'VIVACTIV MAGNESIO SABOR A NARANJA X 20 TAB', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        VIVACTIV MAGNESIO SABOR A NARANJA X 20 TAB', 126, '1', '19.50', '19.50', '0', '1607126681', 'no', '', 'ok', '0', NULL, 1, 'und ', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(936, 0, '0.00', '[]', 'WELTON X 240ML SUSP', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        WELTON X 240ML SUSP', 126, '1', '25.00', '25.00', '0', '1607126681', 'no', '', 'ok', '0', NULL, 1, 'und ', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(937, 0, '0.00', '[]', 'XENILER JARABE X 60ML.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        XENILER JARABE X 60ML.', 126, '1', '18.00', '18.00', '0', '1607126681', 'no', '', 'ok', '0', NULL, 1, 'und ', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(938, 0, '0.00', '[]', 'XTREME GEL FIJADOR', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        XTREME GEL FIJADOR', 126, '1', '4.00', '4.00', '0', '1607126681', 'no', '', 'ok', '0', NULL, 1, 'und ', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(939, 0, '0.00', '[]', 'ZARIDON 1000', '{\"type\":\"admin\",\"id\":\"4\"}', 29, 'ZARIDON 1000', 126, '0', '2.00', '2.00', '0', '1607126681', 'no', NULL, 'ok', '0', '433', 21, '', NULL, 1, NULL, '0', 'amount', '0', 'amount', NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1607488154, NULL, 'no', NULL),
(940, 0, '0.00', '[]', 'ZITHROTIL 500MG X COMP.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        ZITHROTIL 500MG X COMP.', 126, '1', '6.00', '6.00', '0', '1607126681', 'no', '', 'ok', '0', NULL, 9, 'und ', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL),
(941, 0, '0.00', '[]', 'ZZZCUDO REPELENTE SACHET X 24.', '{\"type\":\"admin\",\"id\":\"4\"}', 29, '                                        ZZZCUDO REPELENTE SACHET X 24.', 126, '1', '2.00', '2.00', '0', '1607126681', 'no', '', 'ok', '0', NULL, 13, 'und ', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'amount', '0', 'amount', 'null', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL);

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
(40, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0');

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
(126, 'Medicamento', '29', '[\"275\",\"276\",\"277\",\"278\",\"279\",\"280\",\"281\",\"282\",\"283\",\"284\",\"285\",\"286\",\"287\",\"288\",\"289\",\"290\",\"291\",\"292\",\"293\",\"294\",\"295\",\"296\",\"297\",\"298\",\"299\",\"300\",\"301\",\"302\",\"303\",\"304\",\"305\",\"306\",\"307\",\"308\",\"309\",\"310\",\"311\",\"312\",\"313\",\"314\",\"315\",\"316\",\"317\",\"318\",\"319\",\"320\",\"321\",\"322\",\"323\",\"324\",\"325\",\"326\",\"327\",\"328\",\"329\",\"330\",\"331\",\"332\",\"333\",\"334\",\"335\",\"336\",\"337\",\"338\",\"339\",\"340\",\"341\",\"342\",\"343\",\"344\",\"345\",\"346\",\"347\",\"348\",\"349\",\"350\",\"351\",\"352\",\"353\",\"354\",\"355\",\"356\",\"357\",\"358\",\"359\",\"360\",\"361\",\"362\",\"363\",\"364\",\"365\",\"366\",\"367\",\"368\",\"369\",\"370\",\"371\",\"372\",\"373\",\"374\",\"375\",\"376\",\"377\",\"378\",\"379\",\"380\",\"381\",\"382\",\"383\",\"384\",\"385\",\"386\",\"387\",\"389\",\"390\",\"391\",\"392\",\"393\",\"394\",\"395\",\"396\",\"397\",\"398\",\"399\",\"400\",\"401\",\"402\",\"403\",\"404\",\"405\",\"406\",\"407\",\"408\",\"409\",\"410\",\"411\",\"412\",\"413\",\"414\",\"415\",\"416\",\"417\",\"418\",\"419\",\"420\",\"421\",\"422\",\"423\",\"424\",\"425\",\"426\",\"427\",\"428\",\"429\",\"430\",\"431\",\"432\",\"433\",\"434\",\"435\",\"436\"]', NULL, 'sub_category_126.png', 0, '0'),
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
(24, 'featured_show', 'no'),
(25, 'vandors_show', 'no'),
(26, 'blog_show', 'no'),
(27, 'parallax_search_title', 'Search Products'),
(28, 'no_of_blog', NULL),
(29, 'featured_product_box_style', '1'),
(30, 'no_of_todays_deal', NULL),
(31, 'special_products_show', 'ok'),
(32, 'category_slides', 'ok'),
(33, 'home_categories', '[{\"category\":\"28\",\"sub_category\":[\"124\"],\"color_back\":null,\"color_text\":null}]'),
(34, 'category_product_box_style', '1'),
(35, 'top_slide_categories', '[\"26\",\"27\",\"28\",\"29\",\"30\",\"32\"]'),
(36, 'email_theme_style', 'style_1'),
(37, 'email_theme_style_2', '<div style=\"margin: 0px 10px; background: #45a9b9; padding: 30px;\"><div style=\"margin: 0px auto; background: #eff7ff; padding: 30px;\">[[body]]</div></div>'),
(38, 'email_theme_style_3', '<div style=\"margin: 0px 10px; background: repeating-linear-gradient(-45deg, red 0, red 1em, #fffdeb 0, #fffdeb 2em, #58a 0, #58a 3em, #fffdeb 0, #fffdeb 4em); padding: 15px;\"><div style=\"margin: 0px auto; background: #fffdeb; padding: 30px;\">[[body]]</div></div>'),
(39, 'email_theme_style_4', '<div style=\"margin: 0px 10px; background: #f7f7f7; padding: 30px;\"><div style=\"padding: 30px; background: #76cece; border-radius:5px 5px 0px 0px; box-shadow: 0px -1px 7px #616565; display:block;\"><div style=\"background-image:url([[logo]]); background-repeat:no-repeat; height:80px; width:auto; display:block;\"></div></div><div style=\"margin: 0px auto; background: rgba(255, 255, 255, 0.91); padding: 30px; box-shadow: 0px 3px 7px #616565; border-radius:0px 0px 5x 5px;\">[[body]]</div></div>'),
(40, 'product_bundle_show', 'no'),
(41, 'no_of_product_bundle', '6'),
(42, 'product_bundle_box_style', '1'),
(43, 'customer_product_show', 'no'),
(44, 'no_of_customer_product', '6'),
(45, 'header_homepage_status', 'yes'),
(46, 'header_all_categories_status', 'yes'),
(47, 'header_featured_products_status', 'yes'),
(48, 'header_todays_deal_status', 'yes'),
(49, 'header_bundled_product_status', 'no'),
(50, 'header_classifieds_status', 'no'),
(51, 'header_latest_products_status', 'yes'),
(52, 'header_all_brands_status', 'no'),
(53, 'header_all_vendors_status', 'no'),
(54, 'header_blogs_status', 'no'),
(55, 'header_store_locator_status', 'yes'),
(56, 'header_contact_status', 'no'),
(57, 'header_more_status', 'no'),
(58, 'home3_categories', '[{\\\"category\\\":\\\"4\\\",\\\"sub_category\\\":[\\\"8\\\",\\\"11\\\",\\\"34\\\",\\\"35\\\",\\\"36\\\",\\\"37\\\",\\\"39\\\",\\\"40\\\"],\\\"color_back\\\":null,\\\"color_text\\\":null},{\\\"category\\\":\\\"5\\\",\\\"sub_category\\\":[\\\"27\\\",\\\"28\\\",\\\"29\\\",\\\"30\\\",\\\"89\\\",\\\"90\\\"],\\\"color_back\\\":null,\\\"color_text\\\":null}]'),
(59, 'todays_deal_show', 'ok'),
(60, 'todays_deal_product_box_style', '1'),
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
(26, 'jose', 'polanco', 'joseandres_pj@hotmail.es', '937199302', 'av villareal 401', 'av villareal 401', 'Trujillo', '13001', '(-8.094920199999999, -79.0142616)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1593422142', '', '', '', '[\"231\"]', '1607484992', 'default', NULL, '[]', '[]', 'Perú', 'La Libertad', 'MjE=', 2, '[]');

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
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

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
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=942;

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
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT;

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
