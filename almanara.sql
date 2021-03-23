-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2018 at 08:27 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almanara`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE IF NOT EXISTS `about_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `text`) VALUES
(1, 'رؤية المستشفى', 'الخدمة الطبية المتكاملة حسب معايير الجودة العالمية على أرض مصرية'),
(2, 'رسالة و هدف المستشفى', 'تقدم أعلى مستوى من الخدمة الطبية داخل جمهورية مصر العربية و خارجها من خلال فريق طبى على اعلى مستوى ن الخرة و التدريب و بالتعاون مع أفضل خبراء الخدمة الطبية من داخل مصر و خارجها مستخدمين أحدث الاجهزة و التقنيات العالمية المتطورة و مراعيين أعلى مستويات الجودة فى تقديم الخدمة الطبية وذلك من خلال الخمس سنوات القادمة بأذن الله.');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '34780ff9cdb977414d18a6396dbcb743'),
(2, 'tested', '34780ff9cdb977414d18a6396dbcb743'),
(3, 'tester', '31fa46eb646e0a07fb554aa18259796e'),
(4, 'tested', '34780ff9cdb977414d18a6396dbcb743');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
CREATE TABLE IF NOT EXISTS `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Specialty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `doctor` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `medical_record` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone_num` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `Specialty`, `doctor`, `date`, `medical_record`, `name`, `phone_num`, `mobile_num`, `email`) VALUES
(1, 'apollo', 'husker', '0000-00-00', '123456789', 'nehal nabil', '12345678', '01001111111', 'abc@gmail.com'),
(2, 'husker', 'starbuck', '2015-06-16', 'bhj4515215', 'test test', '12345678', '01001010101', 'abcd@gmail.com'),
(3, 'husker', 'husker', '0000-00-00', '123400000', 'tester', '02654291', '01001010101', 'aaa@gmail.com'),
(4, 'husker', 'husker', '2015-08-11', '123400000', 'tester', '02654291', '01001010101', 'abcd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `type`, `content`) VALUES
(7, 'E-Mail', 'info@almanarahospital.com'),
(14, 'Twitter', 'not yet'),
(15, 'Google+', 'not yet'),
(16, 'Telephone', '(002) 01201000362 - (002) 01022222673'),
(17, 'Address', 'محافظة الاسماعيلية - أرض النقابات - بجوار نقابة الاطباء'),
(18, 'Facebook', 'https://www.facebook.com/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89-%D8%A7%D9%84%D9%85%D9%86%D8%A7%D8%B1%D8%A9-%D8%A7%D9%84%D8%AA%D8%AE%D8%B5%D8%B5%D9%8A-%D8%A8%D8%A7%D9%84%D8%A3%D8%B3%D9%85%D8%A7%D8%B9%D9%8A%D9%84%D9%8A%D8%A9-376896095843756/');

-- --------------------------------------------------------

--
-- Table structure for table `contributor`
--

DROP TABLE IF EXISTS `contributor`;
CREATE TABLE IF NOT EXISTS `contributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contributor`
--

INSERT INTO `contributor` (`id`, `name`, `img`, `phone`, `mail`, `description`) VALUES
(5, 'Dr\\ Hala Mohamed Fathy Dandash', 'elmanara-logo.png', '', '', '<b><span style=\"line-height: 115%;\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\"><font size=\"2\">Bachelor of Commerce</font></span></b>'),
(9, 'Dr\\ Mostafa Hassan Ali', 'elmanara-logo.png', '', '', '<b><font face=\"arial\" size=\"2\">Board Manager of Arket Company</font></b>'),
(10, 'Dr\\ Nageh Gad Elhak', 'elmanara-logo.png', '', '', '<b><span style=\"line-height: 115%; font-family: Arial, sans-serif;\"><font size=\"2\">Engineer Doctor<span dir=\"RTL\"></span><span dir=\"RTL\"><span dir=\"RTL\"></span> </span>S.C.A</font></span></b>'),
(11, 'Dr\\ Ahmed Soliman Salem', 'elmanara-logo.png', '', '', '<b><span style=\"line-height: 115%; font-family: Arial, sans-serif;\"><font size=\"2\">Board Manager</font></span></b>'),
(12, 'Dr\\ Nour Hashim Rashwan', 'elmanara-logo.png', '', '', '<br>'),
(13, 'Dr\\ Gamal Abdelhakim Mohamed', 'elmanara-logo.png', '', '', '<b><font size=\"2\" face=\"arial\"><span style=\"line-height: 115%;\">The owner and Director of SAFA</span> Pharmacy</font></b><span style=\"font-size: 10.5pt; line-height: 115%; font-family: Helvetica, sans-serif; color: rgb(51, 51, 51); background-color: whitesmoke;\"> </span>'),
(14, 'Dr\\ Nabil Lotfy Ali ', 'elmanara-logo.png', '', '', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Member of a Board<span dir=\"RTL\"></span><span dir=\"RTL\"><span dir=\"RTL\"></span> </span>S.C.A</span></b>');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
CREATE TABLE IF NOT EXISTS `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`id`, `name`, `description`, `pic`) VALUES
(28, 'Reception and emergency Department \" قسم الطوارئ و الاستقبال\"', '<div><p><ul><li><b style=\"line-height: 1.5;\"><font face=\"arial\" size=\"2\">Emergency Operations</font></b></li></ul><ul><li><b style=\"line-height: 1.5;\"><font face=\"arial\" size=\"2\">Receiving emergency cases and accidents</font></b></li></ul><ul><li><b style=\"line-height: 1.5;\"><font face=\"arial\" size=\"2\">Receiving births cases</font></b></li></ul><ul><li><b style=\"line-height: 1.5;\"><font face=\"arial\" size=\"2\">Equipped ambulances 24 Hours</font></b></li></ul><ul><li><b style=\"line-height: 1.5;\"><font face=\"arial\" size=\"2\">A pharmacy 24 Hours service</font></b></li></ul></p></div><div><br></div>', '1-الطوارئ-و-الاستقبال.jpg'),
(29, 'Radiology Department \"قسم الاشعة\" ', '<div><p></p><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Magnetic resonance imaging unit</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">computerized tomography unit</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">X-Ray unit</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Ultrasound unit</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Mamogram unit</b></font></li></ul><ul><li><b style=\"line-height: 1.5;\"><font size=\"2\" face=\"arial\">Panoramic Dental Unit</font></b></li></ul><p><ul><li><b style=\"line-height: 115%;\"><font size=\"2\" face=\"arial\">Heart checks unit</font></b></li></ul></p><p></p></div>', '2-قسم الاشعة.jpg'),
(30, 'Medical Tests Department\" قسم التحاليل الطبية\" ', '<div><p><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Clinical pathology</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Blood Research</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Microbiology</b></font></li></ul><ul><li><b style=\"line-height: 1.5;\"><font size=\"2\" face=\"arial\">Analysis of tissues and cells</font></b></li></ul></p></div><div><br></div>', '3-قسم التحاليل الطبية.jpg'),
(31, 'Gastrointestinal Endoscopy Department \"قسم مناظير الجهاز الهضمى\" ', '<div><p><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 18.4px;\">Diagnostic</b></font></li></ul><ul><li><b style=\"line-height: 18.4px;\"><font size=\"2\" face=\"arial\">Therapeutic</font></b></li></ul></p></div><div><br></div>', '4-مناظير الجهاز الهضمى.jpg'),
(32, 'Physiotherapy Department\" قسم العلاج الطبيعى و الطب الرياضى\" ', '<br>', '5-العلاج الطبيعى و الطب الرياضى.jpg'),
(34, 'The internal Section\" القسم الداخلى \"', '<div><p><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">More than 60 room hotel accommodations and royal suites</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Big conferences hall</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Meeting seminars and medical training</b></font></li></ul><ul><li><b style=\"line-height: 1.5;\"><font size=\"2\" face=\"arial\">Tourist cafeteria</font></b></li></ul></p></div><div><br></div>', '6-القسم الداخلى.jpg'),
(35, 'The surgical operations Department\"قسم العمليات الجراحية\" ', '<div><p><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Operations Rooms Super clean</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">surgery Capsule</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Specialized surgery</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">Per day surgeries</b></font></li></ul><ul><li><b style=\"line-height: 1.5;\"><font size=\"2\" face=\"arial\">Endoscopic surgery</font></b></li></ul></p></div><div><br></div>', '7-العمليات الجراحية.jpg'),
(36, 'Intensive Care Unit \" قسم العناية المركزة \"', '<p></p><ul><li><b style=\"line-height: 18.4px;\"><font size=\"2\" face=\"arial\">More than 15 bed intensive care</font></b></li></ul><p></p>', '8-العناية المركزة.jpg'),
(37, 'Cardiac/Coronary Care Unit \"قسم عناية القلب \" ', '<p><p><ul><li><span style=\"line-height: 1.5;\"><font face=\"arial\" size=\"2\"><b>More than 5 beds cardiac care</b></font></span></li></ul></p></p>', '9-قسم عناية القلب.jpg'),
(38, 'Neonatal intensive-care unit \" قسم الحضانات و عناية حديثى الولادة \"', '<p><ul><li><b style=\"line-height: 1.5;\"><font size=\"2\" face=\"arial\">More than 14 nursery and respirator for neonates</font></b></li></ul></p>', '10-الحضانات وحديثى الولادة.jpg'),
(39, 'Tube baby and injecting microscopic Unit \"قسم أطفال الانابيب و الحقن المجهرى\" ', '<div><p><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 18.4px;\">Artificial pollination</b></font></li></ul><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 18.4px;\">Insemination</b></font></li></ul><ul><li><b style=\"line-height: 18.4px;\"><font size=\"2\" face=\"arial\">Embryo and sperm banks</font></b></li></ul></p></div><div><br></div>', '11-قسم أطفال الانابيب و الحقن المجهرى.jpg'),
(40, 'Artificial kidney unit \" قسم الكلى الصناعية\"', '<p><ul><li><b style=\"line-height: 1.5;\"><font size=\"2\" face=\"arial\">More than 6 dialysis units</font></b></li></ul></p>', '12-قسم الكلى الصناعية.jpg'),
(41, 'Outpatient clinics ‎\" العيادات الخارجية\"', '<div><font size=\"3\" face=\"arial\" color=\"#003366\"><b>Surgical specialties \"التخصصات الجراحية\"</b></font></div><div><p></p><font face=\"arial\" style=\"line-height: 1.5;\"><p><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">General Surgery \"جراحة عامة\"</b></font></li></ul><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">Heart and chest surgery \" جراحة القلب و الصدر\"</b></font></li></ul><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">Vascular Surgery\" جراحة الاوعية الدموية \"</b></font></li></ul><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">Oncological surgery\" جراحة الاورام\"</b></font></li></ul><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">Urology surgery\" جراحة المسالك البولية \"</b></font></li></ul><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">Neurosurgery\" جراحة المخ و الاعصاب \"</b></font></li></ul><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">Orthopedic Surgery \" جراحة العظام \"</b></font></li></ul><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">Cosmetic surgery \" جراحة التجميل\"</b></font></li></ul><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">Gynecology and obstetrics Surgery \"جراحة النساء و التوليد\"</b></font></li></ul><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">Eye surgery \"جراحة العيون\"</b></font></li></ul><ul><li><font size=\"2\"><b style=\"line-height: 1.5;\">Surgery of the ear, nose and throat\"جراحة الانف و الاذن و الحنجرة \"</b></font></li></ul><ul><li><b style=\"line-height: 1.5;\"><font face=\"arial\" size=\"2\">Laparoscopic surgery\"جراحات المناظير \"</font></b></li></ul></p></font></div><div><p></p></div><div><div><b><font size=\"3\" face=\"arial\" color=\"#003366\">Internal Medicine specialties \"التخصصات الباطنية\"</font></b></div><div><b><font size=\"3\" face=\"arial\" color=\"#003366\"><br></font></b></div><div><p><ul><li><font size=\"2\" face=\"arial\"><b style=\"line-height: 1.5;\">General internal medicine \"باطنة عامة\"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">The heart and blood vessels\"قلب و أوعية دموية \"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Chest diseases \" أمراض الصدر\"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Allergy &amp; Immunology \"الحساسية و المناعة \"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Digestive and liver \"الجهاز الهضمى و الكبد \"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Mental nerve \"النفسية و العصبية \"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Oncology \"طب الاورام \"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Dermatology \"الجلدية و التجميل \"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Andrology and reproductive \"أمراض الذكورة و التناسلية\"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Rheumatism \"الروماتيزم \"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Endocrine glands \"الغدد الصماء\"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Nuclear medicine \"الطب النووى\"</b></font></li></ul><ul><li><font face=\"arial\" size=\"2\"><b style=\"line-height: 1.5;\">Obesity and thinness and pain treatment\"السمنة و النحافة و علاج الالم\"</b></font></li></ul><ul><li><b style=\"line-height: 1.5;\"><font face=\"arial\" size=\"2\">Kidney disease\"أمراض الكلى \"</font></b></li></ul></p><p></p></div></div><div><div><b><font size=\"3\" face=\"arial\" color=\"#003366\">Pediatrics \"طب الاطفال\"</font></b></div><div><b><font size=\"3\" face=\"arial\" color=\"#003366\"><br></font></b></div><div><b><font size=\"3\" face=\"arial\" color=\"#003366\">Medical and dental surgery \"طب و جراحة الفم و الاسنان\"</font></b></div></div><div><br></div>', 'elmanara-logo.png'),
(42, 'General', '<br>', 'elmanara-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `departments` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `specialty` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `profile_pic` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `description`, `departments`, `specialty`, `profile_pic`, `mail`, `facebook`, `twitter`) VALUES
(32, 'Dr\\ Mahmoud Anwar El gafy', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(33, 'Dr\\ Eman Mounir Khtab', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(34, 'Dr\\ Youssry Abdallah khalil', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Specialist</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(35, 'Dr\\ Atef Ali Abdallah', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Specialist</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(36, 'Dr\\ Mohamed Mahmoud Abdo', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Assistant Lecturer, Faculty of medicine</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(37, 'Dr\\ Galal Hussien El kzaz', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Professor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(40, 'Dr\\ Helmy Zakrya Elsayed Ryan', '<b><font face=\"arial\" size=\"3\">Doctor</font></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(41, 'Dr\\ Mona Mohamed Dandash', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Consultant</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(42, 'Dr\\ Hassan Ahmed Elshahaly', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Professor, Faculty of medicine</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(43, 'Dr\\ Yossry Tawfik Abdelhamid', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Specialist</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(44, 'Dr\\ Zkarya Dessoki Elkrali', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Surgeon</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(45, 'Dr\\ Hatem Mohamed Abdelrazek', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Specialist</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(46, 'Dr\\ Osama Farouk Abderahman', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(47, 'Dr\\ Omar Hamed Elmgharbel', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(48, 'Dr\\ Shimaa Ismail Sahmoud', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(49, 'Dr\\ Mohamed Afifi Ibrahim', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Dentist</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(50, 'Dr\\ Ibrahim Amer Ibrahim', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Consultant</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(51, 'Dr\\ Hossam Mohamed Atef', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Teacher of anesthesia and intensive care</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(52, 'Dr\\ Saleh Mahmoud Saleh', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(53, 'Dr\\ Ehab Mohamed Abdelhady', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Student-Faculty of dentist</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(54, 'Dr\\ Mohamed Abdelmonem Mohamed', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Consultant</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(55, 'Dr\\ Hussien Mostafa Abdallah', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Consultant</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(57, 'Dr\\ Mohamed Elsayed Frahat', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Assistant Lecturer</span></b><br>', 'General', '', 'elmanara-logo.png', '', '', ''),
(58, 'Dr\\ Hossam elden Tawfik', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(59, 'Dr\\ Mohamed Elarabi Abdelhamid', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Specialist</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(60, 'Dr\\ Mervit Abdelsalam Mahmoud', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(61, 'Dr\\ Ramdan Mohamed Ramdan', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(62, 'Dr\\ Mamdoh Mohamed Elgohary', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(63, 'Dr\\ Saeed Ali elshrbiny', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Specialist</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(64, 'Dr\\ Hussien Abdelrahman Abdelshafy', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(65, 'Dr\\ Ali Ahmed Yousef ', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Assistant Lecturer, Faculty of medicine</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(66, 'Dr\\ Tarek Hassan Mahmoud ', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Professor, Faculty of medicine</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(67, 'Dr\\ Ahmed Farag Abdelhamid', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Professor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(68, 'Dr\\ Abdelaty Bakry Hussien', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(69, 'Dr\\ Hashim Mohamed Rashwan', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Professor head of Urology</span><span dir=\"RTL\"></span><span dir=\"RTL\"><span dir=\"RTL\"></span> </span>Department</b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(70, 'Dr\\ Mamdouh Mohamed Kamel', '<b>Consultant</b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(71, 'Dr\\ Magdy Mohamed Mandor', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(72, 'Dr\\ Mosad Ali Aamer', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Specialist</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(73, 'Dr\\ Mohamed Ahmed Radwan', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(74, 'Dr\\ Hesham Mohamed Farouk ', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(75, 'Dr\\ Gamal Abdelhakim Mohamed', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Assistant Lecturer, Faculty of medicine</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(76, 'Dr\\ Soaad Mohamed shebl', '<font size=\"2\"><b style=\"box-sizing: inherit; line-height: 22px; color: rgb(76, 104, 128); font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\"><span arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\" style=\"box-sizing: inherit; line-height: 18.4px;\">Professor head of&nbsp;</span></b><b style=\"box-sizing: inherit; line-height: 22px; color: rgb(76, 104, 128); font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\"><span arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\" style=\"box-sizing: inherit; line-height: 18.4px;\">Pediatrics Department&nbsp;</span></b><b style=\"box-sizing: inherit; line-height: 22px; color: rgb(76, 104, 128); font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\"><span style=\"box-sizing: inherit; line-height: 14.95px; font-family: Arial, sans-serif;\"><font style=\"box-sizing: inherit;\">S.C.A</font></span></b></font><br>', 'Outpatient clinics ‎\" العيادات الخارجية\"', 'Pediatrics', 'elmanara-logo.png', '', '', ''),
(77, 'Dr\\ Mohamed Emad eldeen', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Professor, Faculty of medicine</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(78, 'Dr\\ Hanan Ahmed Hassan', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Doctor at portsaid hospital</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(79, 'Dr\\ Ashraf Mohamed Hakm ', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-EG\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(80, 'Dr\\ Ahmed Mohamed Elalfy', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Pharmacist</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(81, 'Dr\\ Adel Ahmed Hassan', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Assistant Lecturer, Faculty of medicine</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(82, 'Dr\\ Ibrahem mahdy Aboelail', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Professor head of Oral and dental surgery</span>\r\n<font size=\"2\">Department</font></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(83, 'Dr\\ Nagy Mahmoud Sabry', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Doctor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(84, 'Dr\\ Rashad Mahmoud Mostafa', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Assistant Lecturer&nbsp;</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(85, 'Dr\\ Ahmed Osama Hosny', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Assistant Professor</span></b>', 'General', '', 'elmanara-logo.png', '', '', ''),
(86, 'Dr\\ Hazem Abdelmohsen ‎Khamis', '<b><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:\" arial\",\"sans-serif\";mso-ascii-theme-font:minor-bidi;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-bidi;=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-eg\"=\"\">Head of Cardiology Department at el-helal Hospital</span></b>', 'General', '', 'elmanara-logo.png', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `url`) VALUES
(1, 'All Day Event', '2015-08-12', '2015-08-20', ''),
(2, 'test', '2015-08-14', '2015-08-14', 'https://soundcloud.com/dekkaradio/g6dffeps7dki?in=dekkaradio/sets/qgkwxg2m4cpp');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `date`, `description`) VALUES
(6, 'الاجتماع التنفيذى', '2015-06-06', 'صور من الاجتماع التنفيذى الاول بين المستشفى والمكتب الهندسي لوضع المخطط التنفيذي لمبنى المستشفي بفندق فيرمونت المطار - القاهرة'),
(7, 'اجتماع الجمعية العمومية ', '2015-06-08', 'اجتماع الجمعية العمومية لشركة مستشفى المنارة ش . م. م .\r\n'),
(9, 'الاجتماع التنفيذى بمدينة الاسماعيلية', '2015-12-08', '( الاجتماع التنفيذى لشركة مستشفى المنارة التخصصي يوم الجمعة الموافق 18/12/2015 بمطعم النورس . مدينة الاسماعيلية لمناقشة التصميمات الهندسية للمستشفى وإتخاذ الخطوات التسويقية والمستقبلية للمشروع بحضور م/ اشرف بيومي استشاري المشروع).'),
(10, 'Brochure', '2015-12-24', ''),
(11, 'مخطط المستشفى ', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `msgs`
--

DROP TABLE IF EXISTS `msgs`;
CREATE TABLE IF NOT EXISTS `msgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `msg` text COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `msgs`
--

INSERT INTO `msgs` (`id`, `name`, `mail`, `title`, `msg`, `flag`) VALUES
(1, 'Palmerdpnjv', 'palmer_ifill71@rambler.ru', 'Hello http://www.almanarahospital.com', 'Good day http://www.almanarahospital.com your discount code: jw2ddXeWLu8iBN \r\n \r\nWe offer distribution via the contact form on the site of the firm any domain zones of the world.  \r\n \r\nCan order the test for $10 (send 10 thousand messages), then the Supplement, and continue on... \r\nBesides distribution, you can buy these base prices below. \r\nFrom sent out by the base removed and the official sites of the countries hosting sites. \r\nAlso you can buy the base hosting sites and official sites anywhere in the world. \r\nP.S. \r\nPlease Do not respond to it letter from its e-mail box, as it is created automatically and will not come to us! \r\nMailbox for communication: contact-forma@seznam.cz \r\n \r\nPprice-list 351  domains: \r\n \r\n.us 3139563 sites USA - $200 \r\n.us 578927  sites International zone USA:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on - $50 \r\n.mx 609278  sites United Mexican States- $80 \r\n.mx 86593 sites International zone United Mexican States:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$50 \r\n.at 1356722 sites Republic of Austria - $100 \r\n.at 181907 sites International zone Republic of Austria:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$50 \r\n.ar 551804  sites Argentina - $80 \r\n.ar 551804  sites Argentina - $80 \r\n.at 1356722  sites Austria - $100 \r\n.br 2367290  sites Federative Republic of Brazil - $150 \r\n.au 243748  sites Australia - $80 \r\n.be 1349658  sites Kingdom of Belgium - $100 \r\n.ch 1471685  sites Switzerland - $100 \r\n.cl 302082  sites Republic Of Chile - $80 \r\n.cn 5970231  sites People\'s Republic of China - $250 \r\n.co 1577728  sites Republic of Colombia  - $100 \r\n.cz 900208  sites Czech Republic - $80 \r\n.de 12224071  sites Germany - $400 \r\n.dk 1320155  sites Denmark - $100 \r\n.es 1685048  sites Spain - $100 \r\n.eu 3321576  sites European Union - $150 \r\n.fr 2298045  sites France - $150 \r\n.gr 356168  sites Greece - $80 \r\n.il 224167  sites Israel - $80 \r\n.io 149698  sites British Indian Ocean Territory - $50 \r\n.it 2255831  sites Italian Republic - $150 \r\n.jp 1126243  sites Japan - $100 \r\n.kz 101069  sites Republic of Kazakhstan - $50 \r\n.ua 286782  sites UKR - $80 \r\n.ma 48825  sites Kingdom of Morocco - $50 \r\n.nl 2980711  sites Kingdom of the Netherlands - $150 \r\n.my 283349  sites MYS- $80 \r\n.no 579185  sites Kingdom of Norway - $80 \r\n.nz 537127  sites New Zealand - $80 \r\n.pt 225136  sites Portuguese Republic - $80 \r\n.pl 1675325  sites Poland - $100 \r\n.se 112544  sites Kingdom Of Sweden - $50 \r\n.ro 430554  sites ROU - $80 \r\n.rs 75503  sites Republic of Serbia - $50 \r\n.sg 164351  sites Singapore - $50 \r\n.tk 15634253  sites Tokelau - $450 \r\n.za 803189  sites South Africa - $80 \r\n.tr 317690  sites Turkey - $80 \r\n.tw 89857  sites Taiwan - $50 \r\n.tv 512500  sites TUV - $80 \r\n.uk 2679335  sites Great Britain- $150 \r\n.ee 78161  sites Estonia- $50 \r\n.asia 228418  sites - $80 \r\n.рф (.xn--p1ai) 869759  sites Russia - $80 \r\n.com.ru, .net.ru, .org.ru, .spb.ru, .msk.ru  78068  sites Russian Federation - $50 \r\n.su 125358  sites Russia - $50 \r\n.ru 5075935  sites Russian Federation - $250 \r\n.attorney 8224  sites attorneys and legal organizations- $50 \r\n.audio 23052  sites stereo/sound systems, music- $50 \r\n.az 11103  sites Azerbaijan Republic - $50 \r\n.band 7390  sites - $50 \r\n.bayern 29871  sites - $50 \r\n.beer 11834  sites breweries and beer aficionados - $50 \r\n.berlin 58088  sites Berlin, Federal Republic of Germany- $50 \r\n.bg 13251  sites Republic Of Bulgaria - $50 \r\n.bi 1567  sites Republic Of Burundi- $50 \r\n.bid 107425  sites - $50 \r\n.bike 13714  sites - $50 \r\n.bio 12702  sites biographies, biodiversity- $50 \r\n.black 6582  sites - $50 \r\n.blackfriday 12106  sites - $50 \r\n.blue 16852  sites - $50 \r\n.bm 8093  sites Bermuda - $50 \r\n.boutique 7523  sites - $50 \r\n.brussels 6114  sites - $50 \r\n.business 10803  sites - $50 \r\n.buzz 9367  sites - $50 \r\n.by 24342  sites Republic Of Belarus - $50 \r\n.bzh 5303  sites - $50 \r\n.ca 2587463  sites CAN- $150 \r\n.cafe 5150  sites - $50 \r\n.camera 5236  sites - $50 \r\n.camp 5530  sites - $50 \r\n.cards 5067  sites - $50 \r\n.care 10766  sites - $50 \r\n.careers 6799  sites - $50 \r\n.casa 18918  sites - $50 \r\n.cat 66000  sites - $50 \r\n.cc 46723  sites  Cocos Islands- $50 \r\n.center 29966  sites - $50 \r\n.chat 7324  sites - $50 \r\n.christmas 15255  sites - $50 \r\n.church 12541  sites - $50 \r\n.ci 5664  sites Republic of Cote d\'Ivoire- $50 \r\n.city 16679  sites - $50 \r\n.click 181015  sites - $50 \r\n.clothing 13639  sites - $50 \r\n.club 564417  sites - $80 \r\n.cm 12002  sites Cameroon- $50 \r\n.coach 5836  sites flights and motor coaches travel- $50 \r\n.coffee 10097  sites - $50 \r\n.cologne 5037  sites - $50 \r\n.com.cy 11092  sites - $50 \r\n.com.ni 23747  sites - $50 \r\n.com.np 32828  sites - $50 \r\n.community 8656  sites - $50 \r\n.company 42783  sites - $50 \r\n.construction 6404  sites - $50 \r\n.consulting 15520  sites - $50 \r\n.cool 10766  sites - $50 \r\n.coop 7500  sites - $50 \r\n.coop 7879  sites - $50 \r\n.country 7144  sites - $50 \r\n.cricket 33413  sites - $50 \r\n.cymru 5482  sites - $50 \r\n.date 116437  sites - $50 \r\n.deals 7532  sites - $50 \r\n.dental 5661  sites - $50 \r\n.design 23876  sites - $50 \r\n.diet 18291  sites - $50 \r\n.digital 12478  sites - $50 \r\n.direct 7942  sites - $50 \r\n.directory 18963  sites - $50 \r\n.do 5265  sites Dominican Republic- $50 \r\n.domains 7127  sites - $50 \r\n.download 25656  sites - $50 \r\n.edu.np 4183  sites higher education - $50 \r\n.education 17243  sites - $50 \r\n.email 53422  sites - $50 \r\n.enterprises 5053  sites - $50 \r\n.equipment 6898  sites - $50 \r\n.estate 10245  sites - $50 \r\n.events 15887  sites - $50 \r\n.expert 26846  sites - $50 \r\n.faith 39757  sites - $50 \r\n.farm 7902  sites - $50 \r\n.fashion 9313  sites - $50 \r\n.fi 116327  sites Republic Of Finland - $50 \r\n.fit 7047  sites - $50 \r\n.fitness 6973  sites - $50 \r\n.flowers 25590  sites - $50 \r\n.fo 3104  sites FRO - $50 \r\n.forsale 7446  sites - $50 \r\n.foundation 6241  sites - $50 \r\n.frl 12840  sites - $50 \r\n.gallery 16903  sites - $50 \r\n.gd 4248  sites - $50 \r\n.ge 17360  sites - $50 \r\n.gift 12281  sites - $50 \r\n.global 20196  sites - $50 \r\n.gov.np 1677 sites national and state government agencies- $50 \r\n.graphics 7855  sites - $50 \r\n.gt 15251  sites - $50 \r\n.guide 12044  sites - $50 \r\n.guru 65588  sites - $50 \r\n.gy 2667  sites - $50 \r\n.hamburg 22985  sites - $50 \r\n.healthcare 6183  sites - $50 \r\n.help 34800  sites - $50 \r\n.hiphop 7264  sites - $50 \r\n.hk 116193  sites - $50 \r\n.hk 44398  sites - $50 \r\n.hn 4742  sites - $50 \r\n.holdings 5212  sites - $50 \r\n.holiday 5217  sites - $50 \r\n.host 5730  sites - $50 \r\n.hosting 15132  sites - $50 \r\n.house 13832  sites - $50 \r\n.hr 33575  sites - $50 \r\n.hu 618632  sites - $80 \r\n.id 24222  sites - $50 \r\n.ie 196000  sites - $50 \r\n.immo 10768  sites - $50 \r\n.immobilien 7794  sites - $50 \r\n.in 1143582  sites India - $100 \r\n.ink 8825  sites - $50 \r\n.institute 7311  sites - $50 \r\n.international 1828  sites international entities - $50 \r\n.ir 427835  sites Iran- $80 \r\n.is 14876  sites Iceland - $50 \r\n.jobs 89950  sites Employment- $50 \r\n.kaufen 9134  sites - $50 \r\n.kg 8929  sites Kyrgyz Republic - $50 \r\n.kim 36637  sites people named Kim- $50 \r\n.kitchen 5822  sites - $50 \r\n.kiwi 9972  sites - $50 \r\n.koeln 23485  sites - $50 \r\n.kr 205547  sites Korea- $50 \r\n.la 32000  sites Laos - $50 \r\n.land 14274  sites real estate- $50 \r\n.lawyer 12830  sites lawyers and legal organizations - $50 \r\n.legal 7022  sites lawyers and legal organizations- $50 \r\n.life 29931  sites - $50 \r\n.lighting 5876  sites - $50 \r\n.link 209593  sites - $50 \r\n.live 13848  sites - $50 \r\n.loan 148407  sites lenders and banks- $50 \r\n.lol 59470  sites laughing out loud- $50 \r\n.london 60443  sites London, Great Britain- $50 \r\n.love 15287  sites dating sites- $50 \r\n.lt 51083  sites Republic Of Lithuania- $50 \r\n.lu 14194  sites Luxembourg - $50 \r\n.lv 32886  sites Republic Of Latvia- $50 \r\n.management 9288 sites business management - $50 \r\n.market 8350  sites retailers and marketing services- $50 \r\n.marketing 14262  sites marketing services- $50 \r\n.mc 2700  sites Principality Of Monaco - $50 \r\n.md 10425  sites Republic Of Moldova - $50 \r\n.me 761696  sites Montenegro - $80 \r\n.media 22231  sites general media interests - $50 \r\n.melbourne 8252  sites - $50 \r\n.menu 6512  sites restaurants- $50 \r\n.mg 3330  sites Republic Of Madagascar- $50 \r\n.miami 13231  sitesMiami, USA - $50 \r\n.mobi 688419  sites mobile devices - $80 \r\n.money 5228  sites financial- $50 \r\n.moscow 22067  sites Moscow Russian Federation- $50 \r\n.mw 1744  sites Malawi - $50 \r\n.name 130818  sites individuals, by name - $50 \r\n.network 13837  sites - $50 \r\n.news 59662  sites news sites- $50 \r\n.ninja 49007  sites - $50 \r\n.nrw 9596  sites - $50 \r\n.nu 39710  sites Niue Republic- $50 \r\n.nyc 73153  sites - $50 \r\n.one 47863  sites - $50 \r\n.online 135973  sites - $50 \r\n.ooo 13427  sites - $50 \r\n.org.np 6317  sites - $50 \r\n.org.ua 41372  sites - $50 \r\n.ovh 39855  sites - $50 \r\n.paris 19783  sites - $50 \r\n.party 222578  sites nightclubs and social gatherings- $50 \r\n.pe 16586  sites Peru - $50 \r\n.pg 1829  sites Papua - $50 \r\n.ph 17960  sites Republic Of The Philippines - $50 \r\n.photo 22865  sites photo-sharing and photography - $50 \r\n.photography 50934  sites photo-sharing and photography- $50 \r\n.photos 18750  sites photography and photo-sharing- $50 \r\n.pics 29821  sites photography and photo-sharing- $50 \r\n.pictures 6207  sites photography and photo-sharing- $50 \r\n.pink 14373  sites those who like the color pink- $50 \r\n.pk 44474  sites Islamic Republic Of Pakistan - $50 \r\n.porn 13023  sites adult entertainment - $50 \r\n.press 8736  sites - $50 \r\n.pro 118600  sites professions- $50 \r\n.properties 10475  sites - $50 \r\n.property 41366  sites - $50 \r\n.pub 42703  sites - $50 \r\n.quebec 10402  sites - $50 \r\n.racing 27001  sites - $50 \r\n.realtor 73465  sites - $50 \r\n.red 71773  sites - $50 \r\n.ren 237303  sites - $50 \r\n.rentals 10823  sites short-term ownership - $50 \r\n.repair 6228  sites general maintenance/repair businesses- $50 \r\n.restaurant 5299  sites - $50 \r\n.review 65390  sites public reviews- $50 \r\n.reviews 16732  sites public reviews- $50 \r\n.rocks 57908  sites - $50 \r\n.ru.com  6500  sites Russian Federation - $50 \r\n.ruhr 11118  sites - $50 \r\n.sa 8605  sites Saudi Arabia- $50 \r\n.sale 7850  sites - $50 \r\n.sc 5318  sites Republic Of Seychelles- $50 \r\n.school 5812  sites - $50 \r\n.science 337115  sites - $80 \r\n.scot 10675  sites - $50 \r\n.services 20796  sites - $50 \r\n.sex 8655  sites - $50 \r\n.sexy 22260  sites - $50 \r\n.shoes 5597  sites - $50 \r\n.si 39753  sites Republic Of Slovenia- $50 \r\n.singles 5559  sites - $50 \r\n.site 86601  sites - $50 \r\n.sk 347101  sites Slovakia- $80 \r\n.ski 6771  sites - $50 \r\n.social 15208  sites - $50 \r\n.software 9450  sites - $50 \r\n.solar 6067  sites - $50 \r\n.solutions 43143  sites - $50 \r\n.space 112426  sites - $50 \r\n.studio 5101  sites - $50 \r\n.sucks 7083  sites - $50 \r\n.support 15577  sites - $50 \r\n.sv 7878  sites El Salvador- $50 \r\n.swiss 6300  sites - $50 \r\n.sydney 7837  sites - $50 \r\n.systems 17893  sites - $50 \r\n.tattoo 7554  sites tattoo aficionados- $50 \r\n.tc 16394  sites Turks and Caicos Islands- $50 \r\n.team 5128  sites team sports- $50 \r\n.tech 27200  sites - $50 \r\n.technology 23981 sites technology- $50 \r\n.tel 116752  sites Internet communication services- $50 \r\n.th 23968  sites Kingdom Of Thailand- $50 \r\n.tips 34287  sites general help topics- $50 \r\n.tj 6504  sites Republic Of Tajikistan- $50 \r\n.to 16327  sites Tonga- $50 \r\n.today 47996  sites - $50 \r\n.tokyo 45233  sites - $50 \r\n.tools 6469  sites manufacturing industries - $50 \r\n.top 1031307  sites - $100 \r\n.trade 23418  sites businesses- $50 \r\n.training 15992  sites training and how-tos - $50 \r\n.travel 18000  sites travel and tourism industry related- $50 \r\n.uno 19394  sites - $50 \r\n.uy 12673  sites Eastern Republic Of Uruguay- $50 \r\n.ve 14018  sites Bolivarian Republic Of Venezuela - $50 \r\n.vegas 12948  sites Las Vegas NV United States of America - $50 \r\n.ventures 7366  sites - $50 \r\n.vg 8393  sites VGB- $50 \r\n.video 11804  sites video sharing- $50 \r\n.vlaanderen 6262  sites - $50 \r\n.vn 76661  sites Vietnam- $50 \r\n.wales 11463  sites - $50 \r\n.wang 629622  sites - $80 \r\n.watch 5080  sites Watches - $50 \r\n.webcam 71942  sites web cam shows and video sharing- $50 \r\n.website 122048  sites - $50 \r\n.wedding 6864  sites wedding-oriented businesses - $50 \r\n.wien 13064  sites - $50 \r\n.wiki 14629  sites wikis - $50 \r\n.win 591324  sites - $50 \r\n.work 95686  sites - $50 \r\n.works 8712  sites - $50 \r\n.world 26145  sites - $50 \r\n.ws 36610  sites Samoa- $50 \r\n.wtf 6848  sites - $50 \r\n.xin 58102  sites - $50 \r\n.xn--3ds443g 35898  sites - $50 \r\n.xn--55qx5d 48356  sites - $50 \r\n.xn--6qq986b3xl 22488  sites - $50 \r\n.xn--czru2d 11620  sites - $50 \r\n.xn--fiq228c5hs 17945  sites - $50 \r\n.xn--io0a7i 31399  sites - $50 \r\n.xn--j6w193g 31776  sites - $50 \r\n.xn--kput3i 19501  sites - $50 \r\n.xn--mgberp4a5d4ar 2536  sites - $50 \r\n.xn--rhqv96g 7723  sites - $50 \r\n.xn--ses554g 344539  sites - $80 \r\n.xxx 119879  sites pornography- $50 \r\n.xyz 1790370  sites - $50 \r\n.yoga 7093  sites - $50 \r\n.zone 14029  sites - $50 \r\n.москва (.xn--80adxhks) 19582  sites Moscow Russia - $50 \r\n.укр (.xn--j1amh) 10563  sites UKR - $50 \r\n.academy 21046  sites academic institutes- $50 \r\n.accountant 15675 sites accountants and accounting firms - $50 \r\n.adult 10540  sites pornography - $50 \r\n.ae 13405  sites United Arab Emirates - $50 \r\n.aero  18325  sites air-transport industry - $50 \r\n.agency 25318  sites business associations - $50 \r\n.am 9025  sites Republic Of Armenia- $50 \r\n.amsterdam 26141  sites Amsterdam, Kingdom of the Netherlands - $50 \r\n.com 124228147  sites commercial - $1950 \r\n.net 15689222  sites network - $450 \r\n.org 10922428  sites organization - $350 \r\n.info 5454638  sites information - $250 \r\n.biz 2361884  sites business - $150', 0),
(2, 'finwgbwxr', 'elvis_purcella71@rambler.ru', 'Business Funding Source http://www.almanarahospital.com', 'Sir/Madam, \r\n \r\nDo you need funding, VFS is a financial consultant firm assisting business globally with their funding needs. \r\n \r\nIf you are interested in getting your business or project funded we can help with all your funding needs. \r\n \r\nWe can provide you with the funds to purchase equipment, business expansion, working capital and even business startups are welcome. \r\n \r\nWe also offer funding for more complex and large commercial projects. \r\n \r\nThis service offered by us, is free of charge, simply respond to this message and we will connect you with a lender that can assist you today. \r\n \r\nThank you for reading through and we look forward to doing business with you. \r\n \r\nRegards, \r\nSimon Smith \r\nhttp://vanguard-fin.com/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `img` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Brief` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `date`, `img`, `Brief`) VALUES
(2, 'first news', 'second try', '2015-07-15', 'doc-img.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum qui ut ex et repellat, exercitationem deserunt asperiores architecto impedit voluptatem, expedita iusto voluptates at assumenda tempora officia incidunt corrupti vero?'),
(3, 'second news', 'test test test test test test test test test test \r\n\r\ntest test .\r\ntest test test test ...\r\ntest .', '2015-08-05', 'doc-img.jpg', 'abcdefghijklmnopqrstuvwxyz'),
(4, 'test', 'test test test test test test \r\ntest \r\ntest \r\ntest .. test test test \r\ntest .', '2015-08-08', 'doc-img.jpg', 'aaaaaaaaaaaaaaaaaaaaa'),
(5, 'test1', 'abc abc abc abc abc abc abc abc abc abc \r\nabc abc abc ..abc abc abc \r\nabc \r\nabc .', '2015-06-16', 'doc-img.jpg', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `logo`) VALUES
(21, 'EIADS', '1939169_10153891504465347_887317617_o.jpg'),
(22, 'INNOVA-EIADS', 'innova.png'),
(24, 'Medical Unions Ismailia	', 'لوجو نقابة.jpg'),
(25, 'xdd', 'xdx.jpg'),
(26, 'xdd', 'wso.txt.jpg'),
(27, 'xdd', '1.php.jpg'),
(28, 'xdd', '1.php.jpg'),
(29, 'xdd', '1.php.jpg'),
(30, 'xdd', '2.php.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `specialty`
--

DROP TABLE IF EXISTS `specialty`;
CREATE TABLE IF NOT EXISTS `specialty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specialty`
--

INSERT INTO `specialty` (`id`, `name`) VALUES
(9, 'Pediatric Urology and venerology'),
(10, 'Gynaecology and obstetrics'),
(12, 'Anesthesiology'),
(13, 'Allergy & Immunology'),
(15, 'Dermatology'),
(16, 'Emergency Medicine'),
(17, 'Internal Medicine'),
(18, 'Neurological Surgery'),
(19, 'Neurology'),
(20, 'Orthopaedic Surgery'),
(21, 'Otolaryngology'),
(22, 'Pediatrics'),
(23, 'Plastic Surgery-Integrated'),
(24, 'Psychiatry'),
(25, 'Radiation Oncology'),
(26, 'Radiology-Diagnostic'),
(27, 'Surgery-General'),
(28, 'Thoracic Surgery'),
(29, 'Vascular Surgery-Integrated'),
(30, 'Physical Medicine and Rehabilitation'),
(31, 'Oral and dental surgery'),
(32, 'Venereal and masculinity and male infertility'),
(33, 'Cardiology'),
(34, '      ');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gallery` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'slider',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `title`, `gallery`) VALUES
(11, 'sliderImage.jpg', '', 'slider'),
(13, 'sliderImage2.jpg', '', 'slider'),
(16, '3.jpg', 'pic1', 'album1'),
(17, 'doc-img1.jpg', 'pic1', 'album2'),
(18, 'doc-img.jpg', 'pic2', 'album2'),
(19, 'doc-img.jpg', 'pic2', 'album1'),
(21, 'doc-img.jpg', 'TEST', 'album1'),
(36, '1621668_377648949101804_307781355039161079_n.jpg', '', 'الاجتماع التنفيذى'),
(37, '1800246_377648952435137_4479925575940526632_n.jpg', '', 'الاجتماع التنفيذى'),
(38, '11098277_377648962435136_4929072455235012849_n.jpg', '', 'الاجتماع التنفيذى'),
(39, '11390083_377648982435134_5726618677340880011_n.jpg', '', 'الاجتماع التنفيذى'),
(40, '11391342_377648989101800_7044650928964534384_n.jpg', '', 'الاجتماع التنفيذى'),
(41, '11412221_377648969101802_7351879125283040571_n.jpg', '', 'الاجتماع التنفيذى'),
(42, '10418161_377984395734926_8637639461050324345_n.jpg', '', 'اجتماع الجمعية العمومية '),
(43, '10421265_377982532401779_5160292166595187540_n.jpg', '', 'اجتماع الجمعية العمومية '),
(44, '10543646_377970879069611_3809653068500644177_n.jpg', '', 'اجتماع الجمعية العمومية '),
(45, '11390221_377977825735583_1557322818710364036_n.jpg', '', 'اجتماع الجمعية العمومية '),
(46, '11401397_377974172402615_7008977687145727499_n.jpg', '', 'اجتماع الجمعية العمومية '),
(47, '11412265_377984129068286_1861798900283516677_n.jpg', '', 'اجتماع الجمعية العمومية '),
(48, '11424464_377969122403120_7441762737553154773_n.jpg', '', 'اجتماع الجمعية العمومية '),
(56, '1477950_435103913356307_8631915216722058200_n.jpg', '', 'الاجتماع التنفيذى بمدينة الاسماعيلية'),
(57, '10250052_435104053356293_3441438280223662593_n.jpg', '', 'الاجتماع التنفيذى بمدينة الاسماعيلية'),
(58, '12360192_435103983356300_3126842453138195927_n.jpg', '', 'الاجتماع التنفيذى بمدينة الاسماعيلية'),
(59, '12366277_435104083356290_7423372617634699312_n.jpg', '', 'الاجتماع التنفيذى بمدينة الاسماعيلية'),
(60, '12366422_435103963356302_7490304017963796837_n.jpg', '', 'الاجتماع التنفيذى بمدينة الاسماعيلية'),
(61, '12376256_435104103356288_5181123035134891421_n.jpg', '', 'الاجتماع التنفيذى بمدينة الاسماعيلية'),
(62, '12376481_435103936689638_2424459881563688271_n.jpg', '', 'الاجتماع التنفيذى بمدينة الاسماعيلية'),
(63, '12432996_10208366382576946_47325613_o.jpg', '', 'Brochure'),
(64, '12436474_10208366382216937_931378707_o.jpg', '', 'Brochure'),
(65, '12436561_10208366384536995_1019303484_o.jpg', '', 'Brochure'),
(66, '12449342_10208366382696949_738565299_o.jpg', '', 'Brochure'),
(67, '12449444_10208366382136935_697816590_o.jpg', '', 'Brochure'),
(68, '12449620_10208366382336940_940295757_o.jpg', '', 'Brochure'),
(70, '12436561_10208366384536995_1019303484_o.jpg', '', 'slider'),
(78, 'ادوار الاقامة.jpg', 'ادوار الاقامة', 'مخطط المستشفى '),
(79, 'البدروم.jpg', 'البدروم', 'مخطط المستشفى '),
(80, 'الدور الادارى.jpg', 'الدور الادارى', 'مخطط المستشفى '),
(81, 'الدور الارضى المرتفع.jpg', 'الدور الارضى المرتفع', 'مخطط المستشفى '),
(82, 'الدور الارضى المنخفض.jpg', 'الدور الارضى المنخفض', 'مخطط المستشفى '),
(83, 'الدور الاول.jpg', 'الدور الاول', 'مخطط المستشفى '),
(84, 'الدور الثانى.jpg', 'الدور الثانى', 'مخطط المستشفى ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
