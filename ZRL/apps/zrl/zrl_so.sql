-- phpMyAdmin SQL Dump
-- version 4.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-06-25 19:21:07
-- 服务器版本： 5.1.63-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zrl_so`
--

-- --------------------------------------------------------

--
-- 表的结构 `database_information`
--

CREATE TABLE IF NOT EXISTS `database_information` (
  `KeyName` varchar(48) NOT NULL,
  `KeyValue` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `database_information`
--

INSERT INTO `database_information` (`KeyName`, `KeyValue`) VALUES
('CreateTime', '2014-05-04 14:47:06'),
('Id', 'e878fdf4-d357-11e3-aa3e-00163e02332e'),
('LastUpdate', '2014-05-04 14:47:06'),
('Version', '1.0.0.0');

-- --------------------------------------------------------

--
-- 表的结构 `urls`
--

CREATE TABLE IF NOT EXISTS `urls` (
`Id` bigint(20) NOT NULL,
  `RowOrdinal` int(11) NOT NULL DEFAULT '0',
  `ShortUrl` varchar(64) NOT NULL DEFAULT '',
  `OriginalUrl` varchar(4098) NOT NULL,
  `CreateTime` datetime NOT NULL,
  `ExId` bigint(20) NOT NULL DEFAULT '0',
  `Md5` char(32) DEFAULT NULL,
  `ExpireTime` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `urls`
--

INSERT INTO `urls` (`Id`, `RowOrdinal`, `ShortUrl`, `OriginalUrl`, `CreateTime`, `ExId`, `Md5`, `ExpireTime`) VALUES
(1, 0, '1', '''http://jingyan.baidu.com/article/0a52e3f4635327bf62eds72b5.html''', '2014-05-04 14:47:26', 1, '39ee48f1f487e89ebf42a838ce343a10', NULL),
(2, 0, '2', '''http://jingyan.baidu.com/article/0a5aaaads72b5.html''', '2014-05-04 14:47:40', 2, '8ff4b3a8f5c737fae8d51d90b99af1e3', NULL),
(3, 0, '3', '''http://jingyan.baidu.com/article/0a5aaaads72b5.html''', '2014-05-04 14:49:22', 3, '8ff4b3a8f5c737fae8d51d90b99af1e3', NULL),
(4, 0, '4', '''http://jingyan.baidu.com/article/0a5aaaads72b5.html''', '2014-05-04 14:49:36', 4, '8ff4b3a8f5c737fae8d51d90b99af1e3', NULL),
(5, 0, '5', '''http://www.baidu.com''', '2014-05-04 16:51:53', 5, 'bfa89e563d9509fbc5c6503dd50faf2e', NULL),
(6, 0, '6', '''http://www.google.com''', '2014-05-04 16:52:12', 6, 'ed646a3334ca891fd3467db131372140', NULL),
(7, 0, '7', '''http://WWw.baidu.com''', '2014-05-04 16:56:53', 7, 'becdd1139f85a7a730c22d5fd8bfbf2f', NULL),
(8, 0, '8', '''https://mp.weixin.qq.com/''', '2014-05-11 17:24:40', 8, 'bf950a2b85e1764de2187fc549275fd0', NULL),
(9, 0, '9', '''http://asdfasf''', '2014-05-12 15:51:28', 9, 'a76dce2f2ec4c9efedf377be859ca164', NULL),
(10, 0, 'a', '''http://zrl.so/blog/?p=88''', '2014-05-12 15:58:51', 10, 'c787fc6ddc095c50db860c595e23e8ed', NULL),
(11, 0, 'b', '''http://zrl.so/blog/?p=108''', '2014-05-14 16:04:09', 11, 'c9e69665fc3f6140773ee4d4368484a6', NULL),
(12, 0, 'c', '''http://s.click.taobao.com/t?e=m%3D2%26s%3DLEE8h%2BjW0lYcQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAqUxXfICqxByktDeF8xE37EEODpfLLFwib0QNqjcCJnHw2jcP5%2B2KF5YClQmWb2kAedn1BbglxZYxUhy8exlzcq9AmARIwX9K%2BnbtOD3UdznPV1H2z0iQv9NkKVMHClW0QbMqOpFMIvnvjQXzzpXdTHGJe8N%2FwNpGw%3D%3D''', '2014-05-27 17:42:28', 12, 'e537c249079c98ccdae026f1c1caa0d6', NULL),
(13, 0, 'd', '''http://s.click.taobao.com/t?e=m%3D2%26s%3DEOFg9srG2O8cQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAqUxXfICqxByj2AgG%2FdbMasEODpfLLFwib0QNqjcCJnHw2jcP5%2B2KF5YClQmWb2kAedn1BbglxZYxUhy8exlzcq9AmARIwX9K2Zg%2BdzdQFOwfMRvoxSVDSdLyrb2g0H2G5JcxXijM%2BwneEHpPTskRHnPKdU%2FdTrgjbw4MC6y5nKlXF%2B87KN7TKeiZ%2BQMlGz6FQ%3D%3D''', '2014-05-27 17:43:01', 13, '48da7cc75f343bad3b5be8c7baf20c41', NULL),
(14, 0, 'e', '''http://redirect.simba.taobao.com/rd?w=unionnojs&f=http%3A%2F%2Fre.taobao.com%2Feauction%3Fe%3DNarah2CqfUIjmraEDZVrLtgBy%252FNbUnycl8AO335FWOeLltG5xFicOSZqewpHPyZzlxPsZGMCVop4YrXFR6P0is2cKJXDqyVGotdjbLj108KB3ujUJI0OeA%253D%253D%26ptype%3D100010&k=e2e107a2b72ca1b1&c=un&b=alimm_0&p=mm_55862855_6694119_22672362''', '2014-05-28 12:48:02', 14, '3c59d6c76c5877cbce20ec6201fa2813', NULL),
(15, 0, 'f', '''http://redirect.simba.taobao.com/rd?w=unionnojs&f=http%3A%2F%2Fre.taobao.com%2Feauction%3Fe%3DirDbfBXSQ0ojmraEDZVrLhL3z%252F8Q%252Ft1bLOEkXoxPQQaLltG5xFicOSZqewpHPyZzlxPsZGMCVop4YrXFR6P0is2cKJXDqyVGotdjbLj108KB3ujUJI0OeA%253D%253D%26ptype%3D100010&k=e2e107a2b72ca1b1&c=un&b=alimm_0&p=mm_55862855_6694119_22672362''', '2014-05-28 12:50:46', 15, '67ae1a5b91ac572eef82a918d5d4558a', NULL),
(16, 0, 'g', '''http://s.click.taobao.com/t?e=m%3D2%26s%3DNDnt1KCDtzYcQipKwQzePDAVflQIoZepK7Vc7tFgwiFRAdhuF14FMVeVf0ESGi4vxq3IhSJN6GS%2FxhYkcKk1OPQ%2BqpcWKj%2F2Awxf1CqsrG3k4c7KWITl64Z0VMoAhEmL''', '2014-05-28 13:18:55', 16, 'b503cc9324ec03b5fbd8f5fc3735d9e3', NULL),
(17, 0, 'h', '''http://s.click.taobao.com/t?e=m%3D2%26s%3D3LWSIQZ5lUwcQipKwQzePOeEDrYVVa64K7Vc7tFgwiFRAdhuF14FMedyuBx294Cgt4hWD5k2kjO%2FxhYkcKk1OPQ%2BqpcWKj%2F2Awxf1CqsrG1KvByRAIqIcdyrmpDVQOdFoN9VT49nZyyoiC3%2Bl1xAQAj8YBA2G7eOAc0dO%2FQhafw%3D''', '2014-05-29 13:17:10', 17, 'ab3a073fd2ced3adbaa00388959c98d0', NULL),
(18, 0, 'i', '''http://s.click.taobao.com/t?e=m%3D2%26s%3Dav1QJ60fUTkcQipKwQzePOeEDrYVVa64K7Vc7tFgwiFRAdhuF14FMT06ca6FCuhu8sviUM61dt2%2FxhYkcKk1OPQ%2BqpcWKj%2F2Awxf1CqsrG2uID1RWwjkZRxZOgaDiVDNHiRf3rrkFW%2FBaoglbMAJbPGuFws1ei5Db%2Fig4heiNCA%3D''', '2014-05-29 13:20:13', 18, 'ce8c633cf30c1d37b62b84c5fc722a63', NULL),
(19, 0, 'j', '''https://github.com/gjmjack/quicknav/tree/master/ZRL''', '2014-06-11 22:31:56', 19, '56f17c118f7e3e0e227e184abc8c16f5', NULL),
(20, 0, 'k', '''http://aaa''', '2014-06-21 22:23:30', 20, '19a8624a3ea62d9081d1a4af83499ecc', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
`Id` bigint(20) NOT NULL,
  `Login` varchar(96) NOT NULL,
  `ExId` bigint(20) NOT NULL,
  `Token` varchar(512) NOT NULL COMMENT 'password',
  `Country` int(11) NOT NULL,
  `EmainlAddress` varchar(512) DEFAULT NULL,
  `NickName` varchar(512) DEFAULT NULL,
  `Properties` varchar(2048) DEFAULT NULL,
  `CellPhone` varchar(16) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_info`
