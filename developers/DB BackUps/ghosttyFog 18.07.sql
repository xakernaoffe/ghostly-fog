-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 18 2017 г., 13:04
-- Версия сервера: 5.5.48-log
-- Версия PHP: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ghosttyFog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oca_label`
--

CREATE TABLE IF NOT EXISTS `oca_label` (
  `label_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oca_label`
--

INSERT INTO `oca_label` (`label_id`, `name`, `image`, `sort_order`) VALUES
(2, 'Акция красный', 'catalog/label/sale.png', 2),
(3, 'Sale синий', 'catalog/label/sale_blue.png', 2),
(4, 'Процент красный', 'catalog/label/percent_red.png', 2),
(5, 'Процент синий', 'catalog/label/percent_blue.png', 2),
(6, '10% синий', 'catalog/label/10_percent_blue.png', 2),
(7, '10% красный', 'catalog/label/10_percent_red.png', 2),
(8, '20% синий', 'catalog/label/20_percent_blue.png', 2),
(9, '20% красный', 'catalog/label/20_percent_red.png', 2),
(10, '30% синий', 'catalog/label/30_percent_blue.png', 2),
(11, '30% красный', 'catalog/label/30_percent_red.png', 2),
(12, '40% синий', 'catalog/label/40_percent_blue.png', 2),
(13, '40% красный', 'catalog/label/40_percent_red.png', 2),
(14, '50% синий', 'catalog/label/50_percent_blue.png', 2),
(15, '50% красный', 'catalog/label/50_percent_red.png', 2),
(16, '70% синий', 'catalog/label/70_percent_blue.png', 2),
(17, '70% красный', 'catalog/label/70_percent_red.png', 2),
(18, 'Лучшая цена синий', 'catalog/label/best-price-blue.png', 2),
(19, 'Best Price красный', 'catalog/label/best-price-red.png', 2),
(20, 'Best 2 синий', 'catalog/label/best2-blue.png', 2),
(21, 'Best 2 красный', 'catalog/label/best2-red.png', 2),
(22, 'Buy Me синий', 'catalog/label/buy-me-blue.png', 2),
(23, 'Buy Me красный', 'catalog/label/buy-me-red.png', 2),
(24, 'Free синий', 'catalog/label/free-blue.png', 2),
(25, 'Free красный', 'catalog/label/free-red.png', 2),
(26, 'Hot 2 синий', 'catalog/label/hot2-blue.png', 2),
(27, 'Hot 2 красный', 'catalog/label/hot2-red.png', 2),
(28, 'Mega Sale синий', 'catalog/label/mega-sale-blue.png', 2),
(29, 'Mega Sale красный', 'catalog/label/mega-sale-red.png', 2),
(30, 'New ', 'catalog/newicon.png', 2),
(31, 'New красный', 'catalog/label/new-red.png', 2),
(32, 'New 2 синий', 'catalog/label/new2-blue.png', 2),
(33, 'New 2 красный', 'catalog/label/new2-red.png', 2),
(34, '1 Бесплатно синий', 'catalog/label/one-free-blue.png', 2),
(35, '1 Бесплатно красный', 'catalog/label/one-free-red.png', 2),
(36, 'Percent 2 синий', 'catalog/label/percent2-blue.png', 2),
(37, 'Percent 2 красный', 'catalog/label/percent2-red.png', 2),
(39, 'Sale 2 синий', 'catalog/label/sale2-blue.png', 2),
(40, 'Sale 2 красный', 'catalog/label/sale2-red.png', 2),
(41, 'Super Sale синий', 'catalog/label/super-sale-blue.png', 2),
(42, 'Super Sale красный', 'catalog/label/super-sale-red.png', 2),
(47, 'Sale лента вертикаль', 'catalog/label/saleRibbon.png', 0),
(48, 'Sale лента Violet вертикаль', 'catalog/label/sale badge.png', 0),
(49, 'Sale красный Edge внизу справа', 'catalog/label/ribbon-sale.png', 0),
(50, 'Sale красный Edge вверху слева', 'catalog/label/icon-sale.png', 0),
(51, 'лента Sale красный вверху', 'catalog/label/ribbon-sale (1).png', 0),
(52, 'лента Sale красный вверху слева', 'catalog/label/SaleRibbon (1).png', 0),
(53, 'Special Offer штамп 200x200', 'catalog/label/special_offer_stamp.png', 0),
(54, 'Special Offer лента Corner вверху слева', 'catalog/label/mtd-corner-ribbon-specialoffer.png', 0),
(55, 'Special Price лента ', '', 0),
(56, 'Special Price зеленая лента вверху слева', 'catalog/label/CORNER RIBBON GREEN 400X4001.PNG', 0),
(57, '30 дней гарантия синий', 'catalog/label/30day_warranty.png', 0),
(58, 'New красный стикер', 'catalog/label/22416.png', 0),
(59, 'Sale синий стикер', 'catalog/label/43947.png', 0),
(60, 'Sale Orange стикер', 'catalog/label/43939.png', 0),
(61, 'Best Price стикер красный штамп', 'catalog/label/bigstock-Best-price-rubber-stamp-17459288.png', 0),
(62, 'Certified Original красный штамп 260x200', 'catalog/label/Certified-Original-Grunge-Stamp.png', 0),
(63, 'Special Offer красный штамп 1 260x200', 'catalog/label/offers_stamp.png', 0),
(64, 'Sale красный штамп 260x200', 'catalog/label/red_sale_stamp_400_clr_3171.png', 0),
(65, 'Coming Soon штамп красный 260x200', 'catalog/label/red-coming-soon-stamp.png', 0),
(66, 'Sale штамп Bold красный 260x200', 'catalog/label/SaleStamp.gif', 0),
(67, 'Sold штамп красный 260x200', 'catalog/label/sold_out.png', 0),
(68, 'Sold Out штамп красный 260x200', 'catalog/label/sold_out_stamp.png', 0),
(69, 'Sold штамп красный 1 260x200', 'catalog/label/sold-stamp-angle.png', 0),
(70, 'Special Offer красный штамп', 'catalog/label/Stamp.png', 0),
(71, 'Акция лента красная слева вверху', 'catalog/label/akcia.png', 0),
(72, 'Бесплатная доставка синий штамп', 'catalog/label/dostavka.png', 0),
(73, 'Бесплатная доставка зеленый штамп', 'catalog/label/freeship.png', 0),
(74, 'Бесплатная доставка красный штамп', 'catalog/label/free-shiping-red.png', 0),
(75, 'Бесплатная доставка зеленый', 'catalog/label/icon-maz7.png', 0),
(76, 'Хит продаж', 'catalog/label/hit2.png', 0),
(77, 'Новая Почта', 'catalog/label/logo-nova-poshta.png', 0),
(78, 'Скидки красный бантик', 'catalog/label/information_items_1965.png', 0),
(79, 'Новая Почта бесплатно', 'catalog/label/newpost.png', 0),
(80, 'Доставка бесплатно бордовый штамп', 'catalog/label/pechat.png', 0),
(81, 'Акция красный штамп', 'catalog/label/red_sale_stamp_400_clr_3171.png', 0),
(82, 'Супер цена вышневый', 'catalog/label/sale546.png', 0),
(83, 'Распродажа красная печать', 'catalog/label/sale_2.png', 0),
(84, 'Спецпредложение бирка красная', 'catalog/label/specpred.png', 0),
(85, 'Супер цена красный', 'catalog/label/supercena_2.png', 0),
(86, 'Выгодное предложение справа вверху', 'catalog/label/vigodnoe.png', 0),
(87, 'Акция завершена красная печать', 'catalog/label/zaverheno.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oca_label_product`
--

