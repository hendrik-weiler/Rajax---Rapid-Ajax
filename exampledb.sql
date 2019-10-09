# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.38)
# Datenbank: woocommerce
# Erstellt am: 2019-10-09 16:16:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'Ein WordPress-Kommentator','wapuu@wordpress.example','https://wordpress.org/','','2019-08-28 11:16:04','2019-08-28 09:16:04','Hallo, dies ist ein Kommentar.\nUm mit dem Freischalten, Bearbeiten und Löschen von Kommentaren zu beginnen, besuche bitte die Kommentare-Ansicht im Dashboard.\nDie Avatare der Kommentatoren kommen von <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0),
	(5,120,'WooCommerce','woocommerce@woocommerce.test8888','','','2019-10-09 17:01:34','2019-10-09 15:01:34','Persönliche Daten entfernt.',0,'1','WooCommerce','order_note',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_failed_jobs`;

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_mailchimp_carts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_mailchimp_carts`;

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://woocommerce.test:8888','yes'),
	(2,'home','http://woocommerce.test:8888','yes'),
	(3,'blogname','woocommerce','yes'),
	(4,'blogdescription','woocommerce testsite','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','diddlside@googlemail.com','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','0','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','j. F Y','yes'),
	(24,'time_format','G:i','yes'),
	(25,'links_updated_date_format','j. F Y G:i','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),
	(29,'rewrite_rules','a:208:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"wpforms_log_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]\";s:52:\"wpforms_log_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]\";s:33:\"wpforms_log_type/([^/]+)/embed/?$\";s:49:\"index.php?wpforms_log_type=$matches[1]&embed=true\";s:45:\"wpforms_log_type/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?wpforms_log_type=$matches[1]&paged=$matches[2]\";s:27:\"wpforms_log_type/([^/]+)/?$\";s:38:\"index.php?wpforms_log_type=$matches[1]\";s:45:\"hr_refund_request/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"hr_refund_request/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"hr_refund_request/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"hr_refund_request/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"hr_refund_request/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"hr_refund_request/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"hr_refund_request/([^/]+)/embed/?$\";s:50:\"index.php?hr_refund_request=$matches[1]&embed=true\";s:38:\"hr_refund_request/([^/]+)/trackback/?$\";s:44:\"index.php?hr_refund_request=$matches[1]&tb=1\";s:46:\"hr_refund_request/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?hr_refund_request=$matches[1]&paged=$matches[2]\";s:53:\"hr_refund_request/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?hr_refund_request=$matches[1]&cpage=$matches[2]\";s:43:\"hr_refund_request/([^/]+)/wc-api(/(.*))?/?$\";s:58:\"index.php?hr_refund_request=$matches[1]&wc-api=$matches[3]\";s:49:\"hr_refund_request/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"hr_refund_request/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"hr_refund_request/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?hr_refund_request=$matches[1]&page=$matches[2]\";s:34:\"hr_refund_request/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"hr_refund_request/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"hr_refund_request/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"hr_refund_request/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"hr_refund_request/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"hr_refund_request/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"produkt-kategorie/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"produkt-kategorie/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"produkt-kategorie/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"produkt-kategorie/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"produkt-kategorie/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:59:\"produkt-schlagwort/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:54:\"produkt-schlagwort/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:35:\"produkt-schlagwort/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:47:\"produkt-schlagwort/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:29:\"produkt-schlagwort/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produkt/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produkt/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produkt/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produkt/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produkt/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produkt/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produkt/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produkt/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produkt/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produkt/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produkt/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produkt/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produkt/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produkt/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produkt/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produkt/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produkt/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produkt/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produkt/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produkt/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produkt/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produkt/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"amn_wpforms-lite/([^/]+)/embed/?$\";s:49:\"index.php?amn_wpforms-lite=$matches[1]&embed=true\";s:37:\"amn_wpforms-lite/([^/]+)/trackback/?$\";s:43:\"index.php?amn_wpforms-lite=$matches[1]&tb=1\";s:45:\"amn_wpforms-lite/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?amn_wpforms-lite=$matches[1]&paged=$matches[2]\";s:52:\"amn_wpforms-lite/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?amn_wpforms-lite=$matches[1]&cpage=$matches[2]\";s:42:\"amn_wpforms-lite/([^/]+)/wc-api(/(.*))?/?$\";s:57:\"index.php?amn_wpforms-lite=$matches[1]&wc-api=$matches[3]\";s:48:\"amn_wpforms-lite/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:59:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:41:\"amn_wpforms-lite/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?amn_wpforms-lite=$matches[1]&page=$matches[2]\";s:33:\"amn_wpforms-lite/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"amn_wpforms-lite/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"amn_wpforms-lite/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"amn_wpforms-lite/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"amn_wpforms-lite/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"amn_wpforms-lite/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:29:\"hr-refund-requests(/(.*))?/?$\";s:41:\"index.php?&hr-refund-requests=$matches[2]\";s:33:\"hr-refund-request-form(/(.*))?/?$\";s:45:\"index.php?&hr-refund-request-form=$matches[2]\";s:33:\"hr-refund-request-view(/(.*))?/?$\";s:45:\"index.php?&hr-refund-request-view=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:37:\"(.?.+?)/hr-refund-requests(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&hr-refund-requests=$matches[3]\";s:41:\"(.?.+?)/hr-refund-request-form(/(.*))?/?$\";s:65:\"index.php?pagename=$matches[1]&hr-refund-request-form=$matches[3]\";s:41:\"(.?.+?)/hr-refund-request-view(/(.*))?/?$\";s:65:\"index.php?pagename=$matches[1]&hr-refund-request-view=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:7:{i:0;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:1;s:17:\"refund/refund.php\";i:2;s:56:\"woo-product-social-sharing/wc-product-social-sharing.php\";i:3;s:27:\"woocommerce/woocommerce.php\";i:4;s:45:\"wp-notification-bars/wp-notification-bars.php\";i:5;s:23:\"wp-smushit/wp-smush.php\";i:6;s:24:\"wpforms-lite/wpforms.php\";}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','shop-isle','yes'),
	(41,'stylesheet','shop-isle','yes'),
	(42,'comment_whitelist','1','yes'),
	(43,'blacklist_keys','','no'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','44719','yes'),
	(49,'uploads_use_yearmonth_folders','1','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','0','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','posts','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','none','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(81,'uninstall_plugins','a:0:{}','no'),
	(82,'timezone_string','Europe/Berlin','yes'),
	(83,'page_for_posts','0','yes'),
	(84,'page_on_front','0','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','0','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'wp_page_for_privacy_policy','3','yes'),
	(92,'show_comments_cookies_opt_in','1','yes'),
	(93,'initial_db_version','44719','yes'),
	(94,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes'),
	(95,'fresh_site','0','yes'),
	(96,'WPLANG','de_DE','yes'),
	(97,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:21:\"sidebar-footer-area-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:21:\"sidebar-footer-area-2\";a:1:{i:0;s:31:\"woocommerce_product_tag_cloud-2\";}s:21:\"sidebar-footer-area-3\";a:1:{i:0;s:28:\"woocommerce_product_search-2\";}s:21:\"sidebar-footer-area-4\";a:1:{i:0;s:15:\"media_gallery-2\";}s:30:\"shop-isle-sidebar-shop-archive\";a:0:{}s:13:\"array_version\";i:3;}','yes'),
	(103,'cron','a:16:{i:1570633251;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1570633293;a:1:{s:28:\"wp_1_wc_privacy_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:37:\"wp_1_wc_privacy_cleanup_cron_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1570634165;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1570634210;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570636840;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1570655765;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570658400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570698964;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570698971;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570698973;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570699010;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570699020;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570709810;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1571054400;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1572739200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}','yes'),
	(104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(108,'widget_media_gallery','a:2:{i:2;a:6:{s:5:\"title\";s:12:\"MOBILE LINKS\";s:3:\"ids\";a:2:{i:0;i:75;i:1;i:19;}s:7:\"columns\";i:1;s:4:\"size\";s:4:\"full\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(111,'widget_nav_menu','a:2:{i:2;a:1:{s:8:\"nav_menu\";i:32;}s:12:\"_multiwidget\";i:1;}','yes'),
	(112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(114,'recovery_keys','a:0:{}','yes'),
	(116,'theme_mods_twentynineteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566983973;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),
	(132,'can_compress_scripts','1','no'),
	(145,'recently_activated','a:0:{}','yes'),
	(154,'woocommerce_store_address','Musterstraße 11','yes'),
	(155,'woocommerce_store_address_2','','yes'),
	(156,'woocommerce_store_city','Musterstadt','yes'),
	(157,'woocommerce_default_country','DE:*','yes'),
	(158,'woocommerce_store_postcode','00000','yes'),
	(159,'woocommerce_allowed_countries','all','yes'),
	(160,'woocommerce_all_except_countries','','yes'),
	(161,'woocommerce_specific_allowed_countries','','yes'),
	(162,'woocommerce_ship_to_countries','','yes'),
	(163,'woocommerce_specific_ship_to_countries','','yes'),
	(164,'woocommerce_default_customer_address','geolocation','yes'),
	(165,'woocommerce_calc_taxes','no','yes'),
	(166,'woocommerce_enable_coupons','yes','yes'),
	(167,'woocommerce_calc_discounts_sequentially','no','no'),
	(168,'woocommerce_currency','EUR','yes'),
	(169,'woocommerce_currency_pos','left','yes'),
	(170,'woocommerce_price_thousand_sep','.','yes'),
	(171,'woocommerce_price_decimal_sep',',','yes'),
	(172,'woocommerce_price_num_decimals','2','yes'),
	(173,'woocommerce_shop_page_id','6','yes'),
	(174,'woocommerce_cart_redirect_after_add','no','yes'),
	(175,'woocommerce_enable_ajax_add_to_cart','yes','yes'),
	(176,'woocommerce_placeholder_image','5','yes'),
	(177,'woocommerce_weight_unit','kg','yes'),
	(178,'woocommerce_dimension_unit','cm','yes'),
	(179,'woocommerce_enable_reviews','yes','yes'),
	(180,'woocommerce_review_rating_verification_label','yes','no'),
	(181,'woocommerce_review_rating_verification_required','yes','no'),
	(182,'woocommerce_enable_review_rating','yes','yes'),
	(183,'woocommerce_review_rating_required','yes','no'),
	(184,'woocommerce_manage_stock','yes','yes'),
	(185,'woocommerce_hold_stock_minutes','60','no'),
	(186,'woocommerce_notify_low_stock','yes','no'),
	(187,'woocommerce_notify_no_stock','yes','no'),
	(188,'woocommerce_stock_email_recipient','diddlside@googlemail.com','no'),
	(189,'woocommerce_notify_low_stock_amount','2','no'),
	(190,'woocommerce_notify_no_stock_amount','0','yes'),
	(191,'woocommerce_hide_out_of_stock_items','no','yes'),
	(192,'woocommerce_stock_format','','yes'),
	(193,'woocommerce_file_download_method','force','no'),
	(194,'woocommerce_downloads_require_login','no','no'),
	(195,'woocommerce_downloads_grant_access_after_payment','yes','no'),
	(196,'woocommerce_prices_include_tax','no','yes'),
	(197,'woocommerce_tax_based_on','shipping','yes'),
	(198,'woocommerce_shipping_tax_class','inherit','yes'),
	(199,'woocommerce_tax_round_at_subtotal','no','yes'),
	(200,'woocommerce_tax_classes','','yes'),
	(201,'woocommerce_tax_display_shop','excl','yes'),
	(202,'woocommerce_tax_display_cart','excl','yes'),
	(203,'woocommerce_price_display_suffix','','yes'),
	(204,'woocommerce_tax_total_display','itemized','no'),
	(205,'woocommerce_enable_shipping_calc','yes','no'),
	(206,'woocommerce_shipping_cost_requires_address','yes','yes'),
	(207,'woocommerce_ship_to_destination','billing','no'),
	(208,'woocommerce_shipping_debug_mode','no','yes'),
	(209,'woocommerce_enable_guest_checkout','yes','no'),
	(210,'woocommerce_enable_checkout_login_reminder','no','no'),
	(211,'woocommerce_enable_signup_and_login_from_checkout','yes','no'),
	(212,'woocommerce_enable_myaccount_registration','yes','no'),
	(213,'woocommerce_registration_generate_username','yes','no'),
	(214,'woocommerce_registration_generate_password','yes','no'),
	(215,'woocommerce_erasure_request_removes_order_data','yes','no'),
	(216,'woocommerce_erasure_request_removes_download_data','yes','no'),
	(217,'woocommerce_allow_bulk_remove_personal_data','no','no'),
	(218,'woocommerce_registration_privacy_policy_text','Wir verwenden deine personenbezogenen Daten, um eine möglichst gute Benutzererfahrung auf dieser Website zu ermöglichen, den Zugriff auf dein Konto zu verwalten und für weitere Zwecke, die in unserer [privacy_policy] beschrieben sind.','yes'),
	(219,'woocommerce_checkout_privacy_policy_text','Wir verwenden deine personenbezogenen Daten, um deine Bestellung durchführen zu können, eine möglichst gute Benutzererfahrung auf dieser Website zu ermöglichen und für weitere Zwecke, die in unserer [privacy_policy] beschrieben sind.','yes'),
	(220,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";i:1;s:4:\"unit\";s:6:\"months\";}','no'),
	(221,'woocommerce_trash_pending_orders','a:2:{s:6:\"number\";i:3;s:4:\"unit\";s:4:\"days\";}','no'),
	(222,'woocommerce_trash_failed_orders','a:2:{s:6:\"number\";i:3;s:4:\"unit\";s:4:\"days\";}','no'),
	(223,'woocommerce_trash_cancelled_orders','a:2:{s:6:\"number\";i:3;s:4:\"unit\";s:4:\"days\";}','no'),
	(224,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";i:1;s:4:\"unit\";s:6:\"months\";}','no'),
	(225,'woocommerce_email_from_name','woocommerce','no'),
	(226,'woocommerce_email_from_address','diddlside@googlemail.com','no'),
	(227,'woocommerce_email_header_image','','no'),
	(228,'woocommerce_email_footer_text','{site_title} &mdash; Built with {WooCommerce}','no'),
	(229,'woocommerce_email_base_color','#96588a','no'),
	(230,'woocommerce_email_background_color','#f7f7f7','no'),
	(231,'woocommerce_email_body_background_color','#ffffff','no'),
	(232,'woocommerce_email_text_color','#3c3c3c','no'),
	(233,'woocommerce_cart_page_id','7','no'),
	(234,'woocommerce_checkout_page_id','8','no'),
	(235,'woocommerce_myaccount_page_id','9','no'),
	(236,'woocommerce_terms_page_id','','no'),
	(237,'woocommerce_force_ssl_checkout','no','yes'),
	(238,'woocommerce_unforce_ssl_checkout','no','yes'),
	(239,'woocommerce_checkout_pay_endpoint','order-pay','yes'),
	(240,'woocommerce_checkout_order_received_endpoint','order-received','yes'),
	(241,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes'),
	(242,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes'),
	(243,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes'),
	(244,'woocommerce_myaccount_orders_endpoint','orders','yes'),
	(245,'woocommerce_myaccount_view_order_endpoint','view-order','yes'),
	(246,'woocommerce_myaccount_downloads_endpoint','downloads','yes'),
	(247,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes'),
	(248,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes'),
	(249,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes'),
	(250,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes'),
	(251,'woocommerce_logout_endpoint','customer-logout','yes'),
	(252,'woocommerce_api_enabled','no','yes'),
	(253,'woocommerce_allow_tracking','no','no'),
	(254,'woocommerce_show_marketplace_suggestions','yes','no'),
	(255,'woocommerce_single_image_width','600','yes'),
	(256,'woocommerce_thumbnail_image_width','300','yes'),
	(257,'woocommerce_checkout_highlight_required_fields','yes','yes'),
	(258,'woocommerce_demo_store','no','no'),
	(259,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"produkt\";s:13:\"category_base\";s:17:\"produkt-kategorie\";s:8:\"tag_base\";s:18:\"produkt-schlagwort\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes'),
	(260,'current_theme_supports_woocommerce','yes','yes'),
	(261,'woocommerce_queue_flush_rewrite_rules','no','yes'),
	(262,'_transient_wc_attribute_taxonomies','a:0:{}','yes'),
	(264,'default_product_cat','15','yes'),
	(267,'woocommerce_version','3.7.0','yes'),
	(268,'woocommerce_db_version','3.7.0','yes'),
	(269,'woocommerce_admin_notices','a:0:{}','yes'),
	(270,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes'),
	(271,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(272,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(273,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(274,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(275,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(276,'widget_woocommerce_product_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(277,'widget_woocommerce_product_tag_cloud','a:2:{i:2;a:1:{s:5:\"title\";s:21:\"Produkt Schlagwörter\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(278,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(279,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(280,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(281,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(282,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(287,'woocommerce_meta_box_errors','a:0:{}','yes'),
	(293,'woocommerce_product_type','physical','yes'),
	(295,'woocommerce_stripe_settings','a:3:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}','yes'),
	(296,'woocommerce_klarna_payments_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
	(297,'woocommerce_ppec_paypal_settings','a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}','yes'),
	(298,'woocommerce_cheque_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
	(299,'woocommerce_bacs_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
	(300,'woocommerce_cod_settings','a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:13:\"Per Nachnahme\";s:11:\"description\";s:21:\"Per Nachnahme zahlen.\";s:12:\"instructions\";s:21:\"Per Nachnahme zahlen.\";s:18:\"enable_for_methods\";a:1:{i:0;s:14:\"local_pickup:2\";}s:18:\"enable_for_virtual\";s:3:\"yes\";}','yes'),
	(302,'mailchimp_woocommerce_plugin_do_activation_redirect','','yes'),
	(309,'current_theme','Shop Isle','yes'),
	(310,'theme_mods_storefront','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567174614;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}','yes'),
	(311,'theme_switched','','yes'),
	(312,'mailchimp_woocommerce_version','2.1.17','no'),
	(313,'mailchimp-woocommerce','a:2:{s:33:\"woocommerce_settings_save_general\";b:1;s:19:\"store_currency_code\";s:3:\"EUR\";}','yes'),
	(315,'mailchimp-woocommerce-store_id','5d664727b87ae','yes'),
	(316,'storefront_nux_fresh_site','0','yes'),
	(317,'woocommerce_catalog_rows','4','yes'),
	(318,'woocommerce_catalog_columns','3','yes'),
	(319,'woocommerce_maybe_regenerate_images_hash','bf0ff040fa6c76af26f1ea86c69a9c17','yes'),
	(325,'mailchimp_woocommerce_db_mailchimp_carts','1','no'),
	(326,'mailchimp-woocommerce_cart_table_add_index_update','1','yes'),
	(329,'_transient_shipping-transient-version','1566985821','yes'),
	(340,'storefront_nux_dismissed','1','yes'),
	(361,'woocommerce_local_pickup_2_settings','a:3:{s:5:\"title\";s:16:\"Abholung vor Ort\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:0:\"\";}','yes'),
	(374,'woocommerce_flat_rate_3_settings','a:7:{s:5:\"title\";s:22:\"Versandkostenpauschale\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:0:\"\";s:11:\"class_costs\";s:0:\"\";s:13:\"class_cost_16\";s:16:\"10 + (2 * [qty])\";s:13:\"no_class_cost\";s:5:\"29,99\";s:4:\"type\";s:5:\"class\";}','yes'),
	(379,'woocommerce_flat_rate_4_settings','a:7:{s:5:\"title\";s:22:\"Versandkostenpauschale\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:1:\"0\";s:11:\"class_costs\";s:0:\"\";s:13:\"class_cost_16\";s:16:\"10 + (2 * [qty])\";s:13:\"no_class_cost\";s:1:\"0\";s:4:\"type\";s:5:\"class\";}','yes'),
	(391,'_transient_product_query-transient-version','1567236776','yes'),
	(392,'_transient_product-transient-version','1567174532','yes'),
	(399,'_transient_orders-transient-version','1570633294','yes'),
	(741,'new_admin_email','diddlside@googlemail.com','yes'),
	(797,'hr_refund_enable_refund_request','yes','yes'),
	(798,'hr_refund_enable_partial_refund_request','no','yes'),
	(799,'hr_refund_enable_for_sale_items','no','yes'),
	(800,'hr_refund_request_include_tax','no','yes'),
	(801,'hr_refund_buttons_by_order_status','a:0:{}','yes'),
	(802,'hr_refund_request_time_period','1','yes'),
	(803,'hr_refund_prevent_refund_request','1','yes'),
	(804,'hr_refund_include_categories_srch','a:0:{}','yes'),
	(805,'hr_refund_request_prevent_users','1','yes'),
	(806,'hr_refund_include_user_role_srch','a:0:{}','yes'),
	(807,'hr_refund_enable_refund_method','no','yes'),
	(808,'hr_refund_preloaded_reason','Incorrect Product,Incorrect Size,Incorrect Color,Product Damaged,Product did not match Description,Didn\'t meet the Expectation','yes'),
	(809,'hr_refund_enable_refund_reason_field','no','yes'),
	(810,'hr_refund_enable_refund_reason_field_mandatory','no','yes'),
	(811,'hr_refund_enable_conversation','no','yes'),
	(812,'hr_refund_include_user_srch','a:0:{}','yes'),
	(813,'hr_refund_include_products_srch','a:0:{}','yes'),
	(814,'hr_refund_request_email_type','woo','yes'),
	(815,'hr_refund_request_email_from_name','woocommerce','yes'),
	(816,'hr_refund_request_email_from_email','diddlside@googlemail.com','yes'),
	(817,'hr_refund_request_enable_unsubscription','no','yes'),
	(818,'hr_refund_request_customize_unsub_text','','yes'),
	(819,'hr_refund_request_sent_user_enable','no','yes'),
	(820,'hr_refund_request_sent_user_sub','Refund Request Submitted on {hr-refund.sitename}','yes'),
	(821,'hr_refund_request_sent_user_msg','Your Refund Request {hr-refund.requestid} for Order {hr-refund.orderid} has been submitted successfully on {hr-refund.sitename} at {hr-refund.date} {hr-refund.time}','yes'),
	(822,'hr_refund_request_sent_admin_enable','no','yes'),
	(823,'hr_refund_request_sent_admin_sub','New Refund Request on {hr-refund.sitename}','yes'),
	(824,'hr_refund_request_sent_admin_msg','Customer {hr-refund.customername} has submitted a Refund Request {hr-refund.requestid} for Order {hr-refund.orderid} on {hr-refund.sitename} at {hr-refund.date} {hr-refund.time}','yes'),
	(825,'hr_refund_request_reply_receive_user_enable','no','yes'),
	(826,'hr_refund_request_reply_receive_user_msg','','yes'),
	(827,'hr_refund_request_reply_receive_admin_enable','no','yes'),
	(828,'hr_refund_request_reply_receive_admin_msg','','yes'),
	(829,'hr_refund_request_accept_user_enable','no','yes'),
	(830,'hr_refund_request_accept_user_sub','Refund Request Accepted on {hr-refund.sitename}','yes'),
	(831,'hr_refund_request_accept_user_msg','Your Refund Request {hr-refund.requestid} for Order {hr-refund.orderid} has been Accepted by site Admin on {hr-refund.sitename} at {hr-refund.date} {hr-refund.time}','yes'),
	(832,'hr_refund_request_accept_admin_enable','no','yes'),
	(833,'hr_refund_request_accept_admin_sub','Refund Request Accepted on {hr-refund.sitename}','yes'),
	(834,'hr_refund_request_accept_admin_msg','Refund Request {hr-refund.requestid} for Order {hr-refund.orderid} by Customer {hr-refund.customername} has been Accepted on {hr-refund.sitename} at {hr-refund.date} {hr-refund.time}','yes'),
	(835,'hr_refund_request_reject_user_enable','no','yes'),
	(836,'hr_refund_request_reject_user_sub','Refund Request Rejected on {hr-refund.sitename}','yes'),
	(837,'hr_refund_request_reject_user_msg','Your Refund Request {hr-refund.requestid} for Order {hr-refund.orderid} has been Rejected by site Admin on {hr-refund.sitename} at {hr-refund.date} {hr-refund.time}','yes'),
	(838,'hr_refund_request_reject_admin_enable','no','yes'),
	(839,'hr_refund_request_reject_admin_sub','Refund Request Rejected on {hr-refund.sitename}','yes'),
	(840,'hr_refund_request_reject_admin_msg','Refund Request {hr-refund.requestid} for Order {hr-refund.orderid} by Customer {hr-refund.customername} has been Rejected on {hr-refund.sitename} at {hr-refund.date} {hr-refund.time}','yes'),
	(841,'hr_refund_request_status_change_user_enable','no','yes'),
	(842,'hr_refund_request_status_change_user_sub','Refund Request is {hr-refund.newstaus} on {hr-refund.sitename}','yes'),
	(843,'hr_refund_request_status_change_user_msg','Your Refund Request {hr-refund.requestid} for Order {hr-refund.orderid} is now {hr-refund.newstaus} on {hr-refund.sitename} at {hr-refund.date} {hr-refund.time}','yes'),
	(844,'hr_refund_request_status_change_admin_enable','no','yes'),
	(845,'hr_refund_request_status_change_admin_sub','Refund Request is {hr-refund.newstaus} on {hr-refund.sitename}','yes'),
	(846,'hr_refund_request_status_change_admin_msg','Refund Request {hr-refund.requestid} by Customer {hr-refund.customername} for Order {hr-refund.orderid} is now {hr-refund.newstaus} on {hr-refund.sitename} at {hr-refund.date} {hr-refund.time}','yes'),
	(847,'hr_refund_full_order_button_label','Request Refund','yes'),
	(848,'hr_refund_table_request_title_label','Refund Requests','yes'),
	(849,'hr_refund_table_request_id_label','ID','yes'),
	(850,'hr_refund_table_orderid_label','Order Number','yes'),
	(851,'hr_refund_table_status_label','Status','yes'),
	(852,'hr_refund_table_type_label','Type','yes'),
	(853,'hr_refund_table_request_as_label','Mode','yes'),
	(854,'hr_refund_table_user_total_label','Amount','yes'),
	(855,'hr_refund_table_date_label','Date','yes'),
	(856,'hr_refund_table_view_label','View','yes'),
	(857,'hr_refund_form_general_reason_label','Reason for Requesting Refund','yes'),
	(858,'hr_refund_form_request_as_label','Refund Mode','yes'),
	(859,'hr_refund_form_details_label','Reason in Detail','yes'),
	(860,'hr_refund_form_submit_button_label','Request Refund','yes'),
	(879,'product_cat_children','a:2:{i:24;a:5:{i:0;i:17;i:1;i:20;i:2;i:26;i:3;i:27;i:4;i:28;}i:25;a:3:{i:0;i:29;i:1;i:30;i:2;i:31;}}','yes'),
	(914,'theme_mods_shop-isle','a:10:{i:0;b:0;s:28:\"ti_about_recommended_plugins\";a:0:{}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:32;}s:16:\"shop_isle_slider\";s:652:\"[{\"image_url\":\"http:\\/\\/woocommerce.test:8888\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide1.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5d692fda01d9c\"},{\"image_url\":\"http:\\/\\/woocommerce.test:8888\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide2.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5d692fda01da4\"},{\"image_url\":\"http:\\/\\/woocommerce.test:8888\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide3.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5d692fda01da7\"}]\";s:17:\"shop_isle_banners\";s:448:\"[{\"image_url\":\"http:\\/\\/woocommerce.test:8888\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner1.jpg\",\"link\":\"#\",\"id\":\"shop_isle_5d692fda028e1\"},{\"image_url\":\"http:\\/\\/woocommerce.test:8888\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner2.jpg\",\"link\":\"#\",\"id\":\"shop_isle_5d692fda028ea\"},{\"image_url\":\"http:\\/\\/woocommerce.test:8888\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner3.jpg\",\"link\":\"#\",\"id\":\"shop_isle_5d692fda028ec\"}]\";s:17:\"shop_isle_socials\";s:297:\"[{\"icon_value\":\"social_facebook\",\"link\":\"#\",\"id\":\"shop_isle_5d692fda03028\"},{\"icon_value\":\"social_twitter\",\"link\":\"#\",\"id\":\"shop_isle_5d692fda03030\"},{\"icon_value\":\"social_dribbble\",\"link\":\"#\",\"id\":\"shop_isle_5d692fda03032\"},{\"icon_value\":\"social_skype\",\"link\":\"#\",\"id\":\"shop_isle_5d692fda03034\"}]\";s:22:\"shop_isle_team_members\";s:1094:\"[{\"image_url\":\"http:\\/\\/woocommerce.test:8888\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team1.jpg\",\"text\":\"Eva Bean\",\"subtext\":\"Developer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5d692fda03c70\"},{\"image_url\":\"http:\\/\\/woocommerce.test:8888\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team2.jpg\",\"text\":\"Maria Woods\",\"subtext\":\"Designer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5d692fda03c77\"},{\"image_url\":\"http:\\/\\/woocommerce.test:8888\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team3.jpg\",\"text\":\"Booby Stone\",\"subtext\":\"Director\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5d692fda03c7a\"},{\"image_url\":\"http:\\/\\/woocommerce.test:8888\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team4.jpg\",\"text\":\"Anna Neaga\",\"subtext\":\"Art Director\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5d692fda03c7c\"}]\";s:20:\"shop_isle_advantages\";s:623:\"[{\"icon_value\":\"icon_lightbulb\",\"text\":\"Ideas and concepts\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5d692fda04376\"},{\"icon_value\":\"icon_tools\",\"text\":\"Designs & interfaces\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5d692fda0437d\"},{\"icon_value\":\"icon_cogs\",\"text\":\"Highly customizable\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5d692fda0437f\"},{\"icon_value\":\"icon_like\",\"text\":\"Easy to use\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5d692fda04382\"}]\";s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:129;}','yes'),
	(915,'woocommerce_thumbnail_cropping','custom','yes'),
	(916,'woocommerce_thumbnail_cropping_custom_width','20','yes'),
	(917,'woocommerce_thumbnail_cropping_custom_height','25','yes'),
	(919,'shop_isle_update_woocommerce_customizer_controls','1','yes'),
	(922,'shop_isle_install','1567174616','yes'),
	(923,'shop_catalog_image_size','a:3:{s:5:\"width\";s:3:\"262\";s:6:\"height\";s:3:\"325\";s:4:\"crop\";i:1;}','yes'),
	(924,'shop_single_image_size','a:3:{s:5:\"width\";s:3:\"555\";s:6:\"height\";s:3:\"688\";s:4:\"crop\";i:1;}','yes'),
	(925,'shop_thumbnail_image_size','a:3:{s:5:\"width\";s:2:\"83\";s:6:\"height\";s:3:\"103\";s:4:\"crop\";i:1;}','yes'),
	(936,'shop_isle_migrate_translation','1','yes'),
	(953,'shop_isle_section_order_migrate','yes','yes'),
	(1112,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
	(1179,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1570633249;s:7:\"checked\";a:5:{s:9:\"shop-isle\";s:6:\"2.2.50\";s:10:\"storefront\";s:5:\"2.5.3\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),
	(1180,'wpforms_version','1.5.5','yes'),
	(1181,'wpforms_activated','a:1:{s:4:\"lite\";i:1567236018;}','yes'),
	(1184,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(1185,'_amn_wpforms-lite_to_check','1567377525','yes'),
	(1186,'wpforms_review','a:2:{s:4:\"time\";i:1567236020;s:9:\"dismissed\";b:0;}','yes'),
	(1200,'shop_isle_notice_dismissed','yes','yes'),
	(1209,'mtsnb_stats','a:0:{}','yes'),
	(1210,'wp_notification_bar_activated','1567237266','yes'),
	(1211,'wp_notification_bar_notice_views','3','yes'),
	(1217,'_transient_is_multi_author','0','yes'),
	(1228,'wc_ss_btns_options','{\"general_settings\":{\"keys\":[{\"label\":\"woocommerce_share\",\"action\":\"woocommerce_share\"},{\"label\":\"woocommerce_after_single_product_summary\",\"action\":\"woocommerce_after_single_product_summary\"},{\"label\":\"woocommerce_before_single_product\",\"action\":\"woocommerce_before_single_product\"},{\"label\":\"woocommerce_after_single_product\",\"action\":\"woocommerce_after_single_product\"},{\"label\":\"woocommerce_after_add_to_cart_form\",\"action\":\"woocommerce_after_add_to_cart_form\"}],\"values\":{\"woocommerce_share\":\"on\",\"woocommerce_after_single_product_summary\":\"on\"},\"floating_mode\":{\"enabled\":false,\"post_types\":{\"restricted_post_types\":[\"attachment\",\"product\"],\"enabled_post_types\":[\"post\",\"page\"]},\"positions\":{\"available_positions\":[\"left\",\"right\"],\"enabled_positions\":\"left\"}}},\"networks\":{\"keys\":[\"facebook\",\"twitter\",\"google\",\"linkedin\",\"pinterest\",\"reddit\",\"delicious\",\"buffer\",\"digg\",\"tumblr\",\"stumbleupon\",\"blogger\",\"yahoo\",\"skype\",\"viber\",\"whatsapp\",\"email\"],\"values\":{\"facebook\":\"on\",\"twitter\":\"on\",\"google\":\"on\",\"pinterest\":\"on\",\"reddit\":\"on\",\"tumblr\":\"on\"}},\"display\":{\"values\":{\"theme\":\"modern-theme-circle\",\"display_share_message\":\"on\",\"share_message_text\":\"Share this product!\",\"wc_ss_btns_heading\":\"Spread the love!\"}}}','no'),
	(1236,'wp-smush-settings','a:20:{s:4:\"auto\";b:1;s:5:\"lossy\";b:0;s:10:\"strip_exif\";b:1;s:6:\"resize\";b:0;s:9:\"detection\";b:0;s:8:\"original\";b:0;s:6:\"backup\";b:0;s:10:\"png_to_jpg\";b:0;s:7:\"nextgen\";b:0;s:2:\"s3\";b:0;s:9:\"gutenberg\";b:0;s:10:\"js_builder\";b:0;s:3:\"cdn\";b:0;s:11:\"auto_resize\";b:0;s:4:\"webp\";b:1;s:5:\"usage\";b:1;s:17:\"accessible_colors\";b:0;s:9:\"keep_data\";b:1;s:9:\"lazy_load\";b:1;s:17:\"background_images\";b:1;}','yes'),
	(1237,'wdev-frash','a:3:{s:7:\"plugins\";a:1:{s:23:\"wp-smushit/wp-smush.php\";i:1567238684;}s:5:\"queue\";a:1:{s:32:\"fc50097023d0d34c5a66f6cddcf77694\";a:3:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1567843484;}}s:4:\"done\";a:1:{i:0;a:6:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1567238684;s:5:\"state\";s:6:\"ignore\";s:4:\"hash\";s:32:\"fc50097023d0d34c5a66f6cddcf77694\";s:10:\"handled_at\";i:1567239364;}}}','no'),
	(1238,'wp-smush-install-type','existing','no'),
	(1239,'wp-smush-version','3.2.4','no'),
	(1242,'smush_global_stats','a:9:{s:11:\"size_before\";i:10066752;s:10:\"size_after\";i:9585641;s:7:\"percent\";d:4.8;s:5:\"human\";s:8:\"469,8 KB\";s:5:\"bytes\";i:481111;s:12:\"total_images\";i:581;s:12:\"resize_count\";i:0;s:14:\"resize_savings\";i:0;s:18:\"conversion_savings\";i:0;}','no'),
	(1244,'dir_smush_stats','a:2:{s:9:\"dir_smush\";a:2:{s:5:\"total\";s:1:\"0\";s:9:\"optimised\";i:0;}s:14:\"combined_stats\";a:0:{}}','no'),
	(1246,'wp-smush-lazy_load','a:7:{s:6:\"format\";a:4:{s:4:\"jpeg\";b:1;s:3:\"png\";b:1;s:3:\"gif\";b:1;s:3:\"svg\";b:1;}s:6:\"output\";a:4:{s:7:\"content\";b:1;s:7:\"widgets\";b:1;s:10:\"thumbnails\";b:1;s:9:\"gravatars\";b:1;}s:9:\"animation\";a:4:{s:8:\"selected\";s:6:\"fadein\";s:6:\"fadein\";a:2:{s:8:\"duration\";i:400;s:5:\"delay\";i:0;}s:7:\"spinner\";a:2:{s:8:\"selected\";i:1;s:6:\"custom\";a:0:{}}s:11:\"placeholder\";a:3:{s:8:\"selected\";i:1;s:6:\"custom\";a:0:{}s:5:\"color\";s:7:\"#F3F3F3\";}}s:7:\"include\";a:7:{s:9:\"frontpage\";b:1;s:4:\"home\";b:1;s:4:\"page\";b:1;s:6:\"single\";b:1;s:7:\"archive\";b:1;s:8:\"category\";b:1;s:3:\"tag\";b:1;}s:13:\"exclude-pages\";a:0:{}s:15:\"exclude-classes\";a:0:{}s:6:\"footer\";b:1;}','yes'),
	(1247,'skip-smush-setup','1','yes'),
	(1250,'_transient_timeout_external_ip_address_::1','1571238039','no'),
	(1251,'_transient_external_ip_address_::1','95.156.201.0','no'),
	(1253,'_transient_timeout_wc_term_counts','1573225241','no'),
	(1254,'_transient_wc_term_counts','a:16:{i:26;s:1:\"3\";i:24;s:1:\"5\";i:20;s:1:\"1\";i:17;s:1:\"1\";i:21;s:1:\"3\";i:23;s:1:\"3\";i:18;s:1:\"1\";i:19;s:1:\"1\";i:22;s:1:\"1\";i:15;s:1:\"0\";i:30;s:0:\"\";i:29;s:0:\"\";i:28;s:0:\"\";i:31;s:0:\"\";i:27;s:0:\"\";i:25;s:0:\"\";}','no'),
	(1255,'_transient_timeout_wc_product_children_102','1573225240','no'),
	(1256,'_transient_wc_product_children_102','a:2:{s:3:\"all\";a:6:{i:0;i:106;i:1;i:107;i:2;i:108;i:3;i:109;i:4;i:110;i:5;i:111;}s:7:\"visible\";a:6:{i:0;i:106;i:1;i:107;i:2;i:108;i:3;i:109;i:4;i:110;i:5;i:111;}}','no'),
	(1257,'_transient_timeout_wc_product_children_112','1573225240','no'),
	(1258,'_transient_wc_product_children_112','a:2:{s:3:\"all\";a:3:{i:0;i:113;i:1;i:114;i:2;i:115;}s:7:\"visible\";a:3:{i:0;i:113;i:1;i:114;i:2;i:115;}}','no'),
	(1259,'_transient_timeout_wc_product_children_95','1573225240','no'),
	(1260,'_transient_wc_product_children_95','a:2:{s:3:\"all\";a:6:{i:0;i:96;i:1;i:97;i:2;i:98;i:3;i:99;i:4;i:100;i:5;i:101;}s:7:\"visible\";a:6:{i:0;i:96;i:1;i:97;i:2;i:98;i:3;i:99;i:4;i:100;i:5;i:101;}}','no'),
	(1261,'_transient_timeout_wc_var_prices_95','1573225240','no'),
	(1262,'_transient_wc_var_prices_95','{\"version\":\"1567174532\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"96\":\"9.99\",\"97\":\"9.99\",\"98\":\"9.99\",\"99\":\"9.99\",\"100\":\"9.99\",\"101\":\"9.99\"},\"regular_price\":{\"96\":\"9.99\",\"97\":\"9.99\",\"98\":\"9.99\",\"99\":\"9.99\",\"100\":\"9.99\",\"101\":\"9.99\"},\"sale_price\":{\"96\":\"9.99\",\"97\":\"9.99\",\"98\":\"9.99\",\"99\":\"9.99\",\"100\":\"9.99\",\"101\":\"9.99\"}}}','no'),
	(1263,'_transient_timeout_wc_var_prices_102','1573225240','no'),
	(1264,'_transient_wc_var_prices_102','{\"version\":\"1567174532\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"106\":\"9.99\",\"107\":\"9.99\",\"108\":\"9.99\",\"109\":\"9.99\",\"110\":\"9.99\",\"111\":\"9.99\"},\"regular_price\":{\"106\":\"9.99\",\"107\":\"9.99\",\"108\":\"9.99\",\"109\":\"9.99\",\"110\":\"9.99\",\"111\":\"9.99\"},\"sale_price\":{\"106\":\"9.99\",\"107\":\"9.99\",\"108\":\"9.99\",\"109\":\"9.99\",\"110\":\"9.99\",\"111\":\"9.99\"}}}','no'),
	(1265,'_transient_timeout_wc_var_prices_112','1573225240','no'),
	(1266,'_transient_wc_var_prices_112','{\"version\":\"1567174532\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"113\":\"13.99\",\"114\":\"12.99\",\"115\":\"9.99\"},\"regular_price\":{\"113\":\"13.99\",\"114\":\"12.99\",\"115\":\"9.99\"},\"sale_price\":{\"113\":\"13.99\",\"114\":\"12.99\",\"115\":\"9.99\"}}}','no'),
	(1268,'_transient_timeout__woocommerce_helper_subscriptions','1570634144','no'),
	(1269,'_transient__woocommerce_helper_subscriptions','a:0:{}','no'),
	(1270,'_site_transient_timeout_theme_roots','1570635044','no'),
	(1271,'_site_transient_theme_roots','a:5:{s:9:\"shop-isle\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),
	(1272,'_transient_timeout__woocommerce_helper_updates','1570676444','no'),
	(1273,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1570633244;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no'),
	(1274,'_transient_timeout_shop_isle-update-response','1570676448','no'),
	(1275,'_transient_shop_isle-update-response','O:8:\"stdClass\":2:{s:3:\"msg\";s:18:\"Download not found\";s:8:\"sections\";N;}','no'),
	(1277,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/de_DE/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"de_DE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/de_DE/wordpress-5.2.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1570633282;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}','no'),
	(1278,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1570633287;s:7:\"checked\";a:9:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:6:\"2.1.17\";s:17:\"refund/refund.php\";s:3:\"1.4\";s:56:\"woo-product-social-sharing/wc-product-social-sharing.php\";s:5:\"1.8.4\";s:23:\"wp-smushit/wp-smush.php\";s:5:\"3.2.4\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.7.0\";s:24:\"wpforms-lite/wpforms.php\";s:5:\"1.5.5\";s:45:\"wp-notification-bars/wp-notification-bars.php\";s:5:\"1.0.5\";}s:8:\"response\";a:4:{s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.2.4\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.3\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:56:\"woo-product-social-sharing/wc-product-social-sharing.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:40:\"w.org/plugins/woo-product-social-sharing\";s:4:\"slug\";s:26:\"woo-product-social-sharing\";s:6:\"plugin\";s:56:\"woo-product-social-sharing/wc-product-social-sharing.php\";s:11:\"new_version\";s:5:\"1.8.7\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woo-product-social-sharing/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/woo-product-social-sharing.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/woo-product-social-sharing/assets/icon-128x128.png?rev=2099081\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/woo-product-social-sharing/assets/banner-772x250.png?rev=2099081\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.7.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.5.5.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.5.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.3\";s:12:\"requires_php\";s:5:\"5.3.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"wp-smushit/wp-smush.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/wp-smushit\";s:4:\"slug\";s:10:\"wp-smushit\";s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-smushit/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-smushit.3.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-smushit/assets/icon-256x256.jpg?rev=2132251\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-smushit/assets/icon-128x128.jpg?rev=2132250\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-smushit/assets/banner-1544x500.png?rev=1863697\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-smushit/assets/banner-772x250.png?rev=1863697\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"wp-notification-bars/wp-notification-bars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/wp-notification-bars\";s:4:\"slug\";s:20:\"wp-notification-bars\";s:6:\"plugin\";s:45:\"wp-notification-bars/wp-notification-bars.php\";s:11:\"new_version\";s:5:\"1.0.5\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/wp-notification-bars/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/wp-notification-bars.1.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wp-notification-bars/assets/icon-256x256.png?rev=1249179\";s:2:\"1x\";s:73:\"https://ps.w.org/wp-notification-bars/assets/icon-128x128.png?rev=1249179\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/wp-notification-bars/assets/banner-772x250.jpg?rev=1249179\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"refund/refund.php\";O:8:\"stdClass\":4:{s:4:\"slug\";s:6:\"refund\";s:11:\"new_version\";s:3:\"1.4\";s:7:\"package\";a:0:{}s:15:\"warning_message\";s:4:\"5007\";}}}','no'),
	(1279,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"diddlside@googlemail.com\";s:7:\"version\";s:5:\"5.2.3\";s:9:\"timestamp\";i:1570633287;}','no');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,3,'_wp_page_template','default'),
	(3,5,'_wp_attached_file','woocommerce-placeholder.png'),
	(4,5,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-160x160.png\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-555x555.png\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-262x328.png\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(5,10,'_edit_last','1'),
	(6,10,'_edit_lock','1567174390:1'),
	(7,10,'_sku','VINT'),
	(8,10,'_regular_price','999'),
	(9,10,'total_sales','0'),
	(10,10,'_tax_status','taxable'),
	(11,10,'_tax_class',''),
	(12,10,'_manage_stock','yes'),
	(13,10,'_backorders','notify'),
	(14,10,'_low_stock_amount','5'),
	(15,10,'_sold_individually','no'),
	(16,10,'_weight','2'),
	(17,10,'_purchase_note','Thank you. You are definetely get the ladies now!'),
	(18,10,'_virtual','no'),
	(19,10,'_downloadable','no'),
	(20,10,'_download_limit','-1'),
	(21,10,'_download_expiry','-1'),
	(22,10,'_stock','20'),
	(23,10,'_stock_status','instock'),
	(24,10,'_wc_average_rating','0'),
	(25,10,'_wc_review_count','0'),
	(26,10,'_product_version','3.7.0'),
	(27,10,'_price','999'),
	(28,11,'_wp_attached_file','2019/08/about-banner-free-img-1024x683.jpg'),
	(29,11,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:42:\"2019/08/about-banner-free-img-1024x683.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"about-banner-free-img-1024x683-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"about-banner-free-img-1024x683-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"about-banner-free-img-1024x683-555x370.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"about-banner-free-img-1024x683-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"about-banner-free-img-1024x683-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"about-banner-free-img-1024x683-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"about-banner-free-img-1024x683-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:42:\"about-banner-free-img-1024x683-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"about-banner-free-img-1024x683-555x370.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"about-banner-free-img-1024x683-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(30,12,'_wp_attached_file','2019/08/about-bg-free-img-1-300x300-262x300.jpg'),
	(31,12,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:262;s:6:\"height\";i:300;s:4:\"file\";s:47:\"2019/08/about-bg-free-img-1-300x300-262x300.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"about-bg-free-img-1-300x300-262x300-262x300.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"about-bg-free-img-1-300x300-262x300-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"about-bg-free-img-1-300x300-262x300-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"about-bg-free-img-1-300x300-262x300-262x300.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"about-bg-free-img-1-300x300-262x300-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(32,13,'_wp_attached_file','2019/08/about-bg-free-img-1024x576.jpg'),
	(33,13,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:38:\"2019/08/about-bg-free-img-1024x576.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"about-bg-free-img-1024x576-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"about-bg-free-img-1024x576-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"about-bg-free-img-1024x576-555x312.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"about-bg-free-img-1024x576-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"about-bg-free-img-1024x576-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"about-bg-free-img-1024x576-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"about-bg-free-img-1024x576-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"about-bg-free-img-1024x576-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"about-bg-free-img-1024x576-555x312.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"about-bg-free-img-1024x576-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(34,14,'_wp_attached_file','2019/08/accessories-free-img-600x600.jpg'),
	(35,14,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:40:\"2019/08/accessories-free-img-600x600.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"accessories-free-img-600x600-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"accessories-free-img-600x600-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"accessories-free-img-600x600-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"accessories-free-img-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"accessories-free-img-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"accessories-free-img-600x600-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"accessories-free-img-600x600-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"accessories-free-img-600x600-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(36,15,'_wp_attached_file','2019/08/anchor-bracelet-black-free-img.jpg'),
	(37,15,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:42:\"2019/08/anchor-bracelet-black-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"anchor-bracelet-black-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-black-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-black-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-black-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-black-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-black-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:42:\"anchor-bracelet-black-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-black-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-black-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(38,16,'_wp_attached_file','2019/08/anchor-bracelet-blue-free-img.jpg'),
	(39,16,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:41:\"2019/08/anchor-bracelet-blue-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"anchor-bracelet-blue-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"anchor-bracelet-blue-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"anchor-bracelet-blue-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"anchor-bracelet-blue-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"anchor-bracelet-blue-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"anchor-bracelet-blue-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"anchor-bracelet-blue-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"anchor-bracelet-blue-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"anchor-bracelet-blue-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(40,17,'_wp_attached_file','2019/08/anchor-bracelet-brown-free-img.jpg'),
	(41,17,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:42:\"2019/08/anchor-bracelet-brown-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"anchor-bracelet-brown-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-brown-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-brown-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-brown-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-brown-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-brown-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:42:\"anchor-bracelet-brown-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-brown-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"anchor-bracelet-brown-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(42,18,'_wp_attached_file','2019/08/anchor-bracelet-red-free-img.jpg'),
	(43,18,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:40:\"2019/08/anchor-bracelet-red-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"anchor-bracelet-red-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"anchor-bracelet-red-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"anchor-bracelet-red-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"anchor-bracelet-red-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"anchor-bracelet-red-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"anchor-bracelet-red-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"anchor-bracelet-red-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"anchor-bracelet-red-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"anchor-bracelet-red-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(44,19,'_wp_attached_file','2019/08/appstore-free-img-300x90-300x90.png'),
	(45,19,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:90;s:4:\"file\";s:43:\"2019/08/appstore-free-img-300x90-300x90.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"appstore-free-img-300x90-300x90-262x90.png\";s:5:\"width\";i:262;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"appstore-free-img-300x90-300x90-160x90.png\";s:5:\"width\";i:160;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"appstore-free-img-300x90-300x90-150x90.png\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"appstore-free-img-300x90-300x90-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"appstore-free-img-300x90-300x90-160x90.png\";s:5:\"width\";i:160;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(46,20,'_wp_attached_file','2019/08/aqua-wind-breaker-1-free-img.jpg'),
	(47,20,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:40:\"2019/08/aqua-wind-breaker-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"aqua-wind-breaker-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"aqua-wind-breaker-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(48,21,'_wp_attached_file','2019/08/aqua-wind-breaker-2-free-img.jpg'),
	(49,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:40:\"2019/08/aqua-wind-breaker-2-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"aqua-wind-breaker-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-2-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-2-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-2-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"aqua-wind-breaker-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(50,22,'_wp_attached_file','2019/08/aqua-wind-breaker-3-free-img.jpg'),
	(51,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:40:\"2019/08/aqua-wind-breaker-3-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"aqua-wind-breaker-3-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-3-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-3-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-3-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-3-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-3-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"aqua-wind-breaker-3-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-3-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"aqua-wind-breaker-3-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(52,23,'_wp_attached_file','2019/08/beautiful-1274056-1024x768.jpg'),
	(53,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:38:\"2019/08/beautiful-1274056-1024x768.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"beautiful-1274056-1024x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"beautiful-1274056-1024x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"beautiful-1274056-1024x768-555x416.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"beautiful-1274056-1024x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"beautiful-1274056-1024x768-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"beautiful-1274056-1024x768-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"beautiful-1274056-1024x768-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"beautiful-1274056-1024x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"beautiful-1274056-1024x768-555x416.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"beautiful-1274056-1024x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(54,24,'_wp_attached_file','2019/08/black-over-the-shoulder-bag-1-free-img.jpg'),
	(55,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:50:\"2019/08/black-over-the-shoulder-bag-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"black-over-the-shoulder-bag-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"black-over-the-shoulder-bag-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"black-over-the-shoulder-bag-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"black-over-the-shoulder-bag-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"black-over-the-shoulder-bag-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"black-over-the-shoulder-bag-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:50:\"black-over-the-shoulder-bag-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"black-over-the-shoulder-bag-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"black-over-the-shoulder-bag-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(56,25,'_wp_attached_file','2019/08/black-over-the-shoulder-bag-free-img.jpg'),
	(57,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:48:\"2019/08/black-over-the-shoulder-bag-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"black-over-the-shoulder-bag-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"black-over-the-shoulder-bag-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"black-over-the-shoulder-bag-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"black-over-the-shoulder-bag-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"black-over-the-shoulder-bag-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"black-over-the-shoulder-bag-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"black-over-the-shoulder-bag-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"black-over-the-shoulder-bag-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"black-over-the-shoulder-bag-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(58,26,'_wp_attached_file','2019/08/black-shoes-green-led-1-free-img-768x768-768x768.jpg'),
	(59,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:60:\"2019/08/black-shoes-green-led-1-free-img-768x768-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:60:\"black-shoes-green-led-1-free-img-768x768-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:60:\"black-shoes-green-led-1-free-img-768x768-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:60:\"black-shoes-green-led-1-free-img-768x768-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"black-shoes-green-led-1-free-img-768x768-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"black-shoes-green-led-1-free-img-768x768-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"black-shoes-green-led-1-free-img-768x768-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:60:\"black-shoes-green-led-1-free-img-768x768-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:60:\"black-shoes-green-led-1-free-img-768x768-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:60:\"black-shoes-green-led-1-free-img-768x768-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(60,27,'_wp_attached_file','2019/08/black-shoes-green-led-2-free-img-768x768.jpg'),
	(61,27,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:52:\"2019/08/black-shoes-green-led-2-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"black-shoes-green-led-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"black-shoes-green-led-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:52:\"black-shoes-green-led-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"black-shoes-green-led-2-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"black-shoes-green-led-2-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"black-shoes-green-led-2-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:52:\"black-shoes-green-led-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:52:\"black-shoes-green-led-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"black-shoes-green-led-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(62,28,'_wp_attached_file','2019/08/black-sleevless-1-free-img.jpg'),
	(63,28,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:38:\"2019/08/black-sleevless-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"black-sleevless-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"black-sleevless-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"black-sleevless-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"black-sleevless-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"black-sleevless-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"black-sleevless-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"black-sleevless-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"black-sleevless-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"black-sleevless-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(64,29,'_wp_attached_file','2019/08/black-sleevless-2-free-img.jpg'),
	(65,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:38:\"2019/08/black-sleevless-2-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"black-sleevless-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"black-sleevless-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"black-sleevless-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"black-sleevless-2-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"black-sleevless-2-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"black-sleevless-2-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"black-sleevless-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"black-sleevless-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"black-sleevless-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(66,30,'_wp_attached_file','2019/08/black-washed-1-free-img-768x768.jpg'),
	(67,30,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:43:\"2019/08/black-washed-1-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"black-washed-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"black-washed-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"black-washed-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"black-washed-1-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"black-washed-1-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"black-washed-1-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:43:\"black-washed-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"black-washed-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"black-washed-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(68,31,'_wp_attached_file','2019/08/blue-basic-jeans-1-free-img-768x768.jpg'),
	(69,31,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:47:\"2019/08/blue-basic-jeans-1-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"blue-basic-jeans-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-1-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-1-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-1-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:47:\"blue-basic-jeans-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(70,32,'_wp_attached_file','2019/08/blue-basic-jeans-2-free-img-768x768.jpg'),
	(71,32,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:47:\"2019/08/blue-basic-jeans-2-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"blue-basic-jeans-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-2-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-2-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-2-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:47:\"blue-basic-jeans-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"blue-basic-jeans-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(72,33,'_wp_attached_file','2019/08/blue-denim-2-free-img-1024x1024.jpg'),
	(73,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:43:\"2019/08/blue-denim-2-free-img-1024x1024.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"blue-denim-2-free-img-1024x1024-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"blue-denim-2-free-img-1024x1024-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"blue-denim-2-free-img-1024x1024-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"blue-denim-2-free-img-1024x1024-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"blue-denim-2-free-img-1024x1024-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"blue-denim-2-free-img-1024x1024-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:43:\"blue-denim-2-free-img-1024x1024-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"blue-denim-2-free-img-1024x1024-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"blue-denim-2-free-img-1024x1024-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(74,34,'_wp_attached_file','2019/08/blue-jeans-1-free-img-768x768.jpg'),
	(75,34,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:41:\"2019/08/blue-jeans-1-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"blue-jeans-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"blue-jeans-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"blue-jeans-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"blue-jeans-1-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"blue-jeans-1-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"blue-jeans-1-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"blue-jeans-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"blue-jeans-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"blue-jeans-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(76,35,'_wp_attached_file','2019/08/blue-jeans-2-free-img-768x768.jpg'),
	(77,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:41:\"2019/08/blue-jeans-2-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"blue-jeans-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"blue-jeans-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"blue-jeans-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"blue-jeans-2-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"blue-jeans-2-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"blue-jeans-2-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"blue-jeans-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"blue-jeans-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"blue-jeans-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(78,36,'_wp_attached_file','2019/08/blue-men-shoes-1-free-img.jpg'),
	(79,36,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:37:\"2019/08/blue-men-shoes-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"blue-men-shoes-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:37:\"blue-men-shoes-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(80,37,'_wp_attached_file','2019/08/blue-men-shoes-2-free-img.jpg'),
	(81,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:37:\"2019/08/blue-men-shoes-2-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"blue-men-shoes-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-2-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-2-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-2-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:37:\"blue-men-shoes-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"blue-men-shoes-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(82,38,'_wp_attached_file','2019/08/blue-wind-breaker-1-free-img.jpg'),
	(83,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:40:\"2019/08/blue-wind-breaker-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"blue-wind-breaker-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"blue-wind-breaker-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(84,39,'_wp_attached_file','2019/08/blue-wind-breaker-2-free-img.jpg'),
	(85,39,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:40:\"2019/08/blue-wind-breaker-2-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"blue-wind-breaker-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-2-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-2-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-2-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"blue-wind-breaker-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"blue-wind-breaker-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(86,40,'_wp_attached_file','2019/08/boho-bangle-bracelet-side-free-img.jpg'),
	(87,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:46:\"2019/08/boho-bangle-bracelet-side-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"boho-bangle-bracelet-side-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"boho-bangle-bracelet-side-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:46:\"boho-bangle-bracelet-side-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"boho-bangle-bracelet-side-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"boho-bangle-bracelet-side-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"boho-bangle-bracelet-side-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:46:\"boho-bangle-bracelet-side-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"boho-bangle-bracelet-side-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"boho-bangle-bracelet-side-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(88,41,'_wp_attached_file','2019/08/boho-bangle-bracelet-top-free-img.jpg'),
	(89,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:45:\"2019/08/boho-bangle-bracelet-top-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"boho-bangle-bracelet-top-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"boho-bangle-bracelet-top-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"boho-bangle-bracelet-top-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"boho-bangle-bracelet-top-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"boho-bangle-bracelet-top-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"boho-bangle-bracelet-top-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:45:\"boho-bangle-bracelet-top-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"boho-bangle-bracelet-top-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"boho-bangle-bracelet-top-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(90,42,'_wp_attached_file','2019/08/bonding-1985863-1024x565.jpg'),
	(91,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:565;s:4:\"file\";s:36:\"2019/08/bonding-1985863-1024x565.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"bonding-1985863-1024x565-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"bonding-1985863-1024x565-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"bonding-1985863-1024x565-555x306.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"bonding-1985863-1024x565-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"bonding-1985863-1024x565-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"bonding-1985863-1024x565-768x424.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"bonding-1985863-1024x565-1024x565.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:565;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"bonding-1985863-1024x565-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"bonding-1985863-1024x565-555x306.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"bonding-1985863-1024x565-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(92,43,'_wp_attached_file','2019/08/bright-purse-1-free-img.jpg'),
	(93,43,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:35:\"2019/08/bright-purse-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"bright-purse-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"bright-purse-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"bright-purse-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"bright-purse-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"bright-purse-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"bright-purse-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:35:\"bright-purse-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"bright-purse-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"bright-purse-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(94,44,'_wp_attached_file','2019/08/bright-purse-2-free-img.jpg'),
	(95,44,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:35:\"2019/08/bright-purse-2-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"bright-purse-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"bright-purse-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"bright-purse-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"bright-purse-2-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"bright-purse-2-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"bright-purse-2-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:35:\"bright-purse-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"bright-purse-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"bright-purse-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(96,45,'_wp_attached_file','2019/08/bright-purse-3-free-img.jpg'),
	(97,45,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:35:\"2019/08/bright-purse-3-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"bright-purse-3-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"bright-purse-3-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"bright-purse-3-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"bright-purse-3-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"bright-purse-3-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"bright-purse-3-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:35:\"bright-purse-3-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"bright-purse-3-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"bright-purse-3-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(98,46,'_wp_attached_file','2019/08/brown-basic-top-1-free-img-768x768.jpg'),
	(99,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:46:\"2019/08/brown-basic-top-1-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"brown-basic-top-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"brown-basic-top-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:46:\"brown-basic-top-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"brown-basic-top-1-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"brown-basic-top-1-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"brown-basic-top-1-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:46:\"brown-basic-top-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"brown-basic-top-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"brown-basic-top-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(100,47,'_wp_attached_file','2019/08/brown-blazer-jacket-1-free-img-1-768x768.jpg'),
	(101,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:52:\"2019/08/brown-blazer-jacket-1-free-img-1-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"brown-blazer-jacket-1-free-img-1-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"brown-blazer-jacket-1-free-img-1-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:52:\"brown-blazer-jacket-1-free-img-1-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"brown-blazer-jacket-1-free-img-1-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"brown-blazer-jacket-1-free-img-1-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"brown-blazer-jacket-1-free-img-1-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:52:\"brown-blazer-jacket-1-free-img-1-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:52:\"brown-blazer-jacket-1-free-img-1-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"brown-blazer-jacket-1-free-img-1-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(102,48,'_wp_attached_file','2019/08/brown-blazer-jacket-2-free-img-600x600.jpg'),
	(103,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:50:\"2019/08/brown-blazer-jacket-2-free-img-600x600.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"brown-blazer-jacket-2-free-img-600x600-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-2-free-img-600x600-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-2-free-img-600x600-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-2-free-img-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-2-free-img-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:50:\"brown-blazer-jacket-2-free-img-600x600-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-2-free-img-600x600-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-2-free-img-600x600-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(104,49,'_wp_attached_file','2019/08/brown-blazer-jacket-3-free-img-768x768.jpg'),
	(105,49,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:50:\"2019/08/brown-blazer-jacket-3-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"brown-blazer-jacket-3-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-3-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-3-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-3-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-3-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-3-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:50:\"brown-blazer-jacket-3-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-3-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"brown-blazer-jacket-3-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(106,50,'_wp_attached_file','2019/08/brown-men-shoes-1-free-img.jpg'),
	(107,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:38:\"2019/08/brown-men-shoes-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"brown-men-shoes-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"brown-men-shoes-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(108,51,'_wp_attached_file','2019/08/brown-men-shoes-2-free-img.jpg'),
	(109,51,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:38:\"2019/08/brown-men-shoes-2-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"brown-men-shoes-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-2-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-2-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-2-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"brown-men-shoes-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"brown-men-shoes-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(110,52,'_wp_attached_file','2019/08/buddha-bracelet-side-free-img.jpg'),
	(111,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:41:\"2019/08/buddha-bracelet-side-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"buddha-bracelet-side-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"buddha-bracelet-side-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"buddha-bracelet-side-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"buddha-bracelet-side-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"buddha-bracelet-side-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"buddha-bracelet-side-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"buddha-bracelet-side-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"buddha-bracelet-side-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"buddha-bracelet-side-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(112,53,'_wp_attached_file','2019/08/buddha-bracelet-top-free-img.jpg'),
	(113,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:40:\"2019/08/buddha-bracelet-top-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"buddha-bracelet-top-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"buddha-bracelet-top-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"buddha-bracelet-top-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"buddha-bracelet-top-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"buddha-bracelet-top-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"buddha-bracelet-top-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"buddha-bracelet-top-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"buddha-bracelet-top-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"buddha-bracelet-top-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(114,54,'_wp_attached_file','2019/08/clock-3274366_1920-1024x615.jpg'),
	(115,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:615;s:4:\"file\";s:39:\"2019/08/clock-3274366_1920-1024x615.jpg\";s:5:\"sizes\";a:10:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"clock-3274366_1920-1024x615-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"clock-3274366_1920-1024x615-555x333.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"clock-3274366_1920-1024x615-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"clock-3274366_1920-1024x615-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"clock-3274366_1920-1024x615-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"clock-3274366_1920-1024x615-1024x615.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:615;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"clock-3274366_1920-1024x615-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:39:\"clock-3274366_1920-1024x615-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"clock-3274366_1920-1024x615-555x333.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"clock-3274366_1920-1024x615-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(116,55,'_wp_attached_file','2019/08/contact_us_banner1.jpg'),
	(117,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:670;s:4:\"file\";s:30:\"2019/08/contact_us_banner1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"contact_us_banner1-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"contact_us_banner1-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"contact_us_banner1-555x194.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"contact_us_banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"contact_us_banner1-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"contact_us_banner1-768x268.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"contact_us_banner1-1024x357.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:357;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"contact_us_banner1-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"contact_us_banner1-555x194.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"contact_us_banner1-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(118,56,'_wp_attached_file','2019/08/COOL-STORE-Fashion.png'),
	(119,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2019/08/COOL-STORE-Fashion.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"COOL-STORE-Fashion-262x328.png\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"COOL-STORE-Fashion-160x160.png\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"COOL-STORE-Fashion-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"COOL-STORE-Fashion-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"COOL-STORE-Fashion-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"COOL-STORE-Fashion-262x328.png\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"COOL-STORE-Fashion-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"COOL-STORE-Fashion-160x160.png\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(120,57,'_wp_attached_file','2019/08/gray-basic-jeans-1-free-img.jpg'),
	(121,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:39:\"2019/08/gray-basic-jeans-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"gray-basic-jeans-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"gray-basic-jeans-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"gray-basic-jeans-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"gray-basic-jeans-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"gray-basic-jeans-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"gray-basic-jeans-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:39:\"gray-basic-jeans-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"gray-basic-jeans-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"gray-basic-jeans-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(122,58,'_wp_attached_file','2019/08/gray-men-shoes-1-free-img.jpg'),
	(123,58,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:37:\"2019/08/gray-men-shoes-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"gray-men-shoes-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:37:\"gray-men-shoes-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(124,59,'_wp_attached_file','2019/08/gray-men-shoes-2-free-img.jpg'),
	(125,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:37:\"2019/08/gray-men-shoes-2-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"gray-men-shoes-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-2-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-2-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-2-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:37:\"gray-men-shoes-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"gray-men-shoes-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(126,60,'_wp_attached_file','2019/08/green-wind-breaker-1-free-img.jpg'),
	(127,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:41:\"2019/08/green-wind-breaker-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"green-wind-breaker-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"green-wind-breaker-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(128,61,'_wp_attached_file','2019/08/green-wind-breaker-2-free-img.jpg'),
	(129,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:41:\"2019/08/green-wind-breaker-2-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"green-wind-breaker-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-2-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-2-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-2-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"green-wind-breaker-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"green-wind-breaker-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(130,62,'_wp_attached_file','2019/08/hoodie_2_back-768x768.jpg'),
	(131,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:33:\"2019/08/hoodie_2_back-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"hoodie_2_back-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"hoodie_2_back-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"hoodie_2_back-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"hoodie_2_back-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"hoodie_2_back-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"hoodie_2_back-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:33:\"hoodie_2_back-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"hoodie_2_back-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"hoodie_2_back-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(132,63,'_wp_attached_file','2019/08/hoodie_2_front-768x768.jpg'),
	(133,63,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:34:\"2019/08/hoodie_2_front-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"hoodie_2_front-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie_2_front-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"hoodie_2_front-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie_2_front-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"hoodie_2_front-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"hoodie_2_front-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"hoodie_2_front-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"hoodie_2_front-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie_2_front-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(134,64,'_wp_attached_file','2019/08/hoodie_4_back-768x768.jpg'),
	(135,64,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:33:\"2019/08/hoodie_4_back-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"hoodie_4_back-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"hoodie_4_back-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"hoodie_4_back-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"hoodie_4_back-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"hoodie_4_back-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"hoodie_4_back-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:33:\"hoodie_4_back-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"hoodie_4_back-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"hoodie_4_back-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(136,65,'_wp_attached_file','2019/08/hoodie_4_front-768x768.jpg'),
	(137,65,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:34:\"2019/08/hoodie_4_front-768x768.jpg\";s:5:\"sizes\";a:9:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie_4_front-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"hoodie_4_front-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie_4_front-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"hoodie_4_front-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"hoodie_4_front-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"hoodie_4_front-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"hoodie_4_front-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"hoodie_4_front-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie_4_front-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(138,66,'_wp_attached_file','2019/08/hoodie_6_back.jpg'),
	(139,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/08/hoodie_6_back.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_6_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"hoodie_6_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(140,67,'_wp_attached_file','2019/08/hoodie_6_front.jpg'),
	(141,67,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2019/08/hoodie_6_front.jpg\";s:5:\"sizes\";a:9:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_6_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"hoodie_6_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(142,68,'_wp_attached_file','2019/08/lemon-bag-1-free-img.jpg'),
	(143,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:32:\"2019/08/lemon-bag-1-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"lemon-bag-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"lemon-bag-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"lemon-bag-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"lemon-bag-1-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"lemon-bag-1-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"lemon-bag-1-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"lemon-bag-1-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"lemon-bag-1-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"lemon-bag-1-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(144,69,'_wp_attached_file','2019/08/lemon-bag-2-free-img.jpg'),
	(145,69,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:32:\"2019/08/lemon-bag-2-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"lemon-bag-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"lemon-bag-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"lemon-bag-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"lemon-bag-2-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"lemon-bag-2-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"lemon-bag-2-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"lemon-bag-2-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"lemon-bag-2-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"lemon-bag-2-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(146,70,'_wp_attached_file','2019/08/lemon-bag-3-free-img.jpg'),
	(147,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:32:\"2019/08/lemon-bag-3-free-img.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"lemon-bag-3-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"lemon-bag-3-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"lemon-bag-3-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"lemon-bag-3-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"lemon-bag-3-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"lemon-bag-3-free-img-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"lemon-bag-3-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"lemon-bag-3-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"lemon-bag-3-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(148,71,'_wp_attached_file','2019/08/light-brown-clutch-1-free-img-600x600.jpg'),
	(149,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:49:\"2019/08/light-brown-clutch-1-free-img-600x600.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"light-brown-clutch-1-free-img-600x600-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"light-brown-clutch-1-free-img-600x600-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:49:\"light-brown-clutch-1-free-img-600x600-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"light-brown-clutch-1-free-img-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"light-brown-clutch-1-free-img-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:49:\"light-brown-clutch-1-free-img-600x600-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:49:\"light-brown-clutch-1-free-img-600x600-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"light-brown-clutch-1-free-img-600x600-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(150,72,'_wp_attached_file','2019/08/men-fashion-free-img.jpg'),
	(151,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:32:\"2019/08/men-fashion-free-img.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"men-fashion-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"men-fashion-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"men-fashion-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"men-fashion-free-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"men-fashion-free-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"men-fashion-free-img-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"men-fashion-free-img-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"men-fashion-free-img-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(152,73,'_wp_attached_file','2019/08/model-2911330_1920.jpg'),
	(153,73,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:30:\"2019/08/model-2911330_1920.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"model-2911330_1920-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"model-2911330_1920-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"model-2911330_1920-555x371.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:371;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"model-2911330_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"model-2911330_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"model-2911330_1920-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"model-2911330_1920-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"model-2911330_1920-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"model-2911330_1920-555x371.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:371;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"model-2911330_1920-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"13\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"ILCE-7SM2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(154,74,'_wp_attached_file','2019/08/movement-1392753_1920.jpg'),
	(155,74,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:33:\"2019/08/movement-1392753_1920.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"movement-1392753_1920-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"movement-1392753_1920-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"movement-1392753_1920-555x370.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"movement-1392753_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"movement-1392753_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"movement-1392753_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"movement-1392753_1920-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:33:\"movement-1392753_1920-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"movement-1392753_1920-555x370.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"movement-1392753_1920-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(156,75,'_wp_attached_file','2019/08/playstore-free-img-300x90-262x90.png'),
	(157,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:262;s:6:\"height\";i:90;s:4:\"file\";s:44:\"2019/08/playstore-free-img-300x90-262x90.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"playstore-free-img-300x90-262x90-262x90.png\";s:5:\"width\";i:262;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"playstore-free-img-300x90-262x90-160x90.png\";s:5:\"width\";i:160;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"playstore-free-img-300x90-262x90-150x90.png\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"playstore-free-img-300x90-262x90-160x90.png\";s:5:\"width\";i:160;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(158,76,'_wp_attached_file','2019/08/T_3_back.jpg'),
	(159,76,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/08/T_3_back.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_3_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_3_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_3_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_3_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"T_3_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_3_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(160,77,'_wp_attached_file','2019/08/T_3_front.jpg'),
	(161,77,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/08/T_3_front.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_3_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_3_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_3_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_3_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"T_3_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_3_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(162,78,'_wp_attached_file','2019/08/T_4_back.jpg'),
	(163,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/08/T_4_back.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_4_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_4_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_4_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_4_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"T_4_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_4_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(164,79,'_wp_attached_file','2019/08/T_4_front1.jpg'),
	(165,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2019/08/T_4_front1.jpg\";s:5:\"sizes\";a:9:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"T_4_front1-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"T_4_front1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"T_4_front1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"T_4_front1-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"T_4_front1-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"T_4_front1-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(166,80,'_wp_attached_file','2019/08/three-3075752.jpg'),
	(167,80,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:5120;s:6:\"height\";i:3413;s:4:\"file\";s:25:\"2019/08/three-3075752.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"three-3075752-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"three-3075752-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"three-3075752-555x370.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"three-3075752-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"three-3075752-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"three-3075752-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"three-3075752-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"three-3075752-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"three-3075752-555x370.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"three-3075752-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"23\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(168,81,'_wp_attached_file','2019/08/torn-jeans-1-free-img-1-768x768.jpg'),
	(169,81,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:43:\"2019/08/torn-jeans-1-free-img-1-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"torn-jeans-1-free-img-1-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"torn-jeans-1-free-img-1-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"torn-jeans-1-free-img-1-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"torn-jeans-1-free-img-1-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"torn-jeans-1-free-img-1-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"torn-jeans-1-free-img-1-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:43:\"torn-jeans-1-free-img-1-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"torn-jeans-1-free-img-1-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"torn-jeans-1-free-img-1-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(170,82,'_wp_attached_file','2019/08/torn-jeans-1-free-img-1.jpg'),
	(171,82,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:35:\"2019/08/torn-jeans-1-free-img-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"torn-jeans-1-free-img-1-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"torn-jeans-1-free-img-1-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"torn-jeans-1-free-img-1-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"torn-jeans-1-free-img-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"torn-jeans-1-free-img-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"torn-jeans-1-free-img-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:35:\"torn-jeans-1-free-img-1-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"torn-jeans-1-free-img-1-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"torn-jeans-1-free-img-1-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(172,83,'_wp_attached_file','2019/08/torn-jeans-1-free-img-768x768.jpg'),
	(173,83,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:41:\"2019/08/torn-jeans-1-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"torn-jeans-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"torn-jeans-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"torn-jeans-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"torn-jeans-1-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"torn-jeans-1-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"torn-jeans-1-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"torn-jeans-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"torn-jeans-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"torn-jeans-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(174,84,'_wp_attached_file','2019/08/torn-jeans-2-free-img-1-768x768.jpg'),
	(175,84,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:43:\"2019/08/torn-jeans-2-free-img-1-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"torn-jeans-2-free-img-1-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"torn-jeans-2-free-img-1-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"torn-jeans-2-free-img-1-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"torn-jeans-2-free-img-1-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"torn-jeans-2-free-img-1-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"torn-jeans-2-free-img-1-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:43:\"torn-jeans-2-free-img-1-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"torn-jeans-2-free-img-1-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"torn-jeans-2-free-img-1-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(176,85,'_wp_attached_file','2019/08/torn-jeans-3-free-img-768x768.jpg'),
	(177,85,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:41:\"2019/08/torn-jeans-3-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"torn-jeans-3-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"torn-jeans-3-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"torn-jeans-3-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"torn-jeans-3-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"torn-jeans-3-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"torn-jeans-3-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"torn-jeans-3-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"torn-jeans-3-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"torn-jeans-3-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(178,86,'_wp_attached_file','2019/08/white-basic-top-1-free-img-768x768.jpg'),
	(179,86,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:46:\"2019/08/white-basic-top-1-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"white-basic-top-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"white-basic-top-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:46:\"white-basic-top-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"white-basic-top-1-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"white-basic-top-1-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"white-basic-top-1-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:46:\"white-basic-top-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"white-basic-top-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"white-basic-top-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(180,87,'_wp_attached_file','2019/08/white-basic-top-2-free-img-768x768.jpg'),
	(181,87,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:46:\"2019/08/white-basic-top-2-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"white-basic-top-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"white-basic-top-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:46:\"white-basic-top-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"white-basic-top-2-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"white-basic-top-2-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"white-basic-top-2-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:46:\"white-basic-top-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"white-basic-top-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"white-basic-top-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(182,88,'_wp_attached_file','2019/08/white-sleevless-2-free-img-768x768.jpg'),
	(183,88,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:46:\"2019/08/white-sleevless-2-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"white-sleevless-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"white-sleevless-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:46:\"white-sleevless-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"white-sleevless-2-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"white-sleevless-2-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"white-sleevless-2-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:46:\"white-sleevless-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"white-sleevless-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"white-sleevless-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(184,89,'_wp_attached_file','2019/08/white-top-2-free-img-768x768.jpg'),
	(185,89,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:40:\"2019/08/white-top-2-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"white-top-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"white-top-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"white-top-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"white-top-2-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"white-top-2-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"white-top-2-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"white-top-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"white-top-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"white-top-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(186,90,'_wp_attached_file','2019/08/women-fashion-free-img-600x600.jpg'),
	(187,90,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:42:\"2019/08/women-fashion-free-img-600x600.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"women-fashion-free-img-600x600-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"women-fashion-free-img-600x600-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"women-fashion-free-img-600x600-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"women-fashion-free-img-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"women-fashion-free-img-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:42:\"women-fashion-free-img-600x600-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"women-fashion-free-img-600x600-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"women-fashion-free-img-600x600-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(188,91,'_wp_attached_file','2019/08/women-jacket-free-img-600x600.jpg'),
	(189,91,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:41:\"2019/08/women-jacket-free-img-600x600.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"women-jacket-free-img-600x600-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"women-jacket-free-img-600x600-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"women-jacket-free-img-600x600-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"women-jacket-free-img-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"women-jacket-free-img-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"women-jacket-free-img-600x600-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"women-jacket-free-img-600x600-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"women-jacket-free-img-600x600-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(190,92,'_wp_attached_file','2019/08/wrist-watch-3072760_1920.jpg'),
	(191,92,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:36:\"2019/08/wrist-watch-3072760_1920.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"wrist-watch-3072760_1920-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"wrist-watch-3072760_1920-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"wrist-watch-3072760_1920-555x370.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"wrist-watch-3072760_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"wrist-watch-3072760_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"wrist-watch-3072760_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"wrist-watch-3072760_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"wrist-watch-3072760_1920-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"wrist-watch-3072760_1920-555x370.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"wrist-watch-3072760_1920-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"14\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"ILCE-6000\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"55\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"2.5\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(192,93,'_wp_attached_file','2019/08/yellow-basic-top-1-free-img-768x768.jpg'),
	(193,93,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:47:\"2019/08/yellow-basic-top-1-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"yellow-basic-top-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-1-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-1-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-1-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:47:\"yellow-basic-top-1-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-1-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-1-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(194,94,'_wp_attached_file','2019/08/yellow-basic-top-2-free-img-768x768.jpg'),
	(195,94,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:47:\"2019/08/yellow-basic-top-2-free-img-768x768.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"yellow-basic-top-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-2-free-img-768x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-2-free-img-768x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-2-free-img-768x768-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:47:\"yellow-basic-top-2-free-img-768x768-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-2-free-img-768x768-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"yellow-basic-top-2-free-img-768x768-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(196,10,'_thumbnail_id','54'),
	(197,95,'_edit_last','1'),
	(198,95,'_edit_lock','1567174356:1'),
	(199,95,'total_sales','1'),
	(200,95,'_tax_status','taxable'),
	(201,95,'_tax_class',''),
	(202,95,'_manage_stock','yes'),
	(203,95,'_backorders','no'),
	(204,95,'_sold_individually','no'),
	(205,95,'_virtual','no'),
	(206,95,'_downloadable','no'),
	(207,95,'_download_limit','-1'),
	(208,95,'_download_expiry','-1'),
	(209,95,'_stock','99.000000'),
	(210,95,'_stock_status','instock'),
	(211,95,'_wc_average_rating','0'),
	(212,95,'_wc_review_count','0'),
	(213,95,'_product_attributes','a:2:{s:5:\"color\";a:6:{s:4:\"name\";s:5:\"Color\";s:5:\"value\";s:13:\"Black | Green\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"0\";}s:4:\"size\";a:6:{s:4:\"name\";s:4:\"Size\";s:5:\"value\";s:22:\"Large | Medium | Small\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"0\";}}'),
	(214,95,'_product_version','3.7.0'),
	(215,96,'_variation_description',''),
	(216,96,'total_sales','0'),
	(217,96,'_tax_status','taxable'),
	(218,96,'_tax_class','parent'),
	(219,96,'_manage_stock','no'),
	(220,96,'_backorders','no'),
	(221,96,'_sold_individually','no'),
	(222,96,'_virtual','no'),
	(223,96,'_downloadable','no'),
	(224,96,'_download_limit','-1'),
	(225,96,'_download_expiry','-1'),
	(226,96,'_stock',NULL),
	(227,96,'_stock_status','instock'),
	(228,96,'_wc_average_rating','0'),
	(229,96,'_wc_review_count','0'),
	(230,96,'attribute_size','Large'),
	(231,96,'attribute_color','Black'),
	(232,96,'_product_version','3.7.0'),
	(233,97,'_variation_description',''),
	(234,97,'total_sales','0'),
	(235,97,'_tax_status','taxable'),
	(236,97,'_tax_class','parent'),
	(237,97,'_manage_stock','no'),
	(238,97,'_backorders','no'),
	(239,97,'_sold_individually','no'),
	(240,97,'_virtual','no'),
	(241,97,'_downloadable','no'),
	(242,97,'_download_limit','-1'),
	(243,97,'_download_expiry','-1'),
	(244,97,'_stock',NULL),
	(245,97,'_stock_status','instock'),
	(246,97,'_wc_average_rating','0'),
	(247,97,'_wc_review_count','0'),
	(248,97,'attribute_size','Medium'),
	(249,97,'attribute_color','Black'),
	(250,97,'_product_version','3.7.0'),
	(251,98,'_variation_description',''),
	(252,98,'total_sales','0'),
	(253,98,'_tax_status','taxable'),
	(254,98,'_tax_class','parent'),
	(255,98,'_manage_stock','no'),
	(256,98,'_backorders','no'),
	(257,98,'_sold_individually','no'),
	(258,98,'_virtual','no'),
	(259,98,'_downloadable','no'),
	(260,98,'_download_limit','-1'),
	(261,98,'_download_expiry','-1'),
	(262,98,'_stock',NULL),
	(263,98,'_stock_status','instock'),
	(264,98,'_wc_average_rating','0'),
	(265,98,'_wc_review_count','0'),
	(266,98,'attribute_size','Small'),
	(267,98,'attribute_color','Black'),
	(268,98,'_product_version','3.7.0'),
	(269,99,'_variation_description',''),
	(270,99,'total_sales','0'),
	(271,99,'_tax_status','taxable'),
	(272,99,'_tax_class','parent'),
	(273,99,'_manage_stock','no'),
	(274,99,'_backorders','no'),
	(275,99,'_sold_individually','no'),
	(276,99,'_virtual','no'),
	(277,99,'_downloadable','no'),
	(278,99,'_download_limit','-1'),
	(279,99,'_download_expiry','-1'),
	(280,99,'_stock',NULL),
	(281,99,'_stock_status','instock'),
	(282,99,'_wc_average_rating','0'),
	(283,99,'_wc_review_count','0'),
	(284,99,'attribute_size','Large'),
	(285,99,'attribute_color','Green'),
	(286,99,'_product_version','3.7.0'),
	(287,100,'_variation_description',''),
	(288,100,'total_sales','0'),
	(289,100,'_tax_status','taxable'),
	(290,100,'_tax_class','parent'),
	(291,100,'_manage_stock','no'),
	(292,100,'_backorders','no'),
	(293,100,'_sold_individually','no'),
	(294,100,'_virtual','no'),
	(295,100,'_downloadable','no'),
	(296,100,'_download_limit','-1'),
	(297,100,'_download_expiry','-1'),
	(298,100,'_stock',NULL),
	(299,100,'_stock_status','instock'),
	(300,100,'_wc_average_rating','0'),
	(301,100,'_wc_review_count','0'),
	(302,100,'attribute_size','Medium'),
	(303,100,'attribute_color','Green'),
	(304,100,'_product_version','3.7.0'),
	(305,101,'_variation_description',''),
	(306,101,'total_sales','0'),
	(307,101,'_tax_status','taxable'),
	(308,101,'_tax_class','parent'),
	(309,101,'_manage_stock','no'),
	(310,101,'_backorders','no'),
	(311,101,'_sold_individually','no'),
	(312,101,'_virtual','no'),
	(313,101,'_downloadable','no'),
	(314,101,'_download_limit','-1'),
	(315,101,'_download_expiry','-1'),
	(316,101,'_stock',NULL),
	(317,101,'_stock_status','instock'),
	(318,101,'_wc_average_rating','0'),
	(319,101,'_wc_review_count','0'),
	(320,101,'attribute_size','Small'),
	(321,101,'attribute_color','Green'),
	(322,101,'_product_version','3.7.0'),
	(323,96,'_regular_price','9.99'),
	(324,96,'_thumbnail_id','79'),
	(325,96,'_price','9.99'),
	(326,97,'_regular_price','9.99'),
	(327,97,'_thumbnail_id','79'),
	(328,97,'_price','9.99'),
	(329,98,'_regular_price','9.99'),
	(330,98,'_thumbnail_id','79'),
	(331,98,'_price','9.99'),
	(332,99,'_regular_price','9.99'),
	(333,99,'_thumbnail_id','77'),
	(334,99,'_price','9.99'),
	(335,100,'_regular_price','9.99'),
	(336,100,'_thumbnail_id','77'),
	(337,100,'_price','9.99'),
	(338,101,'_regular_price','9.99'),
	(339,101,'_thumbnail_id','77'),
	(340,101,'_price','9.99'),
	(341,95,'_price','9.99'),
	(342,95,'_sku','SKTSHIRT'),
	(343,95,'_weight','3.2'),
	(344,95,'_thumbnail_id','79'),
	(345,102,'_edit_last','1'),
	(346,102,'_edit_lock','1567174367:1'),
	(347,102,'total_sales','0'),
	(348,102,'_tax_status','taxable'),
	(349,102,'_tax_class',''),
	(350,102,'_manage_stock','yes'),
	(351,102,'_backorders','no'),
	(352,102,'_sold_individually','no'),
	(353,102,'_virtual','no'),
	(354,102,'_downloadable','no'),
	(355,102,'_download_limit','-1'),
	(356,102,'_download_expiry','-1'),
	(357,102,'_stock','20'),
	(358,102,'_stock_status','instock'),
	(359,102,'_wc_average_rating','0'),
	(360,102,'_wc_review_count','0'),
	(361,102,'_product_attributes','a:2:{s:5:\"color\";a:6:{s:4:\"name\";s:5:\"Color\";s:5:\"value\";s:10:\"Gray | Red\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"0\";}s:4:\"size\";a:6:{s:4:\"name\";s:4:\"Size\";s:5:\"value\";s:22:\"Large | Medium | Small\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"0\";}}'),
	(362,102,'_product_version','3.7.0'),
	(417,106,'_variation_description',''),
	(418,106,'total_sales','0'),
	(419,106,'_tax_status','taxable'),
	(420,106,'_tax_class','parent'),
	(421,106,'_manage_stock','no'),
	(422,106,'_backorders','no'),
	(423,106,'_sold_individually','no'),
	(424,106,'_virtual','no'),
	(425,106,'_downloadable','no'),
	(426,106,'_download_limit','-1'),
	(427,106,'_download_expiry','-1'),
	(428,106,'_stock',NULL),
	(429,106,'_stock_status','instock'),
	(430,106,'_wc_average_rating','0'),
	(431,106,'_wc_review_count','0'),
	(432,106,'attribute_size','Large'),
	(433,106,'attribute_color','Gray'),
	(434,106,'_product_version','3.7.0'),
	(435,107,'_variation_description',''),
	(436,107,'total_sales','0'),
	(437,107,'_tax_status','taxable'),
	(438,107,'_tax_class','parent'),
	(439,107,'_manage_stock','no'),
	(440,107,'_backorders','no'),
	(441,107,'_sold_individually','no'),
	(442,107,'_virtual','no'),
	(443,107,'_downloadable','no'),
	(444,107,'_download_limit','-1'),
	(445,107,'_download_expiry','-1'),
	(446,107,'_stock',NULL),
	(447,107,'_stock_status','instock'),
	(448,107,'_wc_average_rating','0'),
	(449,107,'_wc_review_count','0'),
	(450,107,'attribute_size','Medium'),
	(451,107,'attribute_color','Gray'),
	(452,107,'_product_version','3.7.0'),
	(453,108,'_variation_description',''),
	(454,108,'total_sales','0'),
	(455,108,'_tax_status','taxable'),
	(456,108,'_tax_class','parent'),
	(457,108,'_manage_stock','no'),
	(458,108,'_backorders','no'),
	(459,108,'_sold_individually','no'),
	(460,108,'_virtual','no'),
	(461,108,'_downloadable','no'),
	(462,108,'_download_limit','-1'),
	(463,108,'_download_expiry','-1'),
	(464,108,'_stock',NULL),
	(465,108,'_stock_status','instock'),
	(466,108,'_wc_average_rating','0'),
	(467,108,'_wc_review_count','0'),
	(468,108,'attribute_size','Small'),
	(469,108,'attribute_color','Gray'),
	(470,108,'_product_version','3.7.0'),
	(471,109,'_variation_description',''),
	(472,109,'total_sales','0'),
	(473,109,'_tax_status','taxable'),
	(474,109,'_tax_class','parent'),
	(475,109,'_manage_stock','no'),
	(476,109,'_backorders','no'),
	(477,109,'_sold_individually','no'),
	(478,109,'_virtual','no'),
	(479,109,'_downloadable','no'),
	(480,109,'_download_limit','-1'),
	(481,109,'_download_expiry','-1'),
	(482,109,'_stock',NULL),
	(483,109,'_stock_status','instock'),
	(484,109,'_wc_average_rating','0'),
	(485,109,'_wc_review_count','0'),
	(486,109,'attribute_size','Large'),
	(487,109,'attribute_color','Red'),
	(488,109,'_product_version','3.7.0'),
	(489,110,'_variation_description',''),
	(490,110,'total_sales','0'),
	(491,110,'_tax_status','taxable'),
	(492,110,'_tax_class','parent'),
	(493,110,'_manage_stock','no'),
	(494,110,'_backorders','no'),
	(495,110,'_sold_individually','no'),
	(496,110,'_virtual','no'),
	(497,110,'_downloadable','no'),
	(498,110,'_download_limit','-1'),
	(499,110,'_download_expiry','-1'),
	(500,110,'_stock',NULL),
	(501,110,'_stock_status','instock'),
	(502,110,'_wc_average_rating','0'),
	(503,110,'_wc_review_count','0'),
	(504,110,'attribute_size','Medium'),
	(505,110,'attribute_color','Red'),
	(506,110,'_product_version','3.7.0'),
	(507,111,'_variation_description',''),
	(508,111,'total_sales','0'),
	(509,111,'_tax_status','taxable'),
	(510,111,'_tax_class','parent'),
	(511,111,'_manage_stock','no'),
	(512,111,'_backorders','no'),
	(513,111,'_sold_individually','no'),
	(514,111,'_virtual','no'),
	(515,111,'_downloadable','no'),
	(516,111,'_download_limit','-1'),
	(517,111,'_download_expiry','-1'),
	(518,111,'_stock',NULL),
	(519,111,'_stock_status','instock'),
	(520,111,'_wc_average_rating','0'),
	(521,111,'_wc_review_count','0'),
	(522,111,'attribute_size','Small'),
	(523,111,'attribute_color','Red'),
	(524,111,'_product_version','3.7.0'),
	(534,106,'_regular_price','9.99'),
	(535,106,'_thumbnail_id','65'),
	(536,106,'_price','9.99'),
	(537,107,'_regular_price','9.99'),
	(538,107,'_thumbnail_id','65'),
	(539,107,'_price','9.99'),
	(540,108,'_regular_price','9.99'),
	(541,108,'_thumbnail_id','65'),
	(542,108,'_price','9.99'),
	(543,109,'_regular_price','9.99'),
	(544,109,'_thumbnail_id','63'),
	(545,109,'_price','9.99'),
	(546,110,'_regular_price','9.99'),
	(547,110,'_thumbnail_id','63'),
	(548,110,'_price','9.99'),
	(549,111,'_regular_price','9.99'),
	(550,111,'_thumbnail_id','63'),
	(551,111,'_price','9.99'),
	(552,102,'_price','9.99'),
	(553,102,'_sku','COOLHOODY'),
	(554,102,'_thumbnail_id','65'),
	(555,112,'_edit_last','1'),
	(556,112,'_edit_lock','1567174379:1'),
	(557,112,'total_sales','0'),
	(558,112,'_tax_status','taxable'),
	(559,112,'_tax_class',''),
	(560,112,'_manage_stock','no'),
	(561,112,'_backorders','no'),
	(562,112,'_sold_individually','no'),
	(563,112,'_virtual','no'),
	(564,112,'_downloadable','no'),
	(565,112,'_download_limit','-1'),
	(566,112,'_download_expiry','-1'),
	(567,112,'_stock',NULL),
	(568,112,'_stock_status','instock'),
	(569,112,'_wc_average_rating','0'),
	(570,112,'_wc_review_count','0'),
	(571,112,'_product_attributes','a:1:{s:4:\"size\";a:6:{s:4:\"name\";s:4:\"Size\";s:5:\"value\";s:22:\"Large | Medium | Small\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"0\";}}'),
	(572,112,'_product_version','3.7.0'),
	(573,113,'_variation_description',''),
	(574,113,'total_sales','0'),
	(575,113,'_tax_status','taxable'),
	(576,113,'_tax_class','parent'),
	(577,113,'_manage_stock','no'),
	(578,113,'_backorders','no'),
	(579,113,'_sold_individually','no'),
	(580,113,'_virtual','no'),
	(581,113,'_downloadable','no'),
	(582,113,'_download_limit','-1'),
	(583,113,'_download_expiry','-1'),
	(584,113,'_stock',NULL),
	(585,113,'_stock_status','instock'),
	(586,113,'_wc_average_rating','0'),
	(587,113,'_wc_review_count','0'),
	(588,113,'attribute_size','Large'),
	(589,113,'_product_version','3.7.0'),
	(590,114,'_variation_description',''),
	(591,114,'total_sales','0'),
	(592,114,'_tax_status','taxable'),
	(593,114,'_tax_class','parent'),
	(594,114,'_manage_stock','no'),
	(595,114,'_backorders','no'),
	(596,114,'_sold_individually','no'),
	(597,114,'_virtual','no'),
	(598,114,'_downloadable','no'),
	(599,114,'_download_limit','-1'),
	(600,114,'_download_expiry','-1'),
	(601,114,'_stock',NULL),
	(602,114,'_stock_status','instock'),
	(603,114,'_wc_average_rating','0'),
	(604,114,'_wc_review_count','0'),
	(605,114,'attribute_size','Medium'),
	(606,114,'_product_version','3.7.0'),
	(607,115,'_variation_description',''),
	(608,115,'total_sales','0'),
	(609,115,'_tax_status','taxable'),
	(610,115,'_tax_class','parent'),
	(611,115,'_manage_stock','no'),
	(612,115,'_backorders','no'),
	(613,115,'_sold_individually','no'),
	(614,115,'_virtual','no'),
	(615,115,'_downloadable','no'),
	(616,115,'_download_limit','-1'),
	(617,115,'_download_expiry','-1'),
	(618,115,'_stock',NULL),
	(619,115,'_stock_status','instock'),
	(620,115,'_wc_average_rating','0'),
	(621,115,'_wc_review_count','0'),
	(622,115,'attribute_size','Small'),
	(623,115,'_product_version','3.7.0'),
	(624,113,'_regular_price','13.99'),
	(625,113,'_thumbnail_id','67'),
	(626,113,'_price','13.99'),
	(627,114,'_regular_price','12.99'),
	(628,114,'_thumbnail_id','67'),
	(629,114,'_price','12.99'),
	(630,115,'_regular_price','9.99'),
	(631,115,'_thumbnail_id','67'),
	(632,115,'_price','9.99'),
	(633,112,'_price','9.99'),
	(634,112,'_price','12.99'),
	(635,112,'_price','13.99'),
	(636,112,'_thumbnail_id','67'),
	(637,112,'_regular_price','9.99'),
	(638,112,'_product_image_gallery','66'),
	(639,116,'_edit_last','1'),
	(640,116,'_edit_lock','1567174339:1'),
	(641,116,'_children','a:2:{i:0;i:102;i:1;i:112;}'),
	(642,116,'_sku','HOODY'),
	(643,116,'total_sales','0'),
	(644,116,'_tax_status','taxable'),
	(645,116,'_tax_class',''),
	(646,116,'_manage_stock','no'),
	(647,116,'_backorders','no'),
	(648,116,'_sold_individually','no'),
	(649,116,'_virtual','no'),
	(650,116,'_downloadable','no'),
	(651,116,'_download_limit','-1'),
	(652,116,'_download_expiry','-1'),
	(653,116,'_stock',NULL),
	(654,116,'_stock_status','instock'),
	(655,116,'_wc_average_rating','0'),
	(656,116,'_wc_review_count','0'),
	(657,116,'_product_version','3.7.0'),
	(658,112,'_sku','WOOHOODY'),
	(659,116,'_thumbnail_id','67'),
	(660,116,'_price','9.99'),
	(661,116,'_price','9.99'),
	(662,116,'_product_image_gallery','67,66,65,64,63,62'),
	(663,112,'_upsell_ids','a:1:{i:0;i:110;}'),
	(664,112,'_crosssell_ids','a:1:{i:0;i:95;}'),
	(665,119,'_edit_last','1'),
	(666,119,'_edit_lock','1567073945:1'),
	(667,119,'discount_type','percent'),
	(668,119,'coupon_amount','50'),
	(669,119,'individual_use','no'),
	(670,119,'exclude_product_ids','95'),
	(671,119,'usage_limit','2'),
	(672,119,'usage_limit_per_user','2'),
	(673,119,'limit_usage_to_x_items','1'),
	(674,119,'usage_count','0'),
	(675,119,'date_expires','1568844000'),
	(676,119,'free_shipping','no'),
	(677,119,'exclude_sale_items','yes'),
	(678,119,'minimum_amount','1'),
	(679,95,'_wp_old_date','2019-08-28'),
	(680,120,'_order_key','wc_order_FTHZqi5LsRIIs'),
	(681,120,'_customer_user','0'),
	(682,120,'_payment_method','cod'),
	(683,120,'_payment_method_title','Per Nachnahme'),
	(684,120,'_customer_ip_address','::'),
	(685,120,'_customer_user_agent','[gelöscht]'),
	(686,120,'_created_via','checkout'),
	(687,120,'_cart_hash','fed149b24fcbcd1c2a0b1c72cdb5592d'),
	(688,120,'_billing_first_name','[gelöscht]'),
	(689,120,'_billing_last_name','[gelöscht]'),
	(690,120,'_billing_address_1','[gelöscht]'),
	(691,120,'_billing_city','[gelöscht]'),
	(692,120,'_billing_postcode','[gelöscht]'),
	(694,120,'_billing_email','deleted@site.invalid'),
	(695,120,'_billing_phone','000000000000'),
	(696,120,'_shipping_first_name','[gelöscht]'),
	(697,120,'_shipping_last_name','[gelöscht]'),
	(698,120,'_shipping_address_1','[gelöscht]'),
	(699,120,'_shipping_city','[gelöscht]'),
	(700,120,'_shipping_postcode','[gelöscht]'),
	(702,120,'_order_currency','EUR'),
	(703,120,'_cart_discount','0'),
	(704,120,'_cart_discount_tax','0'),
	(705,120,'_order_shipping','0'),
	(706,120,'_order_shipping_tax','0'),
	(707,120,'_order_tax','0'),
	(708,120,'_order_total','9.99'),
	(709,120,'_order_version','3.7.0'),
	(710,120,'_prices_include_tax','no'),
	(711,120,'_billing_address_index','[gelöscht] [gelöscht]  [gelöscht]  [gelöscht]  [gelöscht]  deleted@site.invalid 000000000000'),
	(712,120,'_shipping_address_index','[gelöscht] [gelöscht]  [gelöscht]  [gelöscht]  [gelöscht] '),
	(713,120,'is_vat_exempt','no'),
	(714,120,'_download_permissions_granted','yes'),
	(715,120,'_recorded_sales','yes'),
	(716,120,'_recorded_coupon_usage_counts','yes'),
	(717,120,'_order_stock_reduced','yes'),
	(718,120,'_edit_lock','1567173847:1'),
	(719,120,'_edit_last','1'),
	(720,120,'_date_completed','1567173756'),
	(721,120,'_date_paid','1567173756'),
	(722,120,'_paid_date','2019-08-30 16:02:36'),
	(723,120,'_completed_date','2019-08-30 16:02:36'),
	(724,121,'hr_refund_order_id','120'),
	(725,121,'hr_refund_user_details','1'),
	(726,121,'hr_refund_request_as',''),
	(727,121,'hr_refund_request_type','Whole Order'),
	(728,121,'hr_refund_request_date','1567181160'),
	(729,121,'hr_refund_request_total','9.99'),
	(730,121,'hr_refund_user_name','admin'),
	(731,121,'hr_refund_user_email','diddlside@googlemail.com'),
	(732,121,'hr_refund_line_items','a:1:{i:1;i:1;}'),
	(733,121,'hr_refund_line_item_ids','a:1:{i:1;s:1:\"1\";}'),
	(734,121,'hr_refund_current_language','EUR'),
	(735,121,'hr_refund_request_old_status','h-refund-new'),
	(736,121,'hr_refund_staus_modified_date','1567181160'),
	(737,120,'hr_refund_request_already_send','121'),
	(738,116,'_wp_old_date','2019-08-28'),
	(739,10,'_wp_old_date','2019-08-28'),
	(740,122,'_menu_item_type','custom'),
	(741,122,'_menu_item_menu_item_parent','0'),
	(742,122,'_menu_item_object_id','122'),
	(743,122,'_menu_item_object','custom'),
	(744,122,'_menu_item_target',''),
	(745,122,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(746,122,'_menu_item_xfn',''),
	(747,122,'_menu_item_url','http://woocommerce.test:8888/'),
	(748,122,'_menu_item_orphaned','1567174675'),
	(749,123,'_menu_item_type','post_type'),
	(750,123,'_menu_item_menu_item_parent','0'),
	(751,123,'_menu_item_object_id','2'),
	(752,123,'_menu_item_object','page'),
	(753,123,'_menu_item_target',''),
	(754,123,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(755,123,'_menu_item_xfn',''),
	(756,123,'_menu_item_url',''),
	(757,123,'_menu_item_orphaned','1567174675'),
	(758,124,'_menu_item_type','post_type'),
	(759,124,'_menu_item_menu_item_parent','0'),
	(760,124,'_menu_item_object_id','8'),
	(761,124,'_menu_item_object','page'),
	(762,124,'_menu_item_target',''),
	(763,124,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(764,124,'_menu_item_xfn',''),
	(765,124,'_menu_item_url',''),
	(767,125,'_menu_item_type','post_type'),
	(768,125,'_menu_item_menu_item_parent','0'),
	(769,125,'_menu_item_object_id','9'),
	(770,125,'_menu_item_object','page'),
	(771,125,'_menu_item_target',''),
	(772,125,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(773,125,'_menu_item_xfn',''),
	(774,125,'_menu_item_url',''),
	(776,126,'_menu_item_type','post_type'),
	(777,126,'_menu_item_menu_item_parent','0'),
	(778,126,'_menu_item_object_id','6'),
	(779,126,'_menu_item_object','page'),
	(780,126,'_menu_item_target',''),
	(781,126,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(782,126,'_menu_item_xfn',''),
	(783,126,'_menu_item_url',''),
	(785,127,'_menu_item_type','post_type'),
	(786,127,'_menu_item_menu_item_parent','0'),
	(787,127,'_menu_item_object_id','7'),
	(788,127,'_menu_item_object','page'),
	(789,127,'_menu_item_target',''),
	(790,127,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(791,127,'_menu_item_xfn',''),
	(792,127,'_menu_item_url',''),
	(794,128,'_wp_attached_file','2019/08/cropped-COOL-STORE-Fashion.png'),
	(795,128,'_wp_attachment_context','custom-logo'),
	(796,128,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:38:\"2019/08/cropped-COOL-STORE-Fashion.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-COOL-STORE-Fashion-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"cropped-COOL-STORE-Fashion-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:38:\"cropped-COOL-STORE-Fashion-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:38:\"cropped-COOL-STORE-Fashion-360x235.png\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:36:\"cropped-COOL-STORE-Fashion-58x72.png\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"cropped-COOL-STORE-Fashion-262x328.png\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-COOL-STORE-Fashion-160x160.png\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"cropped-COOL-STORE-Fashion-262x328.png\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-COOL-STORE-Fashion-160x160.png\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(797,129,'_wp_attached_file','2019/08/cropped-COOL-STORE-Fashion-1.png'),
	(798,129,'_wp_attachment_context','custom-logo'),
	(799,129,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:217;s:4:\"file\";s:40:\"2019/08/cropped-COOL-STORE-Fashion-1.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-COOL-STORE-Fashion-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-COOL-STORE-Fashion-1-300x130.png\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:40:\"cropped-COOL-STORE-Fashion-1-360x217.png\";s:5:\"width\";i:360;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-COOL-STORE-Fashion-1-500x217.png\";s:5:\"width\";i:500;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:38:\"cropped-COOL-STORE-Fashion-1-58x72.png\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"cropped-COOL-STORE-Fashion-1-262x217.png\";s:5:\"width\";i:262;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-COOL-STORE-Fashion-1-160x160.png\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"cropped-COOL-STORE-Fashion-1-262x217.png\";s:5:\"width\";i:262;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-COOL-STORE-Fashion-1-160x160.png\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(802,131,'_menu_item_type','taxonomy'),
	(803,131,'_menu_item_menu_item_parent','0'),
	(804,131,'_menu_item_object_id','24'),
	(805,131,'_menu_item_object','product_cat'),
	(806,131,'_menu_item_target',''),
	(807,131,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(808,131,'_menu_item_xfn',''),
	(809,131,'_menu_item_url',''),
	(811,132,'_menu_item_type','taxonomy'),
	(812,132,'_menu_item_menu_item_parent','131'),
	(813,132,'_menu_item_object_id','26'),
	(814,132,'_menu_item_object','product_cat'),
	(815,132,'_menu_item_target',''),
	(816,132,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(817,132,'_menu_item_xfn',''),
	(818,132,'_menu_item_url',''),
	(820,133,'_menu_item_type','taxonomy'),
	(821,133,'_menu_item_menu_item_parent','131'),
	(822,133,'_menu_item_object_id','28'),
	(823,133,'_menu_item_object','product_cat'),
	(824,133,'_menu_item_target',''),
	(825,133,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(826,133,'_menu_item_xfn',''),
	(827,133,'_menu_item_url',''),
	(829,134,'_menu_item_type','taxonomy'),
	(830,134,'_menu_item_menu_item_parent','131'),
	(831,134,'_menu_item_object_id','27'),
	(832,134,'_menu_item_object','product_cat'),
	(833,134,'_menu_item_target',''),
	(834,134,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(835,134,'_menu_item_xfn',''),
	(836,134,'_menu_item_url',''),
	(838,135,'_menu_item_type','taxonomy'),
	(839,135,'_menu_item_menu_item_parent','131'),
	(840,135,'_menu_item_object_id','20'),
	(841,135,'_menu_item_object','product_cat'),
	(842,135,'_menu_item_target',''),
	(843,135,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(844,135,'_menu_item_xfn',''),
	(845,135,'_menu_item_url',''),
	(847,136,'_menu_item_type','taxonomy'),
	(848,136,'_menu_item_menu_item_parent','131'),
	(849,136,'_menu_item_object_id','17'),
	(850,136,'_menu_item_object','product_cat'),
	(851,136,'_menu_item_target',''),
	(852,136,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(853,136,'_menu_item_xfn',''),
	(854,136,'_menu_item_url',''),
	(856,137,'_menu_item_type','taxonomy'),
	(857,137,'_menu_item_menu_item_parent','0'),
	(858,137,'_menu_item_object_id','25'),
	(859,137,'_menu_item_object','product_cat'),
	(860,137,'_menu_item_target',''),
	(861,137,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(862,137,'_menu_item_xfn',''),
	(863,137,'_menu_item_url',''),
	(865,138,'_menu_item_type','taxonomy'),
	(866,138,'_menu_item_menu_item_parent','137'),
	(867,138,'_menu_item_object_id','30'),
	(868,138,'_menu_item_object','product_cat'),
	(869,138,'_menu_item_target',''),
	(870,138,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(871,138,'_menu_item_xfn',''),
	(872,138,'_menu_item_url',''),
	(874,139,'_menu_item_type','taxonomy'),
	(875,139,'_menu_item_menu_item_parent','137'),
	(876,139,'_menu_item_object_id','29'),
	(877,139,'_menu_item_object','product_cat'),
	(878,139,'_menu_item_target',''),
	(879,139,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(880,139,'_menu_item_xfn',''),
	(881,139,'_menu_item_url',''),
	(883,140,'_menu_item_type','taxonomy'),
	(884,140,'_menu_item_menu_item_parent','137'),
	(885,140,'_menu_item_object_id','31'),
	(886,140,'_menu_item_object','product_cat'),
	(887,140,'_menu_item_target',''),
	(888,140,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(889,140,'_menu_item_xfn',''),
	(890,140,'_menu_item_url',''),
	(891,142,'_edit_lock','1567236201:1'),
	(892,142,'_wp_page_template','template-contact.php'),
	(893,142,'_edit_last','1'),
	(894,142,'shop_isle_page_description',''),
	(895,144,'_edit_lock','1567235975:1'),
	(896,144,'_wp_page_template','template-about.php'),
	(897,144,'_edit_last','1'),
	(898,144,'shop_isle_page_description',''),
	(899,150,'_menu_item_type','post_type'),
	(900,150,'_menu_item_menu_item_parent','0'),
	(901,150,'_menu_item_object_id','144'),
	(902,150,'_menu_item_object','page'),
	(903,150,'_menu_item_target',''),
	(904,150,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(905,150,'_menu_item_xfn',''),
	(906,150,'_menu_item_url',''),
	(908,151,'_menu_item_type','post_type'),
	(909,151,'_menu_item_menu_item_parent','0'),
	(910,151,'_menu_item_object_id','142'),
	(911,151,'_menu_item_object','page'),
	(912,151,'_menu_item_target',''),
	(913,151,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(914,151,'_menu_item_xfn',''),
	(915,151,'_menu_item_url',''),
	(917,152,'_edit_last','1'),
	(918,152,'_edit_lock','1567237324:1'),
	(919,152,'_mtsnb_data','a:15:{s:10:\"active_tab\";s:10:\"conditions\";s:6:\"button\";s:9:\"no_button\";s:13:\"content_width\";s:3:\"960\";s:12:\"css_position\";s:5:\"fixed\";s:12:\"content_type\";s:6:\"button\";s:16:\"basic_link_style\";s:6:\"button\";s:10:\"basic_text\";s:24:\"Enjoy huge sale 50% off.\";s:15:\"basic_link_text\";s:8:\"SHOP NOW\";s:14:\"basic_link_url\";s:1:\"#\";s:14:\"custom_content\";s:0:\"\";s:8:\"bg_color\";s:7:\"#d35151\";s:9:\"txt_color\";s:7:\"#ffffff\";s:10:\"link_color\";s:7:\"#f4a700\";s:9:\"font_size\";s:2:\"20\";s:10:\"conditions\";a:6:{s:8:\"location\";a:4:{s:5:\"state\";s:6:\"active\";s:4:\"home\";s:1:\"1\";s:5:\"pages\";s:1:\"1\";s:5:\"posts\";s:1:\"1\";}s:11:\"notlocation\";a:1:{s:5:\"state\";s:0:\"\";}s:6:\"google\";a:1:{s:5:\"state\";s:0:\"\";}s:9:\"notgoogle\";a:1:{s:5:\"state\";s:0:\"\";}s:8:\"facebook\";a:1:{s:5:\"state\";s:0:\"\";}s:11:\"notfacebook\";a:1:{s:5:\"state\";s:0:\"\";}}}'),
	(920,129,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:19.620058833434033;s:5:\"bytes\";i:19809;s:11:\"size_before\";i:100963;s:10:\"size_after\";i:81154;s:4:\"time\";d:0.53;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:24.93;s:5:\"bytes\";i:2807;s:11:\"size_before\";i:11258;s:10:\"size_after\";i:8451;s:4:\"time\";d:0.05;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:23.48;s:5:\"bytes\";i:2373;s:11:\"size_before\";i:10108;s:10:\"size_after\";i:7735;s:4:\"time\";d:0.04;}s:25:\"shop_isle_banner_homepage\";O:8:\"stdClass\":5:{s:7:\"percent\";d:24.29;s:5:\"bytes\";i:3565;s:11:\"size_before\";i:14677;s:10:\"size_after\";i:11112;s:4:\"time\";d:0.07;}s:28:\"shop_isle_category_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:23.38;s:5:\"bytes\";i:3538;s:11:\"size_before\";i:15132;s:10:\"size_after\";i:11594;s:4:\"time\";d:0.11;}s:30:\"shop_isle_cart_item_image_size\";O:8:\"stdClass\":5:{s:7:\"percent\";d:26.38;s:5:\"bytes\";i:882;s:11:\"size_before\";i:3344;s:10:\"size_after\";i:2462;s:4:\"time\";d:0.02;}s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:25.7;s:5:\"bytes\";i:3620;s:11:\"size_before\";i:14086;s:10:\"size_after\";i:10466;s:4:\"time\";d:0.07;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:24.27;s:5:\"bytes\";i:3024;s:11:\"size_before\";i:12458;s:10:\"size_after\";i:9434;s:4:\"time\";d:0.04;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:10466;s:10:\"size_after\";i:10466;s:4:\"time\";d:0.08;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:9434;s:10:\"size_after\";i:9434;s:4:\"time\";d:0.05;}}}'),
	(921,128,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:19.77240227357391;s:5:\"bytes\";i:16454;s:11:\"size_before\";i:83217;s:10:\"size_after\";i:66763;s:4:\"time\";d:0.49000000000000005;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:25.85;s:5:\"bytes\";i:1069;s:11:\"size_before\";i:4136;s:10:\"size_after\";i:3067;s:4:\"time\";d:0.02;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:24.14;s:5:\"bytes\";i:2844;s:11:\"size_before\";i:11779;s:10:\"size_after\";i:8935;s:4:\"time\";d:0.05;}s:25:\"shop_isle_blog_image_size\";O:8:\"stdClass\":5:{s:7:\"percent\";d:24.28;s:5:\"bytes\";i:4429;s:11:\"size_before\";i:18238;s:10:\"size_after\";i:13809;s:4:\"time\";d:0.16;}s:25:\"shop_isle_banner_homepage\";O:8:\"stdClass\":5:{s:7:\"percent\";d:21.82;s:5:\"bytes\";i:3432;s:11:\"size_before\";i:15730;s:10:\"size_after\";i:12298;s:4:\"time\";d:0.06;}s:30:\"shop_isle_cart_item_image_size\";O:8:\"stdClass\":5:{s:7:\"percent\";d:26.91;s:5:\"bytes\";i:355;s:11:\"size_before\";i:1319;s:10:\"size_after\";i:964;s:4:\"time\";d:0.01;}s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:23.09;s:5:\"bytes\";i:3145;s:11:\"size_before\";i:13619;s:10:\"size_after\";i:10474;s:4:\"time\";d:0.08;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:25.93;s:5:\"bytes\";i:1180;s:11:\"size_before\";i:4551;s:10:\"size_after\";i:3371;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:10474;s:10:\"size_after\";i:10474;s:4:\"time\";d:0.06;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3371;s:10:\"size_after\";i:3371;s:4:\"time\";d:0.02;}}}'),
	(922,94,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.1364951655021525;s:5:\"bytes\";i:5861;s:11:\"size_before\";i:141690;s:10:\"size_after\";i:135829;s:4:\"time\";d:0.16000000000000003;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.5;s:5:\"bytes\";i:527;s:11:\"size_before\";i:11703;s:10:\"size_after\";i:11176;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.54;s:5:\"bytes\";i:248;s:11:\"size_before\";i:4479;s:10:\"size_after\";i:4231;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.64;s:5:\"bytes\";i:1489;s:11:\"size_before\";i:26424;s:10:\"size_after\";i:24935;s:4:\"time\";d:0.03;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.19;s:5:\"bytes\";i:217;s:11:\"size_before\";i:4178;s:10:\"size_after\";i:3961;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.93;s:5:\"bytes\";i:529;s:11:\"size_before\";i:10722;s:10:\"size_after\";i:10193;s:4:\"time\";d:0.02;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.5;s:5:\"bytes\";i:2851;s:11:\"size_before\";i:43842;s:10:\"size_after\";i:40991;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:11176;s:10:\"size_after\";i:11176;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:24935;s:10:\"size_after\";i:24935;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4231;s:10:\"size_after\";i:4231;s:4:\"time\";d:0.01;}}}'),
	(923,93,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.859470468431772;s:5:\"bytes\";i:5685;s:11:\"size_before\";i:147300;s:10:\"size_after\";i:141615;s:4:\"time\";d:0.16;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.24;s:5:\"bytes\";i:510;s:11:\"size_before\";i:12027;s:10:\"size_after\";i:11517;s:4:\"time\";d:0.02;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.33;s:5:\"bytes\";i:246;s:11:\"size_before\";i:4615;s:10:\"size_after\";i:4369;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.17;s:5:\"bytes\";i:1420;s:11:\"size_before\";i:27484;s:10:\"size_after\";i:26064;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.43;s:5:\"bytes\";i:234;s:11:\"size_before\";i:4308;s:10:\"size_after\";i:4074;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.89;s:5:\"bytes\";i:536;s:11:\"size_before\";i:10952;s:10:\"size_after\";i:10416;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.96;s:5:\"bytes\";i:2739;s:11:\"size_before\";i:45964;s:10:\"size_after\";i:43225;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:11517;s:10:\"size_after\";i:11517;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:26064;s:10:\"size_after\";i:26064;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4369;s:10:\"size_after\";i:4369;s:4:\"time\";d:0.03;}}}'),
	(924,92,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.785776131344461;s:5:\"bytes\";i:10558;s:11:\"size_before\";i:182482;s:10:\"size_after\";i:171924;s:4:\"time\";d:0.18;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.6;s:5:\"bytes\";i:675;s:11:\"size_before\";i:14660;s:10:\"size_after\";i:13985;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.31;s:5:\"bytes\";i:231;s:11:\"size_before\";i:5365;s:10:\"size_after\";i:5134;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.27;s:5:\"bytes\";i:1535;s:11:\"size_before\";i:21126;s:10:\"size_after\";i:19591;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.46;s:5:\"bytes\";i:271;s:11:\"size_before\";i:4966;s:10:\"size_after\";i:4695;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.33;s:5:\"bytes\";i:516;s:11:\"size_before\";i:8156;s:10:\"size_after\";i:7640;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.79;s:5:\"bytes\";i:2719;s:11:\"size_before\";i:34896;s:10:\"size_after\";i:32177;s:4:\"time\";d:0.02;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.44;s:5:\"bytes\";i:4611;s:11:\"size_before\";i:54603;s:10:\"size_after\";i:49992;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:13985;s:10:\"size_after\";i:13985;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:19591;s:10:\"size_after\";i:19591;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:5134;s:10:\"size_after\";i:5134;s:4:\"time\";d:0.03;}}}'),
	(925,91,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:1.577599066087295;s:5:\"bytes\";i:1946;s:11:\"size_before\";i:123352;s:10:\"size_after\";i:121406;s:4:\"time\";d:0.11000000000000001;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.03;s:5:\"bytes\";i:413;s:11:\"size_before\";i:13651;s:10:\"size_after\";i:13238;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.51;s:5:\"bytes\";i:251;s:11:\"size_before\";i:5566;s:10:\"size_after\";i:5315;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:1.99;s:5:\"bytes\";i:664;s:11:\"size_before\";i:33349;s:10:\"size_after\";i:32685;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.82;s:5:\"bytes\";i:256;s:11:\"size_before\";i:5315;s:10:\"size_after\";i:5059;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:2.54;s:5:\"bytes\";i:362;s:11:\"size_before\";i:14233;s:10:\"size_after\";i:13871;s:4:\"time\";d:0.01;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:13238;s:10:\"size_after\";i:13238;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:32685;s:10:\"size_after\";i:32685;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:5315;s:10:\"size_after\";i:5315;s:4:\"time\";d:0.02;}}}'),
	(926,90,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:2.7662710109137256;s:5:\"bytes\";i:2778;s:11:\"size_before\";i:100424;s:10:\"size_after\";i:97646;s:4:\"time\";d:0.1;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.83;s:5:\"bytes\";i:497;s:11:\"size_before\";i:10283;s:10:\"size_after\";i:9786;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.27;s:5:\"bytes\";i:232;s:11:\"size_before\";i:4404;s:10:\"size_after\";i:4172;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.68;s:5:\"bytes\";i:1340;s:11:\"size_before\";i:28660;s:10:\"size_after\";i:27320;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.95;s:5:\"bytes\";i:209;s:11:\"size_before\";i:4218;s:10:\"size_after\";i:4009;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.32;s:5:\"bytes\";i:500;s:11:\"size_before\";i:11581;s:10:\"size_after\";i:11081;s:4:\"time\";d:0.01;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:9786;s:10:\"size_after\";i:9786;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:27320;s:10:\"size_after\";i:27320;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4172;s:10:\"size_after\";i:4172;s:4:\"time\";d:0.01;}}}'),
	(927,89,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.1687153005067032;s:5:\"bytes\";i:5228;s:11:\"size_before\";i:164988;s:10:\"size_after\";i:159760;s:4:\"time\";d:0.17;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:4;s:5:\"bytes\";i:505;s:11:\"size_before\";i:12628;s:10:\"size_after\";i:12123;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.88;s:5:\"bytes\";i:233;s:11:\"size_before\";i:4775;s:10:\"size_after\";i:4542;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.48;s:5:\"bytes\";i:1386;s:11:\"size_before\";i:30914;s:10:\"size_after\";i:29528;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.2;s:5:\"bytes\";i:232;s:11:\"size_before\";i:4463;s:10:\"size_after\";i:4231;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.22;s:5:\"bytes\";i:499;s:11:\"size_before\";i:11837;s:10:\"size_after\";i:11338;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.38;s:5:\"bytes\";i:2373;s:11:\"size_before\";i:54178;s:10:\"size_after\";i:51805;s:4:\"time\";d:0.04;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:12123;s:10:\"size_after\";i:12123;s:4:\"time\";d:0.04;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:29528;s:10:\"size_after\";i:29528;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4542;s:10:\"size_after\";i:4542;s:4:\"time\";d:0.01;}}}'),
	(928,88,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.027364045722203;s:5:\"bytes\";i:4807;s:11:\"size_before\";i:158785;s:10:\"size_after\";i:153978;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.11;s:5:\"bytes\";i:521;s:11:\"size_before\";i:12685;s:10:\"size_after\";i:12164;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.22;s:5:\"bytes\";i:200;s:11:\"size_before\";i:4737;s:10:\"size_after\";i:4537;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.21;s:5:\"bytes\";i:1252;s:11:\"size_before\";i:29744;s:10:\"size_after\";i:28492;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.97;s:5:\"bytes\";i:177;s:11:\"size_before\";i:4459;s:10:\"size_after\";i:4282;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.62;s:5:\"bytes\";i:427;s:11:\"size_before\";i:11805;s:10:\"size_after\";i:11378;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.45;s:5:\"bytes\";i:2230;s:11:\"size_before\";i:50162;s:10:\"size_after\";i:47932;s:4:\"time\";d:0.04;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:12164;s:10:\"size_after\";i:12164;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:28492;s:10:\"size_after\";i:28492;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4537;s:10:\"size_after\";i:4537;s:4:\"time\";d:0.01;}}}'),
	(929,87,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.637531880855751;s:5:\"bytes\";i:5548;s:11:\"size_before\";i:152521;s:10:\"size_after\";i:146973;s:4:\"time\";d:0.13;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.27;s:5:\"bytes\";i:525;s:11:\"size_before\";i:12295;s:10:\"size_after\";i:11770;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.43;s:5:\"bytes\";i:255;s:11:\"size_before\";i:4693;s:10:\"size_after\";i:4438;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.02;s:5:\"bytes\";i:1425;s:11:\"size_before\";i:28395;s:10:\"size_after\";i:26970;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.61;s:5:\"bytes\";i:250;s:11:\"size_before\";i:4460;s:10:\"size_after\";i:4210;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.63;s:5:\"bytes\";i:525;s:11:\"size_before\";i:11336;s:10:\"size_after\";i:10811;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.33;s:5:\"bytes\";i:2568;s:11:\"size_before\";i:48164;s:10:\"size_after\";i:45596;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:11770;s:10:\"size_after\";i:11770;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:26970;s:10:\"size_after\";i:26970;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4438;s:10:\"size_after\";i:4438;s:4:\"time\";d:0.01;}}}'),
	(930,86,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.778030000920274;s:5:\"bytes\";i:6158;s:11:\"size_before\";i:162995;s:10:\"size_after\";i:156837;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.62;s:5:\"bytes\";i:603;s:11:\"size_before\";i:13050;s:10:\"size_after\";i:12447;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.33;s:5:\"bytes\";i:255;s:11:\"size_before\";i:4785;s:10:\"size_after\";i:4530;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.12;s:5:\"bytes\";i:1565;s:11:\"size_before\";i:30579;s:10:\"size_after\";i:29014;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.35;s:5:\"bytes\";i:241;s:11:\"size_before\";i:4506;s:10:\"size_after\";i:4265;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.97;s:5:\"bytes\";i:597;s:11:\"size_before\";i:12015;s:10:\"size_after\";i:11418;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.56;s:5:\"bytes\";i:2897;s:11:\"size_before\";i:52069;s:10:\"size_after\";i:49172;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:12447;s:10:\"size_after\";i:12447;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:29014;s:10:\"size_after\";i:29014;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4530;s:10:\"size_after\";i:4530;s:4:\"time\";d:0.01;}}}'),
	(931,85,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.788991450662489;s:5:\"bytes\";i:5624;s:11:\"size_before\";i:117436;s:10:\"size_after\";i:111812;s:4:\"time\";d:0.23;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.06;s:5:\"bytes\";i:388;s:11:\"size_before\";i:9555;s:10:\"size_after\";i:9167;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.78;s:5:\"bytes\";i:180;s:11:\"size_before\";i:3764;s:10:\"size_after\";i:3584;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.92;s:5:\"bytes\";i:1514;s:11:\"size_before\";i:21888;s:10:\"size_after\";i:20374;s:4:\"time\";d:0.13;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.12;s:5:\"bytes\";i:181;s:11:\"size_before\";i:3536;s:10:\"size_after\";i:3355;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.82;s:5:\"bytes\";i:423;s:11:\"size_before\";i:8784;s:10:\"size_after\";i:8361;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.99;s:5:\"bytes\";i:2938;s:11:\"size_before\";i:36784;s:10:\"size_after\";i:33846;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:9167;s:10:\"size_after\";i:9167;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:20374;s:10:\"size_after\";i:20374;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3584;s:10:\"size_after\";i:3584;s:4:\"time\";d:0.01;}}}'),
	(932,84,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.746661718200305;s:5:\"bytes\";i:6139;s:11:\"size_before\";i:129333;s:10:\"size_after\";i:123194;s:4:\"time\";d:0.15000000000000002;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.64;s:5:\"bytes\";i:487;s:11:\"size_before\";i:10498;s:10:\"size_after\";i:10011;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.54;s:5:\"bytes\";i:225;s:11:\"size_before\";i:4059;s:10:\"size_after\";i:3834;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.57;s:5:\"bytes\";i:1579;s:11:\"size_before\";i:24043;s:10:\"size_after\";i:22464;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.86;s:5:\"bytes\";i:226;s:11:\"size_before\";i:3856;s:10:\"size_after\";i:3630;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.41;s:5:\"bytes\";i:524;s:11:\"size_before\";i:9678;s:10:\"size_after\";i:9154;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.58;s:5:\"bytes\";i:3098;s:11:\"size_before\";i:40890;s:10:\"size_after\";i:37792;s:4:\"time\";d:0.05;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:10011;s:10:\"size_after\";i:10011;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:22464;s:10:\"size_after\";i:22464;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3834;s:10:\"size_after\";i:3834;s:4:\"time\";d:0.01;}}}'),
	(933,83,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:2.4555041438236076;s:5:\"bytes\";i:5742;s:11:\"size_before\";i:233842;s:10:\"size_after\";i:228100;s:4:\"time\";d:0.15;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.44;s:5:\"bytes\";i:768;s:11:\"size_before\";i:17296;s:10:\"size_after\";i:16528;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.6;s:5:\"bytes\";i:360;s:11:\"size_before\";i:6432;s:10:\"size_after\";i:6072;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:2.98;s:5:\"bytes\";i:1323;s:11:\"size_before\";i:44331;s:10:\"size_after\";i:43008;s:4:\"time\";d:0.03;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.88;s:5:\"bytes\";i:353;s:11:\"size_before\";i:6005;s:10:\"size_after\";i:5652;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.99;s:5:\"bytes\";i:689;s:11:\"size_before\";i:17278;s:10:\"size_after\";i:16589;s:4:\"time\";d:0.02;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:2.92;s:5:\"bytes\";i:2249;s:11:\"size_before\";i:76892;s:10:\"size_after\";i:74643;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:16528;s:10:\"size_after\";i:16528;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:43008;s:10:\"size_after\";i:43008;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:6072;s:10:\"size_after\";i:6072;s:4:\"time\";d:0.01;}}}'),
	(934,82,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.263634343650474;s:5:\"bytes\";i:6396;s:11:\"size_before\";i:121513;s:10:\"size_after\";i:115117;s:4:\"time\";d:0.13;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.06;s:5:\"bytes\";i:497;s:11:\"size_before\";i:9828;s:10:\"size_after\";i:9331;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.49;s:5:\"bytes\";i:214;s:11:\"size_before\";i:3895;s:10:\"size_after\";i:3681;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.68;s:5:\"bytes\";i:1764;s:11:\"size_before\";i:22974;s:10:\"size_after\";i:21210;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.49;s:5:\"bytes\";i:234;s:11:\"size_before\";i:3606;s:10:\"size_after\";i:3372;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.77;s:5:\"bytes\";i:520;s:11:\"size_before\";i:9005;s:10:\"size_after\";i:8485;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.34;s:5:\"bytes\";i:3167;s:11:\"size_before\";i:37983;s:10:\"size_after\";i:34816;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:9331;s:10:\"size_after\";i:9331;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:21210;s:10:\"size_after\";i:21210;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3681;s:10:\"size_after\";i:3681;s:4:\"time\";d:0.01;}}}'),
	(935,81,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.147339586619076;s:5:\"bytes\";i:6201;s:11:\"size_before\";i:120470;s:10:\"size_after\";i:114269;s:4:\"time\";d:0.15;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.17;s:5:\"bytes\";i:504;s:11:\"size_before\";i:9755;s:10:\"size_after\";i:9251;s:4:\"time\";d:0.02;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.55;s:5:\"bytes\";i:217;s:11:\"size_before\";i:3913;s:10:\"size_after\";i:3696;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.14;s:5:\"bytes\";i:1604;s:11:\"size_before\";i:22475;s:10:\"size_after\";i:20871;s:4:\"time\";d:0.03;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.46;s:5:\"bytes\";i:233;s:11:\"size_before\";i:3605;s:10:\"size_after\";i:3372;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.52;s:5:\"bytes\";i:497;s:11:\"size_before\";i:8999;s:10:\"size_after\";i:8502;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.3;s:5:\"bytes\";i:3146;s:11:\"size_before\";i:37905;s:10:\"size_after\";i:34759;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:9251;s:10:\"size_after\";i:9251;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:20871;s:10:\"size_after\";i:20871;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3696;s:10:\"size_after\";i:3696;s:4:\"time\";d:0.01;}}}'),
	(936,80,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.916544978566245;s:5:\"bytes\";i:13330;s:11:\"size_before\";i:340351;s:10:\"size_after\";i:327021;s:4:\"time\";d:0.21;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.09;s:5:\"bytes\";i:973;s:11:\"size_before\";i:19119;s:10:\"size_after\";i:18146;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.53;s:5:\"bytes\";i:472;s:11:\"size_before\";i:7233;s:10:\"size_after\";i:6761;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.34;s:5:\"bytes\";i:1757;s:11:\"size_before\";i:40487;s:10:\"size_after\";i:38730;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.64;s:5:\"bytes\";i:451;s:11:\"size_before\";i:6792;s:10:\"size_after\";i:6341;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.92;s:5:\"bytes\";i:682;s:11:\"size_before\";i:13855;s:10:\"size_after\";i:13173;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.67;s:5:\"bytes\";i:3296;s:11:\"size_before\";i:70578;s:10:\"size_after\";i:67282;s:4:\"time\";d:0.03;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.8;s:5:\"bytes\";i:5699;s:11:\"size_before\";i:118650;s:10:\"size_after\";i:112951;s:4:\"time\";d:0.04;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:18146;s:10:\"size_after\";i:18146;s:4:\"time\";d:0.05;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:38730;s:10:\"size_after\";i:38730;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:6761;s:10:\"size_after\";i:6761;s:4:\"time\";d:0.01;}}}'),
	(937,79,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:9.132916277369297;s:5:\"bytes\";i:8993;s:11:\"size_before\";i:98468;s:10:\"size_after\";i:89475;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.09;s:5:\"bytes\";i:307;s:11:\"size_before\";i:3379;s:10:\"size_after\";i:3072;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:12.57;s:5:\"bytes\";i:2330;s:11:\"size_before\";i:18543;s:10:\"size_after\";i:16213;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:10.22;s:5:\"bytes\";i:323;s:11:\"size_before\";i:3162;s:10:\"size_after\";i:2839;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:10.99;s:5:\"bytes\";i:822;s:11:\"size_before\";i:7481;s:10:\"size_after\";i:6659;s:4:\"time\";d:0.02;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:14.52;s:5:\"bytes\";i:4495;s:11:\"size_before\";i:30960;s:10:\"size_after\";i:26465;s:4:\"time\";d:0.02;}s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.75;s:5:\"bytes\";i:716;s:11:\"size_before\";i:8187;s:10:\"size_after\";i:7471;s:4:\"time\";d:0.01;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:7471;s:10:\"size_after\";i:7471;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:16213;s:10:\"size_after\";i:16213;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3072;s:10:\"size_after\";i:3072;s:4:\"time\";d:0.01;}}}'),
	(938,78,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:10.758573729490486;s:5:\"bytes\";i:8216;s:11:\"size_before\";i:76367;s:10:\"size_after\";i:68151;s:4:\"time\";d:0.10999999999999999;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.34;s:5:\"bytes\";i:607;s:11:\"size_before\";i:6500;s:10:\"size_after\";i:5893;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.98;s:5:\"bytes\";i:285;s:11:\"size_before\";i:2857;s:10:\"size_after\";i:2572;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:15.18;s:5:\"bytes\";i:2146;s:11:\"size_before\";i:14138;s:10:\"size_after\";i:11992;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.89;s:5:\"bytes\";i:270;s:11:\"size_before\";i:2731;s:10:\"size_after\";i:2461;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:11.5;s:5:\"bytes\";i:695;s:11:\"size_before\";i:6042;s:10:\"size_after\";i:5347;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:17.82;s:5:\"bytes\";i:4213;s:11:\"size_before\";i:23642;s:10:\"size_after\";i:19429;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:5893;s:10:\"size_after\";i:5893;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:11992;s:10:\"size_after\";i:11992;s:4:\"time\";d:0.01;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:2572;s:10:\"size_after\";i:2572;s:4:\"time\";d:0.01;}}}'),
	(939,77,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:7.287097451064637;s:5:\"bytes\";i:7293;s:11:\"size_before\";i:100081;s:10:\"size_after\";i:92788;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.27;s:5:\"bytes\";i:514;s:11:\"size_before\";i:8203;s:10:\"size_after\";i:7689;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.46;s:5:\"bytes\";i:215;s:11:\"size_before\";i:3326;s:10:\"size_after\";i:3111;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:10.32;s:5:\"bytes\";i:1939;s:11:\"size_before\";i:18781;s:10:\"size_after\";i:16842;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.91;s:5:\"bytes\";i:214;s:11:\"size_before\";i:3099;s:10:\"size_after\";i:2885;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.83;s:5:\"bytes\";i:582;s:11:\"size_before\";i:7431;s:10:\"size_after\";i:6849;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:12.12;s:5:\"bytes\";i:3829;s:11:\"size_before\";i:31599;s:10:\"size_after\";i:27770;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:7689;s:10:\"size_after\";i:7689;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:16842;s:10:\"size_after\";i:16842;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3111;s:10:\"size_after\";i:3111;s:4:\"time\";d:0.01;}}}'),
	(940,76,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:7.249890055669374;s:5:\"bytes\";i:6759;s:11:\"size_before\";i:93229;s:10:\"size_after\";i:86470;s:4:\"time\";d:0.15000000000000002;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.3;s:5:\"bytes\";i:406;s:11:\"size_before\";i:7664;s:10:\"size_after\";i:7258;s:4:\"time\";d:0.02;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.74;s:5:\"bytes\";i:182;s:11:\"size_before\";i:3168;s:10:\"size_after\";i:2986;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:10.2;s:5:\"bytes\";i:1765;s:11:\"size_before\";i:17297;s:10:\"size_after\";i:15532;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.76;s:5:\"bytes\";i:203;s:11:\"size_before\";i:3002;s:10:\"size_after\";i:2799;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.2;s:5:\"bytes\";i:504;s:11:\"size_before\";i:7001;s:10:\"size_after\";i:6497;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:12.62;s:5:\"bytes\";i:3699;s:11:\"size_before\";i:29321;s:10:\"size_after\";i:25622;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:7258;s:10:\"size_after\";i:7258;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:15532;s:10:\"size_after\";i:15532;s:4:\"time\";d:0.04;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:2986;s:10:\"size_after\";i:2986;s:4:\"time\";d:0.01;}}}'),
	(941,75,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:28.771961601159212;s:5:\"bytes\";i:9531;s:11:\"size_before\";i:33126;s:10:\"size_after\";i:23595;s:4:\"time\";d:0.11;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:30.86;s:5:\"bytes\";i:3919;s:11:\"size_before\";i:12701;s:10:\"size_after\";i:8782;s:4:\"time\";d:0.04;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:35.67;s:5:\"bytes\";i:2794;s:11:\"size_before\";i:7832;s:10:\"size_after\";i:5038;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:37.3;s:5:\"bytes\";i:2818;s:11:\"size_before\";i:7555;s:10:\"size_after\";i:4737;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:5038;s:10:\"size_after\";i:5038;s:4:\"time\";d:0.03;}}}'),
	(942,74,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.6441402003391006;s:5:\"bytes\";i:13777;s:11:\"size_before\";i:378059;s:10:\"size_after\";i:364282;s:4:\"time\";d:0.2;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.65;s:5:\"bytes\";i:998;s:11:\"size_before\";i:21481;s:10:\"size_after\";i:20483;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.03;s:5:\"bytes\";i:498;s:11:\"size_before\";i:8264;s:10:\"size_after\";i:7766;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.55;s:5:\"bytes\";i:2104;s:11:\"size_before\";i:46285;s:10:\"size_after\";i:44181;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.11;s:5:\"bytes\";i:474;s:11:\"size_before\";i:7753;s:10:\"size_after\";i:7279;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.29;s:5:\"bytes\";i:905;s:11:\"size_before\";i:17119;s:10:\"size_after\";i:16214;s:4:\"time\";d:0.02;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.37;s:5:\"bytes\";i:3397;s:11:\"size_before\";i:77703;s:10:\"size_after\";i:74306;s:4:\"time\";d:0.03;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.25;s:5:\"bytes\";i:5401;s:11:\"size_before\";i:127024;s:10:\"size_after\";i:121623;s:4:\"time\";d:0.04;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:20483;s:10:\"size_after\";i:20483;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:44181;s:10:\"size_after\";i:44181;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:7766;s:10:\"size_after\";i:7766;s:4:\"time\";d:0.01;}}}'),
	(943,73,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.983298970404793;s:5:\"bytes\";i:6163;s:11:\"size_before\";i:154721;s:10:\"size_after\";i:148558;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.77;s:5:\"bytes\";i:397;s:11:\"size_before\";i:10531;s:10:\"size_after\";i:10134;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.51;s:5:\"bytes\";i:214;s:11:\"size_before\";i:4743;s:10:\"size_after\";i:4529;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.1;s:5:\"bytes\";i:748;s:11:\"size_before\";i:18260;s:10:\"size_after\";i:17512;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.79;s:5:\"bytes\";i:216;s:11:\"size_before\";i:4510;s:10:\"size_after\";i:4294;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.07;s:5:\"bytes\";i:316;s:11:\"size_before\";i:7757;s:10:\"size_after\";i:7441;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.83;s:5:\"bytes\";i:1437;s:11:\"size_before\";i:29769;s:10:\"size_after\";i:28332;s:4:\"time\";d:0.03;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.03;s:5:\"bytes\";i:2835;s:11:\"size_before\";i:46976;s:10:\"size_after\";i:44141;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:10134;s:10:\"size_after\";i:10134;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:17512;s:10:\"size_after\";i:17512;s:4:\"time\";d:0.01;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4529;s:10:\"size_after\";i:4529;s:4:\"time\";d:0.01;}}}');

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(944,72,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:2.756107283184329;s:5:\"bytes\";i:3388;s:11:\"size_before\";i:122927;s:10:\"size_after\";i:119539;s:4:\"time\";d:0.13;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.33;s:5:\"bytes\";i:528;s:11:\"size_before\";i:12197;s:10:\"size_after\";i:11669;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.68;s:5:\"bytes\";i:238;s:11:\"size_before\";i:5082;s:10:\"size_after\";i:4844;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.81;s:5:\"bytes\";i:1738;s:11:\"size_before\";i:36147;s:10:\"size_after\";i:34409;s:4:\"time\";d:0.03;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.19;s:5:\"bytes\";i:258;s:11:\"size_before\";i:4973;s:10:\"size_after\";i:4715;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.6;s:5:\"bytes\";i:626;s:11:\"size_before\";i:13606;s:10:\"size_after\";i:12980;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:11669;s:10:\"size_after\";i:11669;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:34409;s:10:\"size_after\";i:34409;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4844;s:10:\"size_after\";i:4844;s:4:\"time\";d:0.01;}}}'),
	(945,71,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.7621284790795233;s:5:\"bytes\";i:3067;s:11:\"size_before\";i:81523;s:10:\"size_after\";i:78456;s:4:\"time\";d:0.11;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.1;s:5:\"bytes\";i:443;s:11:\"size_before\";i:8684;s:10:\"size_after\";i:8241;s:4:\"time\";d:0.02;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.12;s:5:\"bytes\";i:105;s:11:\"size_before\";i:3369;s:10:\"size_after\";i:3264;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.17;s:5:\"bytes\";i:1977;s:11:\"size_before\";i:24185;s:10:\"size_after\";i:22208;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.42;s:5:\"bytes\";i:107;s:11:\"size_before\";i:3130;s:10:\"size_after\";i:3023;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.15;s:5:\"bytes\";i:435;s:11:\"size_before\";i:8442;s:10:\"size_after\";i:8007;s:4:\"time\";d:0.01;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:8241;s:10:\"size_after\";i:8241;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:22208;s:10:\"size_after\";i:22208;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3264;s:10:\"size_after\";i:3264;s:4:\"time\";d:0.01;}}}'),
	(946,70,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.095613023420866;s:5:\"bytes\";i:5583;s:11:\"size_before\";i:180352;s:10:\"size_after\";i:174769;s:4:\"time\";d:0.16;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.51;s:5:\"bytes\";i:629;s:11:\"size_before\";i:13933;s:10:\"size_after\";i:13304;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.24;s:5:\"bytes\";i:219;s:11:\"size_before\";i:5166;s:10:\"size_after\";i:4947;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.22;s:5:\"bytes\";i:1457;s:11:\"size_before\";i:34490;s:10:\"size_after\";i:33033;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.48;s:5:\"bytes\";i:217;s:11:\"size_before\";i:4848;s:10:\"size_after\";i:4631;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.22;s:5:\"bytes\";i:549;s:11:\"size_before\";i:13008;s:10:\"size_after\";i:12459;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.36;s:5:\"bytes\";i:2512;s:11:\"size_before\";i:57623;s:10:\"size_after\";i:55111;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:13304;s:10:\"size_after\";i:13304;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:33033;s:10:\"size_after\";i:33033;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4947;s:10:\"size_after\";i:4947;s:4:\"time\";d:0.02;}}}'),
	(947,69,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.017501508750754;s:5:\"bytes\";i:6400;s:11:\"size_before\";i:212096;s:10:\"size_after\";i:205696;s:4:\"time\";d:0.16;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.16;s:5:\"bytes\";i:861;s:11:\"size_before\";i:16688;s:10:\"size_after\";i:15827;s:4:\"time\";d:0.03;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.04;s:5:\"bytes\";i:302;s:11:\"size_before\";i:5995;s:10:\"size_after\";i:5693;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.04;s:5:\"bytes\";i:1643;s:11:\"size_before\";i:40708;s:10:\"size_after\";i:39065;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.06;s:5:\"bytes\";i:282;s:11:\"size_before\";i:5575;s:10:\"size_after\";i:5293;s:4:\"time\";d:0.02;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.13;s:5:\"bytes\";i:794;s:11:\"size_before\";i:15470;s:10:\"size_after\";i:14676;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.75;s:5:\"bytes\";i:2518;s:11:\"size_before\";i:67075;s:10:\"size_after\";i:64557;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:15827;s:10:\"size_after\";i:15827;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:39065;s:10:\"size_after\";i:39065;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:5693;s:10:\"size_after\";i:5693;s:4:\"time\";d:0.01;}}}'),
	(948,68,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.133292783360875;s:5:\"bytes\";i:5821;s:11:\"size_before\";i:185779;s:10:\"size_after\";i:179958;s:4:\"time\";d:0.17;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.99;s:5:\"bytes\";i:709;s:11:\"size_before\";i:14213;s:10:\"size_after\";i:13504;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.29;s:5:\"bytes\";i:214;s:11:\"size_before\";i:4983;s:10:\"size_after\";i:4769;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.53;s:5:\"bytes\";i:1634;s:11:\"size_before\";i:36095;s:10:\"size_after\";i:34461;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.71;s:5:\"bytes\";i:171;s:11:\"size_before\";i:4609;s:10:\"size_after\";i:4438;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.6;s:5:\"bytes\";i:605;s:11:\"size_before\";i:13165;s:10:\"size_after\";i:12560;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.15;s:5:\"bytes\";i:2488;s:11:\"size_before\";i:59980;s:10:\"size_after\";i:57492;s:4:\"time\";d:0.04;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:13504;s:10:\"size_after\";i:13504;s:4:\"time\";d:0.03;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:34461;s:10:\"size_after\";i:34461;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4769;s:10:\"size_after\";i:4769;s:4:\"time\";d:0.01;}}}'),
	(949,67,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:7.823936197062238;s:5:\"bytes\";i:7750;s:11:\"size_before\";i:99055;s:10:\"size_after\";i:91305;s:4:\"time\";d:0.12;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:8;s:5:\"bytes\";i:277;s:11:\"size_before\";i:3463;s:10:\"size_after\";i:3186;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:10.96;s:5:\"bytes\";i:2021;s:11:\"size_before\";i:18433;s:10:\"size_after\";i:16412;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:8;s:5:\"bytes\";i:259;s:11:\"size_before\";i:3238;s:10:\"size_after\";i:2979;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.88;s:5:\"bytes\";i:683;s:11:\"size_before\";i:7690;s:10:\"size_after\";i:7007;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";i:13;s:5:\"bytes\";i:3960;s:11:\"size_before\";i:30453;s:10:\"size_after\";i:26493;s:4:\"time\";d:0.02;}s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.58;s:5:\"bytes\";i:550;s:11:\"size_before\";i:8365;s:10:\"size_after\";i:7815;s:4:\"time\";d:0.01;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:7815;s:10:\"size_after\";i:7815;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:16412;s:10:\"size_after\";i:16412;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3186;s:10:\"size_after\";i:3186;s:4:\"time\";d:0.01;}}}'),
	(950,66,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:9.217226829623163;s:5:\"bytes\";i:7602;s:11:\"size_before\";i:82476;s:10:\"size_after\";i:74874;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.65;s:5:\"bytes\";i:523;s:11:\"size_before\";i:6839;s:10:\"size_after\";i:6316;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.83;s:5:\"bytes\";i:230;s:11:\"size_before\";i:2939;s:10:\"size_after\";i:2709;s:4:\"time\";d:0.02;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:13.33;s:5:\"bytes\";i:2064;s:11:\"size_before\";i:15484;s:10:\"size_after\";i:13420;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.43;s:5:\"bytes\";i:232;s:11:\"size_before\";i:2753;s:10:\"size_after\";i:2521;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.69;s:5:\"bytes\";i:617;s:11:\"size_before\";i:6370;s:10:\"size_after\";i:5753;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:15.35;s:5:\"bytes\";i:3936;s:11:\"size_before\";i:25646;s:10:\"size_after\";i:21710;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:6316;s:10:\"size_after\";i:6316;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:13420;s:10:\"size_after\";i:13420;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:2709;s:10:\"size_after\";i:2709;s:4:\"time\";d:0.01;}}}'),
	(951,65,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:8.494527936325078;s:5:\"bytes\";i:8111;s:11:\"size_before\";i:95485;s:10:\"size_after\";i:87374;s:4:\"time\";d:0.12;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.17;s:5:\"bytes\";i:258;s:11:\"size_before\";i:3157;s:10:\"size_after\";i:2899;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:11.78;s:5:\"bytes\";i:2099;s:11:\"size_before\";i:17825;s:10:\"size_after\";i:15726;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.32;s:5:\"bytes\";i:282;s:11:\"size_before\";i:3026;s:10:\"size_after\";i:2744;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:10.22;s:5:\"bytes\";i:749;s:11:\"size_before\";i:7328;s:10:\"size_after\";i:6579;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:13.5;s:5:\"bytes\";i:4070;s:11:\"size_before\";i:30147;s:10:\"size_after\";i:26077;s:4:\"time\";d:0.02;}s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.15;s:5:\"bytes\";i:653;s:11:\"size_before\";i:8015;s:10:\"size_after\";i:7362;s:4:\"time\";d:0.01;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:7362;s:10:\"size_after\";i:7362;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:15726;s:10:\"size_after\";i:15726;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:2899;s:10:\"size_after\";i:2899;s:4:\"time\";d:0.01;}}}'),
	(952,64,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:8.977993491809608;s:5:\"bytes\";i:8139;s:11:\"size_before\";i:90655;s:10:\"size_after\";i:82516;s:4:\"time\";d:0.11;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.72;s:5:\"bytes\";i:658;s:11:\"size_before\";i:7549;s:10:\"size_after\";i:6891;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.34;s:5:\"bytes\";i:288;s:11:\"size_before\";i:3085;s:10:\"size_after\";i:2797;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:12.7;s:5:\"bytes\";i:2155;s:11:\"size_before\";i:16974;s:10:\"size_after\";i:14819;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.88;s:5:\"bytes\";i:287;s:11:\"size_before\";i:2906;s:10:\"size_after\";i:2619;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:10.06;s:5:\"bytes\";i:696;s:11:\"size_before\";i:6920;s:10:\"size_after\";i:6224;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:14.12;s:5:\"bytes\";i:4055;s:11:\"size_before\";i:28714;s:10:\"size_after\";i:24659;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:6891;s:10:\"size_after\";i:6891;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:14819;s:10:\"size_after\";i:14819;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:2797;s:10:\"size_after\";i:2797;s:4:\"time\";d:0.01;}}}'),
	(953,63,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.678001496936823;s:5:\"bytes\";i:7227;s:11:\"size_before\";i:108221;s:10:\"size_after\";i:100994;s:4:\"time\";d:0.12;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.52;s:5:\"bytes\";i:599;s:11:\"size_before\";i:9186;s:10:\"size_after\";i:8587;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.38;s:5:\"bytes\";i:232;s:11:\"size_before\";i:3637;s:10:\"size_after\";i:3405;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.25;s:5:\"bytes\";i:1845;s:11:\"size_before\";i:19944;s:10:\"size_after\";i:18099;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.6;s:5:\"bytes\";i:226;s:11:\"size_before\";i:3422;s:10:\"size_after\";i:3196;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.87;s:5:\"bytes\";i:657;s:11:\"size_before\";i:8347;s:10:\"size_after\";i:7690;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:10.92;s:5:\"bytes\";i:3668;s:11:\"size_before\";i:33594;s:10:\"size_after\";i:29926;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:8587;s:10:\"size_after\";i:8587;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:18099;s:10:\"size_after\";i:18099;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3405;s:10:\"size_after\";i:3405;s:4:\"time\";d:0.01;}}}'),
	(954,62,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.944372467117878;s:5:\"bytes\";i:6700;s:11:\"size_before\";i:96481;s:10:\"size_after\";i:89781;s:4:\"time\";d:0.15000000000000002;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.93;s:5:\"bytes\";i:477;s:11:\"size_before\";i:8050;s:10:\"size_after\";i:7573;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.25;s:5:\"bytes\";i:174;s:11:\"size_before\";i:3315;s:10:\"size_after\";i:3141;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:10.1;s:5:\"bytes\";i:1809;s:11:\"size_before\";i:17910;s:10:\"size_after\";i:16101;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.29;s:5:\"bytes\";i:197;s:11:\"size_before\";i:3131;s:10:\"size_after\";i:2934;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.49;s:5:\"bytes\";i:553;s:11:\"size_before\";i:7388;s:10:\"size_after\";i:6835;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:11.68;s:5:\"bytes\";i:3490;s:11:\"size_before\";i:29872;s:10:\"size_after\";i:26382;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:7573;s:10:\"size_after\";i:7573;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:16101;s:10:\"size_after\";i:16101;s:4:\"time\";d:0.05;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3141;s:10:\"size_after\";i:3141;s:4:\"time\";d:0.01;}}}'),
	(955,61,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:2.6605748939744718;s:5:\"bytes\";i:6493;s:11:\"size_before\";i:244045;s:10:\"size_after\";i:237552;s:4:\"time\";d:0.15000000000000002;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.89;s:5:\"bytes\";i:877;s:11:\"size_before\";i:17949;s:10:\"size_after\";i:17072;s:4:\"time\";d:0.02;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.51;s:5:\"bytes\";i:489;s:11:\"size_before\";i:7510;s:10:\"size_after\";i:7021;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.6;s:5:\"bytes\";i:1702;s:11:\"size_before\";i:47339;s:10:\"size_after\";i:45637;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.92;s:5:\"bytes\";i:422;s:11:\"size_before\";i:7126;s:10:\"size_after\";i:6704;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.78;s:5:\"bytes\";i:917;s:11:\"size_before\";i:19186;s:10:\"size_after\";i:18269;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:2.77;s:5:\"bytes\";i:2086;s:11:\"size_before\";i:75205;s:10:\"size_after\";i:73119;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:17072;s:10:\"size_after\";i:17072;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:45637;s:10:\"size_after\";i:45637;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:7021;s:10:\"size_after\";i:7021;s:4:\"time\";d:0.01;}}}'),
	(956,60,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:2.9176963427742;s:5:\"bytes\";i:6352;s:11:\"size_before\";i:217706;s:10:\"size_after\";i:211354;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.39;s:5:\"bytes\";i:790;s:11:\"size_before\";i:17980;s:10:\"size_after\";i:17190;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.43;s:5:\"bytes\";i:281;s:11:\"size_before\";i:6341;s:10:\"size_after\";i:6060;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.09;s:5:\"bytes\";i:1691;s:11:\"size_before\";i:41391;s:10:\"size_after\";i:39700;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.91;s:5:\"bytes\";i:291;s:11:\"size_before\";i:5921;s:10:\"size_after\";i:5630;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.19;s:5:\"bytes\";i:682;s:11:\"size_before\";i:16293;s:10:\"size_after\";i:15611;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.92;s:5:\"bytes\";i:2617;s:11:\"size_before\";i:66830;s:10:\"size_after\";i:64213;s:4:\"time\";d:0.04;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:17190;s:10:\"size_after\";i:17190;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:39700;s:10:\"size_after\";i:39700;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:6060;s:10:\"size_after\";i:6060;s:4:\"time\";d:0.01;}}}'),
	(957,59,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.7216958859925064;s:5:\"bytes\";i:7700;s:11:\"size_before\";i:163077;s:10:\"size_after\";i:155377;s:4:\"time\";d:0.13;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.76;s:5:\"bytes\";i:680;s:11:\"size_before\";i:11805;s:10:\"size_after\";i:11125;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.13;s:5:\"bytes\";i:172;s:11:\"size_before\";i:4162;s:10:\"size_after\";i:3990;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.75;s:5:\"bytes\";i:2166;s:11:\"size_before\";i:32089;s:10:\"size_after\";i:29923;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.84;s:5:\"bytes\";i:184;s:11:\"size_before\";i:3799;s:10:\"size_after\";i:3615;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.54;s:5:\"bytes\";i:624;s:11:\"size_before\";i:11272;s:10:\"size_after\";i:10648;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.05;s:5:\"bytes\";i:3874;s:11:\"size_before\";i:54912;s:10:\"size_after\";i:51038;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:11125;s:10:\"size_after\";i:11125;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:29923;s:10:\"size_after\";i:29923;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3990;s:10:\"size_after\";i:3990;s:4:\"time\";d:0.01;}}}'),
	(958,58,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.926183038296887;s:5:\"bytes\";i:7683;s:11:\"size_before\";i:129645;s:10:\"size_after\";i:121962;s:4:\"time\";d:0.12;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.28;s:5:\"bytes\";i:612;s:11:\"size_before\";i:9748;s:10:\"size_after\";i:9136;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.69;s:5:\"bytes\";i:160;s:11:\"size_before\";i:3411;s:10:\"size_after\";i:3251;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.57;s:5:\"bytes\";i:2182;s:11:\"size_before\";i:25457;s:10:\"size_after\";i:23275;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.42;s:5:\"bytes\";i:141;s:11:\"size_before\";i:3190;s:10:\"size_after\";i:3049;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.6;s:5:\"bytes\";i:598;s:11:\"size_before\";i:9054;s:10:\"size_after\";i:8456;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.25;s:5:\"bytes\";i:3990;s:11:\"size_before\";i:43123;s:10:\"size_after\";i:39133;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:9136;s:10:\"size_after\";i:9136;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:23275;s:10:\"size_after\";i:23275;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3251;s:10:\"size_after\";i:3251;s:4:\"time\";d:0.01;}}}'),
	(959,57,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.872484726695315;s:5:\"bytes\";i:6546;s:11:\"size_before\";i:111469;s:10:\"size_after\";i:104923;s:4:\"time\";d:0.12;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.97;s:5:\"bytes\";i:526;s:11:\"size_before\";i:8813;s:10:\"size_after\";i:8287;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.61;s:5:\"bytes\";i:222;s:11:\"size_before\";i:3358;s:10:\"size_after\";i:3136;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.29;s:5:\"bytes\";i:1763;s:11:\"size_before\";i:21275;s:10:\"size_after\";i:19512;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.18;s:5:\"bytes\";i:230;s:11:\"size_before\";i:3202;s:10:\"size_after\";i:2972;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.09;s:5:\"bytes\";i:581;s:11:\"size_before\";i:8200;s:10:\"size_after\";i:7619;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.03;s:5:\"bytes\";i:3224;s:11:\"size_before\";i:35686;s:10:\"size_after\";i:32462;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:8287;s:10:\"size_after\";i:8287;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:19512;s:10:\"size_after\";i:19512;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3136;s:10:\"size_after\";i:3136;s:4:\"time\";d:0.01;}}}'),
	(960,56,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:15.539339728123345;s:5:\"bytes\";i:13203;s:11:\"size_before\";i:84965;s:10:\"size_after\";i:71762;s:4:\"time\";d:0.44000000000000006;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:23.09;s:5:\"bytes\";i:3145;s:11:\"size_before\";i:13619;s:10:\"size_after\";i:10474;s:4:\"time\";d:0.06;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:25.93;s:5:\"bytes\";i:1180;s:11:\"size_before\";i:4551;s:10:\"size_after\";i:3371;s:4:\"time\";d:0.03;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:25.85;s:5:\"bytes\";i:1069;s:11:\"size_before\";i:4136;s:10:\"size_after\";i:3067;s:4:\"time\";d:0.03;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:24.14;s:5:\"bytes\";i:2844;s:11:\"size_before\";i:11779;s:10:\"size_after\";i:8935;s:4:\"time\";d:0.07;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:23.64;s:5:\"bytes\";i:4965;s:11:\"size_before\";i:21000;s:10:\"size_after\";i:16035;s:4:\"time\";d:0.08;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:10474;s:10:\"size_after\";i:10474;s:4:\"time\";d:0.06;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:16035;s:10:\"size_after\";i:16035;s:4:\"time\";d:0.09;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3371;s:10:\"size_after\";i:3371;s:4:\"time\";d:0.02;}}}'),
	(961,55,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.158097778771735;s:5:\"bytes\";i:7710;s:11:\"size_before\";i:125201;s:10:\"size_after\";i:117491;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.84;s:5:\"bytes\";i:754;s:11:\"size_before\";i:9613;s:10:\"size_after\";i:8859;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.2;s:5:\"bytes\";i:288;s:11:\"size_before\";i:4642;s:10:\"size_after\";i:4354;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.19;s:5:\"bytes\";i:1088;s:11:\"size_before\";i:15128;s:10:\"size_after\";i:14040;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.54;s:5:\"bytes\";i:305;s:11:\"size_before\";i:4661;s:10:\"size_after\";i:4356;s:4:\"time\";d:0.02;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.31;s:5:\"bytes\";i:508;s:11:\"size_before\";i:6953;s:10:\"size_after\";i:6445;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";i:8;s:5:\"bytes\";i:1849;s:11:\"size_before\";i:23099;s:10:\"size_after\";i:21250;s:4:\"time\";d:0.02;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.62;s:5:\"bytes\";i:2918;s:11:\"size_before\";i:33852;s:10:\"size_after\";i:30934;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:8859;s:10:\"size_after\";i:8859;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:14040;s:10:\"size_after\";i:14040;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4354;s:10:\"size_after\";i:4354;s:4:\"time\";d:0.01;}}}'),
	(962,54,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.9381078060727113;s:5:\"bytes\";i:13250;s:11:\"size_before\";i:336456;s:10:\"size_after\";i:323206;s:4:\"time\";d:0.18000000000000002;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:10:{s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.93;s:5:\"bytes\";i:719;s:11:\"size_before\";i:9064;s:10:\"size_after\";i:8345;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.97;s:5:\"bytes\";i:1847;s:11:\"size_before\";i:37143;s:10:\"size_after\";i:35296;s:4:\"time\";d:0.03;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.81;s:5:\"bytes\";i:651;s:11:\"size_before\";i:8339;s:10:\"size_after\";i:7688;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.81;s:5:\"bytes\";i:799;s:11:\"size_before\";i:13759;s:10:\"size_after\";i:12960;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.23;s:5:\"bytes\";i:2677;s:11:\"size_before\";i:63282;s:10:\"size_after\";i:60605;s:4:\"time\";d:0.03;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.36;s:5:\"bytes\";i:4825;s:11:\"size_before\";i:110584;s:10:\"size_after\";i:105759;s:4:\"time\";d:0.03;}s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.61;s:5:\"bytes\";i:1732;s:11:\"size_before\";i:26188;s:10:\"size_after\";i:24456;s:4:\"time\";d:0.01;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:24456;s:10:\"size_after\";i:24456;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:35296;s:10:\"size_after\";i:35296;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:8345;s:10:\"size_after\";i:8345;s:4:\"time\";d:0.01;}}}'),
	(963,53,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.614703219545238;s:5:\"bytes\";i:7085;s:11:\"size_before\";i:153531;s:10:\"size_after\";i:146446;s:4:\"time\";d:0.24;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.97;s:5:\"bytes\";i:738;s:11:\"size_before\";i:12352;s:10:\"size_after\";i:11614;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.94;s:5:\"bytes\";i:316;s:11:\"size_before\";i:4554;s:10:\"size_after\";i:4238;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.18;s:5:\"bytes\";i:1818;s:11:\"size_before\";i:29414;s:10:\"size_after\";i:27596;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.09;s:5:\"bytes\";i:298;s:11:\"size_before\";i:4203;s:10:\"size_after\";i:3905;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.81;s:5:\"bytes\";i:650;s:11:\"size_before\";i:11191;s:10:\"size_after\";i:10541;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.75;s:5:\"bytes\";i:3265;s:11:\"size_before\";i:48369;s:10:\"size_after\";i:45104;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:11614;s:10:\"size_after\";i:11614;s:4:\"time\";d:0.12;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:27596;s:10:\"size_after\";i:27596;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4238;s:10:\"size_after\";i:4238;s:4:\"time\";d:0.01;}}}'),
	(964,52,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.538339044704817;s:5:\"bytes\";i:7095;s:11:\"size_before\";i:128107;s:10:\"size_after\";i:121012;s:4:\"time\";d:0.13;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.54;s:5:\"bytes\";i:689;s:11:\"size_before\";i:10535;s:10:\"size_after\";i:9846;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.43;s:5:\"bytes\";i:311;s:11:\"size_before\";i:4184;s:10:\"size_after\";i:3873;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.42;s:5:\"bytes\";i:1803;s:11:\"size_before\";i:24297;s:10:\"size_after\";i:22494;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.47;s:5:\"bytes\";i:294;s:11:\"size_before\";i:3937;s:10:\"size_after\";i:3643;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.43;s:5:\"bytes\";i:631;s:11:\"size_before\";i:9821;s:10:\"size_after\";i:9190;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.61;s:5:\"bytes\";i:3367;s:11:\"size_before\";i:39120;s:10:\"size_after\";i:35753;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:9846;s:10:\"size_after\";i:9846;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:22494;s:10:\"size_after\";i:22494;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3873;s:10:\"size_after\";i:3873;s:4:\"time\";d:0.01;}}}'),
	(965,51,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.405181402088819;s:5:\"bytes\";i:7249;s:11:\"size_before\";i:113174;s:10:\"size_after\";i:105925;s:4:\"time\";d:0.12;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.57;s:5:\"bytes\";i:641;s:11:\"size_before\";i:8471;s:10:\"size_after\";i:7830;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.07;s:5:\"bytes\";i:170;s:11:\"size_before\";i:3351;s:10:\"size_after\";i:3181;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.28;s:5:\"bytes\";i:2047;s:11:\"size_before\";i:22056;s:10:\"size_after\";i:20009;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.86;s:5:\"bytes\";i:152;s:11:\"size_before\";i:3127;s:10:\"size_after\";i:2975;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.17;s:5:\"bytes\";i:590;s:11:\"size_before\";i:8223;s:10:\"size_after\";i:7633;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.88;s:5:\"bytes\";i:3649;s:11:\"size_before\";i:36926;s:10:\"size_after\";i:33277;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:7830;s:10:\"size_after\";i:7830;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:20009;s:10:\"size_after\";i:20009;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3181;s:10:\"size_after\";i:3181;s:4:\"time\";d:0.01;}}}'),
	(966,50,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.0565957896963925;s:5:\"bytes\";i:6692;s:11:\"size_before\";i:132342;s:10:\"size_after\";i:125650;s:4:\"time\";d:0.15;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.16;s:5:\"bytes\";i:619;s:11:\"size_before\";i:10042;s:10:\"size_after\";i:9423;s:4:\"time\";d:0.02;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.34;s:5:\"bytes\";i:164;s:11:\"size_before\";i:3783;s:10:\"size_after\";i:3619;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.14;s:5:\"bytes\";i:1826;s:11:\"size_before\";i:25582;s:10:\"size_after\";i:23756;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.87;s:5:\"bytes\";i:172;s:11:\"size_before\";i:3530;s:10:\"size_after\";i:3358;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.06;s:5:\"bytes\";i:573;s:11:\"size_before\";i:9451;s:10:\"size_after\";i:8878;s:4:\"time\";d:0.02;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.73;s:5:\"bytes\";i:3338;s:11:\"size_before\";i:43156;s:10:\"size_after\";i:39818;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:9423;s:10:\"size_after\";i:9423;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:23756;s:10:\"size_after\";i:23756;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3619;s:10:\"size_after\";i:3619;s:4:\"time\";d:0.01;}}}'),
	(967,49,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.3857254236193444;s:5:\"bytes\";i:7339;s:11:\"size_before\";i:216763;s:10:\"size_after\";i:209424;s:4:\"time\";d:0.19;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.42;s:5:\"bytes\";i:725;s:11:\"size_before\";i:16417;s:10:\"size_after\";i:15692;s:4:\"time\";d:0.02;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.89;s:5:\"bytes\";i:289;s:11:\"size_before\";i:5905;s:10:\"size_after\";i:5616;s:4:\"time\";d:0.02;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.66;s:5:\"bytes\";i:1880;s:11:\"size_before\";i:40380;s:10:\"size_after\";i:38500;s:4:\"time\";d:0.03;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.16;s:5:\"bytes\";i:283;s:11:\"size_before\";i:5484;s:10:\"size_after\";i:5201;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.58;s:5:\"bytes\";i:687;s:11:\"size_before\";i:15013;s:10:\"size_after\";i:14326;s:4:\"time\";d:0.03;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.71;s:5:\"bytes\";i:3475;s:11:\"size_before\";i:73756;s:10:\"size_after\";i:70281;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:15692;s:10:\"size_after\";i:15692;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:38500;s:10:\"size_after\";i:38500;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:5616;s:10:\"size_after\";i:5616;s:4:\"time\";d:0.01;}}}'),
	(968,48,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:2.7201878240453907;s:5:\"bytes\";i:4171;s:11:\"size_before\";i:153335;s:10:\"size_after\";i:149164;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.69;s:5:\"bytes\";i:830;s:11:\"size_before\";i:17715;s:10:\"size_after\";i:16885;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.6;s:5:\"bytes\";i:352;s:11:\"size_before\";i:6290;s:10:\"size_after\";i:5938;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.26;s:5:\"bytes\";i:1823;s:11:\"size_before\";i:42787;s:10:\"size_after\";i:40964;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.63;s:5:\"bytes\";i:331;s:11:\"size_before\";i:5883;s:10:\"size_after\";i:5552;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.95;s:5:\"bytes\";i:835;s:11:\"size_before\";i:16873;s:10:\"size_after\";i:16038;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:16885;s:10:\"size_after\";i:16885;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:40964;s:10:\"size_after\";i:40964;s:4:\"time\";d:0.05;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:5938;s:10:\"size_after\";i:5938;s:4:\"time\";d:0.01;}}}'),
	(969,47,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.236858817131927;s:5:\"bytes\";i:8512;s:11:\"size_before\";i:262971;s:10:\"size_after\";i:254459;s:4:\"time\";d:0.18000000000000002;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.97;s:5:\"bytes\";i:998;s:11:\"size_before\";i:20094;s:10:\"size_after\";i:19096;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.8;s:5:\"bytes\";i:390;s:11:\"size_before\";i:6725;s:10:\"size_after\";i:6335;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.37;s:5:\"bytes\";i:2155;s:11:\"size_before\";i:49316;s:10:\"size_after\";i:47161;s:4:\"time\";d:0.03;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.62;s:5:\"bytes\";i:353;s:11:\"size_before\";i:6282;s:10:\"size_after\";i:5929;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.9;s:5:\"bytes\";i:878;s:11:\"size_before\";i:17923;s:10:\"size_after\";i:17045;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.15;s:5:\"bytes\";i:3738;s:11:\"size_before\";i:90039;s:10:\"size_after\";i:86301;s:4:\"time\";d:0.05;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:19096;s:10:\"size_after\";i:19096;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:47161;s:10:\"size_after\";i:47161;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:6335;s:10:\"size_after\";i:6335;s:4:\"time\";d:0.01;}}}'),
	(970,46,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.4803197860664645;s:5:\"bytes\";i:6247;s:11:\"size_before\";i:179495;s:10:\"size_after\";i:173248;s:4:\"time\";d:0.15;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.65;s:5:\"bytes\";i:648;s:11:\"size_before\";i:13924;s:10:\"size_after\";i:13276;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.26;s:5:\"bytes\";i:286;s:11:\"size_before\";i:5440;s:10:\"size_after\";i:5154;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.69;s:5:\"bytes\";i:1578;s:11:\"size_before\";i:33642;s:10:\"size_after\";i:32064;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.92;s:5:\"bytes\";i:303;s:11:\"size_before\";i:5120;s:10:\"size_after\";i:4817;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.84;s:5:\"bytes\";i:643;s:11:\"size_before\";i:13293;s:10:\"size_after\";i:12650;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.84;s:5:\"bytes\";i:2789;s:11:\"size_before\";i:57582;s:10:\"size_after\";i:54793;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:13276;s:10:\"size_after\";i:13276;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:32064;s:10:\"size_after\";i:32064;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:5154;s:10:\"size_after\";i:5154;s:4:\"time\";d:0.02;}}}'),
	(971,45,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.499567183943958;s:5:\"bytes\";i:7849;s:11:\"size_before\";i:174439;s:10:\"size_after\";i:166590;s:4:\"time\";d:0.18000000000000002;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.57;s:5:\"bytes\";i:508;s:11:\"size_before\";i:11124;s:10:\"size_after\";i:10616;s:4:\"time\";d:0.03;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.16;s:5:\"bytes\";i:173;s:11:\"size_before\";i:4163;s:10:\"size_after\";i:3990;s:4:\"time\";d:0.02;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.93;s:5:\"bytes\";i:2397;s:11:\"size_before\";i:34572;s:10:\"size_after\";i:32175;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.34;s:5:\"bytes\";i:164;s:11:\"size_before\";i:3775;s:10:\"size_after\";i:3611;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.48;s:5:\"bytes\";i:495;s:11:\"size_before\";i:11061;s:10:\"size_after\";i:10566;s:4:\"time\";d:0.02;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.53;s:5:\"bytes\";i:4112;s:11:\"size_before\";i:62963;s:10:\"size_after\";i:58851;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:10616;s:10:\"size_after\";i:10616;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:32175;s:10:\"size_after\";i:32175;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3990;s:10:\"size_after\";i:3990;s:4:\"time\";d:0.01;}}}'),
	(972,44,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.3853776050544306;s:5:\"bytes\";i:7448;s:11:\"size_before\";i:220005;s:10:\"size_after\";i:212557;s:4:\"time\";d:0.16;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.07;s:5:\"bytes\";i:836;s:11:\"size_before\";i:13763;s:10:\"size_after\";i:12927;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.24;s:5:\"bytes\";i:198;s:11:\"size_before\";i:4670;s:10:\"size_after\";i:4472;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.35;s:5:\"bytes\";i:2365;s:11:\"size_before\";i:44243;s:10:\"size_after\";i:41878;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.79;s:5:\"bytes\";i:158;s:11:\"size_before\";i:4165;s:10:\"size_after\";i:4007;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.33;s:5:\"bytes\";i:704;s:11:\"size_before\";i:13206;s:10:\"size_after\";i:12502;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.95;s:5:\"bytes\";i:3187;s:11:\"size_before\";i:80681;s:10:\"size_after\";i:77494;s:4:\"time\";d:0.05;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:12927;s:10:\"size_after\";i:12927;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:41878;s:10:\"size_after\";i:41878;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4472;s:10:\"size_after\";i:4472;s:4:\"time\";d:0.01;}}}'),
	(973,43,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.307318888081782;s:5:\"bytes\";i:7467;s:11:\"size_before\";i:225772;s:10:\"size_after\";i:218305;s:4:\"time\";d:0.18000000000000002;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.5;s:5:\"bytes\";i:937;s:11:\"size_before\";i:14405;s:10:\"size_after\";i:13468;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.19;s:5:\"bytes\";i:198;s:11:\"size_before\";i:4729;s:10:\"size_after\";i:4531;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.96;s:5:\"bytes\";i:2246;s:11:\"size_before\";i:45304;s:10:\"size_after\";i:43058;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.25;s:5:\"bytes\";i:180;s:11:\"size_before\";i:4239;s:10:\"size_after\";i:4059;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.83;s:5:\"bytes\";i:798;s:11:\"size_before\";i:13689;s:10:\"size_after\";i:12891;s:4:\"time\";d:0.06;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.77;s:5:\"bytes\";i:3108;s:11:\"size_before\";i:82349;s:10:\"size_after\";i:79241;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:13468;s:10:\"size_after\";i:13468;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:43058;s:10:\"size_after\";i:43058;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4531;s:10:\"size_after\";i:4531;s:4:\"time\";d:0.01;}}}'),
	(974,42,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.033408485345358;s:5:\"bytes\";i:8732;s:11:\"size_before\";i:287861;s:10:\"size_after\";i:279129;s:4:\"time\";d:0.22999999999999998;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.91;s:5:\"bytes\";i:670;s:11:\"size_before\";i:17125;s:10:\"size_after\";i:16455;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.97;s:5:\"bytes\";i:381;s:11:\"size_before\";i:6380;s:10:\"size_after\";i:5999;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.3;s:5:\"bytes\";i:1086;s:11:\"size_before\";i:32930;s:10:\"size_after\";i:31844;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.24;s:5:\"bytes\";i:371;s:11:\"size_before\";i:5947;s:10:\"size_after\";i:5576;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.08;s:5:\"bytes\";i:581;s:11:\"size_before\";i:11430;s:10:\"size_after\";i:10849;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.04;s:5:\"bytes\";i:1729;s:11:\"size_before\";i:56944;s:10:\"size_after\";i:55215;s:4:\"time\";d:0.02;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.81;s:5:\"bytes\";i:3914;s:11:\"size_before\";i:102807;s:10:\"size_after\";i:98893;s:4:\"time\";d:0.1;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:16455;s:10:\"size_after\";i:16455;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:31844;s:10:\"size_after\";i:31844;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:5999;s:10:\"size_after\";i:5999;s:4:\"time\";d:0.01;}}}'),
	(975,41,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.550576040111546;s:5:\"bytes\";i:6462;s:11:\"size_before\";i:142004;s:10:\"size_after\";i:135542;s:4:\"time\";d:0.15000000000000002;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.16;s:5:\"bytes\";i:446;s:11:\"size_before\";i:10728;s:10:\"size_after\";i:10282;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.88;s:5:\"bytes\";i:149;s:11:\"size_before\";i:3842;s:10:\"size_after\";i:3693;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.17;s:5:\"bytes\";i:1703;s:11:\"size_before\";i:27612;s:10:\"size_after\";i:25909;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.3;s:5:\"bytes\";i:155;s:11:\"size_before\";i:3602;s:10:\"size_after\";i:3447;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.13;s:5:\"bytes\";i:415;s:11:\"size_before\";i:10058;s:10:\"size_after\";i:9643;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.77;s:5:\"bytes\";i:3594;s:11:\"size_before\";i:46278;s:10:\"size_after\";i:42684;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:10282;s:10:\"size_after\";i:10282;s:4:\"time\";d:0.02;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:25909;s:10:\"size_after\";i:25909;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3693;s:10:\"size_after\";i:3693;s:4:\"time\";d:0.01;}}}'),
	(976,40,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.698779933804919;s:5:\"bytes\";i:7025;s:11:\"size_before\";i:123272;s:10:\"size_after\";i:116247;s:4:\"time\";d:0.12;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.86;s:5:\"bytes\";i:535;s:11:\"size_before\";i:9131;s:10:\"size_after\";i:8596;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.37;s:5:\"bytes\";i:193;s:11:\"size_before\";i:3593;s:10:\"size_after\";i:3400;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.85;s:5:\"bytes\";i:1894;s:11:\"size_before\";i:24117;s:10:\"size_after\";i:22223;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.16;s:5:\"bytes\";i:172;s:11:\"size_before\";i:3332;s:10:\"size_after\";i:3160;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.69;s:5:\"bytes\";i:519;s:11:\"size_before\";i:9120;s:10:\"size_after\";i:8601;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.34;s:5:\"bytes\";i:3712;s:11:\"size_before\";i:39760;s:10:\"size_after\";i:36048;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:8596;s:10:\"size_after\";i:8596;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:22223;s:10:\"size_after\";i:22223;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3400;s:10:\"size_after\";i:3400;s:4:\"time\";d:0.01;}}}'),
	(977,39,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:2.5157764374204836;s:5:\"bytes\";i:5952;s:11:\"size_before\";i:236587;s:10:\"size_after\";i:230635;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.74;s:5:\"bytes\";i:818;s:11:\"size_before\";i:17257;s:10:\"size_after\";i:16439;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.37;s:5:\"bytes\";i:463;s:11:\"size_before\";i:7264;s:10:\"size_after\";i:6801;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.25;s:5:\"bytes\";i:1490;s:11:\"size_before\";i:45908;s:10:\"size_after\";i:44418;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.26;s:5:\"bytes\";i:433;s:11:\"size_before\";i:6914;s:10:\"size_after\";i:6481;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.65;s:5:\"bytes\";i:860;s:11:\"size_before\";i:18486;s:10:\"size_after\";i:17626;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:2.58;s:5:\"bytes\";i:1888;s:11:\"size_before\";i:73100;s:10:\"size_after\";i:71212;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:16439;s:10:\"size_after\";i:16439;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:44418;s:10:\"size_after\";i:44418;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:6801;s:10:\"size_after\";i:6801;s:4:\"time\";d:0.01;}}}'),
	(978,38,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:2.8779244972878195;s:5:\"bytes\";i:6303;s:11:\"size_before\";i:219012;s:10:\"size_after\";i:212709;s:4:\"time\";d:0.16;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.36;s:5:\"bytes\";i:790;s:11:\"size_before\";i:18135;s:10:\"size_after\";i:17345;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.49;s:5:\"bytes\";i:289;s:11:\"size_before\";i:6440;s:10:\"size_after\";i:6151;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.85;s:5:\"bytes\";i:1598;s:11:\"size_before\";i:41505;s:10:\"size_after\";i:39907;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.05;s:5:\"bytes\";i:304;s:11:\"size_before\";i:6016;s:10:\"size_after\";i:5712;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.24;s:5:\"bytes\";i:696;s:11:\"size_before\";i:16413;s:10:\"size_after\";i:15717;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.91;s:5:\"bytes\";i:2626;s:11:\"size_before\";i:67100;s:10:\"size_after\";i:64474;s:4:\"time\";d:0.04;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:17345;s:10:\"size_after\";i:17345;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:39907;s:10:\"size_after\";i:39907;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:6151;s:10:\"size_after\";i:6151;s:4:\"time\";d:0.02;}}}'),
	(979,37,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.065574119702059;s:5:\"bytes\";i:7134;s:11:\"size_before\";i:140833;s:10:\"size_after\";i:133699;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.72;s:5:\"bytes\";i:624;s:11:\"size_before\";i:10905;s:10:\"size_after\";i:10281;s:4:\"time\";d:0.02;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.99;s:5:\"bytes\";i:186;s:11:\"size_before\";i:3728;s:10:\"size_after\";i:3542;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.9;s:5:\"bytes\";i:1892;s:11:\"size_before\";i:27423;s:10:\"size_after\";i:25531;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.59;s:5:\"bytes\";i:198;s:11:\"size_before\";i:3545;s:10:\"size_after\";i:3347;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.1;s:5:\"bytes\";i:612;s:11:\"size_before\";i:10030;s:10:\"size_after\";i:9418;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.9;s:5:\"bytes\";i:3622;s:11:\"size_before\";i:45848;s:10:\"size_after\";i:42226;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:10281;s:10:\"size_after\";i:10281;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:25531;s:10:\"size_after\";i:25531;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3542;s:10:\"size_after\";i:3542;s:4:\"time\";d:0.02;}}}'),
	(980,36,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.496481846327048;s:5:\"bytes\";i:7988;s:11:\"size_before\";i:177650;s:10:\"size_after\";i:169662;s:4:\"time\";d:0.15000000000000002;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.78;s:5:\"bytes\";i:797;s:11:\"size_before\";i:13778;s:10:\"size_after\";i:12981;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.79;s:5:\"bytes\";i:219;s:11:\"size_before\";i:4572;s:10:\"size_after\";i:4353;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.18;s:5:\"bytes\";i:2149;s:11:\"size_before\";i:34768;s:10:\"size_after\";i:32619;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.97;s:5:\"bytes\";i:211;s:11:\"size_before\";i:4244;s:10:\"size_after\";i:4033;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.68;s:5:\"bytes\";i:711;s:11:\"size_before\";i:12518;s:10:\"size_after\";i:11807;s:4:\"time\";d:0.02;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.75;s:5:\"bytes\";i:3901;s:11:\"size_before\";i:57817;s:10:\"size_after\";i:53916;s:4:\"time\";d:0.04;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:12981;s:10:\"size_after\";i:12981;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:32619;s:10:\"size_after\";i:32619;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4353;s:10:\"size_after\";i:4353;s:4:\"time\";d:0.01;}}}'),
	(981,35,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.903836120493176;s:5:\"bytes\";i:6450;s:11:\"size_before\";i:109251;s:10:\"size_after\";i:102801;s:4:\"time\";d:0.19;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.44;s:5:\"bytes\";i:476;s:11:\"size_before\";i:8755;s:10:\"size_after\";i:8279;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.17;s:5:\"bytes\";i:180;s:11:\"size_before\";i:3481;s:10:\"size_after\";i:3301;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.45;s:5:\"bytes\";i:1737;s:11:\"size_before\";i:20550;s:10:\"size_after\";i:18813;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.7;s:5:\"bytes\";i:183;s:11:\"size_before\";i:3213;s:10:\"size_after\";i:3030;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.14;s:5:\"bytes\";i:499;s:11:\"size_before\";i:8129;s:10:\"size_after\";i:7630;s:4:\"time\";d:0.08;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.72;s:5:\"bytes\";i:3375;s:11:\"size_before\";i:34730;s:10:\"size_after\";i:31355;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:8279;s:10:\"size_after\";i:8279;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:18813;s:10:\"size_after\";i:18813;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3301;s:10:\"size_after\";i:3301;s:4:\"time\";d:0.01;}}}'),
	(982,34,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.4385963284880745;s:5:\"bytes\";i:6941;s:11:\"size_before\";i:107803;s:10:\"size_after\";i:100862;s:4:\"time\";d:0.14;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.1;s:5:\"bytes\";i:526;s:11:\"size_before\";i:8616;s:10:\"size_after\";i:8090;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.74;s:5:\"bytes\";i:193;s:11:\"size_before\";i:3362;s:10:\"size_after\";i:3169;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.18;s:5:\"bytes\";i:1874;s:11:\"size_before\";i:20411;s:10:\"size_after\";i:18537;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.04;s:5:\"bytes\";i:190;s:11:\"size_before\";i:3145;s:10:\"size_after\";i:2955;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.66;s:5:\"bytes\";i:540;s:11:\"size_before\";i:8108;s:10:\"size_after\";i:7568;s:4:\"time\";d:0.02;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:10.53;s:5:\"bytes\";i:3618;s:11:\"size_before\";i:34365;s:10:\"size_after\";i:30747;s:4:\"time\";d:0.03;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:8090;s:10:\"size_after\";i:8090;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:18537;s:10:\"size_after\";i:18537;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3169;s:10:\"size_after\";i:3169;s:4:\"time\";d:0.01;}}}'),
	(983,33,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.18394962223227;s:5:\"bytes\";i:6385;s:11:\"size_before\";i:152607;s:10:\"size_after\";i:146222;s:4:\"time\";d:0.17;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.01;s:5:\"bytes\";i:476;s:11:\"size_before\";i:11871;s:10:\"size_after\";i:11395;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.09;s:5:\"bytes\";i:231;s:11:\"size_before\";i:4540;s:10:\"size_after\";i:4309;s:4:\"time\";d:0.02;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.65;s:5:\"bytes\";i:1621;s:11:\"size_before\";i:28678;s:10:\"size_after\";i:27057;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.65;s:5:\"bytes\";i:196;s:11:\"size_before\";i:4213;s:10:\"size_after\";i:4017;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.33;s:5:\"bytes\";i:466;s:11:\"size_before\";i:10771;s:10:\"size_after\";i:10305;s:4:\"time\";d:0.02;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.82;s:5:\"bytes\";i:3395;s:11:\"size_before\";i:49773;s:10:\"size_after\";i:46378;s:4:\"time\";d:0.04;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:11395;s:10:\"size_after\";i:11395;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:27057;s:10:\"size_after\";i:27057;s:4:\"time\";d:0.03;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:4309;s:10:\"size_after\";i:4309;s:4:\"time\";d:0.01;}}}'),
	(984,32,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.421329900245634;s:5:\"bytes\";i:6864;s:11:\"size_before\";i:126611;s:10:\"size_after\";i:119747;s:4:\"time\";d:0.12;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.45;s:5:\"bytes\";i:554;s:11:\"size_before\";i:10168;s:10:\"size_after\";i:9614;s:4:\"time\";d:0.01;}s:29:\"woocommerce_gallery_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.81;s:5:\"bytes\";i:234;s:11:\"size_before\";i:4025;s:10:\"size_after\";i:3791;s:4:\"time\";d:0.01;}s:18:\"woocommerce_single\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.56;s:5:\"bytes\";i:1780;s:11:\"size_before\";i:23544;s:10:\"size_after\";i:21764;s:4:\"time\";d:0.02;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.55;s:5:\"bytes\";i:212;s:11:\"size_before\";i:3820;s:10:\"size_after\";i:3608;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.19;s:5:\"bytes\";i:583;s:11:\"size_before\";i:9415;s:10:\"size_after\";i:8832;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.65;s:5:\"bytes\";i:3501;s:11:\"size_before\";i:40470;s:10:\"size_after\";i:36969;s:4:\"time\";d:0.02;}s:12:\"shop_catalog\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:9614;s:10:\"size_after\";i:9614;s:4:\"time\";d:0.01;}s:11:\"shop_single\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:21764;s:10:\"size_after\";i:21764;s:4:\"time\";d:0.02;}s:14:\"shop_thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:3791;s:10:\"size_after\";i:3791;s:4:\"time\";d:0.01;}}}'),
	(985,120,'_anonymized','yes');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2019-08-28 11:16:04','2019-08-28 09:16:04','<!-- wp:paragraph -->\n<p>Willkommen bei WordPress. Dies ist dein erster Beitrag. Bearbeite oder lösche ihn und beginne mit dem Schreiben!</p>\n<!-- /wp:paragraph -->','Hallo Welt!','','publish','open','open','','hallo-welt','','','2019-08-28 11:16:04','2019-08-28 09:16:04','',0,'http://woocommerce.test:8888/?p=1',0,'post','',1),
	(2,1,'2019-08-28 11:16:04','2019-08-28 09:16:04','<!-- wp:paragraph -->\n<p>Dies ist eine Beispiel-Seite. Sie unterscheidet sich von Beiträgen, da sie stets an derselben Stelle bleibt und (bei den meisten Themes) in der Website-Navigation angezeigt wird. Die meisten starten mit einem Impressum, der Datenschutzerklärung oder einer &#8222;Über uns&#8220;-Seite, um sich potienziellen Besuchern der Website vorzustellen. Dort könnte zum Beispiel stehen:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hallo! Tagsüber arbeite ich als Fahrradkurier, nachts bin ich ein aufstrebender Schauspieler und dies hier ist meine Website. Ich lebe in Berlin, habe einen großen Hund namens Jack, mag Pi&#241;a Coladas, jedoch weniger (ohne Schirm) im Regen stehen gelassen zu werden.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>&hellip;&nbsp;oder so etwas wie:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Unsere Firma XYZ wurde 1971 gegründet und hat seither eine Menge hochqualitative ABC-Produkte für die Öffentlichkeit produziert. Ansässig in Gotham City, hat XYZ mittlerweile über 2.000 Mitarbeiter und entwickelt immer wieder großartige Dinge für die ganze Gotham-Gemeinschaft.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Als neuer WordPress-Benutzer solltest du dein <a href=\"http://woocommerce.test:8888/wp-admin/\">Dashboard</a> aufrufen, um diese Seite zu löschen und neue Seiten und Beiträge für deine Website erstellen. Viel Spaß!</p>\n<!-- /wp:paragraph -->','Beispiel-Seite','','publish','closed','open','','beispiel-seite','','','2019-08-28 11:16:04','2019-08-28 09:16:04','',0,'http://woocommerce.test:8888/?page_id=2',0,'page','',0),
	(3,1,'2019-08-28 11:16:04','2019-08-28 09:16:04','<!-- wp:heading --><h2>Wer wir sind</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Die Adresse unserer Website ist: http://woocommerce.test:8888.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welche personenbezogenen Daten wir sammeln und warum wir sie sammeln</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Kommentare</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn Besucher Kommentare auf der Website schreiben, sammeln wir die Daten, die im Kommentar-Formular angezeigt werden, außerdem die IP-Adresse des Besuchers und den User-Agent-String (damit wird der Browser identifiziert), um die Erkennung von Spam zu unterstützen.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Aus deiner E-Mail-Adresse kann eine anonymisierte Zeichenfolge erstellt (auch Hash genannt) und dem Gravatar-Dienst übergeben werden, um zu prüfen, ob du diesen benutzt. Die Datenschutzerklärung des Gravatar-Dienstes findest du hier: https://automattic.com/privacy/. Nachdem dein Kommentar freigegeben wurde, ist dein Profilbild öffentlich im Kontext deines Kommentars sichtbar.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medien</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du ein registrierter Benutzer bist und Fotos auf diese Website lädst, solltest du vermeiden, Fotos mit einem EXIF-GPS-Standort hochzuladen. Besucher dieser Website könnten Fotos, die auf dieser Website gespeichert sind, herunterladen und deren Standort-Informationen extrahieren.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Kontaktformulare</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du einen Kommentar auf unserer Website schreibst, kann das eine Einwilligung sein, deinen Namen, E-Mail-Adresse und Website in Cookies zu speichern. Dies ist eine Komfortfunktion, damit du nicht, wenn du einen weiteren Kommentar schreibst, all diese Daten erneut eingeben musst. Diese Cookies werden ein Jahr lang gespeichert.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Falls du ein Konto hast und dich auf dieser Website anmeldest, werden wir ein temporäres Cookie setzen, um festzustellen, ob dein Browser Cookies akzeptiert. Dieses Cookie enthält keine personenbezogenen Daten und wird verworfen, wenn du deinen Browser schließt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wenn du dich anmeldest, werden wir einige Cookies einrichten, um deine Anmeldeinformationen und Anzeigeoptionen zu speichern. Anmelde-Cookies verfallen nach zwei Tagen und Cookies für die Anzeigeoptionen nach einem Jahr. Falls du bei der Anmeldung „Angemeldet bleiben“ auswählst, wird deine Anmeldung zwei Wochen lang aufrechterhalten. Mit der Abmeldung aus deinem Konto werden die Anmelde-Cookies gelöscht.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wenn du einen Artikel bearbeitest oder veröffentlichst, wird ein zusätzlicher Cookie in deinem Browser gespeichert. Dieser Cookie enthält keine personenbezogenen Daten und verweist nur auf die Beitrags-ID des Artikels, den du gerade bearbeitet hast. Der Cookie verfällt nach einem Tag.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Eingebettete Inhalte von anderen Websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Beiträge auf dieser Website können eingebettete Inhalte beinhalten (z.&nbsp;B. Videos, Bilder, Beiträge etc.). Eingebettete Inhalte von anderen Websites verhalten sich exakt so, als ob der Besucher die andere Website besucht hätte.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Diese Websites können Daten über dich sammeln, Cookies benutzen, zusätzliche Tracking-Dienste von Dritten einbetten und deine Interaktion mit diesem eingebetteten Inhalt aufzeichnen, inklusive deiner Interaktion mit dem eingebetteten Inhalt, falls du ein Konto hast und auf dieser Website angemeldet bist.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analysedienste</h3><!-- /wp:heading --><!-- wp:heading --><h2>Mit wem wir deine Daten teilen</h2><!-- /wp:heading --><!-- wp:heading --><h2>Wie lange wir deine Daten speichern</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du einen Kommentar schreibst, wird dieser inklusive Metadaten zeitlich unbegrenzt gespeichert. Auf diese Art können wir Folgekommentare automatisch erkennen und freigeben, anstelle sie in einer Moderations-Warteschlange festzuhalten.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Für Benutzer, die sich auf unserer Website registrieren, speichern wir zusätzlich die persönlichen Informationen, die sie in ihren Benutzerprofilen angeben. Alle Benutzer können jederzeit ihre persönlichen Informationen einsehen, verändern oder löschen (der Benutzername kann nicht verändert werden). Administratoren der Website können diese Informationen ebenfalls einsehen und verändern.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welche Rechte du an deinen Daten hast</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du ein Konto auf dieser Website besitzt oder Kommentare geschrieben hast, kannst du einen Export deiner personenbezogenen Daten bei uns anfordern, inklusive aller Daten, die du uns mitgeteilt hast. Darüber hinaus kannst du die Löschung aller personenbezogenen Daten, die wir von dir gespeichert haben, anfordern. Dies umfasst nicht die Daten, die wir aufgrund administrativer, rechtlicher oder sicherheitsrelevanter Notwendigkeiten aufbewahren müssen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Wohin wir deine Daten senden</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Besucher-Kommentare könnten von einem automatisierten Dienst zur Spam-Erkennung untersucht werden.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Deine Kontakt-Informationen</h2><!-- /wp:heading --><!-- wp:heading --><h2>Weitere Informationen</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Wie wir deine Daten schützen</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Welche Maßnahmen wir bei Datenschutzverletzungen anbieten</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Von welchen Drittanbietern wir Daten erhalten</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Welche automatisierte Entscheidungsfindung und/oder Profilerstellung wir mit Benutzerdaten durchführen</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industrielle aufsichtsrechtliche Regulierungsanforderungen</h3><!-- /wp:heading -->','Datenschutzerklärung','','draft','closed','open','','datenschutzerklaerung','','','2019-08-28 11:16:04','2019-08-28 09:16:04','',0,'http://woocommerce.test:8888/?page_id=3',0,'page','',0),
	(5,1,'2019-08-28 11:16:50','2019-08-28 09:16:50','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2019-08-28 11:16:50','2019-08-28 09:16:50','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/woocommerce-placeholder.png',0,'attachment','image/png',0),
	(6,1,'2019-08-28 11:17:42','2019-08-28 09:17:42','','Shop','','publish','closed','closed','','shop','','','2019-08-28 11:17:42','2019-08-28 09:17:42','',0,'http://woocommerce.test:8888/shop/',0,'page','',0),
	(7,1,'2019-08-28 11:17:42','2019-08-28 09:17:42','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Warenkorb','','publish','closed','closed','','warenkorb','','','2019-08-28 11:17:42','2019-08-28 09:17:42','',0,'http://woocommerce.test:8888/warenkorb/',0,'page','',0),
	(8,1,'2019-08-28 11:17:42','2019-08-28 09:17:42','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Kasse','','publish','closed','closed','','kasse','','','2019-08-28 11:17:42','2019-08-28 09:17:42','',0,'http://woocommerce.test:8888/kasse/',0,'page','',0),
	(9,1,'2019-08-28 11:17:42','2019-08-28 09:17:42','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','Mein Konto','','publish','closed','closed','','mein-konto','','','2019-08-28 11:17:42','2019-08-28 09:17:42','',0,'http://woocommerce.test:8888/mein-konto/',0,'page','',0),
	(10,1,'2019-08-30 16:15:32','2019-08-30 14:15:32','Get the ladies','Vintage Lorex Wrist Watch','You get the attention of the opposite sex and the envy of your male peers.','publish','open','closed','','vintage-lorex-wrist-watch','','','2019-08-30 16:15:32','2019-08-30 14:15:32','',0,'http://woocommerce.test:8888/?post_type=product&#038;p=10',0,'product','',0),
	(11,1,'2019-08-28 15:25:45','2019-08-28 13:25:45','','about-banner-free-img-1024x683','','inherit','open','closed','','about-banner-free-img-1024x683','','','2019-08-28 15:25:45','2019-08-28 13:25:45','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/about-banner-free-img-1024x683.jpg',0,'attachment','image/jpeg',0),
	(12,1,'2019-08-28 15:25:46','2019-08-28 13:25:46','','about-bg-free-img-1-300x300-262x300','','inherit','open','closed','','about-bg-free-img-1-300x300-262x300','','','2019-08-28 15:25:46','2019-08-28 13:25:46','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/about-bg-free-img-1-300x300-262x300.jpg',0,'attachment','image/jpeg',0),
	(13,1,'2019-08-28 15:25:47','2019-08-28 13:25:47','','about-bg-free-img-1024x576','','inherit','open','closed','','about-bg-free-img-1024x576','','','2019-08-28 15:25:47','2019-08-28 13:25:47','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/about-bg-free-img-1024x576.jpg',0,'attachment','image/jpeg',0),
	(14,1,'2019-08-28 15:25:48','2019-08-28 13:25:48','','accessories-free-img-600x600','','inherit','open','closed','','accessories-free-img-600x600','','','2019-08-28 15:25:48','2019-08-28 13:25:48','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/accessories-free-img-600x600.jpg',0,'attachment','image/jpeg',0),
	(15,1,'2019-08-28 15:25:49','2019-08-28 13:25:49','','anchor-bracelet-black-free-img','','inherit','open','closed','','anchor-bracelet-black-free-img','','','2019-08-28 15:25:49','2019-08-28 13:25:49','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/anchor-bracelet-black-free-img.jpg',0,'attachment','image/jpeg',0),
	(16,1,'2019-08-28 15:25:50','2019-08-28 13:25:50','','anchor-bracelet-blue-free-img','','inherit','open','closed','','anchor-bracelet-blue-free-img','','','2019-08-28 15:25:50','2019-08-28 13:25:50','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/anchor-bracelet-blue-free-img.jpg',0,'attachment','image/jpeg',0),
	(17,1,'2019-08-28 15:25:52','2019-08-28 13:25:52','','anchor-bracelet-brown-free-img','','inherit','open','closed','','anchor-bracelet-brown-free-img','','','2019-08-28 15:25:52','2019-08-28 13:25:52','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/anchor-bracelet-brown-free-img.jpg',0,'attachment','image/jpeg',0),
	(18,1,'2019-08-28 15:25:53','2019-08-28 13:25:53','','anchor-bracelet-red-free-img','','inherit','open','closed','','anchor-bracelet-red-free-img','','','2019-08-28 15:25:53','2019-08-28 13:25:53','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/anchor-bracelet-red-free-img.jpg',0,'attachment','image/jpeg',0),
	(19,1,'2019-08-28 15:25:54','2019-08-28 13:25:54','','appstore-free-img-300x90-300x90','','inherit','open','closed','','appstore-free-img-300x90-300x90','','','2019-08-28 15:25:54','2019-08-28 13:25:54','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/appstore-free-img-300x90-300x90.png',0,'attachment','image/png',0),
	(20,1,'2019-08-28 15:25:55','2019-08-28 13:25:55','','aqua-wind-breaker-1-free-img','','inherit','open','closed','','aqua-wind-breaker-1-free-img','','','2019-08-28 15:25:55','2019-08-28 13:25:55','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/aqua-wind-breaker-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(21,1,'2019-08-28 15:25:56','2019-08-28 13:25:56','','aqua-wind-breaker-2-free-img','','inherit','open','closed','','aqua-wind-breaker-2-free-img','','','2019-08-28 15:25:56','2019-08-28 13:25:56','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/aqua-wind-breaker-2-free-img.jpg',0,'attachment','image/jpeg',0),
	(22,1,'2019-08-28 15:25:57','2019-08-28 13:25:57','','aqua-wind-breaker-3-free-img','','inherit','open','closed','','aqua-wind-breaker-3-free-img','','','2019-08-28 15:25:57','2019-08-28 13:25:57','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/aqua-wind-breaker-3-free-img.jpg',0,'attachment','image/jpeg',0),
	(23,1,'2019-08-28 15:25:59','2019-08-28 13:25:59','','beautiful-1274056-1024x768','','inherit','open','closed','','beautiful-1274056-1024x768','','','2019-08-28 15:25:59','2019-08-28 13:25:59','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/beautiful-1274056-1024x768.jpg',0,'attachment','image/jpeg',0),
	(24,1,'2019-08-28 15:26:00','2019-08-28 13:26:00','','black-over-the-shoulder-bag-1-free-img','','inherit','open','closed','','black-over-the-shoulder-bag-1-free-img','','','2019-08-28 15:26:00','2019-08-28 13:26:00','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/black-over-the-shoulder-bag-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(25,1,'2019-08-28 15:26:01','2019-08-28 13:26:01','','black-over-the-shoulder-bag-free-img','','inherit','open','closed','','black-over-the-shoulder-bag-free-img','','','2019-08-28 15:26:01','2019-08-28 13:26:01','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/black-over-the-shoulder-bag-free-img.jpg',0,'attachment','image/jpeg',0),
	(26,1,'2019-08-28 15:26:02','2019-08-28 13:26:02','','black-shoes-green-led-1-free-img-768x768-768x768','','inherit','open','closed','','black-shoes-green-led-1-free-img-768x768-768x768','','','2019-08-28 15:26:02','2019-08-28 13:26:02','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/black-shoes-green-led-1-free-img-768x768-768x768.jpg',0,'attachment','image/jpeg',0),
	(27,1,'2019-08-28 15:26:03','2019-08-28 13:26:03','','black-shoes-green-led-2-free-img-768x768','','inherit','open','closed','','black-shoes-green-led-2-free-img-768x768','','','2019-08-28 15:26:03','2019-08-28 13:26:03','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/black-shoes-green-led-2-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(28,1,'2019-08-28 15:26:05','2019-08-28 13:26:05','','black-sleevless-1-free-img','','inherit','open','closed','','black-sleevless-1-free-img','','','2019-08-28 15:26:05','2019-08-28 13:26:05','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/black-sleevless-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(29,1,'2019-08-28 15:26:06','2019-08-28 13:26:06','','black-sleevless-2-free-img','','inherit','open','closed','','black-sleevless-2-free-img','','','2019-08-28 15:26:06','2019-08-28 13:26:06','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/black-sleevless-2-free-img.jpg',0,'attachment','image/jpeg',0),
	(30,1,'2019-08-28 15:26:07','2019-08-28 13:26:07','','black-washed-1-free-img-768x768','','inherit','open','closed','','black-washed-1-free-img-768x768','','','2019-08-28 15:26:07','2019-08-28 13:26:07','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/black-washed-1-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(31,1,'2019-08-28 15:26:08','2019-08-28 13:26:08','','blue-basic-jeans-1-free-img-768x768','','inherit','open','closed','','blue-basic-jeans-1-free-img-768x768','','','2019-08-28 15:26:08','2019-08-28 13:26:08','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/blue-basic-jeans-1-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(32,1,'2019-08-28 15:26:09','2019-08-28 13:26:09','','blue-basic-jeans-2-free-img-768x768','','inherit','open','closed','','blue-basic-jeans-2-free-img-768x768','','','2019-08-28 15:26:09','2019-08-28 13:26:09','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/blue-basic-jeans-2-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(33,1,'2019-08-28 15:26:10','2019-08-28 13:26:10','','blue-denim-2-free-img-1024x1024','','inherit','open','closed','','blue-denim-2-free-img-1024x1024','','','2019-08-28 15:26:10','2019-08-28 13:26:10','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/blue-denim-2-free-img-1024x1024.jpg',0,'attachment','image/jpeg',0),
	(34,1,'2019-08-28 15:26:12','2019-08-28 13:26:12','','blue-jeans-1-free-img-768x768','','inherit','open','closed','','blue-jeans-1-free-img-768x768','','','2019-08-28 15:26:12','2019-08-28 13:26:12','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/blue-jeans-1-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(35,1,'2019-08-28 15:26:13','2019-08-28 13:26:13','','blue-jeans-2-free-img-768x768','','inherit','open','closed','','blue-jeans-2-free-img-768x768','','','2019-08-28 15:26:13','2019-08-28 13:26:13','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/blue-jeans-2-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(36,1,'2019-08-28 15:26:14','2019-08-28 13:26:14','','blue-men-shoes-1-free-img','','inherit','open','closed','','blue-men-shoes-1-free-img','','','2019-08-28 15:26:14','2019-08-28 13:26:14','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/blue-men-shoes-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(37,1,'2019-08-28 15:26:15','2019-08-28 13:26:15','','blue-men-shoes-2-free-img','','inherit','open','closed','','blue-men-shoes-2-free-img','','','2019-08-28 15:26:15','2019-08-28 13:26:15','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/blue-men-shoes-2-free-img.jpg',0,'attachment','image/jpeg',0),
	(38,1,'2019-08-28 15:26:16','2019-08-28 13:26:16','','blue-wind-breaker-1-free-img','','inherit','open','closed','','blue-wind-breaker-1-free-img','','','2019-08-28 15:26:16','2019-08-28 13:26:16','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/blue-wind-breaker-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(39,1,'2019-08-28 15:26:17','2019-08-28 13:26:17','','blue-wind-breaker-2-free-img','','inherit','open','closed','','blue-wind-breaker-2-free-img','','','2019-08-28 15:26:17','2019-08-28 13:26:17','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/blue-wind-breaker-2-free-img.jpg',0,'attachment','image/jpeg',0),
	(40,1,'2019-08-28 15:26:19','2019-08-28 13:26:19','','boho-bangle-bracelet-side-free-img','','inherit','open','closed','','boho-bangle-bracelet-side-free-img','','','2019-08-28 15:26:19','2019-08-28 13:26:19','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/boho-bangle-bracelet-side-free-img.jpg',0,'attachment','image/jpeg',0),
	(41,1,'2019-08-28 15:26:20','2019-08-28 13:26:20','','boho-bangle-bracelet-top-free-img','','inherit','open','closed','','boho-bangle-bracelet-top-free-img','','','2019-08-28 15:26:20','2019-08-28 13:26:20','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/boho-bangle-bracelet-top-free-img.jpg',0,'attachment','image/jpeg',0),
	(42,1,'2019-08-28 15:26:21','2019-08-28 13:26:21','','bonding-1985863-1024x565','','inherit','open','closed','','bonding-1985863-1024x565','','','2019-08-28 15:26:21','2019-08-28 13:26:21','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/bonding-1985863-1024x565.jpg',0,'attachment','image/jpeg',0),
	(43,1,'2019-08-28 15:26:22','2019-08-28 13:26:22','','bright-purse-1-free-img','','inherit','open','closed','','bright-purse-1-free-img','','','2019-08-28 15:26:22','2019-08-28 13:26:22','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/bright-purse-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(44,1,'2019-08-28 15:26:24','2019-08-28 13:26:24','','bright-purse-2-free-img','','inherit','open','closed','','bright-purse-2-free-img','','','2019-08-28 15:26:24','2019-08-28 13:26:24','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/bright-purse-2-free-img.jpg',0,'attachment','image/jpeg',0),
	(45,1,'2019-08-28 15:26:25','2019-08-28 13:26:25','','bright-purse-3-free-img','','inherit','open','closed','','bright-purse-3-free-img','','','2019-08-28 15:26:25','2019-08-28 13:26:25','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/bright-purse-3-free-img.jpg',0,'attachment','image/jpeg',0),
	(46,1,'2019-08-28 15:26:26','2019-08-28 13:26:26','','brown-basic-top-1-free-img-768x768','','inherit','open','closed','','brown-basic-top-1-free-img-768x768','','','2019-08-28 15:26:26','2019-08-28 13:26:26','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/brown-basic-top-1-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(47,1,'2019-08-28 15:26:27','2019-08-28 13:26:27','','brown-blazer-jacket-1-free-img-1-768x768','','inherit','open','closed','','brown-blazer-jacket-1-free-img-1-768x768','','','2019-08-28 15:26:27','2019-08-28 13:26:27','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/brown-blazer-jacket-1-free-img-1-768x768.jpg',0,'attachment','image/jpeg',0),
	(48,1,'2019-08-28 15:26:28','2019-08-28 13:26:28','','brown-blazer-jacket-2-free-img-600x600','','inherit','open','closed','','brown-blazer-jacket-2-free-img-600x600','','','2019-08-28 15:26:28','2019-08-28 13:26:28','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/brown-blazer-jacket-2-free-img-600x600.jpg',0,'attachment','image/jpeg',0),
	(49,1,'2019-08-28 15:26:29','2019-08-28 13:26:29','','brown-blazer-jacket-3-free-img-768x768','','inherit','open','closed','','brown-blazer-jacket-3-free-img-768x768','','','2019-08-28 15:26:29','2019-08-28 13:26:29','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/brown-blazer-jacket-3-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(50,1,'2019-08-28 15:26:30','2019-08-28 13:26:30','','brown-men-shoes-1-free-img','','inherit','open','closed','','brown-men-shoes-1-free-img','','','2019-08-28 15:26:30','2019-08-28 13:26:30','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/brown-men-shoes-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(51,1,'2019-08-28 15:26:32','2019-08-28 13:26:32','','brown-men-shoes-2-free-img','','inherit','open','closed','','brown-men-shoes-2-free-img','','','2019-08-28 15:26:32','2019-08-28 13:26:32','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/brown-men-shoes-2-free-img.jpg',0,'attachment','image/jpeg',0),
	(52,1,'2019-08-28 15:26:33','2019-08-28 13:26:33','','buddha-bracelet-side-free-img','','inherit','open','closed','','buddha-bracelet-side-free-img','','','2019-08-28 15:26:33','2019-08-28 13:26:33','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/buddha-bracelet-side-free-img.jpg',0,'attachment','image/jpeg',0),
	(53,1,'2019-08-28 15:26:34','2019-08-28 13:26:34','','buddha-bracelet-top-free-img','','inherit','open','closed','','buddha-bracelet-top-free-img','','','2019-08-28 15:26:34','2019-08-28 13:26:34','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/buddha-bracelet-top-free-img.jpg',0,'attachment','image/jpeg',0),
	(54,1,'2019-08-28 15:26:35','2019-08-28 13:26:35','','clock-3274366_1920-1024x615','','inherit','open','closed','','clock-3274366_1920-1024x615','','','2019-08-28 15:26:35','2019-08-28 13:26:35','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/clock-3274366_1920-1024x615.jpg',0,'attachment','image/jpeg',0),
	(55,1,'2019-08-28 15:26:37','2019-08-28 13:26:37','','contact_us_banner1','','inherit','open','closed','','contact_us_banner1','','','2019-08-28 15:26:37','2019-08-28 13:26:37','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/contact_us_banner1.jpg',0,'attachment','image/jpeg',0),
	(56,1,'2019-08-28 15:26:38','2019-08-28 13:26:38','','COOL-STORE-Fashion','','inherit','open','closed','','cool-store-fashion','','','2019-08-28 15:26:38','2019-08-28 13:26:38','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/COOL-STORE-Fashion.png',0,'attachment','image/png',0),
	(57,1,'2019-08-28 15:26:39','2019-08-28 13:26:39','','gray-basic-jeans-1-free-img','','inherit','open','closed','','gray-basic-jeans-1-free-img','','','2019-08-28 15:26:39','2019-08-28 13:26:39','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/gray-basic-jeans-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(58,1,'2019-08-28 15:26:40','2019-08-28 13:26:40','','gray-men-shoes-1-free-img','','inherit','open','closed','','gray-men-shoes-1-free-img','','','2019-08-28 15:26:40','2019-08-28 13:26:40','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/gray-men-shoes-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(59,1,'2019-08-28 15:26:41','2019-08-28 13:26:41','','gray-men-shoes-2-free-img','','inherit','open','closed','','gray-men-shoes-2-free-img','','','2019-08-28 15:26:41','2019-08-28 13:26:41','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/gray-men-shoes-2-free-img.jpg',0,'attachment','image/jpeg',0),
	(60,1,'2019-08-28 15:26:42','2019-08-28 13:26:42','','green-wind-breaker-1-free-img','','inherit','open','closed','','green-wind-breaker-1-free-img','','','2019-08-28 15:26:42','2019-08-28 13:26:42','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/green-wind-breaker-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(61,1,'2019-08-28 15:26:44','2019-08-28 13:26:44','','green-wind-breaker-2-free-img','','inherit','open','closed','','green-wind-breaker-2-free-img','','','2019-08-28 15:26:44','2019-08-28 13:26:44','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/green-wind-breaker-2-free-img.jpg',0,'attachment','image/jpeg',0),
	(62,1,'2019-08-28 15:26:45','2019-08-28 13:26:45','','hoodie_2_back-768x768','','inherit','open','closed','','hoodie_2_back-768x768','','','2019-08-28 15:26:45','2019-08-28 13:26:45','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/hoodie_2_back-768x768.jpg',0,'attachment','image/jpeg',0),
	(63,1,'2019-08-28 15:26:46','2019-08-28 13:26:46','','hoodie_2_front-768x768','','inherit','open','closed','','hoodie_2_front-768x768','','','2019-08-28 15:26:46','2019-08-28 13:26:46','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/hoodie_2_front-768x768.jpg',0,'attachment','image/jpeg',0),
	(64,1,'2019-08-28 15:26:47','2019-08-28 13:26:47','','hoodie_4_back-768x768','','inherit','open','closed','','hoodie_4_back-768x768','','','2019-08-28 15:26:47','2019-08-28 13:26:47','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/hoodie_4_back-768x768.jpg',0,'attachment','image/jpeg',0),
	(65,1,'2019-08-28 15:26:48','2019-08-28 13:26:48','','hoodie_4_front-768x768','','inherit','open','closed','','hoodie_4_front-768x768','','','2019-08-28 15:26:48','2019-08-28 13:26:48','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/hoodie_4_front-768x768.jpg',0,'attachment','image/jpeg',0),
	(66,1,'2019-08-28 15:26:49','2019-08-28 13:26:49','','hoodie_6_back','','inherit','open','closed','','hoodie_6_back','','','2019-08-28 15:26:49','2019-08-28 13:26:49','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/hoodie_6_back.jpg',0,'attachment','image/jpeg',0),
	(67,1,'2019-08-28 15:26:50','2019-08-28 13:26:50','','hoodie_6_front','','inherit','open','closed','','hoodie_6_front','','','2019-08-28 15:26:50','2019-08-28 13:26:50','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/hoodie_6_front.jpg',0,'attachment','image/jpeg',0),
	(68,1,'2019-08-28 15:26:52','2019-08-28 13:26:52','','lemon-bag-1-free-img','','inherit','open','closed','','lemon-bag-1-free-img','','','2019-08-28 15:26:52','2019-08-28 13:26:52','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/lemon-bag-1-free-img.jpg',0,'attachment','image/jpeg',0),
	(69,1,'2019-08-28 15:26:53','2019-08-28 13:26:53','','lemon-bag-2-free-img','','inherit','open','closed','','lemon-bag-2-free-img','','','2019-08-28 15:26:53','2019-08-28 13:26:53','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/lemon-bag-2-free-img.jpg',0,'attachment','image/jpeg',0),
	(70,1,'2019-08-28 15:26:55','2019-08-28 13:26:55','','lemon-bag-3-free-img','','inherit','open','closed','','lemon-bag-3-free-img','','','2019-08-28 15:26:55','2019-08-28 13:26:55','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/lemon-bag-3-free-img.jpg',0,'attachment','image/jpeg',0),
	(71,1,'2019-08-28 15:26:56','2019-08-28 13:26:56','','light-brown-clutch-1-free-img-600x600','','inherit','open','closed','','light-brown-clutch-1-free-img-600x600','','','2019-08-28 15:26:56','2019-08-28 13:26:56','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/light-brown-clutch-1-free-img-600x600.jpg',0,'attachment','image/jpeg',0),
	(72,1,'2019-08-28 15:26:57','2019-08-28 13:26:57','','men-fashion-free-img','','inherit','open','closed','','men-fashion-free-img','','','2019-08-28 15:26:57','2019-08-28 13:26:57','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/men-fashion-free-img.jpg',0,'attachment','image/jpeg',0),
	(73,1,'2019-08-28 15:26:58','2019-08-28 13:26:58','','model-2911330_1920','','inherit','open','closed','','model-2911330_1920','','','2019-08-28 15:26:58','2019-08-28 13:26:58','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/model-2911330_1920.jpg',0,'attachment','image/jpeg',0),
	(74,1,'2019-08-28 15:27:00','2019-08-28 13:27:00','','movement-1392753_1920','','inherit','open','closed','','movement-1392753_1920','','','2019-08-28 15:27:00','2019-08-28 13:27:00','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/movement-1392753_1920.jpg',0,'attachment','image/jpeg',0),
	(75,1,'2019-08-28 15:27:01','2019-08-28 13:27:01','','playstore-free-img-300x90-262x90','','inherit','open','closed','','playstore-free-img-300x90-262x90','','','2019-08-28 15:27:01','2019-08-28 13:27:01','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/playstore-free-img-300x90-262x90.png',0,'attachment','image/png',0),
	(76,1,'2019-08-28 15:27:02','2019-08-28 13:27:02','','T_3_back','','inherit','open','closed','','t_3_back','','','2019-08-28 15:27:02','2019-08-28 13:27:02','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/T_3_back.jpg',0,'attachment','image/jpeg',0),
	(77,1,'2019-08-28 15:27:03','2019-08-28 13:27:03','','T_3_front','','inherit','open','closed','','t_3_front','','','2019-08-28 15:27:03','2019-08-28 13:27:03','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/T_3_front.jpg',0,'attachment','image/jpeg',0),
	(78,1,'2019-08-28 15:27:05','2019-08-28 13:27:05','','T_4_back','','inherit','open','closed','','t_4_back','','','2019-08-28 15:27:05','2019-08-28 13:27:05','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/T_4_back.jpg',0,'attachment','image/jpeg',0),
	(79,1,'2019-08-28 15:27:06','2019-08-28 13:27:06','','T_4_front1','','inherit','open','closed','','t_4_front1','','','2019-08-28 15:27:06','2019-08-28 13:27:06','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/T_4_front1.jpg',0,'attachment','image/jpeg',0),
	(80,1,'2019-08-28 15:27:07','2019-08-28 13:27:07','','three-3075752','','inherit','open','closed','','three-3075752','','','2019-08-28 15:27:07','2019-08-28 13:27:07','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/three-3075752.jpg',0,'attachment','image/jpeg',0),
	(81,1,'2019-08-28 15:27:13','2019-08-28 13:27:13','','torn-jeans-1-free-img-1-768x768','','inherit','open','closed','','torn-jeans-1-free-img-1-768x768','','','2019-08-28 15:27:13','2019-08-28 13:27:13','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/torn-jeans-1-free-img-1-768x768.jpg',0,'attachment','image/jpeg',0),
	(82,1,'2019-08-28 15:27:14','2019-08-28 13:27:14','','torn-jeans-1-free-img-1','','inherit','open','closed','','torn-jeans-1-free-img-1','','','2019-08-28 15:27:14','2019-08-28 13:27:14','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/torn-jeans-1-free-img-1.jpg',0,'attachment','image/jpeg',0),
	(83,1,'2019-08-28 15:27:15','2019-08-28 13:27:15','','torn-jeans-1-free-img-768x768','','inherit','open','closed','','torn-jeans-1-free-img-768x768','','','2019-08-28 15:27:15','2019-08-28 13:27:15','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/torn-jeans-1-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(84,1,'2019-08-28 15:27:16','2019-08-28 13:27:16','','torn-jeans-2-free-img-1-768x768','','inherit','open','closed','','torn-jeans-2-free-img-1-768x768','','','2019-08-28 15:27:16','2019-08-28 13:27:16','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/torn-jeans-2-free-img-1-768x768.jpg',0,'attachment','image/jpeg',0),
	(85,1,'2019-08-28 15:27:17','2019-08-28 13:27:17','','torn-jeans-3-free-img-768x768','','inherit','open','closed','','torn-jeans-3-free-img-768x768','','','2019-08-28 15:27:17','2019-08-28 13:27:17','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/torn-jeans-3-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(86,1,'2019-08-28 15:27:19','2019-08-28 13:27:19','','white-basic-top-1-free-img-768x768','','inherit','open','closed','','white-basic-top-1-free-img-768x768','','','2019-08-28 15:27:19','2019-08-28 13:27:19','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/white-basic-top-1-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(87,1,'2019-08-28 15:27:20','2019-08-28 13:27:20','','white-basic-top-2-free-img-768x768','','inherit','open','closed','','white-basic-top-2-free-img-768x768','','','2019-08-28 15:27:20','2019-08-28 13:27:20','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/white-basic-top-2-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(88,1,'2019-08-28 15:27:21','2019-08-28 13:27:21','','white-sleevless-2-free-img-768x768','','inherit','open','closed','','white-sleevless-2-free-img-768x768','','','2019-08-28 15:27:21','2019-08-28 13:27:21','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/white-sleevless-2-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(89,1,'2019-08-28 15:27:22','2019-08-28 13:27:22','','white-top-2-free-img-768x768','','inherit','open','closed','','white-top-2-free-img-768x768','','','2019-08-28 15:27:22','2019-08-28 13:27:22','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/white-top-2-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(90,1,'2019-08-28 15:27:23','2019-08-28 13:27:23','','women-fashion-free-img-600x600','','inherit','open','closed','','women-fashion-free-img-600x600','','','2019-08-28 15:27:23','2019-08-28 13:27:23','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/women-fashion-free-img-600x600.jpg',0,'attachment','image/jpeg',0),
	(91,1,'2019-08-28 15:27:24','2019-08-28 13:27:24','','women-jacket-free-img-600x600','','inherit','open','closed','','women-jacket-free-img-600x600','','','2019-08-28 15:27:24','2019-08-28 13:27:24','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/women-jacket-free-img-600x600.jpg',0,'attachment','image/jpeg',0),
	(92,1,'2019-08-28 15:27:25','2019-08-28 13:27:25','','wrist-watch-3072760_1920','','inherit','open','closed','','wrist-watch-3072760_1920','','','2019-08-28 15:27:25','2019-08-28 13:27:25','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/wrist-watch-3072760_1920.jpg',0,'attachment','image/jpeg',0),
	(93,1,'2019-08-28 15:27:26','2019-08-28 13:27:26','','yellow-basic-top-1-free-img-768x768','','inherit','open','closed','','yellow-basic-top-1-free-img-768x768','','','2019-08-28 15:27:26','2019-08-28 13:27:26','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/yellow-basic-top-1-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(94,1,'2019-08-28 15:27:27','2019-08-28 13:27:27','','yellow-basic-top-2-free-img-768x768','','inherit','open','closed','','yellow-basic-top-2-free-img-768x768','','','2019-08-28 15:27:27','2019-08-28 13:27:27','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/yellow-basic-top-2-free-img-768x768.jpg',0,'attachment','image/jpeg',0),
	(95,1,'2019-08-29 12:23:17','2019-08-29 10:23:17','A fancy t-shirt for boys.','Skull T-Shirt','A fancy well designed t-shirt for boys.','publish','open','closed','','skull-t-shirt','','','2019-08-30 16:14:57','2019-08-30 14:14:57','',0,'http://woocommerce.test:8888/?post_type=product&#038;p=95',0,'product','',0),
	(96,1,'2019-08-28 15:32:57','2019-08-28 13:32:57','','Skull T-Shirt - Black, Large','Color: Black, Size: Large','publish','closed','closed','','skull-t-shirt-large-black','','','2019-08-28 15:35:07','2019-08-28 13:35:07','',95,'http://woocommerce.test:8888/?post_type=product_variation&p=96',1,'product_variation','',0),
	(97,1,'2019-08-28 15:32:57','2019-08-28 13:32:57','','Skull T-Shirt - Black, Medium','Color: Black, Size: Medium','publish','closed','closed','','skull-t-shirt-medium-black','','','2019-08-28 15:35:07','2019-08-28 13:35:07','',95,'http://woocommerce.test:8888/?post_type=product_variation&p=97',2,'product_variation','',0),
	(98,1,'2019-08-28 15:32:57','2019-08-28 13:32:57','','Skull T-Shirt - Black, Small','Color: Black, Size: Small','publish','closed','closed','','skull-t-shirt-small-black','','','2019-08-28 15:35:07','2019-08-28 13:35:07','',95,'http://woocommerce.test:8888/?post_type=product_variation&p=98',3,'product_variation','',0),
	(99,1,'2019-08-28 15:32:57','2019-08-28 13:32:57','','Skull T-Shirt - Green, Large','Color: Green, Size: Large','publish','closed','closed','','skull-t-shirt-large-green','','','2019-08-28 15:35:07','2019-08-28 13:35:07','',95,'http://woocommerce.test:8888/?post_type=product_variation&p=99',4,'product_variation','',0),
	(100,1,'2019-08-28 15:32:57','2019-08-28 13:32:57','','Skull T-Shirt - Green, Medium','Color: Green, Size: Medium','publish','closed','closed','','skull-t-shirt-medium-green','','','2019-08-28 15:35:07','2019-08-28 13:35:07','',95,'http://woocommerce.test:8888/?post_type=product_variation&p=100',5,'product_variation','',0),
	(101,1,'2019-08-28 15:32:57','2019-08-28 13:32:57','','Skull T-Shirt - Green, Small','Color: Green, Size: Small','publish','closed','closed','','skull-t-shirt-small-green','','','2019-08-28 15:35:07','2019-08-28 13:35:07','',95,'http://woocommerce.test:8888/?post_type=product_variation&p=101',6,'product_variation','',0),
	(102,1,'2019-08-28 15:51:49','2019-08-28 13:51:49','A cool hoody.','Cool Hoody','A cool hoody from woo commerce.','publish','open','closed','','cool-hoody','','','2019-08-30 16:15:08','2019-08-30 14:15:08','',0,'http://woocommerce.test:8888/?post_type=product&#038;p=102',0,'product','',0),
	(106,1,'2019-08-28 15:40:57','2019-08-28 13:40:57','','Cool Hoody - Gray, Large','Color: Gray, Size: Large','publish','closed','closed','','woo-hoodie-large-gray','','','2019-08-28 15:43:05','2019-08-28 13:43:05','',102,'http://woocommerce.test:8888/?post_type=product_variation&p=106',4,'product_variation','',0),
	(107,1,'2019-08-28 15:40:57','2019-08-28 13:40:57','','Cool Hoody - Gray, Medium','Color: Gray, Size: Medium','publish','closed','closed','','woo-hoodie-medium-gray','','','2019-08-28 15:43:05','2019-08-28 13:43:05','',102,'http://woocommerce.test:8888/?post_type=product_variation&p=107',5,'product_variation','',0),
	(108,1,'2019-08-28 15:40:57','2019-08-28 13:40:57','','Cool Hoody - Gray, Small','Color: Gray, Size: Small','publish','closed','closed','','woo-hoodie-small-gray','','','2019-08-28 15:43:05','2019-08-28 13:43:05','',102,'http://woocommerce.test:8888/?post_type=product_variation&p=108',6,'product_variation','',0),
	(109,1,'2019-08-28 15:40:57','2019-08-28 13:40:57','','Cool Hoody - Red, Large','Color: Red, Size: Large','publish','closed','closed','','woo-hoodie-large-red','','','2019-08-28 15:43:05','2019-08-28 13:43:05','',102,'http://woocommerce.test:8888/?post_type=product_variation&p=109',7,'product_variation','',0),
	(110,1,'2019-08-28 15:40:57','2019-08-28 13:40:57','','Cool Hoody - Red, Medium','Color: Red, Size: Medium','publish','closed','closed','','woo-hoodie-medium-red','','','2019-08-28 15:43:05','2019-08-28 13:43:05','',102,'http://woocommerce.test:8888/?post_type=product_variation&p=110',8,'product_variation','',0),
	(111,1,'2019-08-28 15:40:57','2019-08-28 13:40:57','','Cool Hoody - Red, Small','Color: Red, Size: Small','publish','closed','closed','','woo-hoodie-small-red','','','2019-08-28 15:43:05','2019-08-28 13:43:05','',102,'http://woocommerce.test:8888/?post_type=product_variation&p=111',9,'product_variation','',0),
	(112,1,'2019-08-28 15:51:41','2019-08-28 13:51:41','A woo commerce hoody.','Woo Hoody','','publish','open','closed','','woo-hoody','','','2019-08-30 16:15:21','2019-08-30 14:15:21','',0,'http://woocommerce.test:8888/?post_type=product&#038;p=112',0,'product','',0),
	(113,1,'2019-08-28 15:48:01','2019-08-28 13:48:01','','Woo Hoody - Large','Size: Large','publish','closed','closed','','woo-hoody-large','','','2019-08-28 15:48:38','2019-08-28 13:48:38','',112,'http://woocommerce.test:8888/?post_type=product_variation&p=113',1,'product_variation','',0),
	(114,1,'2019-08-28 15:48:02','2019-08-28 13:48:02','','Woo Hoody - Medium','Size: Medium','publish','closed','closed','','woo-hoody-medium','','','2019-08-28 15:48:38','2019-08-28 13:48:38','',112,'http://woocommerce.test:8888/?post_type=product_variation&p=114',2,'product_variation','',0),
	(115,1,'2019-08-28 15:48:02','2019-08-28 13:48:02','','Woo Hoody - Small','Size: Small','publish','closed','closed','','woo-hoody-small','','','2019-08-28 15:48:38','2019-08-28 13:48:38','',112,'http://woocommerce.test:8888/?post_type=product_variation&p=115',3,'product_variation','',0),
	(116,1,'2019-08-30 16:14:40','2019-08-30 14:14:40','A range of classy hoodies for men.','Hoody','A range of classy hoodies for men. Comes in different colors and styles.','publish','open','closed','','hoody','','','2019-08-30 16:14:41','2019-08-30 14:14:41','',0,'http://woocommerce.test:8888/?post_type=product&#038;p=116',0,'product','',0),
	(119,1,'2019-08-29 12:21:23','2019-08-29 10:21:23','','AVENGERS19','','publish','closed','closed','','avengers19','','','2019-08-29 12:21:23','2019-08-29 10:21:23','',0,'http://woocommerce.test:8888/?post_type=shop_coupon&#038;p=119',0,'shop_coupon','',0),
	(120,1,'2019-08-30 16:01:53','2019-08-30 14:01:53','','Order &ndash; August 30, 2019 @ 04:01 PM','','wc-completed','closed','closed','wc_order_Af3Udnzzgyves','bestellung-30-aug-2019-um-1401','','','2019-08-30 16:02:36','2019-08-30 14:02:36','',0,'http://woocommerce.test:8888/?post_type=shop_order&#038;p=120',0,'shop_order','',1),
	(121,1,'2019-08-30 16:06:00','2019-08-30 14:06:00','Sorry wrong size!','Others','','hr-refund-new','closed','closed','','others','','','2019-08-30 16:06:00','2019-08-30 14:06:00','',0,'http://woocommerce.test:8888/hr_refund_request/others/',0,'hr_refund_request','',0),
	(122,1,'2019-08-30 16:17:55','0000-00-00 00:00:00','','Startseite','','draft','closed','closed','','','','','2019-08-30 16:17:55','0000-00-00 00:00:00','',0,'http://woocommerce.test:8888/?p=122',1,'nav_menu_item','',0),
	(123,1,'2019-08-30 16:17:55','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-08-30 16:17:55','0000-00-00 00:00:00','',0,'http://woocommerce.test:8888/?p=123',1,'nav_menu_item','',0),
	(124,1,'2019-08-30 16:18:50','2019-08-30 14:18:50',' ','','','publish','closed','closed','','124','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',0,'http://woocommerce.test:8888/?p=124',2,'nav_menu_item','',0),
	(125,1,'2019-08-30 16:18:50','2019-08-30 14:18:50',' ','','','publish','closed','closed','','125','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',0,'http://woocommerce.test:8888/?p=125',1,'nav_menu_item','',0),
	(126,1,'2019-08-30 16:18:50','2019-08-30 14:18:50',' ','','','publish','closed','closed','','126','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',0,'http://woocommerce.test:8888/?p=126',3,'nav_menu_item','',0),
	(127,1,'2019-08-30 16:18:50','2019-08-30 14:18:50',' ','','','publish','closed','closed','','127','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',0,'http://woocommerce.test:8888/?p=127',4,'nav_menu_item','',0),
	(128,1,'2019-08-30 16:20:22','2019-08-30 14:20:22','http://woocommerce.test:8888/wp-content/uploads/2019/08/cropped-COOL-STORE-Fashion.png','cropped-COOL-STORE-Fashion.png','','inherit','open','closed','','cropped-cool-store-fashion-png','','','2019-08-30 16:20:22','2019-08-30 14:20:22','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/cropped-COOL-STORE-Fashion.png',0,'attachment','image/png',0),
	(129,1,'2019-08-30 16:20:42','2019-08-30 14:20:42','http://woocommerce.test:8888/wp-content/uploads/2019/08/cropped-COOL-STORE-Fashion-1.png','cropped-COOL-STORE-Fashion-1.png','','inherit','open','closed','','cropped-cool-store-fashion-1-png','','','2019-08-30 16:20:42','2019-08-30 14:20:42','',0,'http://woocommerce.test:8888/wp-content/uploads/2019/08/cropped-COOL-STORE-Fashion-1.png',0,'attachment','image/png',0),
	(131,1,'2019-08-30 16:24:23','2019-08-30 14:24:23',' ','','','publish','closed','closed','','131','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',0,'http://woocommerce.test:8888/?p=131',5,'nav_menu_item','',0),
	(132,1,'2019-08-30 16:24:23','2019-08-30 14:24:23',' ','','','publish','closed','closed','','132','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',24,'http://woocommerce.test:8888/?p=132',10,'nav_menu_item','',0),
	(133,1,'2019-08-30 16:24:23','2019-08-30 14:24:23',' ','','','publish','closed','closed','','133','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',24,'http://woocommerce.test:8888/?p=133',9,'nav_menu_item','',0),
	(134,1,'2019-08-30 16:24:23','2019-08-30 14:24:23',' ','','','publish','closed','closed','','134','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',24,'http://woocommerce.test:8888/?p=134',8,'nav_menu_item','',0),
	(135,1,'2019-08-30 16:24:23','2019-08-30 14:24:23',' ','','','publish','closed','closed','','135','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',24,'http://woocommerce.test:8888/?p=135',7,'nav_menu_item','',0),
	(136,1,'2019-08-30 16:24:23','2019-08-30 14:24:23',' ','','','publish','closed','closed','','136','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',24,'http://woocommerce.test:8888/?p=136',6,'nav_menu_item','',0),
	(137,1,'2019-08-30 16:24:23','2019-08-30 14:24:23',' ','','','publish','closed','closed','','137','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',0,'http://woocommerce.test:8888/?p=137',11,'nav_menu_item','',0),
	(138,1,'2019-08-30 16:24:23','2019-08-30 14:24:23',' ','','','publish','closed','closed','','138','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',25,'http://woocommerce.test:8888/?p=138',14,'nav_menu_item','',0),
	(139,1,'2019-08-30 16:24:23','2019-08-30 14:24:23',' ','','','publish','closed','closed','','139','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',25,'http://woocommerce.test:8888/?p=139',13,'nav_menu_item','',0),
	(140,1,'2019-08-30 16:24:23','2019-08-30 14:24:23',' ','','','publish','closed','closed','','140','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',25,'http://woocommerce.test:8888/?p=140',12,'nav_menu_item','',0),
	(142,1,'2019-08-31 09:18:58','2019-08-31 07:18:58','<!-- wp:paragraph -->\n<p>Bei Fragen stehen wir gerne zur Verfügung.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[wpforms id=\"146\" title=\"false\" description=\"false\"]\n<!-- /wp:shortcode -->','Kontakt','','publish','closed','closed','','kontakt','','','2019-08-31 09:23:20','2019-08-31 07:23:20','',0,'http://woocommerce.test:8888/?page_id=142',0,'page','',0),
	(143,1,'2019-08-31 09:18:53','2019-08-31 07:18:53','','Kontakt','','inherit','closed','closed','','142-revision-v1','','','2019-08-31 09:18:53','2019-08-31 07:18:53','',142,'http://woocommerce.test:8888/2019/08/31/142-revision-v1/',0,'revision','',0),
	(144,1,'2019-08-31 09:19:34','2019-08-31 07:19:34','','Über uns','','publish','closed','closed','','ueber-uns','','','2019-08-31 09:19:35','2019-08-31 07:19:35','',0,'http://woocommerce.test:8888/?page_id=144',0,'page','',0),
	(145,1,'2019-08-31 09:19:34','2019-08-31 07:19:34','','Über uns','','inherit','closed','closed','','144-revision-v1','','','2019-08-31 09:19:34','2019-08-31 07:19:34','',144,'http://woocommerce.test:8888/2019/08/31/144-revision-v1/',0,'revision','',0),
	(146,1,'2019-08-31 09:20:35','2019-08-31 07:20:35','{\"id\":\"146\",\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"E-Mail\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Kommentar oder Nachricht\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\"}],\"settings\":{\"form_title\":\"Kontakt\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Absenden\",\"submit_text_processing\":\"Senden...\",\"submit_class\":\"\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"Neuer Eintrag: Einfaches Kontaktformular\",\"sender_name\":\"woocommerce\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Danke, dass du uns kontaktiert hast! Wir melden uns zeitnah bei dir.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"2\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"contact\"}}','Kontakt','','publish','closed','closed','','einfaches-kontaktformular','','','2019-08-31 09:21:33','2019-08-31 07:21:33','',0,'http://woocommerce.test:8888/?post_type=wpforms&#038;p=146',0,'wpforms','',0),
	(148,1,'2019-08-31 09:22:38','2019-08-31 07:22:38','<!-- wp:shortcode -->\n[wpforms id=\"146\" title=\"false\" description=\"false\"]\n<!-- /wp:shortcode -->','Kontakt','','inherit','closed','closed','','142-revision-v1','','','2019-08-31 09:22:38','2019-08-31 07:22:38','',142,'http://woocommerce.test:8888/2019/08/31/142-revision-v1/',0,'revision','',0),
	(149,1,'2019-08-31 09:23:19','2019-08-31 07:23:19','<!-- wp:paragraph -->\n<p>Bei Fragen stehen wir gerne zur Verfügung.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[wpforms id=\"146\" title=\"false\" description=\"false\"]\n<!-- /wp:shortcode -->','Kontakt','','inherit','closed','closed','','142-revision-v1','','','2019-08-31 09:23:19','2019-08-31 07:23:19','',142,'http://woocommerce.test:8888/2019/08/31/142-revision-v1/',0,'revision','',0),
	(150,1,'2019-08-31 09:32:56','2019-08-31 07:32:56',' ','','','publish','closed','closed','','150','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',0,'http://woocommerce.test:8888/?p=150',15,'nav_menu_item','',0),
	(151,1,'2019-08-31 09:32:56','2019-08-31 07:32:56',' ','','','publish','closed','closed','','151','','','2019-08-31 09:32:56','2019-08-31 07:32:56','',0,'http://woocommerce.test:8888/?p=151',16,'nav_menu_item','',0),
	(152,1,'2019-08-31 09:43:12','2019-08-31 07:43:12','','Christmas Sale','','publish','closed','closed','','christmas-sale','','','2019-08-31 09:44:22','2019-08-31 07:44:22','',0,'http://woocommerce.test:8888/?post_type=mts_notification_bar&#038;p=152',0,'mts_notification_bar','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_queue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_queue`;

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_smush_dir_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_smush_dir_images`;

CREATE TABLE `wp_smush_dir_images` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `file_time` int(10) unsigned DEFAULT NULL,
  `last_scan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `path_hash` (`path_hash`),
  KEY `image_size` (`image_size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(10,2,0),
	(10,16,0),
	(10,17,0),
	(10,18,0),
	(10,19,0),
	(10,24,0),
	(95,4,0),
	(95,20,0),
	(95,21,0),
	(95,22,0),
	(95,24,0),
	(102,4,0),
	(102,21,0),
	(102,23,0),
	(102,24,0),
	(102,26,0),
	(112,4,0),
	(112,21,0),
	(112,23,0),
	(112,24,0),
	(112,26,0),
	(116,3,0),
	(116,23,0),
	(116,24,0),
	(116,26,0),
	(124,32,0),
	(125,32,0),
	(126,32,0),
	(127,32,0),
	(131,32,0),
	(132,32,0),
	(133,32,0),
	(134,32,0),
	(135,32,0),
	(136,32,0),
	(137,32,0),
	(138,32,0),
	(139,32,0),
	(140,32,0),
	(150,32,0),
	(151,32,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'product_type','',0,1),
	(3,3,'product_type','',0,1),
	(4,4,'product_type','',0,3),
	(5,5,'product_type','',0,0),
	(6,6,'product_visibility','',0,0),
	(7,7,'product_visibility','',0,0),
	(8,8,'product_visibility','',0,0),
	(9,9,'product_visibility','',0,0),
	(10,10,'product_visibility','',0,0),
	(11,11,'product_visibility','',0,0),
	(12,12,'product_visibility','',0,0),
	(13,13,'product_visibility','',0,0),
	(14,14,'product_visibility','',0,0),
	(15,15,'product_cat','',0,0),
	(16,16,'product_shipping_class','Glas und andere leicht zerbrechliche Produkte',0,1),
	(17,17,'product_cat','',24,1),
	(18,18,'product_tag','',0,1),
	(19,19,'product_tag','',0,1),
	(20,20,'product_cat','',24,1),
	(21,21,'product_tag','',0,3),
	(22,22,'product_tag','',0,1),
	(23,23,'product_tag','',0,3),
	(24,24,'product_cat','',0,5),
	(25,25,'product_cat','',0,0),
	(26,26,'product_cat','',24,3),
	(27,27,'product_cat','',24,0),
	(28,28,'product_cat','',24,0),
	(29,29,'product_cat','',25,0),
	(30,30,'product_cat','',25,0),
	(31,31,'product_cat','',25,0),
	(32,32,'nav_menu','',0,16);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`)
VALUES
	(1,17,'order','0'),
	(2,17,'product_count_product_cat','1'),
	(3,18,'product_count_product_tag','1'),
	(4,19,'product_count_product_tag','1'),
	(5,15,'product_count_product_cat','0'),
	(6,20,'order','0'),
	(7,20,'product_count_product_cat','1'),
	(8,21,'product_count_product_tag','3'),
	(9,22,'product_count_product_tag','1'),
	(10,23,'product_count_product_tag','3'),
	(11,24,'order','0'),
	(12,24,'display_type',''),
	(13,24,'thumbnail_id','72'),
	(14,20,'display_type',''),
	(15,20,'thumbnail_id','79'),
	(16,25,'order','0'),
	(17,25,'display_type',''),
	(18,25,'thumbnail_id','29'),
	(19,26,'order','0'),
	(20,26,'display_type',''),
	(21,26,'thumbnail_id','67'),
	(22,27,'order','0'),
	(23,27,'display_type',''),
	(24,27,'thumbnail_id','51'),
	(25,28,'order','0'),
	(26,28,'display_type',''),
	(27,28,'thumbnail_id','47'),
	(28,29,'order','0'),
	(29,29,'display_type',''),
	(30,29,'thumbnail_id','18'),
	(31,30,'order','0'),
	(32,30,'display_type',''),
	(33,30,'thumbnail_id','70'),
	(34,31,'order','0'),
	(35,31,'display_type',''),
	(36,31,'thumbnail_id','57'),
	(37,17,'display_type',''),
	(38,17,'thumbnail_id','92'),
	(39,24,'product_count_product_cat','5'),
	(40,26,'product_count_product_cat','3');

/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Allgemein','allgemein',0),
	(2,'simple','simple',0),
	(3,'grouped','grouped',0),
	(4,'variable','variable',0),
	(5,'external','external',0),
	(6,'exclude-from-search','exclude-from-search',0),
	(7,'exclude-from-catalog','exclude-from-catalog',0),
	(8,'featured','featured',0),
	(9,'outofstock','outofstock',0),
	(10,'rated-1','rated-1',0),
	(11,'rated-2','rated-2',0),
	(12,'rated-3','rated-3',0),
	(13,'rated-4','rated-4',0),
	(14,'rated-5','rated-5',0),
	(15,'Unkategorisiert','unkategorisiert',0),
	(16,'Zerbrechlich','zerbrechlich',0),
	(17,'Watches','watches',0),
	(18,'luxury','luxury',0),
	(19,'watch','watch',0),
	(20,'T-Shirts','t-shirts',0),
	(21,'t-shirt','t-shirt',0),
	(22,'boys','boys',0),
	(23,'hoodie','hoodie',0),
	(24,'Men','men',0),
	(25,'Women','women',0),
	(26,'Hoodies','hoodies',0),
	(27,'Shoes','shoes',0),
	(28,'Jackets','jackets',0),
	(29,'Bracelets','bracelets',0),
	(30,'Bags','bags',0),
	(31,'Jeans','jeans',0),
	(32,'Main Menu','main-menu',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','admin'),
	(2,1,'first_name','Vorname'),
	(3,1,'last_name','Nachname'),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'syntax_highlighting','true'),
	(7,1,'comment_shortcuts','false'),
	(8,1,'admin_color','fresh'),
	(9,1,'use_ssl','0'),
	(10,1,'show_admin_bar_front','true'),
	(11,1,'locale',''),
	(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(13,1,'wp_user_level','10'),
	(14,1,'dismissed_wp_pointers',''),
	(15,1,'show_welcome_panel','0'),
	(16,1,'session_tokens','a:1:{s:64:\"7d9dcd80e1ad2aacec84520678593c57de73249c343d92ccf53017bb4f256d2d\";a:4:{s:10:\"expiration\";i:1567345822;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36\";s:5:\"login\";i:1567173022;}}'),
	(17,1,'wp_dashboard_quick_press_last_post_id','4'),
	(18,1,'_woocommerce_tracks_anon_id','woo:OgOYeRK+rPPrJY2q1GlDY8bJ'),
	(19,1,'wc_last_active','1567209600'),
	(20,1,'wp_user-settings','libraryContent=browse'),
	(21,1,'wp_user-settings-time','1566998895'),
	(22,1,'closedpostboxes_product','a:0:{}'),
	(23,1,'metaboxhidden_product','a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
	(25,1,'meta-box-order_shop_coupon','a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:23:\"woocommerce-coupon-data\";s:8:\"advanced\";s:0:\"\";}'),
	(26,1,'screen_layout_shop_coupon','2'),
	(28,1,'last_update','1567173756'),
	(29,1,'billing_first_name','Vorname'),
	(30,1,'billing_last_name','Nachname'),
	(31,1,'billing_address_1','Musterstraße 11'),
	(32,1,'billing_city','Musterstadt'),
	(33,1,'billing_postcode','66849'),
	(34,1,'billing_country','DE'),
	(35,1,'billing_email','diddlside@googlemail.com'),
	(36,1,'billing_phone','000000000000'),
	(37,1,'shipping_first_name','Vorname'),
	(38,1,'shipping_last_name','Nachname'),
	(39,1,'shipping_address_1','Musterstraße 11'),
	(40,1,'shipping_city','Musterstadt'),
	(41,1,'shipping_postcode','66849'),
	(42,1,'shipping_country','DE'),
	(43,1,'shipping_method','a:1:{i:0;s:14:\"local_pickup:2\";}'),
	(44,1,'paying_customer','1'),
	(45,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:0:{}}'),
	(46,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
	(47,1,'metaboxhidden_nav-menus','a:3:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_tag\";}'),
	(48,1,'nav_menu_recently_edited','32'),
	(49,1,'closedpostboxes_nav-menus','a:0:{}'),
	(50,1,'tgmpa_dismissed_notice_tgmpa','1'),
	(51,1,'dismissed_no_secure_connection_notice','1'),
	(52,1,'dismissed_wc_admin_notice','1'),
	(53,1,'closedpostboxes_dashboard','a:1:{i:0;s:27:\"wpforms_reports_widget_lite\";}'),
	(54,1,'metaboxhidden_dashboard','a:0:{}');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$P$BYx.kHxRdvC3sURz208yEU8OUs6c3k1','admin','diddlside@googlemail.com','','2019-08-28 09:16:04','',0,'admin');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_wc_download_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_download_log`;

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_wc_product_meta_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`)
VALUES
	(10,'VINT',0,0,999.00,999.00,0,20,'instock',0,0.00,0),
	(95,'SKTSHIRT',0,0,9.99,9.99,0,99,'instock',0,0.00,1),
	(96,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(97,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(98,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(99,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(100,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(101,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(102,'COOLHOODY',0,0,9.99,9.99,0,20,'instock',0,0.00,0),
	(106,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(107,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(108,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(109,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(110,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(111,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(112,'WOOHOODY',0,0,9.99,13.99,0,NULL,'instock',0,0.00,0),
	(113,'',0,0,13.99,13.99,0,NULL,'instock',0,0.00,0),
	(114,'',0,0,12.99,12.99,0,NULL,'instock',0,0.00,0),
	(115,'',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0),
	(116,'HOODY',0,0,9.99,9.99,0,NULL,'instock',0,0.00,0);

/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_wc_tax_rate_classes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`)
VALUES
	(1,'Reduzierter Preis','reduzierter-preis'),
	(2,'0 Preis','0-preis');

/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_wc_webhooks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_webhooks`;

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_woocommerce_api_keys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_woocommerce_attribute_taxonomies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_woocommerce_downloadable_product_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_woocommerce_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_log`;

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_woocommerce_order_itemmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'_product_id','95'),
	(2,1,'_variation_id','96'),
	(3,1,'_qty','1'),
	(4,1,'_tax_class',''),
	(5,1,'_line_subtotal','9.99'),
	(6,1,'_line_subtotal_tax','0'),
	(7,1,'_line_total','9.99'),
	(8,1,'_line_tax','0'),
	(9,1,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
	(10,1,'color','Black'),
	(11,1,'size','Large'),
	(12,2,'method_id','local_pickup'),
	(13,2,'instance_id','2'),
	(14,2,'cost','0.00'),
	(15,2,'total_tax','0'),
	(16,2,'taxes','a:1:{s:5:\"total\";a:0:{}}'),
	(17,2,'Positionen','Skull T-Shirt - Black, Large &times; 1'),
	(18,1,'_reduced_stock','1'),
	(19,1,'hr_refund_request_item','yes'),
	(20,1,'hr_refund_request_item_qty','1');

/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_woocommerce_order_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`)
VALUES
	(1,'Skull T-Shirt - Black, Large','line_item',120),
	(2,'Abholung vor Ort','shipping',120);

/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_woocommerce_payment_tokenmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_woocommerce_payment_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_woocommerce_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_woocommerce_shipping_zone_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`)
VALUES
	(1,1,'DE','country'),
	(6,2,'AF','continent'),
	(7,2,'AS','continent'),
	(8,2,'EU','continent'),
	(9,2,'NA','continent'),
	(10,2,'SA','continent');

/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_woocommerce_shipping_zone_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`)
VALUES
	(1,2,'local_pickup',2,1),
	(2,3,'flat_rate',1,1),
	(1,4,'flat_rate',3,1);

/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_woocommerce_shipping_zones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`)
VALUES
	(1,'Deutschland',0),
	(2,'International',0);

/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle wp_woocommerce_tax_rate_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Export von Tabelle wp_woocommerce_tax_rates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
