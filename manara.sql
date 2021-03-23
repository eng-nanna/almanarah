-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2015 at 12:06 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `manara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '8a16e69cf336a546af0e03cc3fa378d2'),
(2, 'nehal', '53a9562cff80ae4dd612eb6b5cf5820f'),
(3, 'tester', 'f5d1278e8109edd94e1e4197e04873b9'),
(4, 'partner1', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE IF NOT EXISTS `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Specialty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `doctor` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `medical_record` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone_num` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `Specialty`, `doctor`, `date`, `medical_record`, `name`, `phone_num`, `mobile_num`, `email`) VALUES
(1, 'apollo', 'husker', '0000-00-00', '123456789', 'nehal nabil', '12345678', '01001111111', 'abc@gmail.com'),
(2, 'husker', 'starbuck', '2015-06-16', 'bhj4515215', 'test test', '12345678', '01001010101', 'abcd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE IF NOT EXISTS `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`id`, `name`, `description`) VALUES
(1, 'أمراض باطنة', 'dsadahfdbkjd\r\ndsabdjbfhjf''dbhakdbahdbajksdnakjsdnasd\r\ndbsajdkbakjsdskad\r\njadbadcbjasdn akjsnKLasMLas'),
(3, 'أنف وأذن وحنجرة', ''),
(4, 'نساء وتوليد', ''),
(5, 'عظام', '  عظام  عظام  عظام عظام عظام عظام\r\nكسور كسور كسور كسور كسور كسور ');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `departments` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `profile_pic` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `description`, `departments`, `profile_pic`, `mail`, `facebook`, `twitter`) VALUES
(2, 'doctor', 'HERE GOES THE FULL DESCRIPTION AND QUALIFICATIONS.\r\n\r\nTEST TEST TEST\r\nAND TEST AGAIN', 'name', '', '', '', ''),
(3, 'sherif ahmed', 'category-1', 'category-1', 'doc-img.jpg', '', '', ''),
(4, 'doctor1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam id, ratione labore esse dolores fuga.', 'category-2', 'doc-img.jpg', '', '', ''),
(5, 'dr sherif ahmed', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam id, ratione labore esse dolores fuga.', 'category-1', 'doc-img.jpg', '', '', ''),
(6, 'test test', 'sDIAODHAIUCHBAJCKN AKLS,LA;', 'رمد', 'doc-img.jpg', 'abc@gmail.com', 'https://www.facebook.com', 'https://www.twitter.com'),
(7, 'test2', 'sfsff', 'category-2', 'doc-img.jpg', 'abcd@gmail.com', 'https://www.facebook.com', 'https://www.twitter.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `date`, `description`) VALUES
(2, 'album1', '2015-06-16', 'sSDJISODJSKLNJASKNDKJA\r\n\r\nNDKSADNAJ jdkaddbndm'),
(3, 'album2', '2015-08-05', 'test https://www.jumia.com.eg/maniera-low-basic-bundle-black-278336.html https://www.jumia.com.eg/maniera-low-basic-bundle-black-278336.html test  test  test ');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `date`) VALUES
(2, 'first news1', 'second try', '2015-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `logo`) VALUES
(2, 'partner1', 'modern-display-and-wall-shelves.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phpc_calendars`
--

CREATE TABLE IF NOT EXISTS `phpc_calendars` (
  `cid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hours_24` tinyint(1) NOT NULL DEFAULT '0',
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `week_start` tinyint(1) NOT NULL DEFAULT '0',
  `subject_max` smallint(5) unsigned NOT NULL DEFAULT '50',
  `events_max` tinyint(4) unsigned NOT NULL DEFAULT '8',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PHP-Calendar',
  `anon_permission` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpc_calendars`
--

INSERT INTO `phpc_calendars` (`cid`, `hours_24`, `date_format`, `week_start`, `subject_max`, `events_max`, `title`, `anon_permission`, `timezone`, `language`, `theme`) VALUES
(1, 1, 0, 0, 50, 8, 'Al Manara Calendar', 1, 'Africa/Cairo', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpc_categories`
--

CREATE TABLE IF NOT EXISTS `phpc_categories` (
  `catid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL,
  `gid` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bg_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`catid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpc_events`
--

CREATE TABLE IF NOT EXISTS `phpc_events` (
  `eid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL,
  `owner` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `catid` int(11) unsigned DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpc_groups`
--

CREATE TABLE IF NOT EXISTS `phpc_groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpc_logins`
--

CREATE TABLE IF NOT EXISTS `phpc_logins` (
  `uid` int(11) unsigned NOT NULL,
  `series` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `token` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `atime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`series`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phpc_logins`
--

INSERT INTO `phpc_logins` (`uid`, `series`, `token`, `atime`) VALUES
(1, '_ZIKmnk6nij0063jvuALzzm-Na0AIlytzzgqSu8GYNI', '_ZIKmnk6nij0063jvuALzzm-Na0AIlytzzgqSu8GYNI', '2015-06-15 09:53:50'),
(1, 'iXCsJIDCCmfyrduBujeLrGWZTS955mHDqYvIOZXoRkA', 'n16YHfMigRJiGA7pc674QbjnoJcFSDz71J92fFou7hI', '2015-06-15 10:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `phpc_occurrences`
--

CREATE TABLE IF NOT EXISTS `phpc_occurrences` (
  `oid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `eid` int(11) unsigned NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_ts` timestamp NULL DEFAULT NULL,
  `end_ts` timestamp NULL DEFAULT NULL,
  `time_type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `eid` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpc_permissions`
--

CREATE TABLE IF NOT EXISTS `phpc_permissions` (
  `cid` int(11) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `read` tinyint(1) NOT NULL,
  `write` tinyint(1) NOT NULL,
  `readonly` tinyint(1) NOT NULL,
  `modify` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  UNIQUE KEY `cid` (`cid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phpc_users`
--

CREATE TABLE IF NOT EXISTS `phpc_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `password_editable` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpc_users`
--

INSERT INTO `phpc_users` (`uid`, `username`, `password`, `admin`, `password_editable`, `timezone`, `language`, `gid`) VALUES
(1, 'admin', '8a16e69cf336a546af0e03cc3fa378d2', 1, 1, 'Africa/Cairo', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phpc_user_groups`
--

CREATE TABLE IF NOT EXISTS `phpc_user_groups` (
  `gid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phpc_version`
--

CREATE TABLE IF NOT EXISTS `phpc_version` (
  `version` smallint(5) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phpc_version`
--

INSERT INTO `phpc_version` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `gallery` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `gallery`) VALUES
(11, 'sliderImage.jpg', ''),
(13, 'sliderImage2.jpg', ''),
(16, '11168458_705591549567989_6013793694595475238_n.png', 'album1'),
(17, '11230610_1018629914814168_8958370412046938792_n.jpg', 'album2'),
(18, '10440900_802473853151474_202362608573446823_n.jpg', 'album2'),
(19, '10425850_1537060656553885_5564345888230493669_n.jpg', 'album1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