CREATE TABLE IF NOT EXISTS `oca_label_product` (
  `product_label_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL DEFAULT '0',
  `position` varchar(12) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_activity`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_login`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', '5kXsMdL5McIICrMKokjD9efKmI8ohvGKNqLMReyi4e2yO1H4gyIz1t5OWPD7CDYp7sOdfovL2wcDy3ytmC2tr9rxAYbCZ76GBdhDfZOVtfaigJ1dnbXlIvMfKcwIfTn2Mkp0XXogsySIGujf2pIN3bxx49tAfxKLqf8WsPZNTrWW88Ejw8Li3OfTq0BUXEhjb6cCfDHXCTFoXCsG87BPG76Uc3h3g7kDI4kLKuN2wlQg8UqAZLOmpELYHGMcDLEi', 1, '2017-06-30 01:14:35', '2017-06-30 01:14:35');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `token`, `session_id`, `session_name`, `ip`, `date_added`, `date_modified`) VALUES
(1, 1, 'Wefoie2TQB8n5vtTDYkkQNWTQJ07AmOH', 'osteerfi0d0i2u69f1s4ihf3r1', 'temp_session_5956b9f780db6', '127.0.0.1', '2017-06-30 23:52:07', '2017-07-01 00:01:30'),
(2, 1, 'DywykX8ik2n5m5eANjPuefQSJydrrGNn', '1f9310m0kfmubmnn4ftiev6nm5', 'temp_session_5963773e1cbfd', '127.0.0.1', '2017-07-10 15:46:54', '2017-07-10 15:46:54'),
(3, 1, 'U3GRsFhc2tC7UCOy6eoQwlO9PPauIM3B', '1f9310m0kfmubmnn4ftiev6nm5', 'temp_session_59637742aece6', '127.0.0.1', '2017-07-10 15:46:58', '2017-07-10 15:46:58');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 4, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `mf_tooltip` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`, `mf_tooltip`) VALUES
(1, 1, 'Description', NULL),
(2, 1, 'No. of Cores', NULL),
(4, 1, 'test 1', NULL),
(5, 1, 'test 2', NULL),
(6, 1, 'test 3', NULL),
(7, 1, 'test 4', NULL),
(8, 1, 'test 5', NULL),
(9, 1, 'Страна производитель', NULL),
(10, 1, 'VP/PG', NULL),
(11, 1, 'Крепость', NULL),
(3, 1, 'Объем', NULL),
(3, 2, 'Объем', NULL),
(11, 2, 'Крепость', NULL),
(10, 2, 'VP/PG', NULL),
(9, 2, 'Страна производитель', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Память'),
(4, 1, 'Technical'),
(5, 1, 'Материнская плата'),
(6, 1, 'Процессор'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'Продукция HP', 1),
(7, 'Слайдшоу на главной', 1),
(8, 'Производители', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(112, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/slide1.png', 1),
(109, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0),
(108, 8, '', 'catalog/firm10.png', 0),
(107, 8, '', 'catalog/firm7.png', 0),
(106, 8, '', 'catalog/firm8.png', 0),
(105, 8, '', 'catalog/firm7.png', 0),
(104, 8, '', 'catalog/firm6.png', 0),
(103, 8, '', 'catalog/firm5.png', 0),
(102, 8, '', 'catalog/firm4.png', 0),
(101, 8, '', 'catalog/firm3.png', 0),
(113, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=50', 'catalog/slide1.png', 2),
(100, 8, '', 'catalog/firm2.png', 0),
(99, 8, '', 'catalog/firm1.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(113, 2, 7, 'MacBookAir'),
(108, 1, 8, 'Starbucks'),
(107, 1, 8, 'Disney'),
(106, 2, 8, 'Dell'),
(106, 1, 8, 'Dell'),
(105, 2, 8, 'Harley Davidson'),
(113, 1, 7, 'MacBookAir'),
(105, 1, 8, 'Harley Davidson'),
(104, 2, 8, 'Canon'),
(104, 1, 8, 'Canon'),
(103, 2, 8, 'Burger King'),
(112, 2, 7, 'iPhone 6'),
(107, 2, 8, 'Disney'),
(103, 1, 8, 'Burger King'),
(102, 2, 8, 'Coca Cola'),
(102, 1, 8, 'Coca Cola'),
(101, 2, 8, 'Sony'),
(112, 1, 7, 'iPhone 6'),
(101, 1, 8, 'Sony'),
(100, 2, 8, 'RedBull'),
(100, 1, 8, 'RedBull'),
(99, 2, 8, 'NFL'),
(99, 1, 8, 'NFL'),
(108, 2, 8, 'Starbucks'),
(109, 1, 8, 'Nintendo'),
(109, 2, 8, 'Nintendo');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_callback`
--

CREATE TABLE IF NOT EXISTS `oc_callback` (
  `callback_id` int(11) NOT NULL,
  `email` varchar(96) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `date_added` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `oc_callback`
--

INSERT INTO `oc_callback` (`callback_id`, `email`, `title`, `text`, `phone`, `name`, `time`, `url`, `date_added`) VALUES
(1, '', '', '', '2425452452', 'jghjyuhy', '0', 'http://ghostly-fog/', '2017-06-30'),
(2, '', '', '', 'dededded', 'Fkdededed', '', 'http://ghostly-fog/', '2017-07-12'),
(3, '', '', '', '333', '252', '', 'http://ghostly-fog/', '2017-07-12');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(8, 0, 'bfrhf1id7rd0hd7h2p8cgtqbt6', 49, 0, '[]', 1, '2017-07-18 12:21:52');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2017-07-03 12:41:39'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2017-07-03 13:03:57'),
(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2017-07-03 12:38:02'),
(70, '', 20, 0, 1, 0, 1, '2017-07-03 13:09:22', '2017-07-03 13:09:22'),
(18, 'catalog/demo/hp_2.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2017-07-03 12:38:23'),
(71, '', 20, 0, 1, 0, 1, '2017-07-03 13:09:48', '2017-07-03 13:09:48'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2017-07-03 13:03:41'),
(74, '', 18, 0, 1, 0, 1, '2017-07-06 15:15:53', '2017-07-06 15:15:53'),
(59, '', 20, 0, 1, 0, 1, '2017-07-03 13:04:53', '2017-07-03 13:05:04'),
(69, '', 20, 0, 1, 0, 1, '2017-07-03 13:08:59', '2017-07-03 13:08:59'),
(68, '', 20, 0, 1, 0, 1, '2017-07-03 13:08:35', '2017-07-03 13:08:35'),
(67, '', 20, 0, 1, 0, 1, '2017-07-03 13:08:17', '2017-07-03 13:08:17'),
(66, '', 20, 0, 1, 0, 1, '2017-07-03 13:07:46', '2017-07-03 13:07:46'),
(73, '', 18, 0, 1, 0, 1, '2017-07-06 15:15:37', '2017-07-06 15:15:37'),
(65, '', 20, 0, 1, 0, 1, '2017-07-03 13:07:23', '2017-07-03 13:07:23'),
(64, '', 20, 0, 1, 0, 1, '2017-07-03 13:06:56', '2017-07-03 13:06:56'),
(63, '', 20, 0, 1, 0, 1, '2017-07-03 13:06:35', '2017-07-03 13:06:35'),
(62, '', 20, 0, 1, 0, 1, '2017-07-03 13:06:17', '2017-07-03 13:06:17'),
(61, '', 20, 0, 1, 0, 1, '2017-07-03 13:05:56', '2017-07-03 13:05:56'),
(60, '', 20, 0, 1, 0, 1, '2017-07-03 13:05:27', '2017-07-03 13:05:36'),
(57, '', 0, 1, 1, 4, 1, '2011-04-26 08:53:16', '2017-07-03 12:40:03'),
(72, '', 20, 0, 1, 0, 1, '2017-07-03 13:10:07', '2017-07-03 13:10:07');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
(74, 1, 'Examle2', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(26, 2, 'PC', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(25, 2, 'Components', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(20, 2, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Example of category description', '', '', ''),
(62, 1, 'Acid punch', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(62, 2, 'Acid punch', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(63, 1, 'Worq', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(63, 2, 'Worq', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(64, 1, 'Steam Pack', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(64, 2, 'Steam Pack', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(65, 1, 'The originals', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(65, 2, 'The originals', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(18, 2, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', '', '', '', ''),
(67, 2, 'Cashmere millionaires', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(66, 2, 'Old fashioned elixir', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(57, 2, 'Tablets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(74, 2, 'Examle2', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(70, 1, 'Cuttwood', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(73, 2, 'Examle1', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(27, 1, 'Cosmic fog', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(26, 1, 'Drip trip', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(20, 1, 'Жидкости', '&lt;p&gt;\r\n	Пример текста в описания категории&lt;/p&gt;\r\n', 'H1 заголовок Комьпютеров', '', '', ''),
(69, 2, 'Five pawns', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(69, 1, 'Five pawns', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(68, 2, 'Naked 100', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(27, 2, 'Mac', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(59, 1, 'Lost fog', '&lt;p&gt;Something&lt;/p&gt;', '', '', '', ''),
(59, 2, 'Lost fog', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(61, 2, 'Star monkey', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(60, 1, 'The milkman', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(60, 2, 'The milkman', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(61, 1, 'Star monkey', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(18, 1, 'Атомайзеры', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', '', '', '', ''),
(68, 1, 'Naked 100', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(73, 1, 'Examle1', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(67, 1, 'Cashmere millionaires', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(66, 1, 'Old fashioned elixir', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(25, 1, 'Девайсы', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(57, 1, 'Аксессуары', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(70, 2, 'Cuttwood', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(71, 1, 'Bad drip', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(71, 2, 'Bad drip', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(72, 1, 'Atmose', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(72, 2, 'Atmose', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(18, 18, 0),
(73, 73, 1),
(73, 18, 0),
(74, 74, 1),
(74, 18, 0),
(72, 72, 1),
(72, 20, 0),
(71, 71, 1),
(71, 20, 0),
(70, 70, 1),
(70, 20, 0),
(69, 69, 1),
(69, 20, 0),
(68, 68, 1),
(68, 20, 0),
(67, 67, 1),
(67, 20, 0),
(66, 66, 1),
(66, 20, 0),
(65, 65, 1),
(65, 20, 0),
(64, 64, 1),
(64, 20, 0),
(63, 63, 1),
(63, 20, 0),
(62, 62, 1),
(62, 20, 0),
(61, 61, 1),
(61, 20, 0),
(60, 20, 0),
(60, 60, 1),
(59, 20, 0),
(59, 59, 1),
(57, 57, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(20, 0, 0),
(18, 0, 0),
(25, 0, 0),
(57, 0, 0),
(26, 0, 0),
(27, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(18, 0),
(20, 0),
(25, 0),
(26, 0),
(27, 0),
(57, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Афганистан', 'AF', 'AFG', '', 0, 1),
(2, 'Албания', 'AL', 'ALB', '', 0, 1),
(3, 'Алжир', 'DZ', 'DZA', '', 0, 1),
(4, 'Восточное Самоа', 'AS', 'ASM', '', 0, 1),
(5, 'Андорра', 'AD', 'AND', '', 0, 1),
(6, 'Ангола', 'AO', 'AGO', '', 0, 1),
(7, 'Ангилья', 'AI', 'AIA', '', 0, 1),
(8, 'Антарктида', 'AQ', 'ATA', '', 0, 1),
(9, 'Антигуа и Барбуда', 'AG', 'ATG', '', 0, 1),
(10, 'Аргентина', 'AR', 'ARG', '', 0, 1),
(11, 'Армения', 'AM', 'ARM', '', 0, 1),
(12, 'Аруба', 'AW', 'ABW', '', 0, 1),
(13, 'Австралия', 'AU', 'AUS', '', 0, 1),
(14, 'Австрия', 'AT', 'AUT', '', 0, 1),
(15, 'Азербайджан', 'AZ', 'AZE', '', 0, 1),
(16, 'Багамские острова', 'BS', 'BHS', '', 0, 1),
(17, 'Бахрейн', 'BH', 'BHR', '', 0, 1),
(18, 'Бангладеш', 'BD', 'BGD', '', 0, 1),
(19, 'Барбадос', 'BB', 'BRB', '', 0, 1),
(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
(21, 'Бельгия', 'BE', 'BEL', '', 0, 1),
(22, 'Белиз', 'BZ', 'BLZ', '', 0, 1),
(23, 'Бенин', 'BJ', 'BEN', '', 0, 1),
(24, 'Бермудские острова', 'BM', 'BMU', '', 0, 1),
(25, 'Бутан', 'BT', 'BTN', '', 0, 1),
(26, 'Боливия', 'BO', 'BOL', '', 0, 1),
(27, 'Босния и Герцеговина', 'BA', 'BIH', '', 0, 1),
(28, 'Ботсвана', 'BW', 'BWA', '', 0, 1),
(29, 'Остров Буве', 'BV', 'BVT', '', 0, 1),
(30, 'Бразилия', 'BR', 'BRA', '', 0, 1),
(31, 'Британская территория в Индийском океане', 'IO', 'IOT', '', 0, 1),
(32, 'Бруней', 'BN', 'BRN', '', 0, 1),
(33, 'Болгария', 'BG', 'BGR', '', 0, 1),
(34, 'Буркина-Фасо', 'BF', 'BFA', '', 0, 1),
(35, 'Бурунди', 'BI', 'BDI', '', 0, 1),
(36, 'Камбоджа', 'KH', 'KHM', '', 0, 1),
(37, 'Камерун', 'CM', 'CMR', '', 0, 1),
(38, 'Канада', 'CA', 'CAN', '', 0, 1),
(39, 'Кабо-Верде', 'CV', 'CPV', '', 0, 1),
(40, 'Каймановы острова', 'KY', 'CYM', '', 0, 1),
(41, 'Центрально-Африканская Республика', 'CF', 'CAF', '', 0, 1),
(42, 'Чад', 'TD', 'TCD', '', 0, 1),
(43, 'Чили', 'CL', 'CHL', '', 0, 1),
(44, 'Китайская Народная Республика', 'CN', 'CHN', '', 0, 1),
(45, 'Остров Рождества', 'CX', 'CXR', '', 0, 1),
(46, 'Кокосовые острова', 'CC', 'CCK', '', 0, 1),
(47, 'Колумбия', 'CO', 'COL', '', 0, 1),
(48, 'Коморские острова', 'KM', 'COM', '', 0, 1),
(49, 'Конго', 'CG', 'COG', '', 0, 1),
(50, 'Острова Кука', 'CK', 'COK', '', 0, 1),
(51, 'Коста-Рика', 'CR', 'CRI', '', 0, 1),
(52, 'Кот д''Ивуар', 'CI', 'CIV', '', 0, 1),
(53, 'Хорватия', 'HR', 'HRV', '', 0, 1),
(54, 'Куба', 'CU', 'CUB', '', 0, 1),
(55, 'Кипр', 'CY', 'CYP', '', 0, 1),
(56, 'Чехия', 'CZ', 'CZE', '', 0, 1),
(57, 'Дания', 'DK', 'DNK', '', 0, 1),
(58, 'Джибути', 'DJ', 'DJI', '', 0, 1),
(59, 'Доминика', 'DM', 'DMA', '', 0, 1),
(60, 'Доминиканская Республика', 'DO', 'DOM', '', 0, 1),
(61, 'Восточный Тимор', 'TP', 'TMP', '', 0, 1),
(62, 'Эквадор', 'EC', 'ECU', '', 0, 1),
(63, 'Египет', 'EG', 'EGY', '', 0, 1),
(64, 'Сальвадор', 'SV', 'SLV', '', 0, 1),
(65, 'Экваториальная Гвинея', 'GQ', 'GNQ', '', 0, 1),
(66, 'Эритрея', 'ER', 'ERI', '', 0, 1),
(67, 'Эстония', 'EE', 'EST', '', 0, 1),
(68, 'Эфиопия', 'ET', 'ETH', '', 0, 1),
(69, 'Фолклендские (Мальвинские) острова', 'FK', 'FLK', '', 0, 1),
(70, 'Фарерские острова', 'FO', 'FRO', '', 0, 1),
(71, 'Фиджи', 'FJ', 'FJI', '', 0, 1),
(72, 'Финляндия', 'FI', 'FIN', '', 0, 1),
(73, 'Франция', 'FR', 'FRA', '', 0, 1),
(74, 'Франция, Метрополия', 'FX', 'FXX', '', 0, 1),
(75, 'Французская Гвиана', 'GF', 'GUF', '', 0, 1),
(76, 'Французская Полинезия', 'PF', 'PYF', '', 0, 1),
(77, 'Французские Южные территории', 'TF', 'ATF', '', 0, 1),
(78, 'Габон', 'GA', 'GAB', '', 0, 1),
(79, 'Гамбия', 'GM', 'GMB', '', 0, 1),
(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
(81, 'Германия', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(82, 'Гана', 'GH', 'GHA', '', 0, 1),
(83, 'Гибралтар', 'GI', 'GIB', '', 0, 1),
(84, 'Греция', 'GR', 'GRC', '', 0, 1),
(85, 'Гренландия', 'GL', 'GRL', '', 0, 1),
(86, 'Гренада', 'GD', 'GRD', '', 0, 1),
(87, 'Гваделупа', 'GP', 'GLP', '', 0, 1),
(88, 'Гуам', 'GU', 'GUM', '', 0, 1),
(89, 'Гватемала', 'GT', 'GTM', '', 0, 1),
(90, 'Гвинея', 'GN', 'GIN', '', 0, 1),
(91, 'Гвинея-Бисау', 'GW', 'GNB', '', 0, 1),
(92, 'Гайана', 'GY', 'GUY', '', 0, 1),
(93, 'Гаити', 'HT', 'HTI', '', 0, 1),
(94, 'Херд и Макдональд, острова', 'HM', 'HMD', '', 0, 1),
(95, 'Гондурас', 'HN', 'HND', '', 0, 1),
(96, 'Гонконг', 'HK', 'HKG', '', 0, 1),
(97, 'Венгрия', 'HU', 'HUN', '', 0, 1),
(98, 'Исландия', 'IS', 'ISL', '', 0, 1),
(99, 'Индия', 'IN', 'IND', '', 0, 1),
(100, 'Индонезия', 'ID', 'IDN', '', 0, 1),
(101, 'Иран', 'IR', 'IRN', '', 0, 1),
(102, 'Ирак', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ирландия', 'IE', 'IRL', '', 0, 1),
(104, 'Израиль', 'IL', 'ISR', '', 0, 1),
(105, 'Италия', 'IT', 'ITA', '', 0, 1),
(106, 'Ямайка', 'JM', 'JAM', '', 0, 1),
(107, 'Япония', 'JP', 'JPN', '', 0, 1),
(108, 'Иордания', 'JO', 'JOR', '', 0, 1),
(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
(110, 'Кения', 'KE', 'KEN', '', 0, 1),
(111, 'Кирибати', 'KI', 'KIR', '', 0, 1),
(112, 'Корейская Народно-Демократическая Республика', 'KP', 'PRK', '', 0, 1),
(113, 'Республика Корея', 'KR', 'KOR', '', 0, 1),
(114, 'Кувейт', 'KW', 'KWT', '', 0, 1),
(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
(116, 'Лаос', 'LA', 'LAO', '', 0, 1),
(117, 'Латвия', 'LV', 'LVA', '', 0, 1),
(118, 'Ливан', 'LB', 'LBN', '', 0, 1),
(119, 'Лесото', 'LS', 'LSO', '', 0, 1),
(120, 'Либерия', 'LR', 'LBR', '', 0, 1),
(121, 'Ливия', 'LY', 'LBY', '', 0, 1),
(122, 'Лихтенштейн', 'LI', 'LIE', '', 0, 1),
(123, 'Литва', 'LT', 'LTU', '', 0, 1),
(124, 'Люксембург', 'LU', 'LUX', '', 0, 1),
(125, 'Макао', 'MO', 'MAC', '', 0, 1),
(126, 'Македония', 'MK', 'MKD', '', 0, 1),
(127, 'Мадагаскар', 'MG', 'MDG', '', 0, 1),
(128, 'Малави', 'MW', 'MWI', '', 0, 1),
(129, 'Малайзия', 'MY', 'MYS', '', 0, 1),
(130, 'Мальдивы', 'MV', 'MDV', '', 0, 1),
(131, 'Мали', 'ML', 'MLI', '', 0, 1),
(132, 'Мальта', 'MT', 'MLT', '', 0, 1),
(133, 'Маршалловы острова', 'MH', 'MHL', '', 0, 1),
(134, 'Мартиника', 'MQ', 'MTQ', '', 0, 1),
(135, 'Мавритания', 'MR', 'MRT', '', 0, 1),
(136, 'Маврикий', 'MU', 'MUS', '', 0, 1),
(137, 'Майотта', 'YT', 'MYT', '', 0, 1),
(138, 'Мексика', 'MX', 'MEX', '', 0, 1),
(139, 'Микронезия', 'FM', 'FSM', '', 0, 1),
(140, 'Молдова', 'MD', 'MDA', '', 0, 1),
(141, 'Монако', 'MC', 'MCO', '', 0, 1),
(142, 'Монголия', 'MN', 'MNG', '', 0, 1),
(143, 'Монтсеррат', 'MS', 'MSR', '', 0, 1),
(144, 'Марокко', 'MA', 'MAR', '', 0, 1),
(145, 'Мозамбик', 'MZ', 'MOZ', '', 0, 1),
(146, 'Мьянма', 'MM', 'MMR', '', 0, 1),
(147, 'Намибия', 'NA', 'NAM', '', 0, 1),
(148, 'Науру', 'NR', 'NRU', '', 0, 1),
(149, 'Непал', 'NP', 'NPL', '', 0, 1),
(150, 'Нидерланды', 'NL', 'NLD', '', 0, 1),
(151, 'Антильские (Нидерландские) острова', 'AN', 'ANT', '', 0, 1),
(152, 'Новая Каледония', 'NC', 'NCL', '', 0, 1),
(153, 'Новая Зеландия', 'NZ', 'NZL', '', 0, 1),
(154, 'Никарагуа', 'NI', 'NIC', '', 0, 1),
(155, 'Нигер', 'NE', 'NER', '', 0, 1),
(156, 'Нигерия', 'NG', 'NGA', '', 0, 1),
(157, 'Ниуэ', 'NU', 'NIU', '', 0, 1),
(158, 'Остров Норфолк', 'NF', 'NFK', '', 0, 1),
(159, 'Северные Марианские острова', 'MP', 'MNP', '', 0, 1),
(160, 'Норвегия', 'NO', 'NOR', '', 0, 1),
(161, 'Оман', 'OM', 'OMN', '', 0, 1),
(162, 'Пакистан', 'PK', 'PAK', '', 0, 1),
(163, 'Палау', 'PW', 'PLW', '', 0, 1),
(164, 'Панама', 'PA', 'PAN', '', 0, 1),
(165, 'Папуа - Новая Гвинея', 'PG', 'PNG', '', 0, 1),
(166, 'Парагвай', 'PY', 'PRY', '', 0, 1),
(167, 'Перу', 'PE', 'PER', '', 0, 1),
(168, 'Филиппины', 'PH', 'PHL', '', 0, 1),
(169, 'Острова Питкэрн', 'PN', 'PCN', '', 0, 1),
(170, 'Польша', 'PL', 'POL', '', 0, 1),
(171, 'Португалия', 'PT', 'PRT', '', 0, 1),
(172, 'Пуэрто-Рико', 'PR', 'PRI', '', 0, 1),
(173, 'Катар', 'QA', 'QAT', '', 0, 1),
(174, 'Реюньон', 'RE', 'REU', '', 0, 1),
(175, 'Румыния', 'RO', 'ROM', '', 0, 1),
(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
(177, 'Руанда', 'RW', 'RWA', '', 0, 1),
(178, 'Сент-Китс и Невис', 'KN', 'KNA', '', 0, 1),
(179, 'Сент-Люсия', 'LC', 'LCA', '', 0, 1),
(180, 'Сент-Винсент и Гренадины', 'VC', 'VCT', '', 0, 1),
(181, 'Западное Самоа', 'WS', 'WSM', '', 0, 1),
(182, 'Сан-Марино', 'SM', 'SMR', '', 0, 1),
(183, 'Сан-Томе и Принсипи', 'ST', 'STP', '', 0, 1),
(184, 'Саудовская Аравия', 'SA', 'SAU', '', 0, 1),
(185, 'Сенегал', 'SN', 'SEN', '', 0, 1),
(186, 'Сейшельские острова', 'SC', 'SYC', '', 0, 1),
(187, 'Сьерра-Леоне', 'SL', 'SLE', '', 0, 1),
(188, 'Сингапур', 'SG', 'SGP', '', 0, 1),
(189, 'Словакия', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Словения', 'SI', 'SVN', '', 0, 1),
(191, 'Соломоновы острова', 'SB', 'SLB', '', 0, 1),
(192, 'Сомали', 'SO', 'SOM', '', 0, 1),
(193, 'Южно-Африканская Республика', 'ZA', 'ZAF', '', 0, 1),
(194, 'Южная Джорджия и Южные Сандвичевы острова', 'GS', 'SGS', '', 0, 1),
(195, 'Испания', 'ES', 'ESP', '', 0, 1),
(196, 'Шри-Ланка', 'LK', 'LKA', '', 0, 1),
(197, 'Остров Святой Елены', 'SH', 'SHN', '', 0, 1),
(198, 'Сен-Пьер и Микелон', 'PM', 'SPM', '', 0, 1),
(199, 'Судан', 'SD', 'SDN', '', 0, 1),
(200, 'Суринам', 'SR', 'SUR', '', 0, 1),
(201, 'Шпицберген и Ян Майен', 'SJ', 'SJM', '', 0, 1),
(202, 'Свазиленд', 'SZ', 'SWZ', '', 0, 1),
(203, 'Швеция', 'SE', 'SWE', '', 0, 1),
(204, 'Швейцария', 'CH', 'CHE', '', 0, 1),
(205, 'Сирия', 'SY', 'SYR', '', 0, 1),
(206, 'Тайвань (провинция Китая)', 'TW', 'TWN', '', 0, 1),
(207, 'Таджикистан', 'TJ', 'TJK', '', 0, 1),
(208, 'Танзания', 'TZ', 'TZA', '', 0, 1),
(209, 'Таиланд', 'TH', 'THA', '', 0, 1),
(210, 'Того', 'TG', 'TGO', '', 0, 1),
(211, 'Токелау', 'TK', 'TKL', '', 0, 1),
(212, 'Тонга', 'TO', 'TON', '', 0, 1),
(213, 'Тринидад и Тобаго', 'TT', 'TTO', '', 0, 1),
(214, 'Тунис', 'TN', 'TUN', '', 0, 1),
(215, 'Турция', 'TR', 'TUR', '', 0, 1),
(216, 'Туркменистан', 'TM', 'TKM', '', 0, 1),
(217, 'Острова Теркс и Кайкос', 'TC', 'TCA', '', 0, 1),
(218, 'Тувалу', 'TV', 'TUV', '', 0, 1),
(219, 'Уганда', 'UG', 'UGA', '', 0, 1),
(220, 'Украина', 'UA', 'UKR', '', 0, 1),
(221, 'Объединенные Арабские Эмираты', 'AE', 'ARE', '', 0, 1),
(222, 'Великобритания', 'GB', 'GBR', '', 1, 1),
(223, 'Соединенные Штаты Америки', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'Мелкие отдаленные острова США', 'UM', 'UMI', '', 0, 1),
(225, 'Уругвай', 'UY', 'URY', '', 0, 1),
(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1),
(227, 'Вануату', 'VU', 'VUT', '', 0, 1),
(228, 'Ватикан', 'VA', 'VAT', '', 0, 1),
(229, 'Венесуэла', 'VE', 'VEN', '', 0, 1),
(230, 'Вьетнам', 'VN', 'VNM', '', 0, 1),
(231, 'Виргинские острова (Британские)', 'VG', 'VGB', '', 0, 1),
(232, 'Виргинские острова (США)', 'VI', 'VIR', '', 0, 1),
(233, 'Уоллис и Футуна', 'WF', 'WLF', '', 0, 1),
(234, 'Западная Сахара', 'EH', 'ESH', '', 0, 1),
(235, 'Йемен', 'YE', 'YEM', '', 0, 1),
(236, 'Сербия и Черногория', 'CS', 'SCG', '', 0, 1),
(237, 'Заир', 'ZR', 'ZAR', '', 0, 1),
(238, 'Замбия', 'ZM', 'ZMB', '', 0, 1),
(239, 'Зимбабве', 'ZW', 'ZWE', '', 0, 1),
(242, 'Черногория', 'ME', 'MNE', '', 0, 1),
(243, 'Сербия', 'RS', 'SRB', '', 0, 1),
(244, 'Аландские острова', 'AX', 'ALA', '', 0, 1),
(245, 'Бонайре, Синт-Эстатиус и Саба', 'BQ', 'BES', '', 0, 1),
(246, 'Кюрасао', 'CW', 'CUW', '', 0, 1),
(247, 'Палестинская территория, оккупированная', 'PS', 'PSE', '', 0, 1),
(248, 'Южный Судан', 'SS', 'SSD', '', 0, 1),
(249, 'Санкт-Бартелеми', 'BL', 'BLM', '', 0, 1),
(250, 'Санкт-Мартин (французская часть)', 'MF', 'MAF', '', 0, 1),
(251, 'Канарские Острова', 'IC', 'ICA', '', 0, 1),
(252, 'Остров Вознесения (Великобритания)', 'AC', 'ASC', '', 0, 1),
(253, 'Косово, Республика', 'XK', 'UNK', '', 0, 1),
(254, 'Остров Мэн', 'IM', 'IMN', '', 0, 1),
(255, 'Тристан-да-Кунья', 'TA', 'SHN', '', 0, 1),
(256, 'Остров Гернси', 'GG', 'GGY', '', 0, 1),
(257, 'Остров Джерси', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% скидка', '2222', 'P', '10.0000', 0, 0, '0.0000', '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Бесплатная доставка', '3333', 'P', '0.0000', 0, 1, '100.0000', '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 скидка', '1111', 'F', '10.0000', 0, 0, '10.0000', '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Рубль', 'RUB', '', ' р.', '2', 2.28760004, 1, '2017-07-17 12:46:55'),
(2, 'US Dollar', 'USD', '$', '', '2', 0.03860000, 1, '2017-07-17 12:46:55'),
(3, 'Euro', 'EUR', '', '€', '2', 0.03370000, 1, '2017-07-17 12:46:55'),
(4, 'Гривна', 'UAH', '', ' грн', '0', 1.00000000, 1, '2017-07-18 11:12:28');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(1, 1, 0, 'Alena', '', 'gee1508@mail.ru', '03698547125', '', '8479c7e0394c1a72f484273926388e4d7f111997', 'ded27a310', NULL, NULL, 1, 0, '', '127.0.0.1', 1, 1, 0, '', '2017-07-12 16:46:20'),
(2, 1, 0, 'frfrfrfr', '', 'frfrfrf@mail.ru', 'frfrfrfr', '', 'bcb10ea7fc555365b41075d9d53c9ef615fdded0', '376748386', NULL, NULL, 1, 0, '', '127.0.0.1', 1, 1, 0, '', '2017-07-12 16:49:48'),
(3, 1, 0, 'swswswswswsw', '', 'swswsw@mail.ru', 'uuuuuuuuuuuuuu', '', '8556b76f845c93d30a27b044b9b96ecd8a4cbe96', '39471de34', NULL, NULL, 1, 0, '', '127.0.0.1', 1, 1, 0, '', '2017-07-12 16:52:40');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 0, 'order_guest', '{"name":"qqq qqq","order_id":1}', '127.0.0.1', '2017-06-30 23:51:38'),
(2, 0, 'order_guest', '{"name":"Fyn jy qqq","order_id":2}', '127.0.0.1', '2017-07-02 13:08:40'),
(3, 0, 'order_guest', '{"name":"Fyn jy qqq","order_id":4}', '127.0.0.1', '2017-07-04 01:04:41'),
(4, 0, 'order_guest', '{"name":"Fyn jy qqq","order_id":5}', '127.0.0.1', '2017-07-04 15:10:32'),
(5, 0, 'order_guest', '{"name":"Fyn jy qqq","order_id":6}', '127.0.0.1', '2017-07-04 15:11:16'),
(6, 0, 'order_guest', '{"name":"Fyn jy qqq","order_id":7}', '127.0.0.1', '2017-07-04 15:20:08'),
(7, 0, 'order_guest', '{"name":"swswsws sswswswsw","order_id":9}', '127.0.0.1', '2017-07-10 15:45:55'),
(8, 1, 'register', '{"customer_id":"1","name":"Alena"}', '127.0.0.1', '2017-07-12 16:46:20'),
(9, 2, 'register', '{"customer_id":"2","name":"frfrfrfr"}', '127.0.0.1', '2017-07-12 16:49:48'),
(10, 3, 'register', '{"customer_id":"3","name":"swswswswswsw"}', '127.0.0.1', '2017-07-12 16:52:41'),
(11, 1, 'login', '{"customer_id":"1","name":"Alena "}', '127.0.0.1', '2017-07-13 00:19:16'),
(12, 1, 'login', '{"customer_id":"1","name":"Alena "}', '127.0.0.1', '2017-07-13 13:21:31'),
(13, 1, 'login', '{"customer_id":"1","name":"Alena "}', '127.0.0.1', '2017-07-13 23:26:12'),
(14, 1, 'login', '{"customer_id":"1","name":"Alena "}', '127.0.0.1', '2017-07-14 13:33:51'),
(15, 1, 'login', '{"customer_id":"1","name":"Alena "}', '127.0.0.1', '2017-07-14 13:37:43'),
(16, 1, 'login', '{"customer_id":"1","name":"Alena "}', '127.0.0.1', '2017-07-14 14:18:36'),
(17, 1, 'login', '{"customer_id":"1","name":"Alena "}', '127.0.0.1', '2017-07-14 14:21:56'),
(18, 1, 'login', '{"customer_id":"1","name":"Alena "}', '127.0.0.1', '2017-07-17 14:29:40'),
(19, 1, 'login', '{"customer_id":"1","name":"Alena "}', '127.0.0.1', '2017-07-17 14:43:11');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1),
(2, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(2, 1, 'uLogin', 'uLogin - группа, для зарегестрированных с помощью uLogin пользователей. Создана модулем uLogin.'),
(2, 2, 'uLogin', 'uLogin - группа, для зарегестрированных с помощью uLogin пользователей. Создана модулем uLogin.');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2017-07-12 16:46:26'),
(2, 2, '127.0.0.1', '2017-07-12 16:52:20'),
(3, 3, '127.0.0.1', '2017-07-12 16:52:45');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '127.0.0.1', 4, '2017-07-11 12:52:04', '2017-07-11 12:59:06');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_dqc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_dqc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_dqc_setting`
--

INSERT INTO `oc_dqc_setting` (`setting_id`, `store_id`, `name`, `value`) VALUES
(1, 0, '06/30/2017 11:42:45 pm', '{"name":"06\\/30\\/2017 11:42:45 pm","general":{"clear_session":"0","login_refresh":"0","analytics_event":"0","update_mini_cart":"1","compress":"1","min_order":{"value":"0","text":{"1":"You must have a sum more then %s to make an order ","2":"The minimum order is %s"}},"min_quantity":{"value":"0","text":{"1":"You must have a quantity more then %s to make an order ","2":"The minimum quantity is %s"}},"config":"d_quickcheckout"},"step":{"login":{"default_option":"guest","option":{"login":{"display":"1","title":{"1":"\\u041b\\u043e\\u0433\\u0438\\u043d","2":"Login"}},"register":{"display":"1","title":{"1":"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f","2":"Register"}},"guest":{"display":"1","title":{"1":"\\u0413\\u043e\\u0441\\u0442\\u044c","2":"Guest"}}},"icon":"fa fa-user","description":{"1":"","2":""},"column":"1","row":"0"},"payment_address":{"fields":{"firstname":{"sort_order":"0","value":"","mask":""},"lastname":{"sort_order":"1","value":"","mask":""},"email":{"sort_order":"2","value":"","mask":""},"email_confirm":{"sort_order":"3","value":"","mask":""},"telephone":{"sort_order":"4","value":"","mask":""},"fax":{"sort_order":"5","value":"","mask":""},"password":{"sort_order":"6"},"confirm":{"sort_order":"7"},"heading":{"sort_order":"8"},"company":{"sort_order":"9","value":"","mask":""},"customer_group_id":{"sort_order":"10"},"country_id":{"sort_order":"11","value":""},"zone_id":{"sort_order":"12","value":""},"address_1":{"sort_order":"13","value":"","mask":""},"address_2":{"sort_order":"14","value":"","mask":""},"city":{"sort_order":"15","value":"","mask":""},"postcode":{"sort_order":"16","value":"","mask":""},"newsletter":{"sort_order":"17","value":"0"},"shipping_address":{"sort_order":"18","value":"0"},"agree":{"sort_order":"19","value":"1"}},"icon":"fa fa-book","title":{"1":"\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u0435","2":"Payment Address"},"description":{"1":"","2":""},"column":"1","row":"1"},"shipping_address":{"fields":{"firstname":{"sort_order":"0","value":"","mask":""},"lastname":{"sort_order":"1","value":"","mask":""},"company":{"sort_order":"2","value":"","mask":""},"country_id":{"sort_order":"3","value":""},"zone_id":{"sort_order":"4","value":""},"address_1":{"sort_order":"5","value":"","mask":""},"address_2":{"sort_order":"6","value":"","mask":""},"city":{"sort_order":"7","value":"","mask":""},"postcode":{"sort_order":"8","value":"","mask":""}},"icon":"fa fa-book","title":{"1":"\\u0410\\u0434\\u0440\\u0435\\u0441 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438","2":"Shipping Address"},"description":{"1":"","2":""},"column":"1","row":"2"},"shipping_method":{"display":"1","display_options":"1","display_title":"1","input_style":"radio","default_option":"flat","icon":"fa fa-truck","title":{"1":"\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438","2":"Shipping method"},"description":{"1":"","2":"Please select the preferred shipping method to use on this order."},"column":"2","row":"0"},"payment_method":{"display":"1","display_options":"1","display_images":"1","input_style":"radio","default_option":"cod","icon":"fa fa-credit-card","title":{"1":"\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b","2":"Payment method"},"description":{"1":"","2":"Please select the preferred payment method to use on this order."},"column":"3","row":"0"},"payment":{"default_payment_popup":"0","payment_popups":{"cod":"1","free_checkout":"1"},"column":"4","row":"3"},"cart":{"icon":"fa fa-shopping-cart","title":{"1":"\\u041c\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437","2":"Shopping cart"},"description":{"1":"","2":""},"column":"4","row":"1"},"confirm":{"fields":{"comment":{"sort_order":"0"},"agree":{"sort_order":"1","value":"0"}},"column":"4","row":"2"}},"design":{"login_style":"popup","theme":"journal","block_style":"row","placeholder":"1","breadcrumb":"1","address_style":"radio","cart_image_size":{"width":"80","height":"80"},"max_width":"","bootstrap":"1","autocomplete":"1","only_quickcheckout":"0","column_width":{"1":"4","2":"4","3":"4","4":"8"},"custom_style":""},"account":{"guest":{"payment_address":{"display":"1","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"1","require":"1"},"email":{"display":"1","require":"1"},"email_confirm":{"display":"0","require":"0"},"telephone":{"display":"1","require":"0"},"fax":{"display":"0","require":"0"},"heading":{"display":"0"},"company":{"display":"0","require":"0"},"customer_group_id":{"display":"0","require":"0"},"country_id":{"display":"0","require":"0"},"zone_id":{"display":"0","require":"0"},"address_1":{"display":"0","require":"0"},"address_2":{"display":"0","require":"0"},"city":{"display":"0","require":"0"},"postcode":{"display":"0","require":"0"},"shipping_address":{"display":"0"},"agree":{"display":"0","require":"0"}}},"shipping_address":{"display":"1","require":"0","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"0","require":"0"},"company":{"display":"1","require":"0"},"country_id":{"display":"1","require":"1"},"zone_id":{"display":"1","require":"1"},"address_1":{"display":"1","require":"1"},"address_2":{"display":"0","require":"0"},"city":{"display":"1","require":"0"},"postcode":{"display":"1","require":"1"}}},"cart":{"display":"1","columns":{"image":"1","name":"1","model":"0","quantity":"1","price":"1","total":"1"},"option":{"coupon":{"display":"0"},"voucher":{"display":"0"},"reward":{"display":"0"}}},"confirm":{"fields":{"comment":{"display":"1","require":"0"},"agree":{"display":"0","require":"0"}}}},"register":{"payment_address":{"display":"1","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"1","require":"1"},"email":{"display":"1","require":"1"},"email_confirm":{"display":"0","require":"0"},"telephone":{"display":"1","require":"0"},"fax":{"display":"0","require":"0"},"password":{"display":"1","require":"1"},"confirm":{"display":"1","require":"1"},"heading":{"display":"0"},"company":{"display":"0","require":"0"},"customer_group_id":{"display":"0","require":"0"},"country_id":{"display":"0","require":"0"},"zone_id":{"display":"0","require":"0"},"address_1":{"display":"0","require":"0"},"address_2":{"display":"0","require":"0"},"city":{"display":"0","require":"0"},"postcode":{"display":"0","require":"0"},"newsletter":{"display":"0","require":"0"},"shipping_address":{"display":"0"},"agree":{"display":"0","require":"0"}}},"shipping_address":{"display":"1","require":"0","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"0","require":"0"},"company":{"display":"1","require":"0"},"country_id":{"display":"1","require":"1"},"zone_id":{"display":"1","require":"1"},"address_1":{"display":"1","require":"1"},"address_2":{"display":"0","require":"0"},"city":{"display":"1","require":"0"},"postcode":{"display":"1","require":"1"}}},"cart":{"display":"1","columns":{"image":"1","name":"1","model":"0","quantity":"1","price":"1","total":"1"},"option":{"coupon":{"display":"0"},"voucher":{"display":"0"},"reward":{"display":"0"}}},"confirm":{"fields":{"comment":{"display":"1","require":"0"},"agree":{"display":"0","require":"0"}}}},"logged":{"payment_address":{"display":"1","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"1","require":"1"},"company":{"display":"0","require":"0"},"country_id":{"display":"0","require":"0"},"zone_id":{"display":"0","require":"0"},"address_1":{"display":"0","require":"0"},"address_2":{"display":"0","require":"0"},"city":{"display":"0","require":"0"},"postcode":{"display":"0","require":"0"},"shipping_address":{"display":"0"}}},"shipping_address":{"display":"1","require":"0","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"0","require":"0"},"company":{"display":"1","require":"0"},"country_id":{"display":"1","require":"1"},"zone_id":{"display":"1","require":"1"},"address_1":{"display":"1","require":"1"},"address_2":{"display":"0","require":"0"},"city":{"display":"1","require":"1"},"postcode":{"display":"1","require":"1"}}},"cart":{"display":"1","columns":{"image":"1","name":"1","model":"0","quantity":"1","price":"1","total":"1"},"option":{"coupon":{"display":"0"},"voucher":{"display":"0"},"reward":{"display":"0"}}},"confirm":{"fields":{"comment":{"display":"1","require":"0"},"agree":{"display":"0","require":"0"}}}}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_dqc_statistic`
--

CREATE TABLE IF NOT EXISTS `oc_dqc_statistic` (
  `statistic_id` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `rating` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_dqc_statistic`
--

INSERT INTO `oc_dqc_statistic` (`statistic_id`, `setting_id`, `order_id`, `customer_id`, `data`, `rating`, `date_added`, `date_modified`) VALUES
(1, 1, 1, 0, '{"account":"guest","field":{"guest":{"payment_address":16,"shipping_address":7,"confirm":2},"register":{"payment_address":19,"shipping_address":7,"confirm":2},"logged":{"payment_address":9,"shipping_address":7,"confirm":2}},"update":{"confirm":2,"coupon":1,"shipping_address":1,"payment_address":2},"click":{"confirm":1}}', 1, '2017-06-30 23:46:01', '2017-06-30 23:51:37'),
(2, 1, 2, 0, '{"account":"guest","field":{"guest":{"payment_address":16,"shipping_address":7,"confirm":2},"register":{"payment_address":19,"shipping_address":7,"confirm":2},"logged":{"payment_address":9,"shipping_address":7,"confirm":2}},"click":{"confirm":1,"login":2,"cart":1},"update":{"payment_address":7}}', 1, '2017-07-01 00:06:02', '2017-07-02 13:08:36'),
(3, 1, 3, 0, '{"account":"guest","field":{"guest":{"payment_address":9,"shipping_address":7,"confirm":1},"register":{"payment_address":11,"shipping_address":7,"confirm":1},"logged":{"payment_address":6,"shipping_address":7,"confirm":1}},"update":{"payment_address":1},"click":{"cart":2}}', 0, '2017-07-01 00:46:51', '2017-07-01 01:05:16'),
(4, 1, 4, 0, '{"account":"guest","field":{"guest":{"payment_address":4,"shipping_address":7,"confirm":1},"register":{"payment_address":6,"shipping_address":7,"confirm":1},"logged":{"payment_address":2,"shipping_address":7,"confirm":1}},"click":{"confirm":1,"cart":4}}', 1, '2017-07-03 10:44:16', '2017-07-04 01:04:38'),
(5, 1, 5, 0, '{"account":"guest","field":{"guest":{"payment_address":4,"shipping_address":7,"confirm":1},"register":{"payment_address":6,"shipping_address":7,"confirm":1},"logged":{"payment_address":2,"shipping_address":7,"confirm":1}},"update":{"confirm":1},"click":{"confirm":1}}', 1, '2017-07-04 01:04:58', '2017-07-04 15:10:28'),
(6, 1, 6, 0, '{"account":"guest","field":{"guest":{"payment_address":4,"shipping_address":7,"confirm":1},"register":{"payment_address":6,"shipping_address":7,"confirm":1},"logged":{"payment_address":2,"shipping_address":7,"confirm":1}},"click":{"confirm":1}}', 1, '2017-07-04 15:11:11', '2017-07-04 15:11:15'),
(7, 1, 7, 0, '{"account":"guest","field":{"guest":{"payment_address":4,"shipping_address":7,"confirm":1},"register":{"payment_address":6,"shipping_address":7,"confirm":1},"logged":{"payment_address":2,"shipping_address":7,"confirm":1}},"update":{"confirm":1},"click":{"confirm":1}}', 1, '2017-07-04 15:19:59', '2017-07-04 15:20:07'),
(8, 1, 8, 0, '{"account":"guest","field":{"guest":{"payment_address":4,"shipping_address":7,"confirm":1},"register":{"payment_address":6,"shipping_address":7,"confirm":1},"logged":{"payment_address":2,"shipping_address":7,"confirm":1}}}', 0, '2017-07-04 21:12:41', '2017-07-04 21:12:41'),
(9, 1, 9, 0, '{"account":"guest","field":{"guest":{"payment_address":4,"shipping_address":7,"confirm":1},"register":{"payment_address":6,"shipping_address":7,"confirm":1},"logged":{"payment_address":2,"shipping_address":7,"confirm":1}},"update":{"shipping_address":5,"payment_address":4},"click":{"confirm":1}}', 0, '2017-07-10 15:45:02', '2017-07-10 15:45:51'),
(10, 1, 10, 0, '{"account":"guest","field":{"guest":{"payment_address":4,"shipping_address":7,"confirm":1},"register":{"payment_address":6,"shipping_address":7,"confirm":1},"logged":{"payment_address":2,"shipping_address":7,"confirm":1}},"click":{"login":2},"update":{"shipping_method":1}}', 0, '2017-07-11 12:12:01', '2017-07-11 23:12:32'),
(11, 1, 11, 0, '{"account":"guest","field":{"guest":{"payment_address":4,"shipping_address":7,"confirm":1},"register":{"payment_address":6,"shipping_address":7,"confirm":1},"logged":{"payment_address":2,"shipping_address":7,"confirm":1}},"click":{"login":2}}', 0, '2017-07-13 15:05:36', '2017-07-13 15:11:54'),
(12, 1, 12, 0, '{"account":"guest","field":{"guest":{"payment_address":4,"shipping_address":7,"confirm":1},"register":{"payment_address":6,"shipping_address":7,"confirm":1},"logged":{"payment_address":2,"shipping_address":7,"confirm":1}},"click":{"login":6}}', 0, '2017-07-14 14:51:21', '2017-07-14 16:24:08'),
(13, 1, 13, 0, '{"account":"guest","field":{"guest":{"payment_address":4,"shipping_address":7,"confirm":1},"register":{"payment_address":6,"shipping_address":7,"confirm":1},"logged":{"payment_address":2,"shipping_address":7,"confirm":1}}}', 0, '2017-07-17 17:04:33', '2017-07-17 17:04:33');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`) VALUES
(1, 'voucher', 'post.order.history.add', 'total/voucher/send');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(44, 'module', 'ulogin_sets'),
(21, 'module', 'posts'),
(22, 'module', 'videopublisher'),
(23, 'module', 'videopublisherwidget'),
(24, 'module', 'ocmodpcartset'),
(25, 'module', 'callback'),
(26, 'module', 'd_shopunity'),
(27, 'module', 'd_quickcheckout'),
(28, 'shipping', 'pickup'),
(29, 'payment', 'pp_standard'),
(30, 'shipping', 'weight'),
(31, 'module', 'bestseller'),
(34, 'module', 'ocfilter'),
(35, 'module', 'latest'),
(39, 'module', 'news'),
(43, 'module', 'ulogin');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `mf_tooltip` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'НДС', 'Облагаемые НДС', '2010-02-26 22:33:24', '2009-01-06 23:26:25');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 0),
(4, 1, 1, 1),
(5, 1, 4, 0),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', '', ''),
(5, 1, 'Условия соглашения', '&lt;p&gt;\r\n	Условия соглашения&lt;/p&gt;\r\n', '', '', '', ''),
(3, 1, 'Политика Безопасности', '&lt;p&gt;\r\n	Политика Безопасности&lt;/p&gt;\r\n', '', '', '', ''),
(6, 1, 'Оплата и доставка', '&lt;p&gt;\r\n	Информация о доставке&lt;/p&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.', '', '', '', ''),
(4, 1, 'О магазине', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.&lt;br&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.&lt;br&gt;&lt;br&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.&lt;br&gt;&lt;br&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum est ex nobis repudiandae. Aliquid architecto asperiores deserunt dolore eveniet illo maiores nam nisi, non officia quaerat qui rerum veniam veritatis.&lt;br&gt;', '', '', '', ''),
(4, 2, 'About Shop', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', '', ''),
(6, 2, 'Payment and delivery', '&lt;p&gt;\r\n	Delivery and Payment Information&lt;/p&gt;\r\n', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(6, 0, 0),
(3, 0, 0),
(5, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'Russian', 'ru', 'ru_RU.UTF-8,ru_RU,russian', 'ru.png', 'russian', 1, 1),
(2, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Главная'),
(2, 'Продукт'),
(3, 'Категория'),
(4, 'По умолчанию'),
(5, 'Производитель'),
(6, 'Аккаунт'),
(7, 'Оформление заказ'),
(8, 'Контакты'),
(9, 'Карта сайта'),
(10, 'Партнерская программа'),
(11, 'Информация'),
(12, 'Сравнение'),
(13, 'Поиск'),
(15, 'Manufacturer info'),
(17, 'Новые поступления');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(194, 17, 'latest.33', 'content_top', 0),
(221, 1, 'videopublisherwidget.32', 'content_top', 3),
(163, 2, 'featured.28', 'content_bottom', 0),
(159, 3, 'category', 'column_left', 1),
(222, 1, 'news.41', 'content_bottom', 0),
(220, 1, 'latest.33', 'content_top', 1),
(158, 3, 'ocfilter', 'column_left', 2),
(219, 1, 'bestseller.34', 'content_top', 2),
(218, 1, 'slideshow.36', 'content_top', 0),
(217, 1, 'carousel.29', 'content_bottom', 1),
(205, 6, 'account', 'column_right', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(90, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(75, 3, 0, 'product/category'),
(93, 1, 0, 'common/home'),
(77, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(57, 15, 0, 'product/manufacturer/info'),
(87, 17, 0, 'latest/latest');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00'),
(2, '10.00'),
(3, '0.39');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Сантиметр', 'см'),
(2, 1, 'Миллиметр', 'мм'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_description`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_description` (
  `manufacturer_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer_description`
--

INSERT INTO `oc_manufacturer_description` (`manufacturer_id`, `language_id`, `name`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
(5, 1, 'HTC', '', 'HTC', '', '', ''),
(5, 2, 'HTC', '', 'HTC', '', '', ''),
(6, 1, 'Palm', '', 'Palm', '', '', ''),
(6, 2, 'Palm', '', 'Palm', '', '', ''),
(7, 1, 'Hewlett-Packard', '', 'Hewlett-Packard', '', '', ''),
(7, 2, 'Hewlett-Packard', '', 'Hewlett-Packard', '', '', ''),
(8, 1, 'Apple', '', 'Apple', '', '', ''),
(8, 2, 'Apple', '', 'Apple', '', '', ''),
(9, 1, 'Canon', 'Пример текста в описания производителя', 'Canon', '', '', ''),
(9, 2, 'Canon', 'Example of manufacturer description text', 'Canon', '', '', ''),
(10, 1, 'Sony', '', 'Sony', '', '', ''),
(10, 2, 'Sony', '', 'Sony', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_mfilter_settings`
--

CREATE TABLE IF NOT EXISTS `oc_mfilter_settings` (
  `idx` int(11) unsigned NOT NULL,
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `oc_mfilter_settings`
--

INSERT INTO `oc_mfilter_settings` (`idx`, `settings`) VALUES
(1, '{"title":{"1":"Mega Filter PRO","2":"Mega Filter PRO"},"layout_id":["3"],"store_id":[0],"position":"column_left","status":"1","sort_order":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_mfilter_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_mfilter_url_alias` (
  `mfilter_url_alias_id` int(11) unsigned NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `mfp` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `h1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(2, 'Local copy OCMOD by iSenseLabs', 'isensealabs_quickfix_ocmod', 'iSenseLabs', '1.3', 'http://isenselabs.com', '<modification>\r\n    <name>Local copy OCMOD by iSenseLabs</name>\r\n	<version>1.3</version>\r\n	<link>http://isenselabs.com</link>\r\n	<author>iSenseLabs</author>\r\n	<code>isensealabs_quickfix_ocmod</code>\r\n\r\n	<file path="admin/controller/extension/installer.php">\r\n		<operation error="skip">\r\n			<search ><![CDATA[''url''  => str_replace(''&amp;'', ''&'', $this->url->link(''extension/installer/ftp'', ''token='' . $this->session->data[''token''],]]></search>\r\n			<add position="replace"><![CDATA[''url''  => str_replace(''&amp;'', ''&'', $this->url->link(''extension/installer/localcopy'', ''token='' . $this->session->data[''token''],]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[public function unzip() {]]></search>\r\n			<add position="before"><![CDATA[			\r\n	public function localcopy() {\r\n		$this->load->language(''extension/installer'');\r\n\r\n		$json = array();\r\n\r\n		if (!$this->user->hasPermission(''modify'', ''extension/installer'')) {\r\n			$json[''error''] = $this->language->get(''error_permission'');\r\n		}\r\n\r\n		if (VERSION == ''2.0.0.0'') {\r\n		    $directory = DIR_DOWNLOAD  . str_replace(array(''../'', ''..\\\\'', ''..''), '''', $this->request->post[''path'']) . ''/upload/'';\r\n		} else {\r\n		    $directory = DIR_UPLOAD  . str_replace(array(''../'', ''..\\\\'', ''..''), '''', $this->request->post[''path'']) . ''/upload/'';\r\n		}\r\n\r\n		if (!is_dir($directory)) {\r\n			$json[''error''] = $this->language->get(''error_directory'');\r\n		}\r\n\r\n		if (!$json) {\r\n			// Get a list of files ready to upload\r\n			$files = array();\r\n\r\n			$path = array($directory . ''*'');\r\n\r\n			while (count($path) != 0) {\r\n				$next = array_shift($path);\r\n\r\n				foreach (glob($next) as $file) {\r\n					if (is_dir($file)) {\r\n						$path[] = $file . ''/*'';\r\n					}\r\n\r\n					$files[] = $file;\r\n				}\r\n			}\r\n\r\n			$root = dirname(DIR_APPLICATION).''/'';\r\n\r\n			foreach ($files as $file) {\r\n				// Upload everything in the upload directory\r\n				$destination = substr($file, strlen($directory));\r\n\r\n				// Update from newer OpenCart versions:\r\n				if (substr($destination, 0, 5) == ''admin'') {\r\n					$destination = DIR_APPLICATION . substr($destination, 5);\r\n				} else if (substr($destination, 0, 7) == ''catalog'') {\r\n					$destination = DIR_CATALOG . substr($destination, 7);\r\n				} else if (substr($destination, 0, 5) == ''image'') {\r\n					$destination = DIR_IMAGE . substr($destination, 5);\r\n				} else if (substr($destination, 0, 6) == ''system'') {\r\n					$destination = DIR_SYSTEM . substr($destination, 6);\r\n				} else {\r\n					$destination = $root.$destination;\r\n				}\r\n\r\n				if (is_dir($file)) {\r\n					if (!file_exists($destination)) {\r\n						if (!mkdir($destination)) {\r\n							$json[''error''] = sprintf($this->language->get(''error_ftp_directory''), $destination);\r\n						}\r\n					}\r\n				}\r\n\r\n				if (is_file($file)) {\r\n					if (!copy($file, $destination)) {\r\n						$json[''error''] = sprintf($this->language->get(''error_ftp_file''), $file);\r\n					}\r\n				}\r\n			}\r\n		}\r\n\r\n		$this->response->addHeader(''Content-Type: application/json'');\r\n		$this->response->setOutput(json_encode($json));\r\n	}]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>\r\n', 1, '2017-06-30 01:42:26'),
(4, 'VideoPublisher by iSenseLabs', 'videopublisher', 'iSenseLabs', '2.0.2', 'http://isenselabs.com', '<modification>\r\n	<name>VideoPublisher by iSenseLabs</name>\r\n	<version>2.0.2</version>\r\n	<link>http://isenselabs.com</link>\r\n	<author>iSenseLabs</author>\r\n	<code>videopublisher</code>\r\n\r\n	<file path="admin/controller/common/filemanager.php">\r\n		<operation>\r\n			<search><![CDATA[if (!in_array($this->request->files[''file''][''type''], $allowed)) {]]></search>\r\n			<add position="before"><![CDATA[					$allowed = array_merge($allowed, array(''video/mp4'', //VideoPublisher\r\n					''video/webm'', //VideoPublisher\r\n					''video/ogg'', //VideoPublisher\r\n					''video/3gp'', //VideoPublisher\r\n				));]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[if (!in_array(utf8_strtolower(utf8_substr(strrchr($filename, ''.''), 1)), $allowed)) {]]></search>\r\n			<add position="before"><![CDATA[					$allowed = array_merge($allowed, array(''mp4'', //VideoPublisher\r\n					''webm'', //VideoPublisher\r\n					''ogv'', //VideoPublisher\r\n					''3gp'', //VideoPublisher\r\n				));]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$files = glob($directory . ''/'' . $filter_name . ''*.{jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF}'', GLOB_BRACE);]]></search>\r\n			<add position="replace"><![CDATA[$files = glob($directory . ''/'' . $filter_name . ''*.{jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF,mp4,webm,ogv,3gp,MP4,WEBM,OGV,3GP}'', GLOB_BRACE);\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="admin/view/template/common/filemanager.tpl">\r\n		<operation>\r\n			<search><![CDATA[url: ''index.php?route=common/filemanager/folder&token=<?php echo $token; ?>&directory=<?php echo $directory; ?>'',]]></search>\r\n			<add position="replace"><![CDATA[url: ''index.php?route=common/filemanager/folder&token=<?php echo $token; ?>&directory=<?php echo $directory; ?><?php echo !empty($_GET[''browse_videos'']) ? ''&browse_videos=true'' : '''';?>'',]]></add>\r\n		</operation>\r\n		<operation error="skip">\r\n			<search><![CDATA[<img src="<?php echo $image[''thumb'']; ?>"]]></search>\r\n			<add position="replace"><![CDATA[<img src="<?php echo (strpos($image[''name''], ''.mp4'') !== false || strpos($image[''name''], ''.webm'') !== false || strpos($image[''name''], ''.ogv'') !== false || strpos($image[''name''], ''.3gp'') !== false || strpos($image[''name''], ''.MP4'') !== false || strpos($image[''name''], ''.WEBM'') !== false || strpos($image[''name''], ''.OGV'') !== false || strpos($image[''name''], ''.3GP'') !== false) ?  ''data:text/javascript;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAQAAAC0NkA6AAAAAXNSR0IArs4c6QAAAAlwSFlzAAALEwAACxMBAJqcGAAAAAd0SU1FB9gEFwIZNLPHdMcAAAiRSURBVFjDlZjbb1TXFcZ/65wzN4MntgPGN8DYBWJjMGCDElUUSoKKFPWiSolUKc/kT6DPfUqlSFEfqjapWvWhDxEobaSoaSJEoyg31eCkKQ25NDaBEBMb3z3Xc87eqw9nzzBjmzSdkazjM3vvb69vr/WttbYo3/SxCJCMUTwsAB61WeLeyoaZyTzFQwnuD6BuKCiGiGjAnIvPxwgCBJOZ8RQBAYo0jF2/AoDoN0JYIsoDlamQEAMYYiwWgyD4ZHmAvGTwAW2CSYATSzYFUUdVmaJWibBYKixRoEBEihwpMqRQIpQWOtjxdOsLXrLgJnTdB8QSsrZYbY9RvmCSG8xhCfDx8LAYUmxlD7tow6Ck2EmftBBg8L4NiEUpUdAYyzu8wRx5uuliB3lypPEIqbLMHF+xSIoxHkSBrQzRLf7/tkQRqqxerY5V+JwXWWKA/QzTQ9vFzJMZxPmWJaLyzMr5O3zKBxhGacWSYoi9kv0mEEWwhCxpSJW/8A69jHGYneQlgyBonXMBLBBSOnfz+WtcYRt9KD4PcUQyqBufOEAdJPGFkCUtUeb33OQwJziw1NHhJwPdzppBkvNZvjo9dpkF9mKBQ4xJzsWOG20byIpY0CIlnqPKSU6yW7JuKb2PJcmzIWZG3+Aau7CkGOdoA2lNIJaFxZX2iF+xxhm+T48EKHc0okO24LvlvCY3r1EiRCzqZd6nE4vHDxgS322uKeJXHyu0G/7ICmc5TY94CBFLLDGvD9IlGbczQTeRnYBt8qgartEK/J127ZUkGKlvjApLlyLe5HNOcYpe8d2CFihwg490RuMGGzw8PBc3giB4PChn2EuBMrd5jyLWLe8pFjAsa5lZXuMwJ+gRqbtCTEhImVmu8y+dXzSb6JTUZWibPEYrBmWC/2htrCfOjmU8/kon32WPpOpTxSmVIaTIDSbaP9IiBt3wTWb4dMkpIiJKTLD2TPKbJwiWZVVmuM5RRsg53msKFhFjMViUVf7NZZ3SUv339RZlGfrlfhTLB9w4T40uocoKIW/TzyjtQqPzJSKPQQkJiaiywHu8pV9q3ESa1mls+/k4ik+Ja5TQBEQpXi1T5jP2shu/SayTTFIhJCImIiakSpHP+Bvv6NyiwTSJfAI0ONhFBcN1FlWSM7EUxyy38RimXe45aC0fxlgiIkIMhpiYEEuRK7zUflVLmHqw1uBapkexwA2+Jk7iJGYN4Uu20U2wIb/FWBTrfLDmBoYYZZZLXNfjDErWLZ9s0Wc/EYYV7hDh40FMmZgZOtmG36g4ABhCR1JITBVDTEiEoYKhxCe8yJ/1tsaAqRPdLS2EGGaonANPqVwICSnQSVZY5zPiCDIYR1jsLAkxRCiWAhP8htd1VgV1Z5ShgxjDAuXnIRDCJwwRljypdQVAUkLUsnqNqti5c+1djKHMK0zymB6WliT8aAOEJUoogRISUUbJNYBIQyK2RNh1YJbYvU2ehYgveIEhPcuwBAgthESUiIBA3QI+6YZqKol1BSyVhp0nVpj619b/VwzLTGPp0ESWImKXHAJBiZ1Seg1W1ABrC4N1tlgiB1sDsihrzJHlAH0uRYfELuMogeITEZGmSuy8q/FzbyHj5IW6HersiLgNDHKYYwwttXf4KMsoITmChK4UlpgMJWKyaF2g7wlk7KIlrp+BrUNHLLDCTkYY5yBdknbqfYeYiFZSCV3pyXjMkGOJeIDpe1FSE8jQOTH1U4gdxRGrzNPGIxxjnF5pwXNitHruLgYhTxoIhNx4Sku0cZfiVF7EldPNZ5JoVOxOJXZ55ivSHOQI4+wb3DrtOYXwsdx8foGYLB20ikcgpNnKXdKssEBXU3JNQKoNrhs5camwQJk9HOI4Q3RIql52+ygwQZWQPnrIAQF4dPExSoab7CXXUCzgdm/cedSUbJ4VOjnOw4zQJ6m6FNVKp8LA24TE9LEdSc5Y6L7oY8jzCQvaDJGocOTEpYJlhSmEY/yUpzgl/ZLaJBF/MPUJhiz9dOMhCcjWJ3fVF4iacgPOo5K/EbdYYZjH+Rk/fHqftDb2IHWgEhcoELKLYR4QqdGVYpgPifG4yoD2iOf6J4u4/GFQZinTxyGOMcJ28V2HJQ1leuJZb+q7gM8w+8glDVOSbjplSCfxmeUKZ9gCKD4eEUqEZYl5ehjjEQ7RLTnHvbeh6bF8pc9RocQxjtLvdhAkg7cwzodUUK7Sq6OSqZdtMSvcpYXjjHOEfmndtHGrEbz6zLPcpsp2Rhh1dpBoF0C3nNaL+JR5jbx+RwKSimyFiP2M8AiDSx0d3rpU0FhPehT47fnXiQkY5XvsFN9tNagNCRg9c+vSZXLc5k88pf2SBuBH7KaXA2yXYF3Xu74BLPJr/QMQc5STjE7mXJWstYI7ifEZfYl/kCNmB0+xX1JAkcrilo7cOrFZD2BZ0Gd5GUOZo5zhx/TVC11truotN/UiV8ii5Hmc05J1u9kMorGuua6/YBJLyAiPcpYhuVctaHN/AoZbepG3nOSP8xP2SJakyhRqVXpzjzynF/gdRWJ8DnKSszwkfr2f8RpBap2U4aZe4lUKZLG0cpRH2e/kzzhlqo2u8qW+ysvcAEIeYJQTnKFfUngNvcsGSyw+MbP6Hq8wjQ/EZOnlIAfop52cgEf1QuGJKT5kgo9Zc1XLIEOc5mF6xa9fHWywpJnjAh/ru1zmrmvmIgweadJ4GAoUXP6OUDx2MMo+TrDPObms737tfQIrZE4/ZYJ/cos1533itExdlvFopZvd7OUIQ/RIuiFMm649bN002SARVeZ1mk/5nK+ZoUDVQQSkyZFnBzvYzRC76ZZMTdQ3vyyoPTZCJd6kQER5YH7qLgssskrJXXJkyNNGJ120TubHA3cl1VizfSu6moMtKVOrF6InknyTmkw9mZn2Sd0nQP9vEFzPLg315b3rA/kWIP8FoleqY+oxOe0AAAAASUVORK5CYII='': $image[''thumb''] ; ?>"]]></add>\r\n		</operation>\r\n	</file>\r\n  <file path="catalog/controller/product/product.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''points''] = $product_info[''points''];]]></search>\r\n			<add position="after"><![CDATA[\r\n			$this->load->model(''module/videopublisher'');\r\n\r\n			if ($this->model_module_videopublisher->isModuleInstalled()) {\r\n\r\n			 	$this->document->addScript(''catalog/view/javascript/videopublisher/colorbox/jquery.colorbox-min.js'');\r\n            	$this->document->addStyle(''catalog/view/javascript/videopublisher/colorbox/colorbox.css'');\r\n\r\n				$data[''pvr_settings''] = $this->config->get(''videopublisher'');\r\n\r\n				$pvr_ssl = ((int)$_SERVER[''SERVER_PORT''] == 443) ? ''SSL'' : ''NONSSL'';\r\n				$data[''pvr_ssl''] = $pvr_ssl;\r\n				if (!empty($data[''pvr_settings''][''related_reviews_tab''])) {\r\n					if (empty($data[''pvr_settings''][''use_colorbox''])) {\r\n						$data[''separateReviewBaseUrl''] = $this->url->link(''videopublisher/view'', ''pvr_id='', $pvr_ssl);\r\n					} else {\r\n						$data[''separateReviewBaseUrl''] = $this->url->link(''videopublisher/view/separate'', ''pvr_id='', $pvr_ssl);\r\n					}\r\n\r\n\r\n					$this->document->addStyle(''catalog/view/theme/default/stylesheet/videopublisher.css'');\r\n					$this->load->model(''module/videopublisher'');\r\n					$this->language->load(''module/videopublisher'');\r\n					$data[''tab_videoreviews''] = !empty($this->data[''pvr_settings''][''related_tab_title''][$this->config->get(''config_language_id'')]) ? $data[''pvr_settings''][''related_tab_title''][$this->config->get(''config_language_id'')] : ''Related Videos'';\r\n					$data[''button_read_more''] = $this->language->get(''button_read_more'');\r\n					$data[''related_videoreviews''] = !empty($this->request->get[''product_id'']) ? $this->model_module_videopublisher->getRelatedVideos($this->request->get[''product_id''], $this->config->get(''config_language_id''), $this->config->get(''config_store_id''), $this->data[''pvr_settings''][''widget_limit''], true, empty($this->data[''pvr_settings''][''show_future_reviews''])) : array();\r\n					\r\n					$data[''template''] = $this->config->get(''config_template'');\r\n					$data[''template''] = !empty($this->data[''template'']) ? $this->data[''template''] : ''default'';\r\n				}\r\n			}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/controller/common/header.php">\r\n		<operation>\r\n			<search><![CDATA[public function index() {]]></search>\r\n			<add position="after"><![CDATA[\r\n			$pvr_settings = $this->config->get(''videopublisher_settings'');\r\n			if (!empty($pvr_settings[''fb_comments''])) {\r\n				if (!empty($pvr_settings[''fb_comments_appid''])) {\r\n					$data[''pvr_fb_comments_appid''] = $pvr_settings[''fb_comments_appid''];\r\n				} else if ($pvr_settings[''fb_comments_admins'']) {\r\n					$data[''pvr_fb_comments_admins''] = $pvr_settings[''fb_comments_admins''];\r\n				}\r\n			}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/controller/common/seo_url.php">\r\n		<operation>\r\n			<search><![CDATA[$parts = explode(''/'', $this->request->get[''_route_'']);]]></search>\r\n			<add position="after"><![CDATA[\r\n			$parts = array_filter($parts);\r\n			if (count($parts) == 1 && $parts[0] == ''video-reviews'') {\r\n				$this->request->get[''route''] = ''videopublisher/index'';\r\n				return $this->forward($this->request->get[''route'']);\r\n			}\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[$this->request->get[''route''] = ''error/not_found'';]]></search>\r\n			<add position="replace"><![CDATA[\r\n				$pvr = $this->db->query("SELECT pvr_id from " . DB_PREFIX . "pvr_description WHERE slug=''" . $this->db->escape($part) . "'' AND language_id=''" . $this->config->get(''config_language_id'') . "'' LIMIT 1");\r\n				if (!empty($pvr->row[''pvr_id''])) {\r\n					$this->request->get[''pvr_id''] = $pvr->row[''pvr_id''];\r\n				} else {\r\n					$this->request->get[''route''] = ''error/not_found'';\r\n				}\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search position="replace"><![CDATA[$this->request->get[''route''] = ''information/information'';]]></search>\r\n			<add><![CDATA[$this->request->get[''route''] = ''information/information'';\r\n			} elseif (isset($this->request->get[''pvr_id''])) {\r\n				$this->request->get[''route''] = ''videopublisher/view'';\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation error="skip">\r\n			<search><![CDATA[parse_str($url_data[''query''], $data);]]></search>\r\n			<add position="after"><![CDATA[\r\n		if (isset($data[''route'']) && $data[''route''] == ''videopublisher/index'') {\r\n			$url .= ''/video-reviews'';\r\n		}\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation error="skip">\r\n			<search><![CDATA[parse_str($url_info[''query''], $dsata);]]></search>\r\n			<add position="after"><![CDATA[\r\n		if (isset($data[''route'']) && $data[''route''] == ''videopublisher/index'') {\r\n			$url .= ''/video-reviews'';\r\n		}\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[if (isset($data[''route''])) {]]></search>\r\n			<add position="before"><![CDATA[			if ($data[''route''] == ''videopublisher/view'' && $key == ''pvr_id'') {\r\n				$pvr = $this->db->query("SELECT slug FROM " . DB_PREFIX . "pvr_description WHERE pvr_id=''" . $this->db->escape($data[''pvr_id'']) . "'' AND language_id=''" . $this->config->get(''config_language_id'') . "''");\r\n				\r\n				if ($pvr->num_rows) {\r\n					$url .= ''/video-reviews/'' . $pvr->row[''slug''];\r\n					unset($data[$key]);\r\n					continue;\r\n				}\r\n			}]]></add>\r\n		</operation>\r\n	</file>\r\n  \r\n  <file path="catalog/view/theme/*/template/common/header.tpl">\r\n		<operation>\r\n			<search><![CDATA[<?php if ($description) { ?>]]></search>\r\n			<add position="before"><![CDATA[\r\n			<?php if(!empty($pvr_fb_comments_appid)) { ?>\r\n				<meta property="fb:app_id" content="<?php echo $pvr_fb_comments_appid; ?>"/>\r\n			<?php } else if(!empty($pvr_fb_comments_admins)) { ?>\r\n				<meta property="fb:admins" content="<?php echo $pvr_fb_comments_admins; ?>"/>\r\n			<?php } ?>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	  \r\n	<file path="catalog/view/theme/*/template/product/product.tpl">\r\n		<operation>\r\n			<search><![CDATA[<li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>]]></search>\r\n			<add position="after"><![CDATA[\r\n			<?php } ?>\r\n			<?php if (!empty($related_videoreviews)) { ?>\r\n			<li><a href="#tab-videopublisher" data-toggle="tab"><?php echo $tab_videoreviews; ?> (<?php echo count($related_videoreviews); ?>)</a></li>\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[<div class="tab-pane" id="tab-review">]]></search>\r\n			<add position="before"><![CDATA[\r\n			<?php } ?>			\r\n			<?php if (!empty($related_videoreviews)) { ?>\r\n			<div id="tab-videopublisher" class="tab-pane">\r\n				<div class="pvr-list">\r\n					<?php foreach ($related_videoreviews as $review) { ?>\r\n					<?php $reviewText = str_replace(''&nbsp;'', '' '', strip_tags(htmlspecialchars_decode($review[''text''], ENT_QUOTES))); ?>\r\n					<?php if (empty($pvr_settings[''use_collections''])){\r\n							$reviewLink = ''onClick="cboxPVR(''.$review[''pvr_id''].'');"'';\r\n						} else {\r\n							$reviewLink = ''href="'' . $separateReviewBaseUrl . $review[''pvr_id''] . ''" data-pvr-id="''.$review[''pvr_id''].''"'';\r\n						}\r\n					?>\r\n					<div class="pvr-video-item">\r\n							<div class="left">\r\n								<div class="image">\r\n									<a class="pvr-video-related" rel="pvr-product-video-collection" <?php echo $reviewLink; ?> title="<?php echo $review[''title'']; ?>" alt="<?php echo $review[''title'']; ?>">\r\n										<img title="<?php echo $review[''title'']; ?>" alt="<?php echo $review[''title'']; ?>"  src="<?php echo $review[''image_link'']; ?>" />\r\n									</a>\r\n									<div class="overlay" onClick="ieCompatibility(<?php echo $review[''pvr_id'']; ?>);"></div>\r\n								</div>\r\n							</div>\r\n							<div class="right">\r\n								<div class="pvr-review">\r\n									<div class="review">\r\n										<h2><?php echo $review[''title'']; ?></h2>\r\n								 		<?php if (!empty($review[''display_rating''])) { ?>\r\n                                			<div class="pvr-rating rating">                \r\n                                      			<?php for ($i = 1; $i <= 5; $i++) { ?>\r\n                                      				<?php if ($review[''rating''] < $i) { ?>\r\n                                      					<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>\r\n                                      				<?php } else { ?>\r\n                                      					<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>\r\n                                      				<?php } ?>\r\n                                     	 		<?php } ?>\r\n                                   			</div>\r\n                                		<?php } ?>\r\n										<div class="mainProductReviewInfo">\r\n											<?php if(!empty($review[''author''])) { ?>\r\n											<span class="pvr-author">by <strong><?php echo $review[''author'']; ?></strong></span>\r\n											<?php } ?>\r\n											<?php if(!empty($review[''date'']) &&  $review[''date''] != ''0000-00-00'') { ?>\r\n											<span class="pvr-date">on <strong><?php echo date(''d M Y'', strtotime($review[''date''])); ?></strong></span>\r\n											<?php } ?>\r\n										</div>\r\n										<div class="pvr-text"><?php echo (mb_strlen($reviewText) > 400) ? mb_substr($reviewText, 0, 400, ''UTF-8'') . ''...'' : $reviewText; ?></div>\r\n										<a <?php echo $reviewLink; ?> class="button videoReviewMoreBtn" rel="pvr-product-button-collection"><?php echo $button_read_more; ?></a>\r\n                            			<div class="clearfix"></div>\r\n									</div>\r\n								</div>\r\n							</div>\r\n					</div>\r\n					<?php } ?>\r\n				</div>\r\n			</div>\r\n			<script type="text/javascript"><!--\r\n			<?php if(!empty($pvr_settings[''use_colorbox''])) { ?>\r\n				<?php if(empty($pvr_settings[''use_collections''])) { ?>\r\n				function cboxPVR(pvr_id) {\r\n					var pvrLink = ''<?php echo html_entity_decode($separateReviewBaseUrl); ?>'';\r\n					$.colorbox({\r\n						href: pvrLink + pvr_id,\r\n						width: ''<?php echo !empty($pvr_settings[''colorbox_width'']) ? $pvr_settings[''colorbox_width''] : ''700px'';?>'',\r\n						reposition: false,\r\n						onOpen: function() {\r\n							$(''#cboxOverlay'').addClass(''pvr-popupOverlay'');\r\n							$(''#colorbox'').addClass(''pvr-popup'');\r\n							$(''#colorbox'').append($(''#cboxClose'').detach());\r\n						},\r\n						onClosed: function() {\r\n							$(''#cboxOverlay'').removeClass(''pvr-popupOverlay'');\r\n							$(''#colorbox'').removeClass(''pvr-popup'');\r\n							$(''#cboxContent'').append($(''#cboxClose'').detach());\r\n						},\r\n						onComplete: function() {\r\n							var elements = document.getElementsByClassName(''pvr-iframe'').length ? document.getElementsByClassName(''pvr-iframe'') : document.getElementsByClassName(''pvr-html5'');\r\n							var computedWidth = document.defaultView.getComputedStyle(elements[0]).width.match(/^(\\d+)\\w+/)[1];\r\n							var targetHeight = parseInt(computedWidth) * (9/16);\r\n							elements[0].style.height = parseInt(targetHeight) + ''px'';\r\n							<?php if(!empty($pvr_settings[''fb_comments''])) { ?>\r\n							FB.XFBML.parse(document.getElementById(''cboxLoadedContent''), function(){\r\n								$.colorbox.resize();\r\n							});\r\n							<?php } else { ?>\r\n							$.colorbox.resize();\r\n							<?php } ?>\r\n						}\r\n					});\r\n				}\r\n				<?php } else { ?>\r\n				$(document).ready(function(){\r\n					$(''a.pvr-video-related, a.videoReviewMoreBtn'').colorbox({\r\n						width: ''<?php echo !empty($pvr_settings[''colorbox_width'']) ? $pvr_settings[''colorbox_width''] : ''700px'';?>'',\r\n						reposition: false,\r\n						current: false,\r\n						onOpen: function() {\r\n							$(''#cboxOverlay'').addClass(''pvr-popupOverlay'');\r\n							$(''#colorbox'').addClass(''pvr-popup'');\r\n							$(''#colorbox'').append($(''#cboxClose'').detach());\r\n							$(''#colorbox'').append($(''#cboxNext'').detach());\r\n							$(''#colorbox'').append($(''#cboxPrevious'').detach());\r\n						},\r\n						onClosed: function() {\r\n							$(''#cboxOverlay'').removeClass(''pvr-popupOverlay'');\r\n							$(''#colorbox'').removeClass(''pvr-popup'');\r\n							$(''#cboxContent'').append($(''#cboxClose'').detach());\r\n							$(''#cboxContent'').append($(''#cboxNext'').detach());\r\n							$(''#cboxContent'').append($(''#cboxPrevious'').detach());\r\n						},\r\n						onComplete: function() {\r\n							var elements = document.getElementsByClassName(''pvr-iframe'').length ? document.getElementsByClassName(''pvr-iframe'') : document.getElementsByClassName(''pvr-html5'');\r\n							var computedWidth = document.defaultView.getComputedStyle(elements[0]).width.match(/^(\\d+)\\w+/)[1];\r\n							var targetHeight = parseInt(computedWidth) * (9/16);\r\n							elements[0].style.height = parseInt(targetHeight) + ''px'';\r\n							<?php if(!empty($pvr_settings[''fb_comments''])) { ?>\r\n							FB.XFBML.parse(document.getElementById(''cboxLoadedContent''), function(){\r\n								$.colorbox.resize();\r\n							});\r\n							<?php } else { ?>\r\n							$.colorbox.resize();\r\n							<?php } ?>\r\n						}\r\n					});\r\n				});\r\n				<?php } ?>\r\n			<?php } ?>\r\n			\r\n			<?php if(!empty($pvr_settings[''fb_comments''])) { ?>\r\n			$(document).ready(function() {\r\n				if (typeof FB == ''undefined'') {\r\n					$(''#pvr-fb-comments'').append(''<div id="fb-root"></div>'');\r\n					(function(d, s, id) {\r\n					  var js, fjs = d.getElementsByTagName(s)[0];\r\n					  if (d.getElementById(id)) return;\r\n					  js = d.createElement(s); js.id = id;\r\n					  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";\r\n					  fjs.parentNode.insertBefore(js, fjs);\r\n					}(document, ''script'', ''facebook-jssdk''));\r\n				}\r\n			});\r\n			<?php } ?>\r\n			\r\n			function ieCompatibility (pvr_id) {\r\n				if (navigator.appName == ''Microsoft Internet Explorer'') {\r\n					<?php if (empty($pvr_settings[''use_colorbox''])) { ?>\r\n						document.location = $(''a[data-pvr-id="''+pvr_id+''"]'').first().attr(''href'');\r\n					<?php } else { ?>\r\n						<?php if (empty($pvr_settings[''use_collections''])) { ?>\r\n							cboxPVR(pvr_id);\r\n						<? } else { ?>\r\n							$(''a[data-pvr-id="''+pvr_id+''"]'').first().click();\r\n						<?php } ?>\r\n					<?php } ?>\r\n				}\r\n			}\r\n			//--></script>\r\n			<?php if(!empty($pvr_settings[''fb_comments''])) { ?>\r\n			<style>\r\n			#cboxLoadedContent div.fb-comments {\r\n				width: 100%;\r\n			}\r\n			</style>\r\n			<?php } ?>\r\n			<?php } ?>\r\n			<?php if ($review_status) { ?>\r\n			]]></add>\r\n		</operation>\r\n <!-- Journal 2 Compatibility -->     \r\n      <operation>\r\n			<search><![CDATA[<li <?php if ($is_active) { echo ''class="active"''; $is_active = false; } ;?>><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>]]></search>\r\n			<add position="after"><![CDATA[\r\n			<?php } ?>\r\n			<?php if (!empty($related_videoreviews)) { ?>\r\n			<li <?php if ($is_active) { echo ''class="active"''; $is_active = false; } ;?> ><a href="#tab-videopublisher" data-toggle="tab"><?php echo $tab_videoreviews; ?> (<?php echo count($related_videoreviews); ?>)</a></li>\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[  <div class="tab-pane tab-content <?php if ($is_active) { echo ''active''; $is_active = false; } ;?>" id="tab-review" <?php if ($rating): ?>itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating"<?php endif; ?>>]]></search>\r\n			<add position="before"><![CDATA[\r\n			<?php } ?>			\r\n			<?php if (!empty($related_videoreviews)) { ?>\r\n			<div id="tab-videopublisher" class="tab-pane tab-content <?php if ($is_active) { echo ''active''; $is_active = false; } ;?>" style="padding: 15px 10px;">\r\n				<div class="pvr-list">\r\n					<?php foreach ($related_videoreviews as $review) { ?>\r\n					<?php $reviewText = str_replace(''&nbsp;'', '' '', strip_tags(htmlspecialchars_decode($review[''text''], ENT_QUOTES))); ?>\r\n					<?php if (empty($pvr_settings[''use_collections''])){\r\n							$reviewLink = ''onClick="cboxPVR(''.$review[''pvr_id''].'');"'';\r\n						} else {\r\n							$reviewLink = ''href="'' . $separateReviewBaseUrl . $review[''pvr_id''] . ''" data-pvr-id="''.$review[''pvr_id''].''"'';\r\n						}\r\n					?>\r\n					<div class="pvr-video-item">\r\n							<div class="left">\r\n								<div class="image">\r\n									<a class="pvr-video-related" rel="pvr-product-video-collection" <?php echo $reviewLink; ?> title="<?php echo $review[''title'']; ?>" alt="<?php echo $review[''title'']; ?>">\r\n										<img title="<?php echo $review[''title'']; ?>" alt="<?php echo $review[''title'']; ?>"  src="<?php echo $review[''image_link'']; ?>" />\r\n									</a>\r\n									<div class="overlay" onClick="ieCompatibility(<?php echo $review[''pvr_id'']; ?>);"></div>\r\n								</div>\r\n							</div>\r\n							<div class="right">\r\n								<div class="pvr-review">\r\n									<div class="review">\r\n										<h2><?php echo $review[''title'']; ?></h2>\r\n								 		<?php if (!empty($review[''display_rating''])) { ?>\r\n                                			<div class="pvr-rating rating">                \r\n                                      			<?php for ($i = 1; $i <= 5; $i++) { ?>\r\n                                      				<?php if ($review[''rating''] < $i) { ?>\r\n                                      					<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>\r\n                                      				<?php } else { ?>\r\n                                      					<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>\r\n                                      				<?php } ?>\r\n                                     	 		<?php } ?>\r\n                                   			</div>\r\n                                		<?php } ?>\r\n										<div class="mainProductReviewInfo">\r\n											<?php if(!empty($review[''author''])) { ?>\r\n											<span class="pvr-author">by <strong><?php echo $review[''author'']; ?></strong></span>\r\n											<?php } ?>\r\n											<?php if(!empty($review[''date'']) &&  $review[''date''] != ''0000-00-00'') { ?>\r\n											<span class="pvr-date">on <strong><?php echo date(''d M Y'', strtotime($review[''date''])); ?></strong></span>\r\n											<?php } ?>\r\n										</div>\r\n										<div class="pvr-text"><?php echo (mb_strlen($reviewText) > 400) ? mb_substr($reviewText, 0, 400, ''UTF-8'') . ''...'' : $reviewText; ?></div>\r\n										<a <?php echo $reviewLink; ?> class="button videoReviewMoreBtn" rel="pvr-product-button-collection"><?php echo $button_read_more; ?></a>\r\n                            			<div class="clearfix"></div>\r\n									</div>\r\n								</div>\r\n							</div>\r\n					</div>\r\n					<?php } ?>\r\n				</div>\r\n			</div>\r\n			<script type="text/javascript"><!--\r\n			<?php if(!empty($pvr_settings[''use_colorbox''])) { ?>\r\n				<?php if(empty($pvr_settings[''use_collections''])) { ?>\r\n				function cboxPVR(pvr_id) {\r\n					var pvrLink = ''<?php echo html_entity_decode($separateReviewBaseUrl); ?>'';\r\n					$.colorbox({\r\n						href: pvrLink + pvr_id,\r\n						width: ''<?php echo !empty($pvr_settings[''colorbox_width'']) ? $pvr_settings[''colorbox_width''] : ''700px'';?>'',\r\n						reposition: false,\r\n						onOpen: function() {\r\n							$(''#cboxOverlay'').addClass(''pvr-popupOverlay'');\r\n							$(''#colorbox'').addClass(''pvr-popup'');\r\n							$(''#colorbox'').append($(''#cboxClose'').detach());\r\n						},\r\n						onClosed: function() {\r\n							$(''#cboxOverlay'').removeClass(''pvr-popupOverlay'');\r\n							$(''#colorbox'').removeClass(''pvr-popup'');\r\n							$(''#cboxContent'').append($(''#cboxClose'').detach());\r\n						},\r\n						onComplete: function() {\r\n							var elements = document.getElementsByClassName(''pvr-iframe'').length ? document.getElementsByClassName(''pvr-iframe'') : document.getElementsByClassName(''pvr-html5'');\r\n							var computedWidth = document.defaultView.getComputedStyle(elements[0]).width.match(/^(\\d+)\\w+/)[1];\r\n							var targetHeight = parseInt(computedWidth) * (9/16);\r\n							elements[0].style.height = parseInt(targetHeight) + ''px'';\r\n							<?php if(!empty($pvr_settings[''fb_comments''])) { ?>\r\n							FB.XFBML.parse(document.getElementById(''cboxLoadedContent''), function(){\r\n								$.colorbox.resize();\r\n							});\r\n							<?php } else { ?>\r\n							$.colorbox.resize();\r\n							<?php } ?>\r\n						}\r\n					});\r\n				}\r\n				<?php } else { ?>\r\n				$(document).ready(function(){\r\n					$(''a.pvr-video-related, a.videoReviewMoreBtn'').colorbox({\r\n						width: ''<?php echo !empty($pvr_settings[''colorbox_width'']) ? $pvr_settings[''colorbox_width''] : ''700px'';?>'',\r\n						reposition: false,\r\n						current: false,\r\n						onOpen: function() {\r\n							$(''#cboxOverlay'').addClass(''pvr-popupOverlay'');\r\n							$(''#colorbox'').addClass(''pvr-popup'');\r\n							$(''#colorbox'').append($(''#cboxClose'').detach());\r\n							$(''#colorbox'').append($(''#cboxNext'').detach());\r\n							$(''#colorbox'').append($(''#cboxPrevious'').detach());\r\n						},\r\n						onClosed: function() {\r\n							$(''#cboxOverlay'').removeClass(''pvr-popupOverlay'');\r\n							$(''#colorbox'').removeClass(''pvr-popup'');\r\n							$(''#cboxContent'').append($(''#cboxClose'').detach());\r\n							$(''#cboxContent'').append($(''#cboxNext'').detach());\r\n							$(''#cboxContent'').append($(''#cboxPrevious'').detach());\r\n						},\r\n						onComplete: function() {\r\n							var elements = document.getElementsByClassName(''pvr-iframe'').length ? document.getElementsByClassName(''pvr-iframe'') : document.getElementsByClassName(''pvr-html5'');\r\n							var computedWidth = document.defaultView.getComputedStyle(elements[0]).width.match(/^(\\d+)\\w+/)[1];\r\n							var targetHeight = parseInt(computedWidth) * (9/16);\r\n							elements[0].style.height = parseInt(targetHeight) + ''px'';\r\n							<?php if(!empty($pvr_settings[''fb_comments''])) { ?>\r\n							FB.XFBML.parse(document.getElementById(''cboxLoadedContent''), function(){\r\n								$.colorbox.resize();\r\n							});\r\n							<?php } else { ?>\r\n							$.colorbox.resize();\r\n							<?php } ?>\r\n						}\r\n					});\r\n				});\r\n				<?php } ?>\r\n			<?php } ?>\r\n			\r\n			<?php if(!empty($pvr_settings[''fb_comments''])) { ?>\r\n			$(document).ready(function() {\r\n				if (typeof FB == ''undefined'') {\r\n					$(''#pvr-fb-comments'').append(''<div id="fb-root"></div>'');\r\n					(function(d, s, id) {\r\n					  var js, fjs = d.getElementsByTagName(s)[0];\r\n					  if (d.getElementById(id)) return;\r\n					  js = d.createElement(s); js.id = id;\r\n					  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";\r\n					  fjs.parentNode.insertBefore(js, fjs);\r\n					}(document, ''script'', ''facebook-jssdk''));\r\n				}\r\n			});\r\n			<?php } ?>\r\n			\r\n			function ieCompatibility (pvr_id) {\r\n				if (navigator.appName == ''Microsoft Internet Explorer'') {\r\n					<?php if (empty($pvr_settings[''use_colorbox''])) { ?>\r\n						document.location = $(''a[data-pvr-id="''+pvr_id+''"]'').first().attr(''href'');\r\n					<?php } else { ?>\r\n						<?php if (empty($pvr_settings[''use_collections''])) { ?>\r\n							cboxPVR(pvr_id);\r\n						<? } else { ?>\r\n							$(''a[data-pvr-id="''+pvr_id+''"]'').first().click();\r\n						<?php } ?>\r\n					<?php } ?>\r\n				}\r\n			}\r\n			//--></script>\r\n			<?php if(!empty($pvr_settings[''fb_comments''])) { ?>\r\n			<style>\r\n			#cboxLoadedContent div.fb-comments {\r\n				width: 100%;\r\n			}\r\n			</style>\r\n			<?php } ?>\r\n			<?php } ?>\r\n			<?php if ($review_status) { ?>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2017-06-30 01:54:13'),
(5, 'oc-mod.ru | Всплывающая корзина', 'ocmodpcart', 'oc-mod.ru', '1', 'http://oc-mod.ru', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>oc-mod.ru | Всплывающая корзина</name>\r\n	<code>ocmodpcart</code>\r\n	<version>1</version>\r\n	<author>oc-mod.ru</author>\r\n	<link>http://oc-mod.ru</link>\r\n	<file path="catalog/view/theme/*/template/common/footer.tpl">\r\n		<operation>\r\n			<search><![CDATA[</body></html>]]></search>\r\n			<add position="before"><![CDATA[\r\n				<!-- ocmodpcart start //-->\r\n				<?php if ($ocmodpcart) { ?>\r\n				<link href="catalog/view/javascript/ocmod/magnific-popup.css" rel="stylesheet" media="screen"/>\r\n				<link href="catalog/view/theme/fog/stylesheet/ocmodpcart.css" rel="stylesheet" media="screen"/>\r\n				<script src="catalog/view/javascript/ocmod/jquery.magnific-popup.min.js" type="text/javascript"></script>\r\n				<script type="text/javascript"><!--\r\n				$(function() {\r\n					$.each($("[onclick^=''cart.add'']"), function() {\r\n						var product_id = $(this).attr(''onclick'').match(/[0-9]+/);\r\n						$(this).attr(''onclick'', ''get_ocmodpcart(\\'''' + $(this).attr(''onclick'').match(/[0-9]+/) + ''\\'',\\'''' + ''catalog'' + ''\\'');'');\r\n					});\r\n					var main_product_id = $(''input[name=\\''product_id\\'']'').val();\r\n					$(''#button-cart'').unbind(''click'').attr(''onclick'', ''get_ocmodpcart(\\'''' + main_product_id + ''\\'',\\'''' + ''product'' + ''\\'');'');\r\n					$(''#cart > button'').removeAttr(''data-toggle'').attr(''onclick'', ''get_ocmodpcart(false,\\'''' + ''show_cart'' + ''\\'');'');\r\n				});\r\n				function get_ocmodpcart(product_id, action, quantity) {\r\n					quantity = typeof(quantity) != ''undefined'' ? quantity : 1;\r\n					if (action == "catalog") {\r\n						$.ajax({\r\n							url: ''index.php?route=checkout/cart/add'',\r\n							type: ''post'',\r\n							data: ''product_id='' + product_id + ''&quantity='' + quantity,\r\n							dataType: ''json'',\r\n							success: function(json) {\r\n								$(''.alert, .text-danger'').remove();\r\n								if (json[''redirect'']) {\r\n									location = json[''redirect''];\r\n								}\r\n								if (json[''success'']) {\r\n									$.magnificPopup.open({\r\n									removalDelay: 300,\r\n									callbacks: {\r\n										beforeOpen: function() {\r\n										   this.st.mainClass = ''mfp-zoom-in'';\r\n										}\r\n									},\r\n									tLoading: '''',\r\n									items: {\r\n										src: ''index.php?route=module/ocmodpcart'',\r\n										type: ''ajax''\r\n									}\r\n									});\r\n									$(''#cart-total'').html(json[''total'']);\r\n									$(''#cart-total-popup'').html(json[''total'']);\r\n									$(''#cart > ul'').load(''index.php?route=common/cart/info ul li'');\r\n								}\r\n							}\r\n						});\r\n					}\r\n					if (action == "product") {\r\n						$.ajax({\r\n							url: ''index.php?route=checkout/cart/add'',\r\n							type: ''post'',\r\n							data: $(''#product input[type=\\''text\\''], #product input[type=\\''hidden\\''], #product input[type=\\''radio\\'']:checked, #product input[type=\\''checkbox\\'']:checked, #product select, #product textarea''),\r\n							dataType: ''json'',\r\n							success: function(json) {\r\n							$(''.alert, .text-danger'').remove();\r\n							$(''.form-group'').removeClass(''has-error'');\r\n							$(''.success, .warning, .attention, information, .error'').remove();							\r\n								if (json[''error'']) {\r\n									if (json[''error''][''option'']) {\r\n										for (i in json[''error''][''option'']) {\r\n											$(''#input-option'' + i).before(''<span class="error bg-danger">'' + json[''error''][''option''][i] + ''</span>'');\r\n										}\r\n									}\r\n								}\r\n								if (json[''success'']) {\r\n									$.magnificPopup.open({\r\n										removalDelay: 300,\r\n										callbacks: {\r\n											beforeOpen: function() {\r\n											   this.st.mainClass = ''mfp-zoom-in'';\r\n											}\r\n										},\r\n										tLoading: '''',\r\n										items: {\r\n											src: ''index.php?route=module/ocmodpcart'',\r\n											type: ''ajax''\r\n										}\r\n									});\r\n									$(''#cart-total'').html(json[''total'']);\r\n									$(''#cart-total-popup'').html(json[''total'']);\r\n									$(''#cart > ul'').load(''index.php?route=common/cart/info ul li'');\r\n								}\r\n							}\r\n						});\r\n					}\r\n					if (action == "show_cart") {\r\n						$.magnificPopup.open({\r\n							removalDelay: 300,\r\n							callbacks: {\r\n								beforeOpen: function() {\r\n								   this.st.mainClass = ''mfp-zoom-in'';\r\n								}\r\n							},\r\n							tLoading: '''',\r\n							items: {\r\n								src: ''index.php?route=module/ocmodpcart'',\r\n								type: ''ajax''\r\n							}\r\n						});\r\n					}\r\n				}\r\n				//--></script>\r\n				<?php } ?>\r\n				<!-- ocmodpcart stop //-->\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/controller/common/footer.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''scripts'']]]></search>\r\n			<add position="before"><![CDATA[\r\n				// ocmodpcart start\r\n				$data[''ocmodpcart''] = $this->config->get(''pcart_pcart'');\r\n				// ocmodpcart stop\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>', 1, '2017-06-30 02:12:21');
INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(6, 'Call Back', 'callback.ocmod', 'http://lowenet.biz/', '1.0.2', 'http://lowenet.biz/', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>Call Back</name>\r\n    <code>callback.ocmod</code>\r\n	<version>1.0.2</version>\r\n	<author>http://lowenet.biz/</author>\r\n	<link>http://lowenet.biz/</link>\r\n	\r\n	<!-- controller -->\r\n\r\n	<file path="catalog/controller/common/header.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n				$data[''title''] = $this->document->getTitle();\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n				$data[''callback_status''] = $this->config->get(''callback_status'');\r\n					\r\n				if ((int)$this->config->get(''callback_status'')) {\r\n					$this->load->language(''module/callback'');\r\n					\r\n					$data[''text_callback_title''] = $this->language->get(''text_callback_title'');\r\n					$data[''text_callback_submit''] = $this->language->get(''text_callback_submit'');\r\n					$data[''text_callback_text''] = $this->language->get(''text_callback_text'');\r\n					$data[''text_none''] = $this->language->get(''text_none'');\r\n					\r\n					$data[''entry_callback_title''] = $this->language->get(''entry_callback_title'');\r\n					$data[''entry_callback_name''] = $this->language->get(''entry_callback_name'');\r\n					$data[''entry_callback_email''] = $this->language->get(''entry_callback_email'');\r\n					$data[''entry_callback_time''] = $this->language->get(''entry_callback_time'');\r\n					$data[''entry_callback_phone''] = $this->language->get(''entry_callback_phone'');\r\n					$data[''entry_callback_text''] = $this->language->get(''entry_callback_text'');\r\n					\r\n					$data[''button_callback''] = $this->language->get(''button_callback'');\r\n					\r\n					$data[''callback_title''] = $this->config->get(''callback_title'');\r\n					$data[''callback_name''] = $this->config->get(''callback_name'');\r\n					$data[''callback_email''] = $this->config->get(''callback_email'');\r\n					$data[''callback_time_required''] = $this->config->get(''callback_time_required'');\r\n					$data[''callback_time''] = explode("|", $this->config->get(''callback_time''));\r\n					$data[''callback_phone''] = $this->config->get(''callback_phone'');\r\n					$data[''callback_text''] = $this->config->get(''callback_text'');\r\n					$data[''callback_link_menu''] = $this->config->get(''callback_link_menu'');\r\n					$data[''callback_link_fixed''] = $this->config->get(''callback_link_fixed'');\r\n					$data[''callback_phone_field''] = $this->config->get(''callback_phone_field'');\r\n					$data[''callback_button_color''] = $this->config->get(''callback_button_color'');\r\n					$data[''callback_border_color''] = $this->config->get(''callback_border_color'');\r\n					\r\n					$data[''callback_url''] = ''http://'' . $this->request->server[''HTTP_HOST''] . $this->request->server[''REQUEST_URI''];\r\n					\r\n					// Captcha\r\n					if ($this->config->get($this->config->get(''config_captcha'') . ''_status'') && in_array(''callback'', (array)$this->config->get(''config_captcha_page''))) {\r\n						$data[''captcha''] = $this->load->controller(''captcha/'' . $this->config->get(''config_captcha''));\r\n					} else {\r\n						$data[''captcha''] = '''';\r\n					}\r\n					\r\n					$this->document->addScript(''catalog/view/javascript/callback.js'');\r\n					\r\n					if ($this->config->get(''callback_link_fixed'')) {\r\n						$this->document->addStyle(''catalog/view/theme/default/stylesheet/callback.css'');\r\n					}\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="admin/controller/setting/setting.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n				$data[''captcha_pages''] = array();\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''captcha_pages''][] = array(\r\n					''text''  => $this->language->get(''text_callback''),\r\n					''value'' => ''callback''\r\n				);\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="admin/controller/common/menu.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n				$this->load->language(''common/menu'');\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n				$data[''text_callback''] = $this->language->get(''text_callback'');			\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				return $this->load->view(''common/menu\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n				$data[''callback''] = $this->url->link(''catalog/callback'', ''token='' . $this->session->data[''token''], ''SSL'');		\r\n			]]></add>\r\n		</operation>		\r\n	</file>\r\n	<file path="catalog/controller/captcha/*.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n				$data[''route''] = $this->request->get[''route'']; \r\n			]]></search>\r\n			<add position="replace"><![CDATA[\r\n				// Disable error for Home Page\r\n				if (isset($this->request->get[''route''])) {\r\n					$data[''route''] = $this->request->get[''route'']; \r\n				} else {\r\n					$data[''route''] = ''common/home'';\r\n				}			\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<!-- view -->\r\n	\r\n	<file path="catalog/view/theme/*/template/common/header.tpl">\r\n		<operation>\r\n			<search><![CDATA[\r\n				</head>\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			    <?php if ($callback_status) { ?>\r\n				<div id="callback-box" class="modal fade">\r\n				  <div class="modal-dialog">\r\n					<div class="modal-content">\r\n					  <div class="modal-header">\r\n						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>\r\n						<h4 class="modal-title"><?php echo $text_callback_title; ?></h4>\r\n						<div><?php echo $text_callback_text; ?></div>\r\n						<div id="callback"></div>\r\n					  </div>\r\n					  <div class="modal-body">\r\n						<form class="form-horizontal" id="form-callback">\r\n						<?php if ($callback_title) { ?>\r\n						<div class="form-group <?php if ($callback_title == 2) { echo ''required''; } ?>">\r\n						  <div class="col-sm-4">\r\n							<label class="control-label" for="input-callback-title"><?php echo $entry_callback_title; ?></label>\r\n						  </div>\r\n						  <div class="col-sm-8">\r\n							<input type="text" name="callback_title" value="" id="input-callback-title" class="form-control" placeholder="<?php echo $entry_callback_title; ?>" />\r\n						  </div>\r\n						</div>\r\n						<?php } ?>\r\n						<?php if ($callback_name > 0) { ?>\r\n						<div class="form-group <?php if ($callback_name == 2) { echo ''required''; }?>">\r\n						  <div class="col-sm-4">\r\n							<label class="control-label" for="input-callback-name"><?php echo $entry_callback_name; ?></label>		  \r\n						  </div>\r\n						  <div class="col-sm-8">\r\n							<input type="text" name="callback_name" value="" id="input-callback-name" class="form-control" placeholder="<?php echo $entry_callback_name; ?>" />\r\n						  </div>\r\n						</div>\r\n						<?php } ?>\r\n						<?php if ($callback_email > 0) { ?>\r\n						<div class="form-group <?php if ($callback_email == 2) { echo ''required''; }?>">\r\n						  <div class="col-sm-4">\r\n							<label class="control-label" for="input-callback-email"><?php echo $entry_callback_email; ?></label>		  \r\n						  </div>\r\n						  <div class="col-sm-8">\r\n							<input type="email" name="callback_email" value="" id="input-callback-email" class="form-control" placeholder="<?php echo $entry_callback_email; ?>" />\r\n						  </div>\r\n						</div>\r\n						<?php } ?>\r\n						<?php if ($callback_time_required) { ?>\r\n						<div class="form-group <?php if ($callback_time_required == 2) { echo ''required''; }?>">\r\n						  <div class="col-sm-4">\r\n							<label class="control-label" for="input-callback-time"><?php echo $entry_callback_time; ?></label>		  \r\n						  </div>\r\n						  <div class="col-sm-8">\r\n							<select name="callback_time" id="input-callback-time" class="form-control">\r\n								<option value="0"><?php echo $text_none; ?></option>\r\n							  <?php foreach ($callback_time as $time) { ?>\r\n								<option value="<?php echo $time; ?>"><?php echo $time; ?></option>\r\n								<?php } ?>\r\n							</select>\r\n						  </div>\r\n						</div>\r\n						<?php } ?>\r\n						<?php if ($callback_phone > 0) { ?>\r\n						<div class="form-group <?php if ($callback_phone == 2) { echo ''required''; }?>">\r\n						  <div class="col-sm-4">\r\n							<label class="control-label" for="input-callback-phone"><?php echo $entry_callback_phone; ?></label>		  \r\n						  </div>\r\n						  <div class="col-sm-8">\r\n							<input type="tel" name="callback_phone" value="" id="input-callback-phone" class="form-control" placeholder="<?php echo $entry_callback_phone; ?>" />\r\n						  </div>\r\n						</div>\r\n						<?php } ?>\r\n						<?php if ($callback_text > 0) { ?>\r\n						<div class="form-group <?php if ($callback_text == 2) { echo ''required''; }?>">\r\n						  <div class="col-sm-4">\r\n							<label class="control-label" for="input-callback-text"><?php echo $entry_callback_text; ?></label>		  \r\n						  </div>\r\n						  <div class="col-sm-8">\r\n							<textarea name="callback_text" rows="5" id="input-callback-text" class="form-control" placeholder="<?php echo $entry_callback_text; ?>"></textarea>\r\n						  </div>\r\n						</div>\r\n						<?php } ?>\r\n						<?php echo $captcha; ?>\r\n						<input type="hidden" name="callback_url" value="<?php echo $callback_url; ?>" />\r\n					  </form>\r\n					  </div>\r\n					  <div class="modal-footer">\r\n						<button type="button" class="btn btn-warning add-callback" id="button-callback"><i class="fa fa-comment"></i> <?php echo $text_callback_submit; ?></button>\r\n					  </div>\r\n					</div>\r\n				  </div>\r\n				</div>\r\n				<?php if ($callback_link_fixed) { ?>\r\n				<?php if ($callback_phone_field) { ?>\r\n				<div id="callback-phone-field-alert"></div>\r\n				<div class="callback-fixed-button-phone callback-button-color">\r\n				  <form id="callback-form-phone">\r\n					<label for="callback-field-phone"><?php echo $button_callback; ?></label>\r\n					  <div class="input-group">\r\n                        <input id="callback-field-phone" name="callback_field_phone" type="tel" class="form-control" placeholder="<?php echo $entry_callback_phone; ?>"/>\r\n                        <span class="input-group-btn">\r\n                          <input type="hidden" name="callback_field_url" value="<?php echo $callback_url; ?>" />\r\n				          <button id="button-phone-callback" type="button" class="btn btn-default"><i class="fa fa-phone"></i></button>\r\n                        </span>\r\n                      </div>\r\n				  </form>\r\n				</div>\r\n				<?php } else { ?>\r\n				<div class="callback-fixed-button callback-button-color show-callback"><i class="fa fa-phone"></i> <?php echo $button_callback; ?></div>\r\n				<?php } ?>\r\n				<style>\r\n				.callback-button-color {\r\n					border-left: solid 1px #<?php echo $callback_border_color; ?>;\r\n					background: #<?php echo $callback_button_color; ?>;\r\n					box-shadow: 0px 5px 0px 0px #<?php echo $callback_border_color; ?>;\r\n				}\r\n				</style>\r\n				<?php } ?>\r\n				<?php } ?>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				<?php echo $telephone; ?></span></li>\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			    <?php if ($callback_status) { ?>\r\n			    <?php if ($callback_link_menu) { ?>\r\n				<li><span class="show-callback"><i class="fa fa-phone-square"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_callback; ?></span></span></li>\r\n				<?php } ?>\r\n				<?php } ?>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="admin/view/template/common/menu.tpl">\r\n		<operation>\r\n			<search><![CDATA[\r\n				<li><a href="<?php echo $review; ?>"><?php echo $text_review; ?></a></li>\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n				<li><a href="<?php echo $callback; ?>"><?php echo $text_callback; ?></a></li>\r\n			]]></add>\r\n		</operation>		\r\n	</file>\r\n	\r\n	<!-- language -->\r\n	\r\n	<file path="admin/language/english/common/menu.php">\r\n		<operation>\r\n			<search><![CDATA[// Text]]></search>\r\n			<add position="after"><![CDATA[\r\n				$_[''text_callback'']                     = ''Call Back'';\r\n			]]></add>\r\n		</operation>		\r\n	</file>\r\n	<file path="admin/language/english/setting/setting.php">\r\n		<operation>\r\n			<search><![CDATA[// Text]]></search>\r\n			<add position="after"><![CDATA[\r\n				$_[''text_callback'']                     = ''Call Back'';\r\n			]]></add>\r\n		</operation>		\r\n	</file>\r\n	<file path="admin/language/russian/common/menu.php">\r\n		<operation>\r\n			<search><![CDATA[// Text]]></search>\r\n			<add position="after"><![CDATA[\r\n				$_[''text_callback'']                     = ''Обратный звонок'';\r\n			]]></add>\r\n		</operation>		\r\n	</file>\r\n	<file path="admin/language/russian/setting/setting.php">\r\n		<operation>\r\n			<search><![CDATA[// Text]]></search>\r\n			<add position="after"><![CDATA[\r\n				$_[''text_callback'']                     = ''Обратный звонок'';\r\n			]]></add>\r\n		</operation>		\r\n	</file>\r\n	\r\n</modification>', 1, '2017-06-30 02:21:14'),
(7, 'Ajax Quick Checkout', 'd_quickcheckout', 'Dreamvention', '6.4.0.0', 'https://dreamvention.zendesk.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>Ajax Quick Checkout</name>\n	<code>d_quickcheckout</code>\n	<version>6.4.0.0</version>\n	<author>Dreamvention</author>\n	<link>https://dreamvention.zendesk.com</link>\n	\n    <file path="catalog/controller/checkout/checkout.php">\n        <operation>\n            <search ><![CDATA[if (file_exists(DIR_TEMPLATE . $this->config->get(''config_template'') . ''/template/checkout/checkout.tpl'')) {]]></search>\n			<add position="replace" offset="4"><![CDATA[\n			// a_vqmod_d_quickcheckout.xml\n			if($this->config->get(''d_quickcheckout_status'')){\n				$template = ''d_quickcheckout'';\n			}else{\n				$template = ''checkout'';\n			}\n			\n			if (file_exists(DIR_TEMPLATE . $this->config->get(''config_template'') . ''/template/checkout/''.$template.''.tpl'')) {\n				$template = $this->config->get(''config_template'') . ''/template/checkout/''.$template.''.tpl'';\n			} else {\n				$template = ''default/template/checkout/''.$template.''.tpl'';\n			}\n			$this->response->setOutput($this->load->view($template, $data));]]>\n			</add>\n        </operation>\n    </file>\n    <file path="catalog/controller/checkout/checkout.php">\n        <operation error="skip">\n			<search><![CDATA[$this->response->setOutput($this->load->view(''checkout/checkout'', $data));]]></search>\n			<add position="replace"><![CDATA[\n			// a_vqmod_d_quickcheckout.xml\n			if($this->config->get(''d_quickcheckout_status'')){\n				$template = ''d_quickcheckout'';\n			}else{\n				$template = ''checkout'';\n			}\n			\n			$this->response->setOutput($this->load->view(''checkout/''.$template, $data));]]></add>\n		</operation>\n	</file>\n	<file path="catalog/controller/checkout/checkout.php">\n		<operation>\n			<search ><![CDATA[$data[''header''] = $this->load->controller(''common/header'');]]></search>\n			<add position="before"><![CDATA[\n		if($this->config->get(''d_quickcheckout_status'')){\n			$data[''d_quickcheckout''] = $this->load->controller(''module/d_quickcheckout'');\n		}\n		]]></add>\n		</operation>\n    </file>\n    <file path="system/library/cart/tax.php">\n		<operation>\n			<search ><![CDATA[final class Tax {]]></search>\n			<add position="after"><![CDATA[\n	// a_vqmod_d_quickcheckout.xml\n	public function clearRates(){\n		$this->tax_rates = array();\n	}\n			]]></add>\n		</operation>\n	</file>	\n	<file path="system/library/tax.php">\n		<operation>\n			<search ><![CDATA[final class Tax {]]></search>\n			<add position="after"><![CDATA[\n	// a_vqmod_d_quickcheckout.xml\n	public function clearRates(){\n		$this->tax_rates = array();\n	}\n			]]></add>\n		</operation>\n	</file>	\n</modification>', 1, '2017-06-30 23:44:23'),
(8, 'OCFilter Modification', 'ocfilter-product-filter', 'Aleksandr Surutkovich', '4.19', 'http://ocfilter.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n  <name>OCFilter Modification</name>\r\n  <code>ocfilter-product-filter</code>\r\n  <version>4.19</version>\r\n  <author>Aleksandr Surutkovich</author>\r\n  <link>http://ocfilter.com</link>\r\n\r\n	<file path="admin/controller/catalog/product.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      function getForm() {\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n    // OCFilter start\r\n    $this->document->addStyle(''view/stylesheet/ocfilter/ocfilter.css'');\r\n    $this->document->addScript(''view/javascript/ocfilter/ocfilter.js'');\r\n    // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[\r\n      $data[''tab_general''] = $this->language->get(''tab_general'');\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n    // OCFilter start\r\n    $data[''tab_ocfilter''] = $this->language->get(''tab_ocfilter'');\r\n    $data[''entry_values''] = $this->language->get(''entry_values'');\r\n    $data[''ocfilter_select_category''] = $this->language->get(''ocfilter_select_category'');\r\n    // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/controller/catalog/product.php -->\r\n\r\n	<file path="admin/controller/common/menu.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      $this->language->get(''text_product'');\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n    // OCFilter start\r\n		$data[''text_ocfilter''] = $this->language->get(''text_ocfilter'');\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[\r\n      $this->url->link(''catalog/information'', ''token='' . $this->session->data[''token''], ''SSL'');\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n 		// OCFilter start\r\n		$data[''ocfilter''] = $this->url->link(''catalog/ocfilter'', ''token='' . $this->session->data[''token''], ''SSL'');\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/controller/common/menu.php -->\r\n\r\n	<file path="admin/controller/common/menu.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      $this->url->link(''catalog/information'', ''token='' . $this->session->data[''token''], true);\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n 		// OCFilter start\r\n		$data[''ocfilter''] = $this->url->link(''catalog/ocfilter'', ''token='' . $this->session->data[''token''], true);\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/controller/common/menu.php -->\r\n\r\n	<file path="admin/controller/maxystore/menu.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      $this->language->get(''text_product'');\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n    // OCFilter start\r\n		$data[''text_ocfilter''] = $this->language->get(''text_ocfilter'');\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[\r\n      $this->url->link(''editors/information'', ''token='' . $this->session->data[''token''], ''SSL'');\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n 		// OCFilter start\r\n		$data[''ocfilter''] = $this->url->link(''catalog/ocfilter'', ''token='' . $this->session->data[''token''], ''SSL'');\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/controller/maxystore/menu.php -->\r\n\r\n	<file path="admin/controller/maxystore/menu.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      $this->url->link(''editors/information'', ''token='' . $this->session->data[''token''], true);\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n 		// OCFilter start\r\n		$data[''ocfilter''] = $this->url->link(''catalog/ocfilter'', ''token='' . $this->session->data[''token''], true);\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/controller/maxystore/menu.php -->\r\n\r\n	<file path="admin/language/english/catalog/product.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      ''Action'';\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n// OCFilter start\r\n$_[''entry_values'']          		= ''Add the values ​​for this option.'';\r\n$_[''tab_ocfilter'']          		= ''OCFilter Options'';\r\n$_[''ocfilter_select_category''] 	= ''To start, select a category for this product.'';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/language/english/catalog/product.php -->\r\n\r\n	<file path="admin/language/en-us/catalog/product.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      ''Action'';\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n// OCFilter start\r\n$_[''entry_values'']          		= ''Add the values ​​for this option.'';\r\n$_[''tab_ocfilter'']          		= ''OCFilter Options'';\r\n$_[''ocfilter_select_category''] 	= ''To start, select a category for this product.'';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/language/en-us/catalog/product.php -->\r\n\r\n	<file path="admin/language/english/common/menu.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      ''Options'';\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n// OCFilter start\r\n$_[''text_ocfilter''] = ''Product Filter OCFilter'';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/language/english/common/menu.php -->\r\n\r\n	<file path="admin/language/en-us/common/menu.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      ''Options'';\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n// OCFilter start\r\n$_[''text_ocfilter''] = ''Product Filter OCFilter'';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/language/en-us/common/menu.php -->\r\n\r\n	<file path="admin/language/russian/catalog/product.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      ''Статус'';\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n// OCFilter start\r\n$_[''entry_values'']          		= ''Добавьте значения для этой опции.'';\r\n$_[''tab_ocfilter'']          		= ''Опции фильтра'';\r\n$_[''ocfilter_select_category''] 	= ''Для начала, выберите категории для этого товара.'';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/language/russian/catalog/product.php -->\r\n\r\n	<file path="admin/language/ru-ru/catalog/product.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      ''Статус'';\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n// OCFilter start\r\n$_[''entry_values'']          		= ''Добавьте значения для этой опции.'';\r\n$_[''tab_ocfilter'']          		= ''Опции фильтра'';\r\n$_[''ocfilter_select_category''] 	= ''Для начала, выберите категории для этого товара.'';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/language/ru-ru/catalog/product.php -->\r\n\r\n	<file path="admin/language/ru/catalog/product.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      ''Статус'';\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n// OCFilter start\r\n$_[''entry_values'']          		= ''Добавьте значения для этой опции.'';\r\n$_[''tab_ocfilter'']          		= ''Опции фильтра'';\r\n$_[''ocfilter_select_category''] 	= ''Для начала, выберите категории для этого товара.'';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/language/ru/catalog/product.php -->\r\n\r\n	<file path="admin/language/russian/common/menu.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      ''Опции'';\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n// OCFilter start\r\n$_[''text_ocfilter''] = ''Фильтр товаров OCFilter'';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/language/russian/common/menu.php -->\r\n\r\n	<file path="admin/language/ru-ru/common/menu.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      ''Опции'';\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n// OCFilter start\r\n$_[''text_ocfilter''] = ''Фильтр товаров OCFilter'';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/language/ru-ru/common/menu.php -->\r\n\r\n	<file path="admin/language/ru/common/menu.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      ''Опции'';\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n// OCFilter start\r\n$_[''text_ocfilter''] = ''Фильтр товаров OCFilter'';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/language/ru/common/menu.php -->\r\n\r\n	<file path="admin/model/catalog/product.php">\r\n    <operation>\r\n      <search><![CDATA[\r\n      if (isset($data[''image''])) {\r\n      ]]></search>\r\n      <add position="before"><![CDATA[\r\n    // OCFilter start\r\n    $this->db->query("DELETE FROM " . DB_PREFIX . "ocfilter_option_value_to_product WHERE product_id = ''" . (int)$product_id . "''");\r\n		$this->db->query("DELETE FROM " . DB_PREFIX . "ocfilter_option_value_to_product_description WHERE product_id = ''" . (int)$product_id . "''");\r\n\r\n		if (isset($data[''ocfilter_product_option''])) {\r\n			foreach ($data[''ocfilter_product_option''] as $option_id => $values) {\r\n				foreach ($values[''values''] as $value_id => $value) {\r\n					if (isset($value[''selected''])) {\r\n						$this->db->query("INSERT INTO " . DB_PREFIX . "ocfilter_option_value_to_product SET product_id = ''" . (int)$product_id . "'', option_id = ''" . (int)$option_id . "'', value_id = ''" . (string)$value_id . "'', slide_value_min = ''" . (isset($value[''slide_value_min'']) ? (float)$value[''slide_value_min''] : 0) . "'', slide_value_max = ''" . (isset($value[''slide_value_max'']) ? (float)$value[''slide_value_max''] : 0) . "''");\r\n\r\n						foreach ($value[''description''] as $language_id => $description) {\r\n							if (trim($description[''description''])) {\r\n								$this->db->query("INSERT INTO " . DB_PREFIX . "ocfilter_option_value_to_product_description SET product_id = ''" . (int)$product_id . "'', option_id = ''" . (int)$option_id . "'', value_id = ''" . (string)$value_id . "'', language_id = ''" . (int)$language_id . "'', description = ''" . $this->db->escape($description[''description'']) . "''");\r\n							}\r\n						}\r\n					}\r\n				}\r\n			}\r\n		}\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[\r\n      $data[''product_attribute''] = $this->getProductAttributes($product_id);\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n 		// OCFilter start\r\n		$this->load->model(''catalog/ocfilter'');\r\n		$data[''ocfilter_product_option''] = $this->model_catalog_ocfilter->getProductOCFilterValues($product_id);\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[\r\n      $this->db->query("DELETE FROM " . DB_PREFIX . "product WHERE product_id = ''" . (int)$product_id . "''");\r\n      ]]></search>\r\n      <add position="after"><![CDATA[\r\n		// OCFilter start\r\n		$this->db->query("DELETE FROM " . DB_PREFIX . "ocfilter_option_value_to_product WHERE product_id = ''" . (int)$product_id . "''");\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/model/catalog/product.php -->\r\n\r\n	<file path="admin/view/template/catalog/product_form.tpl">\r\n    <operation>\r\n      <search index="0"><![CDATA[\r\n      <script type="text/javascript"><!--\r\n      ]]></search>\r\n      <add position="before"><![CDATA[\r\n  <!-- OCFilter start -->\r\n  <script type="text/javascript"><!--\r\n  ocfilter.php = {\r\n  	text_select: ''<?php echo $text_select; ?>'',\r\n  	ocfilter_select_category: ''<?php echo $ocfilter_select_category; ?>'',\r\n  	entry_values: ''<?php echo $entry_values; ?>'',\r\n  	tab_ocfilter: ''<?php echo $tab_ocfilter; ?>''\r\n  };\r\n\r\n  ocfilter.php.languages = [];\r\n\r\n  <?php foreach ($languages as $language) { ?>\r\n  ocfilter.php.languages.push({\r\n  	''language_id'': <?php echo $language[''language_id'']; ?>,\r\n  	''name'': ''<?php echo $language[''name'']; ?>'',\r\n    ''image'': ''<?php echo $language[''image'']; ?>''\r\n  });\r\n  <?php } ?>\r\n\r\n  //--></script>\r\n  <!-- OCFilter end -->\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/view/template/catalog/product_form.tpl -->\r\n\r\n	<file path="admin/view/template/editors/product/product_form.tpl">\r\n    <operation>\r\n      <search index="0"><![CDATA[<script type="text/javascript"><!--]]></search>\r\n      <add position="before"><![CDATA[\r\n  <!-- OCFilter start -->\r\n  <script type="text/javascript"><!--\r\n  ocfilter.php = {\r\n  	text_select: ''<?php echo $text_select; ?>'',\r\n  	ocfilter_select_category: ''<?php echo $ocfilter_select_category; ?>'',\r\n  	entry_values: ''<?php echo $entry_values; ?>'',\r\n  	tab_ocfilter: ''<?php echo $tab_ocfilter; ?>''\r\n  };\r\n\r\n  ocfilter.php.languages = [];\r\n\r\n  <?php foreach ($languages as $language) { ?>\r\n  ocfilter.php.languages.push({\r\n  	''language_id'': <?php echo $language[''language_id'']; ?>,\r\n  	''name'': ''<?php echo $language[''name'']; ?>'',\r\n    ''image'': ''<?php echo $language[''image'']; ?>''\r\n  });\r\n  <?php } ?>\r\n\r\n  //--></script>\r\n  <!-- OCFilter end -->\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/view/template/editors/product/product_form.tpl -->\r\n\r\n	<file path="admin/view/template/common/menu.tpl">\r\n    <operation>\r\n      <search><![CDATA[<li><a href="<?php echo $product; ?>"><?php echo $text_product; ?></a></li>]]></search>\r\n      <add position="after"><![CDATA[\r\n		<!-- OCFilter start -->\r\n    <li><a href="<?php echo $ocfilter; ?>"><?php echo $text_ocfilter; ?></a></li>\r\n	  <!-- OCFilter end -->\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/view/template/common/menu.tpl -->\r\n\r\n	<file path="admin/view/template/maxystore/common/menu.tpl">\r\n    <operation>\r\n      <search><![CDATA[<li><a href="<?php echo $product; ?>"><?php echo $text_product; ?></a></li>]]></search>\r\n      <add position="after"><![CDATA[\r\n		<!-- OCFilter start -->\r\n    <li><a href="<?php echo $ocfilter; ?>"><?php echo $text_ocfilter; ?></a></li>\r\n	  <!-- OCFilter end -->\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/view/template/maxystore/common/menu.tpl -->\r\n\r\n  <!-- CATALOG -->\r\n\r\n  <!-- >= 2.2 -->\r\n	<file path="catalog/controller/startup/maintenance.php">\r\n    <operation>\r\n      <search><![CDATA[index() {]]></search>\r\n      <add position="after"><![CDATA[\r\n    // OCFilter start\r\n    $this->load->controller(''module/ocfilter/initialise'');\r\n    // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/controller/startup/maintenance.php -->\r\n\r\n	<file path="catalog/controller/common/maintenance.php">\r\n    <operation>\r\n      <search><![CDATA[index() {]]></search>\r\n      <add position="after"><![CDATA[\r\n    // OCFilter start\r\n    $this->load->controller(''module/ocfilter/initialise'');\r\n    // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/controller/common/maintenance.php -->\r\n\r\n  <!-- SEO URL >= 2.2 -->\r\n	<file path="catalog/controller/startup/seo_url.php">\r\n    <operation>\r\n      <search><![CDATA[$this->url->addRewrite($this);]]></search>\r\n      <add position="after"><![CDATA[\r\n      // OCFilter start\r\n      if (!is_null($this->registry->get(''ocfilter''))) {\r\n  			$this->url->addRewrite($this->registry->get(''ocfilter''));\r\n  		}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/controller/startup/seo_url.php -->\r\n\r\n  <!-- SEO URL < 2.2 -->\r\n	<file path="catalog/controller/common/seo_url.php">\r\n    <operation>\r\n      <search><![CDATA[$this->url->addRewrite($this);]]></search>\r\n      <add position="after"><![CDATA[\r\n      // OCFilter start\r\n      if (!is_null($this->registry->get(''ocfilter''))) {\r\n  			$this->url->addRewrite($this->registry->get(''ocfilter''));\r\n  		}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/controller/common/seo_url.php -->\r\n\r\n  <!-- SEO PRO >= 2.2 -->\r\n	<file path="catalog/controller/startup/seo_pro.php">\r\n    <operation>\r\n      <search><![CDATA[$this->url->addRewrite($this);]]></search>\r\n      <add position="after"><![CDATA[\r\n      // OCFilter start\r\n      if (!is_null($this->registry->get(''ocfilter''))) {\r\n  			$this->url->addRewrite($this->registry->get(''ocfilter''));\r\n  		}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/controller/startup/seo_pro.php -->\r\n\r\n  <!-- SEO PRO < 2.2 -->\r\n	<file path="catalog/controller/common/seo_pro.php">\r\n    <operation>\r\n      <search><![CDATA[$this->url->addRewrite($this);]]></search>\r\n      <add position="after"><![CDATA[\r\n      // OCFilter start\r\n      if (!is_null($this->registry->get(''ocfilter''))) {\r\n  			$this->url->addRewrite($this->registry->get(''ocfilter''));\r\n  		}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/controller/common/seo_pro.php -->\r\n\r\n	<file path="catalog/model/catalog/product.php">\r\n    <operation>\r\n      <search><![CDATA[if (!empty($data[''filter_manufacturer_id''])) {]]></search>\r\n      <add position="before"><![CDATA[\r\n		// OCFilter start\r\n		if (!empty($data[''filter_ocfilter''])) {\r\n    	$this->load->model(''catalog/ocfilter'');\r\n\r\n      $ocfilter_product_sql = $this->model_catalog_ocfilter->getProductSQL($data[''filter_ocfilter'']);\r\n\r\n			if ($ocfilter_product_sql) {\r\n			  $sql .= $ocfilter_product_sql;\r\n			}\r\n		}\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/model/catalog/product.php -->\r\n\r\n	<file path="catalog/controller/product/category.php">\r\n    <operation>\r\n      <search index="0"><![CDATA[$data[''breadcrumbs''] = array();]]></search>\r\n      <add position="before"><![CDATA[\r\n		// OCFilter start\r\n    if (isset($this->request->get[''filter_ocfilter''])) {\r\n      $filter_ocfilter = $this->request->get[''filter_ocfilter''];\r\n    } else {\r\n      $filter_ocfilter = '''';\r\n    }\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <!-- Filter params to product model -->\r\n\r\n    <operation>\r\n      <search><![CDATA[$product_total =]]></search>\r\n      <add position="before"><![CDATA[\r\n  		// OCFilter start\r\n  		$filter_data[''filter_ocfilter''] = $filter_ocfilter;\r\n  		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <!-- Add url -->\r\n\r\n    <operation>\r\n      <search index="2"><![CDATA[if (isset($this->request->get[''filter''])) {]]></search>\r\n      <add position="before"><![CDATA[\r\n      // OCFilter start\r\n			if (isset($this->request->get[''filter_ocfilter''])) {\r\n				$url .= ''&filter_ocfilter='' . $this->request->get[''filter_ocfilter''];\r\n			}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search index="3"><![CDATA[if (isset($this->request->get[''filter''])) {]]></search>\r\n      <add position="before"><![CDATA[\r\n      // OCFilter start\r\n			if (isset($this->request->get[''filter_ocfilter''])) {\r\n				$url .= ''&filter_ocfilter='' . $this->request->get[''filter_ocfilter''];\r\n			}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search index="4"><![CDATA[if (isset($this->request->get[''filter''])) {]]></search>\r\n      <add position="before"><![CDATA[\r\n      // OCFilter start\r\n			if (isset($this->request->get[''filter_ocfilter''])) {\r\n				$url .= ''&filter_ocfilter='' . $this->request->get[''filter_ocfilter''];\r\n			}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <!-- Canonical Fix -->\r\n    <!--\r\n    <operation>\r\n      <search><![CDATA[if ($page == 1) {]]></search>\r\n      <add position="before"><![CDATA[\r\n      if (isset($this->request->get[''page''])) {\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[if ($limit]]></search>\r\n      <add position="before"><![CDATA[\r\n      }\r\n      ]]></add>\r\n    </operation>\r\n    -->\r\n    <!-- SEO Meta -->\r\n\r\n    <operation>\r\n      <search limit="1"><![CDATA[$data[''limit''] = $limit;]]></search>\r\n      <add position="after"><![CDATA[\r\n      // OCFilter Start\r\n      $ocfilter_page_info = $this->load->controller(''module/ocfilter/getPageInfo'');\r\n\r\n      if ($ocfilter_page_info) {\r\n        $this->document->setTitle($ocfilter_page_info[''meta_title'']);\r\n\r\n        if ($ocfilter_page_info[''meta_description'']) {\r\n			    $this->document->setDescription($ocfilter_page_info[''meta_description'']);\r\n        }\r\n\r\n        if ($ocfilter_page_info[''meta_keyword'']) {\r\n			    $this->document->setKeywords($ocfilter_page_info[''meta_keyword'']);\r\n        }\r\n\r\n			  $data[''heading_title''] = $ocfilter_page_info[''title''];\r\n\r\n        if ($ocfilter_page_info[''description''] && !isset($this->request->get[''page'']) && !isset($this->request->get[''sort'']) && !isset($this->request->get[''order'']) && !isset($this->request->get[''search'']) && !isset($this->request->get[''limit''])) {\r\n        	$data[''description''] = html_entity_decode($ocfilter_page_info[''description''], ENT_QUOTES, ''UTF-8'');\r\n        }\r\n      } else {\r\n        $meta_title = $this->document->getTitle();\r\n        $meta_description = $this->document->getDescription();\r\n        $meta_keyword = $this->document->getKeywords();\r\n\r\n        $filter_title = $this->load->controller(''module/ocfilter/getSelectedsFilterTitle'');\r\n\r\n        if ($filter_title) {\r\n          if (false !== strpos($meta_title, ''{filter}'')) {\r\n            $meta_title = trim(str_replace(''{filter}'', $filter_title, $meta_title));\r\n          } else {\r\n            $meta_title .= '' '' . $filter_title;\r\n          }\r\n\r\n          $this->document->setTitle($meta_title);\r\n\r\n          if ($meta_description) {\r\n            if (false !== strpos($meta_description, ''{filter}'')) {\r\n              $meta_description = trim(str_replace(''{filter}'', $filter_title, $meta_description));\r\n            } else {\r\n              $meta_description .= '' '' . $filter_title;\r\n            }\r\n\r\n  			    $this->document->setDescription($meta_description);\r\n          }\r\n\r\n          if ($meta_keyword) {\r\n            if (false !== strpos($meta_keyword, ''{filter}'')) {\r\n              $meta_keyword = trim(str_replace(''{filter}'', $filter_title, $meta_keyword));\r\n            } else {\r\n              $meta_keyword .= '' '' . $filter_title;\r\n            }\r\n\r\n           	$this->document->setKeywords($meta_keyword);\r\n          }\r\n\r\n          $heading_title = $data[''heading_title''];\r\n\r\n          if (false !== strpos($heading_title, ''{filter}'')) {\r\n            $heading_title = trim(str_replace(''{filter}'', $filter_title, $heading_title));\r\n          } else {\r\n            $heading_title .= '' '' . $filter_title;\r\n          }\r\n\r\n          $data[''heading_title''] = $heading_title;\r\n\r\n          $data[''description''] = '''';\r\n        } else {\r\n          $this->document->setTitle(trim(str_replace(''{filter}'', '''', $meta_title)));\r\n          $this->document->setDescription(trim(str_replace(''{filter}'', '''', $meta_description)));\r\n          $this->document->setKeywords(trim(str_replace(''{filter}'', '''', $meta_keyword)));\r\n\r\n          $data[''heading_title''] = trim(str_replace(''{filter}'', '''', $data[''heading_title'']));\r\n        }\r\n      }\r\n      // OCFilter End\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/controller/product/category.php -->\r\n\r\n  <!-- Document Noindex -->\r\n\r\n	<file path="system/library/document.php">\r\n    <operation>\r\n      <search><![CDATA[private $keywords;]]></search>\r\n      <add position="after"><![CDATA[\r\n  // OCFilter start\r\n  private $noindex = false;\r\n  // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[public function setTitle($title) {]]></search>\r\n      <add position="before"><![CDATA[\r\n  // OCFilter start\r\n  public function setNoindex($state = false) {\r\n  	$this->noindex = $state;\r\n  }\r\n\r\n	public function isNoindex() {\r\n		return $this->noindex;\r\n	}\r\n  // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /system/library/document.php -->\r\n\r\n	<file path="catalog/controller/common/header.php">\r\n    <operation>\r\n      <search><![CDATA[$data[''scripts''] = $this->document->getScripts();]]></search>\r\n      <add position="after"><![CDATA[\r\n    // OCFilter start\r\n    $data[''noindex''] = $this->document->isNoindex();\r\n    // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/controller/common/header.php -->\r\n\r\n  <file path="catalog/view/theme/*/template/common/header.tpl">\r\n    <operation>\r\n      <search><![CDATA[</title>]]></search>\r\n      <add position="after"><![CDATA[\r\n<?php if ($noindex) { ?>\r\n<!-- OCFilter Start -->\r\n<meta name="robots" content="noindex,nofollow" />\r\n<!-- OCFilter End -->\r\n<?php } ?>\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/view/theme/*/template/common/header.tpl -->\r\n</modification>', 1, '2017-07-01 02:37:33'),
(10, 'Add Plus Minus Button', 'AddPlusMinusButton', 'Anuj Khandelwal', '1.0.0', '', '<?xml version="1.0" encoding="UTF-8"?>\r\n<modification>\r\n        <name>Add Plus Minus Button</name>\r\n		<code>AddPlusMinusButton</code>\r\n		<id>Add Plus Minus Button</id>\r\n        <version>1.0.0</version>\r\n        <vqmver>1.0.9</vqmver>\r\n        <author>Anuj Khandelwal</author>\r\n		\r\n		<file path="catalog/view/theme/*/template/product/product.tpl">\r\n			<operation>\r\n				<search ><![CDATA[\r\n              			<label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>\r\n				]]></search>\r\n				<add position="before"><![CDATA[\r\n					<i class="fa fa-minus pull-left" id="minus-qty"></i>\r\n				]]></add>\r\n			</operation>\r\n			<operation>\r\n				<search ><![CDATA[\r\n					<label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>\r\n				]]></search>\r\n				<add position="after"><![CDATA[\r\n					<i class="fa fa-plus" id="plus-qty"></i>\r\n				]]></add>\r\n			</operation>\r\n		</file>\r\n		\r\n		<file path="catalog/view/theme/*/template/common/footer.tpl">\r\n			<operation>\r\n				<search position="after"><![CDATA[\r\n					</footer>\r\n				]]></search>\r\n				\r\n				<add position="after"><![CDATA[\r\n					<script>//minus quantity\r\n	$(''#minus-qty'').css("margin-top", ".2em");\r\n	$(''#minus-qty'').click(function(){\r\n		var crtval = $(''#input-quantity'').val();\r\n		if(crtval < 2){\r\n			alert(''Quanty Must Be 1'');\r\n		}\r\n		else{\r\n		var cartval = parseInt(crtval) - parseInt(1);\r\n		//alert(cartval);\r\n		$(''#input-quantity'').append().val(cartval);\r\n		}\r\n   });\r\n	\r\n		//add quantity\r\n	$(''#plus-qty'').click(function(){\r\n		var crtval = $(''#input-quantity'').val();\r\n		var cartval = parseInt(crtval) + parseInt(1);\r\n		//alert(cartval);\r\n		$(''#input-quantity'').append().val(cartval);\r\n   });</script>\r\n				]]></add>\r\n			</operation>\r\n		</file>\r\n	\r\n</modification>', 1, '2017-07-03 19:03:06'),
(12, 'Opencart News 2.x', 'opencart_news', 'alexwaha', '1.0.0', 'https://oc-help.com', '<?xml version="1.0" encoding="UTF-8"?>\r\n<modification>\r\n    <name>Opencart News 2.x</name>\r\n    <code>opencart_news</code>\r\n    <version>1.0.0</version>\r\n    <author>alexwaha</author>\r\n    <link>https://oc-help.com</link>\r\n  <file path="admin/controller/common/menu.php">\r\n    <operation>\r\n      <search><![CDATA[$data[''text_manufacturer''] = $this->language->get(''text_manufacturer'');]]></search>\r\n      <add position="after"><![CDATA[$data[''text_news''] = $this->language->get(''text_news'');]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[$data[''manufacturer''] = $this->url->link(''catalog/manufacturer'', ''token='' . $this->session->data[''token''], ''SSL'');]]></search>\r\n      <add position="after"><![CDATA[$data[''news''] = $this->url->link(''catalog/news'', ''token='' . $this->session->data[''token''], ''SSL'');]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path="admin/language/russian/common/menu.php">\r\n    <operation>\r\n      <search><![CDATA[$_[''text_manufacturer'']]]></search>\r\n      <add position="before"><![CDATA[$_[''text_news''] = ''Новости'';]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path="admin/language/english/common/menu.php">\r\n    <operation>\r\n      <search><![CDATA[$_[''text_manufacturer'']]]></search>\r\n      <add position="before"><![CDATA[$_[''text_news''] = ''News'';]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path="admin/view/template/common/menu.tpl">\r\n    <operation>\r\n      <search><![CDATA[<li><a href="<?php echo $information; ?>"><?php echo $text_information; ?></a></li>]]></search>\r\n      <add position="after"><![CDATA[<li id="news"><a href="<?php echo $news;?>"><?php echo $text_news;?></a></li>]]></add>\r\n    </operation>\r\n  </file>\r\n</modification>\r\n', 1, '2017-07-04 18:08:30'),
(14, 'Quick Login / Sign up', 'Quick Login / Sign up', 'Webmedialdh', '2x', '', '<?xml version="1.0" encoding="UTF-8"?>\r\n<modification>\r\n	<name>Quick Login / Sign up</name>\r\n	<version>2x</version>\r\n	<code>Quick Login / Sign up</code>\r\n	<author>Webmedialdh</author>\r\n	<!--CATALOG STARTS-->\r\n	<file path="catalog/view/theme/*/template/common/header.tpl">\r\n		<operation>\r\n			<search><![CDATA[<?php echo $telephone; ?></span></li>]]></search>\r\n			<add position="after"><![CDATA[\r\n		<?php if ($logged) { ?>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[<li><a href="<?php echo $wishlist; ?>"]]></search>\r\n			<add position="before"><![CDATA[<?php }else { ?>\r\n		<li class="quick-login"><a class="quick_signup"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $signin_or_register ?></span></a></li>\r\n		<?php } ?>\r\n		]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[</header>]]></search>\r\n			<add position="after"><![CDATA[\r\n<?php echo $quicksignup; ?>]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/controller/common/header.php">\r\n		<operation>\r\n			<search><![CDATA[if (file_exists(DIR_TEMPLATE . $this->config->get(''config_template'') . ''/template/common/header.tpl'')) {]]></search>\r\n			<add position="before"><![CDATA[\r\n		//XML\r\n		$data[''quicksignup''] = $this->load->controller(''common/quicksignup'');\r\n		$data[''signin_or_register''] = $this->language->get(''signin_or_register'');\r\n		\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/*/common/header.php">\r\n		<operation>\r\n			<search><![CDATA[// Text]]></search>\r\n			<add position="before"><![CDATA[//XML\r\n$_[''signin_or_register'']           = ''Sign In\\Register'';\r\n]]>			</add>\r\n		</operation>\r\n	</file>\r\n	<!--CATALOG ENDS-->\r\n</modification>', 1, '2017-07-11 13:09:50');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{"name":"Category","banner_id":"6","width":"182","height":"182","status":"1"}'),
(29, 'Firms', 'carousel', '{"name":"Firms","banner_id":"8","width":"92","height":"92","status":"1"}'),
(28, 'Home Page', 'featured', '{"name":"Home Page","product":["43","40","42","30"],"limit":"4","width":"260","height":"260","status":"1"}'),
(36, 'Продукты', 'slideshow', '{"name":"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u044b","banner_id":"7","width":"380","height":"560","status":"1"}'),
(31, 'Banner 1', 'banner', '{"name":"Banner 1","banner_id":"6","width":"182","height":"182","status":"1"}'),
(32, 'Видеообзоры', 'videopublisherwidget', '{"name":"\\u0412\\u0438\\u0434\\u0435\\u043e\\u043e\\u0431\\u0437\\u043e\\u0440\\u044b","videocollections":"0","limit":"5","custom_css":"","status":"1"}'),
(33, 'Новинки', 'latest', '{"name":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438","limit":"8","width":"260","height":"260","status":"1"}'),
(34, 'Популярные', 'bestseller', '{"name":"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435","limit":"8","width":"260","height":"260","status":"1"}'),
(40, 'Логин соц.сети', 'ulogin', '{"name":"\\u041b\\u043e\\u0433\\u0438\\u043d \\u0441\\u043e\\u0446.\\u0441\\u0435\\u0442\\u0438","uloginid":"1","type":"online","status":"1"}'),
(38, 'account_offline', 'ulogin', '{"name":"account_offline","uloginid":"1","type":"offline","status":"1"}'),
(39, 'account_lk_online', 'ulogin', '{"name":"account_lk_online","uloginid":null,"type":"online_edit","status":"1"}'),
(41, 'Последние новости', 'news', '{"name":"\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","width":"360","height":"260","limit":"3","desc_limit":"300","show_title":"1","show_icon":"0","status":"1"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_news`
--

CREATE TABLE IF NOT EXISTS `oc_news` (
  `news_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `viewed` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_news`
--

INSERT INTO `oc_news` (`news_id`, `status`, `image`, `date_added`, `viewed`) VALUES
(1, 1, 'catalog/news1.png', '2017-07-04', 25),
(2, 1, 'catalog/news2.png', '2017-07-04', 0),
(3, 1, 'catalog/news3.png', '2017-07-04', 18),
(4, 1, 'catalog/news2.png', '2017-07-04', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_news_description`
--

CREATE TABLE IF NOT EXISTS `oc_news_description` (
  `news_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_news_description`
--

INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'Treebox Plus - неоднозначные 220W от  SMOK', '&lt;p&gt;Среди огромного множества бокс — модов представленных за последнее время компанией SMOK практически затерялось устройство под названием Treebox. Причиной этому стало то, что большинство пользователей...&lt;/p&gt;', '', '', '', ''),
(2, 1, 'Limitless RDTA Plus by IJOY - не только  больше, а и круче', '&lt;p&gt;Совсем недавно, Илья рассказал нам про плод сотрудничества китайской компании IJOY, и американского производителя Limitless Mods — Limitless RDTA. Устройство моментально стало популярным, и стало одним из самых...&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(2, 2, 'Limitless RDTA Plus by IJOY - не только  больше, а и круче', '&lt;p&gt;Совсем недавно, Илья рассказал нам про плод сотрудничества китайской компании IJOY, и американского производителя Limitless Mods — Limitless RDTA. Устройство моментально стало популярным, и стало одним из самых...&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(1, 2, 'Treebox Plus - неоднозначные 220W от  SMOK', '&lt;p&gt;Среди огромного множества бокс — модов представленных за последнее время компанией SMOK практически затерялось устройство под названием Treebox. Причиной этому стало то, что большинство пользователей...&lt;/p&gt;', '', '', '', ''),
(3, 2, 'Doctor Grimes - незаурядный премиум  из России', '&lt;p&gt;Говоря о жидкостях для электронных сигарет премиум класса, мы обычно вспоминаем про продукцию зарубежных производителей преимущественно из США, Великобритании, Франции, Малайзии и т.д...&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(3, 1, 'Doctor Grimes - незаурядный премиум  из России', '&lt;p&gt;Говоря о жидкостях для электронных сигарет премиум класса, мы обычно вспоминаем про продукцию зарубежных производителей преимущественно из США, Великобритании, Франции, Малайзии и т.д...Говоря о жидкостях для электронных сигарет премиум класса, мы обычно вспоминаем про продукцию зарубежных производителей преимущественно из США, Великобритании, Франции, Малайзии и т.д...&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(4, 2, 'Limitless RDTA Plus by IJOY - не только  больше, а и круче', '&lt;p&gt;Совсем недавно, Илья рассказал нам про плод сотрудничества китайской компании IJOY, и американского производителя Limitless Mods — Limitless RDTA. Устройство моментально стало популярным, и стало одним из самых...&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(4, 1, 'Limitless RDTA Plus by IJOY - не только  больше, а и круче', '&lt;p&gt;Совсем недавно, Илья рассказал нам про плод сотрудничества китайской компании IJOY, и американского производителя Limitless Mods — Limitless RDTA. Устройство моментально стало популярным, и стало одним из самых...&lt;br&gt;&lt;/p&gt;', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_news_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_news_to_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_news_to_store`
--

INSERT INTO `oc_news_to_store` (`news_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option`
--

CREATE TABLE IF NOT EXISTS `oc_ocfilter_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(16) NOT NULL DEFAULT 'checkbox',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `selectbox` tinyint(1) NOT NULL DEFAULT '0',
  `grouping` tinyint(2) NOT NULL DEFAULT '0',
  `color` tinyint(1) NOT NULL DEFAULT '0',
  `image` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=30012 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option`
--

INSERT INTO `oc_ocfilter_option` (`option_id`, `type`, `keyword`, `selectbox`, `grouping`, `color`, `image`, `status`, `sort_order`) VALUES
(1, 'checkbox', 'perekljuchatel', 0, 0, 0, 0, 0, 1),
(2, 'checkbox', 'flazhok', 0, 0, 0, 0, 0, 2),
(4, 'checkbox', 'tekst', 0, 0, 0, 0, 0, 3),
(5, 'checkbox', 'spisok', 0, 0, 0, 0, 0, 4),
(6, 'checkbox', 'tekstovaja-oblast', 0, 0, 0, 0, 0, 5),
(7, 'checkbox', 'fajl', 0, 0, 0, 0, 0, 6),
(8, 'checkbox', 'data', 0, 0, 0, 0, 0, 7),
(9, 'checkbox', 'vremja', 0, 0, 0, 0, 0, 8),
(10, 'checkbox', 'data-i-vremja', 0, 0, 0, 0, 0, 9),
(11, 'checkbox', 'razmer', 0, 0, 0, 0, 1, 1),
(12, 'checkbox', 'data-dostavki', 0, 0, 0, 0, 0, 11),
(30001, 'checkbox', 'description', 0, 0, 0, 0, 1, 1),
(30002, 'checkbox', 'no-of-cores', 0, 0, 0, 0, 0, 5),
(30003, 'checkbox', 'clockspeed', 0, 0, 0, 0, 0, 3),
(30004, 'checkbox', 'test-1', 0, 0, 0, 0, 0, 1),
(30005, 'checkbox', 'test-2', 0, 0, 0, 0, 0, 2),
(30006, 'checkbox', 'test-3', 0, 0, 0, 0, 0, 3),
(30007, 'checkbox', 'test-4', 0, 0, 0, 0, 0, 4),
(30008, 'checkbox', 'test-5', 0, 0, 0, 0, 0, 5),
(30009, 'checkbox', 'test-6', 0, 0, 0, 0, 0, 6),
(30010, 'checkbox', 'test-7', 0, 0, 0, 0, 0, 7),
(30011, 'checkbox', 'test-8', 0, 0, 0, 0, 0, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_ocfilter_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` tinyint(2) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `postfix` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_description`
--

INSERT INTO `oc_ocfilter_option_description` (`option_id`, `language_id`, `name`, `postfix`, `description`) VALUES
(1, 1, 'Переключатель', '', ''),
(2, 1, 'Флажок', '', ''),
(4, 1, 'Текст', '', ''),
(6, 1, 'Текстовая область', '', ''),
(8, 1, 'Дата', '', ''),
(7, 1, 'Файл', '', ''),
(5, 1, 'Список', '', ''),
(9, 1, 'Время', '', ''),
(10, 1, 'Дата и Время', '', ''),
(12, 1, 'Дата доставки', '', ''),
(11, 1, 'Емкость', '', ''),
(1, 2, 'Radio', '', ''),
(2, 2, 'Checkbox', '', ''),
(4, 2, 'Text', '', ''),
(6, 2, 'Textarea', '', ''),
(8, 2, 'Date', '', ''),
(7, 2, 'File', '', ''),
(5, 2, 'Select', '', ''),
(9, 2, 'Time', '', ''),
(10, 2, 'Date &amp; Time', '', ''),
(12, 2, 'Delivery Date', '', ''),
(11, 2, 'Size', '', ''),
(30002, 1, 'No. of Cores', '', ''),
(30004, 1, 'test 1', '', ''),
(30005, 1, 'test 2', '', ''),
(30006, 1, 'test 3', '', ''),
(30007, 1, 'test 4', '', ''),
(30008, 1, 'test 5', '', ''),
(30009, 1, 'test 6', '', ''),
(30010, 1, 'test 7', '', ''),
(30011, 1, 'test 8', '', ''),
(30003, 1, 'Clockspeed', '', ''),
(30001, 1, 'Крепкость никотина', '', ''),
(30001, 2, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_ocfilter_option_to_category` (
  `option_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_to_category`
--

INSERT INTO `oc_ocfilter_option_to_category` (`option_id`, `category_id`) VALUES
(30002, 18),
(30004, 18),
(1, 20),
(2, 20),
(5, 20),
(11, 20),
(30001, 20),
(30002, 20),
(30003, 20),
(30004, 20),
(1, 28),
(2, 28),
(5, 28),
(30003, 28),
(5, 33);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_ocfilter_option_to_store` (
  `option_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_to_store`
--

INSERT INTO `oc_ocfilter_option_to_store` (`option_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(30001, 0),
(30002, 0),
(30003, 0),
(30004, 0),
(30005, 0),
(30006, 0),
(30007, 0),
(30008, 0),
(30009, 0),
(30010, 0),
(30011, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_ocfilter_option_value` (
  `value_id` bigint(20) NOT NULL,
  `option_id` int(11) NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `color` varchar(6) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4252452540 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_value`
--

INSERT INTO `oc_ocfilter_option_value` (`value_id`, `option_id`, `keyword`, `color`, `image`, `sort_order`) VALUES
(43, 1, 'large', '', '', 3),
(32, 1, 'small', '', '', 1),
(45, 2, 'flazhok-4', '', '', 4),
(44, 2, 'flazhok-3', '', '', 3),
(42, 5, 'zheltyj', '', '', 4),
(41, 5, 'zelenyj', '', '', 3),
(39, 5, 'krasnyj', '', '', 1),
(40, 5, 'sinij', '', '', 2),
(31, 1, 'medium', '', '', 2),
(23, 2, 'flazhok-1', '', '', 1),
(24, 2, 'flazhok-2', '', '', 2),
(48, 11, '60ml', '', '', 3),
(47, 11, '30ml', '', '', 2),
(46, 11, '15ml', '', '', 1),
(4252452532, 30002, '1', '', '', 0),
(2367533627, 30002, '4', '', '', 0),
(3457655122, 30003, '100mgts', '', '', 0),
(4229265604, 30004, '16gb', '', '', 0),
(1667934346, 30004, '8gb', '', '', 0),
(4252452533, 11, '100ml', '', '', 0),
(4252452534, 11, '120ml', '', '', 1),
(4252452539, 30001, '8mg', '', '', 4),
(4252452538, 30001, '6mg', '', '', 3),
(4252452537, 30001, '3mg', '', '', 2),
(4252452536, 30001, '1-5mg', '', '', 1),
(4252452535, 30001, '0mg', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_ocfilter_option_value_description` (
  `value_id` bigint(20) NOT NULL,
  `option_id` int(11) NOT NULL,
  `language_id` tinyint(2) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_value_description`
--

INSERT INTO `oc_ocfilter_option_value_description` (`value_id`, `option_id`, `language_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 2, 1, 'Флажок 4'),
(44, 2, 1, 'Флажок 3'),
(31, 1, 1, 'Medium'),
(42, 5, 1, 'Желтый'),
(41, 5, 1, 'Зеленый'),
(39, 5, 1, 'Красный'),
(40, 5, 1, 'Синий'),
(23, 2, 1, 'Флажок 1'),
(24, 2, 1, 'Флажок 2'),
(48, 11, 2, '60мл'),
(48, 11, 1, '60мл'),
(47, 11, 2, '30мл'),
(43, 1, 2, 'Large'),
(32, 1, 2, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 1, 2, 'Medium'),
(42, 5, 2, 'Yellow'),
(41, 5, 2, 'Green'),
(39, 5, 2, 'Red'),
(40, 5, 2, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(47, 11, 1, '30мл'),
(46, 11, 2, '15мл'),
(46, 11, 1, '15мл'),
(4252452532, 30002, 1, '1'),
(2367533627, 30002, 1, '4'),
(3457655122, 30003, 1, '100мгц'),
(4229265604, 30004, 1, '16ГБ'),
(1667934346, 30004, 1, '8гб'),
(4252452532, 30002, 2, '1'),
(2367533627, 30002, 2, '4'),
(3457655122, 30003, 2, '100mhz'),
(4229265604, 30004, 2, '16gb'),
(1667934346, 30004, 2, '8gb'),
(4252452533, 11, 1, '100мл'),
(4252452533, 11, 2, '100мл'),
(4252452534, 11, 1, '120мл'),
(4252452534, 11, 2, '120мл'),
(4252452538, 30001, 2, '6мг'),
(4252452538, 30001, 1, '6мг'),
(4252452537, 30001, 2, '3мг'),
(4252452537, 30001, 1, '3мг'),
(4252452536, 30001, 2, '1,5мг'),
(4252452536, 30001, 1, '1,5мг'),
(4252452535, 30001, 2, '0мг'),
(4252452535, 30001, 1, '0мг'),
(4252452539, 30001, 1, '8мг'),
(4252452539, 30001, 2, '8мг');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_value_to_product`
--

CREATE TABLE IF NOT EXISTS `oc_ocfilter_option_value_to_product` (
  `ocfilter_option_value_to_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value_id` bigint(20) NOT NULL,
  `slide_value_min` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `slide_value_max` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_value_to_product`
--

INSERT INTO `oc_ocfilter_option_value_to_product` (`ocfilter_option_value_to_product_id`, `product_id`, `option_id`, `value_id`, `slide_value_min`, `slide_value_max`) VALUES
(96, 42, 5, 42, '0.0000', '0.0000'),
(95, 42, 5, 41, '0.0000', '0.0000'),
(94, 42, 5, 40, '0.0000', '0.0000'),
(93, 42, 5, 39, '0.0000', '0.0000'),
(92, 42, 30003, 3457655122, '0.0000', '0.0000'),
(91, 42, 2, 45, '0.0000', '0.0000'),
(90, 42, 2, 44, '0.0000', '0.0000'),
(89, 42, 2, 24, '0.0000', '0.0000'),
(88, 42, 2, 23, '0.0000', '0.0000'),
(87, 42, 1, 43, '0.0000', '0.0000'),
(86, 42, 1, 31, '0.0000', '0.0000'),
(12, 35, 11, 47, '0.0000', '0.0000'),
(13, 35, 11, 48, '0.0000', '0.0000'),
(14, 30, 5, 40, '0.0000', '0.0000'),
(15, 30, 5, 39, '0.0000', '0.0000'),
(16, 43, 30002, 4252452532, '0.0000', '0.0000'),
(99, 47, 30002, 2367533627, '0.0000', '0.0000'),
(18, 43, 30004, 1667934346, '0.0000', '0.0000'),
(85, 42, 1, 32, '0.0000', '0.0000'),
(98, 47, 30004, 4229265604, '0.0000', '0.0000'),
(97, 47, 30001, 4252452536, '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_value_to_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_ocfilter_option_value_to_product_description` (
  `product_id` int(11) NOT NULL,
  `value_id` bigint(20) NOT NULL,
  `option_id` int(11) NOT NULL,
  `language_id` tinyint(2) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_page`
--

CREATE TABLE IF NOT EXISTS `oc_ocfilter_page` (
  `ocfilter_page_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `ocfilter_params` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'radio', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `mf_tooltip` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`, `mf_tooltip`) VALUES
(1, 1, 'Переключатель', NULL),
(4, 1, 'Текст', NULL),
(6, 1, 'Текстовая область', NULL),
(8, 1, 'Дата', NULL),
(7, 1, 'Файл', NULL),
(5, 1, 'Список', NULL),
(9, 1, 'Время', NULL),
(10, 1, 'Дата и Время', NULL),
(12, 1, 'Дата доставки', NULL),
(11, 1, 'Размер', NULL),
(1, 2, 'Radio', NULL),
(2, 1, 'Никотин', NULL),
(4, 2, 'Text', NULL),
(6, 2, 'Textarea', NULL),
(8, 2, 'Date', NULL),
(7, 2, 'File', NULL),
(5, 2, 'Select', NULL),
(9, 2, 'Time', NULL),
(10, 2, 'Date &amp; Time', NULL),
(12, 2, 'Delivery Date', NULL),
(11, 2, 'Size', NULL),
(2, 2, 'Никотин', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(24, 2, '', 2),
(23, 2, '', 1),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Желтый'),
(41, 1, 5, 'Зеленый'),
(39, 1, 5, 'Красный'),
(40, 1, 5, 'Синий'),
(44, 2, 2, '6мг'),
(44, 1, 2, '6мг'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(24, 2, 2, '3мг'),
(24, 1, 2, '3мг'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, '0мг'),
(23, 1, 2, '0мг'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2016-00', 0, 'Мой Магазин', 'http://ghostly-fog/', 0, 1, 'qqq', 'qqq', 'qqq@qqq.com', '', '7777777777', '[]', 'qqq', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', 'qqq', '', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', 'Fast motherfucker!!!', '197.0000', 2, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-06-30 23:51:37', '2017-07-01 00:01:30'),
(2, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, 'Fyn jy', 'qqq', 'qqq@qqq.com', '+380638336600', '7777777777', '[]', 'Fyn jy', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', 'qqq', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', '', '409.0000', 1, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-02 13:08:36', '2017-07-02 13:08:39'),
(3, 0, 'INV-2016-00', 0, 'Мой Магазин', 'http://ghostly-fog/', 0, 1, '', '', 'alena.makarova1508@gmail.com', '+380638336677', '', '[]', '', '', '', '', '', '', '', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', '', '', '', '', '', '', '', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', '', '106.0000', 0, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-01 01:05:16', '2017-07-01 01:05:16'),
(4, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, 'Fyn jy', 'qqq', 'qqq@qqq.com', '+380638336600', '7777777777', '[]', 'Fyn jy', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', 'qqq', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', '', '2105.0000', 1, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-04 01:04:38', '2017-07-04 01:04:41'),
(5, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, 'Fyn jy', 'qqq', 'qqq@qqq.com', '+380638336600', '7777777777', '[]', 'Fyn jy', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', 'qqq', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', 'dhfyhd', '1805.0000', 1, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-04 15:10:28', '2017-07-04 15:10:32'),
(6, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, 'Fyn jy', 'qqq', 'qqq@qqq.com', '+380638336600', '7777777777', '[]', 'Fyn jy', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', 'qqq', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', '', '17005.0000', 1, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-04 15:11:15', '2017-07-04 15:11:16'),
(7, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, 'Fyn jy', 'qqq', 'qqq@qqq.com', '+380638336600', '7777777777', '[]', 'Fyn jy', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '', '', 'drgfsdgr', '10000.0000', 1, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-04 15:20:07', '2017-07-04 15:20:08'),
(8, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, 'Fyn jy', 'qqq', 'qqq@qqq.com', '+380638336600', '7777777777', '[]', 'Fyn jy', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', 'qqq', 'qqq', '', 'azaxzas', '', 'new', '55555', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', '', '105.0000', 0, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-04 21:12:41', '2017-07-04 21:12:41'),
(9, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, 'swswsws', 'sswswswsw', 'swswsw@mail.ru', '', '', '[]', 'swswsws', 'sswswswsw', '', '', '', '', '', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', 'htyhthty', '', '', 'htyhtyhtyh', '', '', 'htyht', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', '', '105.0000', 1, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-10 15:45:51', '2017-07-10 15:45:54'),
(10, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, 'swswsws', 'sswswswsw', 'swswsw@mail.ru', '', '', '[]', 'swswsws', 'sswswswsw', '', '', '', '', '', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', 'htyhthty', '', '', 'htyhtyhtyh', '', '', 'htyht', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Самовывоз', 'pickup.pickup', '', '50.0000', 0, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-11 23:12:32', '2017-07-11 23:12:32'),
(11, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, '', '', 'alena.makarova1508@gmail.com', '', '', '[]', '', '', '', '', '', '', '', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', '', '', '', '', '', '', '', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', '', '55.0000', 0, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-13 15:16:27', '2017-07-13 15:16:27'),
(12, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, '', '', 'alena.makarova1508@gmail.com', '', '', '[]', '', '', '', '', '', '', '', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', '', '', '', '', '', '', '', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', '', '1055.0000', 0, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-14 16:45:37', '2017-07-14 16:45:37'),
(13, 0, 'INV-2016-00', 0, 'Ghostly fog', 'http://ghostly-fog/', 0, 1, '', '', 'alena.makarova1508@gmail.com', '', '', '[]', '', '', '', '', '', '', '', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Оплата при получении', 'cod', '', '', '', '', '', '', '', 'Украина', 220, 'Харьков', 3487, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Фиксированная стоимость доставки', 'flat.flat', '', '1005.0000', 0, 0, '0.0000', 0, '', 1, 4, 'UAH', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-07-17 17:04:33', '2017-07-17 17:04:33');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2017-06-30 23:51:37'),
(2, 1, 5, 0, '', '2017-07-01 00:01:15'),
(3, 1, 8, 0, '', '2017-07-01 00:01:21'),
(4, 1, 2, 1, '', '2017-07-01 00:01:30'),
(5, 2, 1, 0, '', '2017-07-02 13:08:39'),
(6, 4, 1, 0, '', '2017-07-04 01:04:41'),
(7, 5, 1, 0, '', '2017-07-04 15:10:32'),
(8, 6, 1, 0, '', '2017-07-04 15:11:16'),
(9, 7, 1, 0, '', '2017-07-04 15:20:08'),
(10, 9, 1, 0, '', '2017-07-10 15:45:54');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(15, 5, 102, 225, 0, 'Дата доставки', '2018-04-22', 'date'),
(16, 8, 107, 225, 0, 'Дата доставки', '2011-04-22', 'date');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(8, 1, 40, 'iPhone', 'Товар 11', 2, '101.0000', '202.0000', '0.0000', 0),
(75, 3, 40, 'iPhone', 'Товар 11', 1, '101.0000', '101.0000', '0.0000', 0),
(78, 2, 40, 'iPhone', 'Товар 11', 4, '101.0000', '404.0000', '0.0000', 0),
(102, 5, 47, 'HP LP3065', 'Товар 21', 18, '100.0000', '1800.0000', '0.0000', 5400),
(98, 4, 48, 'iPod Classic', 'Товар 20', 21, '100.0000', '2100.0000', '0.0000', 0),
(104, 6, 46, 'Sony VAIO', 'Товар 19', 17, '1000.0000', '17000.0000', '0.0000', 0),
(106, 7, 43, 'MacBook', 'Товар 16', 20, '500.0000', '10000.0000', '0.0000', 12000),
(107, 8, 47, 'HP LP3065', 'Товар 21', 2, '50.0000', '100.0000', '0.0000', 600),
(118, 9, 47, 'HP LP3065', 'Товар 21', 2, '50.0000', '100.0000', '0.0000', 600),
(121, 10, 47, 'HP LP3065', 'Товар 21', 1, '50.0000', '50.0000', '0.0000', 300),
(124, 11, 47, 'HP LP3065', 'Товар 21', 1, '50.0000', '50.0000', '0.0000', 300),
(144, 12, 47, 'HP LP3065', 'Товар 21', 1, '50.0000', '50.0000', '0.0000', 300),
(143, 12, 43, 'MacBook', 'Товар 16', 2, '500.0000', '1000.0000', '0.0000', 1200),
(145, 13, 46, 'Sony VAIO', 'Товар 19', 1, '1000.0000', '1000.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Ожидание'),
(2, 1, 'В обработке'),
(3, 1, 'Доставлено'),
(7, 1, 'Отменено'),
(5, 1, 'Сделка завершена'),
(8, 1, 'Возврат'),
(9, 1, 'Отмена и аннулирование'),
(10, 1, 'Неудавшийся'),
(11, 1, 'Возмещенный'),
(12, 1, 'Полностью измененный'),
(13, 1, 'Полный возврат'),
(1, 2, 'Pending'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=359 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(25, 1, 'coupon', 'Купон (1111)', '-10.0000', 4),
(24, 1, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(23, 1, 'sub_total', 'Предварительная стоимость', '202.0000', 1),
(26, 1, 'total', 'Итого', '197.0000', 9),
(197, 2, 'total', 'Итого', '409.0000', 9),
(196, 2, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(195, 2, 'sub_total', 'Предварительная стоимость', '404.0000', 1),
(188, 3, 'total', 'Итого', '106.0000', 9),
(187, 3, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(186, 3, 'sub_total', 'Предварительная стоимость', '101.0000', 1),
(244, 4, 'total', 'Итого', '2105.0000', 9),
(243, 4, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(242, 4, 'sub_total', 'Предварительная стоимость', '2100.0000', 1),
(256, 5, 'total', 'Итого', '1805.0000', 9),
(254, 5, 'sub_total', 'Предварительная стоимость', '1800.0000', 1),
(255, 5, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(261, 6, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(260, 6, 'sub_total', 'Предварительная стоимость', '17000.0000', 1),
(262, 6, 'total', 'Итого', '17005.0000', 9),
(265, 7, 'sub_total', 'Предварительная стоимость', '10000.0000', 1),
(266, 7, 'total', 'Итого', '10000.0000', 9),
(267, 8, 'sub_total', 'Предварительная стоимость', '100.0000', 1),
(268, 8, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(269, 8, 'total', 'Итого', '105.0000', 9),
(302, 9, 'total', 'Итого', '105.0000', 9),
(301, 9, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(300, 9, 'sub_total', 'Предварительная стоимость', '100.0000', 1),
(311, 10, 'total', 'Итого', '50.0000', 9),
(310, 10, 'shipping', 'Самовывоз', '0.0000', 3),
(309, 10, 'sub_total', 'Предварительная стоимость', '50.0000', 1),
(320, 11, 'total', 'Итого', '55.0000', 9),
(319, 11, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(318, 11, 'sub_total', 'Предварительная стоимость', '50.0000', 1),
(355, 12, 'total', 'Итого', '1055.0000', 9),
(354, 12, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(353, 12, 'sub_total', 'Предварительная стоимость', '1050.0000', 1),
(356, 13, 'sub_total', 'Предварительная стоимость', '1000.0000', 1),
(357, 13, 'shipping', 'Фиксированная стоимость доставки', '5.0000', 3),
(358, 13, 'total', 'Итого', '1005.0000', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_posts`
--

CREATE TABLE IF NOT EXISTS `oc_posts` (
  `posts_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `module` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_posts_description`
--

CREATE TABLE IF NOT EXISTS `oc_posts_description` (
  `posts_description_id` int(11) NOT NULL,
  `posts_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `short_description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,2) NOT NULL DEFAULT '0.00',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,2) NOT NULL DEFAULT '0.00',
  `width` decimal(15,2) NOT NULL DEFAULT '0.00',
  `height` decimal(15,2) NOT NULL DEFAULT '0.00',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Товар 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40', 2, '0.00', '0.00', '0.00', 1, 1, 1, 0, 1, 1, '2009-02-03 16:06:50', '2011-09-30 01:05:39'),
(29, 'Товар 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00', 2, '0.00', '0.00', '0.00', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
(30, 'Товар 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00', 1, '0.00', '0.00', '0.00', 1, 1, 1, 0, 1, 8, '2009-02-03 16:59:00', '2011-09-30 01:05:23'),
(31, 'Товар 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00', 1, '0.00', '0.00', '0.00', 1, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2017-07-17 12:50:18'),
(32, 'Товар 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00', 1, '0.00', '0.00', '0.00', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2011-09-30 01:07:22'),
(33, 'Товар 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00', 1, '0.00', '0.00', '0.00', 2, 1, 1, 0, 1, 1, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
(34, 'Товар 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00', 1, '0.00', '0.00', '0.00', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2011-09-30 01:07:17'),
(35, 'Товар 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00', 1, '0.00', '0.00', '0.00', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2011-09-30 01:06:17'),
(36, 'Товар 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00', 1, '0.00', '0.00', '0.00', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2017-07-06 15:14:35'),
(40, 'Товар 11', '', '', '', '', '', '', '', 964, 5, 'catalog/demo/iphone_1.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00', 1, '0.00', '0.00', '0.00', 1, 1, 1, 0, 1, 30, '2009-02-03 21:07:12', '2011-09-30 01:06:53'),
(41, 'Товар 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/imac_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00', 1, '0.00', '0.00', '0.00', 1, 1, 1, 0, 1, 1, '2009-02-03 21:07:26', '2011-09-30 01:06:44'),
(42, 'Товар 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50', 1, '1.00', '2.00', '3.00', 1, 1, 2, 0, 1, 49, '2009-02-03 21:07:37', '2017-07-14 16:55:57'),
(43, 'Товар 16', '', '', '', '', '', '', '', 909, 5, 'catalog/demo/macbook_1.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00', 1, '0.00', '0.00', '0.00', 2, 1, 1, 0, 1, 92, '2009-02-03 21:07:49', '2011-09-30 01:05:46'),
(44, 'Товар 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00', 1, '0.00', '0.00', '0.00', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2011-09-30 01:05:53'),
(45, 'Товар 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, '2000.0000', 0, 100, '2009-02-03', '0.00', 1, '0.00', '0.00', '0.00', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2011-09-15 22:22:01'),
(46, 'Товар 19', '', '', '', '', '', '', '', 983, 5, 'catalog/beardwape.png', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00', 1, '0.00', '0.00', '0.00', 2, 1, 1, 0, 1, 1, '2009-02-03 21:08:29', '2017-07-03 16:18:51'),
(47, 'Товар 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/hogcob.png', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00', 1, '0.00', '0.00', '0.00', 1, 0, 1, 0, 1, 191, '2009-02-03 21:08:40', '2017-07-17 16:44:31'),
(48, 'Товар 20', 'test 1', '', '', '', '', '', 'test 2', 974, 5, 'catalog/morningdaw.png', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00', 1, '0.00', '0.00', '0.00', 2, 1, 1, 0, 1, 8, '2009-02-08 17:21:51', '2017-07-13 14:55:55'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/kiloblack.png', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00', 1, '0.00', '0.00', '0.00', 1, 1, 1, 1, 1, 8, '2011-04-26 08:57:34', '2017-07-03 16:17:37');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 1, '1'),
(43, 4, 1, '8гб'),
(42, 11, 2, '3мг'),
(47, 3, 2, '60'),
(43, 2, 2, '1'),
(47, 4, 1, '30/70'),
(43, 4, 2, '8gb'),
(42, 11, 1, '3мг'),
(47, 3, 1, '60'),
(42, 10, 2, '70/30'),
(42, 10, 1, '70/30'),
(42, 9, 2, 'США'),
(42, 9, 1, 'США'),
(42, 3, 2, '60мл'),
(42, 3, 1, '60мл'),
(47, 4, 2, '30/70');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
(42, 2, 'Apple Cinema 30&quot;', '&lt;p&gt;&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there''s no limit to what you can achieve.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple''s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;h3 style=&quot;font-family: ''Open Sans'', sans-serif; color: rgb(102, 102, 102);&quot;&gt;Features:&lt;/h3&gt;&lt;p&gt;Unrivaled display performance&lt;/p&gt;&lt;ul&gt;&lt;li&gt;30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;&lt;li&gt;Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;&lt;li&gt;Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;&lt;li&gt;Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;&lt;li&gt;Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;&lt;li&gt;Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;&lt;li&gt;Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Simple setup and operation&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;&lt;li&gt;Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;&lt;li&gt;Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Sleek, elegant design&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Huge virtual workspace, very small footprint.&lt;/li&gt;&lt;li&gt;Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;&lt;li&gt;Unique hinge design for effortless adjustment&lt;/li&gt;&lt;li&gt;Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;&lt;/ul&gt;&lt;h3 style=&quot;font-family: ''Open Sans'', sans-serif; color: rgb(102, 102, 102);&quot;&gt;Technical specifications&lt;/h3&gt;&lt;p&gt;&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;2560 x 1600 pixels (optimum resolution)&lt;/li&gt;&lt;li&gt;2048 x 1280&lt;/li&gt;&lt;li&gt;1920 x 1200&lt;/li&gt;&lt;li&gt;1280 x 800&lt;/li&gt;&lt;li&gt;1024 x 640&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;16.7 million&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;170° horizontal; 170° vertical&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;700:1&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;16 ms&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Antiglare hardcoat&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Display Power,&lt;/li&gt;&lt;li&gt;System sleep, wake&lt;/li&gt;&lt;li&gt;Brightness&lt;/li&gt;&lt;li&gt;Monitor tilt&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;Cable&lt;/p&gt;&lt;ul&gt;&lt;li&gt;DVI (Digital Visual Interface)&lt;/li&gt;&lt;li&gt;FireWire 400&lt;/li&gt;&lt;li&gt;USB 2.0&lt;/li&gt;&lt;li&gt;DC power (24 V)&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Connectors&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Two-port, self-powered USB 2.0 hub&lt;/li&gt;&lt;li&gt;Two FireWire 400 ports&lt;/li&gt;&lt;li&gt;Kensington security port&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;&lt;li&gt;Maximum power when operating: 150W&lt;/li&gt;&lt;li&gt;Energy saver mode: 3W or less&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;&lt;li&gt;Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;&lt;li&gt;Operating humidity: 20% to 80% noncondensing&lt;/li&gt;&lt;li&gt;Maximum operating altitude: 10,000 feet&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;FCC Part 15 Class B&lt;/li&gt;&lt;li&gt;EN55022 Class B&lt;/li&gt;&lt;li&gt;EN55024&lt;/li&gt;&lt;li&gt;VCCI Class B&lt;/li&gt;&lt;li&gt;AS/NZS 3548 Class B&lt;/li&gt;&lt;li&gt;CNS 13438 Class B&lt;/li&gt;&lt;li&gt;ICES-003 Class B&lt;/li&gt;&lt;li&gt;ISO 13406 part 2&lt;/li&gt;&lt;li&gt;MPR II&lt;/li&gt;&lt;li&gt;IEC 60950&lt;/li&gt;&lt;li&gt;UL 60950&lt;/li&gt;&lt;li&gt;CSA 60950&lt;/li&gt;&lt;li&gt;EN60950&lt;/li&gt;&lt;li&gt;ENERGY STAR&lt;/li&gt;&lt;li&gt;TCO ''03&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;30-inch Apple Cinema HD Display&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Height: 21.3 inches (54.3 cm)&lt;/li&gt;&lt;li&gt;Width: 27.2 inches (68.8 cm)&lt;/li&gt;&lt;li&gt;Depth: 8.46 inches (21.5 cm)&lt;/li&gt;&lt;li&gt;Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Mac Pro, all graphic options&lt;/li&gt;&lt;li&gt;MacBook Pro&lt;/li&gt;&lt;li&gt;Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;&lt;li&gt;Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;&lt;li&gt;PowerBook G4 with dual-link DVI support&lt;/li&gt;&lt;li&gt;Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;&lt;/ul&gt;', '', 'Apple Cinema 30&quot;', '', '', ''),
(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'Canon EOS 5D', '', '', ''),
(31, 2, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon''s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon''s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera''s new features. The D300 features a new 51-point autofocus system with Nikon''s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera''s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon''s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', '', ''),
(36, 2, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', '', ''),
(46, 2, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel''s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', '', ''),
(47, 2, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you''re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', 'iPod Touch', '', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', '', ''),
(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', '', ''),
(35, 1, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', '', ''),
(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'HTC Touch HD', '', '', ''),
(30, 2, 'Canon EOS 5D', '&lt;p&gt;Canon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) äë&lt;br&gt;&lt;/p&gt;', '', 'Canon EOS 5D', '', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', '', ''),
(49, 2, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon''s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon''s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera''s new features. The D300 features a new 51-point autofocus system with Nikon''s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera''s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon''s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', '', ''),
(42, 1, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there''s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple''s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO ''03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30&quot;', '', '', ''),
(44, 2, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', '', ''),
(45, 2, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', '', ''),
(29, 2, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel''s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', '', ''),
(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you''re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', '', ''),
(32, 2, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', 'iPod Touch', '', '', ''),
(41, 2, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', '', ''),
(33, 2, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', '', ''),
(34, 2, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', '', ''),
(43, 2, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', '', ''),
(35, 2, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', '', ''),
(48, 2, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', '', ''),
(40, 2, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', '', ''),
(28, 2, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'HTC Touch HD', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=453 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(452, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(451, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(450, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2450 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2449, 47, 'catalog/beardwape.png', 4),
(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2351, 41, 'catalog/demo/imac_3.jpg', 0),
(1982, 40, 'catalog/demo/iphone_6.jpg', 0),
(2376, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(2375, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(1971, 43, 'catalog/demo/macbook_5.jpg', 0),
(1970, 43, 'catalog/demo/macbook_4.jpg', 0),
(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
(2444, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(2443, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(2370, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(2369, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(2435, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(2434, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(1981, 40, 'catalog/demo/iphone_2.jpg', 0),
(1980, 40, 'catalog/demo/iphone_5.jpg', 0),
(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2350, 41, 'catalog/demo/imac_2.jpg', 0),
(1979, 40, 'catalog/demo/iphone_3.jpg', 0),
(1978, 40, 'catalog/demo/iphone_4.jpg', 0),
(2433, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(2374, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2373, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(1969, 43, 'catalog/demo/macbook_2.jpg', 0),
(1968, 43, 'catalog/demo/macbook_3.jpg', 0),
(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
(2442, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(2441, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(2368, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(2367, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(2361, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
(2360, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
(2359, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
(2358, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
(2357, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
(2356, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
(2440, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2439, 42, 'catalog/demo/canon_logo.jpg', 0),
(2438, 42, 'catalog/demo/hp_1.jpg', 0),
(2437, 42, 'catalog/demo/compaq_presario.jpg', 0),
(2436, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2448, 47, 'catalog/productthumb4.png', 3),
(2447, 47, 'catalog/productthumb3.png', 2),
(2446, 47, 'catalog/productthumb2.png', 1),
(2445, 47, 'catalog/productthub1.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(227, 47, 2, '', 0),
(220, 42, 10, '2011-02-20 22:25', 1),
(221, 42, 9, '22:25', 1),
(223, 42, 2, '', 1),
(209, 42, 6, '', 1),
(226, 30, 5, '', 1),
(217, 42, 5, '', 1),
(208, 42, 4, 'test', 1),
(219, 42, 8, '2011-02-20', 1),
(222, 42, 7, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,2) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00', '+'),
(11, 223, 42, 2, 23, 3998, 1, '40.0000', '+', 0, '+', '40.00', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00', '+'),
(19, 227, 47, 2, 44, 22, 1, '222222.0000', '+', 22, '+', '22.00', '+'),
(18, 227, 47, 2, 24, 12, 1, '222.0000', '+', 2, '+', '70.00', '+'),
(17, 227, 47, 2, 23, 5, 1, '150.0000', '+', 70, '+', '60.00', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=562 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(560, 42, 1, 100),
(561, 47, 1, 300),
(379, 28, 1, 400),
(329, 43, 1, 600),
(339, 29, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(425, 35, 1, 0),
(345, 33, 1, 0),
(545, 41, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(546, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=454 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(452, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00'),
(453, 47, 1, 1, '50.0000', '2017-07-04', '2017-08-06');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`, `main_category`) VALUES
(28, 20, 0),
(29, 20, 0),
(30, 20, 0),
(33, 20, 0),
(31, 20, 0),
(35, 20, 0),
(40, 20, 0),
(41, 27, 0),
(42, 20, 1),
(36, 18, 1),
(43, 18, 0),
(43, 20, 0),
(44, 18, 0),
(44, 20, 0),
(45, 18, 0),
(46, 20, 0),
(46, 18, 1),
(47, 20, 0),
(47, 18, 1),
(48, 20, 1),
(31, 18, 1),
(49, 57, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(31, 0, 1),
(49, 0, 0),
(48, 0, 0),
(47, 0, 0),
(46, 0, 0),
(36, 0, 0),
(42, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_pvr_collection`
--

CREATE TABLE IF NOT EXISTS `oc_pvr_collection` (
  `collection_id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_pvr_description`
--

CREATE TABLE IF NOT EXISTS `oc_pvr_description` (
  `pvr_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `image_link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_pvr_description`
--

INSERT INTO `oc_pvr_description` (`pvr_id`, `language_id`, `author`, `slug`, `link`, `video_link`, `image_link`, `title`, `text`) VALUES
(1, 1, 'Alena author', 'coolUrl', '//ghostly-fog/image/catalog/luchshajaelektronnajasigareta2017.mp4', '', '//ghostly-fog/image/catalog/video0.png', 'First video', '<p>Bla bla bla</p><p><br></p>'),
(1, 2, 'First video', 'First video', '//ghostly-fog/image/catalog/luchshajaelektronnajasigareta2017.mp4', '', '//ghostly-fog/image/catalog/db-devs.jpg', 'First video', '<p><br></p>'),
(2, 1, 'АНдрей', 'дфдф', '//ghostly-fog/image/catalog/simple_vape_tricks_everyone_should_know_(moscatalogue.ru).mp4', '', '//ghostly-fog/image/catalog/video4.png', 'Знаменитости и сигареты lalalalalalalalalala', '<p><br></p>'),
(2, 2, 'xsxs', 'xsxsx', '//ghostly-fog/image/catalog/luchshajaelektronnajasigareta2017.mp4', '', '//ghostly-fog/image/catalog/tvaqnenmyas.jpg', 'Знаменитости и сигареты', '<p><br></p>'),
(3, 1, 'Olga', 'asas', '//ghostly-fog/image/catalog/luchshajaelektronnajasigareta2017.mp4', '', '//ghostly-fog/image/catalog/video3.png', 'Some video', '<p><br></p>'),
(3, 2, 'Olga', 'dsds', '//ghostly-fog/image/catalog/luchshajaelektronnajasigareta2017.mp4', '', '//ghostly-fog/image/catalog/hogcob.png', 'Some video', '<p><br></p>'),
(4, 1, 'Natali', 'desds', '//ghostly-fog/image/catalog/simple_vape_tricks_everyone_should_know_(moscatalogue.ru).mp4', '', '//ghostly-fog/image/catalog/video2.png', 'Some video2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium amet cumque deleniti, exercitationem expedita hic magni neque officia voluptatibus voluptatum. Asperiores debitis dolore doloremque ducimus perferendis velit veniam. Laboriosam, maxime.'),
(4, 2, 'Lena', 'dasds', '//ghostly-fog/image/catalog/luchshajaelektronnajasigareta2017.mp4', '', '//ghostly-fog/image/catalog/morningdaw.png', 'Some video 3', '<p><br></p>'),
(5, 1, 'Dasha', 'fdsdf', '//ghostly-fog/image/catalog/simple_vape_tricks_everyone_should_know_(moscatalogue.ru).mp4', '', '//ghostly-fog/image/catalog/video1.png', 'Some video 4', 'Lorem ipsum dolor sit , consectetur adipisicing elit. Accusantium amet cumque deleniti, exercitationem expedita hic magni neque officia voluptatibus voluptatum. Asperiores debitis dolore doloremque ducimus perferendis velit veniam. Laboriosam, maxime ipsum dolor sit , consectetur adipisicing elit. Accusantium amet cumque deleniti, exercitationem expedita hic magni neque officia voluptatibus voluptatum. Asperiores debitis dolore doloremque ducimus perferendis velit veniam. Laboriosam, maxime..'),
(5, 2, 'Dasha', 'sds', '//ghostly-fog/image/catalog/simple_vape_tricks_everyone_should_know_(moscatalogue.ru).mp4', '', '//ghostly-fog/image/catalog/beardwape.png', 'Some video 4', '<p><br></p>');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_pvr_to_product`
--

CREATE TABLE IF NOT EXISTS `oc_pvr_to_product` (
  `pvr_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_pvr_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_pvr_to_store` (
  `pvr_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_pvr_to_store`
--

INSERT INTO `oc_pvr_to_store` (`pvr_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Возвращены средства'),
(2, 1, 'Выдан в кредит'),
(3, 1, 'Отправлена замена (отправлен другой товар для замены)'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Получен/доставлен неисправным (сломанным)'),
(2, 1, 'Получен не тот (ошибочный) товар'),
(4, 1, 'Ошибочный, пожалуйста, укажите/приложите подробности'),
(5, 1, 'Другое (другая причина), пожалуйста, укажите/приложите подробности'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Рассматриваемый / находящийся в '),
(3, 1, 'Готов (к отправке) / или Заверше'),
(2, 1, 'Заказ "висит" в ожидании поступл'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 47, 0, 'swswswsw', 'swswswswswswsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 3, 0, '2017-07-07 18:11:14', '2017-07-10 11:39:12'),
(2, 43, 0, 'Alenka', 'gtgtgtgtgtgttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', 3, 1, '2017-07-10 13:43:25', '2017-07-10 13:43:48'),
(3, 43, 0, 'swswswswsws', 'wswswwswsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 4, 0, '2017-07-10 14:04:17', '0000-00-00 00:00:00'),
(4, 43, 0, 'zzzzzzzzzzzzz', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', 3, 0, '2017-07-10 14:06:23', '0000-00-00 00:00:00'),
(5, 43, 0, 'Андрей', 'Все понравилось, вкус бесподобный.\r\nОбязательно закажу себе что-нибудь еще. \r\nСпасибо за быструю доставку.', 3, 1, '2017-07-10 14:34:02', '2017-07-10 14:34:23');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_nauthor`
--

CREATE TABLE IF NOT EXISTS `oc_sb_nauthor` (
  `nauthor_id` int(11) NOT NULL,
  `adminid` varchar(64) COLLATE utf8_bin NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_nauthor_description`
--

CREATE TABLE IF NOT EXISTS `oc_sb_nauthor_description` (
  `nauthor_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `ctitle` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_ncategory`
--

CREATE TABLE IF NOT EXISTS `oc_sb_ncategory` (
  `ncategory_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_ncategory_description`
--

CREATE TABLE IF NOT EXISTS `oc_sb_ncategory_description` (
  `ncategory_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_ncategory_to_group`
--

CREATE TABLE IF NOT EXISTS `oc_sb_ncategory_to_group` (
  `ncategory_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_ncategory_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_sb_ncategory_to_layout` (
  `ncategory_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_ncategory_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_sb_ncategory_to_store` (
  `ncategory_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_ncomments`
--

CREATE TABLE IF NOT EXISTS `oc_sb_ncomments` (
  `ncomment_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `language_id` int(2) NOT NULL,
  `reply_id` int(11) NOT NULL DEFAULT '0',
  `author` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_news`
--

CREATE TABLE IF NOT EXISTS `oc_sb_news` (
  `news_id` int(11) NOT NULL,
  `nauthor_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `acom` int(1) NOT NULL DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `image2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `gal_thumb_w` int(5) NOT NULL,
  `gal_thumb_h` int(5) NOT NULL,
  `gal_popup_w` int(5) NOT NULL,
  `gal_popup_h` int(5) NOT NULL,
  `gal_slider_h` int(4) NOT NULL,
  `gal_slider_t` int(1) NOT NULL,
  `date_pub` datetime DEFAULT NULL,
  `gal_slider_w` int(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_sb_news`
--

INSERT INTO `oc_sb_news` (`news_id`, `nauthor_id`, `status`, `image`, `acom`, `date_added`, `date_updated`, `image2`, `sort_order`, `gal_thumb_w`, `gal_thumb_h`, `gal_popup_w`, `gal_popup_h`, `gal_slider_h`, `gal_slider_t`, `date_pub`, `gal_slider_w`) VALUES
(1, 0, 1, 'catalog/news1.png', 1, '2017-07-04 17:58:34', '2017-07-04 17:58:34', '', 1, 150, 150, 700, 700, 400, 1, '2017-07-03 17:58:34', 980);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_news_archive`
--

CREATE TABLE IF NOT EXISTS `oc_sb_news_archive` (
  `news_archive_id` int(11) NOT NULL,
  `store_id` int(3) NOT NULL,
  `year` int(4) NOT NULL,
  `months` varchar(1024) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_news_description`
--

CREATE TABLE IF NOT EXISTS `oc_sb_news_description` (
  `news_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctitle` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_bin NOT NULL,
  `ntags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cfield1` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cfield2` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cfield3` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cfield4` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_sb_news_description`
--

INSERT INTO `oc_sb_news_description` (`news_id`, `language_id`, `title`, `ctitle`, `description`, `description2`, `meta_desc`, `meta_key`, `ntags`, `cfield1`, `cfield2`, `cfield3`, `cfield4`) VALUES
(1, 1, 'Treebox Plus - неоднозначные 220W от  SMOK', '', '&lt;p&gt;Среди огромного множества бокс — модов представленных за последнее время компанией SMOK практически затерялось устройство под названием Treebox. Причиной этому стало то, что большинство пользователей...Среди огромного множества бокс — модов представленных за последнее время компанией SMOK практически затерялось устройство под названием Treebox. Причиной этому стало то, что большинство пользователей...Среди огромного множества бокс — модов представленных за последнее время компанией SMOK практически затерялось устройство под названием Treebox. Причиной этому стало то, что большинство пользователей...&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Среди огромного множества бокс — модов представленных за последнее время компанией SMOK практически затерялось устройство под названием Treebox. Причиной этому стало то, что большинство пользователей...&lt;br&gt;&lt;/p&gt;', '', '', '', '', '', '', ''),
(1, 2, 'Treebox Plus - неоднозначные 220W от  SMOK', '', '&lt;p&gt;Среди огромного множества бокс — модов представленных за последнее время компанией SMOK практически затерялось устройство под названием Treebox. Причиной этому стало то, что большинство пользователей...Среди огромного множества бокс — модов представленных за последнее время компанией SMOK практически затерялось устройство под названием Treebox. Причиной этому стало то, что большинство пользователей...Среди огромного множества бокс — модов представленных за последнее время компанией SMOK практически затерялось устройство под названием Treebox. Причиной этому стало то, что большинство пользователей...&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Среди огромного множества бокс — модов представленных за последнее время компанией SMOK практически затерялось устройство под названием Treebox. Причиной этому стало то, что большинство пользователей...&lt;br&gt;&lt;/p&gt;', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_news_gallery`
--

CREATE TABLE IF NOT EXISTS `oc_sb_news_gallery` (
  `news_image_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `text` text NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_news_related`
--

CREATE TABLE IF NOT EXISTS `oc_sb_news_related` (
  `news_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_news_to_group`
--

CREATE TABLE IF NOT EXISTS `oc_sb_news_to_group` (
  `news_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_sb_news_to_group`
--

INSERT INTO `oc_sb_news_to_group` (`news_id`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_news_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_sb_news_to_layout` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_sb_news_to_layout`
--

INSERT INTO `oc_sb_news_to_layout` (`news_id`, `store_id`, `layout_id`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_news_to_ncategory`
--

CREATE TABLE IF NOT EXISTS `oc_sb_news_to_ncategory` (
  `news_id` int(11) NOT NULL,
  `ncategory_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_news_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_sb_news_to_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_sb_news_to_store`
--

INSERT INTO `oc_sb_news_to_store` (`news_id`, `store_id`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_sb_news_video`
--

CREATE TABLE IF NOT EXISTS `oc_sb_news_video` (
  `news_video_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` longtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3676 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(1577, 0, 'flat', 'flat_sort_order', '1', 0),
(1576, 0, 'flat', 'flat_status', '1', 0),
(1575, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(1574, 0, 'flat', 'flat_tax_class_id', '0', 0),
(1573, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(2912, 0, 'videopublisher', 'videopublisher', '{"module_title":{"1":"Video Reviews","2":"Video Reviews"},"related_reviews_tab":"0","related_tab_title":{"1":"Related Videos","2":"Related Videos"},"show_future_reviews":"0","use_colorbox":"0","use_collections":"0","hide_related":"0","autoplay":"0","use_https":"0","colorbox_width":"700px","widget_limit":"3","dedicated_limit":"10","related_products":"0","fb_comments":"0","fb_comments_colorscheme":"light","fb_comments_order":"social","fb_comments_admins":"","fb_comments_appid":"","fb_comments_num":"10","LicensedOn":"1498777092","License":{"LicenseCode":"12345-12345-12345-12345-12345","customerName":"nobody","licenseDomainsUsed":["google.com"],"licenseExpireDate":"April 16, 2035"}}', 1),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(3674, 0, 'ulogin_sets', 'ulogin_sets_status', '1', 0),
(3666, 0, 'config', 'config_meta_keyword', '', 0),
(3667, 0, 'config', 'config_name', 'Ghostly fog', 0),
(3668, 0, 'config', 'config_owner', 'Мое Имя', 0),
(3669, 0, 'config', 'config_address', '', 0),
(3673, 0, 'ulogin_sets', 'ulogin_sets_group', '2', 0),
(3672, 0, 'ulogin_sets', 'ulogin_sets_uloginid', '1', 0),
(3665, 0, 'config', 'config_meta_description', 'Интернет магазин электронных сигарет и жидкостей в Украине.', 0),
(3650, 0, 'config', 'config_error_display', '1', 0),
(3651, 0, 'config', 'config_error_log', '1', 0),
(3652, 0, 'config', 'config_error_filename', 'error.log', 0),
(3653, 0, 'config', 'config_google_captcha_public', '', 0),
(3654, 0, 'config', 'config_google_captcha_secret', '', 0),
(3655, 0, 'config', 'config_google_captcha_status', '0', 0),
(3656, 0, 'config', 'config_sms_alert', '0', 0),
(3657, 0, 'config', 'config_sms_gatename', 'testsms', 0),
(3658, 0, 'config', 'config_sms_from', '', 0),
(3659, 0, 'config', 'config_sms_to', '', 0),
(3660, 0, 'config', 'config_sms_copy', '', 0),
(3661, 0, 'config', 'config_sms_message', '', 0),
(3662, 0, 'config', 'config_sms_gate_username', '', 0),
(3663, 0, 'config', 'config_sms_gate_password', '', 0),
(3664, 0, 'config', 'config_meta_title', 'Ghostly fog. Залил и запарил!', 0),
(3649, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(3648, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(3647, 0, 'config', 'config_file_max_size', '300000', 0),
(3640, 0, 'config', 'config_compression', '0', 0),
(3641, 0, 'config', 'config_mail_regexp', '/^[^@]+@.*.[a-z]{2,15}$/i', 0),
(3642, 0, 'config', 'config_editor_default', '0', 0),
(3643, 0, 'config', 'config_secure', '0', 0),
(3644, 0, 'config', 'config_password', '1', 0),
(3645, 0, 'config', 'config_shared', '0', 0),
(3646, 0, 'config', 'config_encryption', 'HD9ZwsfyYXB4hm1Z6nKdyQ3P6vET2iCHMip7NaST5oZ6EhjeewUsrlouk38zsT5WrIIaZOmzWUbf8YELoL5tML7HEcxgiGPns4YOyeee6aGJ7ke7Vopxh0uyH0ABropsUTYpolW6IVir38cxlch2qlYNodUBtc3nUImLnE6ovfn1w06IbZJSR7Mu18hYFoAU5a0JRFbH2lUoO17bZUbtYDhiBBsdsVq179OEQAYMNwnV9ALCtje6Q6TZQCH8R1DCNdv9jrRrs3LzPrktXo61YHFsbOyzRPzE43oRCKJabj74c75gbHb5O3f0dEm7Rcicsf9Vn3iaUUZXL2oHeXo6C82cGstHC9NSC2VMB3JKRwfOIvh6VprcUZyHZ83BCx18ilYZkveaUTmpA9xbfA3aitADkqBIWAd1j8NT1fV9OxW4UZQAKYBdsUuIFn1xZr1qj4lEUXlrbJXWFjesX6iNeVYzVnApWJf8JjyqqDerKyVJpBvWBd2x5GvPvHkaypSxfnwbjWAL8rFg3ih9cE1e3zJ26badCtX3ntxW0XkwgbnEfY5wzSQxCh01gQEfPw9RzWFKYKTgOThB0VOGszUMEkWaQo8pcoHMVJXUz15oDX5bkyWtNlUYFPMwxkTC4cyLcgKvUSGpIEW6FSl0ZeFffbFRPUUmuVzmH0L8lT5tWlSc96Any3b7EcdIJXqIjxLav4yPuKX8uJDpsizBvcvpOI3vB7Pbt4IshqA8AmDXAPhYTYbsmVToIb62yJMgp5V3J2w9PC1rNLYwjhLNVJjVUaM3LhHNAwwfDxGZrjIlJpJTVlLrc4zy2GhzsewlV5IlacKnyTtUQK3oruHAZmu6zZ59t3DtnCkRjdI1KaoFpB6FkX0xMgST1gW55AqhiDPFInHdxdMrjQi320qxwTSKdwStq0odcxA78r5VsPkNPfM5lwkqj4abKYsxUa9JjdxUEvl04StN6BnGrz0BHFiNIAilf1a9vPfV5B9othwlyamL6LIeK5dpG7VUI2UDBJjx', 0),
(3639, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(3638, 0, 'config', 'config_seo_url_postfix', '', 0),
(3637, 0, 'config', 'config_seo_url_include_path', '1', 0),
(3635, 0, 'config', 'config_seo_url', '1', 0),
(3636, 0, 'config', 'config_seo_url_type', 'seo_pro', 0),
(3634, 0, 'config', 'config_maintenance', '0', 0),
(3632, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(3633, 0, 'config', 'config_mail_alert', '', 0),
(3631, 0, 'config', 'config_mail_smtp_port', '25', 0),
(3630, 0, 'config', 'config_mail_smtp_password', '', 0),
(3629, 0, 'config', 'config_mail_smtp_username', '', 0),
(3628, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(3624, 0, 'config', 'config_ftp_root', '', 0),
(3625, 0, 'config', 'config_ftp_status', '0', 0),
(3626, 0, 'config', 'config_mail_protocol', 'mail', 0),
(3627, 0, 'config', 'config_mail_parameter', '', 0),
(3623, 0, 'config', 'config_ftp_password', '', 0),
(3622, 0, 'config', 'config_ftp_username', '', 0),
(3621, 0, 'config', 'config_ftp_port', '21', 0),
(3620, 0, 'config', 'config_ftp_hostname', 'ghostly-fog', 0),
(3618, 0, 'config', 'config_image_location_width', '268', 0),
(3619, 0, 'config', 'config_image_location_height', '50', 0),
(3616, 0, 'config', 'config_image_cart_width', '47', 0),
(3617, 0, 'config', 'config_image_cart_height', '47', 0),
(3615, 0, 'config', 'config_image_wishlist_height', '47', 0),
(3614, 0, 'config', 'config_image_wishlist_width', '47', 0),
(3613, 0, 'config', 'config_image_compare_height', '90', 0),
(3612, 0, 'config', 'config_image_compare_width', '90', 0),
(3611, 0, 'config', 'config_image_related_height', '80', 0),
(3610, 0, 'config', 'config_image_related_width', '80', 0),
(3609, 0, 'config', 'config_image_additional_height', '104', 0),
(3608, 0, 'config', 'config_image_additional_width', '90', 0),
(3607, 0, 'config', 'config_image_product_height', '260', 0),
(3606, 0, 'config', 'config_image_product_width', '260', 0),
(3604, 0, 'config', 'config_image_popup_width', '500', 0),
(3605, 0, 'config', 'config_image_popup_height', '500', 0),
(3603, 0, 'config', 'config_image_thumb_height', '495', 0),
(3602, 0, 'config', 'config_image_thumb_width', '438', 0),
(3600, 0, 'config', 'config_image_category_width', '80', 0),
(3601, 0, 'config', 'config_image_category_height', '80', 0),
(3599, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(3598, 0, 'config', 'config_logo', 'catalog/logotip.png', 0),
(834, 0, 'pcart', 'pcart_pcart', '1', 0),
(1603, 0, 'callback', 'callback_border_color', 'C02B21', 0),
(1602, 0, 'callback', 'callback_button_color', 'DE463B', 0),
(1601, 0, 'callback', 'callback_link_fixed', '0', 0),
(1600, 0, 'callback', 'callback_text', '0', 0),
(1599, 0, 'callback', 'callback_email', '0', 0),
(1598, 0, 'callback', 'callback_phone', '2', 0),
(1597, 0, 'callback', 'callback_time', '', 0),
(1596, 0, 'callback', 'callback_time_required', '0', 0),
(1595, 0, 'callback', 'callback_name', '2', 0),
(1594, 0, 'callback', 'callback_title', '0', 0),
(1593, 0, 'callback', 'callback_link_menu', '1', 0),
(1592, 0, 'callback', 'callback_status', '1', 0),
(3597, 0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
(3596, 0, 'config', 'config_captcha', '', 0),
(3595, 0, 'config', 'config_return_status_id', '2', 0),
(3594, 0, 'config', 'config_return_id', '0', 0),
(3593, 0, 'config', 'config_affiliate_mail', '0', 0),
(3592, 0, 'config', 'config_affiliate_id', '4', 0),
(3591, 0, 'config', 'config_affiliate_commission', '5', 0),
(3590, 0, 'config', 'config_affiliate_auto', '0', 0),
(3589, 0, 'config', 'config_affiliate_approval', '0', 0),
(3588, 0, 'config', 'config_stock_checkout', '0', 0),
(3587, 0, 'config', 'config_stock_warning', '0', 0),
(3584, 0, 'config', 'config_order_mail', '0', 0),
(3585, 0, 'config', 'config_api_id', '1', 0),
(3586, 0, 'config', 'config_stock_display', '0', 0),
(3583, 0, 'config', 'config_fraud_status_id', '2', 0),
(3582, 0, 'config', 'config_complete_status', '["3","5"]', 1),
(1578, 0, 'pickup', 'pickup_geo_zone_id', '0', 0),
(3532, 0, 'd_quickcheckout', 'd_quickcheckout_debug', '0', 0),
(3533, 0, 'd_quickcheckout', 'd_quickcheckout_setting', '{"name":"06\\/30\\/2017 11:42:45 pm","general":{"clear_session":"0","login_refresh":"0","analytics_event":"0","update_mini_cart":"1","compress":"1","min_order":{"value":"0","text":{"1":"You must have a sum more then %s to make an order ","2":"The minimum order is %s"}},"min_quantity":{"value":"0","text":{"1":"You must have a quantity more then %s to make an order ","2":"The minimum quantity is %s"}},"config":"d_quickcheckout"},"step":{"login":{"default_option":"guest","option":{"login":{"display":"1","title":{"1":"\\u041b\\u043e\\u0433\\u0438\\u043d","2":"Login"}},"register":{"display":"1","title":{"1":"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f","2":"Register"}},"guest":{"display":"1","title":{"1":"\\u0413\\u043e\\u0441\\u0442\\u044c","2":"Guest"}}},"icon":"fa fa-user","description":{"1":"","2":""},"column":"1","row":"0"},"payment_address":{"fields":{"firstname":{"sort_order":"0","value":"","mask":""},"lastname":{"sort_order":"1","value":"","mask":""},"email":{"sort_order":"2","value":"","mask":""},"email_confirm":{"sort_order":"3","value":"","mask":""},"telephone":{"sort_order":"4","value":"","mask":""},"fax":{"sort_order":"5","value":"","mask":""},"password":{"sort_order":"6"},"confirm":{"sort_order":"7"},"heading":{"sort_order":"8"},"company":{"sort_order":"9","value":"","mask":""},"customer_group_id":{"sort_order":"10"},"country_id":{"sort_order":"11","value":""},"zone_id":{"sort_order":"12","value":""},"address_1":{"sort_order":"13","value":"","mask":""},"address_2":{"sort_order":"14","value":"","mask":""},"city":{"sort_order":"15","value":"","mask":""},"postcode":{"sort_order":"16","value":"","mask":""},"newsletter":{"sort_order":"17","value":"0"},"shipping_address":{"sort_order":"18","value":"0"},"agree":{"sort_order":"19","value":"1"}},"icon":"fa fa-book","title":{"1":"\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u0435","2":"Payment Address"},"description":{"1":"","2":""},"column":"1","row":"1"},"shipping_address":{"fields":{"firstname":{"sort_order":"0","value":"","mask":""},"lastname":{"sort_order":"1","value":"","mask":""},"company":{"sort_order":"2","value":"","mask":""},"country_id":{"sort_order":"3","value":""},"zone_id":{"sort_order":"4","value":""},"address_1":{"sort_order":"5","value":"","mask":""},"address_2":{"sort_order":"6","value":"","mask":""},"city":{"sort_order":"7","value":"","mask":""},"postcode":{"sort_order":"8","value":"","mask":""}},"icon":"fa fa-book","title":{"1":"\\u0410\\u0434\\u0440\\u0435\\u0441 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438","2":"Shipping Address"},"description":{"1":"","2":""},"column":"1","row":"2"},"shipping_method":{"display":"1","display_options":"1","display_title":"1","input_style":"radio","default_option":"flat","icon":"fa fa-truck","title":{"1":"\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438","2":"Shipping method"},"description":{"1":"","2":"Please select the preferred shipping method to use on this order."},"column":"2","row":"0"},"payment_method":{"display":"1","display_options":"1","display_images":"1","input_style":"radio","default_option":"cod","icon":"fa fa-credit-card","title":{"1":"\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b","2":"Payment method"},"description":{"1":"","2":"Please select the preferred payment method to use on this order."},"column":"3","row":"0"},"payment":{"default_payment_popup":"0","payment_popups":{"cod":"1","free_checkout":"1"},"column":"4","row":"3"},"cart":{"icon":"fa fa-shopping-cart","title":{"1":"\\u041c\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437","2":"Shopping cart"},"description":{"1":"","2":""},"column":"4","row":"1"},"confirm":{"fields":{"comment":{"sort_order":"0"},"agree":{"sort_order":"1","value":"0"}},"column":"4","row":"2"}},"design":{"login_style":"popup","theme":"journal","block_style":"row","placeholder":"1","breadcrumb":"1","address_style":"radio","cart_image_size":{"width":"80","height":"80"},"max_width":"","bootstrap":"1","autocomplete":"1","only_quickcheckout":"0","column_width":{"1":"4","2":"4","3":"4","4":"8"},"custom_style":""},"account":{"guest":{"payment_address":{"display":"1","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"1","require":"1"},"email":{"display":"1","require":"1"},"email_confirm":{"display":"0","require":"0"},"telephone":{"display":"1","require":"0"},"fax":{"display":"0","require":"0"},"heading":{"display":"0"},"company":{"display":"0","require":"0"},"customer_group_id":{"display":"0","require":"0"},"country_id":{"display":"0","require":"0"},"zone_id":{"display":"0","require":"0"},"address_1":{"display":"0","require":"0"},"address_2":{"display":"0","require":"0"},"city":{"display":"0","require":"0"},"postcode":{"display":"0","require":"0"},"shipping_address":{"display":"0"},"agree":{"display":"0","require":"0"}}},"shipping_address":{"display":"1","require":"0","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"0","require":"0"},"company":{"display":"1","require":"0"},"country_id":{"display":"1","require":"1"},"zone_id":{"display":"1","require":"1"},"address_1":{"display":"1","require":"1"},"address_2":{"display":"0","require":"0"},"city":{"display":"1","require":"0"},"postcode":{"display":"1","require":"1"}}},"cart":{"display":"1","columns":{"image":"1","name":"1","model":"0","quantity":"1","price":"1","total":"1"},"option":{"coupon":{"display":"0"},"voucher":{"display":"0"},"reward":{"display":"0"}}},"confirm":{"fields":{"comment":{"display":"1","require":"0"},"agree":{"display":"0","require":"0"}}}},"register":{"payment_address":{"display":"1","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"1","require":"1"},"email":{"display":"1","require":"1"},"email_confirm":{"display":"0","require":"0"},"telephone":{"display":"1","require":"0"},"fax":{"display":"0","require":"0"},"password":{"display":"1","require":"1"},"confirm":{"display":"1","require":"1"},"heading":{"display":"0"},"company":{"display":"0","require":"0"},"customer_group_id":{"display":"0","require":"0"},"country_id":{"display":"0","require":"0"},"zone_id":{"display":"0","require":"0"},"address_1":{"display":"0","require":"0"},"address_2":{"display":"0","require":"0"},"city":{"display":"0","require":"0"},"postcode":{"display":"0","require":"0"},"newsletter":{"display":"0","require":"0"},"shipping_address":{"display":"0"},"agree":{"display":"0","require":"0"}}},"shipping_address":{"display":"1","require":"0","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"0","require":"0"},"company":{"display":"1","require":"0"},"country_id":{"display":"1","require":"1"},"zone_id":{"display":"1","require":"1"},"address_1":{"display":"1","require":"1"},"address_2":{"display":"0","require":"0"},"city":{"display":"1","require":"0"},"postcode":{"display":"1","require":"1"}}},"cart":{"display":"1","columns":{"image":"1","name":"1","model":"0","quantity":"1","price":"1","total":"1"},"option":{"coupon":{"display":"0"},"voucher":{"display":"0"},"reward":{"display":"0"}}},"confirm":{"fields":{"comment":{"display":"1","require":"0"},"agree":{"display":"0","require":"0"}}}},"logged":{"payment_address":{"display":"1","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"1","require":"1"},"company":{"display":"0","require":"0"},"country_id":{"display":"0","require":"0"},"zone_id":{"display":"0","require":"0"},"address_1":{"display":"0","require":"0"},"address_2":{"display":"0","require":"0"},"city":{"display":"0","require":"0"},"postcode":{"display":"0","require":"0"},"shipping_address":{"display":"0"}}},"shipping_address":{"display":"1","require":"0","fields":{"firstname":{"display":"1","require":"1"},"lastname":{"display":"0","require":"0"},"company":{"display":"1","require":"0"},"country_id":{"display":"1","require":"1"},"zone_id":{"display":"1","require":"1"},"address_1":{"display":"1","require":"1"},"address_2":{"display":"0","require":"0"},"city":{"display":"1","require":"1"},"postcode":{"display":"1","require":"1"}}},"cart":{"display":"1","columns":{"image":"1","name":"1","model":"0","quantity":"1","price":"1","total":"1"},"option":{"coupon":{"display":"0"},"voucher":{"display":"0"},"reward":{"display":"0"}}},"confirm":{"fields":{"comment":{"display":"1","require":"0"},"agree":{"display":"0","require":"0"}}}}}}', 1),
(3531, 0, 'd_quickcheckout', 'd_quickcheckout_trigger', '#button-confirm, .button, .btn, .button_oc, input[type=submit]', 0),
(3530, 0, 'd_quickcheckout', 'd_quickcheckout_status', '1', 0),
(3529, 0, 'd_quickcheckout', 'd_quickcheckout_setting_cycle', '{"1":"1"}', 1),
(1579, 0, 'pickup', 'pickup_status', '1', 0),
(1580, 0, 'pickup', 'pickup_sort_order', '2', 0),
(1581, 0, 'weight', 'weight_tax_class_id', '0', 0),
(1582, 0, 'weight', 'weight_status', '1', 0),
(1583, 0, 'weight', 'weight_sort_order', '3', 0),
(1584, 0, 'weight', 'weight_3_rate', 'Расценки', 0),
(1585, 0, 'weight', 'weight_3_status', '1', 0),
(1604, 0, 'callback', 'callback_phone_field', '0', 0),
(1605, 0, 'callback', 'callback_sms_status', '0', 0),
(1606, 0, 'callback', 'callback_api_key', '', 0),
(1607, 0, 'callback', 'callback_sender', '', 0),
(3581, 0, 'config', 'config_processing_status', '["2","3","1","12","5"]', 1),
(3580, 0, 'config', 'config_order_status_id', '1', 0),
(3579, 0, 'config', 'config_checkout_id', '5', 0),
(3578, 0, 'config', 'config_checkout_guest', '1', 0),
(3577, 0, 'config', 'config_cart_weight', '1', 0),
(1751, 0, 'mfilter_version', 'mfilter_version', '2.0.5.2', 0),
(1748, 0, 'mega_filter_settings', 'mega_filter_settings', '{"show_number_of_products":"1","calculate_number_of_products":"1","show_loader_over_results":"1","css_style":"","content_selector":"#mfilter-content-container","refresh_results":"immediately","attribs":{"price":{"enabled":"1","sort_order":"-1"}},"layout_c":"3","display_live_filter":{"items":"1"}}', 1),
(1747, 0, 'mega_filter_module', 'mega_filter_module', '[]', 1),
(1749, 0, 'mega_filter_seo', 'mega_filter_seo', '{"enabled":"0"}', 1),
(1750, 0, 'mega_filter_status', 'mega_filter_status', '1', 0),
(3385, 0, 'ocfilter', 'ocfilter_attribute_separator', '', 0),
(3384, 0, 'ocfilter', 'ocfilter_noindex_limit', '3', 0),
(3383, 0, 'ocfilter', 'ocfilter_hide_empty_values', '0', 0),
(3381, 0, 'ocfilter', 'ocfilter_show_options_limit', '', 0),
(3382, 0, 'ocfilter', 'ocfilter_show_values_limit', '', 0),
(3380, 0, 'ocfilter', 'ocfilter_consider_option', '1', 0),
(3379, 0, 'ocfilter', 'ocfilter_consider_special', '1', 0),
(3378, 0, 'ocfilter', 'ocfilter_consider_discount', '1', 0),
(3377, 0, 'ocfilter', 'ocfilter_manual_price', '1', 0),
(3375, 0, 'ocfilter', 'ocfilter_stock_out_value', '0', 0),
(3376, 0, 'ocfilter', 'ocfilter_show_diagram', '0', 0),
(3374, 0, 'ocfilter', 'ocfilter_stock_status_type', 'checkbox', 0),
(3373, 0, 'ocfilter', 'ocfilter_stock_status_method', 'stock_status_id', 0),
(3372, 0, 'ocfilter', 'ocfilter_stock_status', '0', 0),
(3371, 0, 'ocfilter', 'ocfilter_manufacturer_type', 'checkbox', 0),
(3370, 0, 'ocfilter', 'ocfilter_manufacturer', '0', 0),
(3369, 0, 'ocfilter', 'ocfilter_show_counter', '1', 0),
(3368, 0, 'ocfilter', 'ocfilter_show_price', '1', 0),
(3367, 0, 'ocfilter', 'ocfilter_show_selected', '1', 0),
(3366, 0, 'ocfilter', 'ocfilter_sitemap_status', '0', 0),
(3575, 0, 'config', 'config_account_mail', '0', 0),
(3576, 0, 'config', 'config_invoice_prefix', 'INV-2016-00', 0),
(3574, 0, 'config', 'config_account_id', '3', 0),
(3573, 0, 'config', 'config_login_attempts', '5', 0),
(3572, 0, 'config', 'config_customer_price', '0', 0),
(3571, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(3570, 0, 'config', 'config_customer_group_id', '1', 0),
(3569, 0, 'config', 'config_customer_online', '0', 0),
(3568, 0, 'config', 'config_tax_customer', 'shipping', 0),
(3567, 0, 'config', 'config_tax_default', 'shipping', 0),
(3566, 0, 'config', 'config_tax', '1', 0),
(3565, 0, 'config', 'config_voucher_max', '1000', 0),
(3564, 0, 'config', 'config_voucher_min', '1', 0),
(3563, 0, 'config', 'config_review_mail', '0', 0),
(3562, 0, 'config', 'config_review_guest', '1', 0),
(3561, 0, 'config', 'config_review_status', '1', 0),
(3560, 0, 'config', 'config_product_mpn_hide', '0', 0),
(3559, 0, 'config', 'config_product_isbn_hide', '0', 0),
(3558, 0, 'config', 'config_product_jan_hide', '0', 0),
(3557, 0, 'config', 'config_product_ean_hide', '0', 0),
(3556, 0, 'config', 'config_product_upc_hide', '0', 0),
(3555, 0, 'config', 'config_limit_admin', '20', 0),
(3554, 0, 'config', 'config_product_description_length', '100', 0),
(3553, 0, 'config', 'config_product_limit', '12', 0),
(3552, 0, 'config', 'config_product_count', '1', 0),
(3551, 0, 'config', 'config_weight_class_id', '2', 0),
(3535, 0, 'config', 'config_langdata', '{"1":{"meta_title":"Ghostly fog. \\u0417\\u0430\\u043b\\u0438\\u043b \\u0438 \\u0437\\u0430\\u043f\\u0430\\u0440\\u0438\\u043b!","meta_description":"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0433\\u0430\\u0440\\u0435\\u0442 \\u0438 \\u0436\\u0438\\u0434\\u043a\\u043e\\u0441\\u0442\\u0435\\u0439 \\u0432 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0435.","meta_keyword":"","name":"Ghostly fog","owner":"\\u041c\\u043e\\u0435 \\u0418\\u043c\\u044f","address":"\\u0410\\u0434\\u0440\\u0435\\u0441","open":"\\u041f\\u043d.-\\u041f\\u0442.: \\u0441 8:00 \\u0434\\u043e 20:00\\r\\n\\u0421\\u0431.-\\u0412\\u0441.: \\u0441 10:00 \\u0434\\u043e 18:00","comment":""},"2":{"meta_title":"Your Store","meta_description":"My Store","meta_keyword":"","name":"Your Store","owner":"Your Name","address":"Address 1","open":"","comment":""}}', 1),
(3550, 0, 'config', 'config_length_class_id', '1', 0),
(3549, 0, 'config', 'config_currency_auto', '1', 0),
(3548, 0, 'config', 'config_currency', 'UAH', 0),
(3547, 0, 'config', 'config_admin_language', 'ru', 0),
(3546, 0, 'config', 'config_language', 'ru', 0),
(3545, 0, 'config', 'config_zone_id', '3487', 0),
(3544, 0, 'config', 'config_country_id', '220', 0),
(3543, 0, 'config', 'config_image', '', 0),
(3542, 0, 'config', 'config_fax', '', 0),
(3541, 0, 'config', 'config_telephone2', '+38 (095) 708-98-79', 0),
(3536, 0, 'config', 'config_template', 'fog', 0),
(3537, 0, 'config', 'config_layout_id', '4', 0),
(3538, 0, 'config', 'config_geocode', '54.718681,20.499113', 0),
(3539, 0, 'config', 'config_email', 'alena.makarova1508@gmail.com', 0),
(3540, 0, 'config', 'config_telephone', '+38 (093) 448-49-18 ', 0),
(3534, 0, 'd_quickcheckout', 'd_quickcheckout_debug_file', 'd_quickcheckout.log', 0),
(3365, 0, 'ocfilter', 'ocfilter_status', '1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'В наличии'),
(8, 1, 'Предзаказ'),
(5, 1, 'Нет в наличии'),
(6, 1, 'Ожидание 2-3 дня'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2 - 3 Days');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Налоги', 'Облагаемые налогом', '2009-01-06 23:21:53', '2011-03-09 21:17:10'),
(10, 'Цифровые товары', 'Цифровые', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'НДС (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Экологический налог (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ulogin`
--

CREATE TABLE IF NOT EXISTS `oc_ulogin` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `identity` varchar(255) NOT NULL,
  `network` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=905 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(601, 'account/voucher', 'vouchers'),
(602, 'account/wishlist', 'wishlist'),
(603, 'account/account', 'my-account'),
(604, 'checkout/cart', 'cart'),
(605, 'checkout/checkout', 'checkout'),
(606, 'account/login', 'login'),
(607, 'account/logout', 'logout'),
(608, 'account/order', 'order-history'),
(609, 'account/newsletter', 'newsletter'),
(610, 'product/special', 'specials'),
(611, 'affiliate/account', 'affiliates'),
(612, 'checkout/voucher', 'gift-vouchers'),
(613, 'product/manufacturer', 'brands'),
(614, 'information/contact', 'contact-us'),
(615, 'account/return/insert', 'request-return'),
(616, 'information/sitemap', 'sitemap'),
(617, 'account/forgotten', 'forgot-password'),
(618, 'account/download', 'downloads'),
(619, 'account/return', 'returns'),
(620, 'account/transaction', 'transactions'),
(621, 'account/register', 'create-account'),
(622, 'product/compare', 'compare-products'),
(623, 'product/search', 'search'),
(624, 'account/edit', 'edit-account'),
(625, 'account/password', 'change-password'),
(626, 'account/address', 'address-book'),
(627, 'account/reward', 'reward-points'),
(628, 'affiliate/edit', 'edit-affiliate-account'),
(629, 'affiliate/password', 'change-affiliate-password'),
(630, 'affiliate/payment', 'affiliate-payment-options'),
(631, 'affiliate/tracking', 'affiliate-tracking-code'),
(632, 'affiliate/transaction', 'affiliate-transactions'),
(633, 'affiliate/logout', 'affiliate-logout'),
(634, 'affiliate/forgotten', 'affiliate-forgot-password'),
(635, 'affiliate/register', 'create-affiliate-account'),
(636, 'affiliate/login', 'affiliate-login'),
(637, 'account/return/add', 'add-return'),
(638, 'common/home', ''),
(901, 'product_id=48', 'ipod-classic'),
(851, 'category_id=20', 'desktops'),
(857, 'category_id=26', 'pc'),
(858, 'category_id=27', 'mac'),
(730, 'manufacturer_id=8', 'apple'),
(897, 'information_id=4', 'about_us'),
(902, 'product_id=42', 'test'),
(861, 'category_id=61', ''),
(852, 'category_id=18', 'laptop-notebook'),
(880, 'news/headlines', 'blogspage'),
(856, 'category_id=25', 'component'),
(884, 'category_id=74', ''),
(883, 'category_id=73', ''),
(855, 'category_id=57', 'tablet'),
(872, 'category_id=72', ''),
(871, 'category_id=71', ''),
(870, 'category_id=70', ''),
(869, 'category_id=69', ''),
(868, 'category_id=68', ''),
(867, 'category_id=67', ''),
(862, 'category_id=62', ''),
(863, 'category_id=63', ''),
(864, 'category_id=64', ''),
(865, 'category_id=65', ''),
(866, 'category_id=66', ''),
(809, 'product_id=30', 'canon-eos-5d'),
(904, 'product_id=47', 'hp-lp3065'),
(811, 'product_id=28', 'htc-touch-hd'),
(812, 'product_id=43', 'macbook'),
(813, 'product_id=44', 'macbook-air'),
(814, 'product_id=45', 'macbook-pro'),
(903, 'product_id=31', 'nikon-d300'),
(817, 'product_id=29', 'palm-treo-pro'),
(818, 'product_id=35', 'product-8'),
(874, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 'product_id=33', 'samsung-syncmaster-941bw'),
(877, 'product_id=46', 'sony-vaio'),
(837, 'product_id=41', 'imac'),
(823, 'product_id=40', 'iphone'),
(881, 'product_id=36', 'ipod-nano'),
(826, 'product_id=34', 'ipod-shuffle'),
(827, 'product_id=32', 'ipod-touch'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(898, 'information_id=6', 'delivery'),
(849, 'information_id=3', 'privacy'),
(850, 'information_id=5', 'terms'),
(844, 'information/news', 'news'),
(845, 'information/posts', 'posts'),
(879, 'news_id=2', 'firstNews');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '5bad12f24c9fa491af9c4b8f0a9fe2d8b4112dec', 'vw3ryAnEx', 'John', 'Doe', 'alena.makarova1508@gmail.com', '', '', '127.0.0.1', 1, '2017-06-30 01:14:35');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/callback","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/nauthor","catalog\\/ncategory","catalog\\/ncomments","catalog\\/news","catalog\\/ocfilter","catalog\\/option","catalog\\/product","catalog\\/promotion_label_pro","catalog\\/promotion_label_to_product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/newspanel","common\\/profile","common\\/sass","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","d_shopunity\\/account","d_shopunity\\/dependency","d_shopunity\\/developer","d_shopunity\\/extension","d_shopunity\\/filemanager","d_shopunity\\/invoice","d_shopunity\\/market","d_shopunity\\/order","d_shopunity\\/setting","d_shopunity\\/tester","d_shopunity\\/transaction","design\\/banner","design\\/layout","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/news","extension\\/openbay","extension\\/payment","extension\\/posts","extension\\/shipping","extension\\/total","feed\\/articles_google_base","feed\\/articles_google_sitemap","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/addthis","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/callback","module\\/carousel","module\\/category","module\\/d_quickcheckout","module\\/d_shopunity","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/ncategory","module\\/news","module\\/news_archive","module\\/ocfilter","module\\/ocmodpcartset","module\\/posts","module\\/pp_button","module\\/pp_login","module\\/promotion_label_product","module\\/slideshow","module\\/special","module\\/store","module\\/unisender","module\\/videopublisher","module\\/videopublisherwidget","octeam\\/toolset","octeam_tools\\/cache","octeam_tools\\/seo_manager","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/cod","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/qiwi_rest","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/sberbank_transfer","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/by_total","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","module\\/promotion_label_product","module\\/product_status","module\\/ulogin","module\\/ulogin_sets","module\\/news_archive","module\\/ncategory"],"modify":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/callback","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/nauthor","catalog\\/ncategory","catalog\\/ncomments","catalog\\/news","catalog\\/ocfilter","catalog\\/option","catalog\\/product","catalog\\/promotion_label_pro","catalog\\/promotion_label_to_product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/newspanel","common\\/profile","common\\/sass","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","d_shopunity\\/account","d_shopunity\\/dependency","d_shopunity\\/developer","d_shopunity\\/extension","d_shopunity\\/filemanager","d_shopunity\\/invoice","d_shopunity\\/market","d_shopunity\\/order","d_shopunity\\/setting","d_shopunity\\/tester","d_shopunity\\/transaction","design\\/banner","design\\/layout","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/news","extension\\/openbay","extension\\/payment","extension\\/posts","extension\\/shipping","extension\\/total","feed\\/articles_google_base","feed\\/articles_google_sitemap","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/addthis","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/callback","module\\/carousel","module\\/category","module\\/d_quickcheckout","module\\/d_shopunity","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/ncategory","module\\/news","module\\/news_archive","module\\/ocfilter","module\\/ocmodpcartset","module\\/posts","module\\/pp_button","module\\/pp_login","module\\/promotion_label_product","module\\/slideshow","module\\/special","module\\/store","module\\/unisender","module\\/videopublisher","module\\/videopublisherwidget","octeam\\/toolset","octeam_tools\\/cache","octeam_tools\\/seo_manager","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/cod","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/qiwi_rest","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/sberbank_transfer","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/by_total","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","module\\/promotion_label_product","module\\/product_status","module\\/ulogin","module\\/ulogin_sets","module\\/news_archive","module\\/ncategory"],"hiden":["module\\/amazon_login","module\\/amazon_pay","module\\/ebay_listing","module\\/pp_button","module\\/pp_login","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/firstdata","payment\\/firstdata_remote","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","shipping\\/auspost","shipping\\/by_total","shipping\\/citylink","shipping\\/fedex","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_videopublisher`
--

CREATE TABLE IF NOT EXISTS `oc_videopublisher` (
  `pvr_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `rating` tinyint(1) unsigned DEFAULT NULL,
  `display_rating` tinyint(1) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_videopublisher`
--

INSERT INTO `oc_videopublisher` (`pvr_id`, `collection_id`, `rating`, `display_rating`, `date`) VALUES
(1, 0, 5, 0, '2017-07-06'),
(2, 0, 1, 0, '2017-07-04'),
(3, 0, 1, 0, '2017-07-04'),
(4, 0, 1, 0, '2017-07-04'),
(5, 0, 1, 0, '2017-07-04');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Рождество'),
(7, 1, 'День рождения'),
(8, 1, 'Основной'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00'),
(2, '1000.00'),
(5, '2.20'),
(6, '35.27');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Килограммы', 'кг'),
(2, 1, 'Граммы', 'г'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3971 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Бадахшан', 'BDS', 1),
(2, 1, 'Бадгис', 'BDG', 1),
(3, 1, 'Баглан', 'BGL', 1),
(4, 1, 'Балх', 'BAL', 1),
(5, 1, 'Бамиан', 'BAM', 1),
(6, 1, 'Фарах', 'FRA', 1),
(7, 1, 'Фарьяб', 'FYB', 1),
(8, 1, 'Газни', 'GHA', 1),
(9, 1, 'Гор', 'GHO', 1),
(10, 1, 'Гильменд', 'HEL', 1),
(11, 1, 'Герат', 'HER', 1),
(12, 1, 'Джаузджан', 'JOW', 1),
(13, 1, 'Кабул', 'KAB', 1),
(14, 1, 'Кандагар', 'KAN', 1),
(15, 1, 'Каписа', 'KAP', 1),
(16, 1, 'Хост', 'KHO', 1),
(17, 1, 'Кунар', 'KNR', 1),
(18, 1, 'Кундуз', 'KDZ', 1),
(19, 1, 'Лагман', 'LAG', 1),
(20, 1, 'Логар', 'LOW', 1),
(21, 1, 'Нангархар', 'NAN', 1),
(22, 1, 'Нимроз', 'NIM', 1),
(23, 1, 'Нуристан', 'NUR', 1),
(24, 1, 'Урузган', 'ORU', 1),
(25, 1, 'Пактия', 'PIA', 1),
(26, 1, 'Пактика', 'PKA', 1),
(27, 1, 'Парван', 'PAR', 1),
(28, 1, 'Саманган', 'SAM', 1),
(29, 1, 'Сари-Пуль', 'SAR', 1),
(30, 1, 'Тахар', 'TAK', 1),
(31, 1, 'Вардак', 'WAR', 1),
(32, 1, 'Забуль', 'ZAB', 1),
(33, 2, 'Берат', 'BR', 1),
(34, 2, 'Булькиза', 'BU', 1),
(35, 2, 'Дельвина', 'DL', 1),
(36, 2, 'Девол', 'DV', 1),
(37, 2, 'Дибра', 'DI', 1),
(38, 2, 'Дуррес', 'DR', 1),
(39, 2, 'Эльбасан', 'EL', 1),
(40, 2, 'Колёня', 'ER', 1),
(41, 2, 'Фиери', 'FR', 1),
(42, 2, 'Гирокастра', 'GJ', 1),
(43, 2, 'Грамши', 'GR', 1),
(44, 2, 'Хас', 'HA', 1),
(45, 2, 'Кавая', 'KA', 1),
(46, 2, 'Курбин', 'KB', 1),
(47, 2, 'Кучова', 'KC', 1),
(48, 2, 'Корча', 'KO', 1),
(49, 2, 'Круя', 'KR', 1),
(50, 2, 'Кукес', 'KU', 1),
(51, 2, 'Либражди', 'LB', 1),
(52, 2, 'Лежа', 'LE', 1),
(53, 2, 'Люшня', 'LU', 1),
(54, 2, 'Мальси-э-Мади', 'MM', 1),
(55, 2, 'Малакастра', 'MK', 1),
(56, 2, 'Мати', 'MT', 1),
(57, 2, 'Мирдита', 'MR', 1),
(58, 2, 'Пекини', 'PQ', 1),
(59, 2, 'Пермети', 'PR', 1),
(60, 2, 'Поградец', 'PG', 1),
(61, 2, 'Пука', 'PU', 1),
(62, 2, 'Шкодер', 'SH', 1),
(63, 2, 'Скрапари', 'SK', 1),
(64, 2, 'Саранда', 'SR', 1),
(65, 2, 'Тепелена', 'TE', 1),
(66, 2, 'Тропоя', 'TP', 1),
(67, 2, 'Тирана', 'TR', 1),
(68, 2, 'Влёра', 'VL', 1),
(69, 3, 'Адрар', 'ADR', 1),
(70, 3, 'Айн-Дефла', 'ADE', 1),
(71, 3, 'Айн-Темухент', 'ATE', 1),
(72, 3, 'Алжир', 'ALG', 1),
(73, 3, 'Аннаба', 'ANN', 1),
(74, 3, 'Батна', 'BAT', 1),
(75, 3, 'Бешар', 'BEC', 1),
(76, 3, 'Беджая', 'BEJ', 1),
(77, 3, 'Бискра', 'BIS', 1),
(78, 3, 'Блида', 'BLI', 1),
(79, 3, 'Бордж-Бу-Арреридж', 'BBA', 1),
(80, 3, 'Буйра', 'BOA', 1),
(81, 3, 'Бумердес', 'BMD', 1),
(82, 3, 'Шлеф', 'CHL', 1),
(83, 3, 'Константина', 'CON', 1),
(84, 3, 'Джельфа', 'DJE', 1),
(85, 3, 'Эль-Баяд', 'EBA', 1),
(86, 3, 'Эль-Уэд', 'EOU', 1),
(87, 3, 'Эль-Тарф', 'ETA', 1),
(88, 3, 'Гардая', 'GHA', 1),
(89, 3, 'Гуэльма', 'GUE', 1),
(90, 3, 'Иллизи', 'ILL', 1),
(91, 3, 'Джиджель', 'JIJ', 1),
(92, 3, 'Хеншела', 'KHE', 1),
(93, 3, 'Лагуат', 'LAG', 1),
(94, 3, 'Маскара', 'MUA', 1),
(95, 3, 'Медеа', 'MED', 1),
(96, 3, 'Мила', 'MIL', 1),
(97, 3, 'Мостаганем', 'MOS', 1),
(98, 3, 'Мсила', 'MSI', 1),
(99, 3, 'Наама', 'NAA', 1),
(100, 3, 'Оран', 'ORA', 1),
(101, 3, 'Уаргла', 'OUA', 1),
(102, 3, 'Ум Эль-Буахи', 'OEB', 1),
(103, 3, 'Релизан', 'REL', 1),
(104, 3, 'Саида', 'SAI', 1),
(105, 3, 'Сетиф', 'SET', 1),
(106, 3, 'Сиди-Бель-Аббес', 'SBA', 1),
(107, 3, 'Скикда', 'SKI', 1),
(108, 3, 'Сук-Ахрас', 'SAH', 1),
(109, 3, 'Таменрассет', 'TAM', 1),
(110, 3, 'Тебесса', 'TEB', 1),
(111, 3, 'Тиарет', 'TIA', 1),
(112, 3, 'Тиндуф', 'TIN', 1),
(113, 3, 'Типаза', 'TIP', 1),
(114, 3, 'Тиссемсилт', 'TIS', 1),
(115, 3, 'Тизи-Узу', 'TOU', 1),
(116, 3, 'Тлемсен', 'TLE', 1),
(117, 4, 'Восточный округ', 'E', 1),
(118, 4, 'Мануа', 'M', 1),
(119, 4, 'Остров Роз', 'R', 1),
(120, 4, 'Остров Суэйнс', 'S', 1),
(121, 4, 'Западный округ', 'W', 1),
(122, 5, 'Андорра-ла-Велья', 'ALV', 1),
(123, 5, 'Канильо', 'CAN', 1),
(124, 5, 'Энкамп', 'ENC', 1),
(125, 5, 'Эскальдес-Энгордань', 'ESE', 1),
(126, 5, 'Ла-Массана', 'LMA', 1),
(127, 5, 'Ордино', 'ORD', 1),
(128, 5, 'Сант-Жулия-де-Лория', 'SJL', 1),
(129, 6, 'Бенго', 'BGO', 1),
(130, 6, 'Бенгела', 'BGU', 1),
(131, 6, 'Бие', 'BIE', 1),
(132, 6, 'Кабинда', 'CAB', 1),
(133, 6, 'Квандо-Кубанго', 'CCU', 1),
(134, 6, 'Северная Кванза', 'CNO', 1),
(135, 6, 'Южная Кванза', 'CUS', 1),
(136, 6, 'Кунене', 'CNN', 1),
(137, 6, 'Уамбо', 'HUA', 1),
(138, 6, 'Уила', 'HUI', 1),
(139, 6, 'Луанда', 'LUA', 1),
(140, 6, 'Северная Лунда', 'LNO', 1),
(141, 6, 'Южная Лунда', 'LSU', 1),
(142, 6, 'Маланже', 'MAL', 1),
(143, 6, 'Мошико', 'MOX', 1),
(144, 6, 'Намибе', 'NAM', 1),
(145, 6, 'Уиже', 'UIG', 1),
(146, 6, 'Заире', 'ZAI', 1),
(147, 9, 'Сент-Джордж', 'ASG', 1),
(148, 9, 'Сент-Джон', 'ASJ', 1),
(149, 9, 'Сент-Мери', 'ASM', 1),
(150, 9, 'Сент-Пол', 'ASL', 1),
(151, 9, 'Сент-Петер', 'ASR', 1),
(152, 9, 'Сент-Филип', 'ASH', 1),
(153, 9, 'Барбуда', 'BAR', 1),
(154, 9, 'Редонда', 'RED', 1),
(155, 10, 'Антарктида и острова Южной Атлантики', 'AN', 1),
(156, 10, 'Буэнос-Айрес', 'BA', 1),
(157, 10, 'Катамарка', 'CA', 1),
(158, 10, 'Чако', 'CH', 1),
(159, 10, 'Чубут', 'CU', 1),
(160, 10, 'Кордова', 'CO', 1),
(161, 10, 'Корриентес', 'CR', 1),
(162, 10, 'Федеральный округ', 'DF', 1),
(163, 10, 'Энтре-Риос', 'ER', 1),
(164, 10, 'Формоса', 'FO', 1),
(165, 10, 'Жужуй', 'JU', 1),
(166, 10, 'Ла-Пампа', 'LP', 1),
(167, 10, 'Ла-Риоха', 'LR', 1),
(168, 10, 'Мендоса', 'ME', 1),
(169, 10, 'Мисьонес', 'MI', 1),
(170, 10, 'Неукен', 'NE', 1),
(171, 10, 'Рио-Негро', 'RN', 1),
(172, 10, 'Сальта', 'SA', 1),
(173, 10, 'Сан-Хуан', 'SJ', 1),
(174, 10, 'Сан-Луис', 'SL', 1),
(175, 10, 'Санта-Крус', 'SC', 1),
(176, 10, 'Санта-Фе', 'SF', 1),
(177, 10, 'Сантьяго-дель-Эстеро', 'SD', 1),
(178, 10, 'Тьерра-дель-Фуэго', 'TF', 1),
(179, 10, 'Тукуман', 'TU', 1),
(180, 11, 'Арагацотн', 'AGT', 1),
(181, 11, 'Арарат', 'ARR', 1),
(182, 11, 'Армавир', 'ARM', 1),
(183, 11, 'Гегаркуник', 'GEG', 1),
(184, 11, 'Котайк', 'KOT', 1),
(185, 11, 'Лори', 'LOR', 1),
(186, 11, 'Ширак', 'SHI', 1),
(187, 11, 'Сюник', 'SYU', 1),
(188, 11, 'Тавуш', 'TAV', 1),
(189, 11, 'Вайоц Дзор', 'VAY', 1),
(190, 11, 'Ереван', 'YER', 1),
(191, 13, 'Австралийская столичная территория', 'ACT', 1),
(192, 13, 'Новый Южный Уэльс', 'NSW', 1),
(193, 13, 'Северная территория', 'NT', 1),
(194, 13, 'Квинсленд', 'QLD', 1),
(195, 13, 'Южная Австралия', 'SA', 1),
(196, 13, 'Тасмания', 'TAS', 1),
(197, 13, 'Виктория', 'VIC', 1),
(198, 13, 'Западная Австралия', 'WA', 1),
(199, 14, 'Бургенланд', 'BUR', 1),
(200, 14, 'Каринтия', 'KAR', 1),
(201, 14, 'Нижняя Австрия', 'NOS', 1),
(202, 14, 'Верхняя Австрия', 'OOS', 1),
(203, 14, 'Зальцбург', 'SAL', 1),
(204, 14, 'Штирия', 'STE', 1),
(205, 14, 'Тироль', 'TIR', 1),
(206, 14, 'Форарльберг', 'VOR', 1),
(207, 14, 'Вена', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Брест', 'BR', 1),
(338, 20, 'Гомель', 'HO', 1),
(339, 20, 'Минск', 'HM', 1),
(340, 20, 'Гродно', 'HR', 1),
(341, 20, 'Могилев', 'MA', 1),
(342, 20, 'Минская область', 'MI', 1),
(343, 20, 'Витебск', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liege', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapa', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceara', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espirito Santo', 'ES', 1),
(448, 30, 'Goias', 'GO', 1),
(449, 30, 'Maranhao', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Para', 'PA', 1),
(454, 30, 'Paraiba', 'PB', 1),
(455, 30, 'Parana', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piaui', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondonia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'Sao Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Hi', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chi', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovar-Bilogora', 'BB', 1),
(848, 53, 'City of Zagreb', 'CZ', 1),
(849, 53, 'Dubrovnik-Neretva', 'DN', 1),
(850, 53, 'Istra', 'IS', 1),
(851, 53, 'Karlovac', 'KA', 1),
(852, 53, 'Koprivnica-Krizevci', 'KK', 1),
(853, 53, 'Krapina-Zagorje', 'KZ', 1),
(854, 53, 'Lika-Senj', 'LS', 1),
(855, 53, 'Medimurje', 'ME', 1),
(856, 53, 'Osijek-Baranja', 'OB', 1),
(857, 53, 'Pozega-Slavonia', 'PS', 1),
(858, 53, 'Primorje-Gorski Kotar', 'PG', 1),
(859, 53, 'Sibenik', 'SI', 1),
(860, 53, 'Sisak-Moslavina', 'SM', 1),
(861, 53, 'Slavonski Brod-Posavina', 'SB', 1),
(862, 53, 'Split-Dalmatia', 'SD', 1),
(863, 53, 'Varazdin', 'VA', 1),
(864, 53, 'Virovitica-Podravina', 'VP', 1),
(865, 53, 'Vukovar-Srijem', 'VS', 1),
(866, 53, 'Zadar-Knin', 'ZK', 1),
(867, 53, 'Zagreb', 'ZA', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan Laani', 'AL', 1),
(1086, 72, 'Etela-Suomen Laani', 'ES', 1),
(1087, 72, 'Ita-Suomen Laani', 'IS', 1),
(1088, 72, 'Lansi-Suomen Laani', 'LS', 1),
(1089, 72, 'Lapin Lanani', 'LA', 1),
(1090, 72, 'Oulun Laani', 'OU', 1),
(1091, 73, 'Alsace', 'AL', 1),
(1092, 73, 'Aquitaine', 'AQ', 1),
(1093, 73, 'Auvergne', 'AU', 1),
(1094, 73, 'Brittany', 'BR', 1),
(1095, 73, 'Burgundy', 'BU', 1),
(1096, 73, 'Center Loire Valley', 'CE', 1),
(1097, 73, 'Champagne', 'CH', 1),
(1098, 73, 'Corse', 'CO', 1),
(1099, 73, 'France Comte', 'FR', 1),
(1100, 73, 'Languedoc Roussillon', 'LA', 1),
(1101, 73, 'Limousin', 'LI', 1),
(1102, 73, 'Lorraine', 'LO', 1),
(1103, 73, 'Midi Pyrenees', 'MI', 1),
(1104, 73, 'Nord Pas de Calais', 'NO', 1),
(1105, 73, 'Normandy', 'NR', 1),
(1106, 73, 'Paris / Ill de France', 'PA', 1),
(1107, 73, 'Picardie', 'PI', 1),
(1108, 73, 'Poitou Charente', 'PO', 1),
(1109, 73, 'Provence', 'PR', 1),
(1110, 73, 'Rhone Alps', 'RH', 1),
(1111, 73, 'Riviera', 'RI', 1),
(1112, 73, 'Western Loire Valley', 'WE', 1),
(1113, 74, 'Etranger', 'Et', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1428, 97, 'Bacs-Kiskun', 'BK', 1),
(1429, 97, 'Baranya', 'BA', 1),
(1430, 97, 'Bekes', 'BE', 1),
(1431, 97, 'Bekescsaba', 'BS', 1),
(1432, 97, 'Borsod-Abauj-Zemplen', 'BZ', 1),
(1433, 97, 'Budapest', 'BU', 1),
(1434, 97, 'Csongrad', 'CS', 1),
(1435, 97, 'Debrecen', 'DE', 1),
(1436, 97, 'Dunaujvaros', 'DU', 1),
(1437, 97, 'Eger', 'EG', 1),
(1438, 97, 'Fejer', 'FE', 1),
(1439, 97, 'Gyor', 'GY', 1),
(1440, 97, 'Gyor-Moson-Sopron', 'GM', 1),
(1441, 97, 'Hajdu-Bihar', 'HB', 1),
(1442, 97, 'Heves', 'HE', 1),
(1443, 97, 'Hodmezovasarhely', 'HO', 1),
(1444, 97, 'Jasz-Nagykun-Szolnok', 'JN', 1),
(1445, 97, 'Kaposvar', 'KA', 1),
(1446, 97, 'Kecskemet', 'KE', 1),
(1447, 97, 'Komarom-Esztergom', 'KO', 1),
(1448, 97, 'Miskolc', 'MI', 1),
(1449, 97, 'Nagykanizsa', 'NA', 1),
(1450, 97, 'Nograd', 'NO', 1),
(1451, 97, 'Nyiregyhaza', 'NY', 1),
(1452, 97, 'Pecs', 'PE', 1),
(1453, 97, 'Pest', 'PS', 1),
(1454, 97, 'Somogy', 'SO', 1),
(1455, 97, 'Sopron', 'SP', 1),
(1456, 97, 'Szabolcs-Szatmar-Bereg', 'SS', 1),
(1457, 97, 'Szeged', 'SZ', 1),
(1458, 97, 'Szekesfehervar', 'SE', 1),
(1459, 97, 'Szolnok', 'SL', 1),
(1460, 97, 'Szombathely', 'SM', 1),
(1461, 97, 'Tatabanya', 'TA', 1),
(1462, 97, 'Tolna', 'TO', 1),
(1463, 97, 'Vas', 'VA', 1),
(1464, 97, 'Veszprem', 'VE', 1),
(1465, 97, 'Zala', 'ZA', 1),
(1466, 97, 'Zalaegerszeg', 'ZZ', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Алматинская область', 'AL', 1),
(1717, 109, 'Алматы - город республ-го значения', 'AC', 1),
(1718, 109, 'Акмолинская область', 'AM', 1),
(1719, 109, 'Актюбинская область', 'AQ', 1),
(1720, 109, 'Астана - город республ-го значения', 'AS', 1),
(1721, 109, 'Атырауская область', 'AT', 1),
(1722, 109, 'Западно-Казахстанская область', 'BA', 1),
(1723, 109, 'Байконур - город республ-го значения', 'BY', 1),
(1724, 109, 'Мангистауская область', 'MA', 1),
(1725, 109, 'Южно-Казахстанская область', 'ON', 1),
(1726, 109, 'Павлодарская область', 'PA', 1),
(1727, 109, 'Карагандинская область', 'QA', 1),
(1728, 109, 'Костанайская область', 'QO', 1),
(1729, 109, 'Кызылординская область', 'QY', 1),
(1730, 109, 'Восточно-Казахстанская область', 'SH', 1),
(1731, 109, 'Северо-Казахстанская область', 'SO', 1),
(1732, 109, 'Жамбылская область', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1819, 117, 'Aizkraukles Rajons', 'AIZ', 1),
(1820, 117, 'Aluksnes Rajons', 'ALU', 1),
(1821, 117, 'Balvu Rajons', 'BAL', 1),
(1822, 117, 'Bauskas Rajons', 'BAU', 1),
(1823, 117, 'Cesu Rajons', 'CES', 1),
(1824, 117, 'Daugavpils Rajons', 'DGR', 1),
(1825, 117, 'Dobeles Rajons', 'DOB', 1),
(1826, 117, 'Gulbenes Rajons', 'GUL', 1),
(1827, 117, 'Jekabpils Rajons', 'JEK', 1),
(1828, 117, 'Jelgavas Rajons', 'JGR', 1),
(1829, 117, 'Kraslavas Rajons', 'KRA', 1),
(1830, 117, 'Kuldigas Rajons', 'KUL', 1),
(1831, 117, 'Liepajas Rajons', 'LPR', 1),
(1832, 117, 'Limbazu Rajons', 'LIM', 1),
(1833, 117, 'Ludzas Rajons', 'LUD', 1),
(1834, 117, 'Madonas Rajons', 'MAD', 1),
(1835, 117, 'Ogres Rajons', 'OGR', 1),
(1836, 117, 'Preilu Rajons', 'PRE', 1),
(1837, 117, 'Rezeknes Rajons', 'RZR', 1),
(1838, 117, 'Rigas Rajons', 'RGR', 1),
(1839, 117, 'Saldus Rajons', 'SAL', 1),
(1840, 117, 'Talsu Rajons', 'TAL', 1),
(1841, 117, 'Tukuma Rajons', 'TUK', 1),
(1842, 117, 'Valkas Rajons', 'VLK', 1),
(1843, 117, 'Valmieras Rajons', 'VLM', 1),
(1844, 117, 'Ventspils Rajons', 'VSR', 1),
(1845, 117, 'Daugavpils', 'DGV', 1),
(1846, 117, 'Jelgava', 'JGV', 1),
(1847, 117, 'Jurmala', 'JUR', 1),
(1848, 117, 'Liepaja', 'LPK', 1),
(1849, 117, 'Rezekne', 'RZK', 1),
(1850, 117, 'Riga', 'RGA', 1),
(1851, 117, 'Ventspils', 'VSL', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'JO', 1),
(1972, 129, 'Kedah', 'KE', 1),
(1973, 129, 'Kelantan', 'KL', 1),
(1974, 129, 'Labuan', 'LA', 1),
(1975, 129, 'Melaka', 'ME', 1),
(1976, 129, 'Negeri Sembilan', 'NS', 1),
(1977, 129, 'Pahang', 'PA', 1),
(1978, 129, 'Perak', 'PE', 1),
(1979, 129, 'Perlis', 'PR', 1),
(1980, 129, 'Pulau Pinang', 'PP', 1),
(1981, 129, 'Sabah', 'SA', 1),
(1982, 129, 'Sarawak', 'SR', 1),
(1983, 129, 'Selangor', 'SE', 1),
(1984, 129, 'Terengganu', 'TE', 1),
(1985, 129, 'Wilayah Persekutuan', 'WP', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairprarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Республика Хакасия', 'KK', 1),
(2722, 176, 'Московская область', 'MOS', 1),
(2723, 176, 'Чукотский АО', 'CHU', 1),
(2724, 176, 'Архангельская область', 'ARK', 1),
(2725, 176, 'Астраханская область', 'AST', 1),
(2726, 176, 'Алтайский край', 'ALT', 1),
(2727, 176, 'Белгородская область', 'BEL', 1),
(2728, 176, 'Еврейская АО', 'YEV', 1),
(2729, 176, 'Амурская область', 'AMU', 1),
(2730, 176, 'Брянская область', 'BRY', 1),
(2731, 176, 'Чувашская Республика', 'CU', 1),
(2732, 176, 'Челябинская область', 'CHE', 1),
(2733, 176, 'Карачаево-Черкеcсия', 'KC', 1),
(2734, 176, 'Забайкальский край', 'ZAB', 1),
(2735, 176, 'Ленинградская область', 'LEN', 1),
(2736, 176, 'Республика Калмыкия', 'KL', 1),
(2737, 176, 'Сахалинская область', 'SAK', 1),
(2738, 176, 'Республика Алтай', 'AL', 1),
(2739, 176, 'Чеченская Республика', 'CE', 1),
(2740, 176, 'Иркутская область', 'IRK', 1),
(2741, 176, 'Ивановская область', 'IVA', 1),
(2742, 176, 'Удмуртская Республика', 'UD', 1),
(2743, 176, 'Калининградская область', 'KGD', 1),
(2744, 176, 'Калужская область', 'KLU', 1),
(2746, 176, 'Республика Татарстан', 'TA', 1),
(2747, 176, 'Кемеровская область', 'KEM', 1),
(2748, 176, 'Хабаровский край', 'KHA', 1),
(2749, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
(2750, 176, 'Костромская область', 'KOS', 1),
(2751, 176, 'Краснодарский край', 'KDA', 1),
(2752, 176, 'Красноярский край', 'KYA', 1),
(2754, 176, 'Курганская область', 'KGN', 1),
(2755, 176, 'Курская область', 'KRS', 1),
(2756, 176, 'Республика Тыва', 'TY', 1),
(2757, 176, 'Липецкая область', 'LIP', 1),
(2758, 176, 'Магаданская область', 'MAG', 1),
(2759, 176, 'Республика Дагестан', 'DA', 1),
(2760, 176, 'Республика Адыгея', 'AD', 1),
(2761, 176, 'Москва', 'MOW', 1),
(2762, 176, 'Мурманская область', 'MUR', 1),
(2763, 176, 'Республика Кабардино-Балкария', 'KB', 1),
(2764, 176, 'Ненецкий АО', 'NEN', 1),
(2765, 176, 'Республика Ингушетия', 'IN', 1),
(2766, 176, 'Нижегородская область', 'NIZ', 1),
(2767, 176, 'Новгородская область', 'NGR', 1),
(2768, 176, 'Новосибирская область', 'NVS', 1),
(2769, 176, 'Омская область', 'OMS', 1),
(2770, 176, 'Орловская область', 'ORL', 1),
(2771, 176, 'Оренбургская область', 'ORE', 1),
(2773, 176, 'Пензенская область', 'PNZ', 1),
(2774, 176, 'Пермский край', 'PER', 1),
(2775, 176, 'Камчатский край', 'KAM', 1),
(2776, 176, 'Республика Карелия', 'KR', 1),
(2777, 176, 'Псковская область', 'PSK', 1),
(2778, 176, 'Ростовская область', 'ROS', 1),
(2779, 176, 'Рязанская область', 'RYA', 1),
(2780, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
(2781, 176, 'Самарская область', 'SAM', 1),
(2782, 176, 'Республика Мордовия', 'MO', 1),
(2783, 176, 'Саратовская область', 'SAR', 1),
(2784, 176, 'Смоленская область', 'SMO', 1),
(2785, 176, 'Санкт-Петербург', 'SPE', 1),
(2786, 176, 'Ставропольский край', 'STA', 1),
(2787, 176, 'Республика Коми', 'KO', 1),
(2788, 176, 'Тамбовская область', 'TAM', 1),
(2789, 176, 'Томская область', 'TOM', 1),
(2790, 176, 'Тульская область', 'TUL', 1),
(2792, 176, 'Тверская область', 'TVE', 1),
(2793, 176, 'Тюменская область', 'TYU', 1),
(2794, 176, 'Республика Башкортостан', 'BA', 1),
(2795, 176, 'Ульяновская область', 'ULY', 1),
(2796, 176, 'Республика Бурятия', 'BU', 1),
(2798, 176, 'Республика Северная Осетия', 'SE', 1),
(2799, 176, 'Владимирская область', 'VLA', 1),
(2800, 176, 'Приморский край', 'PRI', 1),
(2801, 176, 'Волгоградская область', 'VGG', 1),
(2802, 176, 'Вологодская область', 'VLG', 1),
(2803, 176, 'Воронежская область', 'VOR', 1),
(2804, 176, 'Кировская область', 'KIR', 1),
(2805, 176, 'Республика Саха', 'SA', 1),
(2806, 176, 'Ярославская область', 'YAR', 1),
(2807, 176, 'Свердловская область', 'SVE', 1),
(2808, 176, 'Республика Марий Эл', 'ME', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3031, 197, 'Ascension', 'A', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3033, 197, 'Tristan da Cunha', 'T', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakir', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazig', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kirikkale', 'KRK', 1),
(3364, 215, 'Kirklareli', 'KLR', 1),
(3365, 215, 'Kirsehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Черкассы', 'CK', 1),
(3481, 220, 'Чернигов', 'CH', 1),
(3482, 220, 'Черновцы', 'CV', 1),
(3483, 220, 'Крым', 'CR', 1),
(3484, 220, 'Днепропетровск', 'DN', 1),
(3485, 220, 'Донецк', 'DO', 1),
(3486, 220, 'Ивано-Франковск', 'IV', 1),
(3487, 220, 'Харьков', 'KH', 1),
(3488, 220, 'Хмельницкий', 'KM', 1),
(3489, 220, 'Кировоград', 'KR', 1),
(3490, 220, 'Киевская область', 'KV', 1),
(3491, 220, 'Киев', 'KY', 1),
(3492, 220, 'Луганск', 'LU', 1),
(3493, 220, 'Львов', 'LV', 1),
(3494, 220, 'Николаев', 'MY', 1),
(3495, 220, 'Одесса', 'OD', 1),
(3496, 220, 'Полтава', 'PO', 1),
(3497, 220, 'Ровно', 'RI', 1),
(3498, 220, 'Севастополь', 'SE', 1),
(3499, 220, 'Сумы', 'SU', 1),
(3500, 220, 'Тернополь', 'TE', 1),
(3501, 220, 'Винница', 'VI', 1),
(3502, 220, 'Луцк', 'VO', 1),
(3503, 220, 'Ужгород', 'ZK', 1),
(3504, 220, 'Запорожье', 'ZA', 1),
(3505, 220, 'Житомир', 'ZH', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3808, 236, 'Kosovo', 'KOS', 1),
(3809, 236, 'Montenegro', 'MON', 1),
(3810, 236, 'Serbia', 'SER', 1),
(3811, 236, 'Vojvodina', 'VOJ', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 220, 'Херсон', 'KE', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(57, 176, 0, 3, '2015-11-11 15:56:24', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oca_label`
--
ALTER TABLE `oca_label`
  ADD PRIMARY KEY (`label_id`);

--
-- Индексы таблицы `oca_label_product`
--
ALTER TABLE `oca_label_product`
  ADD PRIMARY KEY (`product_label_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Индексы таблицы `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Индексы таблицы `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
  ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Индексы таблицы `oc_callback`
--
ALTER TABLE `oc_callback`
  ADD PRIMARY KEY (`callback_id`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_dqc_setting`
--
ALTER TABLE `oc_dqc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_dqc_statistic`
--
ALTER TABLE `oc_dqc_statistic`
  ADD PRIMARY KEY (`statistic_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_description`
--
ALTER TABLE `oc_manufacturer_description`
  ADD PRIMARY KEY (`manufacturer_id`,`language_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_mfilter_settings`
--
ALTER TABLE `oc_mfilter_settings`
  ADD UNIQUE KEY `idx` (`idx`);

--
-- Индексы таблицы `oc_mfilter_url_alias`
--
ALTER TABLE `oc_mfilter_url_alias`
  ADD PRIMARY KEY (`mfilter_url_alias_id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_news`
--
ALTER TABLE `oc_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Индексы таблицы `oc_news_description`
--
ALTER TABLE `oc_news_description`
  ADD PRIMARY KEY (`news_id`,`language_id`);

--
-- Индексы таблицы `oc_news_to_store`
--
ALTER TABLE `oc_news_to_store`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Индексы таблицы `oc_ocfilter_option`
--
ALTER TABLE `oc_ocfilter_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `keyword` (`keyword`),
  ADD KEY `status` (`status`),
  ADD KEY `sort_order` (`sort_order`);

--
-- Индексы таблицы `oc_ocfilter_option_description`
--
ALTER TABLE `oc_ocfilter_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_ocfilter_option_to_category`
--
ALTER TABLE `oc_ocfilter_option_to_category`
  ADD PRIMARY KEY (`category_id`,`option_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_ocfilter_option_to_store`
--
ALTER TABLE `oc_ocfilter_option_to_store`
  ADD PRIMARY KEY (`store_id`,`option_id`);

--
-- Индексы таблицы `oc_ocfilter_option_value`
--
ALTER TABLE `oc_ocfilter_option_value`
  ADD PRIMARY KEY (`value_id`,`option_id`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_ocfilter_option_value_description`
--
ALTER TABLE `oc_ocfilter_option_value_description`
  ADD PRIMARY KEY (`value_id`,`language_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_ocfilter_option_value_to_product`
--
ALTER TABLE `oc_ocfilter_option_value_to_product`
  ADD PRIMARY KEY (`ocfilter_option_value_to_product_id`),
  ADD KEY `slide_value_min_slide_value_max` (`slide_value_min`,`slide_value_max`),
  ADD KEY `option_id_value_id` (`option_id`,`value_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_ocfilter_option_value_to_product_description`
--
ALTER TABLE `oc_ocfilter_option_value_to_product_description`
  ADD PRIMARY KEY (`product_id`,`value_id`,`option_id`,`language_id`);

--
-- Индексы таблицы `oc_ocfilter_page`
--
ALTER TABLE `oc_ocfilter_page`
  ADD PRIMARY KEY (`ocfilter_page_id`),
  ADD KEY `category_id_ocfilter_params` (`category_id`,`ocfilter_params`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_posts`
--
ALTER TABLE `oc_posts`
  ADD PRIMARY KEY (`posts_id`);

--
-- Индексы таблицы `oc_posts_description`
--
ALTER TABLE `oc_posts_description`
  ADD PRIMARY KEY (`posts_description_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `price` (`price`),
  ADD KEY `quantity` (`quantity`),
  ADD KEY `stock_status_id` (`stock_status_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_pvr_collection`
--
ALTER TABLE `oc_pvr_collection`
  ADD PRIMARY KEY (`collection_id`);

--
-- Индексы таблицы `oc_pvr_description`
--
ALTER TABLE `oc_pvr_description`
  ADD PRIMARY KEY (`pvr_id`,`language_id`);

--
-- Индексы таблицы `oc_pvr_to_product`
--
ALTER TABLE `oc_pvr_to_product`
  ADD PRIMARY KEY (`pvr_id`,`product_id`);

--
-- Индексы таблицы `oc_pvr_to_store`
--
ALTER TABLE `oc_pvr_to_store`
  ADD PRIMARY KEY (`pvr_id`,`store_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_sb_nauthor`
--
ALTER TABLE `oc_sb_nauthor`
  ADD PRIMARY KEY (`nauthor_id`);

--
-- Индексы таблицы `oc_sb_nauthor_description`
--
ALTER TABLE `oc_sb_nauthor_description`
  ADD PRIMARY KEY (`nauthor_id`,`language_id`);

--
-- Индексы таблицы `oc_sb_ncategory`
--
ALTER TABLE `oc_sb_ncategory`
  ADD PRIMARY KEY (`ncategory_id`);

--
-- Индексы таблицы `oc_sb_ncategory_description`
--
ALTER TABLE `oc_sb_ncategory_description`
  ADD PRIMARY KEY (`ncategory_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_sb_ncategory_to_group`
--
ALTER TABLE `oc_sb_ncategory_to_group`
  ADD PRIMARY KEY (`ncategory_id`,`group_id`);

--
-- Индексы таблицы `oc_sb_ncategory_to_layout`
--
ALTER TABLE `oc_sb_ncategory_to_layout`
  ADD PRIMARY KEY (`ncategory_id`,`store_id`);

--
-- Индексы таблицы `oc_sb_ncategory_to_store`
--
ALTER TABLE `oc_sb_ncategory_to_store`
  ADD PRIMARY KEY (`ncategory_id`,`store_id`);

--
-- Индексы таблицы `oc_sb_ncomments`
--
ALTER TABLE `oc_sb_ncomments`
  ADD PRIMARY KEY (`ncomment_id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `oc_sb_news`
--
ALTER TABLE `oc_sb_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Индексы таблицы `oc_sb_news_archive`
--
ALTER TABLE `oc_sb_news_archive`
  ADD PRIMARY KEY (`news_archive_id`);

--
-- Индексы таблицы `oc_sb_news_description`
--
ALTER TABLE `oc_sb_news_description`
  ADD PRIMARY KEY (`news_id`,`language_id`);

--
-- Индексы таблицы `oc_sb_news_gallery`
--
ALTER TABLE `oc_sb_news_gallery`
  ADD PRIMARY KEY (`news_image_id`);

--
-- Индексы таблицы `oc_sb_news_related`
--
ALTER TABLE `oc_sb_news_related`
  ADD PRIMARY KEY (`news_id`,`product_id`);

--
-- Индексы таблицы `oc_sb_news_to_group`
--
ALTER TABLE `oc_sb_news_to_group`
  ADD PRIMARY KEY (`news_id`,`group_id`);

--
-- Индексы таблицы `oc_sb_news_to_layout`
--
ALTER TABLE `oc_sb_news_to_layout`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Индексы таблицы `oc_sb_news_to_ncategory`
--
ALTER TABLE `oc_sb_news_to_ncategory`
  ADD PRIMARY KEY (`news_id`,`ncategory_id`);

--
-- Индексы таблицы `oc_sb_news_to_store`
--
ALTER TABLE `oc_sb_news_to_store`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Индексы таблицы `oc_sb_news_video`
--
ALTER TABLE `oc_sb_news_video`
  ADD PRIMARY KEY (`news_video_id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_ulogin`
--
ALTER TABLE `oc_ulogin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `identity` (`identity`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_videopublisher`
--
ALTER TABLE `oc_videopublisher`
  ADD PRIMARY KEY (`pvr_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oca_label`
--
ALTER TABLE `oca_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT для таблицы `oca_label_product`
--
ALTER TABLE `oca_label_product`
  MODIFY `product_label_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT для таблицы `oc_callback`
--
ALTER TABLE `oc_callback`
  MODIFY `callback_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_dqc_setting`
--
ALTER TABLE `oc_dqc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_dqc_statistic`
--
ALTER TABLE `oc_dqc_statistic`
  MODIFY `statistic_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_mfilter_url_alias`
--
ALTER TABLE `oc_mfilter_url_alias`
  MODIFY `mfilter_url_alias_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблицы `oc_news`
--
ALTER TABLE `oc_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `oc_ocfilter_option`
--
ALTER TABLE `oc_ocfilter_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30012;
--
-- AUTO_INCREMENT для таблицы `oc_ocfilter_option_value`
--
ALTER TABLE `oc_ocfilter_option_value`
  MODIFY `value_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4252452540;
--
-- AUTO_INCREMENT для таблицы `oc_ocfilter_option_value_to_product`
--
ALTER TABLE `oc_ocfilter_option_value_to_product`
  MODIFY `ocfilter_option_value_to_product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT для таблицы `oc_ocfilter_page`
--
ALTER TABLE `oc_ocfilter_page`
  MODIFY `ocfilter_page_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=359;
--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_posts`
--
ALTER TABLE `oc_posts`
  MODIFY `posts_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_posts_description`
--
ALTER TABLE `oc_posts_description`
  MODIFY `posts_description_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=453;
--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2450;
--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=562;
--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=454;
--
-- AUTO_INCREMENT для таблицы `oc_pvr_collection`
--
ALTER TABLE `oc_pvr_collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `oc_sb_nauthor`
--
ALTER TABLE `oc_sb_nauthor`
  MODIFY `nauthor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_sb_ncategory`
--
ALTER TABLE `oc_sb_ncategory`
  MODIFY `ncategory_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT для таблицы `oc_sb_ncomments`
--
ALTER TABLE `oc_sb_ncomments`
  MODIFY `ncomment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `oc_sb_news`
--
ALTER TABLE `oc_sb_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_sb_news_archive`
--
ALTER TABLE `oc_sb_news_archive`
  MODIFY `news_archive_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_sb_news_gallery`
--
ALTER TABLE `oc_sb_news_gallery`
  MODIFY `news_image_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_sb_news_video`
--
ALTER TABLE `oc_sb_news_video`
  MODIFY `news_video_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3676;
--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT для таблицы `oc_ulogin`
--
ALTER TABLE `oc_ulogin`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=905;
--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `oc_videopublisher`
--
ALTER TABLE `oc_videopublisher`
  MODIFY `pvr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3971;
--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `oc_pvr_description`
--
ALTER TABLE `oc_pvr_description`
  ADD CONSTRAINT `oc_pvr_description_ibfk_1` FOREIGN KEY (`pvr_id`) REFERENCES `oc_videopublisher` (`pvr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `oc_pvr_to_product`
--
ALTER TABLE `oc_pvr_to_product`
  ADD CONSTRAINT `oc_pvr_to_product_ibfk_1` FOREIGN KEY (`pvr_id`) REFERENCES `oc_videopublisher` (`pvr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `oc_pvr_to_store`
--
ALTER TABLE `oc_pvr_to_store`
  ADD CONSTRAINT `oc_pvr_to_store_ibfk_1` FOREIGN KEY (`pvr_id`) REFERENCES `oc_videopublisher` (`pvr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;