--

INSERT INTO `user_info` (`Id`, `Login`, `ExId`, `Token`, `Country`, `EmainlAddress`, `NickName`, `Properties`, `CellPhone`) VALUES
(1, 'gjmjack@126.com', 0, '*CD39DA8A576A6C9BCD87AD45D8CA2B2ACDA76561', 86, 'gjmjack@126.com', 'Jacob', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user_url_map`
--

CREATE TABLE IF NOT EXISTS `user_url_map` (
  `UserId` bigint(20) NOT NULL,
  `UrlId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `visit_records`
--

CREATE TABLE IF NOT EXISTS `visit_records` (
`Id` bigint(20) NOT NULL,
  `UrlId` bigint(20) NOT NULL,
  `AccessTime` datetime NOT NULL,
  `Ipv4` binary(4) DEFAULT NULL,
  `Ipv6` binary(16) DEFAULT NULL,
  `ReferenceUrl` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=230 ;

--
-- 转存表中的数据 `visit_records`
--

INSERT INTO `visit_records` (`Id`, `UrlId`, `AccessTime`, `Ipv4`, `Ipv6`, `ReferenceUrl`) VALUES
(1, 6, '2014-05-04 16:52:17', '0xb6', NULL, NULL),
(2, 7, '2014-05-04 16:57:33', '0xb6', NULL, NULL),
(3, 9, '2014-05-12 15:51:33', '0xde', NULL, NULL),
(4, 10, '2014-05-12 15:58:58', '0xde', NULL, NULL),
(5, 11, '2014-05-14 16:04:43', '0xde', NULL, NULL),
(6, 11, '2014-05-14 16:04:48', '0x7b', NULL, NULL),
(7, 11, '2014-05-14 16:04:54', '0x7b', NULL, NULL),
(8, 11, '2014-05-14 16:05:01', '0x7b', NULL, NULL),
(9, 11, '2014-05-14 16:05:41', '0x7b', NULL, NULL),
(10, 11, '2014-05-14 16:05:49', '0x7b', NULL, NULL),
(11, 11, '2014-05-14 16:06:00', '0x7b', NULL, NULL),
(12, 11, '2014-05-14 16:06:08', '0x7b', NULL, NULL),
(13, 11, '2014-05-14 16:06:24', '0x7b', NULL, NULL),
(14, 11, '2014-05-14 16:06:35', '0x7b', NULL, NULL),
(15, 11, '2014-05-14 16:08:44', '0x7b', NULL, NULL),
(16, 11, '2014-05-14 16:08:53', '0x77', NULL, NULL),
(17, 11, '2014-05-14 16:10:39', '0x7b', NULL, NULL),
(18, 11, '2014-05-14 16:10:48', '0x7b', NULL, NULL),
(19, 11, '2014-05-14 16:12:24', '0xde', NULL, NULL),
(20, 11, '2014-05-14 16:14:12', '0xde', NULL, NULL),
(21, 11, '2014-05-14 16:14:13', '0x77', NULL, NULL),
(22, 11, '2014-05-14 16:14:46', '0x7b', NULL, NULL),
(23, 11, '2014-05-14 16:16:48', '0x7b', NULL, NULL),
(24, 11, '2014-05-14 16:18:10', '0x7b', NULL, NULL),
(25, 11, '2014-05-14 16:26:54', '0x7b', NULL, NULL),
(26, 11, '2014-05-14 16:30:41', '0x7b', NULL, NULL),
(27, 11, '2014-05-14 16:32:58', '0x7b', NULL, NULL),
(28, 5, '2014-05-14 16:34:57', '0x7b', NULL, NULL),
(29, 11, '2014-05-14 16:37:14', '0x7b', NULL, NULL),
(30, 11, '2014-05-14 16:43:53', '0x7b', NULL, NULL),
(31, 11, '2014-05-14 16:47:36', '0x7b', NULL, NULL),
(32, 11, '2014-05-14 16:50:40', '0x7b', NULL, NULL),
(33, 11, '2014-05-14 16:54:34', '0x7b', NULL, NULL),
(34, 11, '2014-05-14 16:54:56', '0xdd', NULL, NULL),
(35, 11, '2014-05-14 17:15:56', '0x7b', NULL, NULL),
(36, 11, '2014-05-14 17:16:12', '0x7b', NULL, NULL),
(37, 11, '2014-05-14 17:18:26', '0x7b', NULL, NULL),
(38, 11, '2014-05-14 17:18:33', '0x7b', NULL, NULL),
(39, 11, '2014-05-14 17:24:55', '0x71', NULL, NULL),
(40, 11, '2014-05-14 17:40:05', '0x76', NULL, NULL),
(41, 11, '2014-05-15 00:09:08', '0xa3', NULL, NULL),
(42, 11, '2014-05-15 08:29:28', '0x7b', NULL, NULL),
(43, 11, '2014-05-15 08:47:30', '0x7b', NULL, NULL),
(44, 11, '2014-05-15 13:04:08', '0x7b', NULL, NULL),
(45, 5, '2014-05-17 21:13:11', '0x6e', NULL, NULL),
(46, 12, '2014-05-27 17:46:32', '0x7b', NULL, NULL),
(47, 13, '2014-05-27 17:46:41', '0x7b', NULL, NULL),
(48, 13, '2014-05-27 17:47:28', '0x7b', NULL, NULL),
(49, 12, '2014-05-27 17:47:33', '0x7b', NULL, NULL),
(50, 12, '2014-05-27 17:48:55', '0xaf', NULL, NULL),
(51, 12, '2014-05-27 17:49:05', '0xaf', NULL, NULL),
(52, 12, '2014-05-27 17:49:32', '0x77', NULL, NULL),
(53, 12, '2014-05-27 17:49:33', '0xb7', NULL, NULL),
(54, 12, '2014-05-27 17:49:59', '0x7b', NULL, NULL),
(55, 12, '2014-05-27 17:50:49', '0xb6', NULL, NULL),
(56, 13, '2014-05-27 17:51:02', '0xb6', NULL, NULL),
(57, 12, '2014-05-27 18:19:31', '0x0e', NULL, NULL),
(58, 12, '2014-05-27 18:19:31', '0xb4', NULL, NULL),
(59, 13, '2014-05-27 18:32:21', '0xb7', NULL, NULL),
(60, 13, '2014-05-27 18:32:24', '0x65', NULL, NULL),
(61, 12, '2014-05-27 18:32:38', '0x71', NULL, NULL),
(62, 12, '2014-05-27 18:32:43', '0x71', NULL, NULL),
(63, 13, '2014-05-27 19:38:56', '0x65', NULL, NULL),
(64, 13, '2014-05-27 19:38:59', '0x65', NULL, NULL),
(65, 12, '2014-05-27 19:53:10', '0x7b', NULL, NULL),
(66, 12, '2014-05-27 20:11:58', '0x7b', NULL, NULL),
(67, 13, '2014-05-27 20:12:02', '0x7b', NULL, NULL),
(68, 12, '2014-05-27 20:31:37', '0x65', NULL, NULL),
(69, 12, '2014-05-27 21:15:47', '0x65', NULL, NULL),
(70, 12, '2014-05-28 08:48:25', '0x7b', NULL, NULL),
(71, 13, '2014-05-28 10:12:20', '0xdd', NULL, NULL),
(72, 12, '2014-05-28 11:12:06', '0x6f', NULL, NULL),
(73, 12, '2014-05-28 11:35:28', '0xde', NULL, NULL),
(74, 12, '2014-05-28 11:58:40', '0x7b', NULL, NULL),
(75, 14, '2014-05-28 12:51:05', '0xb7', NULL, NULL),
(76, 15, '2014-05-28 12:51:06', '0xb7', NULL, NULL),
(77, 15, '2014-05-28 13:00:56', '0xb6', NULL, NULL),
(78, 15, '2014-05-28 13:01:13', '0xb6', NULL, NULL),
(79, 15, '2014-05-28 13:03:54', '0x7b', NULL, NULL),
(80, 15, '2014-05-28 13:04:03', '0x7b', NULL, NULL),
(81, 15, '2014-05-28 13:07:53', '0x7b', NULL, NULL),
(82, 14, '2014-05-28 13:18:27', '0x0e', NULL, NULL),
(83, 12, '2014-05-28 13:20:17', '0x77', NULL, NULL),
(84, 12, '2014-05-28 13:20:23', '0x7b', NULL, NULL),
(85, 13, '2014-05-28 13:20:28', '0x7b', NULL, NULL),
(86, 13, '2014-05-28 13:20:54', '0x7b', NULL, NULL),
(87, 15, '2014-05-28 13:21:06', '0xb7', NULL, NULL),
(88, 16, '2014-05-28 13:21:27', '0x7b', NULL, NULL),
(89, 16, '2014-05-28 13:21:43', '0x7b', NULL, NULL),
(90, 16, '2014-05-28 13:23:04', '0x7b', NULL, NULL),
(91, 16, '2014-05-28 13:24:05', '0x7b', NULL, NULL),
(92, 16, '2014-05-28 13:24:53', '0x7b', NULL, NULL),
(93, 16, '2014-05-28 13:26:55', '0xdb', NULL, NULL),
(94, 16, '2014-05-28 13:32:05', '0x7b', NULL, NULL),
(95, 16, '2014-05-28 13:32:44', '0x7b', NULL, NULL),
(96, 13, '2014-05-28 13:34:46', '0x7b', NULL, NULL),
(97, 16, '2014-05-28 13:35:29', '0x77', NULL, NULL),
(98, 13, '2014-05-28 13:35:38', '0x7b', NULL, NULL),
(99, 16, '2014-05-28 13:37:47', '0x7b', NULL, NULL),
(100, 12, '2014-05-28 13:38:23', '0x7b', NULL, NULL),
(101, 16, '2014-05-28 13:43:39', '0x7b', NULL, NULL),
(102, 16, '2014-05-28 13:46:06', '0x7b', NULL, NULL),
(103, 15, '2014-05-28 13:54:57', '0xde', NULL, NULL),
(104, 14, '2014-05-28 13:55:19', '0xde', NULL, NULL),
(105, 14, '2014-05-28 13:55:48', '0x65', NULL, NULL),
(106, 14, '2014-05-28 14:01:42', '0x71', NULL, NULL),
(107, 14, '2014-05-28 14:01:47', '0x71', NULL, NULL),
(108, 16, '2014-05-28 14:04:29', '0x7b', NULL, NULL),
(109, 15, '2014-05-28 14:05:05', '0x71', NULL, NULL),
(110, 15, '2014-05-28 14:05:10', '0x71', NULL, NULL),
(111, 15, '2014-05-28 14:43:33', '0x7d', NULL, NULL),
(112, 15, '2014-05-28 15:22:11', '0xb6', NULL, NULL),
(113, 15, '2014-05-28 15:22:19', '0xb6', NULL, NULL),
(114, 15, '2014-05-28 15:22:21', '0xb6', NULL, NULL),
(115, 15, '2014-05-28 16:29:59', '0x76', NULL, NULL),
(116, 15, '2014-05-28 16:30:09', '0x76', NULL, NULL),
(117, 15, '2014-05-28 16:30:12', '0x76', NULL, NULL),
(118, 15, '2014-05-28 16:30:14', '0x76', NULL, NULL),
(119, 16, '2014-05-28 16:33:06', '0x7b', NULL, NULL),
(120, 15, '2014-05-28 16:49:41', '0x7b', NULL, NULL),
(121, 15, '2014-05-28 16:49:45', '0x7b', NULL, NULL),
(122, 15, '2014-05-28 16:49:54', '0x7b', NULL, NULL),
(123, 15, '2014-05-28 16:49:58', '0x7b', NULL, NULL),
(124, 15, '2014-05-28 16:50:00', '0x7b', NULL, NULL),
(125, 15, '2014-05-28 16:50:07', '0x7b', NULL, NULL),
(126, 15, '2014-05-28 16:50:09', '0x7b', NULL, NULL),
(127, 15, '2014-05-28 16:50:13', '0x7b', NULL, NULL),
(128, 15, '2014-05-28 16:50:14', '0x7b', NULL, NULL),
(129, 15, '2014-05-28 16:50:38', '0x7b', NULL, NULL),
(130, 15, '2014-05-28 16:51:26', '0x7b', NULL, NULL),
(131, 16, '2014-05-28 16:51:34', '0x7b', NULL, NULL),
(132, 16, '2014-05-28 16:51:35', '0x7b', NULL, NULL),
(133, 16, '2014-05-28 16:51:42', '0x7b', NULL, NULL),
(134, 14, '2014-05-28 16:51:49', '0x7b', NULL, NULL),
(135, 16, '2014-05-28 16:52:04', '0x7b', NULL, NULL),
(136, 16, '2014-05-28 16:52:52', '0x7b', NULL, NULL),
(137, 16, '2014-05-28 16:53:04', '0x7b', NULL, NULL),
(138, 16, '2014-05-28 16:53:43', '0x7b', NULL, NULL),
(139, 16, '2014-05-28 16:55:52', '0x7b', NULL, NULL),
(140, 15, '2014-05-28 16:56:11', '0x7b', NULL, NULL),
(141, 16, '2014-05-28 16:59:10', '0x7b', NULL, NULL),
(142, 16, '2014-05-28 16:59:11', '0x7b', NULL, NULL),
(143, 15, '2014-05-28 16:59:42', '0x7b', NULL, NULL),
(144, 15, '2014-05-28 17:01:07', '0x70', NULL, NULL),
(145, 15, '2014-05-28 17:01:22', '0x70', NULL, NULL),
(146, 15, '2014-05-28 17:01:25', '0x70', NULL, NULL),
(147, 15, '2014-05-28 17:01:28', '0x70', NULL, NULL),
(148, 15, '2014-05-28 17:14:38', '0x72', NULL, NULL),
(149, 16, '2014-05-28 17:20:13', '0xb6', NULL, NULL),
(150, 15, '2014-05-28 17:24:41', '0xaf', NULL, NULL),
(151, 15, '2014-05-28 17:27:14', '0x70', NULL, NULL),
(152, 15, '2014-05-28 17:27:24', '0x70', NULL, NULL),
(153, 15, '2014-05-28 17:27:27', '0x70', NULL, NULL),
(154, 15, '2014-05-28 17:27:29', '0x70', NULL, NULL),
(155, 16, '2014-05-28 17:40:27', '0x7b', NULL, NULL),
(156, 15, '2014-05-28 18:00:46', '0xda', NULL, NULL),
(157, 15, '2014-05-28 18:05:16', '0x0a', NULL, NULL),
(158, 15, '2014-05-28 18:05:26', '0x0a', NULL, NULL),
(159, 15, '2014-05-28 18:36:30', '0x0a', NULL, NULL),
(160, 15, '2014-05-28 18:37:47', '0x0a', NULL, NULL),
(161, 15, '2014-05-28 19:24:17', '0xdc', NULL, NULL),
(162, 15, '2014-05-28 19:24:27', '0xdc', NULL, NULL),
(163, 15, '2014-05-28 19:24:30', '0xdc', NULL, NULL),
(164, 15, '2014-05-28 20:25:33', '0xaf', NULL, NULL),
(165, 15, '2014-05-28 20:25:41', '0xaf', NULL, NULL),
(166, 15, '2014-05-28 23:06:47', '0xb4', NULL, NULL),
(167, 15, '2014-05-28 23:18:31', '0xb4', NULL, NULL),
(168, 16, '2014-05-29 09:08:44', '0x7b', NULL, NULL),
(169, 12, '2014-05-29 11:53:54', '0x7b', NULL, NULL),
(170, 13, '2014-05-29 11:55:01', '0x7b', NULL, NULL),
(171, 16, '2014-05-29 12:04:58', '0xb6', NULL, NULL),
(172, 16, '2014-05-29 12:36:03', '0xb7', NULL, NULL),
(173, 15, '2014-05-29 12:48:56', '0x7b', NULL, NULL),
(174, 15, '2014-05-29 12:48:57', '0x7b', NULL, NULL),
(175, 16, '2014-05-29 12:51:21', '0x71', NULL, NULL),
(176, 16, '2014-05-29 13:13:21', '0x65', NULL, NULL),
(177, 17, '2014-05-29 13:22:22', '0x7b', NULL, NULL),
(178, 17, '2014-05-29 13:22:48', '0x7b', NULL, NULL),
(179, 17, '2014-05-29 13:23:09', '0x7b', NULL, NULL),
(180, 17, '2014-05-29 13:24:16', '0x7b', NULL, NULL),
(181, 18, '2014-05-29 13:24:24', '0x7b', NULL, NULL),
(182, 18, '2014-05-29 13:24:49', '0x7b', NULL, NULL),
(183, 17, '2014-05-29 13:24:51', '0x77', NULL, NULL),
(184, 17, '2014-05-29 13:25:24', '0x7b', NULL, NULL),
(185, 17, '2014-05-29 13:25:35', '0x7b', NULL, NULL),
(186, 17, '2014-05-29 13:26:12', '0x7b', NULL, NULL),
(187, 17, '2014-05-29 13:28:21', '0x7b', NULL, NULL),
(188, 17, '2014-05-29 13:31:38', '0x77', NULL, NULL),
(189, 17, '2014-05-29 13:31:56', '0x7b', NULL, NULL),
(190, 17, '2014-05-29 13:33:35', '0x7b', NULL, NULL),
(191, 17, '2014-05-29 13:33:51', '0x7b', NULL, NULL),
(192, 17, '2014-05-29 13:34:04', '0x7b', NULL, NULL),
(193, 17, '2014-05-29 13:34:06', '0x7b', NULL, NULL),
(194, 16, '2014-05-29 13:34:40', '0x7b', NULL, NULL),
(195, 16, '2014-05-29 13:36:28', '0x7b', NULL, NULL),
(196, 17, '2014-05-29 13:38:18', '0x7b', NULL, NULL),
(197, 17, '2014-05-29 13:44:30', '0xde', NULL, NULL),
(198, 17, '2014-05-29 13:47:00', '0x7b', NULL, NULL),
(199, 18, '2014-05-29 13:47:27', '0x7b', NULL, NULL),
(200, 17, '2014-05-29 13:53:36', '0xb6', NULL, NULL),
(201, 18, '2014-05-29 13:54:30', '0xb6', NULL, NULL),
(202, 17, '2014-05-29 14:04:44', '0x77', NULL, NULL),
(203, 17, '2014-05-29 14:07:58', '0x77', NULL, NULL),
(204, 17, '2014-05-29 14:09:01', '0x7b', NULL, NULL),
(205, 17, '2014-05-29 14:17:04', '0x71', NULL, NULL),
(206, 17, '2014-05-29 14:17:09', '0x71', NULL, NULL),
(207, 17, '2014-05-29 14:20:28', '0x7b', NULL, NULL),
(208, 17, '2014-05-29 14:24:41', '0x65', NULL, NULL),
(209, 17, '2014-05-29 15:22:37', '0x7b', NULL, NULL),
(210, 17, '2014-05-29 16:11:25', '0x77', NULL, NULL),
(211, 12, '2014-05-31 17:57:32', '0xc7', NULL, NULL),
(212, 12, '2014-05-31 18:47:20', '0x9d', NULL, NULL),
(213, 12, '2014-05-31 19:17:36', '0x9d', NULL, NULL),
(214, 12, '2014-05-31 19:51:15', '0x41', NULL, NULL),
(215, 12, '2014-06-02 08:08:10', '0x9d', NULL, NULL),
(216, 16, '2014-06-02 09:21:27', '0x9d', NULL, NULL),
(217, 15, '2014-06-02 20:15:52', '0x7c', NULL, NULL),
(218, 16, '2014-06-03 05:43:13', '0x9d', NULL, NULL),
(219, 17, '2014-06-06 13:16:37', '0x7b', NULL, NULL),
(220, 17, '2014-06-06 16:26:07', '0x7b', NULL, NULL),
(221, 14, '2014-06-08 12:42:48', '0x65', NULL, NULL),
(222, 12, '2014-06-08 12:42:48', '0x65', NULL, NULL),
(223, 13, '2014-06-08 12:42:48', '0xb4', NULL, NULL),
(224, 17, '2014-06-09 09:04:49', '0xad', NULL, NULL),
(225, 17, '2014-06-09 13:39:32', '0xb4', NULL, NULL),
(226, 16, '2014-06-09 13:39:45', '0xb4', NULL, NULL),
(227, 15, '2014-06-14 07:44:11', '0x7b', NULL, NULL),
(228, 15, '2014-06-20 19:25:17', '0xdc', NULL, NULL),
(229, 15, '2014-06-24 08:48:40', '0xdc', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `visit_statistics`
--

CREATE TABLE IF NOT EXISTS `visit_statistics` (
  `UrlId` bigint(20) NOT NULL,
  `VisitCount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `visit_statistics`
--

INSERT INTO `visit_statistics` (`UrlId`, `VisitCount`) VALUES
(5, 2),
(6, 1),
(7, 1),
(9, 1),
(10, 1),
(11, 39),
(12, 30),
(13, 15),
(14, 8),
(15, 59),
(16, 36),
(17, 32),
(18, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `database_information`
--
ALTER TABLE `database_information`
 ADD PRIMARY KEY (`KeyName`), ADD UNIQUE KEY `Id_UNIQUE` (`KeyName`);

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
 ADD PRIMARY KEY (`Id`,`RowOrdinal`,`ExId`), ADD KEY `ShortUrl` (`ShortUrl`) USING BTREE;

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
 ADD PRIMARY KEY (`Id`,`Login`,`ExId`), ADD UNIQUE KEY `Login_UNIQUE` (`Login`), ADD UNIQUE KEY `Id_UNIQUE` (`Id`);

--
-- Indexes for table `user_url_map`
--
ALTER TABLE `user_url_map`
 ADD PRIMARY KEY (`UserId`,`UrlId`);

--
-- Indexes for table `visit_records`
--
ALTER TABLE `visit_records`
 ADD PRIMARY KEY (`Id`), ADD KEY `UrlId` (`UrlId`,`AccessTime`);

--
-- Indexes for table `visit_statistics`
--
ALTER TABLE `visit_statistics`
 ADD PRIMARY KEY (`UrlId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `visit_records`
--
ALTER TABLE `visit_records`
MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=230;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
