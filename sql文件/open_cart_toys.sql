/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : open_cart

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-08-07 15:59:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oc_address
-- ----------------------------
DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_address
-- ----------------------------
INSERT INTO `oc_address` VALUES ('1', '1', 'Trime1', 'Tom1', '企业名称1', '1231', '2w3', 'HZ', '1154575', '44', '697', '');
INSERT INTO `oc_address` VALUES ('2', '1', 'Trime23525', 'Tom34232', '企业名称234234', '12324234', '34234234234', 'HZ', '1154575', '44', '697', '');

-- ----------------------------
-- Table structure for oc_api
-- ----------------------------
DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api
-- ----------------------------
INSERT INTO `oc_api` VALUES ('1', 'Default', 'dl1KRNSa6OGJ7BuyVnEp2imDmHVd2WARxL9IVgN2ZCEtWkPjM4x8qNqr4ffbYWD4Y1qLxETTOWAaHnOztkwtqZd8UIKs8zJL4pXePwlVKicqMNt43mvgolNCV62tCykrDLIi04qg0sqz1BeBQzZn0FQrZYHQ5T3ivjmQbY1KTylk8Nj6ib3SKemQ7AQJGxkwB0bhnl9M7apHt0fiYJmRigKx1MmbLgvkEXPV3w4cqOfb7jB3iEZYgmNIrUZXAyiz', '1', '2019-12-27 15:44:13', '2019-12-27 15:44:13');

-- ----------------------------
-- Table structure for oc_api_ip
-- ----------------------------
DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api_ip
-- ----------------------------
INSERT INTO `oc_api_ip` VALUES ('1', '1', '127.0.0.1');

-- ----------------------------
-- Table structure for oc_api_session
-- ----------------------------
DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api_session
-- ----------------------------
INSERT INTO `oc_api_session` VALUES ('1', '1', 'fba8a9a13ca289eaa73dc86b20', '127.0.0.1', '2020-04-27 11:15:33', '2020-04-27 11:15:33');

-- ----------------------------
-- Table structure for oc_attribute
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute
-- ----------------------------
INSERT INTO `oc_attribute` VALUES ('1', '6', '1');
INSERT INTO `oc_attribute` VALUES ('2', '6', '5');
INSERT INTO `oc_attribute` VALUES ('3', '6', '3');
INSERT INTO `oc_attribute` VALUES ('4', '3', '1');
INSERT INTO `oc_attribute` VALUES ('5', '3', '2');
INSERT INTO `oc_attribute` VALUES ('6', '3', '3');
INSERT INTO `oc_attribute` VALUES ('7', '3', '4');
INSERT INTO `oc_attribute` VALUES ('8', '3', '5');
INSERT INTO `oc_attribute` VALUES ('9', '3', '6');
INSERT INTO `oc_attribute` VALUES ('10', '3', '7');
INSERT INTO `oc_attribute` VALUES ('11', '3', '8');

-- ----------------------------
-- Table structure for oc_attribute_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_description
-- ----------------------------
INSERT INTO `oc_attribute_description` VALUES ('1', '1', 'Description');
INSERT INTO `oc_attribute_description` VALUES ('2', '1', 'No. of Cores');
INSERT INTO `oc_attribute_description` VALUES ('4', '1', 'test 1');
INSERT INTO `oc_attribute_description` VALUES ('5', '1', 'test 2');
INSERT INTO `oc_attribute_description` VALUES ('6', '1', 'test 3');
INSERT INTO `oc_attribute_description` VALUES ('7', '1', 'test 4');
INSERT INTO `oc_attribute_description` VALUES ('8', '1', 'test 5');
INSERT INTO `oc_attribute_description` VALUES ('9', '1', 'test 6');
INSERT INTO `oc_attribute_description` VALUES ('10', '1', 'test 7');
INSERT INTO `oc_attribute_description` VALUES ('11', '1', 'test 8');
INSERT INTO `oc_attribute_description` VALUES ('3', '1', 'Clockspeed');

-- ----------------------------
-- Table structure for oc_attribute_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_group
-- ----------------------------
INSERT INTO `oc_attribute_group` VALUES ('3', '2');
INSERT INTO `oc_attribute_group` VALUES ('4', '1');
INSERT INTO `oc_attribute_group` VALUES ('5', '3');
INSERT INTO `oc_attribute_group` VALUES ('6', '4');

-- ----------------------------
-- Table structure for oc_attribute_group_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_group_description
-- ----------------------------
INSERT INTO `oc_attribute_group_description` VALUES ('3', '1', 'Memory');
INSERT INTO `oc_attribute_group_description` VALUES ('4', '1', 'Technical');
INSERT INTO `oc_attribute_group_description` VALUES ('5', '1', 'Motherboard');
INSERT INTO `oc_attribute_group_description` VALUES ('6', '1', 'Processor');

-- ----------------------------
-- Table structure for oc_banner
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner
-- ----------------------------
INSERT INTO `oc_banner` VALUES ('6', 'TowPictures', '1');
INSERT INTO `oc_banner` VALUES ('7', 'Home Page Slideshow', '1');
INSERT INTO `oc_banner` VALUES ('8', 'ColumnPicture', '1');
INSERT INTO `oc_banner` VALUES ('9', 'SinglePicture', '1');

-- ----------------------------
-- Table structure for oc_banner_image
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner_image
-- ----------------------------
INSERT INTO `oc_banner_image` VALUES ('79', '7', '1', 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('139', '6', '1', 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/banner-03.png', '0');
INSERT INTO `oc_banner_image` VALUES ('80', '7', '1', 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('141', '8', '1', 'Nintendo', '', 'catalog/banner-01.png', '0');
INSERT INTO `oc_banner_image` VALUES ('140', '6', '1', 'DENTISTRY', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/banner-04.png', '0');
INSERT INTO `oc_banner_image` VALUES ('138', '9', '1', 'DENTISTRY', '', 'catalog/slider-01.png', '0');

-- ----------------------------
-- Table structure for oc_cart
-- ----------------------------
DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_cart
-- ----------------------------
INSERT INTO `oc_cart` VALUES ('3', '0', '1', 'e66d41af0455c04fcf696da720', '41', '0', '[]', '1', '2020-08-05 14:10:23');
INSERT INTO `oc_cart` VALUES ('4', '0', '1', 'e66d41af0455c04fcf696da720', '47', '0', '{\"225\":\"2011-04-22\"}', '1', '2020-08-05 14:10:40');

-- ----------------------------
-- Table structure for oc_category
-- ----------------------------
DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category
-- ----------------------------
INSERT INTO `oc_category` VALUES ('25', '', '0', '1', '1', '3', '1', '2009-01-31 01:04:25', '2020-06-23 09:10:22');
INSERT INTO `oc_category` VALUES ('27', '', '20', '0', '0', '2', '1', '2009-01-31 01:55:34', '2010-08-22 06:32:15');
INSERT INTO `oc_category` VALUES ('20', 'catalog/demo/compaq_presario.jpg', '0', '1', '1', '1', '1', '2009-01-05 21:49:43', '2020-01-02 18:44:39');
INSERT INTO `oc_category` VALUES ('24', '', '0', '1', '1', '5', '1', '2009-01-20 02:36:26', '2011-05-30 12:15:18');
INSERT INTO `oc_category` VALUES ('18', 'catalog/demo/hp_2.jpg', '0', '1', '0', '2', '1', '2009-01-05 21:49:15', '2011-05-30 12:13:55');
INSERT INTO `oc_category` VALUES ('17', '', '0', '1', '1', '4', '1', '2009-01-03 21:08:57', '2011-05-30 12:15:11');
INSERT INTO `oc_category` VALUES ('28', '', '25', '0', '0', '1', '1', '2009-02-02 13:11:12', '2020-06-23 09:31:08');
INSERT INTO `oc_category` VALUES ('26', '', '20', '0', '0', '1', '1', '2009-01-31 01:55:14', '2010-08-22 06:31:45');
INSERT INTO `oc_category` VALUES ('29', '', '25', '0', '0', '1', '1', '2009-02-02 13:11:37', '2020-06-23 09:31:02');
INSERT INTO `oc_category` VALUES ('30', '', '25', '0', '0', '1', '1', '2009-02-02 13:11:59', '2010-08-22 06:33:00');
INSERT INTO `oc_category` VALUES ('31', '', '25', '0', '0', '1', '1', '2009-02-03 14:17:24', '2010-08-22 06:33:06');
INSERT INTO `oc_category` VALUES ('32', '', '25', '0', '0', '1', '1', '2009-02-03 14:17:34', '2010-08-22 06:33:12');
INSERT INTO `oc_category` VALUES ('33', '', '0', '1', '1', '6', '1', '2009-02-03 14:17:55', '2020-06-23 09:10:16');
INSERT INTO `oc_category` VALUES ('34', 'catalog/demo/ipod_touch_4.jpg', '0', '1', '4', '7', '1', '2009-02-03 14:18:11', '2011-05-30 12:15:31');
INSERT INTO `oc_category` VALUES ('35', '', '28', '0', '0', '0', '1', '2010-09-17 10:06:48', '2010-09-18 14:02:42');
INSERT INTO `oc_category` VALUES ('36', '', '28', '0', '0', '0', '1', '2010-09-17 10:07:13', '2010-09-18 14:02:55');
INSERT INTO `oc_category` VALUES ('37', '', '34', '0', '0', '0', '1', '2010-09-18 14:03:39', '2011-04-22 01:55:08');
INSERT INTO `oc_category` VALUES ('38', '', '34', '0', '0', '0', '1', '2010-09-18 14:03:51', '2010-09-18 14:03:51');
INSERT INTO `oc_category` VALUES ('39', '', '34', '0', '0', '0', '1', '2010-09-18 14:04:17', '2011-04-22 01:55:20');
INSERT INTO `oc_category` VALUES ('40', '', '34', '0', '0', '0', '1', '2010-09-18 14:05:36', '2010-09-18 14:05:36');
INSERT INTO `oc_category` VALUES ('41', '', '34', '0', '0', '0', '1', '2010-09-18 14:05:49', '2011-04-22 01:55:30');
INSERT INTO `oc_category` VALUES ('42', '', '34', '0', '0', '0', '1', '2010-09-18 14:06:34', '2010-11-07 20:31:04');
INSERT INTO `oc_category` VALUES ('43', '', '34', '0', '0', '0', '1', '2010-09-18 14:06:49', '2011-04-22 01:55:40');
INSERT INTO `oc_category` VALUES ('44', '', '34', '0', '0', '0', '1', '2010-09-21 15:39:21', '2010-11-07 20:30:55');
INSERT INTO `oc_category` VALUES ('45', '', '18', '0', '0', '0', '1', '2010-09-24 18:29:16', '2011-04-26 08:52:11');
INSERT INTO `oc_category` VALUES ('46', '', '18', '0', '0', '0', '1', '2010-09-24 18:29:31', '2011-04-26 08:52:23');
INSERT INTO `oc_category` VALUES ('47', '', '34', '0', '0', '0', '1', '2010-11-07 11:13:16', '2010-11-07 11:13:16');
INSERT INTO `oc_category` VALUES ('48', '', '34', '0', '0', '0', '1', '2010-11-07 11:13:33', '2010-11-07 11:13:33');
INSERT INTO `oc_category` VALUES ('49', '', '34', '0', '0', '0', '1', '2010-11-07 11:14:04', '2010-11-07 11:14:04');
INSERT INTO `oc_category` VALUES ('50', '', '34', '0', '0', '0', '1', '2010-11-07 11:14:23', '2011-04-22 01:16:01');
INSERT INTO `oc_category` VALUES ('51', '', '34', '0', '0', '0', '1', '2010-11-07 11:14:38', '2011-04-22 01:16:13');
INSERT INTO `oc_category` VALUES ('52', '', '34', '0', '0', '0', '1', '2010-11-07 11:16:09', '2011-04-22 01:54:57');
INSERT INTO `oc_category` VALUES ('53', '', '34', '0', '0', '0', '1', '2010-11-07 11:28:53', '2011-04-22 01:14:36');
INSERT INTO `oc_category` VALUES ('54', '', '34', '0', '0', '0', '1', '2010-11-07 11:29:16', '2011-04-22 01:16:50');
INSERT INTO `oc_category` VALUES ('55', '', '34', '0', '0', '0', '1', '2010-11-08 10:31:32', '2010-11-08 10:31:32');
INSERT INTO `oc_category` VALUES ('56', '', '34', '0', '0', '0', '1', '2010-11-08 10:31:50', '2011-04-22 01:16:37');
INSERT INTO `oc_category` VALUES ('57', '', '0', '1', '1', '3', '1', '2011-04-26 08:53:16', '2011-05-30 12:15:05');
INSERT INTO `oc_category` VALUES ('58', '', '52', '0', '0', '0', '1', '2011-05-08 13:44:16', '2011-05-08 13:44:16');

-- ----------------------------
-- Table structure for oc_category_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_description
-- ----------------------------
INSERT INTO `oc_category_description` VALUES ('28', '1', 'Monitors', '', 'Monitors', '', '');
INSERT INTO `oc_category_description` VALUES ('33', '1', 'Cameras', '', 'Cameras', '', '');
INSERT INTO `oc_category_description` VALUES ('32', '1', 'Web Cameras', '', 'Web Cameras', '', '');
INSERT INTO `oc_category_description` VALUES ('31', '1', 'Scanners', '', 'Scanners', '', '');
INSERT INTO `oc_category_description` VALUES ('30', '1', 'Printers', '', 'Printers', '', '');
INSERT INTO `oc_category_description` VALUES ('29', '1', 'Mice and Trackballs', '', 'Mice and Trackballs', '', '');
INSERT INTO `oc_category_description` VALUES ('27', '1', 'Mac', '', 'Mac', '', '');
INSERT INTO `oc_category_description` VALUES ('26', '1', 'PC', '', 'PC', '', '');
INSERT INTO `oc_category_description` VALUES ('17', '1', 'Software', '', 'Software', '', '');
INSERT INTO `oc_category_description` VALUES ('25', '1', 'Components', '', 'Components', '', '');
INSERT INTO `oc_category_description` VALUES ('24', '1', 'Phones &amp; PDAs', '', 'Phones &amp; PDAs', '', '');
INSERT INTO `oc_category_description` VALUES ('20', '1', 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', '');
INSERT INTO `oc_category_description` VALUES ('35', '1', 'test 1', '', 'test 1', '', '');
INSERT INTO `oc_category_description` VALUES ('36', '1', 'test 2', '', 'test 2', '', '');
INSERT INTO `oc_category_description` VALUES ('37', '1', 'test 5', '', 'test 5', '', '');
INSERT INTO `oc_category_description` VALUES ('38', '1', 'test 4', '', 'test 4', '', '');
INSERT INTO `oc_category_description` VALUES ('39', '1', 'test 6', '', 'test 6', '', '');
INSERT INTO `oc_category_description` VALUES ('40', '1', 'test 7', '', 'test 7', '', '');
INSERT INTO `oc_category_description` VALUES ('41', '1', 'test 8', '', 'test 8', '', '');
INSERT INTO `oc_category_description` VALUES ('42', '1', 'test 9', '', 'test 9', '', '');
INSERT INTO `oc_category_description` VALUES ('43', '1', 'test 11', '', 'test 11', '', '');
INSERT INTO `oc_category_description` VALUES ('34', '1', 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', '');
INSERT INTO `oc_category_description` VALUES ('18', '1', 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', '');
INSERT INTO `oc_category_description` VALUES ('44', '1', 'test 12', '', 'test 12', '', '');
INSERT INTO `oc_category_description` VALUES ('45', '1', 'Windows', '', 'Windows', '', '');
INSERT INTO `oc_category_description` VALUES ('46', '1', 'Macs', '', 'Macs', '', '');
INSERT INTO `oc_category_description` VALUES ('47', '1', 'test 15', '', 'test 15', '', '');
INSERT INTO `oc_category_description` VALUES ('48', '1', 'test 16', '', 'test 16', '', '');
INSERT INTO `oc_category_description` VALUES ('49', '1', 'test 17', '', 'test 17', '', '');
INSERT INTO `oc_category_description` VALUES ('50', '1', 'test 18', '', 'test 18', '', '');
INSERT INTO `oc_category_description` VALUES ('51', '1', 'test 19', '', 'test 19', '', '');
INSERT INTO `oc_category_description` VALUES ('52', '1', 'test 20', '', 'test 20', '', '');
INSERT INTO `oc_category_description` VALUES ('53', '1', 'test 21', '', 'test 21', '', '');
INSERT INTO `oc_category_description` VALUES ('54', '1', 'test 22', '', 'test 22', '', '');
INSERT INTO `oc_category_description` VALUES ('55', '1', 'test 23', '', 'test 23', '', '');
INSERT INTO `oc_category_description` VALUES ('56', '1', 'test 24', '', 'test 24', '', '');
INSERT INTO `oc_category_description` VALUES ('57', '1', 'Tablets', '', 'Tablets', '', '');
INSERT INTO `oc_category_description` VALUES ('58', '1', 'test 25', '', 'test 25', '', '');

-- ----------------------------
-- Table structure for oc_category_filter
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_filter
-- ----------------------------
INSERT INTO `oc_category_filter` VALUES ('20', '1');
INSERT INTO `oc_category_filter` VALUES ('20', '2');
INSERT INTO `oc_category_filter` VALUES ('28', '1');
INSERT INTO `oc_category_filter` VALUES ('28', '2');

-- ----------------------------
-- Table structure for oc_category_path
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_path
-- ----------------------------
INSERT INTO `oc_category_path` VALUES ('25', '25', '0');
INSERT INTO `oc_category_path` VALUES ('28', '25', '0');
INSERT INTO `oc_category_path` VALUES ('28', '28', '1');
INSERT INTO `oc_category_path` VALUES ('35', '25', '0');
INSERT INTO `oc_category_path` VALUES ('35', '28', '1');
INSERT INTO `oc_category_path` VALUES ('35', '35', '2');
INSERT INTO `oc_category_path` VALUES ('36', '25', '0');
INSERT INTO `oc_category_path` VALUES ('36', '28', '1');
INSERT INTO `oc_category_path` VALUES ('36', '36', '2');
INSERT INTO `oc_category_path` VALUES ('29', '25', '0');
INSERT INTO `oc_category_path` VALUES ('29', '29', '1');
INSERT INTO `oc_category_path` VALUES ('30', '25', '0');
INSERT INTO `oc_category_path` VALUES ('30', '30', '1');
INSERT INTO `oc_category_path` VALUES ('31', '25', '0');
INSERT INTO `oc_category_path` VALUES ('31', '31', '1');
INSERT INTO `oc_category_path` VALUES ('32', '25', '0');
INSERT INTO `oc_category_path` VALUES ('32', '32', '1');
INSERT INTO `oc_category_path` VALUES ('20', '20', '0');
INSERT INTO `oc_category_path` VALUES ('27', '20', '0');
INSERT INTO `oc_category_path` VALUES ('27', '27', '1');
INSERT INTO `oc_category_path` VALUES ('26', '20', '0');
INSERT INTO `oc_category_path` VALUES ('26', '26', '1');
INSERT INTO `oc_category_path` VALUES ('24', '24', '0');
INSERT INTO `oc_category_path` VALUES ('18', '18', '0');
INSERT INTO `oc_category_path` VALUES ('45', '18', '0');
INSERT INTO `oc_category_path` VALUES ('45', '45', '1');
INSERT INTO `oc_category_path` VALUES ('46', '18', '0');
INSERT INTO `oc_category_path` VALUES ('46', '46', '1');
INSERT INTO `oc_category_path` VALUES ('17', '17', '0');
INSERT INTO `oc_category_path` VALUES ('33', '33', '0');
INSERT INTO `oc_category_path` VALUES ('34', '34', '0');
INSERT INTO `oc_category_path` VALUES ('37', '34', '0');
INSERT INTO `oc_category_path` VALUES ('37', '37', '1');
INSERT INTO `oc_category_path` VALUES ('38', '34', '0');
INSERT INTO `oc_category_path` VALUES ('38', '38', '1');
INSERT INTO `oc_category_path` VALUES ('39', '34', '0');
INSERT INTO `oc_category_path` VALUES ('39', '39', '1');
INSERT INTO `oc_category_path` VALUES ('40', '34', '0');
INSERT INTO `oc_category_path` VALUES ('40', '40', '1');
INSERT INTO `oc_category_path` VALUES ('41', '34', '0');
INSERT INTO `oc_category_path` VALUES ('41', '41', '1');
INSERT INTO `oc_category_path` VALUES ('42', '34', '0');
INSERT INTO `oc_category_path` VALUES ('42', '42', '1');
INSERT INTO `oc_category_path` VALUES ('43', '34', '0');
INSERT INTO `oc_category_path` VALUES ('43', '43', '1');
INSERT INTO `oc_category_path` VALUES ('44', '34', '0');
INSERT INTO `oc_category_path` VALUES ('44', '44', '1');
INSERT INTO `oc_category_path` VALUES ('47', '34', '0');
INSERT INTO `oc_category_path` VALUES ('47', '47', '1');
INSERT INTO `oc_category_path` VALUES ('48', '34', '0');
INSERT INTO `oc_category_path` VALUES ('48', '48', '1');
INSERT INTO `oc_category_path` VALUES ('49', '34', '0');
INSERT INTO `oc_category_path` VALUES ('49', '49', '1');
INSERT INTO `oc_category_path` VALUES ('50', '34', '0');
INSERT INTO `oc_category_path` VALUES ('50', '50', '1');
INSERT INTO `oc_category_path` VALUES ('51', '34', '0');
INSERT INTO `oc_category_path` VALUES ('51', '51', '1');
INSERT INTO `oc_category_path` VALUES ('52', '34', '0');
INSERT INTO `oc_category_path` VALUES ('52', '52', '1');
INSERT INTO `oc_category_path` VALUES ('58', '34', '0');
INSERT INTO `oc_category_path` VALUES ('58', '52', '1');
INSERT INTO `oc_category_path` VALUES ('58', '58', '2');
INSERT INTO `oc_category_path` VALUES ('53', '34', '0');
INSERT INTO `oc_category_path` VALUES ('53', '53', '1');
INSERT INTO `oc_category_path` VALUES ('54', '34', '0');
INSERT INTO `oc_category_path` VALUES ('54', '54', '1');
INSERT INTO `oc_category_path` VALUES ('55', '34', '0');
INSERT INTO `oc_category_path` VALUES ('55', '55', '1');
INSERT INTO `oc_category_path` VALUES ('56', '34', '0');
INSERT INTO `oc_category_path` VALUES ('56', '56', '1');
INSERT INTO `oc_category_path` VALUES ('57', '57', '0');

-- ----------------------------
-- Table structure for oc_category_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_to_layout
-- ----------------------------
INSERT INTO `oc_category_to_layout` VALUES ('33', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('20', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('28', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('33', '1', '0');
INSERT INTO `oc_category_to_layout` VALUES ('25', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('25', '1', '0');
INSERT INTO `oc_category_to_layout` VALUES ('29', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('29', '1', '0');
INSERT INTO `oc_category_to_layout` VALUES ('28', '1', '0');

-- ----------------------------
-- Table structure for oc_category_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_to_store
-- ----------------------------
INSERT INTO `oc_category_to_store` VALUES ('17', '0');
INSERT INTO `oc_category_to_store` VALUES ('18', '0');
INSERT INTO `oc_category_to_store` VALUES ('20', '0');
INSERT INTO `oc_category_to_store` VALUES ('24', '0');
INSERT INTO `oc_category_to_store` VALUES ('25', '0');
INSERT INTO `oc_category_to_store` VALUES ('25', '1');
INSERT INTO `oc_category_to_store` VALUES ('26', '0');
INSERT INTO `oc_category_to_store` VALUES ('27', '0');
INSERT INTO `oc_category_to_store` VALUES ('28', '0');
INSERT INTO `oc_category_to_store` VALUES ('28', '1');
INSERT INTO `oc_category_to_store` VALUES ('29', '0');
INSERT INTO `oc_category_to_store` VALUES ('29', '1');
INSERT INTO `oc_category_to_store` VALUES ('30', '0');
INSERT INTO `oc_category_to_store` VALUES ('31', '0');
INSERT INTO `oc_category_to_store` VALUES ('32', '0');
INSERT INTO `oc_category_to_store` VALUES ('33', '0');
INSERT INTO `oc_category_to_store` VALUES ('33', '1');
INSERT INTO `oc_category_to_store` VALUES ('34', '0');
INSERT INTO `oc_category_to_store` VALUES ('35', '0');
INSERT INTO `oc_category_to_store` VALUES ('36', '0');
INSERT INTO `oc_category_to_store` VALUES ('37', '0');
INSERT INTO `oc_category_to_store` VALUES ('38', '0');
INSERT INTO `oc_category_to_store` VALUES ('39', '0');
INSERT INTO `oc_category_to_store` VALUES ('40', '0');
INSERT INTO `oc_category_to_store` VALUES ('41', '0');
INSERT INTO `oc_category_to_store` VALUES ('42', '0');
INSERT INTO `oc_category_to_store` VALUES ('43', '0');
INSERT INTO `oc_category_to_store` VALUES ('44', '0');
INSERT INTO `oc_category_to_store` VALUES ('45', '0');
INSERT INTO `oc_category_to_store` VALUES ('46', '0');
INSERT INTO `oc_category_to_store` VALUES ('47', '0');
INSERT INTO `oc_category_to_store` VALUES ('48', '0');
INSERT INTO `oc_category_to_store` VALUES ('49', '0');
INSERT INTO `oc_category_to_store` VALUES ('50', '0');
INSERT INTO `oc_category_to_store` VALUES ('51', '0');
INSERT INTO `oc_category_to_store` VALUES ('52', '0');
INSERT INTO `oc_category_to_store` VALUES ('53', '0');
INSERT INTO `oc_category_to_store` VALUES ('54', '0');
INSERT INTO `oc_category_to_store` VALUES ('55', '0');
INSERT INTO `oc_category_to_store` VALUES ('56', '0');
INSERT INTO `oc_category_to_store` VALUES ('57', '0');
INSERT INTO `oc_category_to_store` VALUES ('58', '0');

-- ----------------------------
-- Table structure for oc_country
-- ----------------------------
DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_country
-- ----------------------------
INSERT INTO `oc_country` VALUES ('1', 'Afghanistan', 'AF', 'AFG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('2', 'Albania', 'AL', 'ALB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('3', 'Algeria', 'DZ', 'DZA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('4', 'American Samoa', 'AS', 'ASM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('5', 'Andorra', 'AD', 'AND', '', '0', '1');
INSERT INTO `oc_country` VALUES ('6', 'Angola', 'AO', 'AGO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('7', 'Anguilla', 'AI', 'AIA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('8', 'Antarctica', 'AQ', 'ATA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('9', 'Antigua and Barbuda', 'AG', 'ATG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('10', 'Argentina', 'AR', 'ARG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('11', 'Armenia', 'AM', 'ARM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('12', 'Aruba', 'AW', 'ABW', '', '0', '1');
INSERT INTO `oc_country` VALUES ('13', 'Australia', 'AU', 'AUS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('14', 'Austria', 'AT', 'AUT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('15', 'Azerbaijan', 'AZ', 'AZE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('16', 'Bahamas', 'BS', 'BHS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('17', 'Bahrain', 'BH', 'BHR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('18', 'Bangladesh', 'BD', 'BGD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('19', 'Barbados', 'BB', 'BRB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('20', 'Belarus', 'BY', 'BLR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('21', 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '0', '1');
INSERT INTO `oc_country` VALUES ('22', 'Belize', 'BZ', 'BLZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('23', 'Benin', 'BJ', 'BEN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('24', 'Bermuda', 'BM', 'BMU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('25', 'Bhutan', 'BT', 'BTN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('26', 'Bolivia', 'BO', 'BOL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('27', 'Bosnia and Herzegovina', 'BA', 'BIH', '', '0', '1');
INSERT INTO `oc_country` VALUES ('28', 'Botswana', 'BW', 'BWA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('29', 'Bouvet Island', 'BV', 'BVT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('30', 'Brazil', 'BR', 'BRA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('31', 'British Indian Ocean Territory', 'IO', 'IOT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('32', 'Brunei Darussalam', 'BN', 'BRN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('33', 'Bulgaria', 'BG', 'BGR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('34', 'Burkina Faso', 'BF', 'BFA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('35', 'Burundi', 'BI', 'BDI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('36', 'Cambodia', 'KH', 'KHM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('37', 'Cameroon', 'CM', 'CMR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('38', 'Canada', 'CA', 'CAN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('39', 'Cape Verde', 'CV', 'CPV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('40', 'Cayman Islands', 'KY', 'CYM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('41', 'Central African Republic', 'CF', 'CAF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('42', 'Chad', 'TD', 'TCD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('43', 'Chile', 'CL', 'CHL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('44', 'China', 'CN', 'CHN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('45', 'Christmas Island', 'CX', 'CXR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('46', 'Cocos (Keeling) Islands', 'CC', 'CCK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('47', 'Colombia', 'CO', 'COL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('48', 'Comoros', 'KM', 'COM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('49', 'Congo', 'CG', 'COG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('50', 'Cook Islands', 'CK', 'COK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('51', 'Costa Rica', 'CR', 'CRI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('52', 'Cote D\'Ivoire', 'CI', 'CIV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('53', 'Croatia', 'HR', 'HRV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('54', 'Cuba', 'CU', 'CUB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('55', 'Cyprus', 'CY', 'CYP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('56', 'Czech Republic', 'CZ', 'CZE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('57', 'Denmark', 'DK', 'DNK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('58', 'Djibouti', 'DJ', 'DJI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('59', 'Dominica', 'DM', 'DMA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('60', 'Dominican Republic', 'DO', 'DOM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('61', 'East Timor', 'TL', 'TLS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('62', 'Ecuador', 'EC', 'ECU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('63', 'Egypt', 'EG', 'EGY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('64', 'El Salvador', 'SV', 'SLV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('65', 'Equatorial Guinea', 'GQ', 'GNQ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('66', 'Eritrea', 'ER', 'ERI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('67', 'Estonia', 'EE', 'EST', '', '0', '1');
INSERT INTO `oc_country` VALUES ('68', 'Ethiopia', 'ET', 'ETH', '', '0', '1');
INSERT INTO `oc_country` VALUES ('69', 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('70', 'Faroe Islands', 'FO', 'FRO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('71', 'Fiji', 'FJ', 'FJI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('72', 'Finland', 'FI', 'FIN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('74', 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '1', '1');
INSERT INTO `oc_country` VALUES ('75', 'French Guiana', 'GF', 'GUF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('76', 'French Polynesia', 'PF', 'PYF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('77', 'French Southern Territories', 'TF', 'ATF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('78', 'Gabon', 'GA', 'GAB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('79', 'Gambia', 'GM', 'GMB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('80', 'Georgia', 'GE', 'GEO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('81', 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '1', '1');
INSERT INTO `oc_country` VALUES ('82', 'Ghana', 'GH', 'GHA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('83', 'Gibraltar', 'GI', 'GIB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('84', 'Greece', 'GR', 'GRC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('85', 'Greenland', 'GL', 'GRL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('86', 'Grenada', 'GD', 'GRD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('87', 'Guadeloupe', 'GP', 'GLP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('88', 'Guam', 'GU', 'GUM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('89', 'Guatemala', 'GT', 'GTM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('90', 'Guinea', 'GN', 'GIN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('91', 'Guinea-Bissau', 'GW', 'GNB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('92', 'Guyana', 'GY', 'GUY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('93', 'Haiti', 'HT', 'HTI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('94', 'Heard and Mc Donald Islands', 'HM', 'HMD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('95', 'Honduras', 'HN', 'HND', '', '0', '1');
INSERT INTO `oc_country` VALUES ('96', 'Hong Kong', 'HK', 'HKG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('97', 'Hungary', 'HU', 'HUN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('98', 'Iceland', 'IS', 'ISL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('99', 'India', 'IN', 'IND', '', '0', '1');
INSERT INTO `oc_country` VALUES ('100', 'Indonesia', 'ID', 'IDN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('101', 'Iran (Islamic Republic of)', 'IR', 'IRN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('102', 'Iraq', 'IQ', 'IRQ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('103', 'Ireland', 'IE', 'IRL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('104', 'Israel', 'IL', 'ISR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('105', 'Italy', 'IT', 'ITA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('106', 'Jamaica', 'JM', 'JAM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('107', 'Japan', 'JP', 'JPN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('108', 'Jordan', 'JO', 'JOR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('109', 'Kazakhstan', 'KZ', 'KAZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('110', 'Kenya', 'KE', 'KEN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('111', 'Kiribati', 'KI', 'KIR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('112', 'North Korea', 'KP', 'PRK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('113', 'South Korea', 'KR', 'KOR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('114', 'Kuwait', 'KW', 'KWT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('115', 'Kyrgyzstan', 'KG', 'KGZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('116', 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('117', 'Latvia', 'LV', 'LVA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('118', 'Lebanon', 'LB', 'LBN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('119', 'Lesotho', 'LS', 'LSO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('120', 'Liberia', 'LR', 'LBR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('121', 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('122', 'Liechtenstein', 'LI', 'LIE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('123', 'Lithuania', 'LT', 'LTU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('124', 'Luxembourg', 'LU', 'LUX', '', '0', '1');
INSERT INTO `oc_country` VALUES ('125', 'Macau', 'MO', 'MAC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('126', 'FYROM', 'MK', 'MKD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('127', 'Madagascar', 'MG', 'MDG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('128', 'Malawi', 'MW', 'MWI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('129', 'Malaysia', 'MY', 'MYS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('130', 'Maldives', 'MV', 'MDV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('131', 'Mali', 'ML', 'MLI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('132', 'Malta', 'MT', 'MLT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('133', 'Marshall Islands', 'MH', 'MHL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('134', 'Martinique', 'MQ', 'MTQ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('135', 'Mauritania', 'MR', 'MRT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('136', 'Mauritius', 'MU', 'MUS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('137', 'Mayotte', 'YT', 'MYT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('138', 'Mexico', 'MX', 'MEX', '', '0', '1');
INSERT INTO `oc_country` VALUES ('139', 'Micronesia, Federated States of', 'FM', 'FSM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('140', 'Moldova, Republic of', 'MD', 'MDA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('141', 'Monaco', 'MC', 'MCO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('142', 'Mongolia', 'MN', 'MNG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('143', 'Montserrat', 'MS', 'MSR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('144', 'Morocco', 'MA', 'MAR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('145', 'Mozambique', 'MZ', 'MOZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('146', 'Myanmar', 'MM', 'MMR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('147', 'Namibia', 'NA', 'NAM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('148', 'Nauru', 'NR', 'NRU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('149', 'Nepal', 'NP', 'NPL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('150', 'Netherlands', 'NL', 'NLD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('151', 'Netherlands Antilles', 'AN', 'ANT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('152', 'New Caledonia', 'NC', 'NCL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('153', 'New Zealand', 'NZ', 'NZL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('154', 'Nicaragua', 'NI', 'NIC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('155', 'Niger', 'NE', 'NER', '', '0', '1');
INSERT INTO `oc_country` VALUES ('156', 'Nigeria', 'NG', 'NGA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('157', 'Niue', 'NU', 'NIU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('158', 'Norfolk Island', 'NF', 'NFK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('159', 'Northern Mariana Islands', 'MP', 'MNP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('160', 'Norway', 'NO', 'NOR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('161', 'Oman', 'OM', 'OMN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('162', 'Pakistan', 'PK', 'PAK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('163', 'Palau', 'PW', 'PLW', '', '0', '1');
INSERT INTO `oc_country` VALUES ('164', 'Panama', 'PA', 'PAN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('165', 'Papua New Guinea', 'PG', 'PNG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('166', 'Paraguay', 'PY', 'PRY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('167', 'Peru', 'PE', 'PER', '', '0', '1');
INSERT INTO `oc_country` VALUES ('168', 'Philippines', 'PH', 'PHL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('169', 'Pitcairn', 'PN', 'PCN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('170', 'Poland', 'PL', 'POL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('171', 'Portugal', 'PT', 'PRT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('172', 'Puerto Rico', 'PR', 'PRI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('173', 'Qatar', 'QA', 'QAT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('174', 'Reunion', 'RE', 'REU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('175', 'Romania', 'RO', 'ROM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('176', 'Russian Federation', 'RU', 'RUS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('177', 'Rwanda', 'RW', 'RWA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('178', 'Saint Kitts and Nevis', 'KN', 'KNA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('179', 'Saint Lucia', 'LC', 'LCA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('180', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('181', 'Samoa', 'WS', 'WSM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('182', 'San Marino', 'SM', 'SMR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('183', 'Sao Tome and Principe', 'ST', 'STP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('184', 'Saudi Arabia', 'SA', 'SAU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('185', 'Senegal', 'SN', 'SEN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('186', 'Seychelles', 'SC', 'SYC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('187', 'Sierra Leone', 'SL', 'SLE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('188', 'Singapore', 'SG', 'SGP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('189', 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', '0', '1');
INSERT INTO `oc_country` VALUES ('190', 'Slovenia', 'SI', 'SVN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('191', 'Solomon Islands', 'SB', 'SLB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('192', 'Somalia', 'SO', 'SOM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('193', 'South Africa', 'ZA', 'ZAF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('194', 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('195', 'Spain', 'ES', 'ESP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('196', 'Sri Lanka', 'LK', 'LKA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('197', 'St. Helena', 'SH', 'SHN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('198', 'St. Pierre and Miquelon', 'PM', 'SPM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('199', 'Sudan', 'SD', 'SDN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('200', 'Suriname', 'SR', 'SUR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('201', 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('202', 'Swaziland', 'SZ', 'SWZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('203', 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '1', '1');
INSERT INTO `oc_country` VALUES ('204', 'Switzerland', 'CH', 'CHE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('205', 'Syrian Arab Republic', 'SY', 'SYR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('206', 'Taiwan', 'TW', 'TWN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('207', 'Tajikistan', 'TJ', 'TJK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('208', 'Tanzania, United Republic of', 'TZ', 'TZA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('209', 'Thailand', 'TH', 'THA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('210', 'Togo', 'TG', 'TGO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('211', 'Tokelau', 'TK', 'TKL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('212', 'Tonga', 'TO', 'TON', '', '0', '1');
INSERT INTO `oc_country` VALUES ('213', 'Trinidad and Tobago', 'TT', 'TTO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('214', 'Tunisia', 'TN', 'TUN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('215', 'Turkey', 'TR', 'TUR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('216', 'Turkmenistan', 'TM', 'TKM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('217', 'Turks and Caicos Islands', 'TC', 'TCA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('218', 'Tuvalu', 'TV', 'TUV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('219', 'Uganda', 'UG', 'UGA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('220', 'Ukraine', 'UA', 'UKR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('221', 'United Arab Emirates', 'AE', 'ARE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('222', 'United Kingdom', 'GB', 'GBR', '', '1', '1');
INSERT INTO `oc_country` VALUES ('223', 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '0', '1');
INSERT INTO `oc_country` VALUES ('224', 'United States Minor Outlying Islands', 'UM', 'UMI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('225', 'Uruguay', 'UY', 'URY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('226', 'Uzbekistan', 'UZ', 'UZB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('227', 'Vanuatu', 'VU', 'VUT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('228', 'Vatican City State (Holy See)', 'VA', 'VAT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('229', 'Venezuela', 'VE', 'VEN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('230', 'Viet Nam', 'VN', 'VNM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('231', 'Virgin Islands (British)', 'VG', 'VGB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('232', 'Virgin Islands (U.S.)', 'VI', 'VIR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('233', 'Wallis and Futuna Islands', 'WF', 'WLF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('234', 'Western Sahara', 'EH', 'ESH', '', '0', '1');
INSERT INTO `oc_country` VALUES ('235', 'Yemen', 'YE', 'YEM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('237', 'Democratic Republic of Congo', 'CD', 'COD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('238', 'Zambia', 'ZM', 'ZMB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('239', 'Zimbabwe', 'ZW', 'ZWE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('242', 'Montenegro', 'ME', 'MNE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('243', 'Serbia', 'RS', 'SRB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('244', 'Aaland Islands', 'AX', 'ALA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('245', 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', '0', '1');
INSERT INTO `oc_country` VALUES ('246', 'Curacao', 'CW', 'CUW', '', '0', '1');
INSERT INTO `oc_country` VALUES ('247', 'Palestinian Territory, Occupied', 'PS', 'PSE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('248', 'South Sudan', 'SS', 'SSD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('249', 'St. Barthelemy', 'BL', 'BLM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('250', 'St. Martin (French part)', 'MF', 'MAF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('251', 'Canary Islands', 'IC', 'ICA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('252', 'Ascension Island (British)', 'AC', 'ASC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('253', 'Kosovo, Republic of', 'XK', 'UNK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('254', 'Isle of Man', 'IM', 'IMN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('255', 'Tristan da Cunha', 'TA', 'SHN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('256', 'Guernsey', 'GG', 'GGY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('257', 'Jersey', 'JE', 'JEY', '', '0', '1');

-- ----------------------------
-- Table structure for oc_coupon
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
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
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon
-- ----------------------------
INSERT INTO `oc_coupon` VALUES ('4', '-10% Discount', '2222', 'P', '10.0000', '0', '0', '0.0000', '2014-01-01', '2020-01-01', '10', '10', '0', '2009-01-27 13:55:03');
INSERT INTO `oc_coupon` VALUES ('5', 'Free Shipping', '3333', 'P', '0.0000', '0', '1', '100.0000', '2014-01-01', '2014-02-01', '10', '10', '0', '2009-03-14 21:13:53');
INSERT INTO `oc_coupon` VALUES ('6', '-10.00 Discount', '1111', 'F', '10.0000', '0', '0', '10.0000', '2014-01-01', '2020-01-01', '100000', '10000', '0', '2009-03-14 21:15:18');

-- ----------------------------
-- Table structure for oc_coupon_category
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_category
-- ----------------------------

-- ----------------------------
-- Table structure for oc_coupon_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_coupon_product
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_product
-- ----------------------------

-- ----------------------------
-- Table structure for oc_currency
-- ----------------------------
DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_currency
-- ----------------------------
INSERT INTO `oc_currency` VALUES ('1', 'Pound Sterling', 'GBP', '£', '', '2', '0.61250001', '1', '2014-09-25 14:40:00');
INSERT INTO `oc_currency` VALUES ('2', 'US Dollar', 'USD', '$', '', '2', '1.00000000', '1', '2020-08-07 07:19:59');
INSERT INTO `oc_currency` VALUES ('3', 'Euro', 'EUR', '', '€', '2', '0.78460002', '1', '2014-09-25 14:40:00');

-- ----------------------------
-- Table structure for oc_customer
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
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
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer
-- ----------------------------
INSERT INTO `oc_customer` VALUES ('1', '1', '0', '1', '程', 'Tom', 'oc_study@163.com', '17774003568', '', 'd38e60ff405f03180b5fe1d6ae7ccf87d5153554', 'IFwdnDUgm', null, null, '1', '1', '', '127.0.0.1', '1', '0', '', '', '2020-04-17 16:40:56');

-- ----------------------------
-- Table structure for oc_customer_activity
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_activity
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_affiliate
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_affiliate`;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
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
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_affiliate
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_approval
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_approval`;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_approval
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_group
-- ----------------------------
INSERT INTO `oc_customer_group` VALUES ('1', '0', '1');
INSERT INTO `oc_customer_group` VALUES ('2', '0', '2');

-- ----------------------------
-- Table structure for oc_customer_group_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_group_description
-- ----------------------------
INSERT INTO `oc_customer_group_description` VALUES ('1', '1', 'Default', 'test');
INSERT INTO `oc_customer_group_description` VALUES ('2', '1', 'VIP', 'Vip');

-- ----------------------------
-- Table structure for oc_customer_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_ip
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_ip
-- ----------------------------
INSERT INTO `oc_customer_ip` VALUES ('1', '1', '127.0.0.1', '2020-04-17 16:40:57');

-- ----------------------------
-- Table structure for oc_customer_login
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_login
-- ----------------------------
INSERT INTO `oc_customer_login` VALUES ('1', '06031306@163.com', '127.0.0.1', '2', '2020-04-16 09:13:49', '2020-04-20 08:55:09');
INSERT INTO `oc_customer_login` VALUES ('2', '', '127.0.0.1', '5', '2020-04-17 07:45:53', '2020-04-17 07:59:52');

-- ----------------------------
-- Table structure for oc_customer_online
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_online
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_reward
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_reward
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_search
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_search`;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_search
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_transaction
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_wishlist
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_wishlist
-- ----------------------------
INSERT INTO `oc_customer_wishlist` VALUES ('1', '43', '2020-05-11 16:26:00');

-- ----------------------------
-- Table structure for oc_custom_field
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field
-- ----------------------------

-- ----------------------------
-- Table structure for oc_custom_field_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_customer_group
-- ----------------------------

-- ----------------------------
-- Table structure for oc_custom_field_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_custom_field_value
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_value
-- ----------------------------

-- ----------------------------
-- Table structure for oc_custom_field_value_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_value_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_download
-- ----------------------------
DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download
-- ----------------------------

-- ----------------------------
-- Table structure for oc_download_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_event
-- ----------------------------
DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_event
-- ----------------------------
INSERT INTO `oc_event` VALUES ('1', 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', '1', '0');
INSERT INTO `oc_event` VALUES ('2', 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', '1', '0');
INSERT INTO `oc_event` VALUES ('3', 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', '1', '0');
INSERT INTO `oc_event` VALUES ('4', 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', '1', '0');
INSERT INTO `oc_event` VALUES ('5', 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', '1', '0');
INSERT INTO `oc_event` VALUES ('6', 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', '1', '0');
INSERT INTO `oc_event` VALUES ('7', 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', '1', '0');
INSERT INTO `oc_event` VALUES ('8', 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', '1', '0');
INSERT INTO `oc_event` VALUES ('9', 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', '1', '0');
INSERT INTO `oc_event` VALUES ('10', 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', '1', '0');
INSERT INTO `oc_event` VALUES ('11', 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', '1', '0');
INSERT INTO `oc_event` VALUES ('12', 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', '1', '0');
INSERT INTO `oc_event` VALUES ('13', 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', '1', '0');
INSERT INTO `oc_event` VALUES ('14', 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', '1', '0');
INSERT INTO `oc_event` VALUES ('15', 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', '1', '0');
INSERT INTO `oc_event` VALUES ('16', 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', '1', '0');
INSERT INTO `oc_event` VALUES ('17', 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', '1', '0');
INSERT INTO `oc_event` VALUES ('18', 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', '1', '0');
INSERT INTO `oc_event` VALUES ('19', 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', '1', '0');
INSERT INTO `oc_event` VALUES ('20', 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', '1', '0');
INSERT INTO `oc_event` VALUES ('21', 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', '1', '0');
INSERT INTO `oc_event` VALUES ('22', 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', '1', '0');
INSERT INTO `oc_event` VALUES ('23', 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', '1', '0');
INSERT INTO `oc_event` VALUES ('24', 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', '1', '0');
INSERT INTO `oc_event` VALUES ('25', 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', '1', '0');
INSERT INTO `oc_event` VALUES ('26', 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', '1', '0');
INSERT INTO `oc_event` VALUES ('27', 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', '1', '0');
INSERT INTO `oc_event` VALUES ('28', 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', '1', '0');
INSERT INTO `oc_event` VALUES ('29', 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', '1', '0');
INSERT INTO `oc_event` VALUES ('30', 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', '1', '0');
INSERT INTO `oc_event` VALUES ('31', 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', '1', '0');
INSERT INTO `oc_event` VALUES ('32', 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', '1', '0');
INSERT INTO `oc_event` VALUES ('33', 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', '1', '0');
INSERT INTO `oc_event` VALUES ('34', 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', '1', '0');
INSERT INTO `oc_event` VALUES ('35', 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', '1', '0');
INSERT INTO `oc_event` VALUES ('36', 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', '1', '0');
INSERT INTO `oc_event` VALUES ('37', 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', '1', '0');
INSERT INTO `oc_event` VALUES ('38', 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', '1', '0');
INSERT INTO `oc_event` VALUES ('39', 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', '1', '0');
INSERT INTO `oc_event` VALUES ('40', 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', '1', '0');
INSERT INTO `oc_event` VALUES ('41', 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', '1', '0');
INSERT INTO `oc_event` VALUES ('42', 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', '1', '0');
INSERT INTO `oc_event` VALUES ('43', 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', '1', '0');
INSERT INTO `oc_event` VALUES ('44', 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', '1', '0');
INSERT INTO `oc_event` VALUES ('45', 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', '1', '0');
INSERT INTO `oc_event` VALUES ('46', 'amazon_pay', 'catalog/controller/account/logout/after', 'extension/module/amazon_pay/logout', '1', '0');
INSERT INTO `oc_event` VALUES ('48', 'amazon_login', 'catalog/controller/account/logout/after', 'extension/module/amazon_login/logout', '1', '0');

-- ----------------------------
-- Table structure for oc_extension
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_extension
-- ----------------------------
INSERT INTO `oc_extension` VALUES ('1', 'payment', 'cod');
INSERT INTO `oc_extension` VALUES ('2', 'total', 'shipping');
INSERT INTO `oc_extension` VALUES ('3', 'total', 'sub_total');
INSERT INTO `oc_extension` VALUES ('4', 'total', 'tax');
INSERT INTO `oc_extension` VALUES ('5', 'total', 'total');
INSERT INTO `oc_extension` VALUES ('6', 'module', 'banner');
INSERT INTO `oc_extension` VALUES ('7', 'module', 'carousel');
INSERT INTO `oc_extension` VALUES ('8', 'total', 'credit');
INSERT INTO `oc_extension` VALUES ('9', 'shipping', 'flat');
INSERT INTO `oc_extension` VALUES ('10', 'total', 'handling');
INSERT INTO `oc_extension` VALUES ('11', 'total', 'low_order_fee');
INSERT INTO `oc_extension` VALUES ('12', 'total', 'coupon');
INSERT INTO `oc_extension` VALUES ('13', 'module', 'category');
INSERT INTO `oc_extension` VALUES ('14', 'module', 'account');
INSERT INTO `oc_extension` VALUES ('15', 'total', 'reward');
INSERT INTO `oc_extension` VALUES ('16', 'total', 'voucher');
INSERT INTO `oc_extension` VALUES ('17', 'payment', 'free_checkout');
INSERT INTO `oc_extension` VALUES ('18', 'module', 'featured');
INSERT INTO `oc_extension` VALUES ('19', 'module', 'slideshow');
INSERT INTO `oc_extension` VALUES ('20', 'theme', 'default');
INSERT INTO `oc_extension` VALUES ('21', 'dashboard', 'activity');
INSERT INTO `oc_extension` VALUES ('22', 'dashboard', 'sale');
INSERT INTO `oc_extension` VALUES ('23', 'dashboard', 'recent');
INSERT INTO `oc_extension` VALUES ('24', 'dashboard', 'order');
INSERT INTO `oc_extension` VALUES ('25', 'dashboard', 'online');
INSERT INTO `oc_extension` VALUES ('26', 'dashboard', 'map');
INSERT INTO `oc_extension` VALUES ('27', 'dashboard', 'customer');
INSERT INTO `oc_extension` VALUES ('28', 'dashboard', 'chart');
INSERT INTO `oc_extension` VALUES ('29', 'report', 'sale_coupon');
INSERT INTO `oc_extension` VALUES ('31', 'report', 'customer_search');
INSERT INTO `oc_extension` VALUES ('32', 'report', 'customer_transaction');
INSERT INTO `oc_extension` VALUES ('33', 'report', 'product_purchased');
INSERT INTO `oc_extension` VALUES ('34', 'report', 'product_viewed');
INSERT INTO `oc_extension` VALUES ('35', 'report', 'sale_return');
INSERT INTO `oc_extension` VALUES ('36', 'report', 'sale_order');
INSERT INTO `oc_extension` VALUES ('37', 'report', 'sale_shipping');
INSERT INTO `oc_extension` VALUES ('38', 'report', 'sale_tax');
INSERT INTO `oc_extension` VALUES ('39', 'report', 'customer_activity');
INSERT INTO `oc_extension` VALUES ('40', 'report', 'customer_order');
INSERT INTO `oc_extension` VALUES ('41', 'report', 'customer_reward');
INSERT INTO `oc_extension` VALUES ('42', 'advertise', 'google');
INSERT INTO `oc_extension` VALUES ('50', 'module', 'laybuy_layout');
INSERT INTO `oc_extension` VALUES ('44', 'module', 'special');
INSERT INTO `oc_extension` VALUES ('46', 'module', 'latest');
INSERT INTO `oc_extension` VALUES ('49', 'theme', 'medic');
INSERT INTO `oc_extension` VALUES ('52', 'module', 'revolution_slider');
INSERT INTO `oc_extension` VALUES ('53', 'theme', 'military');
INSERT INTO `oc_extension` VALUES ('54', 'theme', 'books');
INSERT INTO `oc_extension` VALUES ('55', 'module', 'bestseller');
INSERT INTO `oc_extension` VALUES ('56', 'theme', 'toys');
INSERT INTO `oc_extension` VALUES ('59', 'module', 'html');

-- ----------------------------
-- Table structure for oc_extension_install
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_extension_install
-- ----------------------------

-- ----------------------------
-- Table structure for oc_extension_path
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_extension_path
-- ----------------------------

-- ----------------------------
-- Table structure for oc_filter
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter
-- ----------------------------
INSERT INTO `oc_filter` VALUES ('1', '1', '1');
INSERT INTO `oc_filter` VALUES ('2', '1', '2');

-- ----------------------------
-- Table structure for oc_filter_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_description
-- ----------------------------
INSERT INTO `oc_filter_description` VALUES ('1', '1', '1', 'Red');
INSERT INTO `oc_filter_description` VALUES ('2', '1', '1', 'Black');

-- ----------------------------
-- Table structure for oc_filter_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_group
-- ----------------------------
INSERT INTO `oc_filter_group` VALUES ('1', '1');

-- ----------------------------
-- Table structure for oc_filter_group_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_group_description
-- ----------------------------
INSERT INTO `oc_filter_group_description` VALUES ('1', '1', 'Colours');

-- ----------------------------
-- Table structure for oc_geo_zone
-- ----------------------------
DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_geo_zone
-- ----------------------------
INSERT INTO `oc_geo_zone` VALUES ('3', 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24');
INSERT INTO `oc_geo_zone` VALUES ('4', 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- ----------------------------
-- Table structure for oc_googleshopping_category
-- ----------------------------
DROP TABLE IF EXISTS `oc_googleshopping_category`;
CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`google_product_category`,`store_id`),
  KEY `category_id_store_id` (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_googleshopping_category
-- ----------------------------

-- ----------------------------
-- Table structure for oc_googleshopping_product
-- ----------------------------
DROP TABLE IF EXISTS `oc_googleshopping_product`;
CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_advertise_google_id`),
  UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_googleshopping_product
-- ----------------------------

-- ----------------------------
-- Table structure for oc_googleshopping_product_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_googleshopping_product_status`;
CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_googleshopping_product_status
-- ----------------------------

-- ----------------------------
-- Table structure for oc_googleshopping_product_target
-- ----------------------------
DROP TABLE IF EXISTS `oc_googleshopping_product_target`;
CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`advertise_google_target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_googleshopping_product_target
-- ----------------------------

-- ----------------------------
-- Table structure for oc_googleshopping_target
-- ----------------------------
DROP TABLE IF EXISTS `oc_googleshopping_target`;
CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`advertise_google_target_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_googleshopping_target
-- ----------------------------

-- ----------------------------
-- Table structure for oc_information
-- ----------------------------
DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information
-- ----------------------------
INSERT INTO `oc_information` VALUES ('3', '1', '3', '1');
INSERT INTO `oc_information` VALUES ('4', '1', '1', '1');
INSERT INTO `oc_information` VALUES ('5', '1', '4', '1');
INSERT INTO `oc_information` VALUES ('6', '1', '2', '1');

-- ----------------------------
-- Table structure for oc_information_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_description
-- ----------------------------
INSERT INTO `oc_information_description` VALUES ('4', '1', 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', '');
INSERT INTO `oc_information_description` VALUES ('5', '1', 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', '');
INSERT INTO `oc_information_description` VALUES ('3', '1', 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', '');
INSERT INTO `oc_information_description` VALUES ('6', '1', 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- ----------------------------
-- Table structure for oc_information_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_to_layout
-- ----------------------------
INSERT INTO `oc_information_to_layout` VALUES ('4', '0', '0');
INSERT INTO `oc_information_to_layout` VALUES ('4', '1', '0');
INSERT INTO `oc_information_to_layout` VALUES ('6', '0', '0');
INSERT INTO `oc_information_to_layout` VALUES ('6', '1', '0');
INSERT INTO `oc_information_to_layout` VALUES ('3', '0', '0');
INSERT INTO `oc_information_to_layout` VALUES ('3', '1', '0');

-- ----------------------------
-- Table structure for oc_information_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_to_store
-- ----------------------------
INSERT INTO `oc_information_to_store` VALUES ('3', '0');
INSERT INTO `oc_information_to_store` VALUES ('3', '1');
INSERT INTO `oc_information_to_store` VALUES ('4', '0');
INSERT INTO `oc_information_to_store` VALUES ('4', '1');
INSERT INTO `oc_information_to_store` VALUES ('5', '0');
INSERT INTO `oc_information_to_store` VALUES ('6', '0');
INSERT INTO `oc_information_to_store` VALUES ('6', '1');

-- ----------------------------
-- Table structure for oc_language
-- ----------------------------
DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_language
-- ----------------------------
INSERT INTO `oc_language` VALUES ('1', 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', '1', '1');

-- ----------------------------
-- Table structure for oc_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout
-- ----------------------------
INSERT INTO `oc_layout` VALUES ('1', 'Home');
INSERT INTO `oc_layout` VALUES ('2', 'Product');
INSERT INTO `oc_layout` VALUES ('3', 'Category');
INSERT INTO `oc_layout` VALUES ('4', 'Default');
INSERT INTO `oc_layout` VALUES ('5', 'Manufacturer');
INSERT INTO `oc_layout` VALUES ('6', 'Account');
INSERT INTO `oc_layout` VALUES ('7', 'Checkout');
INSERT INTO `oc_layout` VALUES ('8', 'Contact');
INSERT INTO `oc_layout` VALUES ('9', 'Sitemap');
INSERT INTO `oc_layout` VALUES ('10', 'Affiliate');
INSERT INTO `oc_layout` VALUES ('11', 'Information');
INSERT INTO `oc_layout` VALUES ('12', 'Compare');
INSERT INTO `oc_layout` VALUES ('13', 'Search');

-- ----------------------------
-- Table structure for oc_layout_module
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout_module
-- ----------------------------
INSERT INTO `oc_layout_module` VALUES ('2', '4', '0', 'content_top', '0');
INSERT INTO `oc_layout_module` VALUES ('3', '4', '0', 'content_top', '1');
INSERT INTO `oc_layout_module` VALUES ('20', '5', '0', 'column_left', '2');
INSERT INTO `oc_layout_module` VALUES ('69', '10', 'account', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('307', '1', 'featured.28', 'content_top', '3');
INSERT INTO `oc_layout_module` VALUES ('306', '1', 'featured.37', 'content_top', '2');
INSERT INTO `oc_layout_module` VALUES ('289', '6', 'account', 'column_right', '0');
INSERT INTO `oc_layout_module` VALUES ('72', '3', 'category', 'column_left', '1');
INSERT INTO `oc_layout_module` VALUES ('73', '3', 'banner.30', 'column_left', '2');
INSERT INTO `oc_layout_module` VALUES ('305', '1', 'banner.38', 'content_top', '1');
INSERT INTO `oc_layout_module` VALUES ('303', '1', 'bestseller.36', 'column_left', '1');
INSERT INTO `oc_layout_module` VALUES ('304', '1', 'banner.31', 'content_top', '0');
INSERT INTO `oc_layout_module` VALUES ('302', '1', 'banner.30', 'column_left', '0');

-- ----------------------------
-- Table structure for oc_layout_route
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout_route
-- ----------------------------
INSERT INTO `oc_layout_route` VALUES ('17', '10', '0', 'affiliate/%');
INSERT INTO `oc_layout_route` VALUES ('44', '3', '0', 'product/category');
INSERT INTO `oc_layout_route` VALUES ('105', '2', '0', 'product/%');
INSERT INTO `oc_layout_route` VALUES ('24', '11', '0', 'information/information');
INSERT INTO `oc_layout_route` VALUES ('23', '7', '0', 'checkout/%');
INSERT INTO `oc_layout_route` VALUES ('31', '8', '0', 'information/contact');
INSERT INTO `oc_layout_route` VALUES ('32', '9', '0', 'information/sitemap');
INSERT INTO `oc_layout_route` VALUES ('34', '4', '0', '');
INSERT INTO `oc_layout_route` VALUES ('45', '5', '0', 'product/manufacturer');
INSERT INTO `oc_layout_route` VALUES ('52', '12', '0', 'product/compare');
INSERT INTO `oc_layout_route` VALUES ('53', '13', '0', 'product/search');
INSERT INTO `oc_layout_route` VALUES ('147', '6', '1', 'account/%');
INSERT INTO `oc_layout_route` VALUES ('127', '10', '1', 'affiliate/%');
INSERT INTO `oc_layout_route` VALUES ('128', '3', '1', 'product/category');
INSERT INTO `oc_layout_route` VALUES ('153', '1', '1', 'common/home');
INSERT INTO `oc_layout_route` VALUES ('130', '2', '1', 'product/%');
INSERT INTO `oc_layout_route` VALUES ('131', '11', '1', 'information/information');
INSERT INTO `oc_layout_route` VALUES ('132', '7', '1', 'checkout/%');
INSERT INTO `oc_layout_route` VALUES ('133', '8', '1', 'information/contact');
INSERT INTO `oc_layout_route` VALUES ('134', '9', '1', 'information/sitemap');
INSERT INTO `oc_layout_route` VALUES ('135', '4', '1', '');
INSERT INTO `oc_layout_route` VALUES ('136', '5', '1', 'product/manufacturer');
INSERT INTO `oc_layout_route` VALUES ('137', '12', '1', 'product/compare');
INSERT INTO `oc_layout_route` VALUES ('138', '13', '1', 'product/search');
INSERT INTO `oc_layout_route` VALUES ('154', '1', '0', 'common/home');
INSERT INTO `oc_layout_route` VALUES ('148', '6', '0', 'account/%');

-- ----------------------------
-- Table structure for oc_length_class
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_length_class
-- ----------------------------
INSERT INTO `oc_length_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_length_class` VALUES ('2', '10.00000000');
INSERT INTO `oc_length_class` VALUES ('3', '0.39370000');

-- ----------------------------
-- Table structure for oc_length_class_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_length_class_description
-- ----------------------------
INSERT INTO `oc_length_class_description` VALUES ('1', '1', 'Centimeter', 'cm');
INSERT INTO `oc_length_class_description` VALUES ('2', '1', 'Millimeter', 'mm');
INSERT INTO `oc_length_class_description` VALUES ('3', '1', 'Inch', 'in');

-- ----------------------------
-- Table structure for oc_location
-- ----------------------------
DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_location
-- ----------------------------

-- ----------------------------
-- Table structure for oc_manufacturer
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_manufacturer
-- ----------------------------
INSERT INTO `oc_manufacturer` VALUES ('5', 'HTC', 'catalog/demo/htc_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('6', 'Palm', 'catalog/demo/palm_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('7', 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('8', 'Apple', 'catalog/demo/apple_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('9', 'Canon', 'catalog/demo/canon_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('10', 'Sony', 'catalog/demo/sony_logo.jpg', '0');

-- ----------------------------
-- Table structure for oc_manufacturer_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_manufacturer_to_store
-- ----------------------------
INSERT INTO `oc_manufacturer_to_store` VALUES ('5', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('6', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('7', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('8', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('9', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('10', '0');

-- ----------------------------
-- Table structure for oc_marketing
-- ----------------------------
DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_marketing
-- ----------------------------

-- ----------------------------
-- Table structure for oc_modification
-- ----------------------------
DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_modification
-- ----------------------------

-- ----------------------------
-- Table structure for oc_module
-- ----------------------------
DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_module
-- ----------------------------
INSERT INTO `oc_module` VALUES ('30', 'ColumnPicture', 'banner', '{\"name\":\"ColumnPicture\",\"banner_id\":\"8\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('29', '幻灯片', 'carousel', '{\"name\":\"\\u5e7b\\u706f\\u7247\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('28', 'Stuffed toys', 'featured', '{\"name\":\"Stuffed toys\",\"product_name\":\"\",\"product\":[\"43\",\"40\",\"42\",\"29\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('27', 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('31', 'SinglePicture', 'banner', '{\"name\":\"SinglePicture\",\"banner_id\":\"9\",\"width\":\"847\",\"height\":\"500\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('32', 'Specials', 'special', '{\"name\":\"Specials\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('34', 'latest', 'latest', '{\"name\":\"latest\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('36', 'best-sellers', 'bestseller', '{\"name\":\"best-sellers\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('37', 'Wooden toys', 'featured', '{\"name\":\"Wooden toys\",\"product_name\":\"\",\"product\":[\"28\",\"48\",\"42\",\"47\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('38', 'TowPictures', 'banner', '{\"name\":\"TowPictures\",\"banner_id\":\"6\",\"width\":\"408\",\"height\":\"150\",\"status\":\"1\"}');

-- ----------------------------
-- Table structure for oc_openbay_faq
-- ----------------------------
DROP TABLE IF EXISTS `oc_openbay_faq`;
CREATE TABLE `oc_openbay_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_openbay_faq
-- ----------------------------

-- ----------------------------
-- Table structure for oc_option
-- ----------------------------
DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option
-- ----------------------------
INSERT INTO `oc_option` VALUES ('1', 'radio', '1');
INSERT INTO `oc_option` VALUES ('2', 'checkbox', '2');
INSERT INTO `oc_option` VALUES ('4', 'text', '3');
INSERT INTO `oc_option` VALUES ('5', 'select', '4');
INSERT INTO `oc_option` VALUES ('6', 'textarea', '5');
INSERT INTO `oc_option` VALUES ('7', 'file', '6');
INSERT INTO `oc_option` VALUES ('8', 'date', '7');
INSERT INTO `oc_option` VALUES ('9', 'time', '8');
INSERT INTO `oc_option` VALUES ('10', 'datetime', '9');
INSERT INTO `oc_option` VALUES ('11', 'select', '10');
INSERT INTO `oc_option` VALUES ('12', 'date', '11');
INSERT INTO `oc_option` VALUES ('14', 'radio', '6');

-- ----------------------------
-- Table structure for oc_option_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_description
-- ----------------------------
INSERT INTO `oc_option_description` VALUES ('1', '1', 'Radio');
INSERT INTO `oc_option_description` VALUES ('2', '1', 'Checkbox');
INSERT INTO `oc_option_description` VALUES ('4', '1', 'Text');
INSERT INTO `oc_option_description` VALUES ('6', '1', 'Textarea');
INSERT INTO `oc_option_description` VALUES ('8', '1', 'Date');
INSERT INTO `oc_option_description` VALUES ('7', '1', 'File');
INSERT INTO `oc_option_description` VALUES ('5', '1', 'Select');
INSERT INTO `oc_option_description` VALUES ('9', '1', 'Time');
INSERT INTO `oc_option_description` VALUES ('10', '1', 'Date &amp; Time');
INSERT INTO `oc_option_description` VALUES ('12', '1', 'Delivery Date');
INSERT INTO `oc_option_description` VALUES ('11', '1', 'Size');
INSERT INTO `oc_option_description` VALUES ('14', '1', 'Color');

-- ----------------------------
-- Table structure for oc_option_value
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_value
-- ----------------------------
INSERT INTO `oc_option_value` VALUES ('43', '1', '', '3');
INSERT INTO `oc_option_value` VALUES ('32', '1', '', '1');
INSERT INTO `oc_option_value` VALUES ('45', '2', '', '4');
INSERT INTO `oc_option_value` VALUES ('44', '2', '', '3');
INSERT INTO `oc_option_value` VALUES ('42', '5', '', '4');
INSERT INTO `oc_option_value` VALUES ('41', '5', '', '3');
INSERT INTO `oc_option_value` VALUES ('39', '5', '', '1');
INSERT INTO `oc_option_value` VALUES ('40', '5', '', '2');
INSERT INTO `oc_option_value` VALUES ('31', '1', '', '2');
INSERT INTO `oc_option_value` VALUES ('23', '2', '', '1');
INSERT INTO `oc_option_value` VALUES ('24', '2', '', '2');
INSERT INTO `oc_option_value` VALUES ('46', '11', '', '1');
INSERT INTO `oc_option_value` VALUES ('47', '11', '', '2');
INSERT INTO `oc_option_value` VALUES ('48', '11', '', '3');
INSERT INTO `oc_option_value` VALUES ('54', '14', 'catalog/color/violet-50x50.png', '3');
INSERT INTO `oc_option_value` VALUES ('53', '14', 'catalog/color/orange-50x50.png', '2');
INSERT INTO `oc_option_value` VALUES ('52', '14', 'catalog/color/green-50x50.png', '1');

-- ----------------------------
-- Table structure for oc_option_value_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_value_description
-- ----------------------------
INSERT INTO `oc_option_value_description` VALUES ('43', '1', '1', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('32', '1', '1', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('45', '1', '2', 'Checkbox 4');
INSERT INTO `oc_option_value_description` VALUES ('44', '1', '2', 'Checkbox 3');
INSERT INTO `oc_option_value_description` VALUES ('31', '1', '1', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('42', '1', '5', 'Yellow');
INSERT INTO `oc_option_value_description` VALUES ('41', '1', '5', 'Green');
INSERT INTO `oc_option_value_description` VALUES ('39', '1', '5', 'Red');
INSERT INTO `oc_option_value_description` VALUES ('40', '1', '5', 'Blue');
INSERT INTO `oc_option_value_description` VALUES ('23', '1', '2', 'Checkbox 1');
INSERT INTO `oc_option_value_description` VALUES ('24', '1', '2', 'Checkbox 2');
INSERT INTO `oc_option_value_description` VALUES ('48', '1', '11', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('47', '1', '11', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('46', '1', '11', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('54', '1', '14', 'violet');
INSERT INTO `oc_option_value_description` VALUES ('53', '1', '14', 'orange');
INSERT INTO `oc_option_value_description` VALUES ('52', '1', '14', 'green');

-- ----------------------------
-- Table structure for oc_order
-- ----------------------------
DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `payment_company` varchar(60) NOT NULL,
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
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order
-- ----------------------------
INSERT INTO `oc_order` VALUES ('1', '0', 'INV-2019-00', '0', 'Your Store', 'http://localhost.myopencart.com/', '1', '1', '程', 'Tom', 'oc_study@163.com', '17774003568', '', '', 'Trime', 'Tom', '企业名称', '123', '', 'HZ', '1154575', 'China', '44', 'Hubei', '697', '', '[]', 'Cash On Delivery', 'cod', 'Trime', 'Tom', '企业名称', '123', '', 'HZ', '1154575', 'China', '44', 'Hubei', '697', '', '[]', 'Flat Shipping Rate', 'flat.flat', 'agadsfegage', '205.0000', '1', '0', '0.0000', '0', '', '1', '2', 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'zh-CN,zh;q=0.9', '2020-04-29 16:07:17', '2020-04-29 16:08:04');
INSERT INTO `oc_order` VALUES ('2', '0', 'INV-2019-00', '0', 'Your Store', 'http://localhost.myopencart.com/', '1', '1', '程', 'Tom', 'oc_study@163.com', '17774003568', '', '', 'Trime', 'Tom', '企业名称', '123', '', 'HZ', '1154575', 'China', '44', 'Hubei', '697', '', '[]', 'Cash On Delivery', 'cod', 'Trime', 'Tom', '企业名称', '123', '', 'HZ', '1154575', 'China', '44', 'Hubei', '697', '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '105.0000', '1', '0', '0.0000', '0', '', '1', '2', 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'zh-CN,zh;q=0.9', '2020-04-30 09:11:19', '2020-04-30 09:37:28');
INSERT INTO `oc_order` VALUES ('3', '0', 'INV-2019-00', '0', 'Your Store', 'http://localhost.myopencart.com/', '1', '1', '程', 'Tom', 'oc_study@163.com', '17774003568', '', '', 'Trime1', 'Tom1', '企业名称1', '1231', '2w3', 'HZ', '1154575', 'China', '44', 'Hubei', '697', '', '[]', 'Cash On Delivery', 'cod', 'Trime1', 'Tom1', '企业名称1', '1231', '2w3', 'HZ', '1154575', 'China', '44', 'Hubei', '697', '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '305.0000', '0', '0', '0.0000', '0', '', '1', '2', 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'zh-CN,zh;q=0.9', '2020-07-06 16:46:22', '2020-07-06 16:46:22');
INSERT INTO `oc_order` VALUES ('4', '0', 'INV-2019-00', '0', 'Your Store', 'http://localhost.myopencart.com/', '1', '1', '程', 'Tom', 'oc_study@163.com', '17774003568', '', '', 'Trime1', 'Tom1', '企业名称1', '1231', '2w3', 'HZ', '1154575', 'China', '44', 'Hubei', '697', '', '[]', 'Cash On Delivery', 'cod', 'Trime1', 'Tom1', '企业名称1', '1231', '2w3', 'HZ', '1154575', 'China', '44', 'Hubei', '697', '', '[]', 'Flat Shipping Rate', 'flat.flat', '嘎嘎第三方十多个打算 ', '305.0000', '1', '0', '0.0000', '0', '', '1', '2', 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'zh-CN,zh;q=0.9', '2020-08-05 19:16:56', '2020-08-05 19:17:00');

-- ----------------------------
-- Table structure for oc_order_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_history
-- ----------------------------
INSERT INTO `oc_order_history` VALUES ('1', '1', '1', '0', '', '2020-04-29 16:08:04');
INSERT INTO `oc_order_history` VALUES ('2', '2', '1', '0', '', '2020-04-30 09:11:24');
INSERT INTO `oc_order_history` VALUES ('3', '2', '1', '0', '', '2020-04-30 09:37:28');
INSERT INTO `oc_order_history` VALUES ('4', '4', '1', '0', '', '2020-08-05 19:17:00');

-- ----------------------------
-- Table structure for oc_order_option
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_option
-- ----------------------------
INSERT INTO `oc_order_option` VALUES ('1', '1', '1', '225', '0', 'Delivery Date', '2011-04-22', 'date');
INSERT INTO `oc_order_option` VALUES ('2', '4', '5', '225', '0', 'Delivery Date', '2011-04-22', 'date');

-- ----------------------------
-- Table structure for oc_order_product
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_product
-- ----------------------------
INSERT INTO `oc_order_product` VALUES ('1', '1', '47', 'HP LP3065', 'Product 21', '2', '100.0000', '200.0000', '0.0000', '600');
INSERT INTO `oc_order_product` VALUES ('2', '2', '41', 'iMac', 'Product 14', '1', '100.0000', '100.0000', '0.0000', '0');
INSERT INTO `oc_order_product` VALUES ('3', '3', '41', 'iMac', 'Product 14', '3', '100.0000', '300.0000', '0.0000', '0');
INSERT INTO `oc_order_product` VALUES ('4', '4', '41', 'iMac', 'Product 14', '1', '100.0000', '100.0000', '0.0000', '0');
INSERT INTO `oc_order_product` VALUES ('5', '4', '47', 'HP LP3065', 'Product 21', '1', '200.0000', '200.0000', '0.0000', '300');

-- ----------------------------
-- Table structure for oc_order_recurring
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_recurring_transaction
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_recurring_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_shipment
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_shipment`;
CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_shipment
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_status
-- ----------------------------
INSERT INTO `oc_order_status` VALUES ('2', '1', 'Processing');
INSERT INTO `oc_order_status` VALUES ('3', '1', 'Shipped');
INSERT INTO `oc_order_status` VALUES ('7', '1', 'Canceled');
INSERT INTO `oc_order_status` VALUES ('5', '1', 'Complete');
INSERT INTO `oc_order_status` VALUES ('8', '1', 'Denied');
INSERT INTO `oc_order_status` VALUES ('9', '1', 'Canceled Reversal');
INSERT INTO `oc_order_status` VALUES ('10', '1', 'Failed');
INSERT INTO `oc_order_status` VALUES ('11', '1', 'Refunded');
INSERT INTO `oc_order_status` VALUES ('12', '1', 'Reversed');
INSERT INTO `oc_order_status` VALUES ('13', '1', 'Chargeback');
INSERT INTO `oc_order_status` VALUES ('1', '1', 'Pending');
INSERT INTO `oc_order_status` VALUES ('16', '1', 'Voided');
INSERT INTO `oc_order_status` VALUES ('15', '1', 'Processed');
INSERT INTO `oc_order_status` VALUES ('14', '1', 'Expired');

-- ----------------------------
-- Table structure for oc_order_total
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_total
-- ----------------------------
INSERT INTO `oc_order_total` VALUES ('1', '1', 'sub_total', 'Sub-Total', '200.0000', '1');
INSERT INTO `oc_order_total` VALUES ('2', '1', 'shipping', 'Flat Shipping Rate', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('3', '1', 'total', 'Total', '205.0000', '9');
INSERT INTO `oc_order_total` VALUES ('4', '2', 'sub_total', 'Sub-Total', '100.0000', '1');
INSERT INTO `oc_order_total` VALUES ('5', '2', 'shipping', 'Flat Shipping Rate', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('6', '2', 'total', 'Total', '105.0000', '9');
INSERT INTO `oc_order_total` VALUES ('7', '3', 'sub_total', 'Sub-Total', '300.0000', '1');
INSERT INTO `oc_order_total` VALUES ('8', '3', 'shipping', 'Flat Shipping Rate', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('9', '3', 'total', 'Total', '305.0000', '9');
INSERT INTO `oc_order_total` VALUES ('10', '4', 'sub_total', 'Sub-Total', '300.0000', '1');
INSERT INTO `oc_order_total` VALUES ('11', '4', 'shipping', 'Flat Shipping Rate', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('12', '4', 'total', 'Total', '305.0000', '9');

-- ----------------------------
-- Table structure for oc_order_voucher
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for oc_product
-- ----------------------------
DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product
-- ----------------------------
INSERT INTO `oc_product` VALUES ('28', 'Product 1', '', '', '', '', '', '', '', '939', '7', 'catalog/demo/htc_touch_hd_1.jpg', '5', '1', '100.0000', '200', '9', '2009-02-03', '146.40000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 16:06:50', '2011-09-30 01:05:39');
INSERT INTO `oc_product` VALUES ('29', 'Product 2', '', '', '', '', '', '', '', '999', '6', 'catalog/demo/palm_treo_pro_1.jpg', '6', '1', '279.9900', '0', '9', '2009-02-03', '133.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '0', '2009-02-03 16:42:17', '2011-09-30 01:06:08');
INSERT INTO `oc_product` VALUES ('30', 'Product 3', '', '', '', '', '', '', '', '7', '6', 'catalog/demo/canon_eos_5d_1.jpg', '9', '1', '100.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '13', '2009-02-03 16:59:00', '2020-07-28 16:55:29');
INSERT INTO `oc_product` VALUES ('31', 'Product 4', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/nikon_d300_1.jpg', '0', '1', '80.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '1', '2009-02-03 17:00:10', '2011-09-30 01:06:00');
INSERT INTO `oc_product` VALUES ('32', 'Product 5', '', '', '', '', '', '', '', '999', '6', 'catalog/demo/ipod_touch_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 17:07:26', '2011-09-30 01:07:22');
INSERT INTO `oc_product` VALUES ('33', 'Product 6', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/samsung_syncmaster_941bw.jpg', '0', '1', '200.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 17:08:31', '2011-09-30 01:06:29');
INSERT INTO `oc_product` VALUES ('34', 'Product 7', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/ipod_shuffle_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 18:07:54', '2011-09-30 01:07:17');
INSERT INTO `oc_product` VALUES ('35', 'Product 8', '', '', '', '', '', '', '', '1000', '5', '', '0', '0', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '3', '2009-02-03 18:08:31', '2011-09-30 01:06:17');
INSERT INTO `oc_product` VALUES ('36', 'Product 9', '', '', '', '', '', '', '', '994', '6', 'catalog/demo/ipod_nano_1.jpg', '8', '0', '100.0000', '100', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 18:09:19', '2011-09-30 01:07:12');
INSERT INTO `oc_product` VALUES ('40', 'product 11', '', '', '', '', '', '', '', '970', '5', 'catalog/demo/iphone_1.jpg', '8', '1', '101.0000', '0', '9', '2009-02-03', '10.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '5', '2009-02-03 21:07:12', '2011-09-30 01:06:53');
INSERT INTO `oc_product` VALUES ('41', 'Product 14', '', '', '', '', '', '', '', '975', '5', 'catalog/demo/imac_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '4', '2009-02-03 21:07:26', '2011-09-30 01:06:44');
INSERT INTO `oc_product` VALUES ('42', 'Product 15', '', '', '', '', '', '', 'China', '990', '5', 'catalog/demo/apple_cinema_30.jpg', '8', '1', '100.0000', '400', '9', '2009-02-04', '12.50000000', '1', '1.00000000', '2.00000000', '3.00000000', '1', '1', '2', '0', '1', '97', '2009-02-03 21:07:37', '2020-07-28 16:55:51');
INSERT INTO `oc_product` VALUES ('43', 'Product 16', '', '', '', '', '', '', '', '929', '5', 'catalog/demo/macbook_1.jpg', '8', '0', '500.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2', '2009-02-03 21:07:49', '2011-09-30 01:05:46');
INSERT INTO `oc_product` VALUES ('44', 'Product 17', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/macbook_air_1.jpg', '8', '1', '1000.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:08:00', '2011-09-30 01:05:53');
INSERT INTO `oc_product` VALUES ('45', 'Product 18', '', '', '', '', '', '', '', '998', '5', 'catalog/demo/macbook_pro_1.jpg', '8', '1', '2000.0000', '0', '100', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '4', '2009-02-03 21:08:17', '2011-09-15 22:22:01');
INSERT INTO `oc_product` VALUES ('46', 'Product 19', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/sony_vaio_1.jpg', '10', '1', '1000.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '1', '2009-02-03 21:08:29', '2011-09-30 01:06:39');
INSERT INTO `oc_product` VALUES ('47', 'Product 21', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/hp_1.jpg', '7', '1', '100.0000', '400', '9', '2009-02-03', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '0', '1', '0', '1', '6', '2009-02-03 21:08:40', '2020-07-28 16:55:09');
INSERT INTO `oc_product` VALUES ('48', 'product 20', 'test 1', '', '', '', '', '', 'test 2', '995', '5', 'catalog/demo/ipod_classic_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-08', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-08 17:21:51', '2011-09-30 01:07:06');
INSERT INTO `oc_product` VALUES ('49', 'SAM1', '', '', '', '', '', '', '', '0', '8', 'catalog/demo/samsung_tab_1.jpg', '0', '1', '199.9900', '0', '9', '2011-04-25', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '5', '2011-04-26 08:57:34', '2011-09-30 01:06:23');

-- ----------------------------
-- Table structure for oc_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_attribute
-- ----------------------------
INSERT INTO `oc_product_attribute` VALUES ('43', '2', '1', '1');
INSERT INTO `oc_product_attribute` VALUES ('47', '2', '1', '4');
INSERT INTO `oc_product_attribute` VALUES ('43', '4', '1', '8gb');
INSERT INTO `oc_product_attribute` VALUES ('42', '3', '1', '100mhz');
INSERT INTO `oc_product_attribute` VALUES ('47', '4', '1', '16GB');
INSERT INTO `oc_product_attribute` VALUES ('42', '5', '1', '');
INSERT INTO `oc_product_attribute` VALUES ('42', '8', '1', '');

-- ----------------------------
-- Table structure for oc_product_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_description
-- ----------------------------
INSERT INTO `oc_product_description` VALUES ('35', '1', 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', '');
INSERT INTO `oc_product_description` VALUES ('48', '1', 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', '');
INSERT INTO `oc_product_description` VALUES ('40', '1', 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', '');
INSERT INTO `oc_product_description` VALUES ('28', '1', 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', '');
INSERT INTO `oc_product_description` VALUES ('44', '1', 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', '');
INSERT INTO `oc_product_description` VALUES ('45', '1', 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', '');
INSERT INTO `oc_product_description` VALUES ('29', '1', 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', '');
INSERT INTO `oc_product_description` VALUES ('36', '1', 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', '');
INSERT INTO `oc_product_description` VALUES ('46', '1', 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', '');
INSERT INTO `oc_product_description` VALUES ('47', '1', 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', '');
INSERT INTO `oc_product_description` VALUES ('32', '1', 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', '');
INSERT INTO `oc_product_description` VALUES ('41', '1', 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', '');
INSERT INTO `oc_product_description` VALUES ('33', '1', 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', '');
INSERT INTO `oc_product_description` VALUES ('34', '1', 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', '');
INSERT INTO `oc_product_description` VALUES ('43', '1', 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', '');
INSERT INTO `oc_product_description` VALUES ('31', '1', 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', '');
INSERT INTO `oc_product_description` VALUES ('49', '1', 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', '');
INSERT INTO `oc_product_description` VALUES ('42', '1', 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '1,31414,51151', 'Apple Cinema 30', '', '');
INSERT INTO `oc_product_description` VALUES ('30', '1', 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', '');

-- ----------------------------
-- Table structure for oc_product_discount
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=564 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_discount
-- ----------------------------
INSERT INTO `oc_product_discount` VALUES ('563', '42', '1', '30', '1', '66.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_discount` VALUES ('562', '42', '1', '20', '1', '77.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_discount` VALUES ('561', '42', '1', '10', '1', '88.0000', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for oc_product_filter
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_filter
-- ----------------------------
INSERT INTO `oc_product_filter` VALUES ('42', '1');

-- ----------------------------
-- Table structure for oc_product_image
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2553 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_image
-- ----------------------------
INSERT INTO `oc_product_image` VALUES ('2548', '30', 'catalog/demo/canon_eos_5d_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2546', '47', 'catalog/demo/hp_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2035', '28', 'catalog/demo/htc_touch_hd_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2351', '41', 'catalog/demo/imac_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1982', '40', 'catalog/demo/iphone_6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2001', '36', 'catalog/demo/ipod_nano_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2000', '36', 'catalog/demo/ipod_nano_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2005', '34', 'catalog/demo/ipod_shuffle_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2004', '34', 'catalog/demo/ipod_shuffle_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2011', '32', 'catalog/demo/ipod_touch_7.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2010', '32', 'catalog/demo/ipod_touch_6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2009', '32', 'catalog/demo/ipod_touch_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1971', '43', 'catalog/demo/macbook_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1970', '43', 'catalog/demo/macbook_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1974', '44', 'catalog/demo/macbook_air_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1973', '44', 'catalog/demo/macbook_air_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1977', '45', 'catalog/demo/macbook_pro_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1976', '45', 'catalog/demo/macbook_pro_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1986', '31', 'catalog/demo/nikon_d300_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1985', '31', 'catalog/demo/nikon_d300_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1988', '29', 'catalog/demo/palm_treo_pro_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1995', '46', 'catalog/demo/sony_vaio_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1994', '46', 'catalog/demo/sony_vaio_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1991', '48', 'catalog/demo/ipod_classic_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1990', '48', 'catalog/demo/ipod_classic_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1981', '40', 'catalog/demo/iphone_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1980', '40', 'catalog/demo/iphone_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2547', '30', 'catalog/demo/canon_eos_5d_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2545', '47', 'catalog/demo/hp_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2034', '28', 'catalog/demo/htc_touch_hd_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2350', '41', 'catalog/demo/imac_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1979', '40', 'catalog/demo/iphone_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1978', '40', 'catalog/demo/iphone_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1989', '48', 'catalog/demo/ipod_classic_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1999', '36', 'catalog/demo/ipod_nano_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1998', '36', 'catalog/demo/ipod_nano_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2003', '34', 'catalog/demo/ipod_shuffle_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2002', '34', 'catalog/demo/ipod_shuffle_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2008', '32', 'catalog/demo/ipod_touch_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2007', '32', 'catalog/demo/ipod_touch_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2006', '32', 'catalog/demo/ipod_touch_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1969', '43', 'catalog/demo/macbook_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1968', '43', 'catalog/demo/macbook_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1972', '44', 'catalog/demo/macbook_air_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1975', '45', 'catalog/demo/macbook_pro_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1984', '31', 'catalog/demo/nikon_d300_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1983', '31', 'catalog/demo/nikon_d300_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1987', '29', 'catalog/demo/palm_treo_pro_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1993', '46', 'catalog/demo/sony_vaio_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1992', '46', 'catalog/demo/sony_vaio_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2327', '49', 'catalog/demo/samsung_tab_7.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2326', '49', 'catalog/demo/samsung_tab_6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2325', '49', 'catalog/demo/samsung_tab_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2324', '49', 'catalog/demo/samsung_tab_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2323', '49', 'catalog/demo/samsung_tab_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2322', '49', 'catalog/demo/samsung_tab_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2552', '42', 'catalog/demo/canon_logo.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2551', '42', 'catalog/demo/hp_1.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2550', '42', 'catalog/demo/compaq_presario.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2549', '42', 'catalog/demo/canon_eos_5d_1.jpg', '0');

-- ----------------------------
-- Table structure for oc_product_option
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option
-- ----------------------------
INSERT INTO `oc_product_option` VALUES ('224', '35', '11', '', '1');
INSERT INTO `oc_product_option` VALUES ('225', '47', '12', '2011-04-22', '1');
INSERT INTO `oc_product_option` VALUES ('220', '42', '10', '2011-02-20 22:25', '1');
INSERT INTO `oc_product_option` VALUES ('221', '42', '9', '22:25', '1');
INSERT INTO `oc_product_option` VALUES ('217', '42', '5', '', '1');
INSERT INTO `oc_product_option` VALUES ('223', '42', '2', '', '1');
INSERT INTO `oc_product_option` VALUES ('209', '42', '6', '', '1');
INSERT INTO `oc_product_option` VALUES ('226', '30', '5', '', '1');
INSERT INTO `oc_product_option` VALUES ('208', '42', '4', 'test', '1');
INSERT INTO `oc_product_option` VALUES ('218', '42', '1', '', '1');
INSERT INTO `oc_product_option` VALUES ('222', '42', '7', '', '1');
INSERT INTO `oc_product_option` VALUES ('219', '42', '8', '2011-02-20', '1');
INSERT INTO `oc_product_option` VALUES ('227', '42', '14', '', '1');

-- ----------------------------
-- Table structure for oc_product_option_value
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option_value
-- ----------------------------
INSERT INTO `oc_product_option_value` VALUES ('2', '217', '42', '5', '42', '200', '1', '2.0000', '+', '0', '+', '2.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('1', '217', '42', '5', '41', '100', '0', '1.0000', '+', '0', '+', '1.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('3', '217', '42', '5', '40', '300', '0', '3.0000', '+', '0', '+', '3.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('4', '217', '42', '5', '39', '92', '1', '4.0000', '+', '0', '+', '4.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('9', '223', '42', '2', '24', '194', '1', '20.0000', '+', '0', '+', '20.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('11', '223', '42', '2', '23', '3998', '1', '40.0000', '+', '0', '-', '40.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('10', '223', '42', '2', '23', '2696', '1', '30.0000', '+', '0', '+', '30.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('8', '223', '42', '2', '23', '48', '1', '10.0000', '+', '0', '+', '10.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('12', '224', '35', '11', '46', '0', '1', '5.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('13', '224', '35', '11', '47', '10', '1', '10.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('14', '224', '35', '11', '48', '15', '1', '15.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('16', '226', '30', '5', '40', '5', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('15', '226', '30', '5', '39', '2', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('7', '218', '42', '1', '32', '300', '1', '30.0000', '+', '3', '+', '30.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('5', '218', '42', '1', '32', '96', '1', '10.0000', '+', '1', '+', '10.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('6', '218', '42', '1', '32', '146', '1', '20.0000', '+', '2', '+', '20.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('19', '227', '42', '14', '54', '3', '1', '3.0000', '+', '3', '+', '3.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('18', '227', '42', '14', '53', '2', '1', '2.0000', '+', '2', '+', '2.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('17', '227', '42', '14', '52', '1', '1', '1.0000', '+', '1', '+', '1.00000000', '+');

-- ----------------------------
-- Table structure for oc_product_recurring
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for oc_product_related
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_related
-- ----------------------------
INSERT INTO `oc_product_related` VALUES ('40', '42');
INSERT INTO `oc_product_related` VALUES ('41', '42');
INSERT INTO `oc_product_related` VALUES ('42', '40');
INSERT INTO `oc_product_related` VALUES ('42', '41');

-- ----------------------------
-- Table structure for oc_product_reward
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=623 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_reward
-- ----------------------------
INSERT INTO `oc_product_reward` VALUES ('622', '42', '2', '300');
INSERT INTO `oc_product_reward` VALUES ('619', '47', '1', '300');
INSERT INTO `oc_product_reward` VALUES ('379', '28', '1', '400');
INSERT INTO `oc_product_reward` VALUES ('329', '43', '1', '600');
INSERT INTO `oc_product_reward` VALUES ('339', '29', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('343', '48', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('335', '40', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('620', '30', '1', '200');
INSERT INTO `oc_product_reward` VALUES ('331', '44', '1', '700');
INSERT INTO `oc_product_reward` VALUES ('333', '45', '1', '800');
INSERT INTO `oc_product_reward` VALUES ('337', '31', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('425', '35', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('345', '33', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('347', '46', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('545', '41', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('351', '36', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('353', '34', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('355', '32', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('521', '49', '1', '1000');
INSERT INTO `oc_product_reward` VALUES ('621', '42', '1', '100');

-- ----------------------------
-- Table structure for oc_product_special
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=487 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_special
-- ----------------------------
INSERT INTO `oc_product_special` VALUES ('484', '47', '1', '1', '200.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('485', '30', '1', '1', '80.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('486', '42', '1', '1', '205.0000', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for oc_product_to_category
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_category
-- ----------------------------
INSERT INTO `oc_product_to_category` VALUES ('28', '20');
INSERT INTO `oc_product_to_category` VALUES ('28', '24');
INSERT INTO `oc_product_to_category` VALUES ('29', '20');
INSERT INTO `oc_product_to_category` VALUES ('29', '24');
INSERT INTO `oc_product_to_category` VALUES ('30', '20');
INSERT INTO `oc_product_to_category` VALUES ('30', '33');
INSERT INTO `oc_product_to_category` VALUES ('31', '33');
INSERT INTO `oc_product_to_category` VALUES ('32', '34');
INSERT INTO `oc_product_to_category` VALUES ('33', '20');
INSERT INTO `oc_product_to_category` VALUES ('33', '28');
INSERT INTO `oc_product_to_category` VALUES ('34', '34');
INSERT INTO `oc_product_to_category` VALUES ('35', '20');
INSERT INTO `oc_product_to_category` VALUES ('36', '34');
INSERT INTO `oc_product_to_category` VALUES ('40', '20');
INSERT INTO `oc_product_to_category` VALUES ('40', '24');
INSERT INTO `oc_product_to_category` VALUES ('41', '27');
INSERT INTO `oc_product_to_category` VALUES ('42', '20');
INSERT INTO `oc_product_to_category` VALUES ('42', '28');
INSERT INTO `oc_product_to_category` VALUES ('43', '18');
INSERT INTO `oc_product_to_category` VALUES ('43', '20');
INSERT INTO `oc_product_to_category` VALUES ('44', '18');
INSERT INTO `oc_product_to_category` VALUES ('44', '20');
INSERT INTO `oc_product_to_category` VALUES ('45', '18');
INSERT INTO `oc_product_to_category` VALUES ('46', '18');
INSERT INTO `oc_product_to_category` VALUES ('46', '20');
INSERT INTO `oc_product_to_category` VALUES ('47', '18');
INSERT INTO `oc_product_to_category` VALUES ('47', '20');
INSERT INTO `oc_product_to_category` VALUES ('48', '20');
INSERT INTO `oc_product_to_category` VALUES ('48', '34');
INSERT INTO `oc_product_to_category` VALUES ('49', '57');

-- ----------------------------
-- Table structure for oc_product_to_download
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_download
-- ----------------------------

-- ----------------------------
-- Table structure for oc_product_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_layout
-- ----------------------------
INSERT INTO `oc_product_to_layout` VALUES ('42', '1', '0');
INSERT INTO `oc_product_to_layout` VALUES ('42', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('47', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('47', '1', '0');
INSERT INTO `oc_product_to_layout` VALUES ('30', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('30', '1', '0');

-- ----------------------------
-- Table structure for oc_product_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_store
-- ----------------------------
INSERT INTO `oc_product_to_store` VALUES ('28', '0');
INSERT INTO `oc_product_to_store` VALUES ('29', '0');
INSERT INTO `oc_product_to_store` VALUES ('30', '0');
INSERT INTO `oc_product_to_store` VALUES ('31', '0');
INSERT INTO `oc_product_to_store` VALUES ('32', '0');
INSERT INTO `oc_product_to_store` VALUES ('33', '0');
INSERT INTO `oc_product_to_store` VALUES ('34', '0');
INSERT INTO `oc_product_to_store` VALUES ('35', '0');
INSERT INTO `oc_product_to_store` VALUES ('36', '0');
INSERT INTO `oc_product_to_store` VALUES ('40', '0');
INSERT INTO `oc_product_to_store` VALUES ('41', '0');
INSERT INTO `oc_product_to_store` VALUES ('42', '0');
INSERT INTO `oc_product_to_store` VALUES ('43', '0');
INSERT INTO `oc_product_to_store` VALUES ('44', '0');
INSERT INTO `oc_product_to_store` VALUES ('45', '0');
INSERT INTO `oc_product_to_store` VALUES ('46', '0');
INSERT INTO `oc_product_to_store` VALUES ('47', '0');
INSERT INTO `oc_product_to_store` VALUES ('48', '0');
INSERT INTO `oc_product_to_store` VALUES ('49', '0');

-- ----------------------------
-- Table structure for oc_recurring
-- ----------------------------
DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for oc_recurring_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_recurring_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_return
-- ----------------------------
DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return
-- ----------------------------
INSERT INTO `oc_return` VALUES ('1', '2', '0', '1', '程', 'Tom', 'oc_study@163.com', '17774003568', 'iMac', 'Product 14', '1', '0', '3', '0', '2', '阿嘎尔恩爱狗奥德赛按个', '2020-04-30', '2020-05-06 17:17:35', '2020-05-06 17:17:35');

-- ----------------------------
-- Table structure for oc_return_action
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_action
-- ----------------------------
INSERT INTO `oc_return_action` VALUES ('1', '1', 'Refunded');
INSERT INTO `oc_return_action` VALUES ('2', '1', 'Credit Issued');
INSERT INTO `oc_return_action` VALUES ('3', '1', 'Replacement Sent');

-- ----------------------------
-- Table structure for oc_return_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_return_reason
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_reason
-- ----------------------------
INSERT INTO `oc_return_reason` VALUES ('1', '1', 'Dead On Arrival');
INSERT INTO `oc_return_reason` VALUES ('2', '1', 'Received Wrong Item');
INSERT INTO `oc_return_reason` VALUES ('3', '1', 'Order Error');
INSERT INTO `oc_return_reason` VALUES ('4', '1', 'Faulty, please supply details');
INSERT INTO `oc_return_reason` VALUES ('5', '1', 'Other, please supply details');

-- ----------------------------
-- Table structure for oc_return_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_status
-- ----------------------------
INSERT INTO `oc_return_status` VALUES ('1', '1', 'Pending');
INSERT INTO `oc_return_status` VALUES ('3', '1', 'Complete');
INSERT INTO `oc_return_status` VALUES ('2', '1', 'Awaiting Products');

-- ----------------------------
-- Table structure for oc_review
-- ----------------------------
DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_review
-- ----------------------------

-- ----------------------------
-- Table structure for oc_seo_url
-- ----------------------------
DROP TABLE IF EXISTS `oc_seo_url`;
CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=923 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_seo_url
-- ----------------------------
INSERT INTO `oc_seo_url` VALUES ('824', '0', '1', 'product_id=48', 'ipod-classic');
INSERT INTO `oc_seo_url` VALUES ('882', '0', '1', 'category_id=20', 'desktops');
INSERT INTO `oc_seo_url` VALUES ('834', '0', '1', 'category_id=26', 'pc');
INSERT INTO `oc_seo_url` VALUES ('835', '0', '1', 'category_id=27', 'mac');
INSERT INTO `oc_seo_url` VALUES ('730', '0', '1', 'manufacturer_id=8', 'apple');
INSERT INTO `oc_seo_url` VALUES ('905', '0', '1', 'information_id=4', 'about_us');
INSERT INTO `oc_seo_url` VALUES ('922', '1', '1', 'product_id=42', 'test');
INSERT INTO `oc_seo_url` VALUES ('789', '0', '1', 'category_id=34', 'mp3-players');
INSERT INTO `oc_seo_url` VALUES ('781', '0', '1', 'category_id=36', 'test2');
INSERT INTO `oc_seo_url` VALUES ('774', '0', '1', 'category_id=18', 'laptop-notebook');
INSERT INTO `oc_seo_url` VALUES ('775', '0', '1', 'category_id=46', 'macs');
INSERT INTO `oc_seo_url` VALUES ('776', '0', '1', 'category_id=45', 'windows');
INSERT INTO `oc_seo_url` VALUES ('909', '0', '1', 'category_id=25', 'component');
INSERT INTO `oc_seo_url` VALUES ('910', '0', '1', 'category_id=29', 'mouse');
INSERT INTO `oc_seo_url` VALUES ('911', '0', '1', 'category_id=28', 'monitor');
INSERT INTO `oc_seo_url` VALUES ('780', '0', '1', 'category_id=35', 'test1');
INSERT INTO `oc_seo_url` VALUES ('782', '0', '1', 'category_id=30', 'printer');
INSERT INTO `oc_seo_url` VALUES ('783', '0', '1', 'category_id=31', 'scanner');
INSERT INTO `oc_seo_url` VALUES ('784', '0', '1', 'category_id=32', 'web-camera');
INSERT INTO `oc_seo_url` VALUES ('785', '0', '1', 'category_id=57', 'tablet');
INSERT INTO `oc_seo_url` VALUES ('786', '0', '1', 'category_id=17', 'software');
INSERT INTO `oc_seo_url` VALUES ('787', '0', '1', 'category_id=24', 'smartphone');
INSERT INTO `oc_seo_url` VALUES ('908', '0', '1', 'category_id=33', 'camera');
INSERT INTO `oc_seo_url` VALUES ('790', '0', '1', 'category_id=43', 'test11');
INSERT INTO `oc_seo_url` VALUES ('791', '0', '1', 'category_id=44', 'test12');
INSERT INTO `oc_seo_url` VALUES ('792', '0', '1', 'category_id=47', 'test15');
INSERT INTO `oc_seo_url` VALUES ('793', '0', '1', 'category_id=48', 'test16');
INSERT INTO `oc_seo_url` VALUES ('794', '0', '1', 'category_id=49', 'test17');
INSERT INTO `oc_seo_url` VALUES ('795', '0', '1', 'category_id=50', 'test18');
INSERT INTO `oc_seo_url` VALUES ('796', '0', '1', 'category_id=51', 'test19');
INSERT INTO `oc_seo_url` VALUES ('797', '0', '1', 'category_id=52', 'test20');
INSERT INTO `oc_seo_url` VALUES ('798', '0', '1', 'category_id=58', 'test25');
INSERT INTO `oc_seo_url` VALUES ('799', '0', '1', 'category_id=53', 'test21');
INSERT INTO `oc_seo_url` VALUES ('800', '0', '1', 'category_id=54', 'test22');
INSERT INTO `oc_seo_url` VALUES ('801', '0', '1', 'category_id=55', 'test23');
INSERT INTO `oc_seo_url` VALUES ('802', '0', '1', 'category_id=56', 'test24');
INSERT INTO `oc_seo_url` VALUES ('803', '0', '1', 'category_id=38', 'test4');
INSERT INTO `oc_seo_url` VALUES ('804', '0', '1', 'category_id=37', 'test5');
INSERT INTO `oc_seo_url` VALUES ('805', '0', '1', 'category_id=39', 'test6');
INSERT INTO `oc_seo_url` VALUES ('806', '0', '1', 'category_id=40', 'test7');
INSERT INTO `oc_seo_url` VALUES ('807', '0', '1', 'category_id=41', 'test8');
INSERT INTO `oc_seo_url` VALUES ('808', '0', '1', 'category_id=42', 'test9');
INSERT INTO `oc_seo_url` VALUES ('920', '0', '1', 'product_id=30', 'canon-eos-5d');
INSERT INTO `oc_seo_url` VALUES ('919', '0', '1', 'product_id=47', 'hp-lp3065');
INSERT INTO `oc_seo_url` VALUES ('811', '0', '1', 'product_id=28', 'htc-touch-hd');
INSERT INTO `oc_seo_url` VALUES ('812', '0', '1', 'product_id=43', 'macbook');
INSERT INTO `oc_seo_url` VALUES ('813', '0', '1', 'product_id=44', 'macbook-air');
INSERT INTO `oc_seo_url` VALUES ('814', '0', '1', 'product_id=45', 'macbook-pro');
INSERT INTO `oc_seo_url` VALUES ('816', '0', '1', 'product_id=31', 'nikon-d300');
INSERT INTO `oc_seo_url` VALUES ('817', '0', '1', 'product_id=29', 'palm-treo-pro');
INSERT INTO `oc_seo_url` VALUES ('818', '0', '1', 'product_id=35', 'product-8');
INSERT INTO `oc_seo_url` VALUES ('819', '0', '1', 'product_id=49', 'samsung-galaxy-tab-10-1');
INSERT INTO `oc_seo_url` VALUES ('820', '0', '1', 'product_id=33', 'samsung-syncmaster-941bw');
INSERT INTO `oc_seo_url` VALUES ('821', '0', '1', 'product_id=46', 'sony-vaio');
INSERT INTO `oc_seo_url` VALUES ('837', '0', '1', 'product_id=41', 'imac');
INSERT INTO `oc_seo_url` VALUES ('823', '0', '1', 'product_id=40', 'iphone');
INSERT INTO `oc_seo_url` VALUES ('825', '0', '1', 'product_id=36', 'ipod-nano');
INSERT INTO `oc_seo_url` VALUES ('826', '0', '1', 'product_id=34', 'ipod-shuffle');
INSERT INTO `oc_seo_url` VALUES ('827', '0', '1', 'product_id=32', 'ipod-touch');
INSERT INTO `oc_seo_url` VALUES ('828', '0', '1', 'manufacturer_id=9', 'canon');
INSERT INTO `oc_seo_url` VALUES ('829', '0', '1', 'manufacturer_id=5', 'htc');
INSERT INTO `oc_seo_url` VALUES ('830', '0', '1', 'manufacturer_id=7', 'hewlett-packard');
INSERT INTO `oc_seo_url` VALUES ('831', '0', '1', 'manufacturer_id=6', 'palm');
INSERT INTO `oc_seo_url` VALUES ('832', '0', '1', 'manufacturer_id=10', 'sony');
INSERT INTO `oc_seo_url` VALUES ('906', '0', '1', 'information_id=6', 'delivery');
INSERT INTO `oc_seo_url` VALUES ('907', '0', '1', 'information_id=3', 'privacy');
INSERT INTO `oc_seo_url` VALUES ('843', '0', '1', 'information_id=5', 'terms');
INSERT INTO `oc_seo_url` VALUES ('921', '0', '1', 'product_id=42', 'test');

-- ----------------------------
-- Table structure for oc_session
-- ----------------------------
DROP TABLE IF EXISTS `oc_session`;
CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_session
-- ----------------------------
INSERT INTO `oc_session` VALUES ('0006c11a7829977890e268e3fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 09:25:38');
INSERT INTO `oc_session` VALUES ('00632f729a3e124b27cbd3f147', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-28 03:07:16');
INSERT INTO `oc_session` VALUES ('00bd557949e6b9bc3aef41942e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 09:24:25');
INSERT INTO `oc_session` VALUES ('00c8b7b747e8dcb00c499da6ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-27 04:02:34');
INSERT INTO `oc_session` VALUES ('00d3bb9a413049fb35ec4f67bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 03:29:54');
INSERT INTO `oc_session` VALUES ('00e9764c9ddd98ab2b5321a8ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 02:14:48');
INSERT INTO `oc_session` VALUES ('010755e5a320d0a46db9adcb72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-29 01:54:58');
INSERT INTO `oc_session` VALUES ('010dc5936e48ec3baf071f0fb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 09:58:43');
INSERT INTO `oc_session` VALUES ('024f54e42ebfcad98b28616087', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-14 07:06:44');
INSERT INTO `oc_session` VALUES ('0269973f055715ec8c756f7d03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 09:33:39');
INSERT INTO `oc_session` VALUES ('033a47491ec9b7a55969642a0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 11:38:22');
INSERT INTO `oc_session` VALUES ('03b2608c87d6a2d1ed8b6c7d2f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"nWFuphbW1pDIXiiYhJMty3DBelUpBI25\"}', '2020-06-10 09:38:28');
INSERT INTO `oc_session` VALUES ('04195114a50b3ab286e90e9c9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-10 08:28:53');
INSERT INTO `oc_session` VALUES ('04d88269d84144ff426f357562', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 07:23:17');
INSERT INTO `oc_session` VALUES ('05d5a0bbfcc1e60a2d144da81e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 03:57:45');
INSERT INTO `oc_session` VALUES ('06384308024df92b09a1d403f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 02:15:17');
INSERT INTO `oc_session` VALUES ('0744ff4f203c411d379409e97d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 02:21:30');
INSERT INTO `oc_session` VALUES ('07c2a977a87faf8044222f8d7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-17 09:20:46');
INSERT INTO `oc_session` VALUES ('07d375f945ed69e6e607ca45fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 12:39:08');
INSERT INTO `oc_session` VALUES ('07fd6b7e97006d3a14de7bafc3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 08:42:37');
INSERT INTO `oc_session` VALUES ('0875544fd03257e74645655c3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-07 02:06:51');
INSERT INTO `oc_session` VALUES ('094102abf52fb904ed4919eb33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 03:20:23');
INSERT INTO `oc_session` VALUES ('09765b6e1440aaf8aef9946668', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-01 07:32:01');
INSERT INTO `oc_session` VALUES ('09a765b355bb945868f633f044', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-20 02:48:41');
INSERT INTO `oc_session` VALUES ('0a28e59c4f79017be21455ce9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-22 06:15:57');
INSERT INTO `oc_session` VALUES ('0b02d058097a30f0861ec9319d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 09:26:21');
INSERT INTO `oc_session` VALUES ('0b8edb417b1529f89fc79609fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 02:29:48');
INSERT INTO `oc_session` VALUES ('0be5fcf97cf26d490eecd6449e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 10:20:30');
INSERT INTO `oc_session` VALUES ('0c7cc0b5872750be38b7ffc680', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 05:09:50');
INSERT INTO `oc_session` VALUES ('0daf56d4d9b586acc24f689b4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 11:30:59');
INSERT INTO `oc_session` VALUES ('0e07414a94d7c3e89a2d324c05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-03 04:58:47');
INSERT INTO `oc_session` VALUES ('0e169ee84aca00025497fe6d3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 08:50:24');
INSERT INTO `oc_session` VALUES ('0e3498d6301df40c6c1936e453', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 09:52:33');
INSERT INTO `oc_session` VALUES ('0e5e8fcc2cb68c05cc2b36af87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-23 01:43:43');
INSERT INTO `oc_session` VALUES ('0ea2356155282ecddcba65a8c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 07:21:53');
INSERT INTO `oc_session` VALUES ('0ed4e76217dd1aa8a1dceaa634', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 02:19:33');
INSERT INTO `oc_session` VALUES ('0f823ffe46b5e9d30cb79aa738', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-04 04:14:12');
INSERT INTO `oc_session` VALUES ('0f99e4d073d8863e2db73bdef9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-11 07:30:58');
INSERT INTO `oc_session` VALUES ('10103cde6aa77094fac4374f16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-06 10:57:18');
INSERT INTO `oc_session` VALUES ('1028925709f982333bea63b99b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:45:20');
INSERT INTO `oc_session` VALUES ('1197e1a7fc283d210faed45ac7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"HdK5TBPOUGs0O6fTAAxJ7Mmawu5U9Ch0\"}', '2020-05-12 11:25:16');
INSERT INTO `oc_session` VALUES ('11d1ec3eda854230736b9479ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-29 04:42:01');
INSERT INTO `oc_session` VALUES ('13ab906060f7e5f50560c63230', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"user_id\":\"1\",\"user_token\":\"PlFzoiQbqT39IV721Ss6qyXEYGwgqWkF\"}', '2020-07-09 09:58:10');
INSERT INTO `oc_session` VALUES ('13cab1b95698b8d2a13af2cab7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 09:24:53');
INSERT INTO `oc_session` VALUES ('1407e9ae2867f3929a964c31cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 05:42:36');
INSERT INTO `oc_session` VALUES ('1418917c36d1c5fc56660bc8f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 01:34:06');
INSERT INTO `oc_session` VALUES ('14d19b8565f368c04fc2d5e617', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-02 04:17:27');
INSERT INTO `oc_session` VALUES ('1568a93f82cd3197fb13b8159f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 09:13:20');
INSERT INTO `oc_session` VALUES ('160dcea9167fa2892fdbc2e5f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:48:43');
INSERT INTO `oc_session` VALUES ('16844a6b716da433659adcb6dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 06:16:37');
INSERT INTO `oc_session` VALUES ('17068ddb25f9cfee7a709c3a6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 08:07:01');
INSERT INTO `oc_session` VALUES ('170798e61ad1cfa327551d84d8', '{\"user_id\":\"1\",\"user_token\":\"7zHetgaU6u9YukUUss9aVeaTcaO6ROH9\"}', '2020-01-07 10:57:21');
INSERT INTO `oc_session` VALUES ('17c8dc2f1c51cd8e63e8882ed1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 07:38:40');
INSERT INTO `oc_session` VALUES ('17ef0506ee8597abc61e0db3ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:45:22');
INSERT INTO `oc_session` VALUES ('1840b3c166f3a61c9f1c3eb23f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-06 10:19:24');
INSERT INTO `oc_session` VALUES ('185f4165bfcf46408ff4f1297a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 04:05:53');
INSERT INTO `oc_session` VALUES ('1922a0fe7c451dc6639ab8401f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:46:51');
INSERT INTO `oc_session` VALUES ('1964eaea0350a80edd833589ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 09:03:56');
INSERT INTO `oc_session` VALUES ('19925de555241b547f0b1c2cbc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-29 04:57:15');
INSERT INTO `oc_session` VALUES ('19b61095b797e7b6f88f3bbe7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 06:49:24');
INSERT INTO `oc_session` VALUES ('1ae1d6f27cd9d29a17517de044', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-01 11:02:25');
INSERT INTO `oc_session` VALUES ('1aec971fc0bb308edb29488c9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 02:19:40');
INSERT INTO `oc_session` VALUES ('1bff2f663b594aa1664e68db55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 10:06:47');
INSERT INTO `oc_session` VALUES ('1c2837237d46cdf0c3ad32ea66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 09:59:57');
INSERT INTO `oc_session` VALUES ('1c2a635cd83d8d6cb32ea78556', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:37:54');
INSERT INTO `oc_session` VALUES ('1cf8d8de711f7973ed320be225', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-19 05:28:14');
INSERT INTO `oc_session` VALUES ('1d017ebd06ae558face2265950', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-08 02:28:02');
INSERT INTO `oc_session` VALUES ('1d1e6e35e26b60938cf0d72f3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-29 02:54:23');
INSERT INTO `oc_session` VALUES ('1d20bf9ceec4322515e225320e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 04:26:31');
INSERT INTO `oc_session` VALUES ('1d2c19dcf4c0b0d5319ff61905', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 07:38:10');
INSERT INTO `oc_session` VALUES ('1dcf9fd433a59ac36527f5a5fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-23 04:21:18');
INSERT INTO `oc_session` VALUES ('1e023e8fff592535fc4892b2aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-22 01:15:43');
INSERT INTO `oc_session` VALUES ('1e1cd75072ecedd2579a4c1dcb', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"MbSuzrB9xxgXh62BpAunWbb5QM7zwwBX\"}', '2020-06-12 10:04:28');
INSERT INTO `oc_session` VALUES ('1e926db19f203518e8c026ea97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:37:51');
INSERT INTO `oc_session` VALUES ('1ec35a55a52a3e16ea5c8e35b8', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"33sP16aiA3mowJwWM14d5J6b6YSUWzl7\"}', '2020-06-18 07:54:43');
INSERT INTO `oc_session` VALUES ('1f701023db3566454f1f51cfe9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-05 04:24:50');
INSERT INTO `oc_session` VALUES ('1fa1f2fb3500ecce0af50d0c84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-14 09:25:12');
INSERT INTO `oc_session` VALUES ('1fdf70322589e69feaef9e2ead', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 10:20:48');
INSERT INTO `oc_session` VALUES ('202e122b743fb6ada4316f8f3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 03:32:48');
INSERT INTO `oc_session` VALUES ('22a3e80c819254b9cf6acc4746', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-31 04:28:31');
INSERT INTO `oc_session` VALUES ('23417ac1bdaac1032d281c50a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-22 09:40:15');
INSERT INTO `oc_session` VALUES ('23a25410b5544e3579b8feec3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-06 00:40:59');
INSERT INTO `oc_session` VALUES ('24596718003c2b800d3716d6bf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"user_id\":\"1\",\"user_token\":\"PKEyfCnmAMJt8O24AcUDPUl7HbFIxUIg\"}', '2020-07-14 08:39:36');
INSERT INTO `oc_session` VALUES ('24ac314488e952a96da61b21c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"RrH05GMrYPBNxMUOk9qwWlf1sXZVBd6U\"}', '2020-06-11 09:53:17');
INSERT INTO `oc_session` VALUES ('24b9442feff20cbbe1c34f6718', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PhSXyQCdZHnwfQwUDQgRtJ7CM4LuBJKM\"}', '2020-04-27 10:16:24');
INSERT INTO `oc_session` VALUES ('24cbd5f7b46d01d69f82689c57', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-09 08:41:57');
INSERT INTO `oc_session` VALUES ('25ff5effbcbc49dede4db1c59d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 05:26:39');
INSERT INTO `oc_session` VALUES ('260e19f32044716a8a6c52640e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-08-05 12:08:18');
INSERT INTO `oc_session` VALUES ('26476bd364dac31363b28e2975', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 00:57:40');
INSERT INTO `oc_session` VALUES ('267f3a7fb7c74ab51a92fefa36', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 04:14:58');
INSERT INTO `oc_session` VALUES ('278ad9d2424fa6da7110157b0d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"e8VOkvbbTezlyEE6PACfhF0TaWmVhsB0\"}', '2020-05-27 08:11:12');
INSERT INTO `oc_session` VALUES ('28751dbfc6ce1c56cc7872f548', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 03:27:51');
INSERT INTO `oc_session` VALUES ('2890760e0a24feece737f0c5ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 03:29:55');
INSERT INTO `oc_session` VALUES ('28eceb2fe5f381cf6e7d6db5fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 07:23:18');
INSERT INTO `oc_session` VALUES ('29d1e3092d9a0ec53c64b7bfac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 01:53:24');
INSERT INTO `oc_session` VALUES ('2a2011cffac68a6fb1e0f1c14d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 12:15:41');
INSERT INTO `oc_session` VALUES ('2a951875d36e14d7a91cf63cfd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 04:57:04');
INSERT INTO `oc_session` VALUES ('2ab87a190406b7383dc40865b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-27 09:16:57');
INSERT INTO `oc_session` VALUES ('2ac6e912cfd0f43038e90b6945', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-29 04:35:46');
INSERT INTO `oc_session` VALUES ('2ca5034a1537eaf7d15d48dce0', '{\"user_id\":\"1\",\"user_token\":\"MyjPinrEE7akqcWs3tmlS0aExSoJulbE\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-04 03:01:30');
INSERT INTO `oc_session` VALUES ('2dde95f7e5be404dfd5ba3fdf5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 09:28:38');
INSERT INTO `oc_session` VALUES ('2e81b517d6a9714adac70386e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 03:13:30');
INSERT INTO `oc_session` VALUES ('2ed7d50732dc64af75838841ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 01:21:18');
INSERT INTO `oc_session` VALUES ('2f7b235436ef3ecf9a6c1347ff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime\",\"lastname\":\"Tom\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f0\",\"address_1\":\"123\",\"address_2\":\"\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-05-07 01:37:49');
INSERT INTO `oc_session` VALUES ('2f9e16ac2b46f46d5188f1a255', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 08:18:59');
INSERT INTO `oc_session` VALUES ('2faabf4a230343e72e340c02ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-04 06:38:19');
INSERT INTO `oc_session` VALUES ('31490090484ebbe508ef965b39', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 01:16:55');
INSERT INTO `oc_session` VALUES ('32a9305aa72d23a23c1ec9ab3b', '{\"user_id\":\"1\",\"user_token\":\"OphpZfebnVrbaLfFAj2hx46P0oQXVRxQ\"}', '2020-06-10 01:19:30');
INSERT INTO `oc_session` VALUES ('33d828c486906854ce363930a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 04:13:12');
INSERT INTO `oc_session` VALUES ('346bf40e85c259f6b59bc1018f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 01:57:32');
INSERT INTO `oc_session` VALUES ('34780a4dc13cee76f0ba061bc5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 02:35:27');
INSERT INTO `oc_session` VALUES ('3497be82af42c4a4fd34ada091', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 03:28:56');
INSERT INTO `oc_session` VALUES ('349c3dd97c103e26d86efe2d1a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 06:07:50');
INSERT INTO `oc_session` VALUES ('34a0baa9d30ece94179db2b50a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 07:14:01');
INSERT INTO `oc_session` VALUES ('350fb8b8e7baf137ceb586afe3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-24 08:45:36');
INSERT INTO `oc_session` VALUES ('351bb614245cacec299115ba04', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 07:24:44');
INSERT INTO `oc_session` VALUES ('3598b5943461c1a15fd5baee03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-03 08:59:04');
INSERT INTO `oc_session` VALUES ('35c6900046ad1dc24267295fd4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-27 11:20:45');
INSERT INTO `oc_session` VALUES ('35cd68cb5288f3e90f0a2ec01e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 10:00:52');
INSERT INTO `oc_session` VALUES ('36889818aaa114effc557543ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-03 06:41:39');
INSERT INTO `oc_session` VALUES ('36b340427be6c3cad6dfc3a265', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:28');
INSERT INTO `oc_session` VALUES ('36f80bbf7ce4706232a3f9b175', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:45:23');
INSERT INTO `oc_session` VALUES ('37444e6e20af58c6ab87abef56', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-07 02:51:39');
INSERT INTO `oc_session` VALUES ('375f58b1be550d5351704c9ab0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\"}', '2020-04-17 09:59:27');
INSERT INTO `oc_session` VALUES ('376c27ffa04afd46edc04d88f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:20');
INSERT INTO `oc_session` VALUES ('37d8f503d1f543a8326b315d60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 05:15:33');
INSERT INTO `oc_session` VALUES ('38094c990727f4c5b1d68f44a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 03:17:53');
INSERT INTO `oc_session` VALUES ('381e4e35a5591c2621601c9e1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-22 07:39:33');
INSERT INTO `oc_session` VALUES ('386ce93b7d47a5291ba196b843', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 01:57:32');
INSERT INTO `oc_session` VALUES ('3894103da75899ad844041f363', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 03:31:30');
INSERT INTO `oc_session` VALUES ('38ec223412632f9751d605982e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 09:14:19');
INSERT INTO `oc_session` VALUES ('39ba5e1a2471beaa8a9a2d0555', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-04 02:15:50');
INSERT INTO `oc_session` VALUES ('3a11e3b4eab90866b489fbe944', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 10:03:13');
INSERT INTO `oc_session` VALUES ('3a266b5da3b82d87f2b87fdf00', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-11 06:34:05');
INSERT INTO `oc_session` VALUES ('3a45983cc5c97bb2122bc68e60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 08:04:00');
INSERT INTO `oc_session` VALUES ('3aba7394d43119054db8791df3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 01:21:18');
INSERT INTO `oc_session` VALUES ('3affdd4a02ab424da99f0a8450', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-17 09:20:41');
INSERT INTO `oc_session` VALUES ('3b08b59e6cc6bd1e802c7fa8e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-07 03:44:48');
INSERT INTO `oc_session` VALUES ('3b718d76394d0364435ce4dae5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 03:30:28');
INSERT INTO `oc_session` VALUES ('3c6d0d36f739db46c00c7cdb7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 07:01:30');
INSERT INTO `oc_session` VALUES ('3e28382aa499455aef4ce0ce1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-14 08:05:01');
INSERT INTO `oc_session` VALUES ('3e3ea205db56ab3143470cad4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 07:23:17');
INSERT INTO `oc_session` VALUES ('3e444f37d0935bc57854a41f29', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 09:50:39');
INSERT INTO `oc_session` VALUES ('3e5247bfbf26dbea504367df7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 06:55:16');
INSERT INTO `oc_session` VALUES ('3e77d4819c4e5a17e9cf770e96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-19 03:36:48');
INSERT INTO `oc_session` VALUES ('3ead3fb70ec58c819b546bbecf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 07:24:46');
INSERT INTO `oc_session` VALUES ('3f428c10e280661d4bff1eadbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 03:15:00');
INSERT INTO `oc_session` VALUES ('3f6ff29ef11c9e8b4b632f3c99', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"aj7nYAMMqj2q2IIPd6KEq9CjNZKkySta\"}', '2020-05-08 07:24:45');
INSERT INTO `oc_session` VALUES ('3fcb9213b6afbdb0c39b9d084a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-03 06:29:20');
INSERT INTO `oc_session` VALUES ('4078ff0438dfd2f033cd4034a5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 09:37:19');
INSERT INTO `oc_session` VALUES ('40928930f51286399209f40192', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-10 07:11:35');
INSERT INTO `oc_session` VALUES ('4098e56e179526b6a14cadc905', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-17 09:20:47');
INSERT INTO `oc_session` VALUES ('40a4dc0a540193b5f0364e22ce', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"V1L25sVUcRm72QUInMH5XM9gZWfSrSiB\"}', '2020-01-04 08:30:17');
INSERT INTO `oc_session` VALUES ('4182dfc996bd8d2f9b3717f787', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 08:57:26');
INSERT INTO `oc_session` VALUES ('41fa5e59192665393f3c530b01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-29 09:52:39');
INSERT INTO `oc_session` VALUES ('4229d68218e157d6d4def2b0b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-10 07:08:32');
INSERT INTO `oc_session` VALUES ('429e5a192183428a0b8cd616d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-06 09:55:26');
INSERT INTO `oc_session` VALUES ('447f7e18e58c14a0cb5678ea65', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 01:28:15');
INSERT INTO `oc_session` VALUES ('449a0fc940f5387aabbb1a4e21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 03:17:16');
INSERT INTO `oc_session` VALUES ('4664161a0f211bd1c7d4311d9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:45:11');
INSERT INTO `oc_session` VALUES ('46c126d0e0326bd0d86b73c2a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-17 08:04:00');
INSERT INTO `oc_session` VALUES ('47865b1556f9131e684caa9976', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 05:33:53');
INSERT INTO `oc_session` VALUES ('47d81500da33ac9eeee3681c4d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 09:43:12');
INSERT INTO `oc_session` VALUES ('482f7386eb0021ba18e995c528', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-10 08:25:13');
INSERT INTO `oc_session` VALUES ('4844d56624d920b717b01970e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 08:51:36');
INSERT INTO `oc_session` VALUES ('4856c25bc47b530bba93d98070', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 05:05:56');
INSERT INTO `oc_session` VALUES ('48a683abddff093589490c2d5d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 10:11:21');
INSERT INTO `oc_session` VALUES ('48ecbdf8eb6230553aeb36fddc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 08:48:13');
INSERT INTO `oc_session` VALUES ('4935a780945acee06dbf7c98e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 08:01:35');
INSERT INTO `oc_session` VALUES ('494ebb27e62cf4786dc45deb6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 06:10:04');
INSERT INTO `oc_session` VALUES ('497abe2d723b9252dfe4b9f3d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-03 03:50:03');
INSERT INTO `oc_session` VALUES ('4982341831b32204fbb110f844', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-19 08:57:59');
INSERT INTO `oc_session` VALUES ('49dc3eaa7728b3481fc26f97f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:37:45');
INSERT INTO `oc_session` VALUES ('4aaa2ab7ae01c698ecfdccd7f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 09:10:38');
INSERT INTO `oc_session` VALUES ('4b4130474998c481f54f504930', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 08:46:36');
INSERT INTO `oc_session` VALUES ('4bfd81a4476183c7f9fd28dc55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 06:24:50');
INSERT INTO `oc_session` VALUES ('4c28d3a5127c60d374e443d435', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:51:11');
INSERT INTO `oc_session` VALUES ('4c4f89764ce38ee610506efebe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:48:30');
INSERT INTO `oc_session` VALUES ('4c8b18425b7f9883fcdd12f1eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-31 02:50:16');
INSERT INTO `oc_session` VALUES ('4c93489e476308b35e2b97a653', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 06:07:50');
INSERT INTO `oc_session` VALUES ('4d13d038e02621bbf75d76c806', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 07:15:00');
INSERT INTO `oc_session` VALUES ('4e00de4d68d48fa8236982ca24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 09:59:57');
INSERT INTO `oc_session` VALUES ('4e1a288225cd7a884b3f777e26', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-06 09:48:07');
INSERT INTO `oc_session` VALUES ('4ff30d403cd65f41451716a00b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 08:50:49');
INSERT INTO `oc_session` VALUES ('5026ef182740899355ce70d2f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 04:29:41');
INSERT INTO `oc_session` VALUES ('506bf70d2c2e345185a210cf20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 07:40:21');
INSERT INTO `oc_session` VALUES ('51605fd39476e64934a11cf714', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:59:17');
INSERT INTO `oc_session` VALUES ('51ea90ff74200a2e9c5b26350a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 07:53:03');
INSERT INTO `oc_session` VALUES ('52a8ca44726f8a5260eed0674c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-22 08:47:05');
INSERT INTO `oc_session` VALUES ('53028cd4360347c41d7b5a3ecf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"46\",\"33\"]}', '2020-07-07 07:45:36');
INSERT INTO `oc_session` VALUES ('532156b11021e80e9e7e8b6d2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-09 05:44:28');
INSERT INTO `oc_session` VALUES ('5359c1d91ba4dbaa8cf8a67b54', '{\"user_id\":\"1\",\"user_token\":\"cGNX1J0st3p98eepS3ggTdh63P9djg2N\"}', '2020-01-06 10:43:55');
INSERT INTO `oc_session` VALUES ('53a62bd636c3f6b6d80c45d2cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-05 04:24:50');
INSERT INTO `oc_session` VALUES ('53cf5f7a9b8faaefda6075b459', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 06:30:12');
INSERT INTO `oc_session` VALUES ('53dc265a8696891ad6f985b30b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-30 11:02:32');
INSERT INTO `oc_session` VALUES ('53f6d9a4a4314ccb21a11ac9a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-22 01:51:48');
INSERT INTO `oc_session` VALUES ('54730084798eb707e269273b4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 09:05:25');
INSERT INTO `oc_session` VALUES ('54c13627dcbf62bc4cd16ae5fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-03 06:26:31');
INSERT INTO `oc_session` VALUES ('54c145a0fa5e2ab0be2f638b5b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-22 08:35:50');
INSERT INTO `oc_session` VALUES ('55048950dc29f1cc4384a67ec1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 07:42:18');
INSERT INTO `oc_session` VALUES ('55a94ef6e150bfbad5d3631a5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 09:02:37');
INSERT INTO `oc_session` VALUES ('56094d9cd3e7de67908e221040', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 07:08:21');
INSERT INTO `oc_session` VALUES ('56cb05c08537698365cfd5abc8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-07 03:44:48');
INSERT INTO `oc_session` VALUES ('570f870f377ed06d0805af9ecb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-05 04:24:50');
INSERT INTO `oc_session` VALUES ('5714bba956a0cda6f56d7fd167', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-17 02:21:27');
INSERT INTO `oc_session` VALUES ('57216049cb93fcc37a9839270a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-04 06:08:16');
INSERT INTO `oc_session` VALUES ('575de8835671a3783f312bc26c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 02:34:29');
INSERT INTO `oc_session` VALUES ('57a289533076831a23c33945f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-03 06:16:46');
INSERT INTO `oc_session` VALUES ('57b3bd2a35a1d43e5291a0f6eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-29 05:27:45');
INSERT INTO `oc_session` VALUES ('588ac14d8e7a9c66c23755b2d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 08:46:17');
INSERT INTO `oc_session` VALUES ('58a88c25c6befc7f2808642f01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-12 08:12:53');
INSERT INTO `oc_session` VALUES ('58b97a1371034a88a7b7847b47', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:31');
INSERT INTO `oc_session` VALUES ('58bb19c70a3d9c7f56f6a80fde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 08:06:20');
INSERT INTO `oc_session` VALUES ('58d3478a7d315e80fc5937c5d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-31 02:30:29');
INSERT INTO `oc_session` VALUES ('5999b9e776d0d00f9c198821d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 03:40:58');
INSERT INTO `oc_session` VALUES ('59eed48bb6400acf0d45b20ab6', '{\"user_id\":\"1\",\"user_token\":\"blXdwWjIANpBYwYArSi6jxNBERk9u4WA\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-27 09:56:09');
INSERT INTO `oc_session` VALUES ('5a10cabd1df670410b01b832f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 05:51:48');
INSERT INTO `oc_session` VALUES ('5b0096caa502474d9087168b4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 04:26:48');
INSERT INTO `oc_session` VALUES ('5b03211d6152e55408b94898da', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-04 03:52:15');
INSERT INTO `oc_session` VALUES ('5b20a6710fadf0cb7a797987e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-08 06:26:24');
INSERT INTO `oc_session` VALUES ('5be7921dfb17763ef8d86d91a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-03 03:58:58');
INSERT INTO `oc_session` VALUES ('5c56e937c2f9f670343315bc7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-08 05:24:19');
INSERT INTO `oc_session` VALUES ('5c5fb3e9341105d520d29cac57', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 10:35:00');
INSERT INTO `oc_session` VALUES ('5c6f19644413eb369779532434', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-02 06:24:59');
INSERT INTO `oc_session` VALUES ('5cdea623d18b173a4e2ee18560', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-29 08:22:54');
INSERT INTO `oc_session` VALUES ('5ce41553b3d516ea542f20e2a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-22 02:37:58');
INSERT INTO `oc_session` VALUES ('5dab43610cfa391f8f8131d286', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 08:21:08');
INSERT INTO `oc_session` VALUES ('5ddd89ac3ac82633351ef83498', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-07 08:07:46');
INSERT INTO `oc_session` VALUES ('5df3edee4e0958c60a46652117', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-08 06:26:24');
INSERT INTO `oc_session` VALUES ('5dfc853a91776021fbdedba56c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 09:44:15');
INSERT INTO `oc_session` VALUES ('5e2c52a15340fb9220d236babb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:51:10');
INSERT INTO `oc_session` VALUES ('5e55c1a408050e6cb4f8900ca2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 04:40:25');
INSERT INTO `oc_session` VALUES ('5e97c71fb9ab23000f3e37a74d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"sz9FRB8X5oTmcapN7XHCmmAVGF509Ewi\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime\",\"lastname\":\"Tom\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f0\",\"address_1\":\"123\",\"address_2\":\"\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-04-23 06:31:47');
INSERT INTO `oc_session` VALUES ('5ed585f30f98e688fc22410d30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-06 06:49:28');
INSERT INTO `oc_session` VALUES ('5f00b937f39bf2f050f3051780', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 07:45:18');
INSERT INTO `oc_session` VALUES ('5f790eb0a45e30f5a3630b186e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-23 06:28:24');
INSERT INTO `oc_session` VALUES ('5fd2560c24a1b0cfa09a464a7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 04:26:11');
INSERT INTO `oc_session` VALUES ('5fed4a4c7de23e2bacc082ea5e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":false}', '2020-04-20 09:45:48');
INSERT INTO `oc_session` VALUES ('5ff275a9c3c18c45b7426bcf0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 07:00:20');
INSERT INTO `oc_session` VALUES ('600ce3d196ddf589d1823c966d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-12 06:17:31');
INSERT INTO `oc_session` VALUES ('6044fa4b2063b77ceeea03c36f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-28 06:34:19');
INSERT INTO `oc_session` VALUES ('60d9c552cc5ecbeade229d4109', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-20 02:41:40');
INSERT INTO `oc_session` VALUES ('60df5b9644a0a053334507b956', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-31 02:27:53');
INSERT INTO `oc_session` VALUES ('62196f38f02141722ff0b72b6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 07:08:22');
INSERT INTO `oc_session` VALUES ('6248b18ba41cc71fcdb198f724', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 09:23:12');
INSERT INTO `oc_session` VALUES ('628ac84c74006f4f68cf908877', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-03 02:38:03');
INSERT INTO `oc_session` VALUES ('62b65c1430bf9aff17e7aa9bd3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:57:34');
INSERT INTO `oc_session` VALUES ('62e6144d2459230ebff2226098', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 11:50:37');
INSERT INTO `oc_session` VALUES ('635619b0a5b38d5c7bf19850a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 07:02:44');
INSERT INTO `oc_session` VALUES ('63620d5ead80eeca06637e6e28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 10:33:45');
INSERT INTO `oc_session` VALUES ('63c7adb6d3a5a5b4243851ec13', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:18:18');
INSERT INTO `oc_session` VALUES ('63cfdbc306c6bbb34f68a4f606', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-06 12:07:40');
INSERT INTO `oc_session` VALUES ('654e501da995281bf18390c7e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 06:21:55');
INSERT INTO `oc_session` VALUES ('65ebd254a5e5b6b6d7098766e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 10:44:32');
INSERT INTO `oc_session` VALUES ('662afe5799a289f2f30271d9b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-30 02:35:19');
INSERT INTO `oc_session` VALUES ('664bcbe2f6f292fc3f91a18d94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-04 02:30:57');
INSERT INTO `oc_session` VALUES ('6680466a07d8c88a8a766774e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 09:32:56');
INSERT INTO `oc_session` VALUES ('6697847217e90f812d5096cab1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 04:18:02');
INSERT INTO `oc_session` VALUES ('670d3ca2df9177f7a81e7b0962', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 06:37:17');
INSERT INTO `oc_session` VALUES ('674fc185e5a0121054ce51f290', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 01:38:01');
INSERT INTO `oc_session` VALUES ('678a0e40084cee12e2f2916081', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-29 04:57:16');
INSERT INTO `oc_session` VALUES ('678d56d2f7bdf55597f8d1b7c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-22 08:39:37');
INSERT INTO `oc_session` VALUES ('67dda9e9a09a2507fbd6f95250', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-03 05:22:27');
INSERT INTO `oc_session` VALUES ('6810a696d2f4f079041c36aaf0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 02:47:06');
INSERT INTO `oc_session` VALUES ('68a4af7486c1eb43cf9c61cb42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 01:22:19');
INSERT INTO `oc_session` VALUES ('68d01a44f2915e339809964ef4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-31 09:07:01');
INSERT INTO `oc_session` VALUES ('690a1106a787963b4a44c11d15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 02:54:02');
INSERT INTO `oc_session` VALUES ('69639b68ec7e889acb4d63da50', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 09:24:46');
INSERT INTO `oc_session` VALUES ('6a169980d6b2fadefda59d4018', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-08 05:24:20');
INSERT INTO `oc_session` VALUES ('6a187b082264a35540a4799869', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-06 10:35:29');
INSERT INTO `oc_session` VALUES ('6a47befe81c566b26add6c1714', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:46:50');
INSERT INTO `oc_session` VALUES ('6a9eeefedf8018eb82b90e1229', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uLDkqVLQQbzyw96aNf3AdvhoeMyszXIw\",\"wishlist\":[],\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime\",\"lastname\":\"Tom\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f0\",\"address_1\":\"123\",\"address_2\":\"\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-04-28 09:56:02');
INSERT INTO `oc_session` VALUES ('6ab355b16c69d97ee4d7e5e01b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 05:07:26');
INSERT INTO `oc_session` VALUES ('6ad75b718eb62627f13115b0b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 08:09:18');
INSERT INTO `oc_session` VALUES ('6ad852b9c408f0d1c49b90f272', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 10:23:10');
INSERT INTO `oc_session` VALUES ('6ae54bf1d844a4119f0fa3fb0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 01:38:47');
INSERT INTO `oc_session` VALUES ('6b0885079f35447ab3a18144fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 07:16:17');
INSERT INTO `oc_session` VALUES ('6b3ad4c900df85e14713d6e2ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 07:59:09');
INSERT INTO `oc_session` VALUES ('6bb3414425fee2f2ce7a07fb4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-17 08:24:48');
INSERT INTO `oc_session` VALUES ('6bd35ea04cc7d138f9b7234760', '{\"user_id\":\"1\",\"user_token\":\"eawvEyfjcg6x6tme9iyK0fhzzdWQB3LK\",\"language\":\"en-gb\",\"currency\":\"GBP\"}', '2020-06-28 08:51:53');
INSERT INTO `oc_session` VALUES ('6c196af122c760b6925cfcaf40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-02 02:55:20');
INSERT INTO `oc_session` VALUES ('6c3294f225fb44b1dc52a8bb3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 02:53:52');
INSERT INTO `oc_session` VALUES ('6d6a1380b9d81e778c45c3665f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-08 06:13:09');
INSERT INTO `oc_session` VALUES ('6dacc2578929749a39f745a0ea', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"fjI7ptTEBgFT153JYzMJHShL8b97RPSu\"}', '2020-01-03 10:22:36');
INSERT INTO `oc_session` VALUES ('6e4f2612f1a7a8e19cc0f7be77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 01:11:34');
INSERT INTO `oc_session` VALUES ('6e68a2b19495dd1b0e0b795116', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-19 09:14:43');
INSERT INTO `oc_session` VALUES ('6ec936e3d4482f74f39ef058ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 01:53:25');
INSERT INTO `oc_session` VALUES ('7009c58c925ddc81c8d7a789ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 01:40:12');
INSERT INTO `oc_session` VALUES ('70ee7e44752cf6f9895c980ab2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 10:03:13');
INSERT INTO `oc_session` VALUES ('71050c582b39d7363de6ecd78e', '{\"user_id\":\"1\",\"user_token\":\"Pht6taqmxElL6JALdx1wI7zaEAQmkjiu\",\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"42\"],\"compare\":[\"42\",\"33\"]}', '2020-01-02 11:36:36');
INSERT INTO `oc_session` VALUES ('71620cd364b4ac140eec895f97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 07:23:18');
INSERT INTO `oc_session` VALUES ('71a4e7e624f6a8a47d12a8e030', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 03:14:35');
INSERT INTO `oc_session` VALUES ('71e0c58afeac51e537569ab303', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:30');
INSERT INTO `oc_session` VALUES ('73a59d7328e3283f66d50fcf7c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-26 09:03:14');
INSERT INTO `oc_session` VALUES ('73c2ef94c54c93d44034ab2563', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 10:09:20');
INSERT INTO `oc_session` VALUES ('74d2e710bd952cc3be42286fc0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 03:13:27');
INSERT INTO `oc_session` VALUES ('751f38819a1b31fb79c574eca7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 03:51:15');
INSERT INTO `oc_session` VALUES ('75e7dacbfac9a933b84ca37eaf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-07 11:05:17');
INSERT INTO `oc_session` VALUES ('7617e16d5de456051769932186', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 01:43:14');
INSERT INTO `oc_session` VALUES ('767abaf9705027d2f2e0693eec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"compare\":[\"49\"]}', '2020-07-08 08:29:52');
INSERT INTO `oc_session` VALUES ('76c0ed41dc598628f31136c178', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-14 07:20:29');
INSERT INTO `oc_session` VALUES ('76d4e01e85627f9bd0656afe53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 05:58:26');
INSERT INTO `oc_session` VALUES ('76d885bfc97b49bf06afd634df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 08:26:50');
INSERT INTO `oc_session` VALUES ('76fbaa56e4a89384e1e7dd826c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-29 08:22:53');
INSERT INTO `oc_session` VALUES ('7731ecd1fc9e7371b65df727e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-28 08:30:46');
INSERT INTO `oc_session` VALUES ('78012b08987d8b5f653fd30d2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 07:01:46');
INSERT INTO `oc_session` VALUES ('78a1de2602dce50c6ace00446e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-06 09:59:38');
INSERT INTO `oc_session` VALUES ('79e5a869ca4c073bd42b652403', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-11 07:27:49');
INSERT INTO `oc_session` VALUES ('7aa3f071061a893c6fb50641cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-03 06:17:22');
INSERT INTO `oc_session` VALUES ('7aff16664b18d60752678aa469', '{\"language\":\"en-gb\",\"currency\":\"GBP\"}', '2020-07-03 07:42:08');
INSERT INTO `oc_session` VALUES ('7b05a29e4ca5fab99115032cf3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 02:12:26');
INSERT INTO `oc_session` VALUES ('7b290cd922b562bee5e14132f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 02:23:51');
INSERT INTO `oc_session` VALUES ('7b93a1b7fab9b3b81eb50c6c9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-17 08:17:47');
INSERT INTO `oc_session` VALUES ('7c591bc25f61b6f1ee1adc251e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 01:57:33');
INSERT INTO `oc_session` VALUES ('7c8bc585a928839964506d6820', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 08:30:58');
INSERT INTO `oc_session` VALUES ('7ce97f43e85ff20757a03112ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 08:26:50');
INSERT INTO `oc_session` VALUES ('7d11898dd23b59549e0cf161c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:27');
INSERT INTO `oc_session` VALUES ('7d2157dae5a28b4b39a86bc0cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-27 07:01:23');
INSERT INTO `oc_session` VALUES ('7d994b2c7161582942810030ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 09:25:34');
INSERT INTO `oc_session` VALUES ('7e1546973fa14a7eb5da753547', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:48:39');
INSERT INTO `oc_session` VALUES ('7eafcdc5168ffdb63ff96dbbd7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"CtVklT6GEhoiNq1bRebada25f7Ab0YK5\",\"wishlist\":[\"42\"]}', '2020-04-15 08:28:37');
INSERT INTO `oc_session` VALUES ('7f3c3ad9aa2c15376f27042871', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 01:36:34');
INSERT INTO `oc_session` VALUES ('7f660865e565f7a87ae13071a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-02 08:36:23');
INSERT INTO `oc_session` VALUES ('80621b14099577ccfe15b0bfd9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime\",\"lastname\":\"Tom\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f0\",\"address_1\":\"123\",\"address_2\":\"\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-05-06 09:42:39');
INSERT INTO `oc_session` VALUES ('807f00b371bc9b6269e8e70ff0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:37:54');
INSERT INTO `oc_session` VALUES ('8218a373701f695184d33a3264', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 09:19:44');
INSERT INTO `oc_session` VALUES ('822d663aafb2d1931e40094270', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 08:22:55');
INSERT INTO `oc_session` VALUES ('823762e3a5bf9bcfe0ac4d1255', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime\",\"lastname\":\"Tom\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f0\",\"address_1\":\"123\",\"address_2\":\"\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Trime\",\"lastname\":\"Tom\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f0\",\"address_1\":\"123\",\"address_2\":\"\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"},\"comment\":\"agadsfegage\",\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"order_id\":1}', '2020-04-29 08:59:14');
INSERT INTO `oc_session` VALUES ('824eb87c3d0bfd2fd68a51616c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 10:02:52');
INSERT INTO `oc_session` VALUES ('837b4e6dd7825c692ced48ab0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-29 09:58:21');
INSERT INTO `oc_session` VALUES ('83e9adcb0eda0d028816db75d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-29 08:22:55');
INSERT INTO `oc_session` VALUES ('840e99748f380de9317b12260a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-05 05:03:46');
INSERT INTO `oc_session` VALUES ('841f62d3dccfa78c80f40e3f84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 08:04:00');
INSERT INTO `oc_session` VALUES ('845031fba7421d697759badbb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-06 04:57:25');
INSERT INTO `oc_session` VALUES ('847cf986080204fa43bd5df225', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 01:43:30');
INSERT INTO `oc_session` VALUES ('84a5e35679bc7a9dd754002768', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-27 09:50:30');
INSERT INTO `oc_session` VALUES ('84e7c8d486c3b7bfbe386f30ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 03:27:24');
INSERT INTO `oc_session` VALUES ('852c5037573af88445ee506a89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 10:20:29');
INSERT INTO `oc_session` VALUES ('8540f2ecef0d3601a5619991d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-30 10:10:40');
INSERT INTO `oc_session` VALUES ('8590bc6e8805c1e6d72358f3f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-17 10:13:02');
INSERT INTO `oc_session` VALUES ('8644ed19d6e6f6482915ec627d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-04 07:12:16');
INSERT INTO `oc_session` VALUES ('8686fc3808050da56f843ea0f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 09:21:19');
INSERT INTO `oc_session` VALUES ('86adf418df58df178aed090662', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:48:46');
INSERT INTO `oc_session` VALUES ('86cf908c0b805f076209765a2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 10:44:32');
INSERT INTO `oc_session` VALUES ('86f1eb2a245c27f338c88b3953', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 01:41:47');
INSERT INTO `oc_session` VALUES ('87262db87db01015cad386dc7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-29 07:48:50');
INSERT INTO `oc_session` VALUES ('8743a1b1e28cad741cd43aa7cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 04:32:29');
INSERT INTO `oc_session` VALUES ('87631dbaa7f2982ca87fe5b4e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-06 11:20:17');
INSERT INTO `oc_session` VALUES ('8772169b1fb1d5bb723b15040b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-11 01:10:07');
INSERT INTO `oc_session` VALUES ('88471be6d7c21187bb5eefaafc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-14 07:13:30');
INSERT INTO `oc_session` VALUES ('889079fb6fbb213483d6233088', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-30 10:07:20');
INSERT INTO `oc_session` VALUES ('89395d05151da752647747418c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-08 04:04:22');
INSERT INTO `oc_session` VALUES ('89606676b9a94bbf384e24bbcf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-29 05:10:29');
INSERT INTO `oc_session` VALUES ('899f2b4e779697871d28ee9ce9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 02:20:34');
INSERT INTO `oc_session` VALUES ('89cfb00950c0bfd61fea7c45c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 02:48:12');
INSERT INTO `oc_session` VALUES ('89e4875e2a0bb3f29db553c8fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-09 11:03:18');
INSERT INTO `oc_session` VALUES ('8a303069a11b25c425a7ace0b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 09:34:07');
INSERT INTO `oc_session` VALUES ('8a908b062f85cf392317e8e485', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 06:37:16');
INSERT INTO `oc_session` VALUES ('8a931069beb6f8cb7b4f335c1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 03:29:06');
INSERT INTO `oc_session` VALUES ('8b0af53cc1aceafa9dc433f65f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 08:31:00');
INSERT INTO `oc_session` VALUES ('8b7ac8fc2a34326ab72e284f10', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-08 03:23:36');
INSERT INTO `oc_session` VALUES ('8b7ff3d0b1573191ef360c4647', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":false,\"vouchers\":[]}', '2020-04-21 07:22:43');
INSERT INTO `oc_session` VALUES ('8ca9ef56a569db8c89c1f1d23f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-19 06:36:28');
INSERT INTO `oc_session` VALUES ('8cb62dabe7ca7c01a3998e809e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-04 07:49:26');
INSERT INTO `oc_session` VALUES ('8cd61338fe114e961d49a6f93d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 08:46:38');
INSERT INTO `oc_session` VALUES ('8cf4fcd83e7a2bffbb4b94f01d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-27 09:58:20');
INSERT INTO `oc_session` VALUES ('8d8e1960f5a5b6f7d4ce27d817', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 05:25:18');
INSERT INTO `oc_session` VALUES ('8dfeb4a656362c830ce6578ae2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 10:03:05');
INSERT INTO `oc_session` VALUES ('8e14be8f844b2b4cbe205ced0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-12 08:20:43');
INSERT INTO `oc_session` VALUES ('8e1d30337059975a4959f7cb6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 02:23:07');
INSERT INTO `oc_session` VALUES ('8e42af728cde6ba876d445aa4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-11 02:09:17');
INSERT INTO `oc_session` VALUES ('8ee960a2c9d2cd4ec1144f9014', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 08:07:46');
INSERT INTO `oc_session` VALUES ('8f09f4af0bb5ae41b2ab27470b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 08:04:01');
INSERT INTO `oc_session` VALUES ('8fb7d9f51f1c3895ae4ec52bc4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 03:48:15');
INSERT INTO `oc_session` VALUES ('8fc73e84fdc2a34ef80f7d313c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 07:15:00');
INSERT INTO `oc_session` VALUES ('8fe137189e3350a97489aac9fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 05:18:19');
INSERT INTO `oc_session` VALUES ('9051926ebb4cc2c2f94fb396fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-10 05:58:03');
INSERT INTO `oc_session` VALUES ('916835f9aa7b28774a8b518dd0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 04:24:05');
INSERT INTO `oc_session` VALUES ('91c64751c41b5ce7dca7f8a6aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 05:55:18');
INSERT INTO `oc_session` VALUES ('91d6c94c1b697768a1fd8b74f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-04 05:19:01');
INSERT INTO `oc_session` VALUES ('920e3a0a5de28ce0004dff692d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"17oDyqU9DKo9bwHcmMcFTqhQlgrY6R63\"}', '2020-04-24 09:12:26');
INSERT INTO `oc_session` VALUES ('925ab9c884f07416abf212da2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 07:08:21');
INSERT INTO `oc_session` VALUES ('9267eb8e84d8a094f21138fb28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:51:12');
INSERT INTO `oc_session` VALUES ('92a2ad6d05eded3e3ec5218a7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-29 02:48:03');
INSERT INTO `oc_session` VALUES ('92a6fdc7c3ac80e0947ea209e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 03:37:54');
INSERT INTO `oc_session` VALUES ('930c52b809cefd2bd53fdaa756', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 08:37:00');
INSERT INTO `oc_session` VALUES ('9320d7a96e3f77bf1229128ff8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 06:10:04');
INSERT INTO `oc_session` VALUES ('9374862203a447052518294205', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 11:25:18');
INSERT INTO `oc_session` VALUES ('938077927862ffdd0a3eba1159', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 04:59:32');
INSERT INTO `oc_session` VALUES ('94769aaa2850b3cc67787820b8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tSKBgoA6ZdHhR9wR2S168aqNJmEqJ1I8\"}', '2020-04-15 09:42:29');
INSERT INTO `oc_session` VALUES ('94b0a5e596621578ab0687f017', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 06:05:59');
INSERT INTO `oc_session` VALUES ('94c323e49e57a046187641b1bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:37:49');
INSERT INTO `oc_session` VALUES ('951f2c144557133e7e5a906b59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-29 04:38:03');
INSERT INTO `oc_session` VALUES ('95719ce705d98be5f2a2976e3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 07:56:37');
INSERT INTO `oc_session` VALUES ('95bddc64a9db94edf26e47f811', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-03 09:11:59');
INSERT INTO `oc_session` VALUES ('95e18422609150d5cdfc0bdf30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 05:02:56');
INSERT INTO `oc_session` VALUES ('978b4c98d420fa358789ce74a8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"1bjHkMHrxPjsvtbr0FzPv7hVTVFkWB5Q\"}', '2020-04-15 03:40:47');
INSERT INTO `oc_session` VALUES ('9868ec29ed5a202de54aaeb030', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 09:28:36');
INSERT INTO `oc_session` VALUES ('98a92678e0fe2f02467fb5708e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 06:23:41');
INSERT INTO `oc_session` VALUES ('99ba05869756c93a6e0c6a5451', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 10:24:37');
INSERT INTO `oc_session` VALUES ('99c365b033e24153450f19e9a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 02:14:47');
INSERT INTO `oc_session` VALUES ('9a1d1d32633907a8d705d845aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 03:09:37');
INSERT INTO `oc_session` VALUES ('9a51e38ee4e758d5d13b92c59d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 11:04:59');
INSERT INTO `oc_session` VALUES ('9a92af887506ac946a9946bc6a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 09:19:11');
INSERT INTO `oc_session` VALUES ('9ab04b55f2a5421b82050238e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:45:10');
INSERT INTO `oc_session` VALUES ('9b6a22147cbc44e53c3b94cf6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-06 01:30:38');
INSERT INTO `oc_session` VALUES ('9b8b8135cd450f0189cffa0943', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 03:46:08');
INSERT INTO `oc_session` VALUES ('9c11a260556d91fd7943d24d03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-29 07:56:03');
INSERT INTO `oc_session` VALUES ('9c3ce2a752e0eccd0a68238637', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-06 11:11:36');
INSERT INTO `oc_session` VALUES ('9d96bf0f962ebad59586c76a18', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-27 07:40:21');
INSERT INTO `oc_session` VALUES ('9da1e07cace96a059629139d4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 05:09:21');
INSERT INTO `oc_session` VALUES ('9dd95a5a62843d0f7b493566dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 08:12:29');
INSERT INTO `oc_session` VALUES ('9e596a5750147a4f531640fbf4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 03:30:11');
INSERT INTO `oc_session` VALUES ('9e66aa2f29f3ba36b869638902', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:37:46');
INSERT INTO `oc_session` VALUES ('9ed1e4fa4598acfe73323543e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 06:56:14');
INSERT INTO `oc_session` VALUES ('a0543e9562d8a18d0f8896cd80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-07 11:05:17');
INSERT INTO `oc_session` VALUES ('a0cd2048d4f6347b5255ed1ada', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-04 07:55:44');
INSERT INTO `oc_session` VALUES ('a16f6e8ce9befc9f1c5d1b8e2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-19 09:11:09');
INSERT INTO `oc_session` VALUES ('a1f753767b0230bd09a87b6268', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 06:38:14');
INSERT INTO `oc_session` VALUES ('a2424847757e7e8d85e9266723', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"C0q57Kyh2om7ql7yomL98mdugjHLAh2u\",\"wishlist\":[],\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime\",\"lastname\":\"Tom\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f0\",\"address_1\":\"123\",\"address_2\":\"\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-05-11 09:14:45');
INSERT INTO `oc_session` VALUES ('a269838591e31139fddf96d241', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\"}', '2020-07-06 07:08:55');
INSERT INTO `oc_session` VALUES ('a2be2b65c5587b90f0a8e9be6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 08:50:48');
INSERT INTO `oc_session` VALUES ('a2e5761399a975543dd4fd089c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-22 10:53:23');
INSERT INTO `oc_session` VALUES ('a35dcef273b921c8d474da7a14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[],\"compare\":[\"30\",\"42\"],\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime\",\"lastname\":\"Tom\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f0\",\"address_1\":\"123\",\"address_2\":\"\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-04-26 09:57:44');
INSERT INTO `oc_session` VALUES ('a3ee8c7e8d18a84954702f9242', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 05:21:01');
INSERT INTO `oc_session` VALUES ('a412225c89e04a104021f7b3c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 08:46:04');
INSERT INTO `oc_session` VALUES ('a463e3a9d02d5869f0a96a1e08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-12 08:49:33');
INSERT INTO `oc_session` VALUES ('a512537a15b6ce575c92db621a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:23');
INSERT INTO `oc_session` VALUES ('a527924fc9d101ad2ea5c4c7f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 03:33:58');
INSERT INTO `oc_session` VALUES ('a570bf54f1981e0dd261319760', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 09:26:47');
INSERT INTO `oc_session` VALUES ('a5732a48e78b2f84c56d0a9272', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 11:03:54');
INSERT INTO `oc_session` VALUES ('a68200db0bf1c72699b20082e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 12:32:00');
INSERT INTO `oc_session` VALUES ('a72b650703903b35ee30f2ba98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-01 08:45:33');
INSERT INTO `oc_session` VALUES ('a7d4baac2ad39ccf12dd32c639', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-09 08:10:14');
INSERT INTO `oc_session` VALUES ('a8265cfba8e9ba6c72bcbb9297', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-05 02:42:40');
INSERT INTO `oc_session` VALUES ('a85821a055625eb2033e04aae3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"n9igKrcwvgaulLeiWybj9AtHyG2TfBfC\",\"compare\":[],\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"},\"comment\":\"\\u560e\\u560e\\u7b2c\\u4e09\\u65b9\\u5341\\u591a\\u4e2a\\u6253\\u7b97 \",\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"order_id\":4}', '2020-08-05 12:38:47');
INSERT INTO `oc_session` VALUES ('a85db33c17583f6101c8e045db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-08 07:59:06');
INSERT INTO `oc_session` VALUES ('a8a92b1ad8a87727637dc183fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-12 10:31:56');
INSERT INTO `oc_session` VALUES ('a8f394cbffc1245ee9dcc5e311', '{\"language\":\"en-gb\",\"currency\":\"GBP\"}', '2020-06-19 08:48:37');
INSERT INTO `oc_session` VALUES ('a93391e78e044690727f4f6d85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-03 07:25:34');
INSERT INTO `oc_session` VALUES ('a997d5d22512d32969509b0aeb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:48:43');
INSERT INTO `oc_session` VALUES ('a9b0779f5ff0a5bb941e8e5f67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 09:09:59');
INSERT INTO `oc_session` VALUES ('aa89f562e86b1a0712119f3964', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 06:30:21');
INSERT INTO `oc_session` VALUES ('aaec1e60e968401a00e87012fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 04:32:28');
INSERT INTO `oc_session` VALUES ('aafc01da890c6f639a426038f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-29 04:01:45');
INSERT INTO `oc_session` VALUES ('ab0b164cf65d954e24b80cb514', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-04 07:36:24');
INSERT INTO `oc_session` VALUES ('ab75a3a2c5c8eceeb0699e35c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 03:30:10');
INSERT INTO `oc_session` VALUES ('ac0319c6d9d530de94ac772532', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 09:29:20');
INSERT INTO `oc_session` VALUES ('ac42a2b74042daae7b9d5b8d3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 01:11:03');
INSERT INTO `oc_session` VALUES ('ac50d0ca76f6039192a683b77a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-29 08:50:07');
INSERT INTO `oc_session` VALUES ('ac69a3ef30e1f63ab47d86d2a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-11 08:45:32');
INSERT INTO `oc_session` VALUES ('ad1170c65a55944986f41729ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 10:43:23');
INSERT INTO `oc_session` VALUES ('aed00c7fcb51fad94160ce0f16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-20 02:28:17');
INSERT INTO `oc_session` VALUES ('af161b5080ec3873c421ebb773', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:48:44');
INSERT INTO `oc_session` VALUES ('af764062dc4d56cd8bef54bba8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-03 03:03:49');
INSERT INTO `oc_session` VALUES ('af9e3eaf95574b96cc7965e37c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:59:59');
INSERT INTO `oc_session` VALUES ('b07d06595f830d158fa3715aef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 08:50:19');
INSERT INTO `oc_session` VALUES ('b0bbf569d5d1a127741c284b0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-03 02:15:52');
INSERT INTO `oc_session` VALUES ('b0e2213ab37600f22aa97427c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-08 05:24:03');
INSERT INTO `oc_session` VALUES ('b1d5e33ad27af95301de47cbd6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 02:43:13');
INSERT INTO `oc_session` VALUES ('b20893f13df8bf8770fc4d555e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-14 07:12:42');
INSERT INTO `oc_session` VALUES ('b2252f61b24f3833dd6f1b9723', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 09:59:57');
INSERT INTO `oc_session` VALUES ('b23671be392431d8f7b6926435', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2020-07-23 07:34:32');
INSERT INTO `oc_session` VALUES ('b24f02b2500d3bd7e4d3f1846e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 11:38:44');
INSERT INTO `oc_session` VALUES ('b2d88b7a3fc9feffcfd200c4a8', 'false', '2020-06-11 01:46:54');
INSERT INTO `oc_session` VALUES ('b47da628c45e982bb8899b96d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 10:03:12');
INSERT INTO `oc_session` VALUES ('b485ffdb7a621469b1f7e61bba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-24 08:04:01');
INSERT INTO `oc_session` VALUES ('b492e01f0aaa50643c3f5fdf07', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-03 08:32:51');
INSERT INTO `oc_session` VALUES ('b4a9806796cdfc31184e727724', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 08:17:27');
INSERT INTO `oc_session` VALUES ('b4d2eef8203805df425da348af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 02:48:09');
INSERT INTO `oc_session` VALUES ('b4e4bb3cf1ecaaad62815c60f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-22 05:27:11');
INSERT INTO `oc_session` VALUES ('b583a69e293f8a380989aa7981', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 09:09:14');
INSERT INTO `oc_session` VALUES ('b5c97f6d664bb8eaea3dde5e22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-22 08:43:21');
INSERT INTO `oc_session` VALUES ('b601e1eb8661c325cb66f3921d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-22 06:56:38');
INSERT INTO `oc_session` VALUES ('b6397a3fcb48a4b247eb37ab8a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-17 09:48:22');
INSERT INTO `oc_session` VALUES ('b6b29fa6ad2c4a62e3a95c55fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"59JHgszPf9ceEDR5DDVdahM5X8xYz4jL\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-07-10 09:40:23');
INSERT INTO `oc_session` VALUES ('b7a7217c37b76c7f8d6a31bc7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 08:46:37');
INSERT INTO `oc_session` VALUES ('b7fa35b16c028e6b016728d964', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-03 01:07:20');
INSERT INTO `oc_session` VALUES ('b8364d4464c97b2f8dbe438950', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-08 08:48:20');
INSERT INTO `oc_session` VALUES ('b83ef92ce35704e2112d2d4db3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 07:25:15');
INSERT INTO `oc_session` VALUES ('b88dffd5ae2929d2ad53b86bab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-27 10:20:34');
INSERT INTO `oc_session` VALUES ('b89d7c7e05c8b0263a3ee96651', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7rMAzLpmdbJoQM4JNgCMRqx19cL9n2e0\"}', '2019-12-30 11:19:04');
INSERT INTO `oc_session` VALUES ('b8d0eea106670d5a46252e8865', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 08:16:55');
INSERT INTO `oc_session` VALUES ('b8de65fe0ac16c1102a5eeba12', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-11 05:01:46');
INSERT INTO `oc_session` VALUES ('b8e9a2b7c57e4067e4b87c4692', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-14 10:14:28');
INSERT INTO `oc_session` VALUES ('b90fb04da7ad77af57155342d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:31');
INSERT INTO `oc_session` VALUES ('b964570618fadf74d3977a8f89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 10:02:01');
INSERT INTO `oc_session` VALUES ('b97600372949a6d1b453a54108', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 09:48:43');
INSERT INTO `oc_session` VALUES ('ba889a8c0e56be03a1e50a01c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 02:57:04');
INSERT INTO `oc_session` VALUES ('bbb9f3c4c1ec2de6757b5b8fee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-14 03:17:22');
INSERT INTO `oc_session` VALUES ('bc2374ae200f9721133cb69eae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 02:55:50');
INSERT INTO `oc_session` VALUES ('bcf765d313e08298ab3f031a45', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4P87rjvNlsuu1RS7hbYxs4KPoBz6XUoE\"}', '2020-07-28 11:20:54');
INSERT INTO `oc_session` VALUES ('bd8e5dd5d94aad685d40ec7ae6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 04:37:26');
INSERT INTO `oc_session` VALUES ('bdbed0281cab8e1b0c578f02c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 03:08:30');
INSERT INTO `oc_session` VALUES ('bdf060ee400a52b307bca442ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-05 08:41:10');
INSERT INTO `oc_session` VALUES ('bf0474975de3f207054a0488bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-12 06:26:59');
INSERT INTO `oc_session` VALUES ('bf2164671793cb099fa7f412a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 10:03:12');
INSERT INTO `oc_session` VALUES ('bf90876d471a74724a7542acb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-03 08:29:27');
INSERT INTO `oc_session` VALUES ('bf988511a875e37f6eb01ef325', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 08:58:18');
INSERT INTO `oc_session` VALUES ('c023fd69bb069f152cb7a6db01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 03:49:22');
INSERT INTO `oc_session` VALUES ('c0d40e4d763cc531815b874dd0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-29 08:22:54');
INSERT INTO `oc_session` VALUES ('c1a3faa35ddb810640e6feca0e', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-07-27 09:58:28');
INSERT INTO `oc_session` VALUES ('c1c68d8cdd2152ec6a2b8414f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:23');
INSERT INTO `oc_session` VALUES ('c2059ced4a163f75662fa8a42b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 05:05:56');
INSERT INTO `oc_session` VALUES ('c23516c35a15404384e6cc3ba9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-10 09:47:03');
INSERT INTO `oc_session` VALUES ('c2b1f1b01447eb7aa613f6f373', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-29 09:43:45');
INSERT INTO `oc_session` VALUES ('c2d1ce6f1072e478250e37e793', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"i1zFLvA3zuYNa4QFNbfhW1fiAtMmemSw\"}', '2020-03-30 02:09:00');
INSERT INTO `oc_session` VALUES ('c311b3a1a8585a338770bd09c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:45:19');
INSERT INTO `oc_session` VALUES ('c334de99219c879728b061dafb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 02:50:21');
INSERT INTO `oc_session` VALUES ('c337d3c106d593a31101d08d42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-17 06:50:42');
INSERT INTO `oc_session` VALUES ('c39f0dc7bebca4799551ee0d3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-01 01:33:23');
INSERT INTO `oc_session` VALUES ('c3dbc30037aa633142aaadb64c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-05 08:57:58');
INSERT INTO `oc_session` VALUES ('c432d4317ab798bc794fc421e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 09:11:20');
INSERT INTO `oc_session` VALUES ('c4b8b8310e9c185e841c985f32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-24 09:44:45');
INSERT INTO `oc_session` VALUES ('c5aaa3f567f8662bf6404af849', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-08 05:54:43');
INSERT INTO `oc_session` VALUES ('c5c6990b89b013c142d78feff5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 03:03:55');
INSERT INTO `oc_session` VALUES ('c5d561e2c45e8680b043ac873a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 02:27:09');
INSERT INTO `oc_session` VALUES ('c601f1efa1bf9408e7dc810964', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-09 04:53:04');
INSERT INTO `oc_session` VALUES ('c63dcdbdd4b48ac400fba79787', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-04 06:38:15');
INSERT INTO `oc_session` VALUES ('c7512924148211cf67597f0b50', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 09:32:55');
INSERT INTO `oc_session` VALUES ('c80fadef8d13b4d8f72c3eeba1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-27 08:38:11');
INSERT INTO `oc_session` VALUES ('c947f2ac42306f3ea00aa2260a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:37:47');
INSERT INTO `oc_session` VALUES ('c9cca39dd183e5d8e93b3e6c1a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime\",\"lastname\":\"Tom\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f0\",\"address_1\":\"123\",\"address_2\":\"\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Trime\",\"lastname\":\"Tom\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f0\",\"address_1\":\"123\",\"address_2\":\"\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"user_id\":\"1\",\"user_token\":\"QqZVfsWZi93UnU9ZX68I0rrpcx7t88Mq\"}', '2020-04-30 02:49:33');
INSERT INTO `oc_session` VALUES ('cba824d415463ca44bdcd118dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-14 09:50:32');
INSERT INTO `oc_session` VALUES ('cbaa70db5c5ca27af259b0e875', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 07:08:21');
INSERT INTO `oc_session` VALUES ('cbd42ad451c55e68107c6b011e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-08 07:43:49');
INSERT INTO `oc_session` VALUES ('cbe8d7995cd338a43a19358503', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-04 06:38:20');
INSERT INTO `oc_session` VALUES ('cc0d915a666e684d5f068e6513', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-22 10:34:13');
INSERT INTO `oc_session` VALUES ('cc6844d7eeea0b9605daf58bc1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-09 09:43:00');
INSERT INTO `oc_session` VALUES ('cc748200b2cb0f68a58b1792e7', 'false', '2020-04-23 06:51:14');
INSERT INTO `oc_session` VALUES ('cd0fed9e9860c1d1547081cea7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 06:02:23');
INSERT INTO `oc_session` VALUES ('cd758d2668b4d5cae03bae1142', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 09:37:53');
INSERT INTO `oc_session` VALUES ('cda645da8aed1b9644b6a62575', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:46:51');
INSERT INTO `oc_session` VALUES ('ce3bc4bb111320ae3bf3e6d9c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-05 04:24:49');
INSERT INTO `oc_session` VALUES ('ce56eb71f4dac9aeedba26ef2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 08:16:54');
INSERT INTO `oc_session` VALUES ('cf12d4b83f94225db6426219dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 10:20:29');
INSERT INTO `oc_session` VALUES ('cf49a7e4b947a6e8497b7649b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 04:33:56');
INSERT INTO `oc_session` VALUES ('cf5b35d7a2b3cb009de3f6f2ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-07 02:16:17');
INSERT INTO `oc_session` VALUES ('cf5e3da6768f3e1f1a74666c73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-28 05:15:13');
INSERT INTO `oc_session` VALUES ('cf7bbd9c7fe025e39507c7c802', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 10:36:32');
INSERT INTO `oc_session` VALUES ('d0e452d5d1c40d3a6d2d1180c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:45:08');
INSERT INTO `oc_session` VALUES ('d1520e5d043daf75cfe55a3860', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-06 11:11:36');
INSERT INTO `oc_session` VALUES ('d206c6376b9a681ab4bacc8246', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-08 04:01:08');
INSERT INTO `oc_session` VALUES ('d228b3b023a1ec6f2675572850', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-03 03:00:02');
INSERT INTO `oc_session` VALUES ('d289c3e059bab8eb5683974860', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:31');
INSERT INTO `oc_session` VALUES ('d4bbe9098ae3cd9a0c15f7c1f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:48:28');
INSERT INTO `oc_session` VALUES ('d4bd399d7ba6f8f0204e41f9e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 03:11:52');
INSERT INTO `oc_session` VALUES ('d4dff33cba3c24010c6d3bcce0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 09:15:04');
INSERT INTO `oc_session` VALUES ('d518cc9508b72e49e822b6fae0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:48:27');
INSERT INTO `oc_session` VALUES ('d5fbe5305e8361b1173088ed48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:45:21');
INSERT INTO `oc_session` VALUES ('d72ebee2d2eeb51bff078ff638', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 09:32:55');
INSERT INTO `oc_session` VALUES ('d76a437b3d23be31d5ba617df9', '{\"language\":\"en-gb\",\"currency\":\"GBP\"}', '2020-06-16 02:34:43');
INSERT INTO `oc_session` VALUES ('d80d1741ef6c50a11ab83bf224', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 01:45:20');
INSERT INTO `oc_session` VALUES ('d86ffc38b30b88e25a4388ef91', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-29 05:40:12');
INSERT INTO `oc_session` VALUES ('d87588505ca98b9df1acaa68cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-04 03:52:15');
INSERT INTO `oc_session` VALUES ('d92ef2c07d25fc7ae8ea20dfb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-20 03:55:55');
INSERT INTO `oc_session` VALUES ('d993a09a408666c993f9d124ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-06 05:18:27');
INSERT INTO `oc_session` VALUES ('d9cc8684d8f87722cb6c0d5f94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 06:19:23');
INSERT INTO `oc_session` VALUES ('da281da378aa2e4be7dc112c42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-22 01:03:13');
INSERT INTO `oc_session` VALUES ('dc2c56d76e4aa43f17031df906', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:18:16');
INSERT INTO `oc_session` VALUES ('dc5bdad98f920357a9a63ab523', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 08:46:38');
INSERT INTO `oc_session` VALUES ('dc7df79ce0ebbaf18cdee8f72d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PTBjquTPmgDXMkeyW4TSzLCZTZfnxFTd\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-08-04 09:55:53');
INSERT INTO `oc_session` VALUES ('dcc7ed984836856902c81060f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 01:53:06');
INSERT INTO `oc_session` VALUES ('dd8f2bf2df3474413003d8cfb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-06 12:01:39');
INSERT INTO `oc_session` VALUES ('dddc8a1e15fe74dc2eb7ea054e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:37:53');
INSERT INTO `oc_session` VALUES ('de019a6bd30e9dbbf31514aa38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-02 05:39:54');
INSERT INTO `oc_session` VALUES ('de3d75c9c58e3cdb31102a047e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 04:37:53');
INSERT INTO `oc_session` VALUES ('deaeb6c88a650adef6ef0d5c4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-03 03:30:27');
INSERT INTO `oc_session` VALUES ('dec4f852bc63262f2959174dc4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-04 05:29:16');
INSERT INTO `oc_session` VALUES ('dec65228cccd4a1b6fa3bf278b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 09:29:23');
INSERT INTO `oc_session` VALUES ('df6ed10f7ea733659d26859dda', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-04 04:20:02');
INSERT INTO `oc_session` VALUES ('dfa27e8e9ad31f3949af01bbfd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-08 04:11:04');
INSERT INTO `oc_session` VALUES ('e01a4e99665d7eafd027ce3924', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-29 07:13:16');
INSERT INTO `oc_session` VALUES ('e02d08b92aa9f7d1662bcff28f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 11:11:24');
INSERT INTO `oc_session` VALUES ('e043d1ee0469dc3b6fc499d954', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-04 08:32:35');
INSERT INTO `oc_session` VALUES ('e0544060cc43d3cf9c36ba6d7b', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"DDOEqyODj4PvIcPblRqX9RWQKZmNgNwX\"}', '2020-06-22 08:45:56');
INSERT INTO `oc_session` VALUES ('e0940cf144ce358ab13faa1043', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-27 03:33:56');
INSERT INTO `oc_session` VALUES ('e0a4108624cc865b414787d7e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 10:13:17');
INSERT INTO `oc_session` VALUES ('e0bc4f5c96dd24bf6f8eaf4468', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-10 07:12:38');
INSERT INTO `oc_session` VALUES ('e108b32b92d0bb4fbe0edfa64d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 11:24:53');
INSERT INTO `oc_session` VALUES ('e1398e19cac73843f30cc87cf3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:22');
INSERT INTO `oc_session` VALUES ('e156428669b35c2903ab1eefac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-16 09:04:32');
INSERT INTO `oc_session` VALUES ('e17705aef2296f5ae426164adf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 10:00:36');
INSERT INTO `oc_session` VALUES ('e1b269d42064c85678fa22b470', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-22 06:15:56');
INSERT INTO `oc_session` VALUES ('e212781fbcd3f619e0bc2e38d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 04:44:48');
INSERT INTO `oc_session` VALUES ('e28cafac3283c6be11c1c6e542', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 08:38:03');
INSERT INTO `oc_session` VALUES ('e2b36350f153a54ed3c1d20999', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-17 09:20:45');
INSERT INTO `oc_session` VALUES ('e2ec3dfd6b8882daa45409c68e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"user_id\":\"1\",\"user_token\":\"bLNcJUpMh6Y9YeaXYybkN5E6xuUZYPDH\",\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Trime1\",\"lastname\":\"Tom1\",\"company\":\"\\u4f01\\u4e1a\\u540d\\u79f01\",\"address_1\":\"1231\",\"address_2\":\"2w3\",\"postcode\":\"1154575\",\"city\":\"HZ\",\"zone_id\":\"697\",\"zone\":\"Hubei\",\"zone_code\":\"HU\",\"country_id\":\"44\",\"country\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"custom_field\":null},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"},\"comment\":\"\",\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"order_id\":3,\"compare\":[\"42\",\"30\"]}', '2020-07-06 10:27:16');
INSERT INTO `oc_session` VALUES ('e30cc3a61ccf39ea56e7fb1724', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-03 04:22:33');
INSERT INTO `oc_session` VALUES ('e354661c2a5c6393737202c89f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 01:16:26');
INSERT INTO `oc_session` VALUES ('e365be3b41a30922d06be94e19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 04:38:37');
INSERT INTO `oc_session` VALUES ('e380ccedbb5b0639aff5c48e98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-08 07:18:33');
INSERT INTO `oc_session` VALUES ('e393ce6e4b8e12eb8e4eb156b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:37:50');
INSERT INTO `oc_session` VALUES ('e458ecb96a56fb4f29d37a99d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-29 01:59:29');
INSERT INTO `oc_session` VALUES ('e475bb94e2a6565939d97574e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 09:14:19');
INSERT INTO `oc_session` VALUES ('e47a002ee718807b8bbd1c2bef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 05:04:17');
INSERT INTO `oc_session` VALUES ('e4a52eebbee11f648197170de1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-26 09:29:23');
INSERT INTO `oc_session` VALUES ('e532a0f661c34877ac62c390d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 10:32:18');
INSERT INTO `oc_session` VALUES ('e59e7d691a4ee198bcfa2b94ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-06 09:53:23');
INSERT INTO `oc_session` VALUES ('e66d41af0455c04fcf696da720', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"TflkeXErSo0efd0ThW0q3cU1QMUS3rOi\"}', '2020-08-06 11:11:00');
INSERT INTO `oc_session` VALUES ('e75d9cea20e06fd629d78fcbbc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-12 10:32:00');
INSERT INTO `oc_session` VALUES ('e78ee29feb1e9b44fb6172c686', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 07:01:23');
INSERT INTO `oc_session` VALUES ('e7b9cbb2f665d942bad9d48da0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-03 03:18:36');
INSERT INTO `oc_session` VALUES ('e83e9b078f575fc7f563f72207', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 10:29:08');
INSERT INTO `oc_session` VALUES ('e850127392486eb6dcf5781e98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 09:34:03');
INSERT INTO `oc_session` VALUES ('e87ad89c3f9ec0ee31e30e1940', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-04 06:38:19');
INSERT INTO `oc_session` VALUES ('e88335a44513903aa71a2e9846', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-08 09:47:22');
INSERT INTO `oc_session` VALUES ('e884b181a0ddd89cbd003cfc9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-07 06:32:00');
INSERT INTO `oc_session` VALUES ('e89cd5557dcdb3cb80f68a8225', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-27 06:25:48');
INSERT INTO `oc_session` VALUES ('e927bf7949b6b95634f3e7daa8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-05 09:19:44');
INSERT INTO `oc_session` VALUES ('e9372220191485a89cd420ddfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 07:04:12');
INSERT INTO `oc_session` VALUES ('e93ac40738b0f77b3f6cf3944a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-05 10:15:19');
INSERT INTO `oc_session` VALUES ('e9c3eaf39791194744caa766f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-04 06:30:27');
INSERT INTO `oc_session` VALUES ('ea7f0213d0a20c4d540af49aee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-11 05:39:37');
INSERT INTO `oc_session` VALUES ('ea8e6837c0005e69c8dc8a40a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 06:45:10');
INSERT INTO `oc_session` VALUES ('ebfff72f2e7b04bda906afa201', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-18 06:51:15');
INSERT INTO `oc_session` VALUES ('ec20bf05f36b5b2008aadb0da7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 06:34:48');
INSERT INTO `oc_session` VALUES ('ecdba12cafa2e833751de90b8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 01:32:49');
INSERT INTO `oc_session` VALUES ('ed924666a26af06e673805a570', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 09:25:42');
INSERT INTO `oc_session` VALUES ('edc364b3ac050213207693ad4d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hXlsXfQwkVDjJR0ABUxtShRLJh1w5Bnc\"}', '2020-04-14 10:27:59');
INSERT INTO `oc_session` VALUES ('edf2e36246888d1bc52a811df3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 01:57:33');
INSERT INTO `oc_session` VALUES ('ee6e73dbe404d92121cfa31298', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-31 02:50:15');
INSERT INTO `oc_session` VALUES ('ee767c036aeaecbc7491c5ac63', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-06 11:20:17');
INSERT INTO `oc_session` VALUES ('ef9ade3859ee7844a81ad6c0ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 07:08:21');
INSERT INTO `oc_session` VALUES ('eff1ae4742d44c05af4b8e589c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-23 08:49:22');
INSERT INTO `oc_session` VALUES ('f01bd7fa56d2741d8c07f99ed9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"IVt8sJlhYGhHZAfzLvHtmqdrBv8Z1mI1\"}', '2020-03-05 07:06:13');
INSERT INTO `oc_session` VALUES ('f024aa15e44011337cdf69f7c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-12 08:20:43');
INSERT INTO `oc_session` VALUES ('f044b7133ab600373a4588ea9a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 07:08:23');
INSERT INTO `oc_session` VALUES ('f07b2a59ca5342a6df4c1c1c64', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 04:07:10');
INSERT INTO `oc_session` VALUES ('f19249b4bec1be4a0ccdb24059', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 10:34:35');
INSERT INTO `oc_session` VALUES ('f1f474e4789bb97276a39c45a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-27 07:13:03');
INSERT INTO `oc_session` VALUES ('f274cff11a1f8e97faaab60f18', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-27 08:50:41');
INSERT INTO `oc_session` VALUES ('f275ee99fac8fd4892a19b17fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-23 04:06:07');
INSERT INTO `oc_session` VALUES ('f2d8f91a34c65a32f3e8f19b09', 'false', '2020-06-22 02:37:02');
INSERT INTO `oc_session` VALUES ('f2fd714cf12ac6f8d0526c0051', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-12 10:32:56');
INSERT INTO `oc_session` VALUES ('f334f43b3b51343c1c26100f6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-09 07:06:23');
INSERT INTO `oc_session` VALUES ('f38357a925433c57f3a48e5482', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-27 10:10:11');
INSERT INTO `oc_session` VALUES ('f3aa0f17bca22e8e9bf119301b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-27 09:28:36');
INSERT INTO `oc_session` VALUES ('f3d96899b1103aea6daba855e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-06 04:06:50');
INSERT INTO `oc_session` VALUES ('f3ee505674cc159446fecce688', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-30 09:25:08');
INSERT INTO `oc_session` VALUES ('f482e9078d8984305c5306ead4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 05:01:52');
INSERT INTO `oc_session` VALUES ('f5065e8cc3e18e289aaca0d537', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 06:44:23');
INSERT INTO `oc_session` VALUES ('f5b1ee7c3d7d9480c2405d88b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-06 09:53:19');
INSERT INTO `oc_session` VALUES ('f6449a51d8b245d467f9592c5b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\"}', '2020-07-03 09:49:44');
INSERT INTO `oc_session` VALUES ('f650e0bb63153b9289e845e98e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-08 08:09:46');
INSERT INTO `oc_session` VALUES ('f78c9be6a12f7d8d32ebb55c34', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-04 07:12:16');
INSERT INTO `oc_session` VALUES ('f7b93ed05e05f263504f2d64d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-23 06:48:41');
INSERT INTO `oc_session` VALUES ('f81f9480b6ac1fe2015c92d929', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-05 05:45:37');
INSERT INTO `oc_session` VALUES ('f84e002f8baeb67c91c0a05460', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-06-10 05:49:12');
INSERT INTO `oc_session` VALUES ('f88015179d1fe7ec854837707f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 02:41:33');
INSERT INTO `oc_session` VALUES ('f8b688a40dfe7dc95266e3a9e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-07 04:44:15');
INSERT INTO `oc_session` VALUES ('f97d9c125df193745b6d65d8ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 03:29:25');
INSERT INTO `oc_session` VALUES ('f98c50e70402141038d5c8cfa7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-26 08:10:12');
INSERT INTO `oc_session` VALUES ('f99c423199e0e89bad3df0627b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-12 07:54:42');
INSERT INTO `oc_session` VALUES ('fa400122ba2ddcd30852ec0f9a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-03 09:30:32');
INSERT INTO `oc_session` VALUES ('fa805a90f74e7c38ec41b3d13b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-15 04:46:31');
INSERT INTO `oc_session` VALUES ('fb532575bb06536192596a3f5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 02:43:02');
INSERT INTO `oc_session` VALUES ('fba8a9a13ca289eaa73dc86b20', '{\"api_id\":\"1\"}', '2020-04-27 03:39:33');
INSERT INTO `oc_session` VALUES ('fbe70feb1acc965f525f472549', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-07 07:42:18');
INSERT INTO `oc_session` VALUES ('fc39f6d6cd1ebed7bcd2524632', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-28 08:31:29');
INSERT INTO `oc_session` VALUES ('fcb7d5e9725b79828471a8bfaa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-03 03:43:00');
INSERT INTO `oc_session` VALUES ('fcd1810f17ed47bc4defcd15cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-14 09:25:57');
INSERT INTO `oc_session` VALUES ('fdb386788578ede5e5a26b3557', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-02 10:20:30');
INSERT INTO `oc_session` VALUES ('fdbed9145ccfeeceedb3a5d484', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 07:59:18');
INSERT INTO `oc_session` VALUES ('fe8f90062f25439e1d6ed5851d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"WbL842dgOwx3DuwBioVy9bHsIHZGYOGu\"}', '2020-08-07 08:21:16');
INSERT INTO `oc_session` VALUES ('ff42742e494b7e0d34ef7357a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ihRyk70pVgdOdjciQsMEwGgNuF57X55n\"}', '2020-04-16 09:57:31');
INSERT INTO `oc_session` VALUES ('ff5dc2faf575873ae10109e62b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-06 06:44:03');
INSERT INTO `oc_session` VALUES ('ffd2c1ccf238f5f5da32ae1ba5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-10 06:46:20');

-- ----------------------------
-- Table structure for oc_setting
-- ----------------------------
DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8672 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_setting
-- ----------------------------
INSERT INTO `oc_setting` VALUES ('8670', '0', 'theme_toys', 'theme_toys_image_location_width', '268', '0');
INSERT INTO `oc_setting` VALUES ('7374', '0', 'theme_books', 'theme_books_image_location_height', '50', '0');
INSERT INTO `oc_setting` VALUES ('8639', '0', 'config', 'config_error_filename', 'error.log', '0');
INSERT INTO `oc_setting` VALUES ('8638', '0', 'config', 'config_error_log', '1', '0');
INSERT INTO `oc_setting` VALUES ('8669', '0', 'theme_toys', 'theme_toys_image_cart_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('7633', '1', 'advertise_google', 'advertise_google_checklist_confirmed', '1', '0');
INSERT INTO `oc_setting` VALUES ('8637', '0', 'config', 'config_error_display', '1', '0');
INSERT INTO `oc_setting` VALUES ('8036', '1', 'config', 'config_icon', 'catalog/logo.png', '0');
INSERT INTO `oc_setting` VALUES ('8037', '1', 'config', 'config_secure', '0', '0');
INSERT INTO `oc_setting` VALUES ('8035', '1', 'config', 'config_logo', 'catalog/logo.png', '0');
INSERT INTO `oc_setting` VALUES ('8034', '1', 'config', 'config_stock_checkout', '0', '0');
INSERT INTO `oc_setting` VALUES ('8033', '1', 'config', 'config_stock_display', '0', '0');
INSERT INTO `oc_setting` VALUES ('8032', '1', 'config', 'config_order_status_id', '7', '0');
INSERT INTO `oc_setting` VALUES ('8031', '1', 'config', 'config_checkout_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('8030', '1', 'config', 'config_checkout_guest', '0', '0');
INSERT INTO `oc_setting` VALUES ('8029', '1', 'config', 'config_cart_weight', '0', '0');
INSERT INTO `oc_setting` VALUES ('8028', '1', 'config', 'config_account_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('8027', '1', 'config', 'config_customer_price', '0', '0');
INSERT INTO `oc_setting` VALUES ('8026', '1', 'config', 'config_customer_group_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('8025', '1', 'config', 'config_tax_customer', '', '0');
INSERT INTO `oc_setting` VALUES ('8023', '1', 'config', 'config_tax', '0', '0');
INSERT INTO `oc_setting` VALUES ('8024', '1', 'config', 'config_tax_default', '', '0');
INSERT INTO `oc_setting` VALUES ('8022', '1', 'config', 'config_currency', 'USD', '0');
INSERT INTO `oc_setting` VALUES ('8021', '1', 'config', 'config_language', 'en-gb', '0');
INSERT INTO `oc_setting` VALUES ('8020', '1', 'config', 'config_zone_id', '3563', '0');
INSERT INTO `oc_setting` VALUES ('8019', '1', 'config', 'config_country_id', '222', '0');
INSERT INTO `oc_setting` VALUES ('7354', '0', 'theme_books', 'theme_books_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('7353', '0', 'theme_books', 'theme_books_product_limit', '15', '0');
INSERT INTO `oc_setting` VALUES ('7352', '0', 'theme_books', 'theme_books_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('7351', '0', 'theme_books', 'theme_books_directory', 'books', '0');
INSERT INTO `oc_setting` VALUES ('8634', '0', 'config', 'config_file_max_size', '300000', '0');
INSERT INTO `oc_setting` VALUES ('8635', '0', 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', '0');
INSERT INTO `oc_setting` VALUES ('5186', '0', 'theme_military', 'theme_military_image_location_height', '50', '0');
INSERT INTO `oc_setting` VALUES ('5185', '0', 'theme_military', 'theme_military_image_location_width', '268', '0');
INSERT INTO `oc_setting` VALUES ('5184', '0', 'theme_military', 'theme_military_image_cart_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('5183', '0', 'theme_military', 'theme_military_image_cart_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('5182', '0', 'theme_military', 'theme_military_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('5181', '0', 'theme_military', 'theme_military_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('5180', '0', 'theme_military', 'theme_military_image_compare_height', '90', '0');
INSERT INTO `oc_setting` VALUES ('5179', '0', 'theme_military', 'theme_military_image_compare_width', '90', '0');
INSERT INTO `oc_setting` VALUES ('5178', '0', 'theme_military', 'theme_military_image_related_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('5177', '0', 'theme_military', 'theme_military_image_related_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('5176', '0', 'theme_military', 'theme_military_image_additional_height', '74', '0');
INSERT INTO `oc_setting` VALUES ('5175', '0', 'theme_military', 'theme_military_image_additional_width', '74', '0');
INSERT INTO `oc_setting` VALUES ('5174', '0', 'theme_military', 'theme_military_image_product_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('5173', '0', 'theme_military', 'theme_military_image_product_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('5172', '0', 'theme_military', 'theme_military_image_popup_height', '500', '0');
INSERT INTO `oc_setting` VALUES ('5171', '0', 'theme_military', 'theme_military_image_popup_width', '500', '0');
INSERT INTO `oc_setting` VALUES ('5170', '0', 'theme_military', 'theme_military_image_thumb_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('5169', '0', 'theme_military', 'theme_military_image_thumb_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('5168', '0', 'theme_military', 'theme_military_image_category_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('5167', '0', 'theme_military', 'theme_military_image_category_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('4', '0', 'voucher', 'total_voucher_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('5', '0', 'voucher', 'total_voucher_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('8668', '0', 'theme_toys', 'theme_toys_image_cart_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('8667', '0', 'theme_toys', 'theme_toys_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('8666', '0', 'theme_toys', 'theme_toys_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('8665', '0', 'theme_toys', 'theme_toys_image_compare_height', '90', '0');
INSERT INTO `oc_setting` VALUES ('8664', '0', 'theme_toys', 'theme_toys_image_compare_width', '90', '0');
INSERT INTO `oc_setting` VALUES ('8663', '0', 'theme_toys', 'theme_toys_image_related_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('7362', '0', 'theme_books', 'theme_books_image_product_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('7363', '0', 'theme_books', 'theme_books_image_additional_width', '74', '0');
INSERT INTO `oc_setting` VALUES ('7364', '0', 'theme_books', 'theme_books_image_additional_height', '74', '0');
INSERT INTO `oc_setting` VALUES ('7365', '0', 'theme_books', 'theme_books_image_related_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('7366', '0', 'theme_books', 'theme_books_image_related_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('7367', '0', 'theme_books', 'theme_books_image_compare_width', '90', '0');
INSERT INTO `oc_setting` VALUES ('7368', '0', 'theme_books', 'theme_books_image_compare_height', '90', '0');
INSERT INTO `oc_setting` VALUES ('7369', '0', 'theme_books', 'theme_books_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('7370', '0', 'theme_books', 'theme_books_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('7371', '0', 'theme_books', 'theme_books_image_cart_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('7372', '0', 'theme_books', 'theme_books_image_cart_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('7373', '0', 'theme_books', 'theme_books_image_location_width', '268', '0');
INSERT INTO `oc_setting` VALUES ('7361', '0', 'theme_books', 'theme_books_image_product_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('7360', '0', 'theme_books', 'theme_books_image_popup_height', '500', '0');
INSERT INTO `oc_setting` VALUES ('7359', '0', 'theme_books', 'theme_books_image_popup_width', '500', '0');
INSERT INTO `oc_setting` VALUES ('7358', '0', 'theme_books', 'theme_books_image_thumb_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('7357', '0', 'theme_books', 'theme_books_image_thumb_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('7356', '0', 'theme_books', 'theme_books_image_category_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('7355', '0', 'theme_books', 'theme_books_image_category_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('6164', '1', 'theme_military', 'theme_military_image_location_height', '50', '0');
INSERT INTO `oc_setting` VALUES ('6163', '1', 'theme_military', 'theme_military_image_location_width', '268', '0');
INSERT INTO `oc_setting` VALUES ('6162', '1', 'theme_military', 'theme_military_image_cart_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('6161', '1', 'theme_military', 'theme_military_image_cart_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('6160', '1', 'theme_military', 'theme_military_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('6159', '1', 'theme_military', 'theme_military_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('6158', '1', 'theme_military', 'theme_military_image_compare_height', '90', '0');
INSERT INTO `oc_setting` VALUES ('6157', '1', 'theme_military', 'theme_military_image_compare_width', '90', '0');
INSERT INTO `oc_setting` VALUES ('6156', '1', 'theme_military', 'theme_military_image_related_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('6155', '1', 'theme_military', 'theme_military_image_related_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('6154', '1', 'theme_military', 'theme_military_image_additional_height', '74', '0');
INSERT INTO `oc_setting` VALUES ('6153', '1', 'theme_military', 'theme_military_image_additional_width', '74', '0');
INSERT INTO `oc_setting` VALUES ('6152', '1', 'theme_military', 'theme_military_image_product_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('6151', '1', 'theme_military', 'theme_military_image_product_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('6150', '1', 'theme_military', 'theme_military_image_popup_height', '500', '0');
INSERT INTO `oc_setting` VALUES ('6149', '1', 'theme_military', 'theme_military_image_popup_width', '500', '0');
INSERT INTO `oc_setting` VALUES ('6148', '1', 'theme_military', 'theme_military_image_thumb_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('6147', '1', 'theme_military', 'theme_military_image_thumb_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('6146', '1', 'theme_military', 'theme_military_image_category_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('6145', '1', 'theme_military', 'theme_military_image_category_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('6144', '1', 'theme_military', 'theme_military_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('6143', '1', 'theme_military', 'theme_military_product_limit', '15', '0');
INSERT INTO `oc_setting` VALUES ('6142', '1', 'theme_military', 'theme_military_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('6141', '1', 'theme_military', 'theme_military_directory', 'military', '0');
INSERT INTO `oc_setting` VALUES ('8018', '1', 'config', 'config_comment', '', '0');
INSERT INTO `oc_setting` VALUES ('8636', '0', 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', '0');
INSERT INTO `oc_setting` VALUES ('95', '0', 'payment_free_checkout', 'payment_free_checkout_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('96', '0', 'payment_free_checkout', 'free_checkout_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('97', '0', 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('98', '0', 'payment_cod', 'payment_cod_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('99', '0', 'payment_cod', 'payment_cod_total', '0.01', '0');
INSERT INTO `oc_setting` VALUES ('100', '0', 'payment_cod', 'payment_cod_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('101', '0', 'payment_cod', 'payment_cod_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('102', '0', 'payment_cod', 'payment_cod_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('103', '0', 'shipping_flat', 'shipping_flat_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('104', '0', 'shipping_flat', 'shipping_flat_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('105', '0', 'shipping_flat', 'shipping_flat_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('106', '0', 'shipping_flat', 'shipping_flat_tax_class_id', '9', '0');
INSERT INTO `oc_setting` VALUES ('107', '0', 'shipping_flat', 'shipping_flat_cost', '5.00', '0');
INSERT INTO `oc_setting` VALUES ('108', '0', 'total_shipping', 'total_shipping_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('109', '0', 'total_sub_total', 'sub_total_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('110', '0', 'total_sub_total', 'total_sub_total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('111', '0', 'total_tax', 'total_tax_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('112', '0', 'total_total', 'total_total_sort_order', '9', '0');
INSERT INTO `oc_setting` VALUES ('113', '0', 'total_total', 'total_total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('114', '0', 'total_tax', 'total_tax_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('115', '0', 'total_credit', 'total_credit_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('116', '0', 'total_credit', 'total_credit_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('117', '0', 'total_reward', 'total_reward_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('118', '0', 'total_reward', 'total_reward_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('119', '0', 'total_shipping', 'total_shipping_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('120', '0', 'total_shipping', 'total_shipping_estimator', '1', '0');
INSERT INTO `oc_setting` VALUES ('121', '0', 'total_coupon', 'total_coupon_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('122', '0', 'total_coupon', 'total_coupon_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('123', '0', 'module_category', 'module_category_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('124', '0', 'module_account', 'module_account_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('5166', '0', 'theme_military', 'theme_military_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('7264', '0', 'theme_default', 'theme_default_image_location_height', '268', '0');
INSERT INTO `oc_setting` VALUES ('7263', '0', 'theme_default', 'theme_default_image_location_width', '268', '0');
INSERT INTO `oc_setting` VALUES ('5163', '0', 'theme_military', 'theme_military_directory', 'military', '0');
INSERT INTO `oc_setting` VALUES ('7262', '0', 'theme_default', 'theme_default_image_cart_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('7261', '0', 'theme_default', 'theme_default_image_cart_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('7260', '0', 'theme_default', 'theme_default_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('7259', '0', 'theme_default', 'theme_default_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('7258', '0', 'theme_default', 'theme_default_image_compare_height', '90', '0');
INSERT INTO `oc_setting` VALUES ('7257', '0', 'theme_default', 'theme_default_image_compare_width', '90', '0');
INSERT INTO `oc_setting` VALUES ('7256', '0', 'theme_default', 'theme_default_image_related_height', '200', '0');
INSERT INTO `oc_setting` VALUES ('7253', '0', 'theme_default', 'theme_default_image_additional_width', '74', '0');
INSERT INTO `oc_setting` VALUES ('7255', '0', 'theme_default', 'theme_default_image_related_width', '200', '0');
INSERT INTO `oc_setting` VALUES ('7254', '0', 'theme_default', 'theme_default_image_additional_height', '74', '0');
INSERT INTO `oc_setting` VALUES ('7252', '0', 'theme_default', 'theme_default_image_product_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('7251', '0', 'theme_default', 'theme_default_image_product_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('7250', '0', 'theme_default', 'theme_default_image_popup_height', '500', '0');
INSERT INTO `oc_setting` VALUES ('7249', '0', 'theme_default', 'theme_default_image_popup_width', '500', '0');
INSERT INTO `oc_setting` VALUES ('7248', '0', 'theme_default', 'theme_default_image_thumb_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('7247', '0', 'theme_default', 'theme_default_image_thumb_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('7246', '0', 'theme_default', 'theme_default_image_category_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('7245', '0', 'theme_default', 'theme_default_image_category_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('149', '0', 'dashboard_activity', 'dashboard_activity_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('150', '0', 'dashboard_activity', 'dashboard_activity_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('151', '0', 'dashboard_sale', 'dashboard_sale_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('152', '0', 'dashboard_sale', 'dashboard_sale_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('153', '0', 'dashboard_chart', 'dashboard_chart_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('154', '0', 'dashboard_chart', 'dashboard_chart_width', '6', '0');
INSERT INTO `oc_setting` VALUES ('155', '0', 'dashboard_customer', 'dashboard_customer_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('156', '0', 'dashboard_customer', 'dashboard_customer_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('157', '0', 'dashboard_map', 'dashboard_map_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('158', '0', 'dashboard_map', 'dashboard_map_width', '6', '0');
INSERT INTO `oc_setting` VALUES ('159', '0', 'dashboard_online', 'dashboard_online_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('160', '0', 'dashboard_online', 'dashboard_online_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('161', '0', 'dashboard_order', 'dashboard_order_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('162', '0', 'dashboard_order', 'dashboard_order_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('163', '0', 'dashboard_order', 'dashboard_order_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('164', '0', 'dashboard_sale', 'dashboard_sale_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('165', '0', 'dashboard_customer', 'dashboard_customer_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('166', '0', 'dashboard_online', 'dashboard_online_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('167', '0', 'dashboard_map', 'dashboard_map_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('168', '0', 'dashboard_chart', 'dashboard_chart_sort_order', '6', '0');
INSERT INTO `oc_setting` VALUES ('169', '0', 'dashboard_recent', 'dashboard_recent_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('170', '0', 'dashboard_recent', 'dashboard_recent_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('171', '0', 'dashboard_activity', 'dashboard_activity_width', '4', '0');
INSERT INTO `oc_setting` VALUES ('172', '0', 'dashboard_recent', 'dashboard_recent_width', '8', '0');
INSERT INTO `oc_setting` VALUES ('173', '0', 'report_customer_activity', 'report_customer_activity_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('174', '0', 'report_customer_activity', 'report_customer_activity_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('175', '0', 'report_customer_order', 'report_customer_order_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('176', '0', 'report_customer_order', 'report_customer_order_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('177', '0', 'report_customer_reward', 'report_customer_reward_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('178', '0', 'report_customer_reward', 'report_customer_reward_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('179', '0', 'report_customer_search', 'report_customer_search_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('180', '0', 'report_customer_search', 'report_customer_search_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('181', '0', 'report_customer_transaction', 'report_customer_transaction_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('182', '0', 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('183', '0', 'report_sale_tax', 'report_sale_tax_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('184', '0', 'report_sale_tax', 'report_sale_tax_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('185', '0', 'report_sale_shipping', 'report_sale_shipping_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('186', '0', 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', '0');
INSERT INTO `oc_setting` VALUES ('187', '0', 'report_sale_return', 'report_sale_return_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('188', '0', 'report_sale_return', 'report_sale_return_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('189', '0', 'report_sale_order', 'report_sale_order_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('190', '0', 'report_sale_order', 'report_sale_order_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('191', '0', 'report_sale_coupon', 'report_sale_coupon_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('192', '0', 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', '0');
INSERT INTO `oc_setting` VALUES ('193', '0', 'report_product_viewed', 'report_product_viewed_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('194', '0', 'report_product_viewed', 'report_product_viewed_sort_order', '10', '0');
INSERT INTO `oc_setting` VALUES ('195', '0', 'report_product_purchased', 'report_product_purchased_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('196', '0', 'report_product_purchased', 'report_product_purchased_sort_order', '11', '0');
INSERT INTO `oc_setting` VALUES ('197', '0', 'report_marketing', 'report_marketing_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('198', '0', 'report_marketing', 'report_marketing_sort_order', '12', '0');
INSERT INTO `oc_setting` VALUES ('199', '0', 'developer', 'developer_theme', '0', '0');
INSERT INTO `oc_setting` VALUES ('200', '0', 'developer', 'developer_sass', '1', '0');
INSERT INTO `oc_setting` VALUES ('8662', '0', 'theme_toys', 'theme_toys_image_related_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('8017', '1', 'config', 'config_open', '', '0');
INSERT INTO `oc_setting` VALUES ('8016', '1', 'config', 'config_image', 'catalog/logo.png', '0');
INSERT INTO `oc_setting` VALUES ('8015', '1', 'config', 'config_fax', '164689436456', '0');
INSERT INTO `oc_setting` VALUES ('8014', '1', 'config', 'config_telephone', '45677994656', '0');
INSERT INTO `oc_setting` VALUES ('8013', '1', 'config', 'config_email', 'Military@163.com', '0');
INSERT INTO `oc_setting` VALUES ('8012', '1', 'config', 'config_geocode', '', '0');
INSERT INTO `oc_setting` VALUES ('8011', '1', 'config', 'config_address', 'Military', '0');
INSERT INTO `oc_setting` VALUES ('8010', '1', 'config', 'config_owner', 'Military', '0');
INSERT INTO `oc_setting` VALUES ('8009', '1', 'config', 'config_name', 'Military', '0');
INSERT INTO `oc_setting` VALUES ('8008', '1', 'config', 'config_layout_id', '6', '0');
INSERT INTO `oc_setting` VALUES ('8007', '1', 'config', 'config_theme', 'books', '0');
INSERT INTO `oc_setting` VALUES ('8006', '1', 'config', 'config_meta_keyword', '', '0');
INSERT INTO `oc_setting` VALUES ('8005', '1', 'config', 'config_meta_description', '', '0');
INSERT INTO `oc_setting` VALUES ('8004', '1', 'config', 'config_meta_title', 'military', '0');
INSERT INTO `oc_setting` VALUES ('8003', '1', 'config', 'config_ssl', '', '0');
INSERT INTO `oc_setting` VALUES ('7244', '0', 'theme_default', 'theme_default_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('7243', '0', 'theme_default', 'theme_default_product_limit', '15', '0');
INSERT INTO `oc_setting` VALUES ('7242', '0', 'theme_default', 'theme_default_status', '0', '0');
INSERT INTO `oc_setting` VALUES ('8002', '1', 'config', 'config_url', 'http://localhost.myopencart2.com/', '0');
INSERT INTO `oc_setting` VALUES ('5165', '0', 'theme_military', 'theme_military_product_limit', '15', '0');
INSERT INTO `oc_setting` VALUES ('5164', '0', 'theme_military', 'theme_military_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('4832', '0', 'theme_medic', 'theme_medic_image_location_height', '50', '0');
INSERT INTO `oc_setting` VALUES ('4831', '0', 'theme_medic', 'theme_medic_image_location_width', '268', '0');
INSERT INTO `oc_setting` VALUES ('4830', '0', 'theme_medic', 'theme_medic_image_cart_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('4829', '0', 'theme_medic', 'theme_medic_image_cart_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('4828', '0', 'theme_medic', 'theme_medic_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('4827', '0', 'theme_medic', 'theme_medic_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('4826', '0', 'theme_medic', 'theme_medic_image_compare_height', '90', '0');
INSERT INTO `oc_setting` VALUES ('4825', '0', 'theme_medic', 'theme_medic_image_compare_width', '90', '0');
INSERT INTO `oc_setting` VALUES ('4824', '0', 'theme_medic', 'theme_medic_image_related_height', '200', '0');
INSERT INTO `oc_setting` VALUES ('4823', '0', 'theme_medic', 'theme_medic_image_related_width', '200', '0');
INSERT INTO `oc_setting` VALUES ('4822', '0', 'theme_medic', 'theme_medic_image_additional_height', '74', '0');
INSERT INTO `oc_setting` VALUES ('4821', '0', 'theme_medic', 'theme_medic_image_additional_width', '74', '0');
INSERT INTO `oc_setting` VALUES ('4820', '0', 'theme_medic', 'theme_medic_image_product_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('4819', '0', 'theme_medic', 'theme_medic_image_product_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('4818', '0', 'theme_medic', 'theme_medic_image_popup_height', '500', '0');
INSERT INTO `oc_setting` VALUES ('4817', '0', 'theme_medic', 'theme_medic_image_popup_width', '500', '0');
INSERT INTO `oc_setting` VALUES ('4816', '0', 'theme_medic', 'theme_medic_image_thumb_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('4815', '0', 'theme_medic', 'theme_medic_image_thumb_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('4814', '0', 'theme_medic', 'theme_medic_image_category_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('4813', '0', 'theme_medic', 'theme_medic_image_category_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('4812', '0', 'theme_medic', 'theme_medic_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('4811', '0', 'theme_medic', 'theme_medic_product_limit', '15', '0');
INSERT INTO `oc_setting` VALUES ('4663', '0', 'module_laybuy_layout', 'module_laybuy_layout_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('4810', '0', 'theme_medic', 'theme_medic_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('4809', '0', 'theme_medic', 'theme_medic_directory', 'medic', '0');
INSERT INTO `oc_setting` VALUES ('8629', '0', 'config', 'config_compression', '0', '0');
INSERT INTO `oc_setting` VALUES ('8630', '0', 'config', 'config_secure', '0', '0');
INSERT INTO `oc_setting` VALUES ('8631', '0', 'config', 'config_password', '1', '0');
INSERT INTO `oc_setting` VALUES ('8632', '0', 'config', 'config_shared', '0', '0');
INSERT INTO `oc_setting` VALUES ('8633', '0', 'config', 'config_encryption', 'MX3EwhFmAOrggmTT2akc78oADw7MJjgqzEJN3LqW4XmnM0Jx522mYxTzljKrwr8HVstaYLvHSsTKRkRqyPJm5fB9smOC2Ty0opfAZ9cI9F5RqKXfZCOEq5LV9DLhehWHCMVfPRzZJj7812KjFkUAMMNkY2lq7KUPmcIWxDpuQ4Le8AFKEc86eRRxTWywsejMwTtwLWgvuc7fx4JRbXLgmLK2aMFnfaxR4zfCmpK2NC5uJJHCoh2DOEZ4JbsBOOT0SgfPhST9UcT9iloEA8HMmEluzrm72tRrOHEAJDuaHE89lsk2Q9gfwOG1ydE8Un5dJJj7TBfbBb9QrTOv2zbTF60St7k9aPB49GeGW9X6A7FgbaJBU6m6sYI4FkFmAKncFL44Iec8Ce0JlUNQVu7YHXGVYRnuWXwicMKxHZJeOVqTqcmmNqedhnk6vR5T17J6bJN0VenSUlgQ32kObRfVr5dK82VWhYy3fFIB35UV7TOdsj37MGQ27Dk7YkEaOJMZ2rnk9sggL0I72sidF2oscX4EAA2w4bmHzHwf7ChLtfmMhSyKXmh3CG2mezEhAZiY9pjPMqNyfdAXALwEXgDZ5p09GRuenZ6BMuyyNFhAAqrGC8wbslGK6lFi3j5sOdbDo49AV0ScawFtl9zfjHs1sokjqKHs5jUq8w7yZlt0F6P9REBoKY4zr9xlfdNBpFgt77oL2iEP2JGhcr2JKAn3fvSQTCMq33IP52NRNF8uvU8mzwduvpY2VvuViOIhtoWwZ3h4GIbzH88qnM4CKi7ZFutY2xqSyZFBwtHCkKD9OLo8sggvTpVQDRDFDJB9JR9ooiNvpIjiaiN3NomGjqJzxJF4P0RVc9okuJLZsfC4dkrQf1BYUEK2BQemy3Po9Vfw0QwWvoStdF9d0eKvlViAwq0ukizrgBIIhoeterOVLIiua3GfZoJqOh93AtzBprP19Thbj8jG7meKre1dIT09gQBzYR5aF0tLdXWvCkqgMRUMX3Y55aYRiuCAKqJYGrp5', '0');
INSERT INTO `oc_setting` VALUES ('8624', '0', 'config', 'config_mail_alert', '[\"order\"]', '1');
INSERT INTO `oc_setting` VALUES ('8625', '0', 'config', 'config_mail_alert_email', '', '0');
INSERT INTO `oc_setting` VALUES ('8626', '0', 'config', 'config_maintenance', '0', '0');
INSERT INTO `oc_setting` VALUES ('8627', '0', 'config', 'config_seo_url', '1', '0');
INSERT INTO `oc_setting` VALUES ('8628', '0', 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', '0');
INSERT INTO `oc_setting` VALUES ('8621', '0', 'config', 'config_mail_smtp_password', '', '0');
INSERT INTO `oc_setting` VALUES ('8622', '0', 'config', 'config_mail_smtp_port', '25', '0');
INSERT INTO `oc_setting` VALUES ('8623', '0', 'config', 'config_mail_smtp_timeout', '5', '0');
INSERT INTO `oc_setting` VALUES ('8620', '0', 'config', 'config_mail_smtp_username', '', '0');
INSERT INTO `oc_setting` VALUES ('8619', '0', 'config', 'config_mail_smtp_hostname', '', '0');
INSERT INTO `oc_setting` VALUES ('8618', '0', 'config', 'config_mail_parameter', '', '0');
INSERT INTO `oc_setting` VALUES ('8617', '0', 'config', 'config_mail_engine', 'mail', '0');
INSERT INTO `oc_setting` VALUES ('8616', '0', 'config', 'config_icon', 'catalog/cart.png', '0');
INSERT INTO `oc_setting` VALUES ('8615', '0', 'config', 'config_logo', 'catalog/logo.png', '0');
INSERT INTO `oc_setting` VALUES ('8614', '0', 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', '1');
INSERT INTO `oc_setting` VALUES ('8612', '0', 'config', 'config_return_status_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('8613', '0', 'config', 'config_captcha', '', '0');
INSERT INTO `oc_setting` VALUES ('8611', '0', 'config', 'config_return_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('8610', '0', 'config', 'config_affiliate_id', '4', '0');
INSERT INTO `oc_setting` VALUES ('8609', '0', 'config', 'config_affiliate_commission', '5', '0');
INSERT INTO `oc_setting` VALUES ('8608', '0', 'config', 'config_affiliate_auto', '0', '0');
INSERT INTO `oc_setting` VALUES ('8607', '0', 'config', 'config_affiliate_approval', '0', '0');
INSERT INTO `oc_setting` VALUES ('8606', '0', 'config', 'config_affiliate_group_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('8605', '0', 'config', 'config_stock_checkout', '0', '0');
INSERT INTO `oc_setting` VALUES ('8604', '0', 'config', 'config_stock_warning', '0', '0');
INSERT INTO `oc_setting` VALUES ('8603', '0', 'config', 'config_stock_display', '0', '0');
INSERT INTO `oc_setting` VALUES ('8602', '0', 'config', 'config_api_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('8601', '0', 'config', 'config_fraud_status_id', '7', '0');
INSERT INTO `oc_setting` VALUES ('8600', '0', 'config', 'config_complete_status', '[\"5\",\"3\"]', '1');
INSERT INTO `oc_setting` VALUES ('8599', '0', 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', '1');
INSERT INTO `oc_setting` VALUES ('8598', '0', 'config', 'config_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('8597', '0', 'config', 'config_checkout_id', '5', '0');
INSERT INTO `oc_setting` VALUES ('8596', '0', 'config', 'config_checkout_guest', '1', '0');
INSERT INTO `oc_setting` VALUES ('8595', '0', 'config', 'config_cart_weight', '1', '0');
INSERT INTO `oc_setting` VALUES ('8594', '0', 'config', 'config_invoice_prefix', 'INV-2019-00', '0');
INSERT INTO `oc_setting` VALUES ('8593', '0', 'config', 'config_account_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('8592', '0', 'config', 'config_login_attempts', '5', '0');
INSERT INTO `oc_setting` VALUES ('8591', '0', 'config', 'config_customer_price', '0', '0');
INSERT INTO `oc_setting` VALUES ('8590', '0', 'config', 'config_customer_group_display', '[\"1\"]', '1');
INSERT INTO `oc_setting` VALUES ('8589', '0', 'config', 'config_customer_group_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('8588', '0', 'config', 'config_customer_search', '0', '0');
INSERT INTO `oc_setting` VALUES ('8587', '0', 'config', 'config_customer_activity', '0', '0');
INSERT INTO `oc_setting` VALUES ('8586', '0', 'config', 'config_customer_online', '0', '0');
INSERT INTO `oc_setting` VALUES ('8585', '0', 'config', 'config_tax_customer', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('8584', '0', 'config', 'config_tax_default', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('8583', '0', 'config', 'config_tax', '1', '0');
INSERT INTO `oc_setting` VALUES ('8582', '0', 'config', 'config_voucher_max', '1000', '0');
INSERT INTO `oc_setting` VALUES ('8581', '0', 'config', 'config_voucher_min', '1', '0');
INSERT INTO `oc_setting` VALUES ('8580', '0', 'config', 'config_review_guest', '0', '0');
INSERT INTO `oc_setting` VALUES ('8579', '0', 'config', 'config_review_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('8578', '0', 'config', 'config_limit_admin', '20', '0');
INSERT INTO `oc_setting` VALUES ('8577', '0', 'config', 'config_product_count', '1', '0');
INSERT INTO `oc_setting` VALUES ('8576', '0', 'config', 'config_weight_class_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('8575', '0', 'config', 'config_length_class_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('8574', '0', 'config', 'config_currency_auto', '1', '0');
INSERT INTO `oc_setting` VALUES ('8573', '0', 'config', 'config_currency', 'USD', '0');
INSERT INTO `oc_setting` VALUES ('8572', '0', 'config', 'config_admin_language', 'en-gb', '0');
INSERT INTO `oc_setting` VALUES ('8571', '0', 'config', 'config_language', 'en-gb', '0');
INSERT INTO `oc_setting` VALUES ('8570', '0', 'config', 'config_zone_id', '3563', '0');
INSERT INTO `oc_setting` VALUES ('8569', '0', 'config', 'config_country_id', '222', '0');
INSERT INTO `oc_setting` VALUES ('8568', '0', 'config', 'config_comment', '', '0');
INSERT INTO `oc_setting` VALUES ('8567', '0', 'config', 'config_open', '', '0');
INSERT INTO `oc_setting` VALUES ('8566', '0', 'config', 'config_image', 'catalog/logo.png', '0');
INSERT INTO `oc_setting` VALUES ('8565', '0', 'config', 'config_fax', '06031306@163.com', '0');
INSERT INTO `oc_setting` VALUES ('8564', '0', 'config', 'config_telephone', '123456789', '0');
INSERT INTO `oc_setting` VALUES ('8563', '0', 'config', 'config_email', '06031306@163.com', '0');
INSERT INTO `oc_setting` VALUES ('8562', '0', 'config', 'config_geocode', '', '0');
INSERT INTO `oc_setting` VALUES ('8561', '0', 'config', 'config_address', 'Address 1', '0');
INSERT INTO `oc_setting` VALUES ('8560', '0', 'config', 'config_owner', 'Your Name', '0');
INSERT INTO `oc_setting` VALUES ('1410', '0', 'medic_default', 'theme_medic_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('8671', '0', 'theme_toys', 'theme_toys_image_location_height', '50', '0');
INSERT INTO `oc_setting` VALUES ('8661', '0', 'theme_toys', 'theme_toys_image_additional_height', '128', '0');
INSERT INTO `oc_setting` VALUES ('8660', '0', 'theme_toys', 'theme_toys_image_additional_width', '128', '0');
INSERT INTO `oc_setting` VALUES ('8659', '0', 'theme_toys', 'theme_toys_image_product_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('8658', '0', 'theme_toys', 'theme_toys_image_product_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('8657', '0', 'theme_toys', 'theme_toys_image_popup_height', '500', '0');
INSERT INTO `oc_setting` VALUES ('8656', '0', 'theme_toys', 'theme_toys_image_popup_width', '500', '0');
INSERT INTO `oc_setting` VALUES ('8655', '0', 'theme_toys', 'theme_toys_image_thumb_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('8654', '0', 'theme_toys', 'theme_toys_image_thumb_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('8653', '0', 'theme_toys', 'theme_toys_image_category_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('8652', '0', 'theme_toys', 'theme_toys_image_category_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('8651', '0', 'theme_toys', 'theme_toys_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('8650', '0', 'theme_toys', 'theme_toys_product_limit', '15', '0');
INSERT INTO `oc_setting` VALUES ('8648', '0', 'theme_toys', 'theme_toys_directory', 'toys', '0');
INSERT INTO `oc_setting` VALUES ('8649', '0', 'theme_toys', 'theme_toys_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('7241', '0', 'theme_default', 'theme_default_directory', 'books', '0');
INSERT INTO `oc_setting` VALUES ('8559', '0', 'config', 'config_name', 'Your Store', '0');
INSERT INTO `oc_setting` VALUES ('8558', '0', 'config', 'config_layout_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('8557', '0', 'config', 'config_theme', 'toys', '0');
INSERT INTO `oc_setting` VALUES ('8556', '0', 'config', 'config_meta_keyword', '', '0');
INSERT INTO `oc_setting` VALUES ('8555', '0', 'config', 'config_meta_description', 'My Store', '0');
INSERT INTO `oc_setting` VALUES ('8554', '0', 'config', 'config_meta_title', 'Your Store', '0');

-- ----------------------------
-- Table structure for oc_shipping_courier
-- ----------------------------
DROP TABLE IF EXISTS `oc_shipping_courier`;
CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_shipping_courier
-- ----------------------------
INSERT INTO `oc_shipping_courier` VALUES ('1', 'dhl', 'DHL');
INSERT INTO `oc_shipping_courier` VALUES ('2', 'fedex', 'Fedex');
INSERT INTO `oc_shipping_courier` VALUES ('3', 'ups', 'UPS');
INSERT INTO `oc_shipping_courier` VALUES ('4', 'royal-mail', 'Royal Mail');
INSERT INTO `oc_shipping_courier` VALUES ('5', 'usps', 'United States Postal Service');
INSERT INTO `oc_shipping_courier` VALUES ('6', 'auspost', 'Australia Post');

-- ----------------------------
-- Table structure for oc_statistics
-- ----------------------------
DROP TABLE IF EXISTS `oc_statistics`;
CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_statistics
-- ----------------------------
INSERT INTO `oc_statistics` VALUES ('1', 'order_sale', '720.0000');
INSERT INTO `oc_statistics` VALUES ('2', 'order_processing', '0.0000');
INSERT INTO `oc_statistics` VALUES ('3', 'order_complete', '0.0000');
INSERT INTO `oc_statistics` VALUES ('4', 'order_other', '0.0000');
INSERT INTO `oc_statistics` VALUES ('5', 'returns', '0.0000');
INSERT INTO `oc_statistics` VALUES ('6', 'product', '0.0000');
INSERT INTO `oc_statistics` VALUES ('7', 'review', '0.0000');

-- ----------------------------
-- Table structure for oc_stock_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_stock_status
-- ----------------------------
INSERT INTO `oc_stock_status` VALUES ('7', '1', 'In Stock');
INSERT INTO `oc_stock_status` VALUES ('8', '1', 'Pre-Order');
INSERT INTO `oc_stock_status` VALUES ('5', '1', 'Out Of Stock');
INSERT INTO `oc_stock_status` VALUES ('6', '1', '2-3 Days');

-- ----------------------------
-- Table structure for oc_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_store
-- ----------------------------
INSERT INTO `oc_store` VALUES ('1', 'Military', 'http://localhost.myopencart2.com/', '');

-- ----------------------------
-- Table structure for oc_tax_class
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_class
-- ----------------------------
INSERT INTO `oc_tax_class` VALUES ('9', 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50');
INSERT INTO `oc_tax_class` VALUES ('10', 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- ----------------------------
-- Table structure for oc_tax_rate
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rate
-- ----------------------------
INSERT INTO `oc_tax_rate` VALUES ('86', '3', 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29');
INSERT INTO `oc_tax_rate` VALUES ('87', '3', 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- ----------------------------
-- Table structure for oc_tax_rate_to_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rate_to_customer_group
-- ----------------------------
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('86', '1');
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('87', '1');

-- ----------------------------
-- Table structure for oc_tax_rule
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rule
-- ----------------------------
INSERT INTO `oc_tax_rule` VALUES ('121', '10', '86', 'payment', '1');
INSERT INTO `oc_tax_rule` VALUES ('120', '10', '87', 'store', '0');
INSERT INTO `oc_tax_rule` VALUES ('128', '9', '86', 'shipping', '1');
INSERT INTO `oc_tax_rule` VALUES ('127', '9', '87', 'shipping', '2');

-- ----------------------------
-- Table structure for oc_theme
-- ----------------------------
DROP TABLE IF EXISTS `oc_theme`;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_theme
-- ----------------------------
INSERT INTO `oc_theme` VALUES ('1', '0', 'default', 'common/currency', '{% if currencies|length &gt; 1 %}\n&lt;div class=&quot;pull-left&quot;&gt;\n  &lt;form action=&quot;{{ action }}&quot; method=&quot;post&quot; enctype=&quot;multipart/form-data&quot; id=&quot;form-currency&quot;&gt;\n    &lt;div class=&quot;btn-group&quot;&gt;\n      &lt;button class=&quot;btn btn-link dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;{% for currency in currencies %}\n      {% if currency.symbol_left and currency.code == code %} &lt;strong&gt;{{ currency.symbol_left }}&lt;/strong&gt; {% elseif currency.symbol_right and currency.code == code %} &lt;strong&gt;{{ currency.symbol_right }}&lt;/strong&gt; {% endif %}\n      {% endfor %} &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ text_currency }}&lt;/span&gt;&amp;nbsp;&lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n      &lt;ul class=&quot;dropdown-menu&quot;&gt;\n        {% for currency in currencies %}\n        {% if currency.symbol_left %}\n        &lt;li&gt;\n          &lt;button class=&quot;currency-select btn btn-link btn-block&quot; type=&quot;button&quot; name=&quot;{{ currency.code }}&quot;&gt;{{ currency.symbol_left }} {{ currency.title }}&lt;/button&gt;\n        &lt;/li&gt;\n        {% else %}\n        &lt;li&gt;\n          &lt;button class=&quot;currency-select btn btn-link btn-block&quot; type=&quot;button&quot; name=&quot;{{ currency.code }}&quot;&gt;{{ currency.symbol_right }} {{ currency.title }}&lt;/button&gt;\n        &lt;/li&gt;\n        {% endif %}\n        {% endfor %}\n      &lt;/ul&gt;\n    &lt;/div&gt;\n    &lt;input type=&quot;hidden&quot; name=&quot;code&quot; value=&quot;&quot; /&gt;\n    &lt;input type=&quot;hidden&quot; name=&quot;redirect&quot; value=&quot;{{ redirect }}&quot; /&gt;\n  &lt;/form&gt;\n&lt;/div&gt;\n{% endif %} ', '2020-01-04 15:03:48');
INSERT INTO `oc_theme` VALUES ('2', '0', 'medic', 'common/currency', '{% if currencies|length &gt; 1 %}\n&lt;div class=&quot;pull-left&quot;&gt;\n  &lt;form action=&quot;{{ action }}&quot; method=&quot;post&quot; enctype=&quot;multipart/form-data&quot; id=&quot;form-currency&quot;&gt;\n    &lt;div class=&quot;btn-group&quot;&gt;\n      &lt;button class=&quot;btn btn-link dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;{% for currency in currencies %}\n      {% if currency.symbol_left and currency.code == code %} &lt;strong&gt;{{ currency.symbol_left }}&lt;/strong&gt; {% elseif currency.symbol_right and currency.code == code %} &lt;strong&gt;{{ currency.symbol_right }}&lt;/strong&gt; {% endif %}\n      {% endfor %} &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ text_currency }}&lt;/span&gt;&amp;nbsp;&lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n      &lt;ul class=&quot;dropdown-menu&quot;&gt;\n        {% for currency in currencies %}\n        {% if currency.symbol_left %}\n        &lt;li&gt;\n          &lt;button class=&quot;currency-select btn btn-link btn-block&quot; type=&quot;button&quot; name=&quot;{{ currency.code }}&quot;&gt;{{ currency.symbol_left }} {{ currency.title }}&lt;/button&gt;\n        &lt;/li&gt;\n        {% else %}\n        &lt;li&gt;\n          &lt;button class=&quot;currency-select btn btn-link btn-block&quot; type=&quot;button&quot; name=&quot;{{ currency.code }}&quot;&gt;{{ currency.symbol_right }} {{ currency.title }}&lt;/button&gt;\n        &lt;/li&gt;\n        {% endif %}\n        {% endfor %}\n      &lt;/ul&gt;\n    &lt;/div&gt;\n    &lt;input type=&quot;hidden&quot; name=&quot;code&quot; value=&quot;&quot; /&gt;\n    &lt;input type=&quot;hidden&quot; name=&quot;redirect&quot; value=&quot;{{ redirect }}&quot; /&gt;\n  &lt;/form&gt;\n&lt;/div&gt;\n{% endif %} ', '2020-03-04 10:15:40');

-- ----------------------------
-- Table structure for oc_translation
-- ----------------------------
DROP TABLE IF EXISTS `oc_translation`;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_translation
-- ----------------------------

-- ----------------------------
-- Table structure for oc_upload
-- ----------------------------
DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_upload
-- ----------------------------
INSERT INTO `oc_upload` VALUES ('1', '.txt', '.txt.qKQS5TVfknYWNEkip34ZxDuKRkq6GYNF', '9dd9b0cbd3ef6a71c627cc9ed71f1f44290b8924', '2020-08-07 14:13:00');
INSERT INTO `oc_upload` VALUES ('2', '.txt', '.txt.lQNdq8pzQMWJbkSbQ7BEU3yZdiFjVwLn', 'c8e70f0335e251b1290da10eab1c3f5c506b2ee9', '2020-08-07 14:15:09');

-- ----------------------------
-- Table structure for oc_user
-- ----------------------------
DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_user
-- ----------------------------
INSERT INTO `oc_user` VALUES ('1', '1', 'admin', 'ef78e53089942f22f0bf164907e4ccfb36b15ffc', 'epPq95FCA', '程', '豪', '06031306@163.com', '', '', '127.0.0.1', '1', '2019-12-27 15:44:13');

-- ----------------------------
-- Table structure for oc_user_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_user_group
-- ----------------------------
INSERT INTO `oc_user_group` VALUES ('1', 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/theme\\/medic\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/revolution_slider\",\"extension\\/module\\/revolution_slider\",\"extension\\/theme\\/military\",\"extension\\/theme\\/books\",\"extension\\/module\\/bestseller\",\"extension\\/theme\\/toys\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/html\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/theme\\/medic\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/revolution_slider\",\"extension\\/module\\/revolution_slider\",\"extension\\/theme\\/military\",\"extension\\/theme\\/books\",\"extension\\/module\\/bestseller\",\"extension\\/theme\\/toys\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/html\"]}');
INSERT INTO `oc_user_group` VALUES ('10', 'Demonstration', '');

-- ----------------------------
-- Table structure for oc_voucher
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for oc_voucher_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_voucher_theme
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_theme
-- ----------------------------
INSERT INTO `oc_voucher_theme` VALUES ('8', 'catalog/demo/canon_eos_5d_2.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('7', 'catalog/demo/gift-voucher-birthday.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('6', 'catalog/demo/apple_logo.jpg');

-- ----------------------------
-- Table structure for oc_voucher_theme_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_theme_description
-- ----------------------------
INSERT INTO `oc_voucher_theme_description` VALUES ('6', '1', 'Christmas');
INSERT INTO `oc_voucher_theme_description` VALUES ('7', '1', 'Birthday');
INSERT INTO `oc_voucher_theme_description` VALUES ('8', '1', 'General');

-- ----------------------------
-- Table structure for oc_weight_class
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_weight_class
-- ----------------------------
INSERT INTO `oc_weight_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_weight_class` VALUES ('2', '1000.00000000');
INSERT INTO `oc_weight_class` VALUES ('5', '2.20460000');
INSERT INTO `oc_weight_class` VALUES ('6', '35.27400000');

-- ----------------------------
-- Table structure for oc_weight_class_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_weight_class_description
-- ----------------------------
INSERT INTO `oc_weight_class_description` VALUES ('1', '1', 'Kilogram', 'kg');
INSERT INTO `oc_weight_class_description` VALUES ('2', '1', 'Gram', 'g');
INSERT INTO `oc_weight_class_description` VALUES ('5', '1', 'Pound ', 'lb');
INSERT INTO `oc_weight_class_description` VALUES ('6', '1', 'Ounce', 'oz');

-- ----------------------------
-- Table structure for oc_zone
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4239 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_zone
-- ----------------------------
INSERT INTO `oc_zone` VALUES ('1', '1', 'Badakhshan', 'BDS', '1');
INSERT INTO `oc_zone` VALUES ('2', '1', 'Badghis', 'BDG', '1');
INSERT INTO `oc_zone` VALUES ('3', '1', 'Baghlan', 'BGL', '1');
INSERT INTO `oc_zone` VALUES ('4', '1', 'Balkh', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('5', '1', 'Bamian', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('6', '1', 'Farah', 'FRA', '1');
INSERT INTO `oc_zone` VALUES ('7', '1', 'Faryab', 'FYB', '1');
INSERT INTO `oc_zone` VALUES ('8', '1', 'Ghazni', 'GHA', '1');
INSERT INTO `oc_zone` VALUES ('9', '1', 'Ghowr', 'GHO', '1');
INSERT INTO `oc_zone` VALUES ('10', '1', 'Helmand', 'HEL', '1');
INSERT INTO `oc_zone` VALUES ('11', '1', 'Herat', 'HER', '1');
INSERT INTO `oc_zone` VALUES ('12', '1', 'Jowzjan', 'JOW', '1');
INSERT INTO `oc_zone` VALUES ('13', '1', 'Kabul', 'KAB', '1');
INSERT INTO `oc_zone` VALUES ('14', '1', 'Kandahar', 'KAN', '1');
INSERT INTO `oc_zone` VALUES ('15', '1', 'Kapisa', 'KAP', '1');
INSERT INTO `oc_zone` VALUES ('16', '1', 'Khost', 'KHO', '1');
INSERT INTO `oc_zone` VALUES ('17', '1', 'Konar', 'KNR', '1');
INSERT INTO `oc_zone` VALUES ('18', '1', 'Kondoz', 'KDZ', '1');
INSERT INTO `oc_zone` VALUES ('19', '1', 'Laghman', 'LAG', '1');
INSERT INTO `oc_zone` VALUES ('20', '1', 'Lowgar', 'LOW', '1');
INSERT INTO `oc_zone` VALUES ('21', '1', 'Nangrahar', 'NAN', '1');
INSERT INTO `oc_zone` VALUES ('22', '1', 'Nimruz', 'NIM', '1');
INSERT INTO `oc_zone` VALUES ('23', '1', 'Nurestan', 'NUR', '1');
INSERT INTO `oc_zone` VALUES ('24', '1', 'Oruzgan', 'ORU', '1');
INSERT INTO `oc_zone` VALUES ('25', '1', 'Paktia', 'PIA', '1');
INSERT INTO `oc_zone` VALUES ('26', '1', 'Paktika', 'PKA', '1');
INSERT INTO `oc_zone` VALUES ('27', '1', 'Parwan', 'PAR', '1');
INSERT INTO `oc_zone` VALUES ('28', '1', 'Samangan', 'SAM', '1');
INSERT INTO `oc_zone` VALUES ('29', '1', 'Sar-e Pol', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('30', '1', 'Takhar', 'TAK', '1');
INSERT INTO `oc_zone` VALUES ('31', '1', 'Wardak', 'WAR', '1');
INSERT INTO `oc_zone` VALUES ('32', '1', 'Zabol', 'ZAB', '1');
INSERT INTO `oc_zone` VALUES ('33', '2', 'Berat', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('34', '2', 'Bulqize', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('35', '2', 'Delvine', 'DL', '1');
INSERT INTO `oc_zone` VALUES ('36', '2', 'Devoll', 'DV', '1');
INSERT INTO `oc_zone` VALUES ('37', '2', 'Diber', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('38', '2', 'Durres', 'DR', '1');
INSERT INTO `oc_zone` VALUES ('39', '2', 'Elbasan', 'EL', '1');
INSERT INTO `oc_zone` VALUES ('40', '2', 'Kolonje', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('41', '2', 'Fier', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('42', '2', 'Gjirokaster', 'GJ', '1');
INSERT INTO `oc_zone` VALUES ('43', '2', 'Gramsh', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('44', '2', 'Has', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('45', '2', 'Kavaje', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('46', '2', 'Kurbin', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('47', '2', 'Kucove', 'KC', '1');
INSERT INTO `oc_zone` VALUES ('48', '2', 'Korce', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('49', '2', 'Kruje', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('50', '2', 'Kukes', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('51', '2', 'Librazhd', 'LB', '1');
INSERT INTO `oc_zone` VALUES ('52', '2', 'Lezhe', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('53', '2', 'Lushnje', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('54', '2', 'Malesi e Madhe', 'MM', '1');
INSERT INTO `oc_zone` VALUES ('55', '2', 'Mallakaster', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('56', '2', 'Mat', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('57', '2', 'Mirdite', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('58', '2', 'Peqin', 'PQ', '1');
INSERT INTO `oc_zone` VALUES ('59', '2', 'Permet', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('60', '2', 'Pogradec', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('61', '2', 'Puke', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('62', '2', 'Shkoder', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('63', '2', 'Skrapar', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('64', '2', 'Sarande', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('65', '2', 'Tepelene', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('66', '2', 'Tropoje', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('67', '2', 'Tirane', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('68', '2', 'Vlore', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('69', '3', 'Adrar', 'ADR', '1');
INSERT INTO `oc_zone` VALUES ('70', '3', 'Ain Defla', 'ADE', '1');
INSERT INTO `oc_zone` VALUES ('71', '3', 'Ain Temouchent', 'ATE', '1');
INSERT INTO `oc_zone` VALUES ('72', '3', 'Alger', 'ALG', '1');
INSERT INTO `oc_zone` VALUES ('73', '3', 'Annaba', 'ANN', '1');
INSERT INTO `oc_zone` VALUES ('74', '3', 'Batna', 'BAT', '1');
INSERT INTO `oc_zone` VALUES ('75', '3', 'Bechar', 'BEC', '1');
INSERT INTO `oc_zone` VALUES ('76', '3', 'Bejaia', 'BEJ', '1');
INSERT INTO `oc_zone` VALUES ('77', '3', 'Biskra', 'BIS', '1');
INSERT INTO `oc_zone` VALUES ('78', '3', 'Blida', 'BLI', '1');
INSERT INTO `oc_zone` VALUES ('79', '3', 'Bordj Bou Arreridj', 'BBA', '1');
INSERT INTO `oc_zone` VALUES ('80', '3', 'Bouira', 'BOA', '1');
INSERT INTO `oc_zone` VALUES ('81', '3', 'Boumerdes', 'BMD', '1');
INSERT INTO `oc_zone` VALUES ('82', '3', 'Chlef', 'CHL', '1');
INSERT INTO `oc_zone` VALUES ('83', '3', 'Constantine', 'CON', '1');
INSERT INTO `oc_zone` VALUES ('84', '3', 'Djelfa', 'DJE', '1');
INSERT INTO `oc_zone` VALUES ('85', '3', 'El Bayadh', 'EBA', '1');
INSERT INTO `oc_zone` VALUES ('86', '3', 'El Oued', 'EOU', '1');
INSERT INTO `oc_zone` VALUES ('87', '3', 'El Tarf', 'ETA', '1');
INSERT INTO `oc_zone` VALUES ('88', '3', 'Ghardaia', 'GHA', '1');
INSERT INTO `oc_zone` VALUES ('89', '3', 'Guelma', 'GUE', '1');
INSERT INTO `oc_zone` VALUES ('90', '3', 'Illizi', 'ILL', '1');
INSERT INTO `oc_zone` VALUES ('91', '3', 'Jijel', 'JIJ', '1');
INSERT INTO `oc_zone` VALUES ('92', '3', 'Khenchela', 'KHE', '1');
INSERT INTO `oc_zone` VALUES ('93', '3', 'Laghouat', 'LAG', '1');
INSERT INTO `oc_zone` VALUES ('94', '3', 'Muaskar', 'MUA', '1');
INSERT INTO `oc_zone` VALUES ('95', '3', 'Medea', 'MED', '1');
INSERT INTO `oc_zone` VALUES ('96', '3', 'Mila', 'MIL', '1');
INSERT INTO `oc_zone` VALUES ('97', '3', 'Mostaganem', 'MOS', '1');
INSERT INTO `oc_zone` VALUES ('98', '3', 'M\'Sila', 'MSI', '1');
INSERT INTO `oc_zone` VALUES ('99', '3', 'Naama', 'NAA', '1');
INSERT INTO `oc_zone` VALUES ('100', '3', 'Oran', 'ORA', '1');
INSERT INTO `oc_zone` VALUES ('101', '3', 'Ouargla', 'OUA', '1');
INSERT INTO `oc_zone` VALUES ('102', '3', 'Oum el-Bouaghi', 'OEB', '1');
INSERT INTO `oc_zone` VALUES ('103', '3', 'Relizane', 'REL', '1');
INSERT INTO `oc_zone` VALUES ('104', '3', 'Saida', 'SAI', '1');
INSERT INTO `oc_zone` VALUES ('105', '3', 'Setif', 'SET', '1');
INSERT INTO `oc_zone` VALUES ('106', '3', 'Sidi Bel Abbes', 'SBA', '1');
INSERT INTO `oc_zone` VALUES ('107', '3', 'Skikda', 'SKI', '1');
INSERT INTO `oc_zone` VALUES ('108', '3', 'Souk Ahras', 'SAH', '1');
INSERT INTO `oc_zone` VALUES ('109', '3', 'Tamanghasset', 'TAM', '1');
INSERT INTO `oc_zone` VALUES ('110', '3', 'Tebessa', 'TEB', '1');
INSERT INTO `oc_zone` VALUES ('111', '3', 'Tiaret', 'TIA', '1');
INSERT INTO `oc_zone` VALUES ('112', '3', 'Tindouf', 'TIN', '1');
INSERT INTO `oc_zone` VALUES ('113', '3', 'Tipaza', 'TIP', '1');
INSERT INTO `oc_zone` VALUES ('114', '3', 'Tissemsilt', 'TIS', '1');
INSERT INTO `oc_zone` VALUES ('115', '3', 'Tizi Ouzou', 'TOU', '1');
INSERT INTO `oc_zone` VALUES ('116', '3', 'Tlemcen', 'TLE', '1');
INSERT INTO `oc_zone` VALUES ('117', '4', 'Eastern', 'E', '1');
INSERT INTO `oc_zone` VALUES ('118', '4', 'Manu\'a', 'M', '1');
INSERT INTO `oc_zone` VALUES ('119', '4', 'Rose Island', 'R', '1');
INSERT INTO `oc_zone` VALUES ('120', '4', 'Swains Island', 'S', '1');
INSERT INTO `oc_zone` VALUES ('121', '4', 'Western', 'W', '1');
INSERT INTO `oc_zone` VALUES ('122', '5', 'Andorra la Vella', 'ALV', '1');
INSERT INTO `oc_zone` VALUES ('123', '5', 'Canillo', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('124', '5', 'Encamp', 'ENC', '1');
INSERT INTO `oc_zone` VALUES ('125', '5', 'Escaldes-Engordany', 'ESE', '1');
INSERT INTO `oc_zone` VALUES ('126', '5', 'La Massana', 'LMA', '1');
INSERT INTO `oc_zone` VALUES ('127', '5', 'Ordino', 'ORD', '1');
INSERT INTO `oc_zone` VALUES ('128', '5', 'Sant Julia de Loria', 'SJL', '1');
INSERT INTO `oc_zone` VALUES ('129', '6', 'Bengo', 'BGO', '1');
INSERT INTO `oc_zone` VALUES ('130', '6', 'Benguela', 'BGU', '1');
INSERT INTO `oc_zone` VALUES ('131', '6', 'Bie', 'BIE', '1');
INSERT INTO `oc_zone` VALUES ('132', '6', 'Cabinda', 'CAB', '1');
INSERT INTO `oc_zone` VALUES ('133', '6', 'Cuando-Cubango', 'CCU', '1');
INSERT INTO `oc_zone` VALUES ('134', '6', 'Cuanza Norte', 'CNO', '1');
INSERT INTO `oc_zone` VALUES ('135', '6', 'Cuanza Sul', 'CUS', '1');
INSERT INTO `oc_zone` VALUES ('136', '6', 'Cunene', 'CNN', '1');
INSERT INTO `oc_zone` VALUES ('137', '6', 'Huambo', 'HUA', '1');
INSERT INTO `oc_zone` VALUES ('138', '6', 'Huila', 'HUI', '1');
INSERT INTO `oc_zone` VALUES ('139', '6', 'Luanda', 'LUA', '1');
INSERT INTO `oc_zone` VALUES ('140', '6', 'Lunda Norte', 'LNO', '1');
INSERT INTO `oc_zone` VALUES ('141', '6', 'Lunda Sul', 'LSU', '1');
INSERT INTO `oc_zone` VALUES ('142', '6', 'Malange', 'MAL', '1');
INSERT INTO `oc_zone` VALUES ('143', '6', 'Moxico', 'MOX', '1');
INSERT INTO `oc_zone` VALUES ('144', '6', 'Namibe', 'NAM', '1');
INSERT INTO `oc_zone` VALUES ('145', '6', 'Uige', 'UIG', '1');
INSERT INTO `oc_zone` VALUES ('146', '6', 'Zaire', 'ZAI', '1');
INSERT INTO `oc_zone` VALUES ('147', '9', 'Saint George', 'ASG', '1');
INSERT INTO `oc_zone` VALUES ('148', '9', 'Saint John', 'ASJ', '1');
INSERT INTO `oc_zone` VALUES ('149', '9', 'Saint Mary', 'ASM', '1');
INSERT INTO `oc_zone` VALUES ('150', '9', 'Saint Paul', 'ASL', '1');
INSERT INTO `oc_zone` VALUES ('151', '9', 'Saint Peter', 'ASR', '1');
INSERT INTO `oc_zone` VALUES ('152', '9', 'Saint Philip', 'ASH', '1');
INSERT INTO `oc_zone` VALUES ('153', '9', 'Barbuda', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('154', '9', 'Redonda', 'RED', '1');
INSERT INTO `oc_zone` VALUES ('155', '10', 'Antartida e Islas del Atlantico', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('156', '10', 'Buenos Aires', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('157', '10', 'Catamarca', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('158', '10', 'Chaco', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('159', '10', 'Chubut', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('160', '10', 'Cordoba', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('161', '10', 'Corrientes', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('162', '10', 'Distrito Federal', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('163', '10', 'Entre Rios', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('164', '10', 'Formosa', 'FO', '1');
INSERT INTO `oc_zone` VALUES ('165', '10', 'Jujuy', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('166', '10', 'La Pampa', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('167', '10', 'La Rioja', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('168', '10', 'Mendoza', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('169', '10', 'Misiones', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('170', '10', 'Neuquen', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('171', '10', 'Rio Negro', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('172', '10', 'Salta', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('173', '10', 'San Juan', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('174', '10', 'San Luis', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('175', '10', 'Santa Cruz', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('176', '10', 'Santa Fe', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('177', '10', 'Santiago del Estero', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('178', '10', 'Tierra del Fuego', 'TF', '1');
INSERT INTO `oc_zone` VALUES ('179', '10', 'Tucuman', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('180', '11', 'Aragatsotn', 'AGT', '1');
INSERT INTO `oc_zone` VALUES ('181', '11', 'Ararat', 'ARR', '1');
INSERT INTO `oc_zone` VALUES ('182', '11', 'Armavir', 'ARM', '1');
INSERT INTO `oc_zone` VALUES ('183', '11', 'Geghark\'unik\'', 'GEG', '1');
INSERT INTO `oc_zone` VALUES ('184', '11', 'Kotayk\'', 'KOT', '1');
INSERT INTO `oc_zone` VALUES ('185', '11', 'Lorri', 'LOR', '1');
INSERT INTO `oc_zone` VALUES ('186', '11', 'Shirak', 'SHI', '1');
INSERT INTO `oc_zone` VALUES ('187', '11', 'Syunik\'', 'SYU', '1');
INSERT INTO `oc_zone` VALUES ('188', '11', 'Tavush', 'TAV', '1');
INSERT INTO `oc_zone` VALUES ('189', '11', 'Vayots\' Dzor', 'VAY', '1');
INSERT INTO `oc_zone` VALUES ('190', '11', 'Yerevan', 'YER', '1');
INSERT INTO `oc_zone` VALUES ('191', '13', 'Australian Capital Territory', 'ACT', '1');
INSERT INTO `oc_zone` VALUES ('192', '13', 'New South Wales', 'NSW', '1');
INSERT INTO `oc_zone` VALUES ('193', '13', 'Northern Territory', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('194', '13', 'Queensland', 'QLD', '1');
INSERT INTO `oc_zone` VALUES ('195', '13', 'South Australia', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('196', '13', 'Tasmania', 'TAS', '1');
INSERT INTO `oc_zone` VALUES ('197', '13', 'Victoria', 'VIC', '1');
INSERT INTO `oc_zone` VALUES ('198', '13', 'Western Australia', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('199', '14', 'Burgenland', 'BUR', '1');
INSERT INTO `oc_zone` VALUES ('200', '14', 'Kärnten', 'KAR', '1');
INSERT INTO `oc_zone` VALUES ('201', '14', 'Niederösterreich', 'NOS', '1');
INSERT INTO `oc_zone` VALUES ('202', '14', 'Oberösterreich', 'OOS', '1');
INSERT INTO `oc_zone` VALUES ('203', '14', 'Salzburg', 'SAL', '1');
INSERT INTO `oc_zone` VALUES ('204', '14', 'Steiermark', 'STE', '1');
INSERT INTO `oc_zone` VALUES ('205', '14', 'Tirol', 'TIR', '1');
INSERT INTO `oc_zone` VALUES ('206', '14', 'Vorarlberg', 'VOR', '1');
INSERT INTO `oc_zone` VALUES ('207', '14', 'Wien', 'WIE', '1');
INSERT INTO `oc_zone` VALUES ('208', '15', 'Ali Bayramli', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('209', '15', 'Abseron', 'ABS', '1');
INSERT INTO `oc_zone` VALUES ('210', '15', 'AgcabAdi', 'AGC', '1');
INSERT INTO `oc_zone` VALUES ('211', '15', 'Agdam', 'AGM', '1');
INSERT INTO `oc_zone` VALUES ('212', '15', 'Agdas', 'AGS', '1');
INSERT INTO `oc_zone` VALUES ('213', '15', 'Agstafa', 'AGA', '1');
INSERT INTO `oc_zone` VALUES ('214', '15', 'Agsu', 'AGU', '1');
INSERT INTO `oc_zone` VALUES ('215', '15', 'Astara', 'AST', '1');
INSERT INTO `oc_zone` VALUES ('216', '15', 'Baki', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('217', '15', 'BabAk', 'BAB', '1');
INSERT INTO `oc_zone` VALUES ('218', '15', 'BalakAn', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('219', '15', 'BArdA', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('220', '15', 'Beylaqan', 'BEY', '1');
INSERT INTO `oc_zone` VALUES ('221', '15', 'Bilasuvar', 'BIL', '1');
INSERT INTO `oc_zone` VALUES ('222', '15', 'Cabrayil', 'CAB', '1');
INSERT INTO `oc_zone` VALUES ('223', '15', 'Calilabab', 'CAL', '1');
INSERT INTO `oc_zone` VALUES ('224', '15', 'Culfa', 'CUL', '1');
INSERT INTO `oc_zone` VALUES ('225', '15', 'Daskasan', 'DAS', '1');
INSERT INTO `oc_zone` VALUES ('226', '15', 'Davaci', 'DAV', '1');
INSERT INTO `oc_zone` VALUES ('227', '15', 'Fuzuli', 'FUZ', '1');
INSERT INTO `oc_zone` VALUES ('228', '15', 'Ganca', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('229', '15', 'Gadabay', 'GAD', '1');
INSERT INTO `oc_zone` VALUES ('230', '15', 'Goranboy', 'GOR', '1');
INSERT INTO `oc_zone` VALUES ('231', '15', 'Goycay', 'GOY', '1');
INSERT INTO `oc_zone` VALUES ('232', '15', 'Haciqabul', 'HAC', '1');
INSERT INTO `oc_zone` VALUES ('233', '15', 'Imisli', 'IMI', '1');
INSERT INTO `oc_zone` VALUES ('234', '15', 'Ismayilli', 'ISM', '1');
INSERT INTO `oc_zone` VALUES ('235', '15', 'Kalbacar', 'KAL', '1');
INSERT INTO `oc_zone` VALUES ('236', '15', 'Kurdamir', 'KUR', '1');
INSERT INTO `oc_zone` VALUES ('237', '15', 'Lankaran', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('238', '15', 'Lacin', 'LAC', '1');
INSERT INTO `oc_zone` VALUES ('239', '15', 'Lankaran', 'LAN', '1');
INSERT INTO `oc_zone` VALUES ('240', '15', 'Lerik', 'LER', '1');
INSERT INTO `oc_zone` VALUES ('241', '15', 'Masalli', 'MAS', '1');
INSERT INTO `oc_zone` VALUES ('242', '15', 'Mingacevir', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('243', '15', 'Naftalan', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('244', '15', 'Neftcala', 'NEF', '1');
INSERT INTO `oc_zone` VALUES ('245', '15', 'Oguz', 'OGU', '1');
INSERT INTO `oc_zone` VALUES ('246', '15', 'Ordubad', 'ORD', '1');
INSERT INTO `oc_zone` VALUES ('247', '15', 'Qabala', 'QAB', '1');
INSERT INTO `oc_zone` VALUES ('248', '15', 'Qax', 'QAX', '1');
INSERT INTO `oc_zone` VALUES ('249', '15', 'Qazax', 'QAZ', '1');
INSERT INTO `oc_zone` VALUES ('250', '15', 'Qobustan', 'QOB', '1');
INSERT INTO `oc_zone` VALUES ('251', '15', 'Quba', 'QBA', '1');
INSERT INTO `oc_zone` VALUES ('252', '15', 'Qubadli', 'QBI', '1');
INSERT INTO `oc_zone` VALUES ('253', '15', 'Qusar', 'QUS', '1');
INSERT INTO `oc_zone` VALUES ('254', '15', 'Saki', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('255', '15', 'Saatli', 'SAT', '1');
INSERT INTO `oc_zone` VALUES ('256', '15', 'Sabirabad', 'SAB', '1');
INSERT INTO `oc_zone` VALUES ('257', '15', 'Sadarak', 'SAD', '1');
INSERT INTO `oc_zone` VALUES ('258', '15', 'Sahbuz', 'SAH', '1');
INSERT INTO `oc_zone` VALUES ('259', '15', 'Saki', 'SAK', '1');
INSERT INTO `oc_zone` VALUES ('260', '15', 'Salyan', 'SAL', '1');
INSERT INTO `oc_zone` VALUES ('261', '15', 'Sumqayit', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('262', '15', 'Samaxi', 'SMI', '1');
INSERT INTO `oc_zone` VALUES ('263', '15', 'Samkir', 'SKR', '1');
INSERT INTO `oc_zone` VALUES ('264', '15', 'Samux', 'SMX', '1');
INSERT INTO `oc_zone` VALUES ('265', '15', 'Sarur', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('266', '15', 'Siyazan', 'SIY', '1');
INSERT INTO `oc_zone` VALUES ('267', '15', 'Susa', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('268', '15', 'Susa', 'SUS', '1');
INSERT INTO `oc_zone` VALUES ('269', '15', 'Tartar', 'TAR', '1');
INSERT INTO `oc_zone` VALUES ('270', '15', 'Tovuz', 'TOV', '1');
INSERT INTO `oc_zone` VALUES ('271', '15', 'Ucar', 'UCA', '1');
INSERT INTO `oc_zone` VALUES ('272', '15', 'Xankandi', 'XA', '1');
INSERT INTO `oc_zone` VALUES ('273', '15', 'Xacmaz', 'XAC', '1');
INSERT INTO `oc_zone` VALUES ('274', '15', 'Xanlar', 'XAN', '1');
INSERT INTO `oc_zone` VALUES ('275', '15', 'Xizi', 'XIZ', '1');
INSERT INTO `oc_zone` VALUES ('276', '15', 'Xocali', 'XCI', '1');
INSERT INTO `oc_zone` VALUES ('277', '15', 'Xocavand', 'XVD', '1');
INSERT INTO `oc_zone` VALUES ('278', '15', 'Yardimli', 'YAR', '1');
INSERT INTO `oc_zone` VALUES ('279', '15', 'Yevlax', 'YEV', '1');
INSERT INTO `oc_zone` VALUES ('280', '15', 'Zangilan', 'ZAN', '1');
INSERT INTO `oc_zone` VALUES ('281', '15', 'Zaqatala', 'ZAQ', '1');
INSERT INTO `oc_zone` VALUES ('282', '15', 'Zardab', 'ZAR', '1');
INSERT INTO `oc_zone` VALUES ('283', '15', 'Naxcivan', 'NX', '1');
INSERT INTO `oc_zone` VALUES ('284', '16', 'Acklins', 'ACK', '1');
INSERT INTO `oc_zone` VALUES ('285', '16', 'Berry Islands', 'BER', '1');
INSERT INTO `oc_zone` VALUES ('286', '16', 'Bimini', 'BIM', '1');
INSERT INTO `oc_zone` VALUES ('287', '16', 'Black Point', 'BLK', '1');
INSERT INTO `oc_zone` VALUES ('288', '16', 'Cat Island', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('289', '16', 'Central Abaco', 'CAB', '1');
INSERT INTO `oc_zone` VALUES ('290', '16', 'Central Andros', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('291', '16', 'Central Eleuthera', 'CEL', '1');
INSERT INTO `oc_zone` VALUES ('292', '16', 'City of Freeport', 'FRE', '1');
INSERT INTO `oc_zone` VALUES ('293', '16', 'Crooked Island', 'CRO', '1');
INSERT INTO `oc_zone` VALUES ('294', '16', 'East Grand Bahama', 'EGB', '1');
INSERT INTO `oc_zone` VALUES ('295', '16', 'Exuma', 'EXU', '1');
INSERT INTO `oc_zone` VALUES ('296', '16', 'Grand Cay', 'GRD', '1');
INSERT INTO `oc_zone` VALUES ('297', '16', 'Harbour Island', 'HAR', '1');
INSERT INTO `oc_zone` VALUES ('298', '16', 'Hope Town', 'HOP', '1');
INSERT INTO `oc_zone` VALUES ('299', '16', 'Inagua', 'INA', '1');
INSERT INTO `oc_zone` VALUES ('300', '16', 'Long Island', 'LNG', '1');
INSERT INTO `oc_zone` VALUES ('301', '16', 'Mangrove Cay', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('302', '16', 'Mayaguana', 'MAY', '1');
INSERT INTO `oc_zone` VALUES ('303', '16', 'Moore\'s Island', 'MOO', '1');
INSERT INTO `oc_zone` VALUES ('304', '16', 'North Abaco', 'NAB', '1');
INSERT INTO `oc_zone` VALUES ('305', '16', 'North Andros', 'NAN', '1');
INSERT INTO `oc_zone` VALUES ('306', '16', 'North Eleuthera', 'NEL', '1');
INSERT INTO `oc_zone` VALUES ('307', '16', 'Ragged Island', 'RAG', '1');
INSERT INTO `oc_zone` VALUES ('308', '16', 'Rum Cay', 'RUM', '1');
INSERT INTO `oc_zone` VALUES ('309', '16', 'San Salvador', 'SAL', '1');
INSERT INTO `oc_zone` VALUES ('310', '16', 'South Abaco', 'SAB', '1');
INSERT INTO `oc_zone` VALUES ('311', '16', 'South Andros', 'SAN', '1');
INSERT INTO `oc_zone` VALUES ('312', '16', 'South Eleuthera', 'SEL', '1');
INSERT INTO `oc_zone` VALUES ('313', '16', 'Spanish Wells', 'SWE', '1');
INSERT INTO `oc_zone` VALUES ('314', '16', 'West Grand Bahama', 'WGB', '1');
INSERT INTO `oc_zone` VALUES ('315', '17', 'Capital', 'CAP', '1');
INSERT INTO `oc_zone` VALUES ('316', '17', 'Central', 'CEN', '1');
INSERT INTO `oc_zone` VALUES ('317', '17', 'Muharraq', 'MUH', '1');
INSERT INTO `oc_zone` VALUES ('318', '17', 'Northern', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('319', '17', 'Southern', 'SOU', '1');
INSERT INTO `oc_zone` VALUES ('320', '18', 'Barisal', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('321', '18', 'Chittagong', 'CHI', '1');
INSERT INTO `oc_zone` VALUES ('322', '18', 'Dhaka', 'DHA', '1');
INSERT INTO `oc_zone` VALUES ('323', '18', 'Khulna', 'KHU', '1');
INSERT INTO `oc_zone` VALUES ('324', '18', 'Rajshahi', 'RAJ', '1');
INSERT INTO `oc_zone` VALUES ('325', '18', 'Sylhet', 'SYL', '1');
INSERT INTO `oc_zone` VALUES ('326', '19', 'Christ Church', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('327', '19', 'Saint Andrew', 'AND', '1');
INSERT INTO `oc_zone` VALUES ('328', '19', 'Saint George', 'GEO', '1');
INSERT INTO `oc_zone` VALUES ('329', '19', 'Saint James', 'JAM', '1');
INSERT INTO `oc_zone` VALUES ('330', '19', 'Saint John', 'JOH', '1');
INSERT INTO `oc_zone` VALUES ('331', '19', 'Saint Joseph', 'JOS', '1');
INSERT INTO `oc_zone` VALUES ('332', '19', 'Saint Lucy', 'LUC', '1');
INSERT INTO `oc_zone` VALUES ('333', '19', 'Saint Michael', 'MIC', '1');
INSERT INTO `oc_zone` VALUES ('334', '19', 'Saint Peter', 'PET', '1');
INSERT INTO `oc_zone` VALUES ('335', '19', 'Saint Philip', 'PHI', '1');
INSERT INTO `oc_zone` VALUES ('336', '19', 'Saint Thomas', 'THO', '1');
INSERT INTO `oc_zone` VALUES ('337', '20', 'Brestskaya (Brest)', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('338', '20', 'Homyel\'skaya (Homyel\')', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('339', '20', 'Horad Minsk', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('340', '20', 'Hrodzyenskaya (Hrodna)', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('341', '20', 'Mahilyowskaya (Mahilyow)', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('342', '20', 'Minskaya', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('343', '20', 'Vitsyebskaya (Vitsyebsk)', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('344', '21', 'Antwerpen', 'VAN', '1');
INSERT INTO `oc_zone` VALUES ('345', '21', 'Brabant Wallon', 'WBR', '1');
INSERT INTO `oc_zone` VALUES ('346', '21', 'Hainaut', 'WHT', '1');
INSERT INTO `oc_zone` VALUES ('347', '21', 'Liège', 'WLG', '1');
INSERT INTO `oc_zone` VALUES ('348', '21', 'Limburg', 'VLI', '1');
INSERT INTO `oc_zone` VALUES ('349', '21', 'Luxembourg', 'WLX', '1');
INSERT INTO `oc_zone` VALUES ('350', '21', 'Namur', 'WNA', '1');
INSERT INTO `oc_zone` VALUES ('351', '21', 'Oost-Vlaanderen', 'VOV', '1');
INSERT INTO `oc_zone` VALUES ('352', '21', 'Vlaams Brabant', 'VBR', '1');
INSERT INTO `oc_zone` VALUES ('353', '21', 'West-Vlaanderen', 'VWV', '1');
INSERT INTO `oc_zone` VALUES ('354', '22', 'Belize', 'BZ', '1');
INSERT INTO `oc_zone` VALUES ('355', '22', 'Cayo', 'CY', '1');
INSERT INTO `oc_zone` VALUES ('356', '22', 'Corozal', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('357', '22', 'Orange Walk', 'OW', '1');
INSERT INTO `oc_zone` VALUES ('358', '22', 'Stann Creek', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('359', '22', 'Toledo', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('360', '23', 'Alibori', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('361', '23', 'Atakora', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('362', '23', 'Atlantique', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('363', '23', 'Borgou', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('364', '23', 'Collines', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('365', '23', 'Donga', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('366', '23', 'Kouffo', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('367', '23', 'Littoral', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('368', '23', 'Mono', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('369', '23', 'Oueme', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('370', '23', 'Plateau', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('371', '23', 'Zou', 'ZO', '1');
INSERT INTO `oc_zone` VALUES ('372', '24', 'Devonshire', 'DS', '1');
INSERT INTO `oc_zone` VALUES ('373', '24', 'Hamilton City', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('374', '24', 'Hamilton', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('375', '24', 'Paget', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('376', '24', 'Pembroke', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('377', '24', 'Saint George City', 'GC', '1');
INSERT INTO `oc_zone` VALUES ('378', '24', 'Saint George\'s', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('379', '24', 'Sandys', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('380', '24', 'Smith\'s', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('381', '24', 'Southampton', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('382', '24', 'Warwick', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('383', '25', 'Bumthang', 'BUM', '1');
INSERT INTO `oc_zone` VALUES ('384', '25', 'Chukha', 'CHU', '1');
INSERT INTO `oc_zone` VALUES ('385', '25', 'Dagana', 'DAG', '1');
INSERT INTO `oc_zone` VALUES ('386', '25', 'Gasa', 'GAS', '1');
INSERT INTO `oc_zone` VALUES ('387', '25', 'Haa', 'HAA', '1');
INSERT INTO `oc_zone` VALUES ('388', '25', 'Lhuntse', 'LHU', '1');
INSERT INTO `oc_zone` VALUES ('389', '25', 'Mongar', 'MON', '1');
INSERT INTO `oc_zone` VALUES ('390', '25', 'Paro', 'PAR', '1');
INSERT INTO `oc_zone` VALUES ('391', '25', 'Pemagatshel', 'PEM', '1');
INSERT INTO `oc_zone` VALUES ('392', '25', 'Punakha', 'PUN', '1');
INSERT INTO `oc_zone` VALUES ('393', '25', 'Samdrup Jongkhar', 'SJO', '1');
INSERT INTO `oc_zone` VALUES ('394', '25', 'Samtse', 'SAT', '1');
INSERT INTO `oc_zone` VALUES ('395', '25', 'Sarpang', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('396', '25', 'Thimphu', 'THI', '1');
INSERT INTO `oc_zone` VALUES ('397', '25', 'Trashigang', 'TRG', '1');
INSERT INTO `oc_zone` VALUES ('398', '25', 'Trashiyangste', 'TRY', '1');
INSERT INTO `oc_zone` VALUES ('399', '25', 'Trongsa', 'TRO', '1');
INSERT INTO `oc_zone` VALUES ('400', '25', 'Tsirang', 'TSI', '1');
INSERT INTO `oc_zone` VALUES ('401', '25', 'Wangdue Phodrang', 'WPH', '1');
INSERT INTO `oc_zone` VALUES ('402', '25', 'Zhemgang', 'ZHE', '1');
INSERT INTO `oc_zone` VALUES ('403', '26', 'Beni', 'BEN', '1');
INSERT INTO `oc_zone` VALUES ('404', '26', 'Chuquisaca', 'CHU', '1');
INSERT INTO `oc_zone` VALUES ('405', '26', 'Cochabamba', 'COC', '1');
INSERT INTO `oc_zone` VALUES ('406', '26', 'La Paz', 'LPZ', '1');
INSERT INTO `oc_zone` VALUES ('407', '26', 'Oruro', 'ORU', '1');
INSERT INTO `oc_zone` VALUES ('408', '26', 'Pando', 'PAN', '1');
INSERT INTO `oc_zone` VALUES ('409', '26', 'Potosi', 'POT', '1');
INSERT INTO `oc_zone` VALUES ('410', '26', 'Santa Cruz', 'SCZ', '1');
INSERT INTO `oc_zone` VALUES ('411', '26', 'Tarija', 'TAR', '1');
INSERT INTO `oc_zone` VALUES ('412', '27', 'Brcko district', 'BRO', '1');
INSERT INTO `oc_zone` VALUES ('413', '27', 'Unsko-Sanski Kanton', 'FUS', '1');
INSERT INTO `oc_zone` VALUES ('414', '27', 'Posavski Kanton', 'FPO', '1');
INSERT INTO `oc_zone` VALUES ('415', '27', 'Tuzlanski Kanton', 'FTU', '1');
INSERT INTO `oc_zone` VALUES ('416', '27', 'Zenicko-Dobojski Kanton', 'FZE', '1');
INSERT INTO `oc_zone` VALUES ('417', '27', 'Bosanskopodrinjski Kanton', 'FBP', '1');
INSERT INTO `oc_zone` VALUES ('418', '27', 'Srednjebosanski Kanton', 'FSB', '1');
INSERT INTO `oc_zone` VALUES ('419', '27', 'Hercegovacko-neretvanski Kanton', 'FHN', '1');
INSERT INTO `oc_zone` VALUES ('420', '27', 'Zapadnohercegovacka Zupanija', 'FZH', '1');
INSERT INTO `oc_zone` VALUES ('421', '27', 'Kanton Sarajevo', 'FSA', '1');
INSERT INTO `oc_zone` VALUES ('422', '27', 'Zapadnobosanska', 'FZA', '1');
INSERT INTO `oc_zone` VALUES ('423', '27', 'Banja Luka', 'SBL', '1');
INSERT INTO `oc_zone` VALUES ('424', '27', 'Doboj', 'SDO', '1');
INSERT INTO `oc_zone` VALUES ('425', '27', 'Bijeljina', 'SBI', '1');
INSERT INTO `oc_zone` VALUES ('426', '27', 'Vlasenica', 'SVL', '1');
INSERT INTO `oc_zone` VALUES ('427', '27', 'Sarajevo-Romanija or Sokolac', 'SSR', '1');
INSERT INTO `oc_zone` VALUES ('428', '27', 'Foca', 'SFO', '1');
INSERT INTO `oc_zone` VALUES ('429', '27', 'Trebinje', 'STR', '1');
INSERT INTO `oc_zone` VALUES ('430', '28', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('431', '28', 'Ghanzi', 'GH', '1');
INSERT INTO `oc_zone` VALUES ('432', '28', 'Kgalagadi', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('433', '28', 'Kgatleng', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('434', '28', 'Kweneng', 'KW', '1');
INSERT INTO `oc_zone` VALUES ('435', '28', 'Ngamiland', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('436', '28', 'North East', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('437', '28', 'North West', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('438', '28', 'South East', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('439', '28', 'Southern', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('440', '30', 'Acre', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('441', '30', 'Alagoas', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('442', '30', 'Amapá', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('443', '30', 'Amazonas', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('444', '30', 'Bahia', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('445', '30', 'Ceará', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('446', '30', 'Distrito Federal', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('447', '30', 'Espírito Santo', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('448', '30', 'Goiás', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('449', '30', 'Maranhão', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('450', '30', 'Mato Grosso', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('451', '30', 'Mato Grosso do Sul', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('452', '30', 'Minas Gerais', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('453', '30', 'Pará', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('454', '30', 'Paraíba', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('455', '30', 'Paraná', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('456', '30', 'Pernambuco', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('457', '30', 'Piauí', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('458', '30', 'Rio de Janeiro', 'RJ', '1');
INSERT INTO `oc_zone` VALUES ('459', '30', 'Rio Grande do Norte', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('460', '30', 'Rio Grande do Sul', 'RS', '1');
INSERT INTO `oc_zone` VALUES ('461', '30', 'Rondônia', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('462', '30', 'Roraima', 'RR', '1');
INSERT INTO `oc_zone` VALUES ('463', '30', 'Santa Catarina', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('464', '30', 'São Paulo', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('465', '30', 'Sergipe', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('466', '30', 'Tocantins', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('467', '31', 'Peros Banhos', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('468', '31', 'Salomon Islands', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('469', '31', 'Nelsons Island', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('470', '31', 'Three Brothers', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('471', '31', 'Eagle Islands', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('472', '31', 'Danger Island', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('473', '31', 'Egmont Islands', 'EG', '1');
INSERT INTO `oc_zone` VALUES ('474', '31', 'Diego Garcia', 'DG', '1');
INSERT INTO `oc_zone` VALUES ('475', '32', 'Belait', 'BEL', '1');
INSERT INTO `oc_zone` VALUES ('476', '32', 'Brunei and Muara', 'BRM', '1');
INSERT INTO `oc_zone` VALUES ('477', '32', 'Temburong', 'TEM', '1');
INSERT INTO `oc_zone` VALUES ('478', '32', 'Tutong', 'TUT', '1');
INSERT INTO `oc_zone` VALUES ('479', '33', 'Blagoevgrad', '', '1');
INSERT INTO `oc_zone` VALUES ('480', '33', 'Burgas', '', '1');
INSERT INTO `oc_zone` VALUES ('481', '33', 'Dobrich', '', '1');
INSERT INTO `oc_zone` VALUES ('482', '33', 'Gabrovo', '', '1');
INSERT INTO `oc_zone` VALUES ('483', '33', 'Haskovo', '', '1');
INSERT INTO `oc_zone` VALUES ('484', '33', 'Kardjali', '', '1');
INSERT INTO `oc_zone` VALUES ('485', '33', 'Kyustendil', '', '1');
INSERT INTO `oc_zone` VALUES ('486', '33', 'Lovech', '', '1');
INSERT INTO `oc_zone` VALUES ('487', '33', 'Montana', '', '1');
INSERT INTO `oc_zone` VALUES ('488', '33', 'Pazardjik', '', '1');
INSERT INTO `oc_zone` VALUES ('489', '33', 'Pernik', '', '1');
INSERT INTO `oc_zone` VALUES ('490', '33', 'Pleven', '', '1');
INSERT INTO `oc_zone` VALUES ('491', '33', 'Plovdiv', '', '1');
INSERT INTO `oc_zone` VALUES ('492', '33', 'Razgrad', '', '1');
INSERT INTO `oc_zone` VALUES ('493', '33', 'Shumen', '', '1');
INSERT INTO `oc_zone` VALUES ('494', '33', 'Silistra', '', '1');
INSERT INTO `oc_zone` VALUES ('495', '33', 'Sliven', '', '1');
INSERT INTO `oc_zone` VALUES ('496', '33', 'Smolyan', '', '1');
INSERT INTO `oc_zone` VALUES ('497', '33', 'Sofia', '', '1');
INSERT INTO `oc_zone` VALUES ('498', '33', 'Sofia - town', '', '1');
INSERT INTO `oc_zone` VALUES ('499', '33', 'Stara Zagora', '', '1');
INSERT INTO `oc_zone` VALUES ('500', '33', 'Targovishte', '', '1');
INSERT INTO `oc_zone` VALUES ('501', '33', 'Varna', '', '1');
INSERT INTO `oc_zone` VALUES ('502', '33', 'Veliko Tarnovo', '', '1');
INSERT INTO `oc_zone` VALUES ('503', '33', 'Vidin', '', '1');
INSERT INTO `oc_zone` VALUES ('504', '33', 'Vratza', '', '1');
INSERT INTO `oc_zone` VALUES ('505', '33', 'Yambol', '', '1');
INSERT INTO `oc_zone` VALUES ('506', '34', 'Bale', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('507', '34', 'Bam', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('508', '34', 'Banwa', 'BAN', '1');
INSERT INTO `oc_zone` VALUES ('509', '34', 'Bazega', 'BAZ', '1');
INSERT INTO `oc_zone` VALUES ('510', '34', 'Bougouriba', 'BOR', '1');
INSERT INTO `oc_zone` VALUES ('511', '34', 'Boulgou', 'BLG', '1');
INSERT INTO `oc_zone` VALUES ('512', '34', 'Boulkiemde', 'BOK', '1');
INSERT INTO `oc_zone` VALUES ('513', '34', 'Comoe', 'COM', '1');
INSERT INTO `oc_zone` VALUES ('514', '34', 'Ganzourgou', 'GAN', '1');
INSERT INTO `oc_zone` VALUES ('515', '34', 'Gnagna', 'GNA', '1');
INSERT INTO `oc_zone` VALUES ('516', '34', 'Gourma', 'GOU', '1');
INSERT INTO `oc_zone` VALUES ('517', '34', 'Houet', 'HOU', '1');
INSERT INTO `oc_zone` VALUES ('518', '34', 'Ioba', 'IOA', '1');
INSERT INTO `oc_zone` VALUES ('519', '34', 'Kadiogo', 'KAD', '1');
INSERT INTO `oc_zone` VALUES ('520', '34', 'Kenedougou', 'KEN', '1');
INSERT INTO `oc_zone` VALUES ('521', '34', 'Komondjari', 'KOD', '1');
INSERT INTO `oc_zone` VALUES ('522', '34', 'Kompienga', 'KOP', '1');
INSERT INTO `oc_zone` VALUES ('523', '34', 'Kossi', 'KOS', '1');
INSERT INTO `oc_zone` VALUES ('524', '34', 'Koulpelogo', 'KOL', '1');
INSERT INTO `oc_zone` VALUES ('525', '34', 'Kouritenga', 'KOT', '1');
INSERT INTO `oc_zone` VALUES ('526', '34', 'Kourweogo', 'KOW', '1');
INSERT INTO `oc_zone` VALUES ('527', '34', 'Leraba', 'LER', '1');
INSERT INTO `oc_zone` VALUES ('528', '34', 'Loroum', 'LOR', '1');
INSERT INTO `oc_zone` VALUES ('529', '34', 'Mouhoun', 'MOU', '1');
INSERT INTO `oc_zone` VALUES ('530', '34', 'Nahouri', 'NAH', '1');
INSERT INTO `oc_zone` VALUES ('531', '34', 'Namentenga', 'NAM', '1');
INSERT INTO `oc_zone` VALUES ('532', '34', 'Nayala', 'NAY', '1');
INSERT INTO `oc_zone` VALUES ('533', '34', 'Noumbiel', 'NOU', '1');
INSERT INTO `oc_zone` VALUES ('534', '34', 'Oubritenga', 'OUB', '1');
INSERT INTO `oc_zone` VALUES ('535', '34', 'Oudalan', 'OUD', '1');
INSERT INTO `oc_zone` VALUES ('536', '34', 'Passore', 'PAS', '1');
INSERT INTO `oc_zone` VALUES ('537', '34', 'Poni', 'PON', '1');
INSERT INTO `oc_zone` VALUES ('538', '34', 'Sanguie', 'SAG', '1');
INSERT INTO `oc_zone` VALUES ('539', '34', 'Sanmatenga', 'SAM', '1');
INSERT INTO `oc_zone` VALUES ('540', '34', 'Seno', 'SEN', '1');
INSERT INTO `oc_zone` VALUES ('541', '34', 'Sissili', 'SIS', '1');
INSERT INTO `oc_zone` VALUES ('542', '34', 'Soum', 'SOM', '1');
INSERT INTO `oc_zone` VALUES ('543', '34', 'Sourou', 'SOR', '1');
INSERT INTO `oc_zone` VALUES ('544', '34', 'Tapoa', 'TAP', '1');
INSERT INTO `oc_zone` VALUES ('545', '34', 'Tuy', 'TUY', '1');
INSERT INTO `oc_zone` VALUES ('546', '34', 'Yagha', 'YAG', '1');
INSERT INTO `oc_zone` VALUES ('547', '34', 'Yatenga', 'YAT', '1');
INSERT INTO `oc_zone` VALUES ('548', '34', 'Ziro', 'ZIR', '1');
INSERT INTO `oc_zone` VALUES ('549', '34', 'Zondoma', 'ZOD', '1');
INSERT INTO `oc_zone` VALUES ('550', '34', 'Zoundweogo', 'ZOW', '1');
INSERT INTO `oc_zone` VALUES ('551', '35', 'Bubanza', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('552', '35', 'Bujumbura', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('553', '35', 'Bururi', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('554', '35', 'Cankuzo', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('555', '35', 'Cibitoke', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('556', '35', 'Gitega', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('557', '35', 'Karuzi', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('558', '35', 'Kayanza', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('559', '35', 'Kirundo', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('560', '35', 'Makamba', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('561', '35', 'Muramvya', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('562', '35', 'Muyinga', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('563', '35', 'Mwaro', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('564', '35', 'Ngozi', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('565', '35', 'Rutana', 'RT', '1');
INSERT INTO `oc_zone` VALUES ('566', '35', 'Ruyigi', 'RY', '1');
INSERT INTO `oc_zone` VALUES ('567', '36', 'Phnom Penh', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('568', '36', 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('569', '36', 'Pailin', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('570', '36', 'Keb', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('571', '36', 'Banteay Meanchey', 'BM', '1');
INSERT INTO `oc_zone` VALUES ('572', '36', 'Battambang', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('573', '36', 'Kampong Cham', 'KM', '1');
INSERT INTO `oc_zone` VALUES ('574', '36', 'Kampong Chhnang', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('575', '36', 'Kampong Speu', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('576', '36', 'Kampong Som', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('577', '36', 'Kampong Thom', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('578', '36', 'Kampot', 'KP', '1');
INSERT INTO `oc_zone` VALUES ('579', '36', 'Kandal', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('580', '36', 'Kaoh Kong', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('581', '36', 'Kratie', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('582', '36', 'Mondul Kiri', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('583', '36', 'Oddar Meancheay', 'OM', '1');
INSERT INTO `oc_zone` VALUES ('584', '36', 'Pursat', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('585', '36', 'Preah Vihear', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('586', '36', 'Prey Veng', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('587', '36', 'Ratanak Kiri', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('588', '36', 'Siemreap', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('589', '36', 'Stung Treng', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('590', '36', 'Svay Rieng', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('591', '36', 'Takeo', 'TK', '1');
INSERT INTO `oc_zone` VALUES ('592', '37', 'Adamawa (Adamaoua)', 'ADA', '1');
INSERT INTO `oc_zone` VALUES ('593', '37', 'Centre', 'CEN', '1');
INSERT INTO `oc_zone` VALUES ('594', '37', 'East (Est)', 'EST', '1');
INSERT INTO `oc_zone` VALUES ('595', '37', 'Extreme North (Extreme-Nord)', 'EXN', '1');
INSERT INTO `oc_zone` VALUES ('596', '37', 'Littoral', 'LIT', '1');
INSERT INTO `oc_zone` VALUES ('597', '37', 'North (Nord)', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('598', '37', 'Northwest (Nord-Ouest)', 'NOT', '1');
INSERT INTO `oc_zone` VALUES ('599', '37', 'West (Ouest)', 'OUE', '1');
INSERT INTO `oc_zone` VALUES ('600', '37', 'South (Sud)', 'SUD', '1');
INSERT INTO `oc_zone` VALUES ('601', '37', 'Southwest (Sud-Ouest).', 'SOU', '1');
INSERT INTO `oc_zone` VALUES ('602', '38', 'Alberta', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('603', '38', 'British Columbia', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('604', '38', 'Manitoba', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('605', '38', 'New Brunswick', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('606', '38', 'Newfoundland and Labrador', 'NL', '1');
INSERT INTO `oc_zone` VALUES ('607', '38', 'Northwest Territories', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('608', '38', 'Nova Scotia', 'NS', '1');
INSERT INTO `oc_zone` VALUES ('609', '38', 'Nunavut', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('610', '38', 'Ontario', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('611', '38', 'Prince Edward Island', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('612', '38', 'Qu&eacute;bec', 'QC', '1');
INSERT INTO `oc_zone` VALUES ('613', '38', 'Saskatchewan', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('614', '38', 'Yukon Territory', 'YT', '1');
INSERT INTO `oc_zone` VALUES ('615', '39', 'Boa Vista', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('616', '39', 'Brava', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('617', '39', 'Calheta de Sao Miguel', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('618', '39', 'Maio', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('619', '39', 'Mosteiros', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('620', '39', 'Paul', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('621', '39', 'Porto Novo', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('622', '39', 'Praia', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('623', '39', 'Ribeira Grande', 'RG', '1');
INSERT INTO `oc_zone` VALUES ('624', '39', 'Sal', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('625', '39', 'Santa Catarina', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('626', '39', 'Santa Cruz', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('627', '39', 'Sao Domingos', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('628', '39', 'Sao Filipe', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('629', '39', 'Sao Nicolau', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('630', '39', 'Sao Vicente', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('631', '39', 'Tarrafal', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('632', '40', 'Creek', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('633', '40', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('634', '40', 'Midland', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('635', '40', 'South Town', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('636', '40', 'Spot Bay', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('637', '40', 'Stake Bay', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('638', '40', 'West End', 'WD', '1');
INSERT INTO `oc_zone` VALUES ('639', '40', 'Western', 'WN', '1');
INSERT INTO `oc_zone` VALUES ('640', '41', 'Bamingui-Bangoran', 'BBA', '1');
INSERT INTO `oc_zone` VALUES ('641', '41', 'Basse-Kotto', 'BKO', '1');
INSERT INTO `oc_zone` VALUES ('642', '41', 'Haute-Kotto', 'HKO', '1');
INSERT INTO `oc_zone` VALUES ('643', '41', 'Haut-Mbomou', 'HMB', '1');
INSERT INTO `oc_zone` VALUES ('644', '41', 'Kemo', 'KEM', '1');
INSERT INTO `oc_zone` VALUES ('645', '41', 'Lobaye', 'LOB', '1');
INSERT INTO `oc_zone` VALUES ('646', '41', 'Mambere-KadeÔ', 'MKD', '1');
INSERT INTO `oc_zone` VALUES ('647', '41', 'Mbomou', 'MBO', '1');
INSERT INTO `oc_zone` VALUES ('648', '41', 'Nana-Mambere', 'NMM', '1');
INSERT INTO `oc_zone` VALUES ('649', '41', 'Ombella-M\'Poko', 'OMP', '1');
INSERT INTO `oc_zone` VALUES ('650', '41', 'Ouaka', 'OUK', '1');
INSERT INTO `oc_zone` VALUES ('651', '41', 'Ouham', 'OUH', '1');
INSERT INTO `oc_zone` VALUES ('652', '41', 'Ouham-Pende', 'OPE', '1');
INSERT INTO `oc_zone` VALUES ('653', '41', 'Vakaga', 'VAK', '1');
INSERT INTO `oc_zone` VALUES ('654', '41', 'Nana-Grebizi', 'NGR', '1');
INSERT INTO `oc_zone` VALUES ('655', '41', 'Sangha-Mbaere', 'SMB', '1');
INSERT INTO `oc_zone` VALUES ('656', '41', 'Bangui', 'BAN', '1');
INSERT INTO `oc_zone` VALUES ('657', '42', 'Batha', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('658', '42', 'Biltine', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('659', '42', 'Borkou-Ennedi-Tibesti', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('660', '42', 'Chari-Baguirmi', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('661', '42', 'Guera', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('662', '42', 'Kanem', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('663', '42', 'Lac', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('664', '42', 'Logone Occidental', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('665', '42', 'Logone Oriental', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('666', '42', 'Mayo-Kebbi', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('667', '42', 'Moyen-Chari', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('668', '42', 'Ouaddai', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('669', '42', 'Salamat', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('670', '42', 'Tandjile', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('671', '43', 'Aisen del General Carlos Ibanez', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('672', '43', 'Antofagasta', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('673', '43', 'Araucania', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('674', '43', 'Atacama', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('675', '43', 'Bio-Bio', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('676', '43', 'Coquimbo', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('677', '43', 'Libertador General Bernardo O\'Higgins', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('678', '43', 'Los Lagos', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('679', '43', 'Magallanes y de la Antartica Chilena', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('680', '43', 'Maule', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('681', '43', 'Region Metropolitana', 'RM', '1');
INSERT INTO `oc_zone` VALUES ('682', '43', 'Tarapaca', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('683', '43', 'Valparaiso', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('684', '44', 'Anhui', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('685', '44', 'Beijing', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('686', '44', 'Chongqing', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('687', '44', 'Fujian', 'FU', '1');
INSERT INTO `oc_zone` VALUES ('688', '44', 'Gansu', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('689', '44', 'Guangdong', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('690', '44', 'Guangxi', 'GX', '1');
INSERT INTO `oc_zone` VALUES ('691', '44', 'Guizhou', 'GZ', '1');
INSERT INTO `oc_zone` VALUES ('692', '44', 'Hainan', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('693', '44', 'Hebei', 'HB', '1');
INSERT INTO `oc_zone` VALUES ('694', '44', 'Heilongjiang', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('695', '44', 'Henan', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('696', '44', 'Hong Kong', 'HK', '1');
INSERT INTO `oc_zone` VALUES ('697', '44', 'Hubei', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('698', '44', 'Hunan', 'HN', '1');
INSERT INTO `oc_zone` VALUES ('699', '44', 'Inner Mongolia', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('700', '44', 'Jiangsu', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('701', '44', 'Jiangxi', 'JX', '1');
INSERT INTO `oc_zone` VALUES ('702', '44', 'Jilin', 'JL', '1');
INSERT INTO `oc_zone` VALUES ('703', '44', 'Liaoning', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('704', '44', 'Macau', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('705', '44', 'Ningxia', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('706', '44', 'Shaanxi', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('707', '44', 'Shandong', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('708', '44', 'Shanghai', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('709', '44', 'Shanxi', 'SX', '1');
INSERT INTO `oc_zone` VALUES ('710', '44', 'Sichuan', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('711', '44', 'Tianjin', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('712', '44', 'Xinjiang', 'XI', '1');
INSERT INTO `oc_zone` VALUES ('713', '44', 'Yunnan', 'YU', '1');
INSERT INTO `oc_zone` VALUES ('714', '44', 'Zhejiang', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('715', '46', 'Direction Island', 'D', '1');
INSERT INTO `oc_zone` VALUES ('716', '46', 'Home Island', 'H', '1');
INSERT INTO `oc_zone` VALUES ('717', '46', 'Horsburgh Island', 'O', '1');
INSERT INTO `oc_zone` VALUES ('718', '46', 'South Island', 'S', '1');
INSERT INTO `oc_zone` VALUES ('719', '46', 'West Island', 'W', '1');
INSERT INTO `oc_zone` VALUES ('720', '47', 'Amazonas', 'AMZ', '1');
INSERT INTO `oc_zone` VALUES ('721', '47', 'Antioquia', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('722', '47', 'Arauca', 'ARA', '1');
INSERT INTO `oc_zone` VALUES ('723', '47', 'Atlantico', 'ATL', '1');
INSERT INTO `oc_zone` VALUES ('724', '47', 'Bogota D.C.', 'BDC', '1');
INSERT INTO `oc_zone` VALUES ('725', '47', 'Bolivar', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('726', '47', 'Boyaca', 'BOY', '1');
INSERT INTO `oc_zone` VALUES ('727', '47', 'Caldas', 'CAL', '1');
INSERT INTO `oc_zone` VALUES ('728', '47', 'Caqueta', 'CAQ', '1');
INSERT INTO `oc_zone` VALUES ('729', '47', 'Casanare', 'CAS', '1');
INSERT INTO `oc_zone` VALUES ('730', '47', 'Cauca', 'CAU', '1');
INSERT INTO `oc_zone` VALUES ('731', '47', 'Cesar', 'CES', '1');
INSERT INTO `oc_zone` VALUES ('732', '47', 'Choco', 'CHO', '1');
INSERT INTO `oc_zone` VALUES ('733', '47', 'Cordoba', 'COR', '1');
INSERT INTO `oc_zone` VALUES ('734', '47', 'Cundinamarca', 'CAM', '1');
INSERT INTO `oc_zone` VALUES ('735', '47', 'Guainia', 'GNA', '1');
INSERT INTO `oc_zone` VALUES ('736', '47', 'Guajira', 'GJR', '1');
INSERT INTO `oc_zone` VALUES ('737', '47', 'Guaviare', 'GVR', '1');
INSERT INTO `oc_zone` VALUES ('738', '47', 'Huila', 'HUI', '1');
INSERT INTO `oc_zone` VALUES ('739', '47', 'Magdalena', 'MAG', '1');
INSERT INTO `oc_zone` VALUES ('740', '47', 'Meta', 'MET', '1');
INSERT INTO `oc_zone` VALUES ('741', '47', 'Narino', 'NAR', '1');
INSERT INTO `oc_zone` VALUES ('742', '47', 'Norte de Santander', 'NDS', '1');
INSERT INTO `oc_zone` VALUES ('743', '47', 'Putumayo', 'PUT', '1');
INSERT INTO `oc_zone` VALUES ('744', '47', 'Quindio', 'QUI', '1');
INSERT INTO `oc_zone` VALUES ('745', '47', 'Risaralda', 'RIS', '1');
INSERT INTO `oc_zone` VALUES ('746', '47', 'San Andres y Providencia', 'SAP', '1');
INSERT INTO `oc_zone` VALUES ('747', '47', 'Santander', 'SAN', '1');
INSERT INTO `oc_zone` VALUES ('748', '47', 'Sucre', 'SUC', '1');
INSERT INTO `oc_zone` VALUES ('749', '47', 'Tolima', 'TOL', '1');
INSERT INTO `oc_zone` VALUES ('750', '47', 'Valle del Cauca', 'VDC', '1');
INSERT INTO `oc_zone` VALUES ('751', '47', 'Vaupes', 'VAU', '1');
INSERT INTO `oc_zone` VALUES ('752', '47', 'Vichada', 'VIC', '1');
INSERT INTO `oc_zone` VALUES ('753', '48', 'Grande Comore', 'G', '1');
INSERT INTO `oc_zone` VALUES ('754', '48', 'Anjouan', 'A', '1');
INSERT INTO `oc_zone` VALUES ('755', '48', 'Moheli', 'M', '1');
INSERT INTO `oc_zone` VALUES ('756', '49', 'Bouenza', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('757', '49', 'Brazzaville', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('758', '49', 'Cuvette', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('759', '49', 'Cuvette-Ouest', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('760', '49', 'Kouilou', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('761', '49', 'Lekoumou', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('762', '49', 'Likouala', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('763', '49', 'Niari', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('764', '49', 'Plateaux', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('765', '49', 'Pool', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('766', '49', 'Sangha', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('767', '50', 'Pukapuka', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('768', '50', 'Rakahanga', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('769', '50', 'Manihiki', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('770', '50', 'Penrhyn', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('771', '50', 'Nassau Island', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('772', '50', 'Surwarrow', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('773', '50', 'Palmerston', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('774', '50', 'Aitutaki', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('775', '50', 'Manuae', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('776', '50', 'Takutea', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('777', '50', 'Mitiaro', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('778', '50', 'Atiu', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('779', '50', 'Mauke', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('780', '50', 'Rarotonga', 'RR', '1');
INSERT INTO `oc_zone` VALUES ('781', '50', 'Mangaia', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('782', '51', 'Alajuela', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('783', '51', 'Cartago', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('784', '51', 'Guanacaste', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('785', '51', 'Heredia', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('786', '51', 'Limon', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('787', '51', 'Puntarenas', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('788', '51', 'San Jose', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('789', '52', 'Abengourou', 'ABE', '1');
INSERT INTO `oc_zone` VALUES ('790', '52', 'Abidjan', 'ABI', '1');
INSERT INTO `oc_zone` VALUES ('791', '52', 'Aboisso', 'ABO', '1');
INSERT INTO `oc_zone` VALUES ('792', '52', 'Adiake', 'ADI', '1');
INSERT INTO `oc_zone` VALUES ('793', '52', 'Adzope', 'ADZ', '1');
INSERT INTO `oc_zone` VALUES ('794', '52', 'Agboville', 'AGB', '1');
INSERT INTO `oc_zone` VALUES ('795', '52', 'Agnibilekrou', 'AGN', '1');
INSERT INTO `oc_zone` VALUES ('796', '52', 'Alepe', 'ALE', '1');
INSERT INTO `oc_zone` VALUES ('797', '52', 'Bocanda', 'BOC', '1');
INSERT INTO `oc_zone` VALUES ('798', '52', 'Bangolo', 'BAN', '1');
INSERT INTO `oc_zone` VALUES ('799', '52', 'Beoumi', 'BEO', '1');
INSERT INTO `oc_zone` VALUES ('800', '52', 'Biankouma', 'BIA', '1');
INSERT INTO `oc_zone` VALUES ('801', '52', 'Bondoukou', 'BDK', '1');
INSERT INTO `oc_zone` VALUES ('802', '52', 'Bongouanou', 'BGN', '1');
INSERT INTO `oc_zone` VALUES ('803', '52', 'Bouafle', 'BFL', '1');
INSERT INTO `oc_zone` VALUES ('804', '52', 'Bouake', 'BKE', '1');
INSERT INTO `oc_zone` VALUES ('805', '52', 'Bouna', 'BNA', '1');
INSERT INTO `oc_zone` VALUES ('806', '52', 'Boundiali', 'BDL', '1');
INSERT INTO `oc_zone` VALUES ('807', '52', 'Dabakala', 'DKL', '1');
INSERT INTO `oc_zone` VALUES ('808', '52', 'Dabou', 'DBU', '1');
INSERT INTO `oc_zone` VALUES ('809', '52', 'Daloa', 'DAL', '1');
INSERT INTO `oc_zone` VALUES ('810', '52', 'Danane', 'DAN', '1');
INSERT INTO `oc_zone` VALUES ('811', '52', 'Daoukro', 'DAO', '1');
INSERT INTO `oc_zone` VALUES ('812', '52', 'Dimbokro', 'DIM', '1');
INSERT INTO `oc_zone` VALUES ('813', '52', 'Divo', 'DIV', '1');
INSERT INTO `oc_zone` VALUES ('814', '52', 'Duekoue', 'DUE', '1');
INSERT INTO `oc_zone` VALUES ('815', '52', 'Ferkessedougou', 'FER', '1');
INSERT INTO `oc_zone` VALUES ('816', '52', 'Gagnoa', 'GAG', '1');
INSERT INTO `oc_zone` VALUES ('817', '52', 'Grand-Bassam', 'GBA', '1');
INSERT INTO `oc_zone` VALUES ('818', '52', 'Grand-Lahou', 'GLA', '1');
INSERT INTO `oc_zone` VALUES ('819', '52', 'Guiglo', 'GUI', '1');
INSERT INTO `oc_zone` VALUES ('820', '52', 'Issia', 'ISS', '1');
INSERT INTO `oc_zone` VALUES ('821', '52', 'Jacqueville', 'JAC', '1');
INSERT INTO `oc_zone` VALUES ('822', '52', 'Katiola', 'KAT', '1');
INSERT INTO `oc_zone` VALUES ('823', '52', 'Korhogo', 'KOR', '1');
INSERT INTO `oc_zone` VALUES ('824', '52', 'Lakota', 'LAK', '1');
INSERT INTO `oc_zone` VALUES ('825', '52', 'Man', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('826', '52', 'Mankono', 'MKN', '1');
INSERT INTO `oc_zone` VALUES ('827', '52', 'Mbahiakro', 'MBA', '1');
INSERT INTO `oc_zone` VALUES ('828', '52', 'Odienne', 'ODI', '1');
INSERT INTO `oc_zone` VALUES ('829', '52', 'Oume', 'OUM', '1');
INSERT INTO `oc_zone` VALUES ('830', '52', 'Sakassou', 'SAK', '1');
INSERT INTO `oc_zone` VALUES ('831', '52', 'San-Pedro', 'SPE', '1');
INSERT INTO `oc_zone` VALUES ('832', '52', 'Sassandra', 'SAS', '1');
INSERT INTO `oc_zone` VALUES ('833', '52', 'Seguela', 'SEG', '1');
INSERT INTO `oc_zone` VALUES ('834', '52', 'Sinfra', 'SIN', '1');
INSERT INTO `oc_zone` VALUES ('835', '52', 'Soubre', 'SOU', '1');
INSERT INTO `oc_zone` VALUES ('836', '52', 'Tabou', 'TAB', '1');
INSERT INTO `oc_zone` VALUES ('837', '52', 'Tanda', 'TAN', '1');
INSERT INTO `oc_zone` VALUES ('838', '52', 'Tiebissou', 'TIE', '1');
INSERT INTO `oc_zone` VALUES ('839', '52', 'Tingrela', 'TIN', '1');
INSERT INTO `oc_zone` VALUES ('840', '52', 'Tiassale', 'TIA', '1');
INSERT INTO `oc_zone` VALUES ('841', '52', 'Touba', 'TBA', '1');
INSERT INTO `oc_zone` VALUES ('842', '52', 'Toulepleu', 'TLP', '1');
INSERT INTO `oc_zone` VALUES ('843', '52', 'Toumodi', 'TMD', '1');
INSERT INTO `oc_zone` VALUES ('844', '52', 'Vavoua', 'VAV', '1');
INSERT INTO `oc_zone` VALUES ('845', '52', 'Yamoussoukro', 'YAM', '1');
INSERT INTO `oc_zone` VALUES ('846', '52', 'Zuenoula', 'ZUE', '1');
INSERT INTO `oc_zone` VALUES ('847', '53', 'Bjelovarsko-bilogorska', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('848', '53', 'Grad Zagreb', 'GZ', '1');
INSERT INTO `oc_zone` VALUES ('849', '53', 'Dubrovačko-neretvanska', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('850', '53', 'Istarska', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('851', '53', 'Karlovačka', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('852', '53', 'Koprivničko-križevačka', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('853', '53', 'Krapinsko-zagorska', 'KZ', '1');
INSERT INTO `oc_zone` VALUES ('854', '53', 'Ličko-senjska', 'LS', '1');
INSERT INTO `oc_zone` VALUES ('855', '53', 'Međimurska', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('856', '53', 'Osječko-baranjska', 'OB', '1');
INSERT INTO `oc_zone` VALUES ('857', '53', 'Požeško-slavonska', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('858', '53', 'Primorsko-goranska', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('859', '53', 'Šibensko-kninska', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('860', '53', 'Sisačko-moslavačka', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('861', '53', 'Brodsko-posavska', 'BP', '1');
INSERT INTO `oc_zone` VALUES ('862', '53', 'Splitsko-dalmatinska', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('863', '53', 'Varaždinska', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('864', '53', 'Virovitičko-podravska', 'VP', '1');
INSERT INTO `oc_zone` VALUES ('865', '53', 'Vukovarsko-srijemska', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('866', '53', 'Zadarska', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('867', '53', 'Zagrebačka', 'ZG', '1');
INSERT INTO `oc_zone` VALUES ('868', '54', 'Camaguey', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('869', '54', 'Ciego de Avila', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('870', '54', 'Cienfuegos', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('871', '54', 'Ciudad de La Habana', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('872', '54', 'Granma', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('873', '54', 'Guantanamo', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('874', '54', 'Holguin', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('875', '54', 'Isla de la Juventud', 'IJ', '1');
INSERT INTO `oc_zone` VALUES ('876', '54', 'La Habana', 'LH', '1');
INSERT INTO `oc_zone` VALUES ('877', '54', 'Las Tunas', 'LT', '1');
INSERT INTO `oc_zone` VALUES ('878', '54', 'Matanzas', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('879', '54', 'Pinar del Rio', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('880', '54', 'Sancti Spiritus', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('881', '54', 'Santiago de Cuba', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('882', '54', 'Villa Clara', 'VC', '1');
INSERT INTO `oc_zone` VALUES ('883', '55', 'Famagusta', 'F', '1');
INSERT INTO `oc_zone` VALUES ('884', '55', 'Kyrenia', 'K', '1');
INSERT INTO `oc_zone` VALUES ('885', '55', 'Larnaca', 'A', '1');
INSERT INTO `oc_zone` VALUES ('886', '55', 'Limassol', 'I', '1');
INSERT INTO `oc_zone` VALUES ('887', '55', 'Nicosia', 'N', '1');
INSERT INTO `oc_zone` VALUES ('888', '55', 'Paphos', 'P', '1');
INSERT INTO `oc_zone` VALUES ('889', '56', 'Ústecký', 'U', '1');
INSERT INTO `oc_zone` VALUES ('890', '56', 'Jihočeský', 'C', '1');
INSERT INTO `oc_zone` VALUES ('891', '56', 'Jihomoravský', 'B', '1');
INSERT INTO `oc_zone` VALUES ('892', '56', 'Karlovarský', 'K', '1');
INSERT INTO `oc_zone` VALUES ('893', '56', 'Královehradecký', 'H', '1');
INSERT INTO `oc_zone` VALUES ('894', '56', 'Liberecký', 'L', '1');
INSERT INTO `oc_zone` VALUES ('895', '56', 'Moravskoslezský', 'T', '1');
INSERT INTO `oc_zone` VALUES ('896', '56', 'Olomoucký', 'M', '1');
INSERT INTO `oc_zone` VALUES ('897', '56', 'Pardubický', 'E', '1');
INSERT INTO `oc_zone` VALUES ('898', '56', 'Plzeňský', 'P', '1');
INSERT INTO `oc_zone` VALUES ('899', '56', 'Praha', 'A', '1');
INSERT INTO `oc_zone` VALUES ('900', '56', 'Středočeský', 'S', '1');
INSERT INTO `oc_zone` VALUES ('901', '56', 'Vysočina', 'J', '1');
INSERT INTO `oc_zone` VALUES ('902', '56', 'Zlínský', 'Z', '1');
INSERT INTO `oc_zone` VALUES ('903', '57', 'Arhus', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('904', '57', 'Bornholm', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('905', '57', 'Copenhagen', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('906', '57', 'Faroe Islands', 'FO', '1');
INSERT INTO `oc_zone` VALUES ('907', '57', 'Frederiksborg', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('908', '57', 'Fyn', 'FY', '1');
INSERT INTO `oc_zone` VALUES ('909', '57', 'Kobenhavn', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('910', '57', 'Nordjylland', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('911', '57', 'Ribe', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('912', '57', 'Ringkobing', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('913', '57', 'Roskilde', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('914', '57', 'Sonderjylland', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('915', '57', 'Storstrom', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('916', '57', 'Vejle', 'VK', '1');
INSERT INTO `oc_zone` VALUES ('917', '57', 'Vestj&aelig;lland', 'VJ', '1');
INSERT INTO `oc_zone` VALUES ('918', '57', 'Viborg', 'VB', '1');
INSERT INTO `oc_zone` VALUES ('919', '58', '\'Ali Sabih', 'S', '1');
INSERT INTO `oc_zone` VALUES ('920', '58', 'Dikhil', 'K', '1');
INSERT INTO `oc_zone` VALUES ('921', '58', 'Djibouti', 'J', '1');
INSERT INTO `oc_zone` VALUES ('922', '58', 'Obock', 'O', '1');
INSERT INTO `oc_zone` VALUES ('923', '58', 'Tadjoura', 'T', '1');
INSERT INTO `oc_zone` VALUES ('924', '59', 'Saint Andrew Parish', 'AND', '1');
INSERT INTO `oc_zone` VALUES ('925', '59', 'Saint David Parish', 'DAV', '1');
INSERT INTO `oc_zone` VALUES ('926', '59', 'Saint George Parish', 'GEO', '1');
INSERT INTO `oc_zone` VALUES ('927', '59', 'Saint John Parish', 'JOH', '1');
INSERT INTO `oc_zone` VALUES ('928', '59', 'Saint Joseph Parish', 'JOS', '1');
INSERT INTO `oc_zone` VALUES ('929', '59', 'Saint Luke Parish', 'LUK', '1');
INSERT INTO `oc_zone` VALUES ('930', '59', 'Saint Mark Parish', 'MAR', '1');
INSERT INTO `oc_zone` VALUES ('931', '59', 'Saint Patrick Parish', 'PAT', '1');
INSERT INTO `oc_zone` VALUES ('932', '59', 'Saint Paul Parish', 'PAU', '1');
INSERT INTO `oc_zone` VALUES ('933', '59', 'Saint Peter Parish', 'PET', '1');
INSERT INTO `oc_zone` VALUES ('934', '60', 'Distrito Nacional', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('935', '60', 'Azua', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('936', '60', 'Baoruco', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('937', '60', 'Barahona', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('938', '60', 'Dajabon', 'DJ', '1');
INSERT INTO `oc_zone` VALUES ('939', '60', 'Duarte', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('940', '60', 'Elias Pina', 'EL', '1');
INSERT INTO `oc_zone` VALUES ('941', '60', 'El Seybo', 'SY', '1');
INSERT INTO `oc_zone` VALUES ('942', '60', 'Espaillat', 'ET', '1');
INSERT INTO `oc_zone` VALUES ('943', '60', 'Hato Mayor', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('944', '60', 'Independencia', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('945', '60', 'La Altagracia', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('946', '60', 'La Romana', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('947', '60', 'La Vega', 'VE', '1');
INSERT INTO `oc_zone` VALUES ('948', '60', 'Maria Trinidad Sanchez', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('949', '60', 'Monsenor Nouel', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('950', '60', 'Monte Cristi', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('951', '60', 'Monte Plata', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('952', '60', 'Pedernales', 'PD', '1');
INSERT INTO `oc_zone` VALUES ('953', '60', 'Peravia (Bani)', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('954', '60', 'Puerto Plata', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('955', '60', 'Salcedo', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('956', '60', 'Samana', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('957', '60', 'Sanchez Ramirez', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('958', '60', 'San Cristobal', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('959', '60', 'San Jose de Ocoa', 'JO', '1');
INSERT INTO `oc_zone` VALUES ('960', '60', 'San Juan', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('961', '60', 'San Pedro de Macoris', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('962', '60', 'Santiago', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('963', '60', 'Santiago Rodriguez', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('964', '60', 'Santo Domingo', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('965', '60', 'Valverde', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('966', '61', 'Aileu', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('967', '61', 'Ainaro', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('968', '61', 'Baucau', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('969', '61', 'Bobonaro', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('970', '61', 'Cova Lima', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('971', '61', 'Dili', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('972', '61', 'Ermera', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('973', '61', 'Lautem', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('974', '61', 'Liquica', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('975', '61', 'Manatuto', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('976', '61', 'Manufahi', 'MF', '1');
INSERT INTO `oc_zone` VALUES ('977', '61', 'Oecussi', 'OE', '1');
INSERT INTO `oc_zone` VALUES ('978', '61', 'Viqueque', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('979', '62', 'Azuay', 'AZU', '1');
INSERT INTO `oc_zone` VALUES ('980', '62', 'Bolivar', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('981', '62', 'Ca&ntilde;ar', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('982', '62', 'Carchi', 'CAR', '1');
INSERT INTO `oc_zone` VALUES ('983', '62', 'Chimborazo', 'CHI', '1');
INSERT INTO `oc_zone` VALUES ('984', '62', 'Cotopaxi', 'COT', '1');
INSERT INTO `oc_zone` VALUES ('985', '62', 'El Oro', 'EOR', '1');
INSERT INTO `oc_zone` VALUES ('986', '62', 'Esmeraldas', 'ESM', '1');
INSERT INTO `oc_zone` VALUES ('987', '62', 'Gal&aacute;pagos', 'GPS', '1');
INSERT INTO `oc_zone` VALUES ('988', '62', 'Guayas', 'GUA', '1');
INSERT INTO `oc_zone` VALUES ('989', '62', 'Imbabura', 'IMB', '1');
INSERT INTO `oc_zone` VALUES ('990', '62', 'Loja', 'LOJ', '1');
INSERT INTO `oc_zone` VALUES ('991', '62', 'Los Rios', 'LRO', '1');
INSERT INTO `oc_zone` VALUES ('992', '62', 'Manab&iacute;', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('993', '62', 'Morona Santiago', 'MSA', '1');
INSERT INTO `oc_zone` VALUES ('994', '62', 'Napo', 'NAP', '1');
INSERT INTO `oc_zone` VALUES ('995', '62', 'Orellana', 'ORE', '1');
INSERT INTO `oc_zone` VALUES ('996', '62', 'Pastaza', 'PAS', '1');
INSERT INTO `oc_zone` VALUES ('997', '62', 'Pichincha', 'PIC', '1');
INSERT INTO `oc_zone` VALUES ('998', '62', 'Sucumb&iacute;os', 'SUC', '1');
INSERT INTO `oc_zone` VALUES ('999', '62', 'Tungurahua', 'TUN', '1');
INSERT INTO `oc_zone` VALUES ('1000', '62', 'Zamora Chinchipe', 'ZCH', '1');
INSERT INTO `oc_zone` VALUES ('1001', '63', 'Ad Daqahliyah', 'DHY', '1');
INSERT INTO `oc_zone` VALUES ('1002', '63', 'Al Bahr al Ahmar', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('1003', '63', 'Al Buhayrah', 'BHY', '1');
INSERT INTO `oc_zone` VALUES ('1004', '63', 'Al Fayyum', 'FYM', '1');
INSERT INTO `oc_zone` VALUES ('1005', '63', 'Al Gharbiyah', 'GBY', '1');
INSERT INTO `oc_zone` VALUES ('1006', '63', 'Al Iskandariyah', 'IDR', '1');
INSERT INTO `oc_zone` VALUES ('1007', '63', 'Al Isma\'iliyah', 'IML', '1');
INSERT INTO `oc_zone` VALUES ('1008', '63', 'Al Jizah', 'JZH', '1');
INSERT INTO `oc_zone` VALUES ('1009', '63', 'Al Minufiyah', 'MFY', '1');
INSERT INTO `oc_zone` VALUES ('1010', '63', 'Al Minya', 'MNY', '1');
INSERT INTO `oc_zone` VALUES ('1011', '63', 'Al Qahirah', 'QHR', '1');
INSERT INTO `oc_zone` VALUES ('1012', '63', 'Al Qalyubiyah', 'QLY', '1');
INSERT INTO `oc_zone` VALUES ('1013', '63', 'Al Wadi al Jadid', 'WJD', '1');
INSERT INTO `oc_zone` VALUES ('1014', '63', 'Ash Sharqiyah', 'SHQ', '1');
INSERT INTO `oc_zone` VALUES ('1015', '63', 'As Suways', 'SWY', '1');
INSERT INTO `oc_zone` VALUES ('1016', '63', 'Aswan', 'ASW', '1');
INSERT INTO `oc_zone` VALUES ('1017', '63', 'Asyut', 'ASY', '1');
INSERT INTO `oc_zone` VALUES ('1018', '63', 'Bani Suwayf', 'BSW', '1');
INSERT INTO `oc_zone` VALUES ('1019', '63', 'Bur Sa\'id', 'BSD', '1');
INSERT INTO `oc_zone` VALUES ('1020', '63', 'Dumyat', 'DMY', '1');
INSERT INTO `oc_zone` VALUES ('1021', '63', 'Janub Sina\'', 'JNS', '1');
INSERT INTO `oc_zone` VALUES ('1022', '63', 'Kafr ash Shaykh', 'KSH', '1');
INSERT INTO `oc_zone` VALUES ('1023', '63', 'Matruh', 'MAT', '1');
INSERT INTO `oc_zone` VALUES ('1024', '63', 'Qina', 'QIN', '1');
INSERT INTO `oc_zone` VALUES ('1025', '63', 'Shamal Sina\'', 'SHS', '1');
INSERT INTO `oc_zone` VALUES ('1026', '63', 'Suhaj', 'SUH', '1');
INSERT INTO `oc_zone` VALUES ('1027', '64', 'Ahuachapan', 'AH', '1');
INSERT INTO `oc_zone` VALUES ('1028', '64', 'Cabanas', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1029', '64', 'Chalatenango', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1030', '64', 'Cuscatlan', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('1031', '64', 'La Libertad', 'LB', '1');
INSERT INTO `oc_zone` VALUES ('1032', '64', 'La Paz', 'PZ', '1');
INSERT INTO `oc_zone` VALUES ('1033', '64', 'La Union', 'UN', '1');
INSERT INTO `oc_zone` VALUES ('1034', '64', 'Morazan', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('1035', '64', 'San Miguel', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1036', '64', 'San Salvador', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('1037', '64', 'San Vicente', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('1038', '64', 'Santa Ana', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1039', '64', 'Sonsonate', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1040', '64', 'Usulutan', 'US', '1');
INSERT INTO `oc_zone` VALUES ('1041', '65', 'Provincia Annobon', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('1042', '65', 'Provincia Bioko Norte', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('1043', '65', 'Provincia Bioko Sur', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1044', '65', 'Provincia Centro Sur', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('1045', '65', 'Provincia Kie-Ntem', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('1046', '65', 'Provincia Litoral', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('1047', '65', 'Provincia Wele-Nzas', 'WN', '1');
INSERT INTO `oc_zone` VALUES ('1048', '66', 'Central (Maekel)', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1049', '66', 'Anseba (Keren)', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1050', '66', 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', '1');
INSERT INTO `oc_zone` VALUES ('1051', '66', 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('1052', '66', 'Southern (Debub)', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('1053', '66', 'Gash-Barka (Barentu)', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('1054', '67', 'Harjumaa (Tallinn)', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1055', '67', 'Hiiumaa (Kardla)', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('1056', '67', 'Ida-Virumaa (Johvi)', 'IV', '1');
INSERT INTO `oc_zone` VALUES ('1057', '67', 'Jarvamaa (Paide)', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1058', '67', 'Jogevamaa (Jogeva)', 'JO', '1');
INSERT INTO `oc_zone` VALUES ('1059', '67', 'Laane-Virumaa (Rakvere)', 'LV', '1');
INSERT INTO `oc_zone` VALUES ('1060', '67', 'Laanemaa (Haapsalu)', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1061', '67', 'Parnumaa (Parnu)', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1062', '67', 'Polvamaa (Polva)', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('1063', '67', 'Raplamaa (Rapla)', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('1064', '67', 'Saaremaa (Kuessaare)', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1065', '67', 'Tartumaa (Tartu)', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('1066', '67', 'Valgamaa (Valga)', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('1067', '67', 'Viljandimaa (Viljandi)', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('1068', '67', 'Vorumaa (Voru)', 'VO', '1');
INSERT INTO `oc_zone` VALUES ('1069', '68', 'Afar', 'AF', '1');
INSERT INTO `oc_zone` VALUES ('1070', '68', 'Amhara', 'AH', '1');
INSERT INTO `oc_zone` VALUES ('1071', '68', 'Benishangul-Gumaz', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('1072', '68', 'Gambela', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('1073', '68', 'Hariai', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('1074', '68', 'Oromia', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('1075', '68', 'Somali', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1076', '68', 'Southern Nations - Nationalities and Peoples Region', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1077', '68', 'Tigray', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('1078', '68', 'Addis Ababa', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('1079', '68', 'Dire Dawa', 'DD', '1');
INSERT INTO `oc_zone` VALUES ('1080', '71', 'Central Division', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1081', '71', 'Northern Division', 'N', '1');
INSERT INTO `oc_zone` VALUES ('1082', '71', 'Eastern Division', 'E', '1');
INSERT INTO `oc_zone` VALUES ('1083', '71', 'Western Division', 'W', '1');
INSERT INTO `oc_zone` VALUES ('1084', '71', 'Rotuma', 'R', '1');
INSERT INTO `oc_zone` VALUES ('1085', '72', 'Ahvenanmaan lääni', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1086', '72', 'Etelä-Suomen lääni', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('1087', '72', 'Itä-Suomen lääni', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('1088', '72', 'Länsi-Suomen lääni', 'LS', '1');
INSERT INTO `oc_zone` VALUES ('1089', '72', 'Lapin lääni', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1090', '72', 'Oulun lääni', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('1114', '74', 'Ain', '01', '1');
INSERT INTO `oc_zone` VALUES ('1115', '74', 'Aisne', '02', '1');
INSERT INTO `oc_zone` VALUES ('1116', '74', 'Allier', '03', '1');
INSERT INTO `oc_zone` VALUES ('1117', '74', 'Alpes de Haute Provence', '04', '1');
INSERT INTO `oc_zone` VALUES ('1118', '74', 'Hautes-Alpes', '05', '1');
INSERT INTO `oc_zone` VALUES ('1119', '74', 'Alpes Maritimes', '06', '1');
INSERT INTO `oc_zone` VALUES ('1120', '74', 'Ard&egrave;che', '07', '1');
INSERT INTO `oc_zone` VALUES ('1121', '74', 'Ardennes', '08', '1');
INSERT INTO `oc_zone` VALUES ('1122', '74', 'Ari&egrave;ge', '09', '1');
INSERT INTO `oc_zone` VALUES ('1123', '74', 'Aube', '10', '1');
INSERT INTO `oc_zone` VALUES ('1124', '74', 'Aude', '11', '1');
INSERT INTO `oc_zone` VALUES ('1125', '74', 'Aveyron', '12', '1');
INSERT INTO `oc_zone` VALUES ('1126', '74', 'Bouches du Rh&ocirc;ne', '13', '1');
INSERT INTO `oc_zone` VALUES ('1127', '74', 'Calvados', '14', '1');
INSERT INTO `oc_zone` VALUES ('1128', '74', 'Cantal', '15', '1');
INSERT INTO `oc_zone` VALUES ('1129', '74', 'Charente', '16', '1');
INSERT INTO `oc_zone` VALUES ('1130', '74', 'Charente Maritime', '17', '1');
INSERT INTO `oc_zone` VALUES ('1131', '74', 'Cher', '18', '1');
INSERT INTO `oc_zone` VALUES ('1132', '74', 'Corr&egrave;ze', '19', '1');
INSERT INTO `oc_zone` VALUES ('1133', '74', 'Corse du Sud', '2A', '1');
INSERT INTO `oc_zone` VALUES ('1134', '74', 'Haute Corse', '2B', '1');
INSERT INTO `oc_zone` VALUES ('1135', '74', 'C&ocirc;te d&#039;or', '21', '1');
INSERT INTO `oc_zone` VALUES ('1136', '74', 'C&ocirc;tes d&#039;Armor', '22', '1');
INSERT INTO `oc_zone` VALUES ('1137', '74', 'Creuse', '23', '1');
INSERT INTO `oc_zone` VALUES ('1138', '74', 'Dordogne', '24', '1');
INSERT INTO `oc_zone` VALUES ('1139', '74', 'Doubs', '25', '1');
INSERT INTO `oc_zone` VALUES ('1140', '74', 'Dr&ocirc;me', '26', '1');
INSERT INTO `oc_zone` VALUES ('1141', '74', 'Eure', '27', '1');
INSERT INTO `oc_zone` VALUES ('1142', '74', 'Eure et Loir', '28', '1');
INSERT INTO `oc_zone` VALUES ('1143', '74', 'Finist&egrave;re', '29', '1');
INSERT INTO `oc_zone` VALUES ('1144', '74', 'Gard', '30', '1');
INSERT INTO `oc_zone` VALUES ('1145', '74', 'Haute Garonne', '31', '1');
INSERT INTO `oc_zone` VALUES ('1146', '74', 'Gers', '32', '1');
INSERT INTO `oc_zone` VALUES ('1147', '74', 'Gironde', '33', '1');
INSERT INTO `oc_zone` VALUES ('1148', '74', 'H&eacute;rault', '34', '1');
INSERT INTO `oc_zone` VALUES ('1149', '74', 'Ille et Vilaine', '35', '1');
INSERT INTO `oc_zone` VALUES ('1150', '74', 'Indre', '36', '1');
INSERT INTO `oc_zone` VALUES ('1151', '74', 'Indre et Loire', '37', '1');
INSERT INTO `oc_zone` VALUES ('1152', '74', 'Is&eacute;re', '38', '1');
INSERT INTO `oc_zone` VALUES ('1153', '74', 'Jura', '39', '1');
INSERT INTO `oc_zone` VALUES ('1154', '74', 'Landes', '40', '1');
INSERT INTO `oc_zone` VALUES ('1155', '74', 'Loir et Cher', '41', '1');
INSERT INTO `oc_zone` VALUES ('1156', '74', 'Loire', '42', '1');
INSERT INTO `oc_zone` VALUES ('1157', '74', 'Haute Loire', '43', '1');
INSERT INTO `oc_zone` VALUES ('1158', '74', 'Loire Atlantique', '44', '1');
INSERT INTO `oc_zone` VALUES ('1159', '74', 'Loiret', '45', '1');
INSERT INTO `oc_zone` VALUES ('1160', '74', 'Lot', '46', '1');
INSERT INTO `oc_zone` VALUES ('1161', '74', 'Lot et Garonne', '47', '1');
INSERT INTO `oc_zone` VALUES ('1162', '74', 'Loz&egrave;re', '48', '1');
INSERT INTO `oc_zone` VALUES ('1163', '74', 'Maine et Loire', '49', '1');
INSERT INTO `oc_zone` VALUES ('1164', '74', 'Manche', '50', '1');
INSERT INTO `oc_zone` VALUES ('1165', '74', 'Marne', '51', '1');
INSERT INTO `oc_zone` VALUES ('1166', '74', 'Haute Marne', '52', '1');
INSERT INTO `oc_zone` VALUES ('1167', '74', 'Mayenne', '53', '1');
INSERT INTO `oc_zone` VALUES ('1168', '74', 'Meurthe et Moselle', '54', '1');
INSERT INTO `oc_zone` VALUES ('1169', '74', 'Meuse', '55', '1');
INSERT INTO `oc_zone` VALUES ('1170', '74', 'Morbihan', '56', '1');
INSERT INTO `oc_zone` VALUES ('1171', '74', 'Moselle', '57', '1');
INSERT INTO `oc_zone` VALUES ('1172', '74', 'Ni&egrave;vre', '58', '1');
INSERT INTO `oc_zone` VALUES ('1173', '74', 'Nord', '59', '1');
INSERT INTO `oc_zone` VALUES ('1174', '74', 'Oise', '60', '1');
INSERT INTO `oc_zone` VALUES ('1175', '74', 'Orne', '61', '1');
INSERT INTO `oc_zone` VALUES ('1176', '74', 'Pas de Calais', '62', '1');
INSERT INTO `oc_zone` VALUES ('1177', '74', 'Puy de D&ocirc;me', '63', '1');
INSERT INTO `oc_zone` VALUES ('1178', '74', 'Pyr&eacute;n&eacute;es Atlantiques', '64', '1');
INSERT INTO `oc_zone` VALUES ('1179', '74', 'Hautes Pyr&eacute;n&eacute;es', '65', '1');
INSERT INTO `oc_zone` VALUES ('1180', '74', 'Pyr&eacute;n&eacute;es Orientales', '66', '1');
INSERT INTO `oc_zone` VALUES ('1181', '74', 'Bas Rhin', '67', '1');
INSERT INTO `oc_zone` VALUES ('1182', '74', 'Haut Rhin', '68', '1');
INSERT INTO `oc_zone` VALUES ('1183', '74', 'Rh&ocirc;ne', '69', '1');
INSERT INTO `oc_zone` VALUES ('1184', '74', 'Haute Sa&ocirc;ne', '70', '1');
INSERT INTO `oc_zone` VALUES ('1185', '74', 'Sa&ocirc;ne et Loire', '71', '1');
INSERT INTO `oc_zone` VALUES ('1186', '74', 'Sarthe', '72', '1');
INSERT INTO `oc_zone` VALUES ('1187', '74', 'Savoie', '73', '1');
INSERT INTO `oc_zone` VALUES ('1188', '74', 'Haute Savoie', '74', '1');
INSERT INTO `oc_zone` VALUES ('1189', '74', 'Paris', '75', '1');
INSERT INTO `oc_zone` VALUES ('1190', '74', 'Seine Maritime', '76', '1');
INSERT INTO `oc_zone` VALUES ('1191', '74', 'Seine et Marne', '77', '1');
INSERT INTO `oc_zone` VALUES ('1192', '74', 'Yvelines', '78', '1');
INSERT INTO `oc_zone` VALUES ('1193', '74', 'Deux S&egrave;vres', '79', '1');
INSERT INTO `oc_zone` VALUES ('1194', '74', 'Somme', '80', '1');
INSERT INTO `oc_zone` VALUES ('1195', '74', 'Tarn', '81', '1');
INSERT INTO `oc_zone` VALUES ('1196', '74', 'Tarn et Garonne', '82', '1');
INSERT INTO `oc_zone` VALUES ('1197', '74', 'Var', '83', '1');
INSERT INTO `oc_zone` VALUES ('1198', '74', 'Vaucluse', '84', '1');
INSERT INTO `oc_zone` VALUES ('1199', '74', 'Vend&eacute;e', '85', '1');
INSERT INTO `oc_zone` VALUES ('1200', '74', 'Vienne', '86', '1');
INSERT INTO `oc_zone` VALUES ('1201', '74', 'Haute Vienne', '87', '1');
INSERT INTO `oc_zone` VALUES ('1202', '74', 'Vosges', '88', '1');
INSERT INTO `oc_zone` VALUES ('1203', '74', 'Yonne', '89', '1');
INSERT INTO `oc_zone` VALUES ('1204', '74', 'Territoire de Belfort', '90', '1');
INSERT INTO `oc_zone` VALUES ('1205', '74', 'Essonne', '91', '1');
INSERT INTO `oc_zone` VALUES ('1206', '74', 'Hauts de Seine', '92', '1');
INSERT INTO `oc_zone` VALUES ('1207', '74', 'Seine St-Denis', '93', '1');
INSERT INTO `oc_zone` VALUES ('1208', '74', 'Val de Marne', '94', '1');
INSERT INTO `oc_zone` VALUES ('1209', '74', 'Val d\'Oise', '95', '1');
INSERT INTO `oc_zone` VALUES ('1210', '76', 'Archipel des Marquises', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1211', '76', 'Archipel des Tuamotu', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1212', '76', 'Archipel des Tubuai', 'I', '1');
INSERT INTO `oc_zone` VALUES ('1213', '76', 'Iles du Vent', 'V', '1');
INSERT INTO `oc_zone` VALUES ('1214', '76', 'Iles Sous-le-Vent', 'S', '1');
INSERT INTO `oc_zone` VALUES ('1215', '77', 'Iles Crozet', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1216', '77', 'Iles Kerguelen', 'K', '1');
INSERT INTO `oc_zone` VALUES ('1217', '77', 'Ile Amsterdam', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1218', '77', 'Ile Saint-Paul', 'P', '1');
INSERT INTO `oc_zone` VALUES ('1219', '77', 'Adelie Land', 'D', '1');
INSERT INTO `oc_zone` VALUES ('1220', '78', 'Estuaire', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('1221', '78', 'Haut-Ogooue', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('1222', '78', 'Moyen-Ogooue', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('1223', '78', 'Ngounie', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('1224', '78', 'Nyanga', 'NY', '1');
INSERT INTO `oc_zone` VALUES ('1225', '78', 'Ogooue-Ivindo', 'OI', '1');
INSERT INTO `oc_zone` VALUES ('1226', '78', 'Ogooue-Lolo', 'OL', '1');
INSERT INTO `oc_zone` VALUES ('1227', '78', 'Ogooue-Maritime', 'OM', '1');
INSERT INTO `oc_zone` VALUES ('1228', '78', 'Woleu-Ntem', 'WN', '1');
INSERT INTO `oc_zone` VALUES ('1229', '79', 'Banjul', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('1230', '79', 'Basse', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1231', '79', 'Brikama', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('1232', '79', 'Janjangbure', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1233', '79', 'Kanifeng', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1234', '79', 'Kerewan', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1235', '79', 'Kuntaur', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1236', '79', 'Mansakonko', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1237', '79', 'Lower River', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('1238', '79', 'Central River', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('1239', '79', 'North Bank', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('1240', '79', 'Upper River', 'UR', '1');
INSERT INTO `oc_zone` VALUES ('1241', '79', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1242', '80', 'Abkhazia', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('1243', '80', 'Ajaria', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1244', '80', 'Tbilisi', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('1245', '80', 'Guria', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1246', '80', 'Imereti', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('1247', '80', 'Kakheti', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1248', '80', 'Kvemo Kartli', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('1249', '80', 'Mtskheta-Mtianeti', 'MM', '1');
INSERT INTO `oc_zone` VALUES ('1250', '80', 'Racha Lechkhumi and Kvemo Svanet', 'RL', '1');
INSERT INTO `oc_zone` VALUES ('1251', '80', 'Samegrelo-Zemo Svaneti', 'SZ', '1');
INSERT INTO `oc_zone` VALUES ('1252', '80', 'Samtskhe-Javakheti', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('1253', '80', 'Shida Kartli', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('1254', '81', 'Baden-Württemberg', 'BAW', '1');
INSERT INTO `oc_zone` VALUES ('1255', '81', 'Bayern', 'BAY', '1');
INSERT INTO `oc_zone` VALUES ('1256', '81', 'Berlin', 'BER', '1');
INSERT INTO `oc_zone` VALUES ('1257', '81', 'Brandenburg', 'BRG', '1');
INSERT INTO `oc_zone` VALUES ('1258', '81', 'Bremen', 'BRE', '1');
INSERT INTO `oc_zone` VALUES ('1259', '81', 'Hamburg', 'HAM', '1');
INSERT INTO `oc_zone` VALUES ('1260', '81', 'Hessen', 'HES', '1');
INSERT INTO `oc_zone` VALUES ('1261', '81', 'Mecklenburg-Vorpommern', 'MEC', '1');
INSERT INTO `oc_zone` VALUES ('1262', '81', 'Niedersachsen', 'NDS', '1');
INSERT INTO `oc_zone` VALUES ('1263', '81', 'Nordrhein-Westfalen', 'NRW', '1');
INSERT INTO `oc_zone` VALUES ('1264', '81', 'Rheinland-Pfalz', 'RHE', '1');
INSERT INTO `oc_zone` VALUES ('1265', '81', 'Saarland', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('1266', '81', 'Sachsen', 'SAS', '1');
INSERT INTO `oc_zone` VALUES ('1267', '81', 'Sachsen-Anhalt', 'SAC', '1');
INSERT INTO `oc_zone` VALUES ('1268', '81', 'Schleswig-Holstein', 'SCN', '1');
INSERT INTO `oc_zone` VALUES ('1269', '81', 'Thüringen', 'THE', '1');
INSERT INTO `oc_zone` VALUES ('1270', '82', 'Ashanti Region', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1271', '82', 'Brong-Ahafo Region', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1272', '82', 'Central Region', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('1273', '82', 'Eastern Region', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('1274', '82', 'Greater Accra Region', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1275', '82', 'Northern Region', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('1276', '82', 'Upper East Region', 'UE', '1');
INSERT INTO `oc_zone` VALUES ('1277', '82', 'Upper West Region', 'UW', '1');
INSERT INTO `oc_zone` VALUES ('1278', '82', 'Volta Region', 'VO', '1');
INSERT INTO `oc_zone` VALUES ('1279', '82', 'Western Region', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1280', '84', 'Attica', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1281', '84', 'Central Greece', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('1282', '84', 'Central Macedonia', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1283', '84', 'Crete', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('1284', '84', 'East Macedonia and Thrace', 'EM', '1');
INSERT INTO `oc_zone` VALUES ('1285', '84', 'Epirus', 'EP', '1');
INSERT INTO `oc_zone` VALUES ('1286', '84', 'Ionian Islands', 'II', '1');
INSERT INTO `oc_zone` VALUES ('1287', '84', 'North Aegean', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1288', '84', 'Peloponnesos', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('1289', '84', 'South Aegean', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1290', '84', 'Thessaly', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('1291', '84', 'West Greece', 'WG', '1');
INSERT INTO `oc_zone` VALUES ('1292', '84', 'West Macedonia', 'WM', '1');
INSERT INTO `oc_zone` VALUES ('1293', '85', 'Avannaa', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1294', '85', 'Tunu', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1295', '85', 'Kitaa', 'K', '1');
INSERT INTO `oc_zone` VALUES ('1296', '86', 'Saint Andrew', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1297', '86', 'Saint David', 'D', '1');
INSERT INTO `oc_zone` VALUES ('1298', '86', 'Saint George', 'G', '1');
INSERT INTO `oc_zone` VALUES ('1299', '86', 'Saint John', 'J', '1');
INSERT INTO `oc_zone` VALUES ('1300', '86', 'Saint Mark', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1301', '86', 'Saint Patrick', 'P', '1');
INSERT INTO `oc_zone` VALUES ('1302', '86', 'Carriacou', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1303', '86', 'Petit Martinique', 'Q', '1');
INSERT INTO `oc_zone` VALUES ('1304', '89', 'Alta Verapaz', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('1305', '89', 'Baja Verapaz', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('1306', '89', 'Chimaltenango', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1307', '89', 'Chiquimula', 'CQ', '1');
INSERT INTO `oc_zone` VALUES ('1308', '89', 'El Peten', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('1309', '89', 'El Progreso', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('1310', '89', 'El Quiche', 'QC', '1');
INSERT INTO `oc_zone` VALUES ('1311', '89', 'Escuintla', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('1312', '89', 'Guatemala', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1313', '89', 'Huehuetenango', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('1314', '89', 'Izabal', 'IZ', '1');
INSERT INTO `oc_zone` VALUES ('1315', '89', 'Jalapa', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1316', '89', 'Jutiapa', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('1317', '89', 'Quetzaltenango', 'QZ', '1');
INSERT INTO `oc_zone` VALUES ('1318', '89', 'Retalhuleu', 'RE', '1');
INSERT INTO `oc_zone` VALUES ('1319', '89', 'Sacatepequez', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('1320', '89', 'San Marcos', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1321', '89', 'Santa Rosa', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('1322', '89', 'Solola', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1323', '89', 'Suchitepequez', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('1324', '89', 'Totonicapan', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('1325', '89', 'Zacapa', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('1326', '90', 'Conakry', 'CNK', '1');
INSERT INTO `oc_zone` VALUES ('1327', '90', 'Beyla', 'BYL', '1');
INSERT INTO `oc_zone` VALUES ('1328', '90', 'Boffa', 'BFA', '1');
INSERT INTO `oc_zone` VALUES ('1329', '90', 'Boke', 'BOK', '1');
INSERT INTO `oc_zone` VALUES ('1330', '90', 'Coyah', 'COY', '1');
INSERT INTO `oc_zone` VALUES ('1331', '90', 'Dabola', 'DBL', '1');
INSERT INTO `oc_zone` VALUES ('1332', '90', 'Dalaba', 'DLB', '1');
INSERT INTO `oc_zone` VALUES ('1333', '90', 'Dinguiraye', 'DGR', '1');
INSERT INTO `oc_zone` VALUES ('1334', '90', 'Dubreka', 'DBR', '1');
INSERT INTO `oc_zone` VALUES ('1335', '90', 'Faranah', 'FRN', '1');
INSERT INTO `oc_zone` VALUES ('1336', '90', 'Forecariah', 'FRC', '1');
INSERT INTO `oc_zone` VALUES ('1337', '90', 'Fria', 'FRI', '1');
INSERT INTO `oc_zone` VALUES ('1338', '90', 'Gaoual', 'GAO', '1');
INSERT INTO `oc_zone` VALUES ('1339', '90', 'Gueckedou', 'GCD', '1');
INSERT INTO `oc_zone` VALUES ('1340', '90', 'Kankan', 'KNK', '1');
INSERT INTO `oc_zone` VALUES ('1341', '90', 'Kerouane', 'KRN', '1');
INSERT INTO `oc_zone` VALUES ('1342', '90', 'Kindia', 'KND', '1');
INSERT INTO `oc_zone` VALUES ('1343', '90', 'Kissidougou', 'KSD', '1');
INSERT INTO `oc_zone` VALUES ('1344', '90', 'Koubia', 'KBA', '1');
INSERT INTO `oc_zone` VALUES ('1345', '90', 'Koundara', 'KDA', '1');
INSERT INTO `oc_zone` VALUES ('1346', '90', 'Kouroussa', 'KRA', '1');
INSERT INTO `oc_zone` VALUES ('1347', '90', 'Labe', 'LAB', '1');
INSERT INTO `oc_zone` VALUES ('1348', '90', 'Lelouma', 'LLM', '1');
INSERT INTO `oc_zone` VALUES ('1349', '90', 'Lola', 'LOL', '1');
INSERT INTO `oc_zone` VALUES ('1350', '90', 'Macenta', 'MCT', '1');
INSERT INTO `oc_zone` VALUES ('1351', '90', 'Mali', 'MAL', '1');
INSERT INTO `oc_zone` VALUES ('1352', '90', 'Mamou', 'MAM', '1');
INSERT INTO `oc_zone` VALUES ('1353', '90', 'Mandiana', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('1354', '90', 'Nzerekore', 'NZR', '1');
INSERT INTO `oc_zone` VALUES ('1355', '90', 'Pita', 'PIT', '1');
INSERT INTO `oc_zone` VALUES ('1356', '90', 'Siguiri', 'SIG', '1');
INSERT INTO `oc_zone` VALUES ('1357', '90', 'Telimele', 'TLM', '1');
INSERT INTO `oc_zone` VALUES ('1358', '90', 'Tougue', 'TOG', '1');
INSERT INTO `oc_zone` VALUES ('1359', '90', 'Yomou', 'YOM', '1');
INSERT INTO `oc_zone` VALUES ('1360', '91', 'Bafata Region', 'BF', '1');
INSERT INTO `oc_zone` VALUES ('1361', '91', 'Biombo Region', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1362', '91', 'Bissau Region', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1363', '91', 'Bolama Region', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('1364', '91', 'Cacheu Region', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1365', '91', 'Gabu Region', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1366', '91', 'Oio Region', 'OI', '1');
INSERT INTO `oc_zone` VALUES ('1367', '91', 'Quinara Region', 'QU', '1');
INSERT INTO `oc_zone` VALUES ('1368', '91', 'Tombali Region', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('1369', '92', 'Barima-Waini', 'BW', '1');
INSERT INTO `oc_zone` VALUES ('1370', '92', 'Cuyuni-Mazaruni', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1371', '92', 'Demerara-Mahaica', 'DM', '1');
INSERT INTO `oc_zone` VALUES ('1372', '92', 'East Berbice-Corentyne', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('1373', '92', 'Essequibo Islands-West Demerara', 'EW', '1');
INSERT INTO `oc_zone` VALUES ('1374', '92', 'Mahaica-Berbice', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('1375', '92', 'Pomeroon-Supenaam', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('1376', '92', 'Potaro-Siparuni', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('1377', '92', 'Upper Demerara-Berbice', 'UD', '1');
INSERT INTO `oc_zone` VALUES ('1378', '92', 'Upper Takutu-Upper Essequibo', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('1379', '93', 'Artibonite', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('1380', '93', 'Centre', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('1381', '93', 'Grand\'Anse', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1382', '93', 'Nord', 'ND', '1');
INSERT INTO `oc_zone` VALUES ('1383', '93', 'Nord-Est', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1384', '93', 'Nord-Ouest', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('1385', '93', 'Ouest', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('1386', '93', 'Sud', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('1387', '93', 'Sud-Est', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('1388', '94', 'Flat Island', 'F', '1');
INSERT INTO `oc_zone` VALUES ('1389', '94', 'McDonald Island', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1390', '94', 'Shag Island', 'S', '1');
INSERT INTO `oc_zone` VALUES ('1391', '94', 'Heard Island', 'H', '1');
INSERT INTO `oc_zone` VALUES ('1392', '95', 'Atlantida', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1393', '95', 'Choluteca', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1394', '95', 'Colon', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('1395', '95', 'Comayagua', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1396', '95', 'Copan', 'CP', '1');
INSERT INTO `oc_zone` VALUES ('1397', '95', 'Cortes', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('1398', '95', 'El Paraiso', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1399', '95', 'Francisco Morazan', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('1400', '95', 'Gracias a Dios', 'GD', '1');
INSERT INTO `oc_zone` VALUES ('1401', '95', 'Intibuca', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('1402', '95', 'Islas de la Bahia (Bay Islands)', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('1403', '95', 'La Paz', 'PZ', '1');
INSERT INTO `oc_zone` VALUES ('1404', '95', 'Lempira', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1405', '95', 'Ocotepeque', 'OC', '1');
INSERT INTO `oc_zone` VALUES ('1406', '95', 'Olancho', 'OL', '1');
INSERT INTO `oc_zone` VALUES ('1407', '95', 'Santa Barbara', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('1408', '95', 'Valle', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('1409', '95', 'Yoro', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('1410', '96', 'Central and Western Hong Kong Island', 'HCW', '1');
INSERT INTO `oc_zone` VALUES ('1411', '96', 'Eastern Hong Kong Island', 'HEA', '1');
INSERT INTO `oc_zone` VALUES ('1412', '96', 'Southern Hong Kong Island', 'HSO', '1');
INSERT INTO `oc_zone` VALUES ('1413', '96', 'Wan Chai Hong Kong Island', 'HWC', '1');
INSERT INTO `oc_zone` VALUES ('1414', '96', 'Kowloon City Kowloon', 'KKC', '1');
INSERT INTO `oc_zone` VALUES ('1415', '96', 'Kwun Tong Kowloon', 'KKT', '1');
INSERT INTO `oc_zone` VALUES ('1416', '96', 'Sham Shui Po Kowloon', 'KSS', '1');
INSERT INTO `oc_zone` VALUES ('1417', '96', 'Wong Tai Sin Kowloon', 'KWT', '1');
INSERT INTO `oc_zone` VALUES ('1418', '96', 'Yau Tsim Mong Kowloon', 'KYT', '1');
INSERT INTO `oc_zone` VALUES ('1419', '96', 'Islands New Territories', 'NIS', '1');
INSERT INTO `oc_zone` VALUES ('1420', '96', 'Kwai Tsing New Territories', 'NKT', '1');
INSERT INTO `oc_zone` VALUES ('1421', '96', 'North New Territories', 'NNO', '1');
INSERT INTO `oc_zone` VALUES ('1422', '96', 'Sai Kung New Territories', 'NSK', '1');
INSERT INTO `oc_zone` VALUES ('1423', '96', 'Sha Tin New Territories', 'NST', '1');
INSERT INTO `oc_zone` VALUES ('1424', '96', 'Tai Po New Territories', 'NTP', '1');
INSERT INTO `oc_zone` VALUES ('1425', '96', 'Tsuen Wan New Territories', 'NTW', '1');
INSERT INTO `oc_zone` VALUES ('1426', '96', 'Tuen Mun New Territories', 'NTM', '1');
INSERT INTO `oc_zone` VALUES ('1427', '96', 'Yuen Long New Territories', 'NYL', '1');
INSERT INTO `oc_zone` VALUES ('1467', '98', 'Austurland', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1468', '98', 'Hofuoborgarsvaeoi', 'HF', '1');
INSERT INTO `oc_zone` VALUES ('1469', '98', 'Norourland eystra', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1470', '98', 'Norourland vestra', 'NV', '1');
INSERT INTO `oc_zone` VALUES ('1471', '98', 'Suourland', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1472', '98', 'Suournes', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1473', '98', 'Vestfiroir', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('1474', '98', 'Vesturland', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('1475', '99', 'Andaman and Nicobar Islands', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('1476', '99', 'Andhra Pradesh', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('1477', '99', 'Arunachal Pradesh', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('1478', '99', 'Assam', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1479', '99', 'Bihar', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('1480', '99', 'Chandigarh', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1481', '99', 'Dadra and Nagar Haveli', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('1482', '99', 'Daman and Diu', 'DM', '1');
INSERT INTO `oc_zone` VALUES ('1483', '99', 'Delhi', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('1484', '99', 'Goa', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('1485', '99', 'Gujarat', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1486', '99', 'Haryana', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1487', '99', 'Himachal Pradesh', 'HP', '1');
INSERT INTO `oc_zone` VALUES ('1488', '99', 'Jammu and Kashmir', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1489', '99', 'Karnataka', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1490', '99', 'Kerala', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1491', '99', 'Lakshadweep Islands', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('1492', '99', 'Madhya Pradesh', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('1493', '99', 'Maharashtra', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1494', '99', 'Manipur', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('1495', '99', 'Meghalaya', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('1496', '99', 'Mizoram', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1497', '99', 'Nagaland', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1498', '99', 'Orissa', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('1499', '99', 'Puducherry', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('1500', '99', 'Punjab', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('1501', '99', 'Rajasthan', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('1502', '99', 'Sikkim', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('1503', '99', 'Tamil Nadu', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('1504', '99', 'Tripura', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('1505', '99', 'Uttar Pradesh', 'UP', '1');
INSERT INTO `oc_zone` VALUES ('1506', '99', 'West Bengal', 'WB', '1');
INSERT INTO `oc_zone` VALUES ('1507', '100', 'Aceh', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('1508', '100', 'Bali', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1509', '100', 'Banten', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('1510', '100', 'Bengkulu', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('1511', '100', 'Kalimantan Utara', 'BD', '1');
INSERT INTO `oc_zone` VALUES ('1512', '100', 'Gorontalo', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('1513', '100', 'Jakarta', 'JK', '1');
INSERT INTO `oc_zone` VALUES ('1514', '100', 'Jambi', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1515', '100', 'Jawa Barat', 'JB', '1');
INSERT INTO `oc_zone` VALUES ('1516', '100', 'Jawa Tengah', 'JT', '1');
INSERT INTO `oc_zone` VALUES ('1517', '100', 'Jawa Timur', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('1518', '100', 'Kalimantan Barat', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('1519', '100', 'Kalimantan Selatan', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('1520', '100', 'Kalimantan Tengah', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('1521', '100', 'Kalimantan Timur', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('1522', '100', 'Kepulauan Bangka Belitung', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1523', '100', 'Lampung', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1524', '100', 'Maluku', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1525', '100', 'Maluku Utara', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('1526', '100', 'Nusa Tenggara Barat', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('1527', '100', 'Nusa Tenggara Timur', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('1528', '100', 'Papua', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1529', '100', 'Riau', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('1530', '100', 'Sulawesi Selatan', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1531', '100', 'Sulawesi Tengah', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('1532', '100', 'Sulawesi Tenggara', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('1533', '100', 'Sulawesi Utara', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1534', '100', 'Sumatera Barat', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('1535', '100', 'Sumatera Selatan', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('1536', '100', 'Sumatera Utara', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('1537', '100', 'Yogyakarta', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('1538', '101', 'Tehran', 'TEH', '1');
INSERT INTO `oc_zone` VALUES ('1539', '101', 'Qom', 'QOM', '1');
INSERT INTO `oc_zone` VALUES ('1540', '101', 'Markazi', 'MKZ', '1');
INSERT INTO `oc_zone` VALUES ('1541', '101', 'Qazvin', 'QAZ', '1');
INSERT INTO `oc_zone` VALUES ('1542', '101', 'Gilan', 'GIL', '1');
INSERT INTO `oc_zone` VALUES ('1543', '101', 'Ardabil', 'ARD', '1');
INSERT INTO `oc_zone` VALUES ('1544', '101', 'Zanjan', 'ZAN', '1');
INSERT INTO `oc_zone` VALUES ('1545', '101', 'East Azarbaijan', 'EAZ', '1');
INSERT INTO `oc_zone` VALUES ('1546', '101', 'West Azarbaijan', 'WEZ', '1');
INSERT INTO `oc_zone` VALUES ('1547', '101', 'Kurdistan', 'KRD', '1');
INSERT INTO `oc_zone` VALUES ('1548', '101', 'Hamadan', 'HMD', '1');
INSERT INTO `oc_zone` VALUES ('1549', '101', 'Kermanshah', 'KRM', '1');
INSERT INTO `oc_zone` VALUES ('1550', '101', 'Ilam', 'ILM', '1');
INSERT INTO `oc_zone` VALUES ('1551', '101', 'Lorestan', 'LRS', '1');
INSERT INTO `oc_zone` VALUES ('1552', '101', 'Khuzestan', 'KZT', '1');
INSERT INTO `oc_zone` VALUES ('1553', '101', 'Chahar Mahaal and Bakhtiari', 'CMB', '1');
INSERT INTO `oc_zone` VALUES ('1554', '101', 'Kohkiluyeh and Buyer Ahmad', 'KBA', '1');
INSERT INTO `oc_zone` VALUES ('1555', '101', 'Bushehr', 'BSH', '1');
INSERT INTO `oc_zone` VALUES ('1556', '101', 'Fars', 'FAR', '1');
INSERT INTO `oc_zone` VALUES ('1557', '101', 'Hormozgan', 'HRM', '1');
INSERT INTO `oc_zone` VALUES ('1558', '101', 'Sistan and Baluchistan', 'SBL', '1');
INSERT INTO `oc_zone` VALUES ('1559', '101', 'Kerman', 'KRB', '1');
INSERT INTO `oc_zone` VALUES ('1560', '101', 'Yazd', 'YZD', '1');
INSERT INTO `oc_zone` VALUES ('1561', '101', 'Esfahan', 'EFH', '1');
INSERT INTO `oc_zone` VALUES ('1562', '101', 'Semnan', 'SMN', '1');
INSERT INTO `oc_zone` VALUES ('1563', '101', 'Mazandaran', 'MZD', '1');
INSERT INTO `oc_zone` VALUES ('1564', '101', 'Golestan', 'GLS', '1');
INSERT INTO `oc_zone` VALUES ('1565', '101', 'North Khorasan', 'NKH', '1');
INSERT INTO `oc_zone` VALUES ('1566', '101', 'Razavi Khorasan', 'RKH', '1');
INSERT INTO `oc_zone` VALUES ('1567', '101', 'South Khorasan', 'SKH', '1');
INSERT INTO `oc_zone` VALUES ('1568', '102', 'Baghdad', 'BD', '1');
INSERT INTO `oc_zone` VALUES ('1569', '102', 'Salah ad Din', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('1570', '102', 'Diyala', 'DY', '1');
INSERT INTO `oc_zone` VALUES ('1571', '102', 'Wasit', 'WS', '1');
INSERT INTO `oc_zone` VALUES ('1572', '102', 'Maysan', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('1573', '102', 'Al Basrah', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1574', '102', 'Dhi Qar', 'DQ', '1');
INSERT INTO `oc_zone` VALUES ('1575', '102', 'Al Muthanna', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('1576', '102', 'Al Qadisyah', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('1577', '102', 'Babil', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1578', '102', 'Al Karbala', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('1579', '102', 'An Najaf', 'NJ', '1');
INSERT INTO `oc_zone` VALUES ('1580', '102', 'Al Anbar', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('1581', '102', 'Ninawa', 'NN', '1');
INSERT INTO `oc_zone` VALUES ('1582', '102', 'Dahuk', 'DH', '1');
INSERT INTO `oc_zone` VALUES ('1583', '102', 'Arbil', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1584', '102', 'At Ta\'mim', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('1585', '102', 'As Sulaymaniyah', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1586', '103', 'Carlow', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1587', '103', 'Cavan', 'CV', '1');
INSERT INTO `oc_zone` VALUES ('1588', '103', 'Clare', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('1589', '103', 'Cork', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('1590', '103', 'Donegal', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('1591', '103', 'Dublin', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('1592', '103', 'Galway', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1593', '103', 'Kerry', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1594', '103', 'Kildare', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('1595', '103', 'Kilkenny', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('1596', '103', 'Laois', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1597', '103', 'Leitrim', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1598', '103', 'Limerick', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('1599', '103', 'Longford', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('1600', '103', 'Louth', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('1601', '103', 'Mayo', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1602', '103', 'Meath', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('1603', '103', 'Monaghan', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('1604', '103', 'Offaly', 'OF', '1');
INSERT INTO `oc_zone` VALUES ('1605', '103', 'Roscommon', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('1606', '103', 'Sligo', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1607', '103', 'Tipperary', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('1608', '103', 'Waterford', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('1609', '103', 'Westmeath', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1610', '103', 'Wexford', 'WX', '1');
INSERT INTO `oc_zone` VALUES ('1611', '103', 'Wicklow', 'WI', '1');
INSERT INTO `oc_zone` VALUES ('1612', '104', 'Be\'er Sheva', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1613', '104', 'Bika\'at Hayarden', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('1614', '104', 'Eilat and Arava', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('1615', '104', 'Galil', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1616', '104', 'Haifa', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1617', '104', 'Jehuda Mountains', 'JM', '1');
INSERT INTO `oc_zone` VALUES ('1618', '104', 'Jerusalem', 'JE', '1');
INSERT INTO `oc_zone` VALUES ('1619', '104', 'Negev', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1620', '104', 'Semaria', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('1621', '104', 'Sharon', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('1622', '104', 'Tel Aviv (Gosh Dan)', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3860', '105', 'Caltanissetta', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('3842', '105', 'Agrigento', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3843', '105', 'Alessandria', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('3844', '105', 'Ancona', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('3845', '105', 'Aosta', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('3846', '105', 'Arezzo', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3847', '105', 'Ascoli Piceno', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('3848', '105', 'Asti', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('3849', '105', 'Avellino', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('3850', '105', 'Bari', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3851', '105', 'Belluno', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('3852', '105', 'Benevento', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('3853', '105', 'Bergamo', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('3854', '105', 'Biella', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('3855', '105', 'Bologna', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('3856', '105', 'Bolzano', 'BZ', '1');
INSERT INTO `oc_zone` VALUES ('3857', '105', 'Brescia', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('3858', '105', 'Brindisi', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('3859', '105', 'Cagliari', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1643', '106', 'Clarendon Parish', 'CLA', '1');
INSERT INTO `oc_zone` VALUES ('1644', '106', 'Hanover Parish', 'HAN', '1');
INSERT INTO `oc_zone` VALUES ('1645', '106', 'Kingston Parish', 'KIN', '1');
INSERT INTO `oc_zone` VALUES ('1646', '106', 'Manchester Parish', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('1647', '106', 'Portland Parish', 'POR', '1');
INSERT INTO `oc_zone` VALUES ('1648', '106', 'Saint Andrew Parish', 'AND', '1');
INSERT INTO `oc_zone` VALUES ('1649', '106', 'Saint Ann Parish', 'ANN', '1');
INSERT INTO `oc_zone` VALUES ('1650', '106', 'Saint Catherine Parish', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('1651', '106', 'Saint Elizabeth Parish', 'ELI', '1');
INSERT INTO `oc_zone` VALUES ('1652', '106', 'Saint James Parish', 'JAM', '1');
INSERT INTO `oc_zone` VALUES ('1653', '106', 'Saint Mary Parish', 'MAR', '1');
INSERT INTO `oc_zone` VALUES ('1654', '106', 'Saint Thomas Parish', 'THO', '1');
INSERT INTO `oc_zone` VALUES ('1655', '106', 'Trelawny Parish', 'TRL', '1');
INSERT INTO `oc_zone` VALUES ('1656', '106', 'Westmoreland Parish', 'WML', '1');
INSERT INTO `oc_zone` VALUES ('1657', '107', 'Aichi', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('1658', '107', 'Akita', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('1659', '107', 'Aomori', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('1660', '107', 'Chiba', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1661', '107', 'Ehime', 'EH', '1');
INSERT INTO `oc_zone` VALUES ('1662', '107', 'Fukui', 'FK', '1');
INSERT INTO `oc_zone` VALUES ('1663', '107', 'Fukuoka', 'FU', '1');
INSERT INTO `oc_zone` VALUES ('1664', '107', 'Fukushima', 'FS', '1');
INSERT INTO `oc_zone` VALUES ('1665', '107', 'Gifu', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('1666', '107', 'Gumma', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1667', '107', 'Hiroshima', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('1668', '107', 'Hokkaido', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('1669', '107', 'Hyogo', 'HY', '1');
INSERT INTO `oc_zone` VALUES ('1670', '107', 'Ibaraki', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('1671', '107', 'Ishikawa', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('1672', '107', 'Iwate', 'IW', '1');
INSERT INTO `oc_zone` VALUES ('1673', '107', 'Kagawa', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1674', '107', 'Kagoshima', 'KG', '1');
INSERT INTO `oc_zone` VALUES ('1675', '107', 'Kanagawa', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('1676', '107', 'Kochi', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('1677', '107', 'Kumamoto', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1678', '107', 'Kyoto', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('1679', '107', 'Mie', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1680', '107', 'Miyagi', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('1681', '107', 'Miyazaki', 'MZ', '1');
INSERT INTO `oc_zone` VALUES ('1682', '107', 'Nagano', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1683', '107', 'Nagasaki', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('1684', '107', 'Nara', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('1685', '107', 'Niigata', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('1686', '107', 'Oita', 'OI', '1');
INSERT INTO `oc_zone` VALUES ('1687', '107', 'Okayama', 'OK', '1');
INSERT INTO `oc_zone` VALUES ('1688', '107', 'Okinawa', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('1689', '107', 'Osaka', 'OS', '1');
INSERT INTO `oc_zone` VALUES ('1690', '107', 'Saga', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1691', '107', 'Saitama', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('1692', '107', 'Shiga', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('1693', '107', 'Shimane', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1694', '107', 'Shizuoka', 'SZ', '1');
INSERT INTO `oc_zone` VALUES ('1695', '107', 'Tochigi', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('1696', '107', 'Tokushima', 'TS', '1');
INSERT INTO `oc_zone` VALUES ('1697', '107', 'Tokyo', 'TK', '1');
INSERT INTO `oc_zone` VALUES ('1698', '107', 'Tottori', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('1699', '107', 'Toyama', 'TY', '1');
INSERT INTO `oc_zone` VALUES ('1700', '107', 'Wakayama', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('1701', '107', 'Yamagata', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('1702', '107', 'Yamaguchi', 'YM', '1');
INSERT INTO `oc_zone` VALUES ('1703', '107', 'Yamanashi', 'YN', '1');
INSERT INTO `oc_zone` VALUES ('1704', '108', '\'Amman', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('1705', '108', 'Ajlun', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1706', '108', 'Al \'Aqabah', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('1707', '108', 'Al Balqa\'', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('1708', '108', 'Al Karak', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('1709', '108', 'Al Mafraq', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1710', '108', 'At Tafilah', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1711', '108', 'Az Zarqa\'', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('1712', '108', 'Irbid', 'IR', '1');
INSERT INTO `oc_zone` VALUES ('1713', '108', 'Jarash', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1714', '108', 'Ma\'an', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1715', '108', 'Madaba', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('1716', '109', 'Almaty', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1717', '109', 'Almaty City', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('1718', '109', 'Aqmola', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('1719', '109', 'Aqtobe', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('1720', '109', 'Astana City', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1721', '109', 'Atyrau', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1722', '109', 'Batys Qazaqstan', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1723', '109', 'Bayqongyr City', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('1724', '109', 'Mangghystau', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1725', '109', 'Ongtustik Qazaqstan', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('1726', '109', 'Pavlodar', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1727', '109', 'Qaraghandy', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('1728', '109', 'Qostanay', 'QO', '1');
INSERT INTO `oc_zone` VALUES ('1729', '109', 'Qyzylorda', 'QY', '1');
INSERT INTO `oc_zone` VALUES ('1730', '109', 'Shyghys Qazaqstan', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('1731', '109', 'Soltustik Qazaqstan', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1732', '109', 'Zhambyl', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('1733', '110', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('1734', '110', 'Coast', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('1735', '110', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('1736', '110', 'Nairobi Area', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1737', '110', 'North Eastern', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1738', '110', 'Nyanza', 'NY', '1');
INSERT INTO `oc_zone` VALUES ('1739', '110', 'Rift Valley', 'RV', '1');
INSERT INTO `oc_zone` VALUES ('1740', '110', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1741', '111', 'Abaiang', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('1742', '111', 'Abemama', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('1743', '111', 'Aranuka', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('1744', '111', 'Arorae', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('1745', '111', 'Banaba', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1746', '111', 'Beru', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('1747', '111', 'Butaritari', 'bT', '1');
INSERT INTO `oc_zone` VALUES ('1748', '111', 'Kanton', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1749', '111', 'Kiritimati', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('1750', '111', 'Kuria', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1751', '111', 'Maiana', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1752', '111', 'Makin', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('1753', '111', 'Marakei', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('1754', '111', 'Nikunau', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('1755', '111', 'Nonouti', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('1756', '111', 'Onotoa', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('1757', '111', 'Tabiteuea', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('1758', '111', 'Tabuaeran', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('1759', '111', 'Tamana', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('1760', '111', 'Tarawa', 'TW', '1');
INSERT INTO `oc_zone` VALUES ('1761', '111', 'Teraina', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('1762', '112', 'Chagang-do', 'CHA', '1');
INSERT INTO `oc_zone` VALUES ('1763', '112', 'Hamgyong-bukto', 'HAB', '1');
INSERT INTO `oc_zone` VALUES ('1764', '112', 'Hamgyong-namdo', 'HAN', '1');
INSERT INTO `oc_zone` VALUES ('1765', '112', 'Hwanghae-bukto', 'HWB', '1');
INSERT INTO `oc_zone` VALUES ('1766', '112', 'Hwanghae-namdo', 'HWN', '1');
INSERT INTO `oc_zone` VALUES ('1767', '112', 'Kangwon-do', 'KAN', '1');
INSERT INTO `oc_zone` VALUES ('1768', '112', 'P\'yongan-bukto', 'PYB', '1');
INSERT INTO `oc_zone` VALUES ('1769', '112', 'P\'yongan-namdo', 'PYN', '1');
INSERT INTO `oc_zone` VALUES ('1770', '112', 'Ryanggang-do (Yanggang-do)', 'YAN', '1');
INSERT INTO `oc_zone` VALUES ('1771', '112', 'Rason Directly Governed City', 'NAJ', '1');
INSERT INTO `oc_zone` VALUES ('1772', '112', 'P\'yongyang Special City', 'PYO', '1');
INSERT INTO `oc_zone` VALUES ('1773', '113', 'Ch\'ungch\'ong-bukto', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('1774', '113', 'Ch\'ungch\'ong-namdo', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1775', '113', 'Cheju-do', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('1776', '113', 'Cholla-bukto', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('1777', '113', 'Cholla-namdo', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('1778', '113', 'Inch\'on-gwangyoksi', 'IG', '1');
INSERT INTO `oc_zone` VALUES ('1779', '113', 'Kangwon-do', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1780', '113', 'Kwangju-gwangyoksi', 'KG', '1');
INSERT INTO `oc_zone` VALUES ('1781', '113', 'Kyonggi-do', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('1782', '113', 'Kyongsang-bukto', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('1783', '113', 'Kyongsang-namdo', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('1784', '113', 'Pusan-gwangyoksi', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('1785', '113', 'Soul-t\'ukpyolsi', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1786', '113', 'Taegu-gwangyoksi', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('1787', '113', 'Taejon-gwangyoksi', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('1788', '114', 'Al \'Asimah', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1789', '114', 'Al Ahmadi', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('1790', '114', 'Al Farwaniyah', 'AF', '1');
INSERT INTO `oc_zone` VALUES ('1791', '114', 'Al Jahra\'', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1792', '114', 'Hawalli', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1793', '115', 'Bishkek', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('1794', '115', 'Batken', 'B', '1');
INSERT INTO `oc_zone` VALUES ('1795', '115', 'Chu', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1796', '115', 'Jalal-Abad', 'J', '1');
INSERT INTO `oc_zone` VALUES ('1797', '115', 'Naryn', 'N', '1');
INSERT INTO `oc_zone` VALUES ('1798', '115', 'Osh', 'O', '1');
INSERT INTO `oc_zone` VALUES ('1799', '115', 'Talas', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1800', '115', 'Ysyk-Kol', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('1801', '116', 'Vientiane', 'VT', '1');
INSERT INTO `oc_zone` VALUES ('1802', '116', 'Attapu', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1803', '116', 'Bokeo', 'BK', '1');
INSERT INTO `oc_zone` VALUES ('1804', '116', 'Bolikhamxai', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('1805', '116', 'Champasak', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1806', '116', 'Houaphan', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('1807', '116', 'Khammouan', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('1808', '116', 'Louang Namtha', 'LM', '1');
INSERT INTO `oc_zone` VALUES ('1809', '116', 'Louangphabang', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('1810', '116', 'Oudomxai', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('1811', '116', 'Phongsali', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('1812', '116', 'Salavan', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1813', '116', 'Savannakhet', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('1814', '116', 'Vientiane', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('1815', '116', 'Xaignabouli', 'XA', '1');
INSERT INTO `oc_zone` VALUES ('1816', '116', 'Xekong', 'XE', '1');
INSERT INTO `oc_zone` VALUES ('1817', '116', 'Xiangkhoang', 'XI', '1');
INSERT INTO `oc_zone` VALUES ('1818', '116', 'Xaisomboun', 'XN', '1');
INSERT INTO `oc_zone` VALUES ('1852', '119', 'Berea', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('1853', '119', 'Butha-Buthe', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1854', '119', 'Leribe', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1855', '119', 'Mafeteng', 'MF', '1');
INSERT INTO `oc_zone` VALUES ('1856', '119', 'Maseru', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('1857', '119', 'Mohale\'s Hoek', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('1858', '119', 'Mokhotlong', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('1859', '119', 'Qacha\'s Nek', 'QN', '1');
INSERT INTO `oc_zone` VALUES ('1860', '119', 'Quthing', 'QT', '1');
INSERT INTO `oc_zone` VALUES ('1861', '119', 'Thaba-Tseka', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('1862', '120', 'Bomi', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('1863', '120', 'Bong', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('1864', '120', 'Grand Bassa', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('1865', '120', 'Grand Cape Mount', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1866', '120', 'Grand Gedeh', 'GG', '1');
INSERT INTO `oc_zone` VALUES ('1867', '120', 'Grand Kru', 'GK', '1');
INSERT INTO `oc_zone` VALUES ('1868', '120', 'Lofa', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('1869', '120', 'Margibi', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('1870', '120', 'Maryland', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('1871', '120', 'Montserrado', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('1872', '120', 'Nimba', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('1873', '120', 'River Cess', 'RC', '1');
INSERT INTO `oc_zone` VALUES ('1874', '120', 'Sinoe', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1875', '121', 'Ajdabiya', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1876', '121', 'Al \'Aziziyah', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('1877', '121', 'Al Fatih', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('1878', '121', 'Al Jabal al Akhdar', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1879', '121', 'Al Jufrah', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('1880', '121', 'Al Khums', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('1881', '121', 'Al Kufrah', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1882', '121', 'An Nuqat al Khams', 'NK', '1');
INSERT INTO `oc_zone` VALUES ('1883', '121', 'Ash Shati\'', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1884', '121', 'Awbari', 'AW', '1');
INSERT INTO `oc_zone` VALUES ('1885', '121', 'Az Zawiyah', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('1886', '121', 'Banghazi', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1887', '121', 'Darnah', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('1888', '121', 'Ghadamis', 'GD', '1');
INSERT INTO `oc_zone` VALUES ('1889', '121', 'Gharyan', 'GY', '1');
INSERT INTO `oc_zone` VALUES ('1890', '121', 'Misratah', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1891', '121', 'Murzuq', 'MZ', '1');
INSERT INTO `oc_zone` VALUES ('1892', '121', 'Sabha', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('1893', '121', 'Sawfajjin', 'SW', '1');
INSERT INTO `oc_zone` VALUES ('1894', '121', 'Surt', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('1895', '121', 'Tarabulus (Tripoli)', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('1896', '121', 'Tarhunah', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('1897', '121', 'Tubruq', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('1898', '121', 'Yafran', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('1899', '121', 'Zlitan', 'ZL', '1');
INSERT INTO `oc_zone` VALUES ('1900', '122', 'Vaduz', 'V', '1');
INSERT INTO `oc_zone` VALUES ('1901', '122', 'Schaan', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1902', '122', 'Balzers', 'B', '1');
INSERT INTO `oc_zone` VALUES ('1903', '122', 'Triesen', 'N', '1');
INSERT INTO `oc_zone` VALUES ('1904', '122', 'Eschen', 'E', '1');
INSERT INTO `oc_zone` VALUES ('1905', '122', 'Mauren', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1906', '122', 'Triesenberg', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1907', '122', 'Ruggell', 'R', '1');
INSERT INTO `oc_zone` VALUES ('1908', '122', 'Gamprin', 'G', '1');
INSERT INTO `oc_zone` VALUES ('1909', '122', 'Schellenberg', 'L', '1');
INSERT INTO `oc_zone` VALUES ('1910', '122', 'Planken', 'P', '1');
INSERT INTO `oc_zone` VALUES ('1911', '123', 'Alytus', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1912', '123', 'Kaunas', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1913', '123', 'Klaipeda', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('1914', '123', 'Marijampole', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1915', '123', 'Panevezys', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1916', '123', 'Siauliai', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('1917', '123', 'Taurage', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('1918', '123', 'Telsiai', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('1919', '123', 'Utena', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('1920', '123', 'Vilnius', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('1921', '124', 'Diekirch', 'DD', '1');
INSERT INTO `oc_zone` VALUES ('1922', '124', 'Clervaux', 'DC', '1');
INSERT INTO `oc_zone` VALUES ('1923', '124', 'Redange', 'DR', '1');
INSERT INTO `oc_zone` VALUES ('1924', '124', 'Vianden', 'DV', '1');
INSERT INTO `oc_zone` VALUES ('1925', '124', 'Wiltz', 'DW', '1');
INSERT INTO `oc_zone` VALUES ('1926', '124', 'Grevenmacher', 'GG', '1');
INSERT INTO `oc_zone` VALUES ('1927', '124', 'Echternach', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('1928', '124', 'Remich', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('1929', '124', 'Luxembourg', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('1930', '124', 'Capellen', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('1931', '124', 'Esch-sur-Alzette', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1932', '124', 'Mersch', 'LM', '1');
INSERT INTO `oc_zone` VALUES ('1933', '125', 'Our Lady Fatima Parish', 'OLF', '1');
INSERT INTO `oc_zone` VALUES ('1934', '125', 'St. Anthony Parish', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('1935', '125', 'St. Lazarus Parish', 'LAZ', '1');
INSERT INTO `oc_zone` VALUES ('1936', '125', 'Cathedral Parish', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('1937', '125', 'St. Lawrence Parish', 'LAW', '1');
INSERT INTO `oc_zone` VALUES ('1938', '127', 'Antananarivo', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('1939', '127', 'Antsiranana', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1940', '127', 'Fianarantsoa', 'FN', '1');
INSERT INTO `oc_zone` VALUES ('1941', '127', 'Mahajanga', 'MJ', '1');
INSERT INTO `oc_zone` VALUES ('1942', '127', 'Toamasina', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('1943', '127', 'Toliara', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('1944', '128', 'Balaka', 'BLK', '1');
INSERT INTO `oc_zone` VALUES ('1945', '128', 'Blantyre', 'BLT', '1');
INSERT INTO `oc_zone` VALUES ('1946', '128', 'Chikwawa', 'CKW', '1');
INSERT INTO `oc_zone` VALUES ('1947', '128', 'Chiradzulu', 'CRD', '1');
INSERT INTO `oc_zone` VALUES ('1948', '128', 'Chitipa', 'CTP', '1');
INSERT INTO `oc_zone` VALUES ('1949', '128', 'Dedza', 'DDZ', '1');
INSERT INTO `oc_zone` VALUES ('1950', '128', 'Dowa', 'DWA', '1');
INSERT INTO `oc_zone` VALUES ('1951', '128', 'Karonga', 'KRG', '1');
INSERT INTO `oc_zone` VALUES ('1952', '128', 'Kasungu', 'KSG', '1');
INSERT INTO `oc_zone` VALUES ('1953', '128', 'Likoma', 'LKM', '1');
INSERT INTO `oc_zone` VALUES ('1954', '128', 'Lilongwe', 'LLG', '1');
INSERT INTO `oc_zone` VALUES ('1955', '128', 'Machinga', 'MCG', '1');
INSERT INTO `oc_zone` VALUES ('1956', '128', 'Mangochi', 'MGC', '1');
INSERT INTO `oc_zone` VALUES ('1957', '128', 'Mchinji', 'MCH', '1');
INSERT INTO `oc_zone` VALUES ('1958', '128', 'Mulanje', 'MLJ', '1');
INSERT INTO `oc_zone` VALUES ('1959', '128', 'Mwanza', 'MWZ', '1');
INSERT INTO `oc_zone` VALUES ('1960', '128', 'Mzimba', 'MZM', '1');
INSERT INTO `oc_zone` VALUES ('1961', '128', 'Ntcheu', 'NTU', '1');
INSERT INTO `oc_zone` VALUES ('1962', '128', 'Nkhata Bay', 'NKB', '1');
INSERT INTO `oc_zone` VALUES ('1963', '128', 'Nkhotakota', 'NKH', '1');
INSERT INTO `oc_zone` VALUES ('1964', '128', 'Nsanje', 'NSJ', '1');
INSERT INTO `oc_zone` VALUES ('1965', '128', 'Ntchisi', 'NTI', '1');
INSERT INTO `oc_zone` VALUES ('1966', '128', 'Phalombe', 'PHL', '1');
INSERT INTO `oc_zone` VALUES ('1967', '128', 'Rumphi', 'RMP', '1');
INSERT INTO `oc_zone` VALUES ('1968', '128', 'Salima', 'SLM', '1');
INSERT INTO `oc_zone` VALUES ('1969', '128', 'Thyolo', 'THY', '1');
INSERT INTO `oc_zone` VALUES ('1970', '128', 'Zomba', 'ZBA', '1');
INSERT INTO `oc_zone` VALUES ('1971', '129', 'Johor', 'MY-01', '1');
INSERT INTO `oc_zone` VALUES ('1972', '129', 'Kedah', 'MY-02', '1');
INSERT INTO `oc_zone` VALUES ('1973', '129', 'Kelantan', 'MY-03', '1');
INSERT INTO `oc_zone` VALUES ('1974', '129', 'Labuan', 'MY-15', '1');
INSERT INTO `oc_zone` VALUES ('1975', '129', 'Melaka', 'MY-04', '1');
INSERT INTO `oc_zone` VALUES ('1976', '129', 'Negeri Sembilan', 'MY-05', '1');
INSERT INTO `oc_zone` VALUES ('1977', '129', 'Pahang', 'MY-06', '1');
INSERT INTO `oc_zone` VALUES ('1978', '129', 'Perak', 'MY-08', '1');
INSERT INTO `oc_zone` VALUES ('1979', '129', 'Perlis', 'MY-09', '1');
INSERT INTO `oc_zone` VALUES ('1980', '129', 'Pulau Pinang', 'MY-07', '1');
INSERT INTO `oc_zone` VALUES ('1981', '129', 'Sabah', 'MY-12', '1');
INSERT INTO `oc_zone` VALUES ('1982', '129', 'Sarawak', 'MY-13', '1');
INSERT INTO `oc_zone` VALUES ('1983', '129', 'Selangor', 'MY-10', '1');
INSERT INTO `oc_zone` VALUES ('1984', '129', 'Terengganu', 'MY-11', '1');
INSERT INTO `oc_zone` VALUES ('1985', '129', 'Kuala Lumpur', 'MY-14', '1');
INSERT INTO `oc_zone` VALUES ('4035', '129', 'Putrajaya', 'MY-16', '1');
INSERT INTO `oc_zone` VALUES ('1986', '130', 'Thiladhunmathi Uthuru', 'THU', '1');
INSERT INTO `oc_zone` VALUES ('1987', '130', 'Thiladhunmathi Dhekunu', 'THD', '1');
INSERT INTO `oc_zone` VALUES ('1988', '130', 'Miladhunmadulu Uthuru', 'MLU', '1');
INSERT INTO `oc_zone` VALUES ('1989', '130', 'Miladhunmadulu Dhekunu', 'MLD', '1');
INSERT INTO `oc_zone` VALUES ('1990', '130', 'Maalhosmadulu Uthuru', 'MAU', '1');
INSERT INTO `oc_zone` VALUES ('1991', '130', 'Maalhosmadulu Dhekunu', 'MAD', '1');
INSERT INTO `oc_zone` VALUES ('1992', '130', 'Faadhippolhu', 'FAA', '1');
INSERT INTO `oc_zone` VALUES ('1993', '130', 'Male Atoll', 'MAA', '1');
INSERT INTO `oc_zone` VALUES ('1994', '130', 'Ari Atoll Uthuru', 'AAU', '1');
INSERT INTO `oc_zone` VALUES ('1995', '130', 'Ari Atoll Dheknu', 'AAD', '1');
INSERT INTO `oc_zone` VALUES ('1996', '130', 'Felidhe Atoll', 'FEA', '1');
INSERT INTO `oc_zone` VALUES ('1997', '130', 'Mulaku Atoll', 'MUA', '1');
INSERT INTO `oc_zone` VALUES ('1998', '130', 'Nilandhe Atoll Uthuru', 'NAU', '1');
INSERT INTO `oc_zone` VALUES ('1999', '130', 'Nilandhe Atoll Dhekunu', 'NAD', '1');
INSERT INTO `oc_zone` VALUES ('2000', '130', 'Kolhumadulu', 'KLH', '1');
INSERT INTO `oc_zone` VALUES ('2001', '130', 'Hadhdhunmathi', 'HDH', '1');
INSERT INTO `oc_zone` VALUES ('2002', '130', 'Huvadhu Atoll Uthuru', 'HAU', '1');
INSERT INTO `oc_zone` VALUES ('2003', '130', 'Huvadhu Atoll Dhekunu', 'HAD', '1');
INSERT INTO `oc_zone` VALUES ('2004', '130', 'Fua Mulaku', 'FMU', '1');
INSERT INTO `oc_zone` VALUES ('2005', '130', 'Addu', 'ADD', '1');
INSERT INTO `oc_zone` VALUES ('2006', '131', 'Gao', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2007', '131', 'Kayes', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('2008', '131', 'Kidal', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('2009', '131', 'Koulikoro', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('2010', '131', 'Mopti', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('2011', '131', 'Segou', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('2012', '131', 'Sikasso', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('2013', '131', 'Tombouctou', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('2014', '131', 'Bamako Capital District', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2015', '132', 'Attard', 'ATT', '1');
INSERT INTO `oc_zone` VALUES ('2016', '132', 'Balzan', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('2017', '132', 'Birgu', 'BGU', '1');
INSERT INTO `oc_zone` VALUES ('2018', '132', 'Birkirkara', 'BKK', '1');
INSERT INTO `oc_zone` VALUES ('2019', '132', 'Birzebbuga', 'BRZ', '1');
INSERT INTO `oc_zone` VALUES ('2020', '132', 'Bormla', 'BOR', '1');
INSERT INTO `oc_zone` VALUES ('2021', '132', 'Dingli', 'DIN', '1');
INSERT INTO `oc_zone` VALUES ('2022', '132', 'Fgura', 'FGU', '1');
INSERT INTO `oc_zone` VALUES ('2023', '132', 'Floriana', 'FLO', '1');
INSERT INTO `oc_zone` VALUES ('2024', '132', 'Gudja', 'GDJ', '1');
INSERT INTO `oc_zone` VALUES ('2025', '132', 'Gzira', 'GZR', '1');
INSERT INTO `oc_zone` VALUES ('2026', '132', 'Gargur', 'GRG', '1');
INSERT INTO `oc_zone` VALUES ('2027', '132', 'Gaxaq', 'GXQ', '1');
INSERT INTO `oc_zone` VALUES ('2028', '132', 'Hamrun', 'HMR', '1');
INSERT INTO `oc_zone` VALUES ('2029', '132', 'Iklin', 'IKL', '1');
INSERT INTO `oc_zone` VALUES ('2030', '132', 'Isla', 'ISL', '1');
INSERT INTO `oc_zone` VALUES ('2031', '132', 'Kalkara', 'KLK', '1');
INSERT INTO `oc_zone` VALUES ('2032', '132', 'Kirkop', 'KRK', '1');
INSERT INTO `oc_zone` VALUES ('2033', '132', 'Lija', 'LIJ', '1');
INSERT INTO `oc_zone` VALUES ('2034', '132', 'Luqa', 'LUQ', '1');
INSERT INTO `oc_zone` VALUES ('2035', '132', 'Marsa', 'MRS', '1');
INSERT INTO `oc_zone` VALUES ('2036', '132', 'Marsaskala', 'MKL', '1');
INSERT INTO `oc_zone` VALUES ('2037', '132', 'Marsaxlokk', 'MXL', '1');
INSERT INTO `oc_zone` VALUES ('2038', '132', 'Mdina', 'MDN', '1');
INSERT INTO `oc_zone` VALUES ('2039', '132', 'Melliea', 'MEL', '1');
INSERT INTO `oc_zone` VALUES ('2040', '132', 'Mgarr', 'MGR', '1');
INSERT INTO `oc_zone` VALUES ('2041', '132', 'Mosta', 'MST', '1');
INSERT INTO `oc_zone` VALUES ('2042', '132', 'Mqabba', 'MQA', '1');
INSERT INTO `oc_zone` VALUES ('2043', '132', 'Msida', 'MSI', '1');
INSERT INTO `oc_zone` VALUES ('2044', '132', 'Mtarfa', 'MTF', '1');
INSERT INTO `oc_zone` VALUES ('2045', '132', 'Naxxar', 'NAX', '1');
INSERT INTO `oc_zone` VALUES ('2046', '132', 'Paola', 'PAO', '1');
INSERT INTO `oc_zone` VALUES ('2047', '132', 'Pembroke', 'PEM', '1');
INSERT INTO `oc_zone` VALUES ('2048', '132', 'Pieta', 'PIE', '1');
INSERT INTO `oc_zone` VALUES ('2049', '132', 'Qormi', 'QOR', '1');
INSERT INTO `oc_zone` VALUES ('2050', '132', 'Qrendi', 'QRE', '1');
INSERT INTO `oc_zone` VALUES ('2051', '132', 'Rabat', 'RAB', '1');
INSERT INTO `oc_zone` VALUES ('2052', '132', 'Safi', 'SAF', '1');
INSERT INTO `oc_zone` VALUES ('2053', '132', 'San Giljan', 'SGI', '1');
INSERT INTO `oc_zone` VALUES ('2054', '132', 'Santa Lucija', 'SLU', '1');
INSERT INTO `oc_zone` VALUES ('2055', '132', 'San Pawl il-Bahar', 'SPB', '1');
INSERT INTO `oc_zone` VALUES ('2056', '132', 'San Gwann', 'SGW', '1');
INSERT INTO `oc_zone` VALUES ('2057', '132', 'Santa Venera', 'SVE', '1');
INSERT INTO `oc_zone` VALUES ('2058', '132', 'Siggiewi', 'SIG', '1');
INSERT INTO `oc_zone` VALUES ('2059', '132', 'Sliema', 'SLM', '1');
INSERT INTO `oc_zone` VALUES ('2060', '132', 'Swieqi', 'SWQ', '1');
INSERT INTO `oc_zone` VALUES ('2061', '132', 'Ta Xbiex', 'TXB', '1');
INSERT INTO `oc_zone` VALUES ('2062', '132', 'Tarxien', 'TRX', '1');
INSERT INTO `oc_zone` VALUES ('2063', '132', 'Valletta', 'VLT', '1');
INSERT INTO `oc_zone` VALUES ('2064', '132', 'Xgajra', 'XGJ', '1');
INSERT INTO `oc_zone` VALUES ('2065', '132', 'Zabbar', 'ZBR', '1');
INSERT INTO `oc_zone` VALUES ('2066', '132', 'Zebbug', 'ZBG', '1');
INSERT INTO `oc_zone` VALUES ('2067', '132', 'Zejtun', 'ZJT', '1');
INSERT INTO `oc_zone` VALUES ('2068', '132', 'Zurrieq', 'ZRQ', '1');
INSERT INTO `oc_zone` VALUES ('2069', '132', 'Fontana', 'FNT', '1');
INSERT INTO `oc_zone` VALUES ('2070', '132', 'Ghajnsielem', 'GHJ', '1');
INSERT INTO `oc_zone` VALUES ('2071', '132', 'Gharb', 'GHR', '1');
INSERT INTO `oc_zone` VALUES ('2072', '132', 'Ghasri', 'GHS', '1');
INSERT INTO `oc_zone` VALUES ('2073', '132', 'Kercem', 'KRC', '1');
INSERT INTO `oc_zone` VALUES ('2074', '132', 'Munxar', 'MUN', '1');
INSERT INTO `oc_zone` VALUES ('2075', '132', 'Nadur', 'NAD', '1');
INSERT INTO `oc_zone` VALUES ('2076', '132', 'Qala', 'QAL', '1');
INSERT INTO `oc_zone` VALUES ('2077', '132', 'Victoria', 'VIC', '1');
INSERT INTO `oc_zone` VALUES ('2078', '132', 'San Lawrenz', 'SLA', '1');
INSERT INTO `oc_zone` VALUES ('2079', '132', 'Sannat', 'SNT', '1');
INSERT INTO `oc_zone` VALUES ('2080', '132', 'Xagra', 'ZAG', '1');
INSERT INTO `oc_zone` VALUES ('2081', '132', 'Xewkija', 'XEW', '1');
INSERT INTO `oc_zone` VALUES ('2082', '132', 'Zebbug', 'ZEB', '1');
INSERT INTO `oc_zone` VALUES ('2083', '133', 'Ailinginae', 'ALG', '1');
INSERT INTO `oc_zone` VALUES ('2084', '133', 'Ailinglaplap', 'ALL', '1');
INSERT INTO `oc_zone` VALUES ('2085', '133', 'Ailuk', 'ALK', '1');
INSERT INTO `oc_zone` VALUES ('2086', '133', 'Arno', 'ARN', '1');
INSERT INTO `oc_zone` VALUES ('2087', '133', 'Aur', 'AUR', '1');
INSERT INTO `oc_zone` VALUES ('2088', '133', 'Bikar', 'BKR', '1');
INSERT INTO `oc_zone` VALUES ('2089', '133', 'Bikini', 'BKN', '1');
INSERT INTO `oc_zone` VALUES ('2090', '133', 'Bokak', 'BKK', '1');
INSERT INTO `oc_zone` VALUES ('2091', '133', 'Ebon', 'EBN', '1');
INSERT INTO `oc_zone` VALUES ('2092', '133', 'Enewetak', 'ENT', '1');
INSERT INTO `oc_zone` VALUES ('2093', '133', 'Erikub', 'EKB', '1');
INSERT INTO `oc_zone` VALUES ('2094', '133', 'Jabat', 'JBT', '1');
INSERT INTO `oc_zone` VALUES ('2095', '133', 'Jaluit', 'JLT', '1');
INSERT INTO `oc_zone` VALUES ('2096', '133', 'Jemo', 'JEM', '1');
INSERT INTO `oc_zone` VALUES ('2097', '133', 'Kili', 'KIL', '1');
INSERT INTO `oc_zone` VALUES ('2098', '133', 'Kwajalein', 'KWJ', '1');
INSERT INTO `oc_zone` VALUES ('2099', '133', 'Lae', 'LAE', '1');
INSERT INTO `oc_zone` VALUES ('2100', '133', 'Lib', 'LIB', '1');
INSERT INTO `oc_zone` VALUES ('2101', '133', 'Likiep', 'LKP', '1');
INSERT INTO `oc_zone` VALUES ('2102', '133', 'Majuro', 'MJR', '1');
INSERT INTO `oc_zone` VALUES ('2103', '133', 'Maloelap', 'MLP', '1');
INSERT INTO `oc_zone` VALUES ('2104', '133', 'Mejit', 'MJT', '1');
INSERT INTO `oc_zone` VALUES ('2105', '133', 'Mili', 'MIL', '1');
INSERT INTO `oc_zone` VALUES ('2106', '133', 'Namorik', 'NMK', '1');
INSERT INTO `oc_zone` VALUES ('2107', '133', 'Namu', 'NAM', '1');
INSERT INTO `oc_zone` VALUES ('2108', '133', 'Rongelap', 'RGL', '1');
INSERT INTO `oc_zone` VALUES ('2109', '133', 'Rongrik', 'RGK', '1');
INSERT INTO `oc_zone` VALUES ('2110', '133', 'Toke', 'TOK', '1');
INSERT INTO `oc_zone` VALUES ('2111', '133', 'Ujae', 'UJA', '1');
INSERT INTO `oc_zone` VALUES ('2112', '133', 'Ujelang', 'UJL', '1');
INSERT INTO `oc_zone` VALUES ('2113', '133', 'Utirik', 'UTK', '1');
INSERT INTO `oc_zone` VALUES ('2114', '133', 'Wotho', 'WTH', '1');
INSERT INTO `oc_zone` VALUES ('2115', '133', 'Wotje', 'WTJ', '1');
INSERT INTO `oc_zone` VALUES ('2116', '135', 'Adrar', 'AD', '1');
INSERT INTO `oc_zone` VALUES ('2117', '135', 'Assaba', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2118', '135', 'Brakna', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2119', '135', 'Dakhlet Nouadhibou', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('2120', '135', 'Gorgol', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('2121', '135', 'Guidimaka', 'GM', '1');
INSERT INTO `oc_zone` VALUES ('2122', '135', 'Hodh Ech Chargui', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('2123', '135', 'Hodh El Gharbi', 'HG', '1');
INSERT INTO `oc_zone` VALUES ('2124', '135', 'Inchiri', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('2125', '135', 'Tagant', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2126', '135', 'Tiris Zemmour', 'TZ', '1');
INSERT INTO `oc_zone` VALUES ('2127', '135', 'Trarza', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2128', '135', 'Nouakchott', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('2129', '136', 'Beau Bassin-Rose Hill', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2130', '136', 'Curepipe', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2131', '136', 'Port Louis', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('2132', '136', 'Quatre Bornes', 'QB', '1');
INSERT INTO `oc_zone` VALUES ('2133', '136', 'Vacoas-Phoenix', 'VP', '1');
INSERT INTO `oc_zone` VALUES ('2134', '136', 'Agalega Islands', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2135', '136', 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2136', '136', 'Rodrigues', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('2137', '136', 'Black River', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('2138', '136', 'Flacq', 'FL', '1');
INSERT INTO `oc_zone` VALUES ('2139', '136', 'Grand Port', 'GP', '1');
INSERT INTO `oc_zone` VALUES ('2140', '136', 'Moka', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2141', '136', 'Pamplemousses', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2142', '136', 'Plaines Wilhems', 'PW', '1');
INSERT INTO `oc_zone` VALUES ('2143', '136', 'Port Louis', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2144', '136', 'Riviere du Rempart', 'RR', '1');
INSERT INTO `oc_zone` VALUES ('2145', '136', 'Savanne', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2146', '138', 'Baja California Norte', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2147', '138', 'Baja California Sur', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('2148', '138', 'Campeche', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2149', '138', 'Chiapas', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('2150', '138', 'Chihuahua', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2151', '138', 'Coahuila de Zaragoza', 'CZ', '1');
INSERT INTO `oc_zone` VALUES ('2152', '138', 'Colima', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2153', '138', 'Distrito Federal', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('2154', '138', 'Durango', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('2155', '138', 'Guanajuato', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2156', '138', 'Guerrero', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2157', '138', 'Hidalgo', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('2158', '138', 'Jalisco', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('2159', '138', 'Mexico', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2160', '138', 'Michoacan de Ocampo', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('2161', '138', 'Morelos', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2162', '138', 'Nayarit', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2163', '138', 'Nuevo Leon', 'NL', '1');
INSERT INTO `oc_zone` VALUES ('2164', '138', 'Oaxaca', 'OA', '1');
INSERT INTO `oc_zone` VALUES ('2165', '138', 'Puebla', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('2166', '138', 'Queretaro de Arteaga', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('2167', '138', 'Quintana Roo', 'QR', '1');
INSERT INTO `oc_zone` VALUES ('2168', '138', 'San Luis Potosi', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2169', '138', 'Sinaloa', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('2170', '138', 'Sonora', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2171', '138', 'Tabasco', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('2172', '138', 'Tamaulipas', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2173', '138', 'Tlaxcala', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('2174', '138', 'Veracruz-Llave', 'VE', '1');
INSERT INTO `oc_zone` VALUES ('2175', '138', 'Yucatan', 'YU', '1');
INSERT INTO `oc_zone` VALUES ('2176', '138', 'Zacatecas', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2177', '139', 'Chuuk', 'C', '1');
INSERT INTO `oc_zone` VALUES ('2178', '139', 'Kosrae', 'K', '1');
INSERT INTO `oc_zone` VALUES ('2179', '139', 'Pohnpei', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2180', '139', 'Yap', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('2181', '140', 'Gagauzia', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2182', '140', 'Chisinau', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2183', '140', 'Balti', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2184', '140', 'Cahul', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2185', '140', 'Edinet', 'ED', '1');
INSERT INTO `oc_zone` VALUES ('2186', '140', 'Lapusna', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('2187', '140', 'Orhei', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('2188', '140', 'Soroca', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2189', '140', 'Tighina', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('2190', '140', 'Ungheni', 'UN', '1');
INSERT INTO `oc_zone` VALUES ('2191', '140', 'St‚nga Nistrului', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('2192', '141', 'Fontvieille', 'FV', '1');
INSERT INTO `oc_zone` VALUES ('2193', '141', 'La Condamine', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('2194', '141', 'Monaco-Ville', 'MV', '1');
INSERT INTO `oc_zone` VALUES ('2195', '141', 'Monte-Carlo', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('2196', '142', 'Ulanbaatar', '1', '1');
INSERT INTO `oc_zone` VALUES ('2197', '142', 'Orhon', '035', '1');
INSERT INTO `oc_zone` VALUES ('2198', '142', 'Darhan uul', '037', '1');
INSERT INTO `oc_zone` VALUES ('2199', '142', 'Hentiy', '039', '1');
INSERT INTO `oc_zone` VALUES ('2200', '142', 'Hovsgol', '041', '1');
INSERT INTO `oc_zone` VALUES ('2201', '142', 'Hovd', '043', '1');
INSERT INTO `oc_zone` VALUES ('2202', '142', 'Uvs', '046', '1');
INSERT INTO `oc_zone` VALUES ('2203', '142', 'Tov', '047', '1');
INSERT INTO `oc_zone` VALUES ('2204', '142', 'Selenge', '049', '1');
INSERT INTO `oc_zone` VALUES ('2205', '142', 'Suhbaatar', '051', '1');
INSERT INTO `oc_zone` VALUES ('2206', '142', 'Omnogovi', '053', '1');
INSERT INTO `oc_zone` VALUES ('2207', '142', 'Ovorhangay', '055', '1');
INSERT INTO `oc_zone` VALUES ('2208', '142', 'Dzavhan', '057', '1');
INSERT INTO `oc_zone` VALUES ('2209', '142', 'DundgovL', '059', '1');
INSERT INTO `oc_zone` VALUES ('2210', '142', 'Dornod', '061', '1');
INSERT INTO `oc_zone` VALUES ('2211', '142', 'Dornogov', '063', '1');
INSERT INTO `oc_zone` VALUES ('2212', '142', 'Govi-Sumber', '064', '1');
INSERT INTO `oc_zone` VALUES ('2213', '142', 'Govi-Altay', '065', '1');
INSERT INTO `oc_zone` VALUES ('2214', '142', 'Bulgan', '067', '1');
INSERT INTO `oc_zone` VALUES ('2215', '142', 'Bayanhongor', '069', '1');
INSERT INTO `oc_zone` VALUES ('2216', '142', 'Bayan-Olgiy', '071', '1');
INSERT INTO `oc_zone` VALUES ('2217', '142', 'Arhangay', '073', '1');
INSERT INTO `oc_zone` VALUES ('2218', '143', 'Saint Anthony', 'A', '1');
INSERT INTO `oc_zone` VALUES ('2219', '143', 'Saint Georges', 'G', '1');
INSERT INTO `oc_zone` VALUES ('2220', '143', 'Saint Peter', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2221', '144', 'Agadir', 'AGD', '1');
INSERT INTO `oc_zone` VALUES ('2222', '144', 'Al Hoceima', 'HOC', '1');
INSERT INTO `oc_zone` VALUES ('2223', '144', 'Azilal', 'AZI', '1');
INSERT INTO `oc_zone` VALUES ('2224', '144', 'Beni Mellal', 'BME', '1');
INSERT INTO `oc_zone` VALUES ('2225', '144', 'Ben Slimane', 'BSL', '1');
INSERT INTO `oc_zone` VALUES ('2226', '144', 'Boulemane', 'BLM', '1');
INSERT INTO `oc_zone` VALUES ('2227', '144', 'Casablanca', 'CBL', '1');
INSERT INTO `oc_zone` VALUES ('2228', '144', 'Chaouen', 'CHA', '1');
INSERT INTO `oc_zone` VALUES ('2229', '144', 'El Jadida', 'EJA', '1');
INSERT INTO `oc_zone` VALUES ('2230', '144', 'El Kelaa des Sraghna', 'EKS', '1');
INSERT INTO `oc_zone` VALUES ('2231', '144', 'Er Rachidia', 'ERA', '1');
INSERT INTO `oc_zone` VALUES ('2232', '144', 'Essaouira', 'ESS', '1');
INSERT INTO `oc_zone` VALUES ('2233', '144', 'Fes', 'FES', '1');
INSERT INTO `oc_zone` VALUES ('2234', '144', 'Figuig', 'FIG', '1');
INSERT INTO `oc_zone` VALUES ('2235', '144', 'Guelmim', 'GLM', '1');
INSERT INTO `oc_zone` VALUES ('2236', '144', 'Ifrane', 'IFR', '1');
INSERT INTO `oc_zone` VALUES ('2237', '144', 'Kenitra', 'KEN', '1');
INSERT INTO `oc_zone` VALUES ('2238', '144', 'Khemisset', 'KHM', '1');
INSERT INTO `oc_zone` VALUES ('2239', '144', 'Khenifra', 'KHN', '1');
INSERT INTO `oc_zone` VALUES ('2240', '144', 'Khouribga', 'KHO', '1');
INSERT INTO `oc_zone` VALUES ('2241', '144', 'Laayoune', 'LYN', '1');
INSERT INTO `oc_zone` VALUES ('2242', '144', 'Larache', 'LAR', '1');
INSERT INTO `oc_zone` VALUES ('2243', '144', 'Marrakech', 'MRK', '1');
INSERT INTO `oc_zone` VALUES ('2244', '144', 'Meknes', 'MKN', '1');
INSERT INTO `oc_zone` VALUES ('2245', '144', 'Nador', 'NAD', '1');
INSERT INTO `oc_zone` VALUES ('2246', '144', 'Ouarzazate', 'ORZ', '1');
INSERT INTO `oc_zone` VALUES ('2247', '144', 'Oujda', 'OUJ', '1');
INSERT INTO `oc_zone` VALUES ('2248', '144', 'Rabat-Sale', 'RSA', '1');
INSERT INTO `oc_zone` VALUES ('2249', '144', 'Safi', 'SAF', '1');
INSERT INTO `oc_zone` VALUES ('2250', '144', 'Settat', 'SET', '1');
INSERT INTO `oc_zone` VALUES ('2251', '144', 'Sidi Kacem', 'SKA', '1');
INSERT INTO `oc_zone` VALUES ('2252', '144', 'Tangier', 'TGR', '1');
INSERT INTO `oc_zone` VALUES ('2253', '144', 'Tan-Tan', 'TAN', '1');
INSERT INTO `oc_zone` VALUES ('2254', '144', 'Taounate', 'TAO', '1');
INSERT INTO `oc_zone` VALUES ('2255', '144', 'Taroudannt', 'TRD', '1');
INSERT INTO `oc_zone` VALUES ('2256', '144', 'Tata', 'TAT', '1');
INSERT INTO `oc_zone` VALUES ('2257', '144', 'Taza', 'TAZ', '1');
INSERT INTO `oc_zone` VALUES ('2258', '144', 'Tetouan', 'TET', '1');
INSERT INTO `oc_zone` VALUES ('2259', '144', 'Tiznit', 'TIZ', '1');
INSERT INTO `oc_zone` VALUES ('2260', '144', 'Ad Dakhla', 'ADK', '1');
INSERT INTO `oc_zone` VALUES ('2261', '144', 'Boujdour', 'BJD', '1');
INSERT INTO `oc_zone` VALUES ('2262', '144', 'Es Smara', 'ESM', '1');
INSERT INTO `oc_zone` VALUES ('2263', '145', 'Cabo Delgado', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2264', '145', 'Gaza', 'GZ', '1');
INSERT INTO `oc_zone` VALUES ('2265', '145', 'Inhambane', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('2266', '145', 'Manica', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2267', '145', 'Maputo (city)', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('2268', '145', 'Maputo', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('2269', '145', 'Nampula', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2270', '145', 'Niassa', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2271', '145', 'Sofala', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2272', '145', 'Tete', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('2273', '145', 'Zambezia', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2274', '146', 'Ayeyarwady', 'AY', '1');
INSERT INTO `oc_zone` VALUES ('2275', '146', 'Bago', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('2276', '146', 'Magway', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('2277', '146', 'Mandalay', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2278', '146', 'Sagaing', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('2279', '146', 'Tanintharyi', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('2280', '146', 'Yangon', 'YG', '1');
INSERT INTO `oc_zone` VALUES ('2281', '146', 'Chin State', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2282', '146', 'Kachin State', 'KC', '1');
INSERT INTO `oc_zone` VALUES ('2283', '146', 'Kayah State', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('2284', '146', 'Kayin State', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('2285', '146', 'Mon State', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2286', '146', 'Rakhine State', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('2287', '146', 'Shan State', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2288', '147', 'Caprivi', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2289', '147', 'Erongo', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('2290', '147', 'Hardap', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('2291', '147', 'Karas', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2292', '147', 'Kavango', 'KV', '1');
INSERT INTO `oc_zone` VALUES ('2293', '147', 'Khomas', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('2294', '147', 'Kunene', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('2295', '147', 'Ohangwena', 'OW', '1');
INSERT INTO `oc_zone` VALUES ('2296', '147', 'Omaheke', 'OK', '1');
INSERT INTO `oc_zone` VALUES ('2297', '147', 'Omusati', 'OT', '1');
INSERT INTO `oc_zone` VALUES ('2298', '147', 'Oshana', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('2299', '147', 'Oshikoto', 'OO', '1');
INSERT INTO `oc_zone` VALUES ('2300', '147', 'Otjozondjupa', 'OJ', '1');
INSERT INTO `oc_zone` VALUES ('2301', '148', 'Aiwo', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('2302', '148', 'Anabar', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('2303', '148', 'Anetan', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('2304', '148', 'Anibare', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('2305', '148', 'Baiti', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2306', '148', 'Boe', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2307', '148', 'Buada', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2308', '148', 'Denigomodu', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('2309', '148', 'Ewa', 'EW', '1');
INSERT INTO `oc_zone` VALUES ('2310', '148', 'Ijuw', 'IJ', '1');
INSERT INTO `oc_zone` VALUES ('2311', '148', 'Meneng', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2312', '148', 'Nibok', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2313', '148', 'Uaboe', 'UA', '1');
INSERT INTO `oc_zone` VALUES ('2314', '148', 'Yaren', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('2315', '149', 'Bagmati', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2316', '149', 'Bheri', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('2317', '149', 'Dhawalagiri', 'DH', '1');
INSERT INTO `oc_zone` VALUES ('2318', '149', 'Gandaki', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2319', '149', 'Janakpur', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('2320', '149', 'Karnali', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2321', '149', 'Kosi', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2322', '149', 'Lumbini', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('2323', '149', 'Mahakali', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2324', '149', 'Mechi', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2325', '149', 'Narayani', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2326', '149', 'Rapti', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('2327', '149', 'Sagarmatha', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2328', '149', 'Seti', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('2329', '150', 'Drenthe', 'DR', '1');
INSERT INTO `oc_zone` VALUES ('2330', '150', 'Flevoland', 'FL', '1');
INSERT INTO `oc_zone` VALUES ('2331', '150', 'Friesland', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('2332', '150', 'Gelderland', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2333', '150', 'Groningen', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2334', '150', 'Limburg', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('2335', '150', 'Noord-Brabant', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('2336', '150', 'Noord-Holland', 'NH', '1');
INSERT INTO `oc_zone` VALUES ('2337', '150', 'Overijssel', 'OV', '1');
INSERT INTO `oc_zone` VALUES ('2338', '150', 'Utrecht', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('2339', '150', 'Zeeland', 'ZE', '1');
INSERT INTO `oc_zone` VALUES ('2340', '150', 'Zuid-Holland', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('2341', '152', 'Iles Loyaute', 'L', '1');
INSERT INTO `oc_zone` VALUES ('2342', '152', 'Nord', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2343', '152', 'Sud', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2344', '153', 'Auckland', 'AUK', '1');
INSERT INTO `oc_zone` VALUES ('2345', '153', 'Bay of Plenty', 'BOP', '1');
INSERT INTO `oc_zone` VALUES ('2346', '153', 'Canterbury', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('2347', '153', 'Coromandel', 'COR', '1');
INSERT INTO `oc_zone` VALUES ('2348', '153', 'Gisborne', 'GIS', '1');
INSERT INTO `oc_zone` VALUES ('2349', '153', 'Fiordland', 'FIO', '1');
INSERT INTO `oc_zone` VALUES ('2350', '153', 'Hawke\'s Bay', 'HKB', '1');
INSERT INTO `oc_zone` VALUES ('2351', '153', 'Marlborough', 'MBH', '1');
INSERT INTO `oc_zone` VALUES ('2352', '153', 'Manawatu-Wanganui', 'MWT', '1');
INSERT INTO `oc_zone` VALUES ('2353', '153', 'Mt Cook-Mackenzie', 'MCM', '1');
INSERT INTO `oc_zone` VALUES ('2354', '153', 'Nelson', 'NSN', '1');
INSERT INTO `oc_zone` VALUES ('2355', '153', 'Northland', 'NTL', '1');
INSERT INTO `oc_zone` VALUES ('2356', '153', 'Otago', 'OTA', '1');
INSERT INTO `oc_zone` VALUES ('2357', '153', 'Southland', 'STL', '1');
INSERT INTO `oc_zone` VALUES ('2358', '153', 'Taranaki', 'TKI', '1');
INSERT INTO `oc_zone` VALUES ('2359', '153', 'Wellington', 'WGN', '1');
INSERT INTO `oc_zone` VALUES ('2360', '153', 'Waikato', 'WKO', '1');
INSERT INTO `oc_zone` VALUES ('2361', '153', 'Wairarapa', 'WAI', '1');
INSERT INTO `oc_zone` VALUES ('2362', '153', 'West Coast', 'WTC', '1');
INSERT INTO `oc_zone` VALUES ('2363', '154', 'Atlantico Norte', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2364', '154', 'Atlantico Sur', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2365', '154', 'Boaco', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2366', '154', 'Carazo', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2367', '154', 'Chinandega', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('2368', '154', 'Chontales', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('2369', '154', 'Esteli', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('2370', '154', 'Granada', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2371', '154', 'Jinotega', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('2372', '154', 'Leon', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('2373', '154', 'Madriz', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2374', '154', 'Managua', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2375', '154', 'Masaya', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('2376', '154', 'Matagalpa', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('2377', '154', 'Nuevo Segovia', 'NS', '1');
INSERT INTO `oc_zone` VALUES ('2378', '154', 'Rio San Juan', 'RS', '1');
INSERT INTO `oc_zone` VALUES ('2379', '154', 'Rivas', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('2380', '155', 'Agadez', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2381', '155', 'Diffa', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('2382', '155', 'Dosso', 'DS', '1');
INSERT INTO `oc_zone` VALUES ('2383', '155', 'Maradi', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2384', '155', 'Niamey', 'NM', '1');
INSERT INTO `oc_zone` VALUES ('2385', '155', 'Tahoua', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('2386', '155', 'Tillaberi', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('2387', '155', 'Zinder', 'ZD', '1');
INSERT INTO `oc_zone` VALUES ('2388', '156', 'Abia', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2389', '156', 'Abuja Federal Capital Territory', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('2390', '156', 'Adamawa', 'AD', '1');
INSERT INTO `oc_zone` VALUES ('2391', '156', 'Akwa Ibom', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('2392', '156', 'Anambra', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2393', '156', 'Bauchi', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('2394', '156', 'Bayelsa', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('2395', '156', 'Benue', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2396', '156', 'Borno', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2397', '156', 'Cross River', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('2398', '156', 'Delta', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('2399', '156', 'Ebonyi', 'EB', '1');
INSERT INTO `oc_zone` VALUES ('2400', '156', 'Edo', 'ED', '1');
INSERT INTO `oc_zone` VALUES ('2401', '156', 'Ekiti', 'EK', '1');
INSERT INTO `oc_zone` VALUES ('2402', '156', 'Enugu', 'EN', '1');
INSERT INTO `oc_zone` VALUES ('2403', '156', 'Gombe', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('2404', '156', 'Imo', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('2405', '156', 'Jigawa', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('2406', '156', 'Kaduna', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('2407', '156', 'Kano', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('2408', '156', 'Katsina', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('2409', '156', 'Kebbi', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('2410', '156', 'Kogi', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2411', '156', 'Kwara', 'KW', '1');
INSERT INTO `oc_zone` VALUES ('2412', '156', 'Lagos', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('2413', '156', 'Nassarawa', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2414', '156', 'Niger', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2415', '156', 'Ogun', 'OG', '1');
INSERT INTO `oc_zone` VALUES ('2416', '156', 'Ondo', 'ONG', '1');
INSERT INTO `oc_zone` VALUES ('2417', '156', 'Osun', 'OS', '1');
INSERT INTO `oc_zone` VALUES ('2418', '156', 'Oyo', 'OY', '1');
INSERT INTO `oc_zone` VALUES ('2419', '156', 'Plateau', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2420', '156', 'Rivers', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('2421', '156', 'Sokoto', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2422', '156', 'Taraba', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2423', '156', 'Yobe', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('2424', '156', 'Zamfara', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2425', '159', 'Northern Islands', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2426', '159', 'Rota', 'R', '1');
INSERT INTO `oc_zone` VALUES ('2427', '159', 'Saipan', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2428', '159', 'Tinian', 'T', '1');
INSERT INTO `oc_zone` VALUES ('2429', '160', 'Akershus', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('2430', '160', 'Aust-Agder', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('2431', '160', 'Buskerud', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2432', '160', 'Finnmark', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('2433', '160', 'Hedmark', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('2434', '160', 'Hordaland', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('2435', '160', 'More og Romdal', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('2436', '160', 'Nord-Trondelag', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('2437', '160', 'Nordland', 'NL', '1');
INSERT INTO `oc_zone` VALUES ('2438', '160', 'Ostfold', 'OF', '1');
INSERT INTO `oc_zone` VALUES ('2439', '160', 'Oppland', 'OP', '1');
INSERT INTO `oc_zone` VALUES ('2440', '160', 'Oslo', 'OL', '1');
INSERT INTO `oc_zone` VALUES ('2441', '160', 'Rogaland', 'RL', '1');
INSERT INTO `oc_zone` VALUES ('2442', '160', 'Sor-Trondelag', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('2443', '160', 'Sogn og Fjordane', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('2444', '160', 'Svalbard', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('2445', '160', 'Telemark', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2446', '160', 'Troms', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2447', '160', 'Vest-Agder', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('2448', '160', 'Vestfold', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('2449', '161', 'Ad Dakhiliyah', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2450', '161', 'Al Batinah', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2451', '161', 'Al Wusta', 'WU', '1');
INSERT INTO `oc_zone` VALUES ('2452', '161', 'Ash Sharqiyah', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2453', '161', 'Az Zahirah', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2454', '161', 'Masqat', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2455', '161', 'Musandam', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('2456', '161', 'Zufar', 'ZU', '1');
INSERT INTO `oc_zone` VALUES ('2457', '162', 'Balochistan', 'B', '1');
INSERT INTO `oc_zone` VALUES ('2458', '162', 'Federally Administered Tribal Areas', 'T', '1');
INSERT INTO `oc_zone` VALUES ('2459', '162', 'Islamabad Capital Territory', 'I', '1');
INSERT INTO `oc_zone` VALUES ('2460', '162', 'North-West Frontier', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2461', '162', 'Punjab', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2462', '162', 'Sindh', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2463', '163', 'Aimeliik', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2464', '163', 'Airai', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2465', '163', 'Angaur', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2466', '163', 'Hatohobei', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('2467', '163', 'Kayangel', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2468', '163', 'Koror', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2469', '163', 'Melekeok', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2470', '163', 'Ngaraard', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2471', '163', 'Ngarchelong', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('2472', '163', 'Ngardmau', 'ND', '1');
INSERT INTO `oc_zone` VALUES ('2473', '163', 'Ngatpang', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('2474', '163', 'Ngchesar', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('2475', '163', 'Ngeremlengui', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('2476', '163', 'Ngiwal', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('2477', '163', 'Peleliu', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('2478', '163', 'Sonsorol', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2479', '164', 'Bocas del Toro', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('2480', '164', 'Chiriqui', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2481', '164', 'Cocle', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2482', '164', 'Colon', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2483', '164', 'Darien', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2484', '164', 'Herrera', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('2485', '164', 'Los Santos', 'LS', '1');
INSERT INTO `oc_zone` VALUES ('2486', '164', 'Panama', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2487', '164', 'San Blas', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('2488', '164', 'Veraguas', 'VG', '1');
INSERT INTO `oc_zone` VALUES ('2489', '165', 'Bougainville', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('2490', '165', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2491', '165', 'Chimbu', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2492', '165', 'Eastern Highlands', 'EH', '1');
INSERT INTO `oc_zone` VALUES ('2493', '165', 'East New Britain', 'EB', '1');
INSERT INTO `oc_zone` VALUES ('2494', '165', 'East Sepik', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('2495', '165', 'Enga', 'EN', '1');
INSERT INTO `oc_zone` VALUES ('2496', '165', 'Gulf', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('2497', '165', 'Madang', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2498', '165', 'Manus', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2499', '165', 'Milne Bay', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('2500', '165', 'Morobe', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('2501', '165', 'National Capital', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('2502', '165', 'New Ireland', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2503', '165', 'Northern', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('2504', '165', 'Sandaun', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2505', '165', 'Southern Highlands', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2506', '165', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('2507', '165', 'Western Highlands', 'WH', '1');
INSERT INTO `oc_zone` VALUES ('2508', '165', 'West New Britain', 'WB', '1');
INSERT INTO `oc_zone` VALUES ('2509', '166', 'Alto Paraguay', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2510', '166', 'Alto Parana', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2511', '166', 'Amambay', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2512', '166', 'Asuncion', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2513', '166', 'Boqueron', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2514', '166', 'Caaguazu', 'CG', '1');
INSERT INTO `oc_zone` VALUES ('2515', '166', 'Caazapa', 'CZ', '1');
INSERT INTO `oc_zone` VALUES ('2516', '166', 'Canindeyu', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('2517', '166', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2518', '166', 'Concepcion', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2519', '166', 'Cordillera', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2520', '166', 'Guaira', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('2521', '166', 'Itapua', 'IT', '1');
INSERT INTO `oc_zone` VALUES ('2522', '166', 'Misiones', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('2523', '166', 'Neembucu', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('2524', '166', 'Paraguari', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2525', '166', 'Presidente Hayes', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('2526', '166', 'San Pedro', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('2527', '167', 'Amazonas', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2528', '167', 'Ancash', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2529', '167', 'Apurimac', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('2530', '167', 'Arequipa', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2531', '167', 'Ayacucho', 'AY', '1');
INSERT INTO `oc_zone` VALUES ('2532', '167', 'Cajamarca', 'CJ', '1');
INSERT INTO `oc_zone` VALUES ('2533', '167', 'Callao', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2534', '167', 'Cusco', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2535', '167', 'Huancavelica', 'HV', '1');
INSERT INTO `oc_zone` VALUES ('2536', '167', 'Huanuco', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('2537', '167', 'Ica', 'IC', '1');
INSERT INTO `oc_zone` VALUES ('2538', '167', 'Junin', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('2539', '167', 'La Libertad', 'LD', '1');
INSERT INTO `oc_zone` VALUES ('2540', '167', 'Lambayeque', 'LY', '1');
INSERT INTO `oc_zone` VALUES ('2541', '167', 'Lima', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('2542', '167', 'Loreto', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('2543', '167', 'Madre de Dios', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2544', '167', 'Moquegua', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2545', '167', 'Pasco', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2546', '167', 'Piura', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('2547', '167', 'Puno', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('2548', '167', 'San Martin', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2549', '167', 'Tacna', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2550', '167', 'Tumbes', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('2551', '167', 'Ucayali', 'UC', '1');
INSERT INTO `oc_zone` VALUES ('2552', '168', 'Abra', 'ABR', '1');
INSERT INTO `oc_zone` VALUES ('2553', '168', 'Agusan del Norte', 'ANO', '1');
INSERT INTO `oc_zone` VALUES ('2554', '168', 'Agusan del Sur', 'ASU', '1');
INSERT INTO `oc_zone` VALUES ('2555', '168', 'Aklan', 'AKL', '1');
INSERT INTO `oc_zone` VALUES ('2556', '168', 'Albay', 'ALB', '1');
INSERT INTO `oc_zone` VALUES ('2557', '168', 'Antique', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('2558', '168', 'Apayao', 'APY', '1');
INSERT INTO `oc_zone` VALUES ('2559', '168', 'Aurora', 'AUR', '1');
INSERT INTO `oc_zone` VALUES ('2560', '168', 'Basilan', 'BAS', '1');
INSERT INTO `oc_zone` VALUES ('2561', '168', 'Bataan', 'BTA', '1');
INSERT INTO `oc_zone` VALUES ('2562', '168', 'Batanes', 'BTE', '1');
INSERT INTO `oc_zone` VALUES ('2563', '168', 'Batangas', 'BTG', '1');
INSERT INTO `oc_zone` VALUES ('2564', '168', 'Biliran', 'BLR', '1');
INSERT INTO `oc_zone` VALUES ('2565', '168', 'Benguet', 'BEN', '1');
INSERT INTO `oc_zone` VALUES ('2566', '168', 'Bohol', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('2567', '168', 'Bukidnon', 'BUK', '1');
INSERT INTO `oc_zone` VALUES ('2568', '168', 'Bulacan', 'BUL', '1');
INSERT INTO `oc_zone` VALUES ('2569', '168', 'Cagayan', 'CAG', '1');
INSERT INTO `oc_zone` VALUES ('2570', '168', 'Camarines Norte', 'CNO', '1');
INSERT INTO `oc_zone` VALUES ('2571', '168', 'Camarines Sur', 'CSU', '1');
INSERT INTO `oc_zone` VALUES ('2572', '168', 'Camiguin', 'CAM', '1');
INSERT INTO `oc_zone` VALUES ('2573', '168', 'Capiz', 'CAP', '1');
INSERT INTO `oc_zone` VALUES ('2574', '168', 'Catanduanes', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('2575', '168', 'Cavite', 'CAV', '1');
INSERT INTO `oc_zone` VALUES ('2576', '168', 'Cebu', 'CEB', '1');
INSERT INTO `oc_zone` VALUES ('2577', '168', 'Compostela', 'CMP', '1');
INSERT INTO `oc_zone` VALUES ('2578', '168', 'Davao del Norte', 'DNO', '1');
INSERT INTO `oc_zone` VALUES ('2579', '168', 'Davao del Sur', 'DSU', '1');
INSERT INTO `oc_zone` VALUES ('2580', '168', 'Davao Oriental', 'DOR', '1');
INSERT INTO `oc_zone` VALUES ('2581', '168', 'Eastern Samar', 'ESA', '1');
INSERT INTO `oc_zone` VALUES ('2582', '168', 'Guimaras', 'GUI', '1');
INSERT INTO `oc_zone` VALUES ('2583', '168', 'Ifugao', 'IFU', '1');
INSERT INTO `oc_zone` VALUES ('2584', '168', 'Ilocos Norte', 'INO', '1');
INSERT INTO `oc_zone` VALUES ('2585', '168', 'Ilocos Sur', 'ISU', '1');
INSERT INTO `oc_zone` VALUES ('2586', '168', 'Iloilo', 'ILO', '1');
INSERT INTO `oc_zone` VALUES ('2587', '168', 'Isabela', 'ISA', '1');
INSERT INTO `oc_zone` VALUES ('2588', '168', 'Kalinga', 'KAL', '1');
INSERT INTO `oc_zone` VALUES ('2589', '168', 'Laguna', 'LAG', '1');
INSERT INTO `oc_zone` VALUES ('2590', '168', 'Lanao del Norte', 'LNO', '1');
INSERT INTO `oc_zone` VALUES ('2591', '168', 'Lanao del Sur', 'LSU', '1');
INSERT INTO `oc_zone` VALUES ('2592', '168', 'La Union', 'UNI', '1');
INSERT INTO `oc_zone` VALUES ('2593', '168', 'Leyte', 'LEY', '1');
INSERT INTO `oc_zone` VALUES ('2594', '168', 'Maguindanao', 'MAG', '1');
INSERT INTO `oc_zone` VALUES ('2595', '168', 'Marinduque', 'MRN', '1');
INSERT INTO `oc_zone` VALUES ('2596', '168', 'Masbate', 'MSB', '1');
INSERT INTO `oc_zone` VALUES ('2597', '168', 'Mindoro Occidental', 'MIC', '1');
INSERT INTO `oc_zone` VALUES ('2598', '168', 'Mindoro Oriental', 'MIR', '1');
INSERT INTO `oc_zone` VALUES ('2599', '168', 'Misamis Occidental', 'MSC', '1');
INSERT INTO `oc_zone` VALUES ('2600', '168', 'Misamis Oriental', 'MOR', '1');
INSERT INTO `oc_zone` VALUES ('2601', '168', 'Mountain', 'MOP', '1');
INSERT INTO `oc_zone` VALUES ('2602', '168', 'Negros Occidental', 'NOC', '1');
INSERT INTO `oc_zone` VALUES ('2603', '168', 'Negros Oriental', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('2604', '168', 'North Cotabato', 'NCT', '1');
INSERT INTO `oc_zone` VALUES ('2605', '168', 'Northern Samar', 'NSM', '1');
INSERT INTO `oc_zone` VALUES ('2606', '168', 'Nueva Ecija', 'NEC', '1');
INSERT INTO `oc_zone` VALUES ('2607', '168', 'Nueva Vizcaya', 'NVZ', '1');
INSERT INTO `oc_zone` VALUES ('2608', '168', 'Palawan', 'PLW', '1');
INSERT INTO `oc_zone` VALUES ('2609', '168', 'Pampanga', 'PMP', '1');
INSERT INTO `oc_zone` VALUES ('2610', '168', 'Pangasinan', 'PNG', '1');
INSERT INTO `oc_zone` VALUES ('2611', '168', 'Quezon', 'QZN', '1');
INSERT INTO `oc_zone` VALUES ('2612', '168', 'Quirino', 'QRN', '1');
INSERT INTO `oc_zone` VALUES ('2613', '168', 'Rizal', 'RIZ', '1');
INSERT INTO `oc_zone` VALUES ('2614', '168', 'Romblon', 'ROM', '1');
INSERT INTO `oc_zone` VALUES ('2615', '168', 'Samar', 'SMR', '1');
INSERT INTO `oc_zone` VALUES ('2616', '168', 'Sarangani', 'SRG', '1');
INSERT INTO `oc_zone` VALUES ('2617', '168', 'Siquijor', 'SQJ', '1');
INSERT INTO `oc_zone` VALUES ('2618', '168', 'Sorsogon', 'SRS', '1');
INSERT INTO `oc_zone` VALUES ('2619', '168', 'South Cotabato', 'SCO', '1');
INSERT INTO `oc_zone` VALUES ('2620', '168', 'Southern Leyte', 'SLE', '1');
INSERT INTO `oc_zone` VALUES ('2621', '168', 'Sultan Kudarat', 'SKU', '1');
INSERT INTO `oc_zone` VALUES ('2622', '168', 'Sulu', 'SLU', '1');
INSERT INTO `oc_zone` VALUES ('2623', '168', 'Surigao del Norte', 'SNO', '1');
INSERT INTO `oc_zone` VALUES ('2624', '168', 'Surigao del Sur', 'SSU', '1');
INSERT INTO `oc_zone` VALUES ('2625', '168', 'Tarlac', 'TAR', '1');
INSERT INTO `oc_zone` VALUES ('2626', '168', 'Tawi-Tawi', 'TAW', '1');
INSERT INTO `oc_zone` VALUES ('2627', '168', 'Zambales', 'ZBL', '1');
INSERT INTO `oc_zone` VALUES ('2628', '168', 'Zamboanga del Norte', 'ZNO', '1');
INSERT INTO `oc_zone` VALUES ('2629', '168', 'Zamboanga del Sur', 'ZSU', '1');
INSERT INTO `oc_zone` VALUES ('2630', '168', 'Zamboanga Sibugay', 'ZSI', '1');
INSERT INTO `oc_zone` VALUES ('2631', '170', 'Dolnoslaskie', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('2632', '170', 'Kujawsko-Pomorskie', 'KP', '1');
INSERT INTO `oc_zone` VALUES ('2633', '170', 'Lodzkie', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('2634', '170', 'Lubelskie', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('2635', '170', 'Lubuskie', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('2636', '170', 'Malopolskie', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('2637', '170', 'Mazowieckie', 'MZ', '1');
INSERT INTO `oc_zone` VALUES ('2638', '170', 'Opolskie', 'OP', '1');
INSERT INTO `oc_zone` VALUES ('2639', '170', 'Podkarpackie', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('2640', '170', 'Podlaskie', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2641', '170', 'Pomorskie', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('2642', '170', 'Slaskie', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2643', '170', 'Swietokrzyskie', 'SW', '1');
INSERT INTO `oc_zone` VALUES ('2644', '170', 'Warminsko-Mazurskie', 'WM', '1');
INSERT INTO `oc_zone` VALUES ('2645', '170', 'Wielkopolskie', 'WP', '1');
INSERT INTO `oc_zone` VALUES ('2646', '170', 'Zachodniopomorskie', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2647', '198', 'Saint Pierre', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2648', '198', 'Miquelon', 'M', '1');
INSERT INTO `oc_zone` VALUES ('2649', '171', 'A&ccedil;ores', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('2650', '171', 'Aveiro', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('2651', '171', 'Beja', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('2652', '171', 'Braga', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2653', '171', 'Bragan&ccedil;a', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2654', '171', 'Castelo Branco', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('2655', '171', 'Coimbra', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('2656', '171', '&Eacute;vora', 'EV', '1');
INSERT INTO `oc_zone` VALUES ('2657', '171', 'Faro', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2658', '171', 'Guarda', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('2659', '171', 'Leiria', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('2660', '171', 'Lisboa', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('2661', '171', 'Madeira', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2662', '171', 'Portalegre', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('2663', '171', 'Porto', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2664', '171', 'Santar&eacute;m', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2665', '171', 'Set&uacute;bal', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('2666', '171', 'Viana do Castelo', 'VC', '1');
INSERT INTO `oc_zone` VALUES ('2667', '171', 'Vila Real', 'VR', '1');
INSERT INTO `oc_zone` VALUES ('2668', '171', 'Viseu', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('2669', '173', 'Ad Dawhah', 'DW', '1');
INSERT INTO `oc_zone` VALUES ('2670', '173', 'Al Ghuwayriyah', 'GW', '1');
INSERT INTO `oc_zone` VALUES ('2671', '173', 'Al Jumayliyah', 'JM', '1');
INSERT INTO `oc_zone` VALUES ('2672', '173', 'Al Khawr', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2673', '173', 'Al Wakrah', 'WK', '1');
INSERT INTO `oc_zone` VALUES ('2674', '173', 'Ar Rayyan', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('2675', '173', 'Jarayan al Batinah', 'JB', '1');
INSERT INTO `oc_zone` VALUES ('2676', '173', 'Madinat ash Shamal', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('2677', '173', 'Umm Sa\'id', 'UD', '1');
INSERT INTO `oc_zone` VALUES ('2678', '173', 'Umm Salal', 'UL', '1');
INSERT INTO `oc_zone` VALUES ('2679', '175', 'Alba', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2680', '175', 'Arad', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2681', '175', 'Arges', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2682', '175', 'Bacau', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('2683', '175', 'Bihor', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('2684', '175', 'Bistrita-Nasaud', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2685', '175', 'Botosani', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('2686', '175', 'Brasov', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('2687', '175', 'Braila', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2688', '175', 'Bucuresti', 'B', '1');
INSERT INTO `oc_zone` VALUES ('2689', '175', 'Buzau', 'BZ', '1');
INSERT INTO `oc_zone` VALUES ('2690', '175', 'Caras-Severin', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('2691', '175', 'Calarasi', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2692', '175', 'Cluj', 'CJ', '1');
INSERT INTO `oc_zone` VALUES ('2693', '175', 'Constanta', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('2694', '175', 'Covasna', 'CV', '1');
INSERT INTO `oc_zone` VALUES ('2695', '175', 'Dimbovita', 'DB', '1');
INSERT INTO `oc_zone` VALUES ('2696', '175', 'Dolj', 'DJ', '1');
INSERT INTO `oc_zone` VALUES ('2697', '175', 'Galati', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('2698', '175', 'Giurgiu', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2699', '175', 'Gorj', 'GJ', '1');
INSERT INTO `oc_zone` VALUES ('2700', '175', 'Harghita', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('2701', '175', 'Hunedoara', 'HD', '1');
INSERT INTO `oc_zone` VALUES ('2702', '175', 'Ialomita', 'IL', '1');
INSERT INTO `oc_zone` VALUES ('2703', '175', 'Iasi', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('2704', '175', 'Ilfov', 'IF', '1');
INSERT INTO `oc_zone` VALUES ('2705', '175', 'Maramures', 'MM', '1');
INSERT INTO `oc_zone` VALUES ('2706', '175', 'Mehedinti', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('2707', '175', 'Mures', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('2708', '175', 'Neamt', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('2709', '175', 'Olt', 'OT', '1');
INSERT INTO `oc_zone` VALUES ('2710', '175', 'Prahova', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('2711', '175', 'Satu-Mare', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2712', '175', 'Salaj', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('2713', '175', 'Sibiu', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('2714', '175', 'Suceava', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('2715', '175', 'Teleorman', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2716', '175', 'Timis', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2717', '175', 'Tulcea', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('2718', '175', 'Vaslui', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('2719', '175', 'Valcea', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('2720', '175', 'Vrancea', 'VN', '1');
INSERT INTO `oc_zone` VALUES ('2721', '176', 'Abakan', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2722', '176', 'Aginskoye', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2723', '176', 'Anadyr', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2724', '176', 'Arkahangelsk', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2725', '176', 'Astrakhan', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2726', '176', 'Barnaul', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2727', '176', 'Belgorod', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('2728', '176', 'Birobidzhan', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('2729', '176', 'Blagoveshchensk', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('2730', '176', 'Bryansk', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2731', '176', 'Cheboksary', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2732', '176', 'Chelyabinsk', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2733', '176', 'Cherkessk', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('2734', '176', 'Chita', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('2735', '176', 'Dudinka', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('2736', '176', 'Elista', 'EL', '1');
INSERT INTO `oc_zone` VALUES ('2738', '176', 'Gorno-Altaysk', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2739', '176', 'Groznyy', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2740', '176', 'Irkutsk', 'IR', '1');
INSERT INTO `oc_zone` VALUES ('2741', '176', 'Ivanovo', 'IV', '1');
INSERT INTO `oc_zone` VALUES ('2742', '176', 'Izhevsk', 'IZ', '1');
INSERT INTO `oc_zone` VALUES ('2743', '176', 'Kalinigrad', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2744', '176', 'Kaluga', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('2745', '176', 'Kasnodar', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('2746', '176', 'Kazan', 'KZ', '1');
INSERT INTO `oc_zone` VALUES ('2747', '176', 'Kemerovo', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('2748', '176', 'Khabarovsk', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('2749', '176', 'Khanty-Mansiysk', 'KM', '1');
INSERT INTO `oc_zone` VALUES ('2750', '176', 'Kostroma', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2751', '176', 'Krasnodar', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2752', '176', 'Krasnoyarsk', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('2753', '176', 'Kudymkar', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('2754', '176', 'Kurgan', 'KG', '1');
INSERT INTO `oc_zone` VALUES ('2755', '176', 'Kursk', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('2756', '176', 'Kyzyl', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('2757', '176', 'Lipetsk', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('2758', '176', 'Magadan', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2759', '176', 'Makhachkala', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('2760', '176', 'Maykop', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('2761', '176', 'Moscow', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2762', '176', 'Murmansk', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('2763', '176', 'Nalchik', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2764', '176', 'Naryan Mar', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('2765', '176', 'Nazran', 'NZ', '1');
INSERT INTO `oc_zone` VALUES ('2766', '176', 'Nizhniy Novgorod', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2767', '176', 'Novgorod', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('2768', '176', 'Novosibirsk', 'NV', '1');
INSERT INTO `oc_zone` VALUES ('2769', '176', 'Omsk', 'OM', '1');
INSERT INTO `oc_zone` VALUES ('2770', '176', 'Orel', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('2771', '176', 'Orenburg', 'OE', '1');
INSERT INTO `oc_zone` VALUES ('2772', '176', 'Palana', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2773', '176', 'Penza', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('2774', '176', 'Perm', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2775', '176', 'Petropavlovsk-Kamchatskiy', 'PK', '1');
INSERT INTO `oc_zone` VALUES ('2776', '176', 'Petrozavodsk', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('2777', '176', 'Pskov', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('2778', '176', 'Rostov-na-Donu', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('2779', '176', 'Ryazan', 'RY', '1');
INSERT INTO `oc_zone` VALUES ('2780', '176', 'Salekhard', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2781', '176', 'Samara', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2782', '176', 'Saransk', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('2783', '176', 'Saratov', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('2784', '176', 'Smolensk', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2785', '176', 'St. Petersburg', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('2786', '176', 'Stavropol', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('2787', '176', 'Syktyvkar', 'SY', '1');
INSERT INTO `oc_zone` VALUES ('2788', '176', 'Tambov', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2789', '176', 'Tomsk', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('2790', '176', 'Tula', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('2791', '176', 'Tura', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2792', '176', 'Tver', 'TV', '1');
INSERT INTO `oc_zone` VALUES ('2793', '176', 'Tyumen', 'TY', '1');
INSERT INTO `oc_zone` VALUES ('2794', '176', 'Ufa', 'UF', '1');
INSERT INTO `oc_zone` VALUES ('2795', '176', 'Ul\'yanovsk', 'UL', '1');
INSERT INTO `oc_zone` VALUES ('2796', '176', 'Ulan-Ude', 'UU', '1');
INSERT INTO `oc_zone` VALUES ('2797', '176', 'Ust\'-Ordynskiy', 'US', '1');
INSERT INTO `oc_zone` VALUES ('2798', '176', 'Vladikavkaz', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('2799', '176', 'Vladimir', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('2800', '176', 'Vladivostok', 'VV', '1');
INSERT INTO `oc_zone` VALUES ('2801', '176', 'Volgograd', 'VG', '1');
INSERT INTO `oc_zone` VALUES ('2802', '176', 'Vologda', 'VD', '1');
INSERT INTO `oc_zone` VALUES ('2803', '176', 'Voronezh', 'VO', '1');
INSERT INTO `oc_zone` VALUES ('2804', '176', 'Vyatka', 'VY', '1');
INSERT INTO `oc_zone` VALUES ('2805', '176', 'Yakutsk', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('2806', '176', 'Yaroslavl', 'YR', '1');
INSERT INTO `oc_zone` VALUES ('2807', '176', 'Yekaterinburg', 'YE', '1');
INSERT INTO `oc_zone` VALUES ('2808', '176', 'Yoshkar-Ola', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('2809', '177', 'Butare', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2810', '177', 'Byumba', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('2811', '177', 'Cyangugu', 'CY', '1');
INSERT INTO `oc_zone` VALUES ('2812', '177', 'Gikongoro', 'GK', '1');
INSERT INTO `oc_zone` VALUES ('2813', '177', 'Gisenyi', 'GS', '1');
INSERT INTO `oc_zone` VALUES ('2814', '177', 'Gitarama', 'GT', '1');
INSERT INTO `oc_zone` VALUES ('2815', '177', 'Kibungo', 'KG', '1');
INSERT INTO `oc_zone` VALUES ('2816', '177', 'Kibuye', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('2817', '177', 'Kigali Rurale', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2818', '177', 'Kigali-ville', 'KV', '1');
INSERT INTO `oc_zone` VALUES ('2819', '177', 'Ruhengeri', 'RU', '1');
INSERT INTO `oc_zone` VALUES ('2820', '177', 'Umutara', 'UM', '1');
INSERT INTO `oc_zone` VALUES ('2821', '178', 'Christ Church Nichola Town', 'CCN', '1');
INSERT INTO `oc_zone` VALUES ('2822', '178', 'Saint Anne Sandy Point', 'SAS', '1');
INSERT INTO `oc_zone` VALUES ('2823', '178', 'Saint George Basseterre', 'SGB', '1');
INSERT INTO `oc_zone` VALUES ('2824', '178', 'Saint George Gingerland', 'SGG', '1');
INSERT INTO `oc_zone` VALUES ('2825', '178', 'Saint James Windward', 'SJW', '1');
INSERT INTO `oc_zone` VALUES ('2826', '178', 'Saint John Capesterre', 'SJC', '1');
INSERT INTO `oc_zone` VALUES ('2827', '178', 'Saint John Figtree', 'SJF', '1');
INSERT INTO `oc_zone` VALUES ('2828', '178', 'Saint Mary Cayon', 'SMC', '1');
INSERT INTO `oc_zone` VALUES ('2829', '178', 'Saint Paul Capesterre', 'CAP', '1');
INSERT INTO `oc_zone` VALUES ('2830', '178', 'Saint Paul Charlestown', 'CHA', '1');
INSERT INTO `oc_zone` VALUES ('2831', '178', 'Saint Peter Basseterre', 'SPB', '1');
INSERT INTO `oc_zone` VALUES ('2832', '178', 'Saint Thomas Lowland', 'STL', '1');
INSERT INTO `oc_zone` VALUES ('2833', '178', 'Saint Thomas Middle Island', 'STM', '1');
INSERT INTO `oc_zone` VALUES ('2834', '178', 'Trinity Palmetto Point', 'TPP', '1');
INSERT INTO `oc_zone` VALUES ('2835', '179', 'Anse-la-Raye', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2836', '179', 'Castries', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2837', '179', 'Choiseul', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2838', '179', 'Dauphin', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2839', '179', 'Dennery', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('2840', '179', 'Gros-Islet', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('2841', '179', 'Laborie', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('2842', '179', 'Micoud', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('2843', '179', 'Praslin', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2844', '179', 'Soufriere', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2845', '179', 'Vieux-Fort', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('2846', '180', 'Charlotte', 'C', '1');
INSERT INTO `oc_zone` VALUES ('2847', '180', 'Grenadines', 'R', '1');
INSERT INTO `oc_zone` VALUES ('2848', '180', 'Saint Andrew', 'A', '1');
INSERT INTO `oc_zone` VALUES ('2849', '180', 'Saint David', 'D', '1');
INSERT INTO `oc_zone` VALUES ('2850', '180', 'Saint George', 'G', '1');
INSERT INTO `oc_zone` VALUES ('2851', '180', 'Saint Patrick', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2852', '181', 'A\'ana', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2853', '181', 'Aiga-i-le-Tai', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('2854', '181', 'Atua', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('2855', '181', 'Fa\'asaleleaga', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2856', '181', 'Gaga\'emauga', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2857', '181', 'Gagaifomauga', 'GF', '1');
INSERT INTO `oc_zone` VALUES ('2858', '181', 'Palauli', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2859', '181', 'Satupa\'itea', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2860', '181', 'Tuamasaga', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('2861', '181', 'Va\'a-o-Fonoti', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('2862', '181', 'Vaisigano', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('2863', '182', 'Acquaviva', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('2864', '182', 'Borgo Maggiore', 'BM', '1');
INSERT INTO `oc_zone` VALUES ('2865', '182', 'Chiesanuova', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2866', '182', 'Domagnano', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('2867', '182', 'Faetano', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2868', '182', 'Fiorentino', 'FI', '1');
INSERT INTO `oc_zone` VALUES ('2869', '182', 'Montegiardino', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2870', '182', 'Citta di San Marino', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2871', '182', 'Serravalle', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('2872', '183', 'Sao Tome', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2873', '183', 'Principe', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2874', '184', 'Al Bahah', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('2875', '184', 'Al Hudud ash Shamaliyah', 'HS', '1');
INSERT INTO `oc_zone` VALUES ('2876', '184', 'Al Jawf', 'JF', '1');
INSERT INTO `oc_zone` VALUES ('2877', '184', 'Al Madinah', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2878', '184', 'Al Qasim', 'QS', '1');
INSERT INTO `oc_zone` VALUES ('2879', '184', 'Ar Riyad', 'RD', '1');
INSERT INTO `oc_zone` VALUES ('2880', '184', 'Ash Sharqiyah (Eastern)', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('2881', '184', '\'Asir', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2882', '184', 'Ha\'il', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('2883', '184', 'Jizan', 'JZ', '1');
INSERT INTO `oc_zone` VALUES ('2884', '184', 'Makkah', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('2885', '184', 'Najran', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('2886', '184', 'Tabuk', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('2887', '185', 'Dakar', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2888', '185', 'Diourbel', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('2889', '185', 'Fatick', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2890', '185', 'Kaolack', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2891', '185', 'Kolda', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2892', '185', 'Louga', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('2893', '185', 'Matam', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2894', '185', 'Saint-Louis', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2895', '185', 'Tambacounda', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2896', '185', 'Thies', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('2897', '185', 'Ziguinchor', 'ZI', '1');
INSERT INTO `oc_zone` VALUES ('2898', '186', 'Anse aux Pins', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('2899', '186', 'Anse Boileau', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2900', '186', 'Anse Etoile', 'AE', '1');
INSERT INTO `oc_zone` VALUES ('2901', '186', 'Anse Louis', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('2902', '186', 'Anse Royale', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2903', '186', 'Baie Lazare', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('2904', '186', 'Baie Sainte Anne', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('2905', '186', 'Beau Vallon', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('2906', '186', 'Bel Air', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2907', '186', 'Bel Ombre', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2908', '186', 'Cascade', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2909', '186', 'Glacis', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('2910', '186', 'Grand\' Anse (on Mahe)', 'GM', '1');
INSERT INTO `oc_zone` VALUES ('2911', '186', 'Grand\' Anse (on Praslin)', 'GP', '1');
INSERT INTO `oc_zone` VALUES ('2912', '186', 'La Digue', 'DG', '1');
INSERT INTO `oc_zone` VALUES ('2913', '186', 'La Riviere Anglaise', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('2914', '186', 'Mont Buxton', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('2915', '186', 'Mont Fleuri', 'MF', '1');
INSERT INTO `oc_zone` VALUES ('2916', '186', 'Plaisance', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2917', '186', 'Pointe La Rue', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2918', '186', 'Port Glaud', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('2919', '186', 'Saint Louis', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2920', '186', 'Takamaka', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2921', '187', 'Eastern', 'E', '1');
INSERT INTO `oc_zone` VALUES ('2922', '187', 'Northern', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2923', '187', 'Southern', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2924', '187', 'Western', 'W', '1');
INSERT INTO `oc_zone` VALUES ('2925', '189', 'Banskobystrický', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2926', '189', 'Bratislavský', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2927', '189', 'Košický', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2928', '189', 'Nitriansky', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2929', '189', 'Prešovský', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2930', '189', 'Trenčiansky', 'TC', '1');
INSERT INTO `oc_zone` VALUES ('2931', '189', 'Trnavský', 'TV', '1');
INSERT INTO `oc_zone` VALUES ('2932', '189', 'Žilinský', 'ZI', '1');
INSERT INTO `oc_zone` VALUES ('2933', '191', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2934', '191', 'Choiseul', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2935', '191', 'Guadalcanal', 'GC', '1');
INSERT INTO `oc_zone` VALUES ('2936', '191', 'Honiara', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('2937', '191', 'Isabel', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('2938', '191', 'Makira', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('2939', '191', 'Malaita', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('2940', '191', 'Rennell and Bellona', 'RB', '1');
INSERT INTO `oc_zone` VALUES ('2941', '191', 'Temotu', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2942', '191', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('2943', '192', 'Awdal', 'AW', '1');
INSERT INTO `oc_zone` VALUES ('2944', '192', 'Bakool', 'BK', '1');
INSERT INTO `oc_zone` VALUES ('2945', '192', 'Banaadir', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2946', '192', 'Bari', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2947', '192', 'Bay', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('2948', '192', 'Galguduud', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2949', '192', 'Gedo', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2950', '192', 'Hiiraan', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('2951', '192', 'Jubbada Dhexe', 'JD', '1');
INSERT INTO `oc_zone` VALUES ('2952', '192', 'Jubbada Hoose', 'JH', '1');
INSERT INTO `oc_zone` VALUES ('2953', '192', 'Mudug', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('2954', '192', 'Nugaal', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('2955', '192', 'Sanaag', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2956', '192', 'Shabeellaha Dhexe', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('2957', '192', 'Shabeellaha Hoose', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2958', '192', 'Sool', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2959', '192', 'Togdheer', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('2960', '192', 'Woqooyi Galbeed', 'WG', '1');
INSERT INTO `oc_zone` VALUES ('2961', '193', 'Eastern Cape', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('2962', '193', 'Free State', 'FS', '1');
INSERT INTO `oc_zone` VALUES ('2963', '193', 'Gauteng', 'GT', '1');
INSERT INTO `oc_zone` VALUES ('2964', '193', 'KwaZulu-Natal', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('2965', '193', 'Limpopo', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('2966', '193', 'Mpumalanga', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('2967', '193', 'North West', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('2968', '193', 'Northern Cape', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('2969', '193', 'Western Cape', 'WC', '1');
INSERT INTO `oc_zone` VALUES ('2970', '195', 'La Coru&ntilde;a', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2971', '195', '&Aacute;lava', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('2972', '195', 'Albacete', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2973', '195', 'Alicante', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('2974', '195', 'Almeria', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2975', '195', 'Asturias', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2976', '195', '&Aacute;vila', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('2977', '195', 'Badajoz', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('2978', '195', 'Baleares', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('2979', '195', 'Barcelona', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2980', '195', 'Burgos', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2981', '195', 'C&aacute;ceres', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2982', '195', 'C&aacute;diz', 'CZ', '1');
INSERT INTO `oc_zone` VALUES ('2983', '195', 'Cantabria', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('2984', '195', 'Castell&oacute;n', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2985', '195', 'Ceuta', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2986', '195', 'Ciudad Real', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('2987', '195', 'C&oacute;rdoba', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2988', '195', 'Cuenca', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2989', '195', 'Girona', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('2990', '195', 'Granada', 'GD', '1');
INSERT INTO `oc_zone` VALUES ('2991', '195', 'Guadalajara', 'GJ', '1');
INSERT INTO `oc_zone` VALUES ('2992', '195', 'Guip&uacute;zcoa', 'GP', '1');
INSERT INTO `oc_zone` VALUES ('2993', '195', 'Huelva', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('2994', '195', 'Huesca', 'HS', '1');
INSERT INTO `oc_zone` VALUES ('2995', '195', 'Ja&eacute;n', 'JN', '1');
INSERT INTO `oc_zone` VALUES ('2996', '195', 'La Rioja', 'RJ', '1');
INSERT INTO `oc_zone` VALUES ('2997', '195', 'Las Palmas', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('2998', '195', 'Leon', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('2999', '195', 'Lleida', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('3000', '195', 'Lugo', 'LG', '1');
INSERT INTO `oc_zone` VALUES ('3001', '195', 'Madrid', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('3002', '195', 'Malaga', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3003', '195', 'Melilla', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('3004', '195', 'Murcia', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('3005', '195', 'Navarra', 'NV', '1');
INSERT INTO `oc_zone` VALUES ('3006', '195', 'Ourense', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('3007', '195', 'Palencia', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('3008', '195', 'Pontevedra', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('3009', '195', 'Salamanca', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3010', '195', 'Santa Cruz de Tenerife', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('3011', '195', 'Segovia', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('3012', '195', 'Sevilla', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('3013', '195', 'Soria', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3014', '195', 'Tarragona', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3015', '195', 'Teruel', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('3016', '195', 'Toledo', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3017', '195', 'Valencia', 'VC', '1');
INSERT INTO `oc_zone` VALUES ('3018', '195', 'Valladolid', 'VD', '1');
INSERT INTO `oc_zone` VALUES ('3019', '195', 'Vizcaya', 'VZ', '1');
INSERT INTO `oc_zone` VALUES ('3020', '195', 'Zamora', 'ZM', '1');
INSERT INTO `oc_zone` VALUES ('3021', '195', 'Zaragoza', 'ZR', '1');
INSERT INTO `oc_zone` VALUES ('3022', '196', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('3023', '196', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('3024', '196', 'North Central', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('3025', '196', 'Northern', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('3026', '196', 'North Western', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3027', '196', 'Sabaragamuwa', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3028', '196', 'Southern', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3029', '196', 'Uva', 'UV', '1');
INSERT INTO `oc_zone` VALUES ('3030', '196', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('3032', '197', 'Saint Helena', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3034', '199', 'A\'ali an Nil', 'ANL', '1');
INSERT INTO `oc_zone` VALUES ('3035', '199', 'Al Bahr al Ahmar', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('3036', '199', 'Al Buhayrat', 'BRT', '1');
INSERT INTO `oc_zone` VALUES ('3037', '199', 'Al Jazirah', 'JZR', '1');
INSERT INTO `oc_zone` VALUES ('3038', '199', 'Al Khartum', 'KRT', '1');
INSERT INTO `oc_zone` VALUES ('3039', '199', 'Al Qadarif', 'QDR', '1');
INSERT INTO `oc_zone` VALUES ('3040', '199', 'Al Wahdah', 'WDH', '1');
INSERT INTO `oc_zone` VALUES ('3041', '199', 'An Nil al Abyad', 'ANB', '1');
INSERT INTO `oc_zone` VALUES ('3042', '199', 'An Nil al Azraq', 'ANZ', '1');
INSERT INTO `oc_zone` VALUES ('3043', '199', 'Ash Shamaliyah', 'ASH', '1');
INSERT INTO `oc_zone` VALUES ('3044', '199', 'Bahr al Jabal', 'BJA', '1');
INSERT INTO `oc_zone` VALUES ('3045', '199', 'Gharb al Istiwa\'iyah', 'GIS', '1');
INSERT INTO `oc_zone` VALUES ('3046', '199', 'Gharb Bahr al Ghazal', 'GBG', '1');
INSERT INTO `oc_zone` VALUES ('3047', '199', 'Gharb Darfur', 'GDA', '1');
INSERT INTO `oc_zone` VALUES ('3048', '199', 'Gharb Kurdufan', 'GKU', '1');
INSERT INTO `oc_zone` VALUES ('3049', '199', 'Janub Darfur', 'JDA', '1');
INSERT INTO `oc_zone` VALUES ('3050', '199', 'Janub Kurdufan', 'JKU', '1');
INSERT INTO `oc_zone` VALUES ('3051', '199', 'Junqali', 'JQL', '1');
INSERT INTO `oc_zone` VALUES ('3052', '199', 'Kassala', 'KSL', '1');
INSERT INTO `oc_zone` VALUES ('3053', '199', 'Nahr an Nil', 'NNL', '1');
INSERT INTO `oc_zone` VALUES ('3054', '199', 'Shamal Bahr al Ghazal', 'SBG', '1');
INSERT INTO `oc_zone` VALUES ('3055', '199', 'Shamal Darfur', 'SDA', '1');
INSERT INTO `oc_zone` VALUES ('3056', '199', 'Shamal Kurdufan', 'SKU', '1');
INSERT INTO `oc_zone` VALUES ('3057', '199', 'Sharq al Istiwa\'iyah', 'SIS', '1');
INSERT INTO `oc_zone` VALUES ('3058', '199', 'Sinnar', 'SNR', '1');
INSERT INTO `oc_zone` VALUES ('3059', '199', 'Warab', 'WRB', '1');
INSERT INTO `oc_zone` VALUES ('3060', '200', 'Brokopondo', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('3061', '200', 'Commewijne', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('3062', '200', 'Coronie', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('3063', '200', 'Marowijne', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3064', '200', 'Nickerie', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('3065', '200', 'Para', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3066', '200', 'Paramaribo', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('3067', '200', 'Saramacca', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3068', '200', 'Sipaliwini', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3069', '200', 'Wanica', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('3070', '202', 'Hhohho', 'H', '1');
INSERT INTO `oc_zone` VALUES ('3071', '202', 'Lubombo', 'L', '1');
INSERT INTO `oc_zone` VALUES ('3072', '202', 'Manzini', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3073', '202', 'Shishelweni', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3074', '203', 'Blekinge', 'K', '1');
INSERT INTO `oc_zone` VALUES ('3075', '203', 'Dalarna', 'W', '1');
INSERT INTO `oc_zone` VALUES ('3076', '203', 'Gävleborg', 'X', '1');
INSERT INTO `oc_zone` VALUES ('3077', '203', 'Gotland', 'I', '1');
INSERT INTO `oc_zone` VALUES ('3078', '203', 'Halland', 'N', '1');
INSERT INTO `oc_zone` VALUES ('3079', '203', 'Jämtland', 'Z', '1');
INSERT INTO `oc_zone` VALUES ('3080', '203', 'Jönköping', 'F', '1');
INSERT INTO `oc_zone` VALUES ('3081', '203', 'Kalmar', 'H', '1');
INSERT INTO `oc_zone` VALUES ('3082', '203', 'Kronoberg', 'G', '1');
INSERT INTO `oc_zone` VALUES ('3083', '203', 'Norrbotten', 'BD', '1');
INSERT INTO `oc_zone` VALUES ('3084', '203', 'Örebro', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3085', '203', 'Östergötland', 'E', '1');
INSERT INTO `oc_zone` VALUES ('3086', '203', 'Sk&aring;ne', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3087', '203', 'Södermanland', 'D', '1');
INSERT INTO `oc_zone` VALUES ('3088', '203', 'Stockholm', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('3089', '203', 'Uppsala', 'C', '1');
INSERT INTO `oc_zone` VALUES ('3090', '203', 'Värmland', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3091', '203', 'Västerbotten', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('3092', '203', 'Västernorrland', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('3093', '203', 'Västmanland', 'U', '1');
INSERT INTO `oc_zone` VALUES ('3094', '203', 'Västra Götaland', 'O', '1');
INSERT INTO `oc_zone` VALUES ('3095', '204', 'Aargau', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3096', '204', 'Appenzell Ausserrhoden', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3097', '204', 'Appenzell Innerrhoden', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('3098', '204', 'Basel-Stadt', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('3099', '204', 'Basel-Landschaft', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('3100', '204', 'Bern', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('3101', '204', 'Fribourg', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('3102', '204', 'Gen&egrave;ve', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('3103', '204', 'Glarus', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('3104', '204', 'Graubünden', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('3105', '204', 'Jura', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('3106', '204', 'Luzern', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('3107', '204', 'Neuch&acirc;tel', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('3108', '204', 'Nidwald', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3109', '204', 'Obwald', 'OW', '1');
INSERT INTO `oc_zone` VALUES ('3110', '204', 'St. Gallen', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('3111', '204', 'Schaffhausen', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3112', '204', 'Schwyz', 'SZ', '1');
INSERT INTO `oc_zone` VALUES ('3113', '204', 'Solothurn', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3114', '204', 'Thurgau', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('3115', '204', 'Ticino', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('3116', '204', 'Uri', 'UR', '1');
INSERT INTO `oc_zone` VALUES ('3117', '204', 'Valais', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('3118', '204', 'Vaud', 'VD', '1');
INSERT INTO `oc_zone` VALUES ('3119', '204', 'Zug', 'ZG', '1');
INSERT INTO `oc_zone` VALUES ('3120', '204', 'Zürich', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('3121', '205', 'Al Hasakah', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('3122', '205', 'Al Ladhiqiyah', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3123', '205', 'Al Qunaytirah', 'QU', '1');
INSERT INTO `oc_zone` VALUES ('3124', '205', 'Ar Raqqah', 'RQ', '1');
INSERT INTO `oc_zone` VALUES ('3125', '205', 'As Suwayda', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3126', '205', 'Dara', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('3127', '205', 'Dayr az Zawr', 'DZ', '1');
INSERT INTO `oc_zone` VALUES ('3128', '205', 'Dimashq', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('3129', '205', 'Halab', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('3130', '205', 'Hamah', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('3131', '205', 'Hims', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3132', '205', 'Idlib', 'ID', '1');
INSERT INTO `oc_zone` VALUES ('3133', '205', 'Rif Dimashq', 'RD', '1');
INSERT INTO `oc_zone` VALUES ('3134', '205', 'Tartus', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3135', '206', 'Chang-hua', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('3136', '206', 'Chia-i', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('3137', '206', 'Hsin-chu', 'HS', '1');
INSERT INTO `oc_zone` VALUES ('3138', '206', 'Hua-lien', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('3139', '206', 'I-lan', 'IL', '1');
INSERT INTO `oc_zone` VALUES ('3140', '206', 'Kao-hsiung county', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('3141', '206', 'Kin-men', 'KM', '1');
INSERT INTO `oc_zone` VALUES ('3142', '206', 'Lien-chiang', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('3143', '206', 'Miao-li', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('3144', '206', 'Nan-t\'ou', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('3145', '206', 'P\'eng-hu', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('3146', '206', 'P\'ing-tung', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('3147', '206', 'T\'ai-chung', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('3148', '206', 'T\'ai-nan', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3149', '206', 'T\'ai-pei county', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('3150', '206', 'T\'ai-tung', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('3151', '206', 'T\'ao-yuan', 'TY', '1');
INSERT INTO `oc_zone` VALUES ('3152', '206', 'Yun-lin', 'YL', '1');
INSERT INTO `oc_zone` VALUES ('3153', '206', 'Chia-i city', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('3154', '206', 'Chi-lung', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('3155', '206', 'Hsin-chu', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('3156', '206', 'T\'ai-chung', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('3157', '206', 'T\'ai-nan', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3158', '206', 'Kao-hsiung city', 'KC', '1');
INSERT INTO `oc_zone` VALUES ('3159', '206', 'T\'ai-pei city', 'TC', '1');
INSERT INTO `oc_zone` VALUES ('3160', '207', 'Gorno-Badakhstan', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('3161', '207', 'Khatlon', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('3162', '207', 'Sughd', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3163', '208', 'Arusha', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3164', '208', 'Dar es Salaam', 'DS', '1');
INSERT INTO `oc_zone` VALUES ('3165', '208', 'Dodoma', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('3166', '208', 'Iringa', 'IR', '1');
INSERT INTO `oc_zone` VALUES ('3167', '208', 'Kagera', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('3168', '208', 'Kigoma', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('3169', '208', 'Kilimanjaro', 'KJ', '1');
INSERT INTO `oc_zone` VALUES ('3170', '208', 'Lindi', 'LN', '1');
INSERT INTO `oc_zone` VALUES ('3171', '208', 'Manyara', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('3172', '208', 'Mara', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('3173', '208', 'Mbeya', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('3174', '208', 'Morogoro', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3175', '208', 'Mtwara', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('3176', '208', 'Mwanza', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('3177', '208', 'Pemba North', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('3178', '208', 'Pemba South', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('3179', '208', 'Pwani', 'PW', '1');
INSERT INTO `oc_zone` VALUES ('3180', '208', 'Rukwa', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('3181', '208', 'Ruvuma', 'RV', '1');
INSERT INTO `oc_zone` VALUES ('3182', '208', 'Shinyanga', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3183', '208', 'Singida', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3184', '208', 'Tabora', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('3185', '208', 'Tanga', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3186', '208', 'Zanzibar Central/South', 'ZC', '1');
INSERT INTO `oc_zone` VALUES ('3187', '208', 'Zanzibar North', 'ZN', '1');
INSERT INTO `oc_zone` VALUES ('3188', '208', 'Zanzibar Urban/West', 'ZU', '1');
INSERT INTO `oc_zone` VALUES ('3189', '209', 'Amnat Charoen', 'Amnat Charoen', '1');
INSERT INTO `oc_zone` VALUES ('3190', '209', 'Ang Thong', 'Ang Thong', '1');
INSERT INTO `oc_zone` VALUES ('3191', '209', 'Ayutthaya', 'Ayutthaya', '1');
INSERT INTO `oc_zone` VALUES ('3192', '209', 'Bangkok', 'Bangkok', '1');
INSERT INTO `oc_zone` VALUES ('3193', '209', 'Buriram', 'Buriram', '1');
INSERT INTO `oc_zone` VALUES ('3194', '209', 'Chachoengsao', 'Chachoengsao', '1');
INSERT INTO `oc_zone` VALUES ('3195', '209', 'Chai Nat', 'Chai Nat', '1');
INSERT INTO `oc_zone` VALUES ('3196', '209', 'Chaiyaphum', 'Chaiyaphum', '1');
INSERT INTO `oc_zone` VALUES ('3197', '209', 'Chanthaburi', 'Chanthaburi', '1');
INSERT INTO `oc_zone` VALUES ('3198', '209', 'Chiang Mai', 'Chiang Mai', '1');
INSERT INTO `oc_zone` VALUES ('3199', '209', 'Chiang Rai', 'Chiang Rai', '1');
INSERT INTO `oc_zone` VALUES ('3200', '209', 'Chon Buri', 'Chon Buri', '1');
INSERT INTO `oc_zone` VALUES ('3201', '209', 'Chumphon', 'Chumphon', '1');
INSERT INTO `oc_zone` VALUES ('3202', '209', 'Kalasin', 'Kalasin', '1');
INSERT INTO `oc_zone` VALUES ('3203', '209', 'Kamphaeng Phet', 'Kamphaeng Phet', '1');
INSERT INTO `oc_zone` VALUES ('3204', '209', 'Kanchanaburi', 'Kanchanaburi', '1');
INSERT INTO `oc_zone` VALUES ('3205', '209', 'Khon Kaen', 'Khon Kaen', '1');
INSERT INTO `oc_zone` VALUES ('3206', '209', 'Krabi', 'Krabi', '1');
INSERT INTO `oc_zone` VALUES ('3207', '209', 'Lampang', 'Lampang', '1');
INSERT INTO `oc_zone` VALUES ('3208', '209', 'Lamphun', 'Lamphun', '1');
INSERT INTO `oc_zone` VALUES ('3209', '209', 'Loei', 'Loei', '1');
INSERT INTO `oc_zone` VALUES ('3210', '209', 'Lop Buri', 'Lop Buri', '1');
INSERT INTO `oc_zone` VALUES ('3211', '209', 'Mae Hong Son', 'Mae Hong Son', '1');
INSERT INTO `oc_zone` VALUES ('3212', '209', 'Maha Sarakham', 'Maha Sarakham', '1');
INSERT INTO `oc_zone` VALUES ('3213', '209', 'Mukdahan', 'Mukdahan', '1');
INSERT INTO `oc_zone` VALUES ('3214', '209', 'Nakhon Nayok', 'Nakhon Nayok', '1');
INSERT INTO `oc_zone` VALUES ('3215', '209', 'Nakhon Pathom', 'Nakhon Pathom', '1');
INSERT INTO `oc_zone` VALUES ('3216', '209', 'Nakhon Phanom', 'Nakhon Phanom', '1');
INSERT INTO `oc_zone` VALUES ('3217', '209', 'Nakhon Ratchasima', 'Nakhon Ratchasima', '1');
INSERT INTO `oc_zone` VALUES ('3218', '209', 'Nakhon Sawan', 'Nakhon Sawan', '1');
INSERT INTO `oc_zone` VALUES ('3219', '209', 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', '1');
INSERT INTO `oc_zone` VALUES ('3220', '209', 'Nan', 'Nan', '1');
INSERT INTO `oc_zone` VALUES ('3221', '209', 'Narathiwat', 'Narathiwat', '1');
INSERT INTO `oc_zone` VALUES ('3222', '209', 'Nong Bua Lamphu', 'Nong Bua Lamphu', '1');
INSERT INTO `oc_zone` VALUES ('3223', '209', 'Nong Khai', 'Nong Khai', '1');
INSERT INTO `oc_zone` VALUES ('3224', '209', 'Nonthaburi', 'Nonthaburi', '1');
INSERT INTO `oc_zone` VALUES ('3225', '209', 'Pathum Thani', 'Pathum Thani', '1');
INSERT INTO `oc_zone` VALUES ('3226', '209', 'Pattani', 'Pattani', '1');
INSERT INTO `oc_zone` VALUES ('3227', '209', 'Phangnga', 'Phangnga', '1');
INSERT INTO `oc_zone` VALUES ('3228', '209', 'Phatthalung', 'Phatthalung', '1');
INSERT INTO `oc_zone` VALUES ('3229', '209', 'Phayao', 'Phayao', '1');
INSERT INTO `oc_zone` VALUES ('3230', '209', 'Phetchabun', 'Phetchabun', '1');
INSERT INTO `oc_zone` VALUES ('3231', '209', 'Phetchaburi', 'Phetchaburi', '1');
INSERT INTO `oc_zone` VALUES ('3232', '209', 'Phichit', 'Phichit', '1');
INSERT INTO `oc_zone` VALUES ('3233', '209', 'Phitsanulok', 'Phitsanulok', '1');
INSERT INTO `oc_zone` VALUES ('3234', '209', 'Phrae', 'Phrae', '1');
INSERT INTO `oc_zone` VALUES ('3235', '209', 'Phuket', 'Phuket', '1');
INSERT INTO `oc_zone` VALUES ('3236', '209', 'Prachin Buri', 'Prachin Buri', '1');
INSERT INTO `oc_zone` VALUES ('3237', '209', 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', '1');
INSERT INTO `oc_zone` VALUES ('3238', '209', 'Ranong', 'Ranong', '1');
INSERT INTO `oc_zone` VALUES ('3239', '209', 'Ratchaburi', 'Ratchaburi', '1');
INSERT INTO `oc_zone` VALUES ('3240', '209', 'Rayong', 'Rayong', '1');
INSERT INTO `oc_zone` VALUES ('3241', '209', 'Roi Et', 'Roi Et', '1');
INSERT INTO `oc_zone` VALUES ('3242', '209', 'Sa Kaeo', 'Sa Kaeo', '1');
INSERT INTO `oc_zone` VALUES ('3243', '209', 'Sakon Nakhon', 'Sakon Nakhon', '1');
INSERT INTO `oc_zone` VALUES ('3244', '209', 'Samut Prakan', 'Samut Prakan', '1');
INSERT INTO `oc_zone` VALUES ('3245', '209', 'Samut Sakhon', 'Samut Sakhon', '1');
INSERT INTO `oc_zone` VALUES ('3246', '209', 'Samut Songkhram', 'Samut Songkhram', '1');
INSERT INTO `oc_zone` VALUES ('3247', '209', 'Sara Buri', 'Sara Buri', '1');
INSERT INTO `oc_zone` VALUES ('3248', '209', 'Satun', 'Satun', '1');
INSERT INTO `oc_zone` VALUES ('3249', '209', 'Sing Buri', 'Sing Buri', '1');
INSERT INTO `oc_zone` VALUES ('3250', '209', 'Sisaket', 'Sisaket', '1');
INSERT INTO `oc_zone` VALUES ('3251', '209', 'Songkhla', 'Songkhla', '1');
INSERT INTO `oc_zone` VALUES ('3252', '209', 'Sukhothai', 'Sukhothai', '1');
INSERT INTO `oc_zone` VALUES ('3253', '209', 'Suphan Buri', 'Suphan Buri', '1');
INSERT INTO `oc_zone` VALUES ('3254', '209', 'Surat Thani', 'Surat Thani', '1');
INSERT INTO `oc_zone` VALUES ('3255', '209', 'Surin', 'Surin', '1');
INSERT INTO `oc_zone` VALUES ('3256', '209', 'Tak', 'Tak', '1');
INSERT INTO `oc_zone` VALUES ('3257', '209', 'Trang', 'Trang', '1');
INSERT INTO `oc_zone` VALUES ('3258', '209', 'Trat', 'Trat', '1');
INSERT INTO `oc_zone` VALUES ('3259', '209', 'Ubon Ratchathani', 'Ubon Ratchathani', '1');
INSERT INTO `oc_zone` VALUES ('3260', '209', 'Udon Thani', 'Udon Thani', '1');
INSERT INTO `oc_zone` VALUES ('3261', '209', 'Uthai Thani', 'Uthai Thani', '1');
INSERT INTO `oc_zone` VALUES ('3262', '209', 'Uttaradit', 'Uttaradit', '1');
INSERT INTO `oc_zone` VALUES ('3263', '209', 'Yala', 'Yala', '1');
INSERT INTO `oc_zone` VALUES ('3264', '209', 'Yasothon', 'Yasothon', '1');
INSERT INTO `oc_zone` VALUES ('3265', '210', 'Kara', 'K', '1');
INSERT INTO `oc_zone` VALUES ('3266', '210', 'Plateaux', 'P', '1');
INSERT INTO `oc_zone` VALUES ('3267', '210', 'Savanes', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3268', '210', 'Centrale', 'C', '1');
INSERT INTO `oc_zone` VALUES ('3269', '210', 'Maritime', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3270', '211', 'Atafu', 'A', '1');
INSERT INTO `oc_zone` VALUES ('3271', '211', 'Fakaofo', 'F', '1');
INSERT INTO `oc_zone` VALUES ('3272', '211', 'Nukunonu', 'N', '1');
INSERT INTO `oc_zone` VALUES ('3273', '212', 'Ha\'apai', 'H', '1');
INSERT INTO `oc_zone` VALUES ('3274', '212', 'Tongatapu', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3275', '212', 'Vava\'u', 'V', '1');
INSERT INTO `oc_zone` VALUES ('3276', '213', 'Couva/Tabaquite/Talparo', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3277', '213', 'Diego Martin', 'DM', '1');
INSERT INTO `oc_zone` VALUES ('3278', '213', 'Mayaro/Rio Claro', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('3279', '213', 'Penal/Debe', 'PD', '1');
INSERT INTO `oc_zone` VALUES ('3280', '213', 'Princes Town', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('3281', '213', 'Sangre Grande', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('3282', '213', 'San Juan/Laventille', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3283', '213', 'Siparia', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3284', '213', 'Tunapuna/Piarco', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('3285', '213', 'Port of Spain', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('3286', '213', 'San Fernando', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('3287', '213', 'Arima', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3288', '213', 'Point Fortin', 'PF', '1');
INSERT INTO `oc_zone` VALUES ('3289', '213', 'Chaguanas', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('3290', '213', 'Tobago', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3291', '214', 'Ariana', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3292', '214', 'Beja', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('3293', '214', 'Ben Arous', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3294', '214', 'Bizerte', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('3295', '214', 'Gabes', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('3296', '214', 'Gafsa', 'GF', '1');
INSERT INTO `oc_zone` VALUES ('3297', '214', 'Jendouba', 'JE', '1');
INSERT INTO `oc_zone` VALUES ('3298', '214', 'Kairouan', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('3299', '214', 'Kasserine', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('3300', '214', 'Kebili', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('3301', '214', 'Kef', 'KF', '1');
INSERT INTO `oc_zone` VALUES ('3302', '214', 'Mahdia', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('3303', '214', 'Manouba', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3304', '214', 'Medenine', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3305', '214', 'Monastir', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3306', '214', 'Nabeul', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('3307', '214', 'Sfax', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('3308', '214', 'Sidi', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('3309', '214', 'Siliana', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3310', '214', 'Sousse', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3311', '214', 'Tataouine', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3312', '214', 'Tozeur', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3313', '214', 'Tunis', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('3314', '214', 'Zaghouan', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('3315', '215', 'Adana', 'ADA', '1');
INSERT INTO `oc_zone` VALUES ('3316', '215', 'Adıyaman', 'ADI', '1');
INSERT INTO `oc_zone` VALUES ('3317', '215', 'Afyonkarahisar', 'AFY', '1');
INSERT INTO `oc_zone` VALUES ('3318', '215', 'Ağrı', 'AGR', '1');
INSERT INTO `oc_zone` VALUES ('3319', '215', 'Aksaray', 'AKS', '1');
INSERT INTO `oc_zone` VALUES ('3320', '215', 'Amasya', 'AMA', '1');
INSERT INTO `oc_zone` VALUES ('3321', '215', 'Ankara', 'ANK', '1');
INSERT INTO `oc_zone` VALUES ('3322', '215', 'Antalya', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('3323', '215', 'Ardahan', 'ARD', '1');
INSERT INTO `oc_zone` VALUES ('3324', '215', 'Artvin', 'ART', '1');
INSERT INTO `oc_zone` VALUES ('3325', '215', 'Aydın', 'AYI', '1');
INSERT INTO `oc_zone` VALUES ('3326', '215', 'Balıkesir', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('3327', '215', 'Bartın', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('3328', '215', 'Batman', 'BAT', '1');
INSERT INTO `oc_zone` VALUES ('3329', '215', 'Bayburt', 'BAY', '1');
INSERT INTO `oc_zone` VALUES ('3330', '215', 'Bilecik', 'BIL', '1');
INSERT INTO `oc_zone` VALUES ('3331', '215', 'Bingöl', 'BIN', '1');
INSERT INTO `oc_zone` VALUES ('3332', '215', 'Bitlis', 'BIT', '1');
INSERT INTO `oc_zone` VALUES ('3333', '215', 'Bolu', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('3334', '215', 'Burdur', 'BRD', '1');
INSERT INTO `oc_zone` VALUES ('3335', '215', 'Bursa', 'BRS', '1');
INSERT INTO `oc_zone` VALUES ('3336', '215', 'Çanakkale', 'CKL', '1');
INSERT INTO `oc_zone` VALUES ('3337', '215', 'Çankırı', 'CKR', '1');
INSERT INTO `oc_zone` VALUES ('3338', '215', 'Çorum', 'COR', '1');
INSERT INTO `oc_zone` VALUES ('3339', '215', 'Denizli', 'DEN', '1');
INSERT INTO `oc_zone` VALUES ('3340', '215', 'Diyarbakır', 'DIY', '1');
INSERT INTO `oc_zone` VALUES ('3341', '215', 'Düzce', 'DUZ', '1');
INSERT INTO `oc_zone` VALUES ('3342', '215', 'Edirne', 'EDI', '1');
INSERT INTO `oc_zone` VALUES ('3343', '215', 'Elazığ', 'ELA', '1');
INSERT INTO `oc_zone` VALUES ('3344', '215', 'Erzincan', 'EZC', '1');
INSERT INTO `oc_zone` VALUES ('3345', '215', 'Erzurum', 'EZR', '1');
INSERT INTO `oc_zone` VALUES ('3346', '215', 'Eskişehir', 'ESK', '1');
INSERT INTO `oc_zone` VALUES ('3347', '215', 'Gaziantep', 'GAZ', '1');
INSERT INTO `oc_zone` VALUES ('3348', '215', 'Giresun', 'GIR', '1');
INSERT INTO `oc_zone` VALUES ('3349', '215', 'Gümüşhane', 'GMS', '1');
INSERT INTO `oc_zone` VALUES ('3350', '215', 'Hakkari', 'HKR', '1');
INSERT INTO `oc_zone` VALUES ('3351', '215', 'Hatay', 'HTY', '1');
INSERT INTO `oc_zone` VALUES ('3352', '215', 'Iğdır', 'IGD', '1');
INSERT INTO `oc_zone` VALUES ('3353', '215', 'Isparta', 'ISP', '1');
INSERT INTO `oc_zone` VALUES ('3354', '215', 'İstanbul', 'IST', '1');
INSERT INTO `oc_zone` VALUES ('3355', '215', 'İzmir', 'IZM', '1');
INSERT INTO `oc_zone` VALUES ('3356', '215', 'Kahramanmaraş', 'KAH', '1');
INSERT INTO `oc_zone` VALUES ('3357', '215', 'Karabük', 'KRB', '1');
INSERT INTO `oc_zone` VALUES ('3358', '215', 'Karaman', 'KRM', '1');
INSERT INTO `oc_zone` VALUES ('3359', '215', 'Kars', 'KRS', '1');
INSERT INTO `oc_zone` VALUES ('3360', '215', 'Kastamonu', 'KAS', '1');
INSERT INTO `oc_zone` VALUES ('3361', '215', 'Kayseri', 'KAY', '1');
INSERT INTO `oc_zone` VALUES ('3362', '215', 'Kilis', 'KLS', '1');
INSERT INTO `oc_zone` VALUES ('3363', '215', 'Kırıkkale', 'KRK', '1');
INSERT INTO `oc_zone` VALUES ('3364', '215', 'Kırklareli', 'KLR', '1');
INSERT INTO `oc_zone` VALUES ('3365', '215', 'Kırşehir', 'KRH', '1');
INSERT INTO `oc_zone` VALUES ('3366', '215', 'Kocaeli', 'KOC', '1');
INSERT INTO `oc_zone` VALUES ('3367', '215', 'Konya', 'KON', '1');
INSERT INTO `oc_zone` VALUES ('3368', '215', 'Kütahya', 'KUT', '1');
INSERT INTO `oc_zone` VALUES ('3369', '215', 'Malatya', 'MAL', '1');
INSERT INTO `oc_zone` VALUES ('3370', '215', 'Manisa', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('3371', '215', 'Mardin', 'MAR', '1');
INSERT INTO `oc_zone` VALUES ('3372', '215', 'Mersin', 'MER', '1');
INSERT INTO `oc_zone` VALUES ('3373', '215', 'Muğla', 'MUG', '1');
INSERT INTO `oc_zone` VALUES ('3374', '215', 'Muş', 'MUS', '1');
INSERT INTO `oc_zone` VALUES ('3375', '215', 'Nevşehir', 'NEV', '1');
INSERT INTO `oc_zone` VALUES ('3376', '215', 'Niğde', 'NIG', '1');
INSERT INTO `oc_zone` VALUES ('3377', '215', 'Ordu', 'ORD', '1');
INSERT INTO `oc_zone` VALUES ('3378', '215', 'Osmaniye', 'OSM', '1');
INSERT INTO `oc_zone` VALUES ('3379', '215', 'Rize', 'RIZ', '1');
INSERT INTO `oc_zone` VALUES ('3380', '215', 'Sakarya', 'SAK', '1');
INSERT INTO `oc_zone` VALUES ('3381', '215', 'Samsun', 'SAM', '1');
INSERT INTO `oc_zone` VALUES ('3382', '215', 'Şanlıurfa', 'SAN', '1');
INSERT INTO `oc_zone` VALUES ('3383', '215', 'Siirt', 'SII', '1');
INSERT INTO `oc_zone` VALUES ('3384', '215', 'Sinop', 'SIN', '1');
INSERT INTO `oc_zone` VALUES ('3385', '215', 'Şırnak', 'SIR', '1');
INSERT INTO `oc_zone` VALUES ('3386', '215', 'Sivas', 'SIV', '1');
INSERT INTO `oc_zone` VALUES ('3387', '215', 'Tekirdağ', 'TEL', '1');
INSERT INTO `oc_zone` VALUES ('3388', '215', 'Tokat', 'TOK', '1');
INSERT INTO `oc_zone` VALUES ('3389', '215', 'Trabzon', 'TRA', '1');
INSERT INTO `oc_zone` VALUES ('3390', '215', 'Tunceli', 'TUN', '1');
INSERT INTO `oc_zone` VALUES ('3391', '215', 'Uşak', 'USK', '1');
INSERT INTO `oc_zone` VALUES ('3392', '215', 'Van', 'VAN', '1');
INSERT INTO `oc_zone` VALUES ('3393', '215', 'Yalova', 'YAL', '1');
INSERT INTO `oc_zone` VALUES ('3394', '215', 'Yozgat', 'YOZ', '1');
INSERT INTO `oc_zone` VALUES ('3395', '215', 'Zonguldak', 'ZON', '1');
INSERT INTO `oc_zone` VALUES ('3396', '216', 'Ahal Welayaty', 'A', '1');
INSERT INTO `oc_zone` VALUES ('3397', '216', 'Balkan Welayaty', 'B', '1');
INSERT INTO `oc_zone` VALUES ('3398', '216', 'Dashhowuz Welayaty', 'D', '1');
INSERT INTO `oc_zone` VALUES ('3399', '216', 'Lebap Welayaty', 'L', '1');
INSERT INTO `oc_zone` VALUES ('3400', '216', 'Mary Welayaty', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3401', '217', 'Ambergris Cays', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('3402', '217', 'Dellis Cay', 'DC', '1');
INSERT INTO `oc_zone` VALUES ('3403', '217', 'French Cay', 'FC', '1');
INSERT INTO `oc_zone` VALUES ('3404', '217', 'Little Water Cay', 'LW', '1');
INSERT INTO `oc_zone` VALUES ('3405', '217', 'Parrot Cay', 'RC', '1');
INSERT INTO `oc_zone` VALUES ('3406', '217', 'Pine Cay', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('3407', '217', 'Salt Cay', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3408', '217', 'Grand Turk', 'GT', '1');
INSERT INTO `oc_zone` VALUES ('3409', '217', 'South Caicos', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('3410', '217', 'East Caicos', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('3411', '217', 'Middle Caicos', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('3412', '217', 'North Caicos', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('3413', '217', 'Providenciales', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('3414', '217', 'West Caicos', 'WC', '1');
INSERT INTO `oc_zone` VALUES ('3415', '218', 'Nanumanga', 'NMG', '1');
INSERT INTO `oc_zone` VALUES ('3416', '218', 'Niulakita', 'NLK', '1');
INSERT INTO `oc_zone` VALUES ('3417', '218', 'Niutao', 'NTO', '1');
INSERT INTO `oc_zone` VALUES ('3418', '218', 'Funafuti', 'FUN', '1');
INSERT INTO `oc_zone` VALUES ('3419', '218', 'Nanumea', 'NME', '1');
INSERT INTO `oc_zone` VALUES ('3420', '218', 'Nui', 'NUI', '1');
INSERT INTO `oc_zone` VALUES ('3421', '218', 'Nukufetau', 'NFT', '1');
INSERT INTO `oc_zone` VALUES ('3422', '218', 'Nukulaelae', 'NLL', '1');
INSERT INTO `oc_zone` VALUES ('3423', '218', 'Vaitupu', 'VAI', '1');
INSERT INTO `oc_zone` VALUES ('3424', '219', 'Kalangala', 'KAL', '1');
INSERT INTO `oc_zone` VALUES ('3425', '219', 'Kampala', 'KMP', '1');
INSERT INTO `oc_zone` VALUES ('3426', '219', 'Kayunga', 'KAY', '1');
INSERT INTO `oc_zone` VALUES ('3427', '219', 'Kiboga', 'KIB', '1');
INSERT INTO `oc_zone` VALUES ('3428', '219', 'Luwero', 'LUW', '1');
INSERT INTO `oc_zone` VALUES ('3429', '219', 'Masaka', 'MAS', '1');
INSERT INTO `oc_zone` VALUES ('3430', '219', 'Mpigi', 'MPI', '1');
INSERT INTO `oc_zone` VALUES ('3431', '219', 'Mubende', 'MUB', '1');
INSERT INTO `oc_zone` VALUES ('3432', '219', 'Mukono', 'MUK', '1');
INSERT INTO `oc_zone` VALUES ('3433', '219', 'Nakasongola', 'NKS', '1');
INSERT INTO `oc_zone` VALUES ('3434', '219', 'Rakai', 'RAK', '1');
INSERT INTO `oc_zone` VALUES ('3435', '219', 'Sembabule', 'SEM', '1');
INSERT INTO `oc_zone` VALUES ('3436', '219', 'Wakiso', 'WAK', '1');
INSERT INTO `oc_zone` VALUES ('3437', '219', 'Bugiri', 'BUG', '1');
INSERT INTO `oc_zone` VALUES ('3438', '219', 'Busia', 'BUS', '1');
INSERT INTO `oc_zone` VALUES ('3439', '219', 'Iganga', 'IGA', '1');
INSERT INTO `oc_zone` VALUES ('3440', '219', 'Jinja', 'JIN', '1');
INSERT INTO `oc_zone` VALUES ('3441', '219', 'Kaberamaido', 'KAB', '1');
INSERT INTO `oc_zone` VALUES ('3442', '219', 'Kamuli', 'KML', '1');
INSERT INTO `oc_zone` VALUES ('3443', '219', 'Kapchorwa', 'KPC', '1');
INSERT INTO `oc_zone` VALUES ('3444', '219', 'Katakwi', 'KTK', '1');
INSERT INTO `oc_zone` VALUES ('3445', '219', 'Kumi', 'KUM', '1');
INSERT INTO `oc_zone` VALUES ('3446', '219', 'Mayuge', 'MAY', '1');
INSERT INTO `oc_zone` VALUES ('3447', '219', 'Mbale', 'MBA', '1');
INSERT INTO `oc_zone` VALUES ('3448', '219', 'Pallisa', 'PAL', '1');
INSERT INTO `oc_zone` VALUES ('3449', '219', 'Sironko', 'SIR', '1');
INSERT INTO `oc_zone` VALUES ('3450', '219', 'Soroti', 'SOR', '1');
INSERT INTO `oc_zone` VALUES ('3451', '219', 'Tororo', 'TOR', '1');
INSERT INTO `oc_zone` VALUES ('3452', '219', 'Adjumani', 'ADJ', '1');
INSERT INTO `oc_zone` VALUES ('3453', '219', 'Apac', 'APC', '1');
INSERT INTO `oc_zone` VALUES ('3454', '219', 'Arua', 'ARU', '1');
INSERT INTO `oc_zone` VALUES ('3455', '219', 'Gulu', 'GUL', '1');
INSERT INTO `oc_zone` VALUES ('3456', '219', 'Kitgum', 'KIT', '1');
INSERT INTO `oc_zone` VALUES ('3457', '219', 'Kotido', 'KOT', '1');
INSERT INTO `oc_zone` VALUES ('3458', '219', 'Lira', 'LIR', '1');
INSERT INTO `oc_zone` VALUES ('3459', '219', 'Moroto', 'MRT', '1');
INSERT INTO `oc_zone` VALUES ('3460', '219', 'Moyo', 'MOY', '1');
INSERT INTO `oc_zone` VALUES ('3461', '219', 'Nakapiripirit', 'NAK', '1');
INSERT INTO `oc_zone` VALUES ('3462', '219', 'Nebbi', 'NEB', '1');
INSERT INTO `oc_zone` VALUES ('3463', '219', 'Pader', 'PAD', '1');
INSERT INTO `oc_zone` VALUES ('3464', '219', 'Yumbe', 'YUM', '1');
INSERT INTO `oc_zone` VALUES ('3465', '219', 'Bundibugyo', 'BUN', '1');
INSERT INTO `oc_zone` VALUES ('3466', '219', 'Bushenyi', 'BSH', '1');
INSERT INTO `oc_zone` VALUES ('3467', '219', 'Hoima', 'HOI', '1');
INSERT INTO `oc_zone` VALUES ('3468', '219', 'Kabale', 'KBL', '1');
INSERT INTO `oc_zone` VALUES ('3469', '219', 'Kabarole', 'KAR', '1');
INSERT INTO `oc_zone` VALUES ('3470', '219', 'Kamwenge', 'KAM', '1');
INSERT INTO `oc_zone` VALUES ('3471', '219', 'Kanungu', 'KAN', '1');
INSERT INTO `oc_zone` VALUES ('3472', '219', 'Kasese', 'KAS', '1');
INSERT INTO `oc_zone` VALUES ('3473', '219', 'Kibaale', 'KBA', '1');
INSERT INTO `oc_zone` VALUES ('3474', '219', 'Kisoro', 'KIS', '1');
INSERT INTO `oc_zone` VALUES ('3475', '219', 'Kyenjojo', 'KYE', '1');
INSERT INTO `oc_zone` VALUES ('3476', '219', 'Masindi', 'MSN', '1');
INSERT INTO `oc_zone` VALUES ('3477', '219', 'Mbarara', 'MBR', '1');
INSERT INTO `oc_zone` VALUES ('3478', '219', 'Ntungamo', 'NTU', '1');
INSERT INTO `oc_zone` VALUES ('3479', '219', 'Rukungiri', 'RUK', '1');
INSERT INTO `oc_zone` VALUES ('3480', '220', 'Cherkas\'ka Oblast\'', '71', '1');
INSERT INTO `oc_zone` VALUES ('3481', '220', 'Chernihivs\'ka Oblast\'', '74', '1');
INSERT INTO `oc_zone` VALUES ('3482', '220', 'Chernivets\'ka Oblast\'', '77', '1');
INSERT INTO `oc_zone` VALUES ('3483', '220', 'Crimea', '43', '1');
INSERT INTO `oc_zone` VALUES ('3484', '220', 'Dnipropetrovs\'ka Oblast\'', '12', '1');
INSERT INTO `oc_zone` VALUES ('3485', '220', 'Donets\'ka Oblast\'', '14', '1');
INSERT INTO `oc_zone` VALUES ('3486', '220', 'Ivano-Frankivs\'ka Oblast\'', '26', '1');
INSERT INTO `oc_zone` VALUES ('3487', '220', 'Khersons\'ka Oblast\'', '65', '1');
INSERT INTO `oc_zone` VALUES ('3488', '220', 'Khmel\'nyts\'ka Oblast\'', '68', '1');
INSERT INTO `oc_zone` VALUES ('3489', '220', 'Kirovohrads\'ka Oblast\'', '35', '1');
INSERT INTO `oc_zone` VALUES ('3490', '220', 'Kyiv', '30', '1');
INSERT INTO `oc_zone` VALUES ('3491', '220', 'Kyivs\'ka Oblast\'', '32', '1');
INSERT INTO `oc_zone` VALUES ('3492', '220', 'Luhans\'ka Oblast\'', '09', '1');
INSERT INTO `oc_zone` VALUES ('3493', '220', 'L\'vivs\'ka Oblast\'', '46', '1');
INSERT INTO `oc_zone` VALUES ('3494', '220', 'Mykolayivs\'ka Oblast\'', '48', '1');
INSERT INTO `oc_zone` VALUES ('3495', '220', 'Odes\'ka Oblast\'', '51', '1');
INSERT INTO `oc_zone` VALUES ('3496', '220', 'Poltavs\'ka Oblast\'', '53', '1');
INSERT INTO `oc_zone` VALUES ('3497', '220', 'Rivnens\'ka Oblast\'', '56', '1');
INSERT INTO `oc_zone` VALUES ('3498', '220', 'Sevastopol\'', '40', '1');
INSERT INTO `oc_zone` VALUES ('3499', '220', 'Sums\'ka Oblast\'', '59', '1');
INSERT INTO `oc_zone` VALUES ('3500', '220', 'Ternopil\'s\'ka Oblast\'', '61', '1');
INSERT INTO `oc_zone` VALUES ('3501', '220', 'Vinnyts\'ka Oblast\'', '05', '1');
INSERT INTO `oc_zone` VALUES ('3502', '220', 'Volyns\'ka Oblast\'', '07', '1');
INSERT INTO `oc_zone` VALUES ('3503', '220', 'Zakarpats\'ka Oblast\'', '21', '1');
INSERT INTO `oc_zone` VALUES ('3504', '220', 'Zaporiz\'ka Oblast\'', '23', '1');
INSERT INTO `oc_zone` VALUES ('3505', '220', 'Zhytomyrs\'ka oblast\'', '18', '1');
INSERT INTO `oc_zone` VALUES ('3506', '221', 'Abu Dhabi', 'ADH', '1');
INSERT INTO `oc_zone` VALUES ('3507', '221', '\'Ajman', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('3508', '221', 'Al Fujayrah', 'FU', '1');
INSERT INTO `oc_zone` VALUES ('3509', '221', 'Ash Shariqah', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3510', '221', 'Dubai', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('3511', '221', 'R\'as al Khaymah', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('3512', '221', 'Umm al Qaywayn', 'UQ', '1');
INSERT INTO `oc_zone` VALUES ('3513', '222', 'Aberdeen', 'ABN', '1');
INSERT INTO `oc_zone` VALUES ('3514', '222', 'Aberdeenshire', 'ABNS', '1');
INSERT INTO `oc_zone` VALUES ('3515', '222', 'Anglesey', 'ANG', '1');
INSERT INTO `oc_zone` VALUES ('3516', '222', 'Angus', 'AGS', '1');
INSERT INTO `oc_zone` VALUES ('3517', '222', 'Argyll and Bute', 'ARY', '1');
INSERT INTO `oc_zone` VALUES ('3518', '222', 'Bedfordshire', 'BEDS', '1');
INSERT INTO `oc_zone` VALUES ('3519', '222', 'Berkshire', 'BERKS', '1');
INSERT INTO `oc_zone` VALUES ('3520', '222', 'Blaenau Gwent', 'BLA', '1');
INSERT INTO `oc_zone` VALUES ('3521', '222', 'Bridgend', 'BRI', '1');
INSERT INTO `oc_zone` VALUES ('3522', '222', 'Bristol', 'BSTL', '1');
INSERT INTO `oc_zone` VALUES ('3523', '222', 'Buckinghamshire', 'BUCKS', '1');
INSERT INTO `oc_zone` VALUES ('3524', '222', 'Caerphilly', 'CAE', '1');
INSERT INTO `oc_zone` VALUES ('3525', '222', 'Cambridgeshire', 'CAMBS', '1');
INSERT INTO `oc_zone` VALUES ('3526', '222', 'Cardiff', 'CDF', '1');
INSERT INTO `oc_zone` VALUES ('3527', '222', 'Carmarthenshire', 'CARM', '1');
INSERT INTO `oc_zone` VALUES ('3528', '222', 'Ceredigion', 'CDGN', '1');
INSERT INTO `oc_zone` VALUES ('3529', '222', 'Cheshire', 'CHES', '1');
INSERT INTO `oc_zone` VALUES ('3530', '222', 'Clackmannanshire', 'CLACK', '1');
INSERT INTO `oc_zone` VALUES ('3531', '222', 'Conwy', 'CON', '1');
INSERT INTO `oc_zone` VALUES ('3532', '222', 'Cornwall', 'CORN', '1');
INSERT INTO `oc_zone` VALUES ('3533', '222', 'Denbighshire', 'DNBG', '1');
INSERT INTO `oc_zone` VALUES ('3534', '222', 'Derbyshire', 'DERBY', '1');
INSERT INTO `oc_zone` VALUES ('3535', '222', 'Devon', 'DVN', '1');
INSERT INTO `oc_zone` VALUES ('3536', '222', 'Dorset', 'DOR', '1');
INSERT INTO `oc_zone` VALUES ('3537', '222', 'Dumfries and Galloway', 'DGL', '1');
INSERT INTO `oc_zone` VALUES ('3538', '222', 'Dundee', 'DUND', '1');
INSERT INTO `oc_zone` VALUES ('3539', '222', 'Durham', 'DHM', '1');
INSERT INTO `oc_zone` VALUES ('3540', '222', 'East Ayrshire', 'ARYE', '1');
INSERT INTO `oc_zone` VALUES ('3541', '222', 'East Dunbartonshire', 'DUNBE', '1');
INSERT INTO `oc_zone` VALUES ('3542', '222', 'East Lothian', 'LOTE', '1');
INSERT INTO `oc_zone` VALUES ('3543', '222', 'East Renfrewshire', 'RENE', '1');
INSERT INTO `oc_zone` VALUES ('3544', '222', 'East Riding of Yorkshire', 'ERYS', '1');
INSERT INTO `oc_zone` VALUES ('3545', '222', 'East Sussex', 'SXE', '1');
INSERT INTO `oc_zone` VALUES ('3546', '222', 'Edinburgh', 'EDIN', '1');
INSERT INTO `oc_zone` VALUES ('3547', '222', 'Essex', 'ESX', '1');
INSERT INTO `oc_zone` VALUES ('3548', '222', 'Falkirk', 'FALK', '1');
INSERT INTO `oc_zone` VALUES ('3549', '222', 'Fife', 'FFE', '1');
INSERT INTO `oc_zone` VALUES ('3550', '222', 'Flintshire', 'FLINT', '1');
INSERT INTO `oc_zone` VALUES ('3551', '222', 'Glasgow', 'GLAS', '1');
INSERT INTO `oc_zone` VALUES ('3552', '222', 'Gloucestershire', 'GLOS', '1');
INSERT INTO `oc_zone` VALUES ('3553', '222', 'Greater London', 'LDN', '1');
INSERT INTO `oc_zone` VALUES ('3554', '222', 'Greater Manchester', 'MCH', '1');
INSERT INTO `oc_zone` VALUES ('3555', '222', 'Gwynedd', 'GDD', '1');
INSERT INTO `oc_zone` VALUES ('3556', '222', 'Hampshire', 'HANTS', '1');
INSERT INTO `oc_zone` VALUES ('3557', '222', 'Herefordshire', 'HWR', '1');
INSERT INTO `oc_zone` VALUES ('3558', '222', 'Hertfordshire', 'HERTS', '1');
INSERT INTO `oc_zone` VALUES ('3559', '222', 'Highlands', 'HLD', '1');
INSERT INTO `oc_zone` VALUES ('3560', '222', 'Inverclyde', 'IVER', '1');
INSERT INTO `oc_zone` VALUES ('3561', '222', 'Isle of Wight', 'IOW', '1');
INSERT INTO `oc_zone` VALUES ('3562', '222', 'Kent', 'KNT', '1');
INSERT INTO `oc_zone` VALUES ('3563', '222', 'Lancashire', 'LANCS', '1');
INSERT INTO `oc_zone` VALUES ('3564', '222', 'Leicestershire', 'LEICS', '1');
INSERT INTO `oc_zone` VALUES ('3565', '222', 'Lincolnshire', 'LINCS', '1');
INSERT INTO `oc_zone` VALUES ('3566', '222', 'Merseyside', 'MSY', '1');
INSERT INTO `oc_zone` VALUES ('3567', '222', 'Merthyr Tydfil', 'MERT', '1');
INSERT INTO `oc_zone` VALUES ('3568', '222', 'Midlothian', 'MLOT', '1');
INSERT INTO `oc_zone` VALUES ('3569', '222', 'Monmouthshire', 'MMOUTH', '1');
INSERT INTO `oc_zone` VALUES ('3570', '222', 'Moray', 'MORAY', '1');
INSERT INTO `oc_zone` VALUES ('3571', '222', 'Neath Port Talbot', 'NPRTAL', '1');
INSERT INTO `oc_zone` VALUES ('3572', '222', 'Newport', 'NEWPT', '1');
INSERT INTO `oc_zone` VALUES ('3573', '222', 'Norfolk', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('3574', '222', 'North Ayrshire', 'ARYN', '1');
INSERT INTO `oc_zone` VALUES ('3575', '222', 'North Lanarkshire', 'LANN', '1');
INSERT INTO `oc_zone` VALUES ('3576', '222', 'North Yorkshire', 'YSN', '1');
INSERT INTO `oc_zone` VALUES ('3577', '222', 'Northamptonshire', 'NHM', '1');
INSERT INTO `oc_zone` VALUES ('3578', '222', 'Northumberland', 'NLD', '1');
INSERT INTO `oc_zone` VALUES ('3579', '222', 'Nottinghamshire', 'NOT', '1');
INSERT INTO `oc_zone` VALUES ('3580', '222', 'Orkney Islands', 'ORK', '1');
INSERT INTO `oc_zone` VALUES ('3581', '222', 'Oxfordshire', 'OFE', '1');
INSERT INTO `oc_zone` VALUES ('3582', '222', 'Pembrokeshire', 'PEM', '1');
INSERT INTO `oc_zone` VALUES ('3583', '222', 'Perth and Kinross', 'PERTH', '1');
INSERT INTO `oc_zone` VALUES ('3584', '222', 'Powys', 'PWS', '1');
INSERT INTO `oc_zone` VALUES ('3585', '222', 'Renfrewshire', 'REN', '1');
INSERT INTO `oc_zone` VALUES ('3586', '222', 'Rhondda Cynon Taff', 'RHON', '1');
INSERT INTO `oc_zone` VALUES ('3587', '222', 'Rutland', 'RUT', '1');
INSERT INTO `oc_zone` VALUES ('3588', '222', 'Scottish Borders', 'BOR', '1');
INSERT INTO `oc_zone` VALUES ('3589', '222', 'Shetland Islands', 'SHET', '1');
INSERT INTO `oc_zone` VALUES ('3590', '222', 'Shropshire', 'SPE', '1');
INSERT INTO `oc_zone` VALUES ('3591', '222', 'Somerset', 'SOM', '1');
INSERT INTO `oc_zone` VALUES ('3592', '222', 'South Ayrshire', 'ARYS', '1');
INSERT INTO `oc_zone` VALUES ('3593', '222', 'South Lanarkshire', 'LANS', '1');
INSERT INTO `oc_zone` VALUES ('3594', '222', 'South Yorkshire', 'YSS', '1');
INSERT INTO `oc_zone` VALUES ('3595', '222', 'Staffordshire', 'SFD', '1');
INSERT INTO `oc_zone` VALUES ('3596', '222', 'Stirling', 'STIR', '1');
INSERT INTO `oc_zone` VALUES ('3597', '222', 'Suffolk', 'SFK', '1');
INSERT INTO `oc_zone` VALUES ('3598', '222', 'Surrey', 'SRY', '1');
INSERT INTO `oc_zone` VALUES ('3599', '222', 'Swansea', 'SWAN', '1');
INSERT INTO `oc_zone` VALUES ('3600', '222', 'Torfaen', 'TORF', '1');
INSERT INTO `oc_zone` VALUES ('3601', '222', 'Tyne and Wear', 'TWR', '1');
INSERT INTO `oc_zone` VALUES ('3602', '222', 'Vale of Glamorgan', 'VGLAM', '1');
INSERT INTO `oc_zone` VALUES ('3603', '222', 'Warwickshire', 'WARKS', '1');
INSERT INTO `oc_zone` VALUES ('3604', '222', 'West Dunbartonshire', 'WDUN', '1');
INSERT INTO `oc_zone` VALUES ('3605', '222', 'West Lothian', 'WLOT', '1');
INSERT INTO `oc_zone` VALUES ('3606', '222', 'West Midlands', 'WMD', '1');
INSERT INTO `oc_zone` VALUES ('3607', '222', 'West Sussex', 'SXW', '1');
INSERT INTO `oc_zone` VALUES ('3608', '222', 'West Yorkshire', 'YSW', '1');
INSERT INTO `oc_zone` VALUES ('3609', '222', 'Western Isles', 'WIL', '1');
INSERT INTO `oc_zone` VALUES ('3610', '222', 'Wiltshire', 'WLT', '1');
INSERT INTO `oc_zone` VALUES ('3611', '222', 'Worcestershire', 'WORCS', '1');
INSERT INTO `oc_zone` VALUES ('3612', '222', 'Wrexham', 'WRX', '1');
INSERT INTO `oc_zone` VALUES ('3613', '223', 'Alabama', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('3614', '223', 'Alaska', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('3615', '223', 'American Samoa', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('3616', '223', 'Arizona', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('3617', '223', 'Arkansas', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3618', '223', 'Armed Forces Africa', 'AF', '1');
INSERT INTO `oc_zone` VALUES ('3619', '223', 'Armed Forces Americas', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('3620', '223', 'Armed Forces Canada', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('3621', '223', 'Armed Forces Europe', 'AE', '1');
INSERT INTO `oc_zone` VALUES ('3622', '223', 'Armed Forces Middle East', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('3623', '223', 'Armed Forces Pacific', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('3624', '223', 'California', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('3625', '223', 'Colorado', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3626', '223', 'Connecticut', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3627', '223', 'Delaware', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('3628', '223', 'District of Columbia', 'DC', '1');
INSERT INTO `oc_zone` VALUES ('3629', '223', 'Federated States Of Micronesia', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('3630', '223', 'Florida', 'FL', '1');
INSERT INTO `oc_zone` VALUES ('3631', '223', 'Georgia', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('3632', '223', 'Guam', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('3633', '223', 'Hawaii', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3634', '223', 'Idaho', 'ID', '1');
INSERT INTO `oc_zone` VALUES ('3635', '223', 'Illinois', 'IL', '1');
INSERT INTO `oc_zone` VALUES ('3636', '223', 'Indiana', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('3637', '223', 'Iowa', 'IA', '1');
INSERT INTO `oc_zone` VALUES ('3638', '223', 'Kansas', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('3639', '223', 'Kentucky', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('3640', '223', 'Louisiana', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3641', '223', 'Maine', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3642', '223', 'Marshall Islands', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('3643', '223', 'Maryland', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('3644', '223', 'Massachusetts', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3645', '223', 'Michigan', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('3646', '223', 'Minnesota', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3647', '223', 'Mississippi', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('3648', '223', 'Missouri', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3649', '223', 'Montana', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('3650', '223', 'Nebraska', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('3651', '223', 'Nevada', 'NV', '1');
INSERT INTO `oc_zone` VALUES ('3652', '223', 'New Hampshire', 'NH', '1');
INSERT INTO `oc_zone` VALUES ('3653', '223', 'New Jersey', 'NJ', '1');
INSERT INTO `oc_zone` VALUES ('3654', '223', 'New Mexico', 'NM', '1');
INSERT INTO `oc_zone` VALUES ('3655', '223', 'New York', 'NY', '1');
INSERT INTO `oc_zone` VALUES ('3656', '223', 'North Carolina', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('3657', '223', 'North Dakota', 'ND', '1');
INSERT INTO `oc_zone` VALUES ('3658', '223', 'Northern Mariana Islands', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('3659', '223', 'Ohio', 'OH', '1');
INSERT INTO `oc_zone` VALUES ('3660', '223', 'Oklahoma', 'OK', '1');
INSERT INTO `oc_zone` VALUES ('3661', '223', 'Oregon', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('3662', '223', 'Palau', 'PW', '1');
INSERT INTO `oc_zone` VALUES ('3663', '223', 'Pennsylvania', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3664', '223', 'Puerto Rico', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('3665', '223', 'Rhode Island', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('3666', '223', 'South Carolina', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('3667', '223', 'South Dakota', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('3668', '223', 'Tennessee', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3669', '223', 'Texas', 'TX', '1');
INSERT INTO `oc_zone` VALUES ('3670', '223', 'Utah', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('3671', '223', 'Vermont', 'VT', '1');
INSERT INTO `oc_zone` VALUES ('3672', '223', 'Virgin Islands', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('3673', '223', 'Virginia', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('3674', '223', 'Washington', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('3675', '223', 'West Virginia', 'WV', '1');
INSERT INTO `oc_zone` VALUES ('3676', '223', 'Wisconsin', 'WI', '1');
INSERT INTO `oc_zone` VALUES ('3677', '223', 'Wyoming', 'WY', '1');
INSERT INTO `oc_zone` VALUES ('3678', '224', 'Baker Island', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('3679', '224', 'Howland Island', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3680', '224', 'Jarvis Island', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('3681', '224', 'Johnston Atoll', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('3682', '224', 'Kingman Reef', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('3683', '224', 'Midway Atoll', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3684', '224', 'Navassa Island', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('3685', '224', 'Palmyra Atoll', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3686', '224', 'Wake Island', 'WI', '1');
INSERT INTO `oc_zone` VALUES ('3687', '225', 'Artigas', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3688', '225', 'Canelones', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('3689', '225', 'Cerro Largo', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('3690', '225', 'Colonia', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3691', '225', 'Durazno', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('3692', '225', 'Flores', 'FS', '1');
INSERT INTO `oc_zone` VALUES ('3693', '225', 'Florida', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('3694', '225', 'Lavalleja', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3695', '225', 'Maldonado', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3696', '225', 'Montevideo', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3697', '225', 'Paysandu', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3698', '225', 'Rio Negro', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('3699', '225', 'Rivera', 'RV', '1');
INSERT INTO `oc_zone` VALUES ('3700', '225', 'Rocha', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('3701', '225', 'Salto', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3702', '225', 'San Jose', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('3703', '225', 'Soriano', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3704', '225', 'Tacuarembo', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3705', '225', 'Treinta y Tres', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('3706', '226', 'Andijon', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('3707', '226', 'Buxoro', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('3708', '226', 'Farg\'ona', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('3709', '226', 'Jizzax', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('3710', '226', 'Namangan', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('3711', '226', 'Navoiy', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3712', '226', 'Qashqadaryo', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('3713', '226', 'Qoraqalpog\'iston Republikasi', 'QR', '1');
INSERT INTO `oc_zone` VALUES ('3714', '226', 'Samarqand', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3715', '226', 'Sirdaryo', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3716', '226', 'Surxondaryo', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3717', '226', 'Toshkent City', 'TK', '1');
INSERT INTO `oc_zone` VALUES ('3718', '226', 'Toshkent Region', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3719', '226', 'Xorazm', 'XO', '1');
INSERT INTO `oc_zone` VALUES ('3720', '227', 'Malampa', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3721', '227', 'Penama', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('3722', '227', 'Sanma', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3723', '227', 'Shefa', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3724', '227', 'Tafea', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3725', '227', 'Torba', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3726', '229', 'Amazonas', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('3727', '229', 'Anzoategui', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('3728', '229', 'Apure', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('3729', '229', 'Aragua', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3730', '229', 'Barinas', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3731', '229', 'Bolivar', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('3732', '229', 'Carabobo', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('3733', '229', 'Cojedes', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3734', '229', 'Delta Amacuro', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('3735', '229', 'Dependencias Federales', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('3736', '229', 'Distrito Federal', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('3737', '229', 'Falcon', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('3738', '229', 'Guarico', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('3739', '229', 'Lara', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3740', '229', 'Merida', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3741', '229', 'Miranda', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('3742', '229', 'Monagas', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3743', '229', 'Nueva Esparta', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('3744', '229', 'Portuguesa', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('3745', '229', 'Sucre', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3746', '229', 'Tachira', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3747', '229', 'Trujillo', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('3748', '229', 'Vargas', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('3749', '229', 'Yaracuy', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('3750', '229', 'Zulia', 'ZU', '1');
INSERT INTO `oc_zone` VALUES ('3751', '230', 'An Giang', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3752', '230', 'Bac Giang', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('3753', '230', 'Bac Kan', 'BK', '1');
INSERT INTO `oc_zone` VALUES ('3754', '230', 'Bac Lieu', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('3755', '230', 'Bac Ninh', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('3756', '230', 'Ba Ria-Vung Tau', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('3757', '230', 'Ben Tre', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('3758', '230', 'Binh Dinh', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('3759', '230', 'Binh Duong', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('3760', '230', 'Binh Phuoc', 'BP', '1');
INSERT INTO `oc_zone` VALUES ('3761', '230', 'Binh Thuan', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('3762', '230', 'Ca Mau', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('3763', '230', 'Can Tho', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3764', '230', 'Cao Bang', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('3765', '230', 'Dak Lak', 'DL', '1');
INSERT INTO `oc_zone` VALUES ('3766', '230', 'Dak Nong', 'DG', '1');
INSERT INTO `oc_zone` VALUES ('3767', '230', 'Da Nang', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('3768', '230', 'Dien Bien', 'DB', '1');
INSERT INTO `oc_zone` VALUES ('3769', '230', 'Dong Nai', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('3770', '230', 'Dong Thap', 'DT', '1');
INSERT INTO `oc_zone` VALUES ('3771', '230', 'Gia Lai', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('3772', '230', 'Ha Giang', 'HG', '1');
INSERT INTO `oc_zone` VALUES ('3773', '230', 'Hai Duong', 'HD', '1');
INSERT INTO `oc_zone` VALUES ('3774', '230', 'Hai Phong', 'HP', '1');
INSERT INTO `oc_zone` VALUES ('3775', '230', 'Ha Nam', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('3776', '230', 'Ha Noi', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3777', '230', 'Ha Tay', 'HT', '1');
INSERT INTO `oc_zone` VALUES ('3778', '230', 'Ha Tinh', 'HH', '1');
INSERT INTO `oc_zone` VALUES ('3779', '230', 'Hoa Binh', 'HB', '1');
INSERT INTO `oc_zone` VALUES ('3780', '230', 'Ho Chi Minh City', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('3781', '230', 'Hau Giang', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('3782', '230', 'Hung Yen', 'HY', '1');
INSERT INTO `oc_zone` VALUES ('3783', '232', 'Saint Croix', 'C', '1');
INSERT INTO `oc_zone` VALUES ('3784', '232', 'Saint John', 'J', '1');
INSERT INTO `oc_zone` VALUES ('3785', '232', 'Saint Thomas', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3786', '233', 'Alo', 'A', '1');
INSERT INTO `oc_zone` VALUES ('3787', '233', 'Sigave', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3788', '233', 'Wallis', 'W', '1');
INSERT INTO `oc_zone` VALUES ('3789', '235', 'Abyan', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('3790', '235', 'Adan', 'AD', '1');
INSERT INTO `oc_zone` VALUES ('3791', '235', 'Amran', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('3792', '235', 'Al Bayda', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3793', '235', 'Ad Dali', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('3794', '235', 'Dhamar', 'DH', '1');
INSERT INTO `oc_zone` VALUES ('3795', '235', 'Hadramawt', 'HD', '1');
INSERT INTO `oc_zone` VALUES ('3796', '235', 'Hajjah', 'HJ', '1');
INSERT INTO `oc_zone` VALUES ('3797', '235', 'Al Hudaydah', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('3798', '235', 'Ibb', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('3799', '235', 'Al Jawf', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('3800', '235', 'Lahij', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3801', '235', 'Ma\'rib', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3802', '235', 'Al Mahrah', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('3803', '235', 'Al Mahwit', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('3804', '235', 'Sa\'dah', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('3805', '235', 'San\'a', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('3806', '235', 'Shabwah', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3807', '235', 'Ta\'izz', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3812', '237', 'Bas-Congo', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('3813', '237', 'Bandundu', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('3814', '237', 'Equateur', 'EQ', '1');
INSERT INTO `oc_zone` VALUES ('3815', '237', 'Katanga', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('3816', '237', 'Kasai-Oriental', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('3817', '237', 'Kinshasa', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('3818', '237', 'Kasai-Occidental', 'KW', '1');
INSERT INTO `oc_zone` VALUES ('3819', '237', 'Maniema', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3820', '237', 'Nord-Kivu', 'NK', '1');
INSERT INTO `oc_zone` VALUES ('3821', '237', 'Orientale', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('3822', '237', 'Sud-Kivu', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('3823', '238', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('3824', '238', 'Copperbelt', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('3825', '238', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('3826', '238', 'Luapula', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('3827', '238', 'Lusaka', 'LK', '1');
INSERT INTO `oc_zone` VALUES ('3828', '238', 'Northern', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('3829', '238', 'North-Western', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3830', '238', 'Southern', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3831', '238', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('3832', '239', 'Bulawayo', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('3833', '239', 'Harare', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('3834', '239', 'Manicaland', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('3835', '239', 'Mashonaland Central', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('3836', '239', 'Mashonaland East', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3837', '239', 'Mashonaland West', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('3838', '239', 'Masvingo', 'MV', '1');
INSERT INTO `oc_zone` VALUES ('3839', '239', 'Matabeleland North', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3840', '239', 'Matabeleland South', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('3841', '239', 'Midlands', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('3861', '105', 'Campobasso', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('3863', '105', 'Caserta', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('3864', '105', 'Catania', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3865', '105', 'Catanzaro', 'CZ', '1');
INSERT INTO `oc_zone` VALUES ('3866', '105', 'Chieti', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('3867', '105', 'Como', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3868', '105', 'Cosenza', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('3869', '105', 'Cremona', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('3870', '105', 'Crotone', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('3871', '105', 'Cuneo', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('3872', '105', 'Enna', 'EN', '1');
INSERT INTO `oc_zone` VALUES ('3873', '105', 'Ferrara', 'FE', '1');
INSERT INTO `oc_zone` VALUES ('3874', '105', 'Firenze', 'FI', '1');
INSERT INTO `oc_zone` VALUES ('3875', '105', 'Foggia', 'FG', '1');
INSERT INTO `oc_zone` VALUES ('3876', '105', 'Forli-Cesena', 'FC', '1');
INSERT INTO `oc_zone` VALUES ('3877', '105', 'Frosinone', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('3878', '105', 'Genova', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('3879', '105', 'Gorizia', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('3880', '105', 'Grosseto', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('3881', '105', 'Imperia', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('3882', '105', 'Isernia', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('3883', '105', 'L&#39;Aquila', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('3884', '105', 'La Spezia', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('3885', '105', 'Latina', 'LT', '1');
INSERT INTO `oc_zone` VALUES ('3886', '105', 'Lecce', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('3887', '105', 'Lecco', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('3888', '105', 'Livorno', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('3889', '105', 'Lodi', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('3890', '105', 'Lucca', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('3891', '105', 'Macerata', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('3892', '105', 'Mantova', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3893', '105', 'Massa-Carrara', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('3894', '105', 'Matera', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('3896', '105', 'Messina', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3897', '105', 'Milano', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('3898', '105', 'Modena', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3899', '105', 'Napoli', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('3900', '105', 'Novara', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('3901', '105', 'Nuoro', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('3904', '105', 'Oristano', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('3905', '105', 'Padova', 'PD', '1');
INSERT INTO `oc_zone` VALUES ('3906', '105', 'Palermo', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3907', '105', 'Parma', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('3908', '105', 'Pavia', 'PV', '1');
INSERT INTO `oc_zone` VALUES ('3909', '105', 'Perugia', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('3910', '105', 'Pesaro e Urbino', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('3911', '105', 'Pescara', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('3912', '105', 'Piacenza', 'PC', '1');
INSERT INTO `oc_zone` VALUES ('3913', '105', 'Pisa', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('3914', '105', 'Pistoia', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('3915', '105', 'Pordenone', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('3916', '105', 'Potenza', 'PZ', '1');
INSERT INTO `oc_zone` VALUES ('3917', '105', 'Prato', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('3918', '105', 'Ragusa', 'RG', '1');
INSERT INTO `oc_zone` VALUES ('3919', '105', 'Ravenna', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('3920', '105', 'Reggio Calabria', 'RC', '1');
INSERT INTO `oc_zone` VALUES ('3921', '105', 'Reggio Emilia', 'RE', '1');
INSERT INTO `oc_zone` VALUES ('3922', '105', 'Rieti', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('3923', '105', 'Rimini', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('3924', '105', 'Roma', 'RM', '1');
INSERT INTO `oc_zone` VALUES ('3925', '105', 'Rovigo', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('3926', '105', 'Salerno', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3927', '105', 'Sassari', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('3928', '105', 'Savona', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('3929', '105', 'Siena', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3930', '105', 'Siracusa', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('3931', '105', 'Sondrio', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3932', '105', 'Taranto', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3933', '105', 'Teramo', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('3934', '105', 'Terni', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('3935', '105', 'Torino', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3936', '105', 'Trapani', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('3937', '105', 'Trento', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3938', '105', 'Treviso', 'TV', '1');
INSERT INTO `oc_zone` VALUES ('3939', '105', 'Trieste', 'TS', '1');
INSERT INTO `oc_zone` VALUES ('3940', '105', 'Udine', 'UD', '1');
INSERT INTO `oc_zone` VALUES ('3941', '105', 'Varese', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('3942', '105', 'Venezia', 'VE', '1');
INSERT INTO `oc_zone` VALUES ('3943', '105', 'Verbano-Cusio-Ossola', 'VB', '1');
INSERT INTO `oc_zone` VALUES ('3944', '105', 'Vercelli', 'VC', '1');
INSERT INTO `oc_zone` VALUES ('3945', '105', 'Verona', 'VR', '1');
INSERT INTO `oc_zone` VALUES ('3946', '105', 'Vibo Valentia', 'VV', '1');
INSERT INTO `oc_zone` VALUES ('3947', '105', 'Vicenza', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('3948', '105', 'Viterbo', 'VT', '1');
INSERT INTO `oc_zone` VALUES ('3949', '222', 'County Antrim', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('3950', '222', 'County Armagh', 'ARM', '1');
INSERT INTO `oc_zone` VALUES ('3951', '222', 'County Down', 'DOW', '1');
INSERT INTO `oc_zone` VALUES ('3952', '222', 'County Fermanagh', 'FER', '1');
INSERT INTO `oc_zone` VALUES ('3953', '222', 'County Londonderry', 'LDY', '1');
INSERT INTO `oc_zone` VALUES ('3954', '222', 'County Tyrone', 'TYR', '1');
INSERT INTO `oc_zone` VALUES ('3955', '222', 'Cumbria', 'CMA', '1');
INSERT INTO `oc_zone` VALUES ('3956', '190', 'Pomurska', '1', '1');
INSERT INTO `oc_zone` VALUES ('3957', '190', 'Podravska', '2', '1');
INSERT INTO `oc_zone` VALUES ('3958', '190', 'Koroška', '3', '1');
INSERT INTO `oc_zone` VALUES ('3959', '190', 'Savinjska', '4', '1');
INSERT INTO `oc_zone` VALUES ('3960', '190', 'Zasavska', '5', '1');
INSERT INTO `oc_zone` VALUES ('3961', '190', 'Spodnjeposavska', '6', '1');
INSERT INTO `oc_zone` VALUES ('3962', '190', 'Jugovzhodna Slovenija', '7', '1');
INSERT INTO `oc_zone` VALUES ('3963', '190', 'Osrednjeslovenska', '8', '1');
INSERT INTO `oc_zone` VALUES ('3964', '190', 'Gorenjska', '9', '1');
INSERT INTO `oc_zone` VALUES ('3965', '190', 'Notranjsko-kraška', '10', '1');
INSERT INTO `oc_zone` VALUES ('3966', '190', 'Goriška', '11', '1');
INSERT INTO `oc_zone` VALUES ('3967', '190', 'Obalno-kraška', '12', '1');
INSERT INTO `oc_zone` VALUES ('3968', '33', 'Ruse', '', '1');
INSERT INTO `oc_zone` VALUES ('3969', '101', 'Alborz', 'ALB', '1');
INSERT INTO `oc_zone` VALUES ('3970', '21', 'Brussels-Capital Region', 'BRU', '1');
INSERT INTO `oc_zone` VALUES ('3971', '138', 'Aguascalientes', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3973', '242', 'Andrijevica', '01', '1');
INSERT INTO `oc_zone` VALUES ('3974', '242', 'Bar', '02', '1');
INSERT INTO `oc_zone` VALUES ('3975', '242', 'Berane', '03', '1');
INSERT INTO `oc_zone` VALUES ('3976', '242', 'Bijelo Polje', '04', '1');
INSERT INTO `oc_zone` VALUES ('3977', '242', 'Budva', '05', '1');
INSERT INTO `oc_zone` VALUES ('3978', '242', 'Cetinje', '06', '1');
INSERT INTO `oc_zone` VALUES ('3979', '242', 'Danilovgrad', '07', '1');
INSERT INTO `oc_zone` VALUES ('3980', '242', 'Herceg-Novi', '08', '1');
INSERT INTO `oc_zone` VALUES ('3981', '242', 'Kolašin', '09', '1');
INSERT INTO `oc_zone` VALUES ('3982', '242', 'Kotor', '10', '1');
INSERT INTO `oc_zone` VALUES ('3983', '242', 'Mojkovac', '11', '1');
INSERT INTO `oc_zone` VALUES ('3984', '242', 'Nikšić', '12', '1');
INSERT INTO `oc_zone` VALUES ('3985', '242', 'Plav', '13', '1');
INSERT INTO `oc_zone` VALUES ('3986', '242', 'Pljevlja', '14', '1');
INSERT INTO `oc_zone` VALUES ('3987', '242', 'Plužine', '15', '1');
INSERT INTO `oc_zone` VALUES ('3988', '242', 'Podgorica', '16', '1');
INSERT INTO `oc_zone` VALUES ('3989', '242', 'Rožaje', '17', '1');
INSERT INTO `oc_zone` VALUES ('3990', '242', 'Šavnik', '18', '1');
INSERT INTO `oc_zone` VALUES ('3991', '242', 'Tivat', '19', '1');
INSERT INTO `oc_zone` VALUES ('3992', '242', 'Ulcinj', '20', '1');
INSERT INTO `oc_zone` VALUES ('3993', '242', 'Žabljak', '21', '1');
INSERT INTO `oc_zone` VALUES ('3994', '243', 'Belgrade', '00', '1');
INSERT INTO `oc_zone` VALUES ('3995', '243', 'North Bačka', '01', '1');
INSERT INTO `oc_zone` VALUES ('3996', '243', 'Central Banat', '02', '1');
INSERT INTO `oc_zone` VALUES ('3997', '243', 'North Banat', '03', '1');
INSERT INTO `oc_zone` VALUES ('3998', '243', 'South Banat', '04', '1');
INSERT INTO `oc_zone` VALUES ('3999', '243', 'West Bačka', '05', '1');
INSERT INTO `oc_zone` VALUES ('4000', '243', 'South Bačka', '06', '1');
INSERT INTO `oc_zone` VALUES ('4001', '243', 'Srem', '07', '1');
INSERT INTO `oc_zone` VALUES ('4002', '243', 'Mačva', '08', '1');
INSERT INTO `oc_zone` VALUES ('4003', '243', 'Kolubara', '09', '1');
INSERT INTO `oc_zone` VALUES ('4004', '243', 'Podunavlje', '10', '1');
INSERT INTO `oc_zone` VALUES ('4005', '243', 'Braničevo', '11', '1');
INSERT INTO `oc_zone` VALUES ('4006', '243', 'Šumadija', '12', '1');
INSERT INTO `oc_zone` VALUES ('4007', '243', 'Pomoravlje', '13', '1');
INSERT INTO `oc_zone` VALUES ('4008', '243', 'Bor', '14', '1');
INSERT INTO `oc_zone` VALUES ('4009', '243', 'Zaječar', '15', '1');
INSERT INTO `oc_zone` VALUES ('4010', '243', 'Zlatibor', '16', '1');
INSERT INTO `oc_zone` VALUES ('4011', '243', 'Moravica', '17', '1');
INSERT INTO `oc_zone` VALUES ('4012', '243', 'Raška', '18', '1');
INSERT INTO `oc_zone` VALUES ('4013', '243', 'Rasina', '19', '1');
INSERT INTO `oc_zone` VALUES ('4014', '243', 'Nišava', '20', '1');
INSERT INTO `oc_zone` VALUES ('4015', '243', 'Toplica', '21', '1');
INSERT INTO `oc_zone` VALUES ('4016', '243', 'Pirot', '22', '1');
INSERT INTO `oc_zone` VALUES ('4017', '243', 'Jablanica', '23', '1');
INSERT INTO `oc_zone` VALUES ('4018', '243', 'Pčinja', '24', '1');
INSERT INTO `oc_zone` VALUES ('4020', '245', 'Bonaire', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('4021', '245', 'Saba', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('4022', '245', 'Sint Eustatius', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('4023', '248', 'Central Equatoria', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('4024', '248', 'Eastern Equatoria', 'EE', '1');
INSERT INTO `oc_zone` VALUES ('4025', '248', 'Jonglei', 'JG', '1');
INSERT INTO `oc_zone` VALUES ('4026', '248', 'Lakes', 'LK', '1');
INSERT INTO `oc_zone` VALUES ('4027', '248', 'Northern Bahr el-Ghazal', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('4028', '248', 'Unity', 'UY', '1');
INSERT INTO `oc_zone` VALUES ('4029', '248', 'Upper Nile', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('4030', '248', 'Warrap', 'WR', '1');
INSERT INTO `oc_zone` VALUES ('4031', '248', 'Western Bahr el-Ghazal', 'BW', '1');
INSERT INTO `oc_zone` VALUES ('4032', '248', 'Western Equatoria', 'EW', '1');
INSERT INTO `oc_zone` VALUES ('4036', '117', 'Ainaži, Salacgrīvas novads', '0661405', '1');
INSERT INTO `oc_zone` VALUES ('4037', '117', 'Aizkraukle, Aizkraukles novads', '0320201', '1');
INSERT INTO `oc_zone` VALUES ('4038', '117', 'Aizkraukles novads', '0320200', '1');
INSERT INTO `oc_zone` VALUES ('4039', '117', 'Aizpute, Aizputes novads', '0640605', '1');
INSERT INTO `oc_zone` VALUES ('4040', '117', 'Aizputes novads', '0640600', '1');
INSERT INTO `oc_zone` VALUES ('4041', '117', 'Aknīste, Aknīstes novads', '0560805', '1');
INSERT INTO `oc_zone` VALUES ('4042', '117', 'Aknīstes novads', '0560800', '1');
INSERT INTO `oc_zone` VALUES ('4043', '117', 'Aloja, Alojas novads', '0661007', '1');
INSERT INTO `oc_zone` VALUES ('4044', '117', 'Alojas novads', '0661000', '1');
INSERT INTO `oc_zone` VALUES ('4045', '117', 'Alsungas novads', '0624200', '1');
INSERT INTO `oc_zone` VALUES ('4046', '117', 'Alūksne, Alūksnes novads', '0360201', '1');
INSERT INTO `oc_zone` VALUES ('4047', '117', 'Alūksnes novads', '0360200', '1');
INSERT INTO `oc_zone` VALUES ('4048', '117', 'Amatas novads', '0424701', '1');
INSERT INTO `oc_zone` VALUES ('4049', '117', 'Ape, Apes novads', '0360805', '1');
INSERT INTO `oc_zone` VALUES ('4050', '117', 'Apes novads', '0360800', '1');
INSERT INTO `oc_zone` VALUES ('4051', '117', 'Auce, Auces novads', '0460805', '1');
INSERT INTO `oc_zone` VALUES ('4052', '117', 'Auces novads', '0460800', '1');
INSERT INTO `oc_zone` VALUES ('4053', '117', 'Ādažu novads', '0804400', '1');
INSERT INTO `oc_zone` VALUES ('4054', '117', 'Babītes novads', '0804900', '1');
INSERT INTO `oc_zone` VALUES ('4055', '117', 'Baldone, Baldones novads', '0800605', '1');
INSERT INTO `oc_zone` VALUES ('4056', '117', 'Baldones novads', '0800600', '1');
INSERT INTO `oc_zone` VALUES ('4057', '117', 'Baloži, Ķekavas novads', '0800807', '1');
INSERT INTO `oc_zone` VALUES ('4058', '117', 'Baltinavas novads', '0384400', '1');
INSERT INTO `oc_zone` VALUES ('4059', '117', 'Balvi, Balvu novads', '0380201', '1');
INSERT INTO `oc_zone` VALUES ('4060', '117', 'Balvu novads', '0380200', '1');
INSERT INTO `oc_zone` VALUES ('4061', '117', 'Bauska, Bauskas novads', '0400201', '1');
INSERT INTO `oc_zone` VALUES ('4062', '117', 'Bauskas novads', '0400200', '1');
INSERT INTO `oc_zone` VALUES ('4063', '117', 'Beverīnas novads', '0964700', '1');
INSERT INTO `oc_zone` VALUES ('4064', '117', 'Brocēni, Brocēnu novads', '0840605', '1');
INSERT INTO `oc_zone` VALUES ('4065', '117', 'Brocēnu novads', '0840601', '1');
INSERT INTO `oc_zone` VALUES ('4066', '117', 'Burtnieku novads', '0967101', '1');
INSERT INTO `oc_zone` VALUES ('4067', '117', 'Carnikavas novads', '0805200', '1');
INSERT INTO `oc_zone` VALUES ('4068', '117', 'Cesvaine, Cesvaines novads', '0700807', '1');
INSERT INTO `oc_zone` VALUES ('4069', '117', 'Cesvaines novads', '0700800', '1');
INSERT INTO `oc_zone` VALUES ('4070', '117', 'Cēsis, Cēsu novads', '0420201', '1');
INSERT INTO `oc_zone` VALUES ('4071', '117', 'Cēsu novads', '0420200', '1');
INSERT INTO `oc_zone` VALUES ('4072', '117', 'Ciblas novads', '0684901', '1');
INSERT INTO `oc_zone` VALUES ('4073', '117', 'Dagda, Dagdas novads', '0601009', '1');
INSERT INTO `oc_zone` VALUES ('4074', '117', 'Dagdas novads', '0601000', '1');
INSERT INTO `oc_zone` VALUES ('4075', '117', 'Daugavpils', '0050000', '1');
INSERT INTO `oc_zone` VALUES ('4076', '117', 'Daugavpils novads', '0440200', '1');
INSERT INTO `oc_zone` VALUES ('4077', '117', 'Dobele, Dobeles novads', '0460201', '1');
INSERT INTO `oc_zone` VALUES ('4078', '117', 'Dobeles novads', '0460200', '1');
INSERT INTO `oc_zone` VALUES ('4079', '117', 'Dundagas novads', '0885100', '1');
INSERT INTO `oc_zone` VALUES ('4080', '117', 'Durbe, Durbes novads', '0640807', '1');
INSERT INTO `oc_zone` VALUES ('4081', '117', 'Durbes novads', '0640801', '1');
INSERT INTO `oc_zone` VALUES ('4082', '117', 'Engures novads', '0905100', '1');
INSERT INTO `oc_zone` VALUES ('4083', '117', 'Ērgļu novads', '0705500', '1');
INSERT INTO `oc_zone` VALUES ('4084', '117', 'Garkalnes novads', '0806000', '1');
INSERT INTO `oc_zone` VALUES ('4085', '117', 'Grobiņa, Grobiņas novads', '0641009', '1');
INSERT INTO `oc_zone` VALUES ('4086', '117', 'Grobiņas novads', '0641000', '1');
INSERT INTO `oc_zone` VALUES ('4087', '117', 'Gulbene, Gulbenes novads', '0500201', '1');
INSERT INTO `oc_zone` VALUES ('4088', '117', 'Gulbenes novads', '0500200', '1');
INSERT INTO `oc_zone` VALUES ('4089', '117', 'Iecavas novads', '0406400', '1');
INSERT INTO `oc_zone` VALUES ('4090', '117', 'Ikšķile, Ikšķiles novads', '0740605', '1');
INSERT INTO `oc_zone` VALUES ('4091', '117', 'Ikšķiles novads', '0740600', '1');
INSERT INTO `oc_zone` VALUES ('4092', '117', 'Ilūkste, Ilūkstes novads', '0440807', '1');
INSERT INTO `oc_zone` VALUES ('4093', '117', 'Ilūkstes novads', '0440801', '1');
INSERT INTO `oc_zone` VALUES ('4094', '117', 'Inčukalna novads', '0801800', '1');
INSERT INTO `oc_zone` VALUES ('4095', '117', 'Jaunjelgava, Jaunjelgavas novads', '0321007', '1');
INSERT INTO `oc_zone` VALUES ('4096', '117', 'Jaunjelgavas novads', '0321000', '1');
INSERT INTO `oc_zone` VALUES ('4097', '117', 'Jaunpiebalgas novads', '0425700', '1');
INSERT INTO `oc_zone` VALUES ('4098', '117', 'Jaunpils novads', '0905700', '1');
INSERT INTO `oc_zone` VALUES ('4099', '117', 'Jelgava', '0090000', '1');
INSERT INTO `oc_zone` VALUES ('4100', '117', 'Jelgavas novads', '0540200', '1');
INSERT INTO `oc_zone` VALUES ('4101', '117', 'Jēkabpils', '0110000', '1');
INSERT INTO `oc_zone` VALUES ('4102', '117', 'Jēkabpils novads', '0560200', '1');
INSERT INTO `oc_zone` VALUES ('4103', '117', 'Jūrmala', '0130000', '1');
INSERT INTO `oc_zone` VALUES ('4104', '117', 'Kalnciems, Jelgavas novads', '0540211', '1');
INSERT INTO `oc_zone` VALUES ('4105', '117', 'Kandava, Kandavas novads', '0901211', '1');
INSERT INTO `oc_zone` VALUES ('4106', '117', 'Kandavas novads', '0901201', '1');
INSERT INTO `oc_zone` VALUES ('4107', '117', 'Kārsava, Kārsavas novads', '0681009', '1');
INSERT INTO `oc_zone` VALUES ('4108', '117', 'Kārsavas novads', '0681000', '1');
INSERT INTO `oc_zone` VALUES ('4109', '117', 'Kocēnu novads ,bij. Valmieras)', '0960200', '1');
INSERT INTO `oc_zone` VALUES ('4110', '117', 'Kokneses novads', '0326100', '1');
INSERT INTO `oc_zone` VALUES ('4111', '117', 'Krāslava, Krāslavas novads', '0600201', '1');
INSERT INTO `oc_zone` VALUES ('4112', '117', 'Krāslavas novads', '0600202', '1');
INSERT INTO `oc_zone` VALUES ('4113', '117', 'Krimuldas novads', '0806900', '1');
INSERT INTO `oc_zone` VALUES ('4114', '117', 'Krustpils novads', '0566900', '1');
INSERT INTO `oc_zone` VALUES ('4115', '117', 'Kuldīga, Kuldīgas novads', '0620201', '1');
INSERT INTO `oc_zone` VALUES ('4116', '117', 'Kuldīgas novads', '0620200', '1');
INSERT INTO `oc_zone` VALUES ('4117', '117', 'Ķeguma novads', '0741001', '1');
INSERT INTO `oc_zone` VALUES ('4118', '117', 'Ķegums, Ķeguma novads', '0741009', '1');
INSERT INTO `oc_zone` VALUES ('4119', '117', 'Ķekavas novads', '0800800', '1');
INSERT INTO `oc_zone` VALUES ('4120', '117', 'Lielvārde, Lielvārdes novads', '0741413', '1');
INSERT INTO `oc_zone` VALUES ('4121', '117', 'Lielvārdes novads', '0741401', '1');
INSERT INTO `oc_zone` VALUES ('4122', '117', 'Liepāja', '0170000', '1');
INSERT INTO `oc_zone` VALUES ('4123', '117', 'Limbaži, Limbažu novads', '0660201', '1');
INSERT INTO `oc_zone` VALUES ('4124', '117', 'Limbažu novads', '0660200', '1');
INSERT INTO `oc_zone` VALUES ('4125', '117', 'Līgatne, Līgatnes novads', '0421211', '1');
INSERT INTO `oc_zone` VALUES ('4126', '117', 'Līgatnes novads', '0421200', '1');
INSERT INTO `oc_zone` VALUES ('4127', '117', 'Līvāni, Līvānu novads', '0761211', '1');
INSERT INTO `oc_zone` VALUES ('4128', '117', 'Līvānu novads', '0761201', '1');
INSERT INTO `oc_zone` VALUES ('4129', '117', 'Lubāna, Lubānas novads', '0701413', '1');
INSERT INTO `oc_zone` VALUES ('4130', '117', 'Lubānas novads', '0701400', '1');
INSERT INTO `oc_zone` VALUES ('4131', '117', 'Ludza, Ludzas novads', '0680201', '1');
INSERT INTO `oc_zone` VALUES ('4132', '117', 'Ludzas novads', '0680200', '1');
INSERT INTO `oc_zone` VALUES ('4133', '117', 'Madona, Madonas novads', '0700201', '1');
INSERT INTO `oc_zone` VALUES ('4134', '117', 'Madonas novads', '0700200', '1');
INSERT INTO `oc_zone` VALUES ('4135', '117', 'Mazsalaca, Mazsalacas novads', '0961011', '1');
INSERT INTO `oc_zone` VALUES ('4136', '117', 'Mazsalacas novads', '0961000', '1');
INSERT INTO `oc_zone` VALUES ('4137', '117', 'Mālpils novads', '0807400', '1');
INSERT INTO `oc_zone` VALUES ('4138', '117', 'Mārupes novads', '0807600', '1');
INSERT INTO `oc_zone` VALUES ('4139', '117', 'Mērsraga novads', '0887600', '1');
INSERT INTO `oc_zone` VALUES ('4140', '117', 'Naukšēnu novads', '0967300', '1');
INSERT INTO `oc_zone` VALUES ('4141', '117', 'Neretas novads', '0327100', '1');
INSERT INTO `oc_zone` VALUES ('4142', '117', 'Nīcas novads', '0647900', '1');
INSERT INTO `oc_zone` VALUES ('4143', '117', 'Ogre, Ogres novads', '0740201', '1');
INSERT INTO `oc_zone` VALUES ('4144', '117', 'Ogres novads', '0740202', '1');
INSERT INTO `oc_zone` VALUES ('4145', '117', 'Olaine, Olaines novads', '0801009', '1');
INSERT INTO `oc_zone` VALUES ('4146', '117', 'Olaines novads', '0801000', '1');
INSERT INTO `oc_zone` VALUES ('4147', '117', 'Ozolnieku novads', '0546701', '1');
INSERT INTO `oc_zone` VALUES ('4148', '117', 'Pārgaujas novads', '0427500', '1');
INSERT INTO `oc_zone` VALUES ('4149', '117', 'Pāvilosta, Pāvilostas novads', '0641413', '1');
INSERT INTO `oc_zone` VALUES ('4150', '117', 'Pāvilostas novads', '0641401', '1');
INSERT INTO `oc_zone` VALUES ('4151', '117', 'Piltene, Ventspils novads', '0980213', '1');
INSERT INTO `oc_zone` VALUES ('4152', '117', 'Pļaviņas, Pļaviņu novads', '0321413', '1');
INSERT INTO `oc_zone` VALUES ('4153', '117', 'Pļaviņu novads', '0321400', '1');
INSERT INTO `oc_zone` VALUES ('4154', '117', 'Preiļi, Preiļu novads', '0760201', '1');
INSERT INTO `oc_zone` VALUES ('4155', '117', 'Preiļu novads', '0760202', '1');
INSERT INTO `oc_zone` VALUES ('4156', '117', 'Priekule, Priekules novads', '0641615', '1');
INSERT INTO `oc_zone` VALUES ('4157', '117', 'Priekules novads', '0641600', '1');
INSERT INTO `oc_zone` VALUES ('4158', '117', 'Priekuļu novads', '0427300', '1');
INSERT INTO `oc_zone` VALUES ('4159', '117', 'Raunas novads', '0427700', '1');
INSERT INTO `oc_zone` VALUES ('4160', '117', 'Rēzekne', '0210000', '1');
INSERT INTO `oc_zone` VALUES ('4161', '117', 'Rēzeknes novads', '0780200', '1');
INSERT INTO `oc_zone` VALUES ('4162', '117', 'Riebiņu novads', '0766300', '1');
INSERT INTO `oc_zone` VALUES ('4163', '117', 'Rīga', '0010000', '1');
INSERT INTO `oc_zone` VALUES ('4164', '117', 'Rojas novads', '0888300', '1');
INSERT INTO `oc_zone` VALUES ('4165', '117', 'Ropažu novads', '0808400', '1');
INSERT INTO `oc_zone` VALUES ('4166', '117', 'Rucavas novads', '0648500', '1');
INSERT INTO `oc_zone` VALUES ('4167', '117', 'Rugāju novads', '0387500', '1');
INSERT INTO `oc_zone` VALUES ('4168', '117', 'Rundāles novads', '0407700', '1');
INSERT INTO `oc_zone` VALUES ('4169', '117', 'Rūjiena, Rūjienas novads', '0961615', '1');
INSERT INTO `oc_zone` VALUES ('4170', '117', 'Rūjienas novads', '0961600', '1');
INSERT INTO `oc_zone` VALUES ('4171', '117', 'Sabile, Talsu novads', '0880213', '1');
INSERT INTO `oc_zone` VALUES ('4172', '117', 'Salacgrīva, Salacgrīvas novads', '0661415', '1');
INSERT INTO `oc_zone` VALUES ('4173', '117', 'Salacgrīvas novads', '0661400', '1');
INSERT INTO `oc_zone` VALUES ('4174', '117', 'Salas novads', '0568700', '1');
INSERT INTO `oc_zone` VALUES ('4175', '117', 'Salaspils novads', '0801200', '1');
INSERT INTO `oc_zone` VALUES ('4176', '117', 'Salaspils, Salaspils novads', '0801211', '1');
INSERT INTO `oc_zone` VALUES ('4177', '117', 'Saldus novads', '0840200', '1');
INSERT INTO `oc_zone` VALUES ('4178', '117', 'Saldus, Saldus novads', '0840201', '1');
INSERT INTO `oc_zone` VALUES ('4179', '117', 'Saulkrasti, Saulkrastu novads', '0801413', '1');
INSERT INTO `oc_zone` VALUES ('4180', '117', 'Saulkrastu novads', '0801400', '1');
INSERT INTO `oc_zone` VALUES ('4181', '117', 'Seda, Strenču novads', '0941813', '1');
INSERT INTO `oc_zone` VALUES ('4182', '117', 'Sējas novads', '0809200', '1');
INSERT INTO `oc_zone` VALUES ('4183', '117', 'Sigulda, Siguldas novads', '0801615', '1');
INSERT INTO `oc_zone` VALUES ('4184', '117', 'Siguldas novads', '0801601', '1');
INSERT INTO `oc_zone` VALUES ('4185', '117', 'Skrīveru novads', '0328200', '1');
INSERT INTO `oc_zone` VALUES ('4186', '117', 'Skrunda, Skrundas novads', '0621209', '1');
INSERT INTO `oc_zone` VALUES ('4187', '117', 'Skrundas novads', '0621200', '1');
INSERT INTO `oc_zone` VALUES ('4188', '117', 'Smiltene, Smiltenes novads', '0941615', '1');
INSERT INTO `oc_zone` VALUES ('4189', '117', 'Smiltenes novads', '0941600', '1');
INSERT INTO `oc_zone` VALUES ('4190', '117', 'Staicele, Alojas novads', '0661017', '1');
INSERT INTO `oc_zone` VALUES ('4191', '117', 'Stende, Talsu novads', '0880215', '1');
INSERT INTO `oc_zone` VALUES ('4192', '117', 'Stopiņu novads', '0809600', '1');
INSERT INTO `oc_zone` VALUES ('4193', '117', 'Strenči, Strenču novads', '0941817', '1');
INSERT INTO `oc_zone` VALUES ('4194', '117', 'Strenču novads', '0941800', '1');
INSERT INTO `oc_zone` VALUES ('4195', '117', 'Subate, Ilūkstes novads', '0440815', '1');
INSERT INTO `oc_zone` VALUES ('4196', '117', 'Talsi, Talsu novads', '0880201', '1');
INSERT INTO `oc_zone` VALUES ('4197', '117', 'Talsu novads', '0880200', '1');
INSERT INTO `oc_zone` VALUES ('4198', '117', 'Tērvetes novads', '0468900', '1');
INSERT INTO `oc_zone` VALUES ('4199', '117', 'Tukuma novads', '0900200', '1');
INSERT INTO `oc_zone` VALUES ('4200', '117', 'Tukums, Tukuma novads', '0900201', '1');
INSERT INTO `oc_zone` VALUES ('4201', '117', 'Vaiņodes novads', '0649300', '1');
INSERT INTO `oc_zone` VALUES ('4202', '117', 'Valdemārpils, Talsu novads', '0880217', '1');
INSERT INTO `oc_zone` VALUES ('4203', '117', 'Valka, Valkas novads', '0940201', '1');
INSERT INTO `oc_zone` VALUES ('4204', '117', 'Valkas novads', '0940200', '1');
INSERT INTO `oc_zone` VALUES ('4205', '117', 'Valmiera', '0250000', '1');
INSERT INTO `oc_zone` VALUES ('4206', '117', 'Vangaži, Inčukalna novads', '0801817', '1');
INSERT INTO `oc_zone` VALUES ('4207', '117', 'Varakļāni, Varakļānu novads', '0701817', '1');
INSERT INTO `oc_zone` VALUES ('4208', '117', 'Varakļānu novads', '0701800', '1');
INSERT INTO `oc_zone` VALUES ('4209', '117', 'Vārkavas novads', '0769101', '1');
INSERT INTO `oc_zone` VALUES ('4210', '117', 'Vecpiebalgas novads', '0429300', '1');
INSERT INTO `oc_zone` VALUES ('4211', '117', 'Vecumnieku novads', '0409500', '1');
INSERT INTO `oc_zone` VALUES ('4212', '117', 'Ventspils', '0270000', '1');
INSERT INTO `oc_zone` VALUES ('4213', '117', 'Ventspils novads', '0980200', '1');
INSERT INTO `oc_zone` VALUES ('4214', '117', 'Viesīte, Viesītes novads', '0561815', '1');
INSERT INTO `oc_zone` VALUES ('4215', '117', 'Viesītes novads', '0561800', '1');
INSERT INTO `oc_zone` VALUES ('4216', '117', 'Viļaka, Viļakas novads', '0381615', '1');
INSERT INTO `oc_zone` VALUES ('4217', '117', 'Viļakas novads', '0381600', '1');
INSERT INTO `oc_zone` VALUES ('4218', '117', 'Viļāni, Viļānu novads', '0781817', '1');
INSERT INTO `oc_zone` VALUES ('4219', '117', 'Viļānu novads', '0781800', '1');
INSERT INTO `oc_zone` VALUES ('4220', '117', 'Zilupe, Zilupes novads', '0681817', '1');
INSERT INTO `oc_zone` VALUES ('4221', '117', 'Zilupes novads', '0681801', '1');
INSERT INTO `oc_zone` VALUES ('4222', '43', 'Arica y Parinacota', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('4223', '43', 'Los Rios', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('4224', '220', 'Kharkivs\'ka Oblast\'', '63', '1');
INSERT INTO `oc_zone` VALUES ('4225', '118', 'Beirut', 'LB-BR', '1');
INSERT INTO `oc_zone` VALUES ('4226', '118', 'Bekaa', 'LB-BE', '1');
INSERT INTO `oc_zone` VALUES ('4227', '118', 'Mount Lebanon', 'LB-ML', '1');
INSERT INTO `oc_zone` VALUES ('4228', '118', 'Nabatieh', 'LB-NB', '1');
INSERT INTO `oc_zone` VALUES ('4229', '118', 'North', 'LB-NR', '1');
INSERT INTO `oc_zone` VALUES ('4230', '118', 'South', 'LB-ST', '1');
INSERT INTO `oc_zone` VALUES ('4231', '99', 'Telangana', 'TS', '1');
INSERT INTO `oc_zone` VALUES ('4232', '44', 'Qinghai', 'QH', '1');
INSERT INTO `oc_zone` VALUES ('4233', '100', 'Papua Barat', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('4234', '100', 'Sulawesi Barat', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('4235', '100', 'Kepulauan Riau', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('4236', '105', 'Barletta-Andria-Trani', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('4237', '105', 'Fermo', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('4238', '105', 'Monza Brianza', 'MB', '1');

-- ----------------------------
-- Table structure for oc_zone_to_geo_zone
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_zone_to_geo_zone
-- ----------------------------
INSERT INTO `oc_zone_to_geo_zone` VALUES ('1', '222', '0', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('2', '222', '3513', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('3', '222', '3514', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('4', '222', '3515', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('5', '222', '3516', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('6', '222', '3517', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('7', '222', '3518', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('8', '222', '3519', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('9', '222', '3520', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('10', '222', '3521', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('11', '222', '3522', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('12', '222', '3523', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('13', '222', '3524', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('14', '222', '3525', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('15', '222', '3526', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('16', '222', '3527', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('17', '222', '3528', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('18', '222', '3529', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('19', '222', '3530', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('20', '222', '3531', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('21', '222', '3532', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('22', '222', '3533', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('23', '222', '3534', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('24', '222', '3535', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('25', '222', '3536', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('26', '222', '3537', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('27', '222', '3538', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('28', '222', '3539', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('29', '222', '3540', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('30', '222', '3541', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('31', '222', '3542', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('32', '222', '3543', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('33', '222', '3544', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('34', '222', '3545', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('35', '222', '3546', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('36', '222', '3547', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('37', '222', '3548', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('38', '222', '3549', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('39', '222', '3550', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('40', '222', '3551', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('41', '222', '3552', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('42', '222', '3553', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('43', '222', '3554', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('44', '222', '3555', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('45', '222', '3556', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('46', '222', '3557', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('47', '222', '3558', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('48', '222', '3559', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('49', '222', '3560', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('50', '222', '3561', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('51', '222', '3562', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('52', '222', '3563', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('53', '222', '3564', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('54', '222', '3565', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('55', '222', '3566', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('56', '222', '3567', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('57', '222', '3568', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('58', '222', '3569', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('59', '222', '3570', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('60', '222', '3571', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('61', '222', '3572', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('62', '222', '3573', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('63', '222', '3574', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('64', '222', '3575', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('65', '222', '3576', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('66', '222', '3577', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('67', '222', '3578', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('68', '222', '3579', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('69', '222', '3580', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('70', '222', '3581', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('71', '222', '3582', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('72', '222', '3583', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('73', '222', '3584', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('74', '222', '3585', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('75', '222', '3586', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('76', '222', '3587', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('77', '222', '3588', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('78', '222', '3589', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('79', '222', '3590', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('80', '222', '3591', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('81', '222', '3592', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('82', '222', '3593', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('83', '222', '3594', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('84', '222', '3595', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('85', '222', '3596', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('86', '222', '3597', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('87', '222', '3598', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('88', '222', '3599', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('89', '222', '3600', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('90', '222', '3601', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('91', '222', '3602', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('92', '222', '3603', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('93', '222', '3604', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('94', '222', '3605', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('95', '222', '3606', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('96', '222', '3607', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('97', '222', '3608', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('98', '222', '3609', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('99', '222', '3610', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('100', '222', '3611', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('101', '222', '3612', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('102', '222', '3949', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('103', '222', '3950', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('104', '222', '3951', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('105', '222', '3952', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('106', '222', '3953', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('107', '222', '3954', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('108', '222', '3955', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('109', '222', '3972', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
