-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-12-07 12:27:35
-- 服务器版本： 5.6.40
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can add group', 3, 'add_group'),
(9, 'Can change group', 3, 'change_group'),
(10, 'Can delete group', 3, 'delete_group'),
(11, 'Can view group', 3, 'view_group'),
(12, 'Can view permission', 2, 'view_permission'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add 班级信息', 6, 'add_userclass'),
(22, 'Can change 班级信息', 6, 'change_userclass'),
(23, 'Can delete 班级信息', 6, 'delete_userclass'),
(24, 'Can add 用户信息', 7, 'add_userprofile'),
(25, 'Can change 用户信息', 7, 'change_userprofile'),
(26, 'Can delete 用户信息', 7, 'delete_userprofile'),
(27, 'Can add 邮箱验证码', 8, 'add_emailrevifyrecord'),
(28, 'Can change 邮箱验证码', 8, 'change_emailrevifyrecord'),
(29, 'Can delete 邮箱验证码', 8, 'delete_emailrevifyrecord'),
(30, 'Can add 轮播图', 9, 'add_banner'),
(31, 'Can change 轮播图', 9, 'change_banner'),
(32, 'Can delete 轮播图', 9, 'delete_banner'),
(37, 'Can view 轮播图', 9, 'view_banner'),
(38, 'Can view 邮箱验证码', 8, 'view_emailrevifyrecord'),
(39, 'Can view 班级信息', 6, 'view_userclass'),
(40, 'Can view 用户信息', 7, 'view_userprofile'),
(41, 'Can add 课程', 11, 'add_courselist'),
(42, 'Can change 课程', 11, 'change_courselist'),
(43, 'Can delete 课程', 11, 'delete_courselist'),
(44, 'Can add 题库', 12, 'add_question'),
(45, 'Can change 题库', 12, 'change_question'),
(46, 'Can delete 题库', 12, 'delete_question'),
(47, 'Can add 试卷列表', 13, 'add_paperlist'),
(48, 'Can change 试卷列表', 13, 'change_paperlist'),
(49, 'Can delete 试卷列表', 13, 'delete_paperlist'),
(50, 'Can add 试题列表', 14, 'add_paper'),
(51, 'Can change 试题列表', 14, 'change_paper'),
(52, 'Can delete 试题列表', 14, 'delete_paper'),
(53, 'Can view 课程', 11, 'view_courselist'),
(54, 'Can view 试题列表', 14, 'view_paper'),
(55, 'Can view 试卷列表', 13, 'view_paperlist'),
(56, 'Can view 题库', 12, 'view_question'),
(57, 'Can add 通知发布', 15, 'add_notice'),
(58, 'Can change 通知发布', 15, 'change_notice'),
(59, 'Can delete 通知发布', 15, 'delete_notice'),
(60, 'Can add 用户留言', 16, 'add_usernote'),
(61, 'Can change 用户留言', 16, 'change_usernote'),
(62, 'Can delete 用户留言', 16, 'delete_usernote'),
(63, 'Can add 用户做题记录', 17, 'add_useranswerlog'),
(64, 'Can change 用户做题记录', 17, 'change_useranswerlog'),
(65, 'Can delete 用户做题记录', 17, 'delete_useranswerlog'),
(66, 'Can add 用户总分', 18, 'add_userscore'),
(67, 'Can change 用户总分', 18, 'change_userscore'),
(68, 'Can delete 用户总分', 18, 'delete_userscore'),
(69, 'Can view 通知发布', 15, 'view_notice'),
(70, 'Can view 用户做题记录', 17, 'view_useranswerlog'),
(71, 'Can view 用户留言', 16, 'view_usernote'),
(72, 'Can view 用户总分', 18, 'view_userscore'),
(73, 'Can add Bookmark', 19, 'add_bookmark'),
(74, 'Can change Bookmark', 19, 'change_bookmark'),
(75, 'Can delete Bookmark', 19, 'delete_bookmark'),
(76, 'Can add User Setting', 20, 'add_usersettings'),
(77, 'Can change User Setting', 20, 'change_usersettings'),
(78, 'Can delete User Setting', 20, 'delete_usersettings'),
(79, 'Can add User Widget', 21, 'add_userwidget'),
(80, 'Can change User Widget', 21, 'change_userwidget'),
(81, 'Can delete User Widget', 21, 'delete_userwidget'),
(82, 'Can add log entry', 22, 'add_log'),
(83, 'Can change log entry', 22, 'change_log'),
(84, 'Can delete log entry', 22, 'delete_log'),
(85, 'Can view Bookmark', 19, 'view_bookmark'),
(86, 'Can view log entry', 22, 'view_log'),
(87, 'Can view User Setting', 20, 'view_usersettings'),
(88, 'Can view User Widget', 21, 'view_userwidget'),
(89, 'Can add captcha store', 23, 'add_captchastore'),
(90, 'Can change captcha store', 23, 'change_captchastore'),
(91, 'Can delete captcha store', 23, 'delete_captchastore'),
(92, 'Can add 导入学生信息文件', 24, 'add_classexcel'),
(93, 'Can change 导入学生信息文件', 24, 'change_classexcel'),
(94, 'Can delete 导入学生信息文件', 24, 'delete_classexcel'),
(95, 'Can add 资料下载管理', 25, 'add_filestroe'),
(96, 'Can change 资料下载管理', 25, 'change_filestroe'),
(97, 'Can delete 资料下载管理', 25, 'delete_filestroe'),
(98, 'Can add 试题列表', 26, 'add_userpaperlog'),
(99, 'Can change 试题列表', 26, 'change_userpaperlog'),
(100, 'Can delete 试题列表', 26, 'delete_userpaperlog'),
(101, 'Can view captcha store', 23, 'view_captchastore'),
(102, 'Can view 试题列表', 26, 'view_userpaperlog'),
(103, 'Can view 导入学生信息文件', 24, 'view_classexcel'),
(104, 'Can view 资料下载管理', 25, 'view_filestroe');

-- --------------------------------------------------------

--
-- 表的结构 `captcha_captchastore`
--

CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `captcha_captchastore`
--

INSERT INTO `captcha_captchastore` (`id`, `challenge`, `response`, `hashkey`, `expiration`) VALUES
(423, 'ZNGU', 'zngu', 'f64da95662bb1fa7fcd816d597b49fbdbd8e20d5', '2018-12-07 12:18:55'),
(424, 'QZVY', 'qzvy', 'fbe084a2505919e24bd0399e0e3b00ac290f4e38', '2018-12-07 12:18:57');

-- --------------------------------------------------------

--
-- 表的结构 `coures_courselist`
--

CREATE TABLE `coures_courselist` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `decs` varchar(500) NOT NULL,
  `add_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coures_courselist`
--

INSERT INTO `coures_courselist` (`id`, `name`, `decs`, `add_time`) VALUES
(1, '数据结构', '数据机构与算法设计', '2017-04-03');

-- --------------------------------------------------------

--
-- 表的结构 `coures_paper`
--

CREATE TABLE `coures_paper` (
  `id` int(11) NOT NULL,
  `add_time` date NOT NULL,
  `paper_name_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coures_paper`
--

INSERT INTO `coures_paper` (`id`, `add_time`, `paper_name_id`, `question_id`, `course_id`) VALUES
(16, '2018-03-21', 5, 1, 1),
(17, '2018-03-21', 5, 2, 1),
(18, '2018-03-21', 5, 3, 1),
(32, '2018-12-06', 11, 23, 1),
(33, '2018-12-06', 11, 24, 1);

-- --------------------------------------------------------

--
-- 表的结构 `coures_paperlist`
--

CREATE TABLE `coures_paperlist` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_allow` tinyint(1) NOT NULL,
  `add_time` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `paperclass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coures_paperlist`
--

INSERT INTO `coures_paperlist` (`id`, `name`, `is_allow`, `add_time`, `course_id`, `user_id`, `paperclass`) VALUES
(5, 'test', 1, '2018-03-21', 1, 3, '2017211310,2017211311,2017211312'),
(11, 'test1', 1, '2018-12-06', 1, 4, '2017211301,2017211302,2017211303');

-- --------------------------------------------------------

--
-- 表的结构 `coures_question`
--

CREATE TABLE `coures_question` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `score` int(11) NOT NULL,
  `note` longtext NOT NULL,
  `add_time` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `Question_class` longtext NOT NULL,
  `Question_degree` int(1) NOT NULL,
  `score_point` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coures_question`
--

INSERT INTO `coures_question` (`id`, `content`, `answer`, `score`, `note`, `add_time`, `course_id`, `Question_class`, `Question_degree`, `score_point`, `user_id`) VALUES
(1, '计算机中的指令是怎么构成的？', '指令由操作码+操作数地址码构成', 10, '问答题在此处做答', '2017-04-03', 1, '计算机组成原理', 0, '操作码 5分；地址码 5分', 3),
(2, '简述计算机中地址总线与数据总线的概念。', '地址总线：传送内存地址编码，给地址译码器。数据总线：访问传送数据，用于CPU 与内存之间、输入输出设备与内存之间。', 9, '问答题在此处做答', '2017-04-03', 1, '计算机组成原理', 0, '传送内存地址编码 5分；访问传送数据 4分', 3),
(3, '请简述程序设计语言的概念，程序的概念，以及两者之间的关系。', '程序设计语言：用于编写计算机程序的语言。程序：以某些程序设计语言编写，运行于某种目标结构体系上的指令序列。联系：程序仅可用程序设计语言表示才能被计算机编译运行，程序设计语言是程序的表现方式。', 10, '问答题在此处做答', '2017-04-03', 1, '程序设计', 0, '编写计算机程序 3分分；指令序列 5分分；编译运行 2分分', 3),
(23, '请简述什么是数据结构', '数据结构是一门课程', 9, '', '2018-12-06', 1, '数据结构', 0, '数据结构 5分；课程 4分', 4),
(24, '请简述路由器的作用？', '存储转发数据包，寻址下一跳路由器。', 10, '', '2018-12-06', 1, '计算机网络', 1, '存储转发 5分；寻址 5分', 4);

-- --------------------------------------------------------

--
-- 表的结构 `coures_updatemodel`
--

CREATE TABLE `coures_updatemodel` (
  `id` int(11) NOT NULL,
  `content` text,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coures_updatemodel`
--

INSERT INTO `coures_updatemodel` (`id`, `content`, `category`) VALUES
(2, '计算机技术的发展日新月异，对社会生活的方方面面都产生着巨大的影响，教育行业也属于其中之一。伴随着信息的网络化，越来越多的在线学习方式逐渐对传统的课堂式教学进行着补充，例如在线学习和考试系统的出现。一方面，目前可以成熟应用的在线考试系统大多集中在对答案固定的客观题的处理上，而在实际的考试场景中，以自由文本为答案的主观题也是大量存在的，而目前能对主观题采用计算机算法进行自动评分的系统还不多；另一方面，通过计算机对主观题进行自动评分具有一定的优势，例如能够提升评分的公正性，有效减少由于评分人员的主观意识形成的评分差异，使得评分过程可以依据一定的准则，从而得到更加客观与合理的评分结果。同时，对主观题进行人工评分往往是一个负担比较大的工作，如果能通过计算机自动完成这一工作，将大大减少批卷者的工作量，有效提升效率，所以实现主观题的自动评分具有实用意义。\n', '计算机组成原理');

-- --------------------------------------------------------

--
-- 表的结构 `coures_userpaperlog`
--

CREATE TABLE `coures_userpaperlog` (
  `id` int(11) NOT NULL,
  `paper_name_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `add_time` date DEFAULT NULL,
  `score` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `coures_userpaperlog`
--

INSERT INTO `coures_userpaperlog` (`id`, `paper_name_id`, `user_id`, `status`, `add_time`, `score`) VALUES
(1, 1, 10, 2, '2018-03-18', '21'),
(2, 5, 10, 2, '2018-03-21', '23'),
(3, 1, 19, 2, '2018-04-01', '44'),
(4, 5, 20, 1, '2018-06-16', NULL),
(5, 5, 21, 1, '2018-06-16', NULL),
(6, 5, 22, 1, '2018-06-16', NULL),
(7, 5, 23, 1, '2018-06-16', NULL),
(8, 5, 24, 1, '2018-06-16', NULL),
(9, 5, 25, 1, '2018-06-16', NULL),
(10, 5, 26, 1, '2018-06-16', NULL),
(11, 5, 27, 1, '2018-06-16', NULL),
(12, 5, 28, 1, '2018-06-16', NULL),
(13, 5, 29, 1, '2018-06-16', NULL),
(14, 5, 30, 1, '2018-06-16', NULL),
(15, 5, 31, 1, '2018-06-16', NULL),
(16, 5, 32, 1, '2018-06-16', NULL),
(17, 5, 33, 1, '2018-06-16', NULL),
(18, 5, 34, 1, '2018-06-16', NULL),
(19, 5, 35, 1, '2018-06-16', NULL),
(20, 5, 36, 1, '2018-06-16', NULL),
(21, 5, 37, 1, '2018-06-16', NULL),
(22, 5, 38, 1, '2018-06-16', NULL),
(23, 5, 39, 1, '2018-06-16', NULL),
(24, 5, 40, 1, '2018-06-16', NULL),
(25, 5, 41, 1, '2018-06-16', NULL),
(26, 5, 42, 1, '2018-06-16', NULL),
(27, 5, 43, 1, '2018-06-16', NULL),
(28, 5, 44, 1, '2018-06-16', NULL),
(29, 5, 45, 1, '2018-06-16', NULL),
(30, 5, 46, 1, '2018-06-16', NULL),
(31, 5, 47, 1, '2018-06-16', NULL),
(32, 5, 48, 1, '2018-06-16', NULL),
(33, 5, 49, 1, '2018-06-16', NULL),
(34, 5, 50, 1, '2018-06-16', NULL),
(35, 5, 51, 1, '2018-06-16', NULL),
(36, 5, 52, 1, '2018-06-16', NULL),
(37, 5, 53, 1, '2018-06-16', NULL),
(38, 5, 54, 1, '2018-06-16', NULL),
(39, 5, 55, 1, '2018-06-16', NULL),
(40, 5, 56, 1, '2018-06-16', NULL),
(41, 5, 57, 1, '2018-06-16', NULL),
(42, 5, 58, 1, '2018-06-16', NULL),
(43, 5, 59, 1, '2018-06-16', NULL),
(44, 5, 60, 1, '2018-06-16', NULL),
(45, 5, 61, 1, '2018-06-16', NULL),
(46, 5, 62, 1, '2018-06-16', NULL),
(47, 5, 63, 1, '2018-06-16', NULL),
(48, 5, 64, 1, '2018-06-16', NULL),
(49, 5, 65, 1, '2018-06-16', NULL),
(50, 5, 66, 1, '2018-06-16', NULL),
(51, 5, 67, 1, '2018-06-16', NULL),
(52, 5, 68, 1, '2018-06-16', NULL),
(53, 5, 69, 1, '2018-06-16', NULL),
(54, 5, 70, 1, '2018-06-16', NULL),
(55, 5, 71, 1, '2018-06-16', NULL),
(56, 5, 72, 1, '2018-06-16', NULL),
(57, 5, 73, 1, '2018-06-16', NULL),
(58, 5, 74, 1, '2018-06-16', NULL),
(59, 5, 75, 1, '2018-06-16', NULL),
(60, 5, 76, 1, '2018-06-16', NULL),
(61, 5, 77, 1, '2018-06-16', NULL),
(62, 5, 78, 1, '2018-06-16', NULL),
(63, 5, 79, 1, '2018-06-16', NULL),
(64, 5, 80, 1, '2018-06-16', NULL),
(65, 5, 81, 1, '2018-06-16', NULL),
(66, 5, 82, 1, '2018-06-16', NULL),
(67, 5, 83, 1, '2018-06-16', NULL),
(68, 5, 84, 1, '2018-06-16', NULL),
(69, 5, 85, 1, '2018-06-16', NULL),
(70, 5, 86, 1, '2018-06-16', NULL),
(71, 5, 87, 1, '2018-06-16', NULL),
(72, 5, 88, 1, '2018-06-16', NULL),
(73, 5, 89, 1, '2018-06-16', NULL),
(74, 5, 90, 1, '2018-06-16', NULL),
(75, 5, 91, 1, '2018-06-16', NULL),
(76, 5, 92, 1, '2018-06-16', NULL),
(77, 5, 93, 1, '2018-06-16', NULL),
(78, 5, 94, 1, '2018-06-16', NULL),
(79, 5, 95, 1, '2018-06-16', NULL),
(80, 5, 96, 1, '2018-06-16', NULL),
(81, 5, 97, 1, '2018-06-16', NULL),
(82, 5, 98, 1, '2018-06-16', NULL),
(83, 5, 99, 1, '2018-06-16', NULL),
(84, 5, 100, 1, '2018-06-16', NULL),
(85, 5, 101, 1, '2018-06-16', NULL),
(86, 5, 102, 1, '2018-06-16', NULL),
(87, 5, 103, 1, '2018-06-16', NULL),
(88, 5, 104, 1, '2018-06-16', NULL),
(89, 5, 105, 1, '2018-06-16', NULL),
(90, 5, 106, 1, '2018-06-16', NULL),
(91, 5, 107, 1, '2018-06-16', NULL),
(92, 5, 108, 1, '2018-06-16', NULL),
(93, 5, 109, 1, '2018-06-16', NULL),
(94, 5, 110, 1, '2018-06-16', NULL),
(95, 5, 111, 1, '2018-06-16', NULL),
(96, 5, 112, 1, '2018-06-16', NULL),
(97, 5, 113, 1, '2018-06-16', NULL),
(98, 5, 114, 1, '2018-06-16', NULL),
(99, 5, 115, 1, '2018-06-16', NULL),
(100, 5, 116, 1, '2018-06-16', NULL),
(101, 5, 117, 1, '2018-06-16', NULL),
(102, 5, 118, 1, '2018-06-16', NULL),
(103, 5, 119, 1, '2018-06-16', NULL),
(104, 5, 120, 1, '2018-06-16', NULL),
(105, 5, 121, 1, '2018-06-16', NULL),
(106, 5, 122, 1, '2018-06-16', NULL),
(107, 5, 123, 1, '2018-06-16', NULL),
(108, 5, 124, 1, '2018-06-16', NULL),
(109, 5, 125, 1, '2018-06-16', NULL),
(110, 5, 126, 1, '2018-06-16', NULL),
(111, 5, 127, 1, '2018-06-16', NULL),
(112, 5, 128, 1, '2018-06-16', NULL),
(113, 5, 129, 1, '2018-06-16', NULL),
(114, 5, 130, 1, '2018-06-16', NULL),
(115, 5, 131, 1, '2018-06-16', NULL),
(116, 5, 132, 1, '2018-06-16', NULL),
(117, 5, 133, 1, '2018-06-16', NULL),
(118, 5, 134, 1, '2018-06-16', NULL),
(119, 5, 135, 1, '2018-06-16', NULL),
(120, 5, 136, 1, '2018-06-16', NULL),
(121, 5, 137, 1, '2018-06-16', NULL),
(122, 5, 138, 1, '2018-06-16', NULL),
(123, 5, 139, 1, '2018-06-16', NULL),
(124, 5, 140, 1, '2018-06-16', NULL),
(125, 5, 141, 1, '2018-06-16', NULL),
(126, 5, 142, 1, '2018-06-16', NULL),
(127, 5, 143, 1, '2018-06-16', NULL),
(128, 5, 144, 1, '2018-06-16', NULL),
(129, 5, 145, 1, '2018-06-16', NULL),
(130, 5, 146, 1, '2018-06-16', NULL),
(131, 5, 147, 1, '2018-06-16', NULL),
(132, 5, 148, 1, '2018-06-16', NULL),
(133, 5, 149, 1, '2018-06-16', NULL),
(134, 5, 150, 1, '2018-06-16', NULL),
(135, 5, 151, 1, '2018-06-16', NULL),
(136, 5, 152, 1, '2018-06-16', NULL),
(137, 5, 153, 1, '2018-06-16', NULL),
(138, 5, 154, 1, '2018-06-16', NULL),
(139, 5, 155, 1, '2018-06-16', NULL),
(140, 5, 156, 1, '2018-06-16', NULL),
(141, 5, 157, 1, '2018-06-16', NULL),
(142, 5, 158, 1, '2018-06-16', NULL),
(143, 5, 159, 1, '2018-06-16', NULL),
(144, 5, 160, 1, '2018-06-16', NULL),
(145, 5, 161, 1, '2018-06-16', NULL),
(146, 5, 162, 1, '2018-06-16', NULL),
(147, 5, 163, 1, '2018-06-16', NULL),
(148, 5, 164, 1, '2018-06-16', NULL),
(149, 5, 165, 1, '2018-06-16', NULL),
(150, 5, 166, 1, '2018-06-16', NULL),
(151, 5, 167, 1, '2018-06-16', NULL),
(152, 5, 168, 1, '2018-06-16', NULL),
(153, 5, 169, 1, '2018-06-16', NULL),
(154, 5, 170, 1, '2018-06-16', NULL),
(155, 5, 171, 1, '2018-06-16', NULL),
(156, 5, 172, 1, '2018-06-16', NULL),
(157, 5, 173, 1, '2018-06-16', NULL),
(158, 5, 174, 1, '2018-06-16', NULL),
(159, 5, 175, 1, '2018-06-16', NULL),
(160, 5, 176, 1, '2018-06-16', NULL),
(161, 5, 177, 1, '2018-06-16', NULL),
(162, 5, 178, 1, '2018-06-16', NULL),
(163, 5, 179, 1, '2018-06-16', NULL),
(164, 5, 180, 1, '2018-06-16', NULL),
(165, 5, 181, 1, '2018-06-16', NULL),
(166, 5, 182, 1, '2018-06-16', NULL),
(167, 5, 183, 1, '2018-06-16', NULL),
(168, 5, 184, 1, '2018-06-16', NULL),
(169, 5, 185, 1, '2018-06-16', NULL),
(170, 5, 186, 1, '2018-06-16', NULL),
(171, 5, 187, 1, '2018-06-16', NULL),
(172, 5, 188, 1, '2018-06-16', NULL),
(173, 5, 189, 1, '2018-06-16', NULL),
(174, 5, 190, 1, '2018-06-16', NULL),
(175, 5, 191, 1, '2018-06-16', NULL),
(176, 5, 192, 1, '2018-06-16', NULL),
(177, 5, 193, 1, '2018-06-16', NULL),
(178, 5, 194, 1, '2018-06-16', NULL),
(179, 5, 195, 1, '2018-06-16', NULL),
(180, 5, 196, 1, '2018-06-16', NULL),
(181, 5, 197, 1, '2018-06-16', NULL),
(182, 5, 198, 1, '2018-06-16', NULL),
(183, 5, 199, 1, '2018-06-16', NULL),
(184, 5, 200, 1, '2018-06-16', NULL),
(185, 5, 201, 1, '2018-06-16', NULL),
(186, 5, 202, 1, '2018-06-16', NULL),
(187, 5, 203, 1, '2018-06-16', NULL),
(188, 5, 204, 1, '2018-06-16', NULL),
(189, 5, 205, 1, '2018-06-16', NULL),
(190, 5, 206, 1, '2018-06-16', NULL),
(191, 5, 207, 1, '2018-06-16', NULL),
(192, 5, 208, 1, '2018-06-16', NULL),
(193, 5, 209, 1, '2018-06-16', NULL),
(194, 5, 210, 1, '2018-06-16', NULL),
(195, 5, 211, 1, '2018-06-16', NULL),
(196, 5, 212, 1, '2018-06-16', NULL),
(197, 5, 213, 1, '2018-06-16', NULL),
(198, 5, 214, 1, '2018-06-16', NULL),
(199, 5, 215, 1, '2018-06-16', NULL),
(200, 5, 216, 1, '2018-06-16', NULL),
(201, 5, 217, 1, '2018-06-16', NULL),
(202, 5, 218, 1, '2018-06-16', NULL),
(203, 5, 219, 1, '2018-06-16', NULL),
(204, 5, 220, 1, '2018-06-16', NULL),
(205, 5, 221, 1, '2018-06-16', NULL),
(206, 5, 222, 1, '2018-06-16', NULL),
(207, 5, 223, 1, '2018-06-16', NULL),
(208, 5, 224, 1, '2018-06-16', NULL),
(209, 5, 225, 1, '2018-06-16', NULL),
(210, 5, 226, 1, '2018-06-16', NULL),
(211, 5, 227, 1, '2018-06-16', NULL),
(212, 5, 228, 1, '2018-06-16', NULL),
(213, 5, 229, 1, '2018-06-16', NULL),
(214, 5, 230, 1, '2018-06-16', NULL),
(215, 5, 231, 1, '2018-06-16', NULL),
(216, 5, 232, 1, '2018-06-16', NULL),
(217, 5, 233, 1, '2018-06-16', NULL),
(218, 5, 234, 1, '2018-06-16', NULL),
(219, 5, 235, 1, '2018-06-16', NULL),
(220, 5, 236, 1, '2018-06-16', NULL),
(221, 5, 237, 1, '2018-06-16', NULL),
(222, 5, 238, 1, '2018-06-16', NULL),
(223, 5, 239, 1, '2018-06-16', NULL),
(224, 5, 240, 1, '2018-06-16', NULL),
(225, 5, 241, 1, '2018-06-16', NULL),
(226, 5, 242, 1, '2018-06-16', NULL),
(227, 5, 243, 1, '2018-06-16', NULL),
(228, 5, 244, 1, '2018-06-16', NULL),
(229, 5, 245, 1, '2018-06-16', NULL),
(230, 5, 246, 1, '2018-06-16', NULL),
(231, 5, 247, 1, '2018-06-16', NULL),
(232, 5, 248, 1, '2018-06-16', NULL),
(233, 5, 249, 1, '2018-06-16', NULL),
(234, 5, 250, 1, '2018-06-16', NULL),
(235, 5, 251, 1, '2018-06-16', NULL),
(236, 5, 252, 1, '2018-06-16', NULL),
(237, 5, 253, 1, '2018-06-16', NULL),
(238, 5, 254, 1, '2018-06-16', NULL),
(239, 5, 255, 1, '2018-06-16', NULL),
(240, 5, 256, 1, '2018-06-16', NULL),
(241, 5, 257, 1, '2018-06-16', NULL),
(242, 5, 258, 1, '2018-06-16', NULL),
(243, 5, 259, 1, '2018-06-16', NULL),
(244, 5, 260, 1, '2018-06-16', NULL),
(245, 5, 261, 1, '2018-06-16', NULL),
(246, 5, 262, 1, '2018-06-16', NULL),
(247, 5, 263, 1, '2018-06-16', NULL),
(248, 5, 264, 1, '2018-06-16', NULL),
(249, 5, 265, 1, '2018-06-16', NULL),
(250, 5, 266, 1, '2018-06-16', NULL),
(251, 5, 267, 1, '2018-06-16', NULL),
(252, 5, 268, 1, '2018-06-16', NULL),
(253, 5, 269, 1, '2018-06-16', NULL),
(254, 5, 270, 1, '2018-06-16', NULL),
(255, 5, 271, 1, '2018-06-16', NULL),
(256, 5, 272, 1, '2018-06-16', NULL),
(257, 5, 273, 1, '2018-06-16', NULL),
(258, 5, 274, 1, '2018-06-16', NULL),
(259, 5, 275, 1, '2018-06-16', NULL),
(260, 5, 276, 1, '2018-06-16', NULL),
(261, 5, 277, 1, '2018-06-16', NULL),
(262, 5, 278, 1, '2018-06-16', NULL),
(263, 5, 279, 1, '2018-06-16', NULL),
(264, 5, 280, 1, '2018-06-16', NULL),
(265, 5, 281, 1, '2018-06-16', NULL),
(266, 5, 282, 1, '2018-06-16', NULL),
(267, 5, 283, 1, '2018-06-16', NULL),
(268, 5, 284, 1, '2018-06-16', NULL),
(269, 5, 285, 1, '2018-06-16', NULL),
(270, 5, 286, 1, '2018-06-16', NULL),
(271, 5, 287, 1, '2018-06-16', NULL),
(272, 5, 288, 1, '2018-06-16', NULL),
(273, 5, 289, 1, '2018-06-16', NULL),
(274, 5, 290, 1, '2018-06-16', NULL),
(275, 5, 291, 1, '2018-06-16', NULL),
(276, 5, 292, 1, '2018-06-16', NULL),
(277, 5, 293, 1, '2018-06-16', NULL),
(278, 5, 294, 1, '2018-06-16', NULL),
(279, 5, 295, 1, '2018-06-16', NULL),
(280, 5, 296, 1, '2018-06-16', NULL),
(281, 5, 297, 1, '2018-06-16', NULL),
(282, 5, 298, 1, '2018-06-16', NULL),
(283, 5, 299, 1, '2018-06-16', NULL),
(284, 5, 300, 1, '2018-06-16', NULL),
(285, 5, 301, 1, '2018-06-16', NULL),
(286, 5, 302, 1, '2018-06-16', NULL),
(287, 5, 303, 1, '2018-06-16', NULL),
(288, 5, 304, 1, '2018-06-16', NULL),
(289, 5, 305, 1, '2018-06-16', NULL),
(290, 5, 306, 1, '2018-06-16', NULL),
(291, 5, 307, 1, '2018-06-16', NULL),
(292, 5, 308, 1, '2018-06-16', NULL),
(293, 5, 309, 1, '2018-06-16', NULL),
(294, 5, 310, 1, '2018-06-16', NULL),
(295, 5, 311, 1, '2018-06-16', NULL),
(296, 5, 312, 1, '2018-06-16', NULL),
(297, 5, 313, 1, '2018-06-16', NULL),
(298, 5, 314, 1, '2018-06-16', NULL),
(299, 5, 315, 1, '2018-06-16', NULL),
(300, 5, 316, 1, '2018-06-16', NULL),
(301, 5, 317, 1, '2018-06-16', NULL),
(302, 5, 318, 1, '2018-06-16', NULL),
(303, 5, 319, 1, '2018-06-16', NULL),
(304, 5, 320, 1, '2018-06-16', NULL),
(305, 5, 321, 1, '2018-06-16', NULL),
(306, 5, 322, 1, '2018-06-16', NULL),
(307, 5, 323, 1, '2018-06-16', NULL),
(308, 5, 324, 1, '2018-06-16', NULL),
(309, 5, 325, 1, '2018-06-16', NULL),
(310, 5, 326, 1, '2018-06-16', NULL),
(311, 5, 327, 1, '2018-06-16', NULL),
(312, 5, 328, 1, '2018-06-16', NULL),
(313, 5, 329, 1, '2018-06-16', NULL),
(314, 5, 330, 1, '2018-06-16', NULL),
(315, 5, 331, 1, '2018-06-16', NULL),
(316, 5, 332, 1, '2018-06-16', NULL),
(317, 5, 333, 1, '2018-06-16', NULL),
(318, 5, 334, 1, '2018-06-16', NULL),
(319, 5, 335, 1, '2018-06-16', NULL),
(320, 5, 336, 1, '2018-06-16', NULL),
(321, 5, 337, 1, '2018-06-16', NULL),
(322, 5, 338, 1, '2018-06-16', NULL),
(323, 5, 339, 1, '2018-06-16', NULL),
(324, 5, 340, 1, '2018-06-16', NULL),
(325, 5, 341, 1, '2018-06-16', NULL),
(326, 5, 342, 1, '2018-06-16', NULL),
(327, 5, 343, 1, '2018-06-16', NULL),
(328, 5, 344, 1, '2018-06-16', NULL),
(329, 5, 345, 1, '2018-06-16', NULL),
(330, 5, 346, 1, '2018-06-16', NULL),
(331, 5, 347, 1, '2018-06-16', NULL),
(332, 5, 348, 1, '2018-06-16', NULL),
(333, 5, 349, 1, '2018-06-16', NULL),
(334, 5, 350, 1, '2018-06-16', NULL),
(335, 5, 351, 1, '2018-06-16', NULL),
(336, 5, 352, 1, '2018-06-16', NULL),
(337, 5, 353, 1, '2018-06-16', NULL),
(338, 5, 354, 1, '2018-06-16', NULL),
(339, 5, 355, 1, '2018-06-16', NULL),
(340, 5, 356, 1, '2018-06-16', NULL),
(341, 5, 357, 1, '2018-06-16', NULL),
(342, 5, 358, 1, '2018-06-16', NULL),
(343, 5, 359, 1, '2018-06-16', NULL),
(344, 5, 360, 1, '2018-06-16', NULL),
(345, 5, 361, 1, '2018-06-16', NULL),
(346, 5, 362, 1, '2018-06-16', NULL),
(347, 5, 363, 1, '2018-06-16', NULL),
(348, 5, 364, 1, '2018-06-16', NULL),
(349, 5, 365, 1, '2018-06-16', NULL),
(350, 5, 366, 1, '2018-06-16', NULL),
(351, 5, 367, 1, '2018-06-16', NULL),
(352, 5, 368, 1, '2018-06-16', NULL),
(353, 5, 369, 1, '2018-06-16', NULL),
(354, 5, 370, 1, '2018-06-16', NULL),
(355, 5, 371, 1, '2018-06-16', NULL),
(356, 5, 372, 1, '2018-06-16', NULL),
(357, 5, 373, 1, '2018-06-16', NULL),
(358, 5, 374, 1, '2018-06-16', NULL),
(359, 5, 375, 1, '2018-06-16', NULL),
(360, 5, 376, 1, '2018-06-16', NULL),
(361, 5, 377, 1, '2018-06-16', NULL),
(362, 5, 378, 1, '2018-06-16', NULL),
(363, 5, 379, 1, '2018-06-16', NULL),
(364, 5, 380, 1, '2018-06-16', NULL),
(365, 5, 381, 1, '2018-06-16', NULL),
(366, 5, 382, 1, '2018-06-16', NULL),
(367, 5, 383, 1, '2018-06-16', NULL),
(368, 5, 384, 1, '2018-06-16', NULL),
(369, 5, 385, 1, '2018-06-16', NULL),
(370, 5, 386, 1, '2018-06-16', NULL),
(371, 5, 387, 1, '2018-06-16', NULL),
(372, 5, 388, 1, '2018-06-16', NULL),
(373, 5, 389, 1, '2018-06-16', NULL),
(374, 5, 390, 1, '2018-06-16', NULL),
(375, 5, 391, 1, '2018-06-16', NULL),
(376, 5, 392, 1, '2018-06-16', NULL),
(377, 5, 393, 1, '2018-06-16', NULL),
(378, 5, 394, 1, '2018-06-16', NULL),
(379, 5, 395, 1, '2018-06-16', NULL),
(380, 5, 396, 1, '2018-06-16', NULL),
(381, 5, 397, 1, '2018-06-16', NULL),
(382, 5, 398, 1, '2018-06-16', NULL),
(383, 5, 399, 1, '2018-06-16', NULL),
(384, 5, 400, 1, '2018-06-16', NULL),
(385, 5, 401, 1, '2018-06-16', NULL),
(386, 5, 402, 1, '2018-06-16', NULL),
(387, 5, 403, 1, '2018-06-16', NULL),
(388, 5, 404, 1, '2018-06-16', NULL),
(389, 5, 405, 1, '2018-06-16', NULL),
(390, 5, 406, 1, '2018-06-16', NULL),
(391, 5, 407, 1, '2018-06-16', NULL),
(392, 5, 408, 1, '2018-06-16', NULL),
(393, 5, 409, 1, '2018-06-16', NULL),
(394, 5, 410, 1, '2018-06-16', NULL),
(395, 5, 411, 1, '2018-06-16', NULL),
(396, 5, 412, 1, '2018-06-16', NULL),
(397, 5, 413, 1, '2018-06-16', NULL),
(398, 5, 414, 1, '2018-06-16', NULL),
(399, 5, 415, 1, '2018-06-16', NULL),
(400, 5, 416, 1, '2018-06-16', NULL),
(401, 5, 417, 1, '2018-06-16', NULL),
(402, 5, 418, 1, '2018-06-16', NULL),
(403, 5, 419, 1, '2018-06-16', NULL),
(404, 5, 420, 1, '2018-06-16', NULL),
(405, 5, 421, 1, '2018-06-16', NULL),
(406, 5, 422, 1, '2018-06-16', NULL),
(407, 5, 423, 1, '2018-06-16', NULL),
(408, 5, 424, 1, '2018-06-16', NULL),
(409, 5, 425, 1, '2018-06-16', NULL),
(410, 5, 426, 1, '2018-06-16', NULL),
(411, 5, 427, 1, '2018-06-16', NULL),
(412, 5, 428, 1, '2018-06-16', NULL),
(413, 5, 429, 1, '2018-06-16', NULL),
(414, 5, 430, 1, '2018-06-16', NULL),
(415, 5, 431, 1, '2018-06-16', NULL),
(416, 5, 432, 1, '2018-06-16', NULL),
(417, 5, 433, 1, '2018-06-16', NULL),
(418, 5, 434, 1, '2018-06-16', NULL),
(419, 5, 435, 1, '2018-06-16', NULL),
(420, 5, 436, 1, '2018-06-16', NULL),
(421, 5, 437, 1, '2018-06-16', NULL),
(422, 5, 438, 1, '2018-06-16', NULL),
(423, 5, 439, 1, '2018-06-16', NULL),
(424, 5, 440, 1, '2018-06-16', NULL),
(425, 5, 441, 1, '2018-06-16', NULL),
(426, 5, 442, 1, '2018-06-16', NULL),
(427, 5, 443, 1, '2018-06-16', NULL),
(428, 5, 444, 1, '2018-06-16', NULL),
(429, 5, 445, 1, '2018-06-16', NULL),
(430, 5, 446, 1, '2018-06-16', NULL),
(431, 5, 447, 1, '2018-06-16', NULL),
(432, 5, 448, 1, '2018-06-16', NULL),
(433, 5, 449, 1, '2018-06-16', NULL),
(434, 5, 450, 1, '2018-06-16', NULL),
(435, 5, 451, 1, '2018-06-16', NULL),
(436, 5, 452, 1, '2018-06-16', NULL),
(437, 5, 453, 1, '2018-06-16', NULL),
(438, 5, 454, 1, '2018-06-16', NULL),
(439, 5, 455, 1, '2018-06-16', NULL),
(440, 5, 456, 1, '2018-06-16', NULL),
(441, 5, 457, 1, '2018-06-16', NULL),
(442, 5, 458, 1, '2018-06-16', NULL),
(443, 5, 459, 1, '2018-06-16', NULL),
(444, 5, 460, 1, '2018-06-16', NULL),
(445, 5, 461, 1, '2018-06-16', NULL),
(446, 5, 462, 1, '2018-06-16', NULL),
(447, 5, 463, 1, '2018-06-16', NULL),
(448, 5, 464, 1, '2018-06-16', NULL),
(449, 5, 465, 1, '2018-06-16', NULL),
(450, 5, 466, 1, '2018-06-16', NULL),
(451, 5, 467, 1, '2018-06-16', NULL),
(452, 5, 468, 1, '2018-06-16', NULL),
(453, 5, 469, 1, '2018-06-16', NULL),
(454, 5, 470, 1, '2018-06-16', NULL),
(455, 5, 471, 1, '2018-06-16', NULL),
(456, 5, 472, 1, '2018-06-16', NULL),
(457, 5, 473, 1, '2018-06-16', NULL),
(458, 5, 474, 1, '2018-06-16', NULL),
(459, 5, 475, 1, '2018-06-16', NULL),
(460, 5, 476, 1, '2018-06-16', NULL),
(461, 5, 477, 1, '2018-06-16', NULL),
(462, 5, 478, 1, '2018-06-16', NULL),
(463, 5, 479, 1, '2018-06-16', NULL),
(464, 5, 480, 1, '2018-06-16', NULL),
(465, 5, 481, 1, '2018-06-16', NULL),
(466, 5, 482, 1, '2018-06-16', NULL),
(467, 5, 483, 1, '2018-06-16', NULL),
(468, 5, 484, 1, '2018-06-16', NULL),
(469, 5, 485, 1, '2018-06-16', NULL),
(470, 5, 486, 1, '2018-06-16', NULL),
(471, 5, 487, 1, '2018-06-16', NULL),
(472, 5, 488, 1, '2018-06-16', NULL),
(473, 5, 489, 1, '2018-06-16', NULL),
(474, 5, 490, 1, '2018-06-16', NULL),
(475, 5, 491, 1, '2018-06-16', NULL),
(476, 5, 492, 1, '2018-06-16', NULL),
(477, 5, 493, 1, '2018-06-16', NULL),
(478, 5, 494, 1, '2018-06-16', NULL),
(479, 5, 495, 1, '2018-06-16', NULL),
(480, 5, 496, 1, '2018-06-16', NULL),
(481, 5, 497, 1, '2018-06-16', NULL),
(482, 5, 498, 1, '2018-06-16', NULL),
(483, 5, 499, 1, '2018-06-16', NULL),
(484, 5, 500, 1, '2018-06-16', NULL),
(485, 5, 501, 1, '2018-06-16', NULL),
(486, 5, 502, 1, '2018-06-16', NULL),
(487, 5, 503, 1, '2018-06-16', NULL),
(488, 5, 504, 1, '2018-06-16', NULL),
(489, 5, 505, 1, '2018-06-16', NULL),
(490, 5, 506, 1, '2018-06-16', NULL),
(491, 5, 507, 1, '2018-06-16', NULL),
(492, 5, 508, 1, '2018-06-16', NULL),
(493, 5, 509, 1, '2018-06-16', NULL),
(494, 5, 510, 1, '2018-06-16', NULL),
(495, 5, 511, 1, '2018-06-16', NULL),
(496, 5, 512, 1, '2018-06-16', NULL),
(497, 5, 513, 1, '2018-06-16', NULL),
(498, 5, 514, 1, '2018-06-16', NULL),
(499, 5, 515, 1, '2018-06-16', NULL),
(500, 5, 516, 1, '2018-06-16', NULL),
(501, 5, 517, 1, '2018-06-16', NULL),
(502, 5, 518, 1, '2018-06-16', NULL),
(503, 5, 519, 1, '2018-06-16', NULL),
(504, 11, 1040, 1, '2018-12-06', '');

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(23, 'captcha', 'captchastore'),
(4, 'contenttypes', 'contenttype'),
(11, 'coures', 'courselist'),
(14, 'coures', 'paper'),
(13, 'coures', 'paperlist'),
(12, 'coures', 'question'),
(26, 'coures', 'userpaperlog'),
(15, 'operate', 'notice'),
(17, 'operate', 'useranswerlog'),
(16, 'operate', 'usernote'),
(18, 'operate', 'userscore'),
(5, 'sessions', 'session'),
(9, 'users', 'banner'),
(24, 'users', 'classexcel'),
(8, 'users', 'emailrevifyrecord'),
(25, 'users', 'filestroe'),
(6, 'users', 'userclass'),
(7, 'users', 'userprofile'),
(19, 'xadmin', 'bookmark'),
(22, 'xadmin', 'log'),
(20, 'xadmin', 'usersettings'),
(21, 'xadmin', 'userwidget');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-04-03 23:43:57'),
(2, 'contenttypes', '0002_remove_content_type_name', '2017-04-03 23:43:57'),
(3, 'auth', '0001_initial', '2017-04-03 23:43:58'),
(4, 'auth', '0002_alter_permission_name_max_length', '2017-04-03 23:43:58'),
(5, 'auth', '0003_alter_user_email_max_length', '2017-04-03 23:43:58'),
(6, 'auth', '0004_alter_user_username_opts', '2017-04-03 23:43:58'),
(7, 'auth', '0005_alter_user_last_login_null', '2017-04-03 23:43:58'),
(8, 'auth', '0006_require_contenttypes_0002', '2017-04-03 23:43:58'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2017-04-03 23:43:58'),
(10, 'users', '0001_initial', '2017-04-03 23:43:59'),
(11, 'admin', '0001_initial', '2017-04-03 23:43:59'),
(12, 'admin', '0002_logentry_remove_auto_add', '2017-04-03 23:43:59'),
(13, 'captcha', '0001_initial', '2017-04-03 23:43:59'),
(14, 'coures', '0001_initial', '2017-04-03 23:43:59'),
(15, 'coures', '0002_paper_course', '2017-04-03 23:43:59'),
(16, 'operate', '0001_initial', '2017-04-03 23:44:00'),
(17, 'operate', '0002_auto_20170403_2323', '2017-04-03 23:44:00'),
(18, 'sessions', '0001_initial', '2017-04-03 23:44:00'),
(19, 'users', '0002_alloweduser', '2017-04-03 23:44:00'),
(20, 'xadmin', '0001_initial', '2017-04-03 23:44:00'),
(21, 'xadmin', '0002_log', '2017-04-03 23:44:00'),
(22, 'xadmin', '0003_auto_20160715_0100', '2017-04-03 23:44:00'),
(23, 'coures', '0003_auto_20180725_1438', '2018-07-25 12:34:53'),
(24, 'coures', '0003_auto_20180725_1524', '2018-07-25 13:03:07'),
(25, 'coures', '0004_question_content', '2018-07-25 13:03:07'),
(26, 'coures', '0005_question_question_class', '2018-07-25 13:03:07'),
(27, 'coures', '0006_question_question_degree', '2018-07-25 13:03:07'),
(28, 'coures', '0007_question_score_point', '2018-07-25 13:03:07');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0bh1d4aird0wqngeimiwqgiik11d1uqk', 'NzYzNmI3MmIzNGFlYzYzOGUyZTA0MWU0ZWFkYTc3Y2NjOTkwNzM4ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY2OGUzMDM3NzcwMGQwODBiZjNlMDAyNTRmN2U4YWUxZjM5Mzk5N2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MjMifQ==', '2018-12-19 11:14:53'),
('2081cuiqllpvy0af0tvnrvpgwzvfv9j2', 'YzU5ZmI4ZTE4YTY1OTZiYTU3YzhjNGQ3MzE5NjFkMzdiMWMwZWExNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5NjQ2MWNkNTZmZjdiNGFhYTM4NTUyOGVhNzc3NjM5M2VmNjQzMTgiLCJfYXV0aF91c2VyX2lkIjoiNTIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2018-09-03 03:09:23'),
('3sq0bcyp5nz2lqqqbr6wvsbd0o28dpna', 'OTExMTNjMGQ1YWRkNzA1Zjc4YWM2MDFlYjQzZTJlZjU4ZDhkZjRhNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjZhNTBkZjc2ZTcxZTRkY2QzYTI5MGU4ZmNiZDFmNzNkNDE5MjVhNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MjIifQ==', '2018-12-05 03:40:04'),
('74vd0nw9bmyiux6e5lc21gjrjhvwkhn4', 'OGFiOWU0MWJmZTU4NmU4YThmZmVkOWJlMGFkOTc0MGIyMzNjZTJhODp7Il9hdXRoX3VzZXJfaGFzaCI6ImMxNGM5MGEzMDhmMzc0OTI0YTQ0YmVmM2MzZWU2OGMzODBhODkwNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MjIifQ==', '2018-09-21 06:29:49'),
('769elg2ktegxulb0fn4tu3xgglt2c43j', 'M2NhNmE2ZjE5NjU3MmUwZGIyYzc5ZGYwNGQ0ZTFjMDdmZjJiZjYwNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiZmU3Mzk1MzdkZjRhYjg2Nzc4NWFjYjlkODcwZjE2OGI1MjJmNWE1NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2017-04-24 17:08:24'),
('7tlr8ooflhsbo3hpef9danuj8cno1u3p', 'MDY1MTdhYzkwYmNmZmZjMGQ5MDU0OTNlZTFhZWNlMDgwZTM3NjdkYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0NTI0ZGViNGJhOGFiMmZkNmQ5NzI3ZWVlYzgyMjcyMjNkODllNTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE5In0=', '2018-04-15 21:48:30'),
('8h5jq0fffjm7x63dyjiq888dn20uo13k', 'Y2I5M2NmMmJkMjg1N2Q2NmU5N2ZhMzQ4ZWVhMjNkZDkzNDE1NDU4MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlNzM5NTM3ZGY0YWI4Njc3ODVhY2I5ZDg3MGYxNjhiNTIyZjVhNTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==', '2017-04-18 22:19:31'),
('8tl5kaofo8wg73dtb2i6wrz54svi8282', 'NjljMjZjOGY2OWJkOWEzZmE3NTY5ZDBhMDRhMmYyNGVlMDZjMjlkNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmNWIzYmYwOGU0ZDk2OWExZGMwODgyZWNjZWFjZTIwZDgxODkwNjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MjMifQ==', '2018-11-20 11:31:59'),
('dg5uye3zib65mq9teu57sqkwyqqs21ni', 'YzU5ZmI4ZTE4YTY1OTZiYTU3YzhjNGQ3MzE5NjFkMzdiMWMwZWExNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5NjQ2MWNkNTZmZjdiNGFhYTM4NTUyOGVhNzc3NjM5M2VmNjQzMTgiLCJfYXV0aF91c2VyX2lkIjoiNTIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2018-09-16 15:17:50'),
('e9x802h24e0zhcku8ew7r8qo1rere7ed', 'OTc4ZTA5ODRkYWYzMWU1MjUyNzY0ZmM2MDU4MjFlN2Q2ZThjZjM1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5NjQ2MWNkNTZmZjdiNGFhYTM4NTUyOGVhNzc3NjM5M2VmNjQzMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MjIifQ==', '2018-09-03 05:29:58'),
('ekrv1tk2jew1wyyafludiyftg3xhafqa', 'YzU5ZmI4ZTE4YTY1OTZiYTU3YzhjNGQ3MzE5NjFkMzdiMWMwZWExNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5NjQ2MWNkNTZmZjdiNGFhYTM4NTUyOGVhNzc3NjM5M2VmNjQzMTgiLCJfYXV0aF91c2VyX2lkIjoiNTIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2018-09-16 11:48:29'),
('f60wqnduiovafz5ctbjg60v7jhlszds8', 'OGY4MzM5OTYxYjcxMTUxZDkwNTBkN2JmY2YzMzhmODMyZDk1YTk5NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwYTIyNmNkMmNjMWUxZDM2MDdkMGU2MjNkNWRlZDcxOTMyZTNhNmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2018-12-21 12:15:01'),
('i80s6tadgxhky5e5di7vc4ts9vmeb59v', 'OTc4ZTA5ODRkYWYzMWU1MjUyNzY0ZmM2MDU4MjFlN2Q2ZThjZjM1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5NjQ2MWNkNTZmZjdiNGFhYTM4NTUyOGVhNzc3NjM5M2VmNjQzMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MjIifQ==', '2018-08-27 08:37:16'),
('lql03xqbtuxl94kn39lv80w4jkkdijt5', 'OTc4ZTA5ODRkYWYzMWU1MjUyNzY0ZmM2MDU4MjFlN2Q2ZThjZjM1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5NjQ2MWNkNTZmZjdiNGFhYTM4NTUyOGVhNzc3NjM5M2VmNjQzMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MjIifQ==', '2018-08-13 06:44:04'),
('m277gad14b6b21qygjkeptkl1hwhu0oy', 'NzYzNmI3MmIzNGFlYzYzOGUyZTA0MWU0ZWFkYTc3Y2NjOTkwNzM4ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY2OGUzMDM3NzcwMGQwODBiZjNlMDAyNTRmN2U4YWUxZjM5Mzk5N2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MjMifQ==', '2018-12-20 03:30:21'),
('q2ekau7963zcvqeockm9wbkl79n6ed36', 'MWRkMmQ0NTdiNWRkYTJhMjFhNDkwYWI0OTNjMzFhOTRiNjRjM2U1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImJkZTMyZTYzZjNiZDk2MjlkMTFmOWM4ZjU4NjIzMWRlOWE0ZTg5MGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDQwIn0=', '2018-12-20 07:10:18'),
('urc3guggw405i9sg6yp81fiz77cn7ekf', 'YzU5ZmI4ZTE4YTY1OTZiYTU3YzhjNGQ3MzE5NjFkMzdiMWMwZWExNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5NjQ2MWNkNTZmZjdiNGFhYTM4NTUyOGVhNzc3NjM5M2VmNjQzMTgiLCJfYXV0aF91c2VyX2lkIjoiNTIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2018-08-08 12:51:00'),
('w3qkkafg7qtdnnqvqf66zvre3mj5i3yb', 'OTc4ZTA5ODRkYWYzMWU1MjUyNzY0ZmM2MDU4MjFlN2Q2ZThjZjM1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5NjQ2MWNkNTZmZjdiNGFhYTM4NTUyOGVhNzc3NjM5M2VmNjQzMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MjIifQ==', '2018-08-08 15:09:22'),
('ws4f3dx3iotb0pjaeirs9pn69d39je8b', 'OTc4ZTA5ODRkYWYzMWU1MjUyNzY0ZmM2MDU4MjFlN2Q2ZThjZjM1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5NjQ2MWNkNTZmZjdiNGFhYTM4NTUyOGVhNzc3NjM5M2VmNjQzMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MjIifQ==', '2018-09-17 13:24:07');

-- --------------------------------------------------------

--
-- 表的结构 `operate_notice`
--

CREATE TABLE `operate_notice` (
  `id` int(11) NOT NULL,
  `pub_time` date NOT NULL,
  `pub_content` longtext NOT NULL,
  `pub_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `operate_useranswerlog`
--

CREATE TABLE `operate_useranswerlog` (
  `id` int(11) NOT NULL,
  `answer` longtext NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `add_time` date NOT NULL,
  `paper_log_id` int(11) DEFAULT NULL,
  `paper_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mscore` int(11) DEFAULT '-1',
  `score2` int(11) DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `operate_useranswerlog`
--

INSERT INTO `operate_useranswerlog` (`id`, `answer`, `score`, `add_time`, `paper_log_id`, `paper_id`, `user_id`, `mscore`, `score2`) VALUES
(152, '指令由操作码+操作数地址码构成', 0, '2018-06-16', 4, 16, 20, -1, 10),
(153, '地址总线：传送内存地址编码，给地址译码器。数据总线：访问传送数据，用于CPU 与内存之间、输入\\输出设备与内存之间。', -1, '2018-06-16', 4, 17, 20, -1, 9),
(154, '程序设计语言：用于编写计算机程序的语言。程序：以某些程序设计语言编写，运行于某种目标结构体系上的指令序列。联系：程序仅可用程序设计语言表示才能被计算机编译运行，程序设计语言是程序的表现方式。', 10, '2018-06-16', 4, 18, 20, -1, -1),
(155, '由储存在内存的二进制数据经cpu转换而来', 0, '2018-06-16', 5, 16, 21, -1, 0),
(156, '地址总线是cpu向存储器发送地址数据的通道，数据总线是cpu读写存储器的通道。', -1, '2018-06-16', 5, 17, 21, -1, 0),
(157, '程序设计语言包括高级语言和低级的语言，而程序是可执行文件。程序是由程序设计语言编译出的。', 10, '2018-06-16', 5, 18, 21, -1, -1),
(158, '由操作码和地址码两部分构成', 3, '2018-06-16', 6, 16, 22, -1, 10),
(159, '地址总线用来向主存储器主存储器或输入/输出设备传送待输入/输出的数据的地址\n数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据', -1, '2018-06-16', 6, 17, 22, -1, 0),
(160, '程序设计语言：用于书写计算机程序的语言叫做程序设计语言\n程序：按事先设计的功能和性能要求编制的指令序列叫做程序\n程序设计语言书写的程序代码经过一系列转换之后最终会成为一段指令序列（即程序）', 0, '2018-06-16', 6, 18, 22, -1, -1),
(161, '指令是有操作码和地址码构成的二进制代码串，操作码用来表明本次本条指令要求计算机完成的操作，地址码表示本次运算操作数或者操作数地址以及运算结果所在的地址。', 8, '2018-06-16', 7, 16, 23, -1, 10),
(162, '地址总线是用来指定在RAM之中储存的数据的地址。数据总线是在CPU与RAM之间来回传送需要处理或是需要储存的数据。', -1, '2018-06-16', 7, 17, 23, -1, 0),
(163, '程序设计语言是指根据预先定义的规则而写出的预定语言的集合，程序是按事先设计的功能和性能要求编制的程序的指令。程序设计语言的集合组成了程序，从而被计算机识别。', 4, '2018-06-16', 7, 18, 23, -1, -1),
(164, '由操作码和地址码组成，以二进制形式存储在存储器中', 8, '2018-06-16', 8, 16, 24, -1, 10),
(165, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线用于传送数据信息。', -1, '2018-06-16', 8, 17, 24, -1, 0),
(166, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 1, '2018-06-16', 8, 18, 24, -1, -1),
(167, '指令一般由操作码和地址码构成。操作码用来表明本条指令要求计算机完成的操作，地址码包括操作数地址，操作结果的储存地址和下一条指令的地址。操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址（即寄存器名）；操作结果的存储地址：将对操作数的操作结果保存在该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址；下一条指令的地址：一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC（存放下一条指令地址的寄存器）指出；仅当改变程序的运行顺序（转移、调用子程序）时，下条指令的地址才由转移类指令给出。', 7, '2018-06-16', 9, 16, 25, -1, 10),
(168, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 9, 17, 25, -1, 0),
(169, '计算机语言是指根据预先定义的规则（语法）而写出的预定语句的集合；按事先设计的功能和性能要求编制的指令序列叫做程序；由那些集合，也就是语言，组合形成了程序。', 0, '2018-06-16', 9, 18, 25, -1, -1),
(170, '操作码和地址码', 3, '2018-06-16', 10, 16, 26, -1, 10),
(171, '地址总线：传送地址编码给译码器。数据总线：CPU或输入输出设备与内存之间传送数据。', -1, '2018-06-16', 10, 17, 26, -1, 0),
(172, '程序设计语言：用于编写计算机程序的语言。程序：一组指示计算机执行动作或做出判断的指令。联系：程序要用程序设计语言编写，程序设计语言是程序的载体。', 10, '2018-06-16', 10, 18, 26, -1, -1),
(173, '由操作码和操作数构成，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 11, 16, 27, -1, 5),
(174, '地址总线是地址线数量之和。CPU是通过地址总线来指定存储单元的。地址总线决定了cpu所能访问的最大内存空间的大小。数据总线是数据线数量之和。是CPU与内存或其他器件之间的数据传送的通道。数据总线的宽度决定了CPU和外界的数据传送速度。', -1, '2018-06-16', 11, 17, 27, -1, 0),
(175, '程序设计语言指用于书写计算机程序的语言。程序是指以某些程序设计语言编写，运行于某种目标结构体系上的指令序列。程序仅可用程序设计语言表示才能被计算机编译运行。程序设计语言是程序的表现方式。', 9, '2018-06-16', 11, 18, 27, -1, -1),
(176, '能够被计算机硬件直接识别的、命令计算机进行某种基本操作的、由‘0’和‘1’组成的二进制代码串。', 10, '2018-06-16', 12, 16, 28, -1, 0),
(177, '地址总线属于一种电脑总线 （一部份），是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。\n数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 12, 17, 28, -1, 0),
(178, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。\n程序是一组由程序员编写、机器操作的稳定的指令或语句序列，是算法的一种描述，存在硬盘上，它可能会也可能不会成为作业。\n关系：在程序中，每一个算法的步骤对应着程序设计语言的一个或多个语句。程序是实现算法的思想的过程；程序设计语言把算法转化为计算机认识的语言。', 7, '2018-06-16', 12, 18, 28, -1, -1),
(179, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址', 7, '2018-06-16', 13, 16, 29, -1, 10),
(180, '地址总线是一种系统总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线是一种系统总线，用来在I/O设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 13, 17, 29, -1, 0),
(181, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合，用于书写计算机程序。程序是按事先设计的功能和性能要求编制的指令序列。程序由程序设计语言组成，程序员用程序设计语言编写程序。', 3, '2018-06-16', 13, 18, 29, -1, -1),
(182, '二进制数序列', 0, '2018-06-16', 14, 16, 30, -1, 0),
(183, '地址总线用于传递寻址信息，数据总线用于传递地址总线中传递的地址信息所指向的信息，即完成寻址操作返回数据', -1, '2018-06-16', 14, 17, 30, -1, 0),
(184, '程序是完成某一操作需要的操作步骤序列，程序设计语言可以按一定的语法表达这种步骤与步骤之间的关系，设计程序', 8, '2018-06-16', 14, 18, 30, -1, -1),
(185, '操作码和地址码', 3, '2018-06-16', 15, 16, 31, -1, 10),
(186, '地址总线是CPU向存储器传送地址的。数据总线是双向传送数据的。', -1, '2018-06-16', 15, 17, 31, -1, 0),
(187, '程序设计语言是编制程序所用的计算机语言。程序是计算机的指令或语句的序列，是算法的一种描述。程序需要用程序设计语言来表达。', 10, '2018-06-16', 15, 18, 31, -1, -1),
(188, '操作码和操作数。', 10, '2018-06-16', 16, 16, 32, -1, 5),
(189, '地址总线指控制器用来访问想要进行操作的部分的位址。数据总线指将数据在其他部件与控制器之间进行传递交流的总线。', -1, '2018-06-16', 16, 17, 32, -1, 0),
(190, '程序设计语言是根据定义的规则（语法）写出的预定语句的集合。程序指按事先设计的功能和性能要求编制的的指令序列。程序由程序设计语言中的集合进行有机组合而成。', 0, '2018-06-16', 16, 18, 32, -1, -1),
(191, '指令是计算机硬件可以直接识别的，让计算机进行操作的二进制码串。分为操作码和地址码。操作码是告诉计算机要进行什么操作，地址码则传递给计算机操作数地址，操作结果的存储地址，和下一条指令的地址。', 10, '2018-06-16', 17, 16, 33, -1, 10),
(192, '地址总线是总线的一种，用来沟通CPU与内存地址。数据总线则用来传输输入、输出设备与存储器，存储器与CPU之间的数据。', -1, '2018-06-16', 17, 17, 33, -1, 0),
(193, '程序设计语言是用于书写计算机程序的语言，通过一定的语法规则，把将对数据进行的操作和步骤以及对问题的求解步骤和过程表达出来。程序是按照事先设置的编制功能和性能编制的指令序列。编写程序需要先通过程序设计语言把人想让计算机进行的操作写下来，再通过编译器转化成机器看的懂的二进制代码（即指令序列）。', 0, '2018-06-16', 17, 18, 33, -1, -1),
(194, '指令由地址码和操作码构成', 10, '2018-06-16', 18, 16, 34, -1, 10),
(195, '地址总线是输出地址的单向总线，数据总线是可以双向传输数据的总线', -1, '2018-06-16', 18, 17, 34, -1, 0),
(196, '程序设计语言是有预定语句(就像单词)和预定规则(就像语法)的语言，程序就是一串指令序列，根据程序设计语言的规则可以写出程序', 0, '2018-06-16', 18, 18, 34, -1, -1),
(197, '计算机的指令（机器语言）由操作码（机器语言程序，表明计算机需要进行的操作）和操作数（参加计算的数据的内存地址）组成，以二进制码的形式（“0”和“1”）存储在存储器中。', 7, '2018-06-16', 19, 16, 35, -1, 5),
(198, '地址总线与数据总线分别为是系统总线的一部分，与控制总线一起，连接计算机的五大组成部分：数据总线用来在输入/输出设备、存储器、CPU之间传送数据；地址总线用来传送数据的地址（也可以理解成在直接传递数由数据总线负责，而调用数据的地址则由地址总线负责）。', -1, '2018-06-16', 19, 17, 35, -1, 0),
(199, '程序设计语言指用于书写计算机程序的语言，从机器语言到符号语言再到过程语言、自然语言，都属于程序设计语言；程序则指一串计算机指令构成的指令序列。对于同一个程序，可以用不同的程序设计语言进行处理（如编译就是将同一个程序用程序员使用的高级语言转化为计算机识别的机器语言，但是其本身的指令的效果并没有改变）,也即程序设计语言用来描述程序，程序依赖于程序设计语言进行直观的体现。', 5, '2018-06-16', 19, 18, 35, -1, -1),
(200, '指令由操作码和地址码两部分构成', 10, '2018-06-16', 20, 16, 36, -1, 10),
(201, '地址总线用来传送cpu向主存储器，输入/输出设备传送待输入/出的数据的地址；数据总线用来在输入/出设备和主存储器，主存储器和cpu之间传送数据', -1, '2018-06-16', 20, 17, 36, -1, 0),
(202, '程序设计语言是根据预先定义的规则而写出的预定语句的集合，用于书写计算机程序的语言;程序是按照工作步骤事先编排好的具有特殊功能的指令序列；程序可由程序设计语言编写，程序设计语言可简化程序编写的过程，不至于过于繁琐', 0, '2018-06-16', 20, 18, 36, -1, -1),
(203, '指令有一连串0和1构成的二进制代码串，由操作码和地址码两部分构成。', 6, '2018-06-16', 21, 16, 37, -1, 10),
(204, '地址总线是一种计算机总线，是CPU或者具有直接存储器访问能力的单元，用来沟通这些单元想要访问的计算机内村组件的地址。数据总线用于在用来在输入/输出设备和主储存器，主储存器与CPU之间传送数据。', -1, '2018-06-16', 21, 17, 37, -1, 0),
(205, '程序设计语言是指根据预先定义的规则而写出的预定语句的集合。程序是按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言是人与计算机之间传递信息的媒介，通过预先定义好的数字，字符，语法规则将程序设计语言中的语句与计算机可执行的指令建立映射关系i，从而计算机可以将程序设计语言翻译成可以直接执行的指令也就是程序。', 7, '2018-06-16', 21, 18, 37, -1, -1),
(206, '指令是由‘0’和‘1’组成的二进制代码串，由操作码和地址码两部分构成。', 10, '2018-06-16', 22, 16, 38, -1, 10),
(207, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。\n数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 22, 17, 38, -1, 0),
(208, '程序设计语言：是用于书写计算机程序的语言，是指根据预先的规则（语法）而写出的预定语句的集合。\n程序：是指按事先设计的功能和性能要求编制的指令序列。\n两者之间的关系：程序设计语言是人与计算机沟通的媒介，通过预先定义好的数字，字符，以及对语法的要求与规则，将程序设计语言中的语句与计算机可执行的指令建立映射关系i，从而计算机可将程序设计语言翻译成可以直接执行的指令也就是程序。', 5, '2018-06-16', 22, 18, 38, -1, -1),
(209, '指令是能够被计算机硬件直接识别的，命令计算机进行某种基本操作的，由0和1组成的二进制代码串。由操作码和地址码两部分构成。', 10, '2018-06-16', 23, 16, 39, -1, 10),
(210, '地址总线用来向主存储器或者输入、输出设备传送待输入、输出的数据的地址。\n数据总线用来在输入、输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 23, 17, 39, -1, 0),
(211, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合。\n按事先设计的功能和性能要求编制的指令序列叫做程序。\n程序设计语言是人与计算机之间传递信息的媒介，计算机可以将程序设计语言翻译成可以直接执行的指令也就是程序。', 7, '2018-06-16', 23, 18, 39, -1, -1),
(212, '由操作码和操作数构成的', 10, '2018-06-16', 24, 16, 40, -1, 5),
(213, '地址总线是CPU或有DMA能力的单元的一种计算机总线。\n数据总线是有处理电脑内部数据传输功能的一种计算机总线', -1, '2018-06-16', 24, 17, 40, -1, 0),
(214, '程序设计语言是用于书写计算机程序的语言，程序是用于运行与某种目标结构体系。程序由程序设计语言组合而成', 7, '2018-06-16', 24, 18, 40, -1, -1),
(215, '指令由操作码和地址码构成，是由0和1组成的二进制代码串。', 10, '2018-06-16', 25, 16, 41, -1, 10),
(216, '地址总线是一种计算机总线，用来确定物理地址，当处理器要读/写信息时，处理器就会在地址总线上指定存储位置。 数据总线是双向三态总线，用于传输数据信息，可以把cpu的数据传到存储或输入输出接口，也可把其他部位的数据传给cpu。', -1, '2018-06-16', 25, 17, 41, -1, 0),
(217, '程序设计语言用于编写计算机程序，包括特定记号和语法，根据语法组成的记号串就是语言。程序是可以执行特定任务的指令集合。关系:一个程序可用多种语言具体实现，就像一篇文章可以用多种语言写成。', 0, '2018-06-16', 25, 18, 41, -1, -1),
(218, '通常一条指令结构包括操作码和操作数，操作码决定要完成的操作，操作数参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 26, 16, 42, -1, 5),
(219, 'CPU通过地址总线确定存储单元，地址总线决定了cpu所能访问的最大内存空间的大小，地址总线是地址线数量之和。数据总线是CPU与内存或其他器件之间的数据传送的通道，数据总线的宽度决定了CPU和外界的数据传送速度，每条传输线一次只能传输1位二进制数据，数据总线是数据线数量之和。', -1, '2018-06-16', 26, 17, 42, -1, 0),
(220, '程序设计语言是一组用来定义计算机程序的语法规则，是一种被标准化的交流方式，用来向计算机发出指令。程序＝算法+数据结构，程序就是为了得到某种结果而可以由计算机执行的代码化指令序列。', 9, '2018-06-16', 26, 18, 42, -1, -1),
(221, '由操作码和地址码两部分构成，操作码表示指令需要计算机完成的操作，地址码则表示本次运算的操作数或者操作数地址以及运算结果所在的地址', 8, '2018-06-16', 27, 16, 43, -1, 10),
(222, '地址总线属于一种电脑总线 ，是由CPU或有直接内存存取能力的单元，用来沟通这些单元存取电脑内存元件的实体位址。数据总线用于传送数据信息，既可以输出CPU的数据，也可以将其他部件的数据传入CPU。', -1, '2018-06-16', 27, 17, 43, -1, 0),
(223, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。程序是由程序设计语言进行有序编写的指令集，存储在主存储器上。二者之间的关系:程序是由程序设计语言编写而成的字符/字符串集合.', 0, '2018-06-16', 27, 18, 43, -1, -1),
(224, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 28, 16, 44, -1, 5),
(225, '地址总线 传送内存地址编码，给地址编译器 数据总线 访问传送数据 用于CPU与内存之间输入输出设备与内存之间', -1, '2018-06-16', 28, 17, 44, -1, 9),
(226, '程序设计语言用于书写计算机程序的语言。  是指一组指示计算机执行动作或做出判断的指令，通常用某种程序设计语言编写，运行于某种目标体系结构上。 程序设计语言用在程序上', 10, '2018-06-16', 28, 18, 44, -1, -1),
(227, '操作码和操作数', 10, '2018-06-16', 29, 16, 45, -1, 5),
(228, '地址总线：沟通计算机中单元想要访问的物理地址的总线。数据总线：在计算机中将CPU，IO设备等部件的设备进行交换传输的总线', -1, '2018-06-16', 29, 17, 45, -1, 0),
(229, '程序设计语言是通过一组记号和规则书写计算机程序的语言，程序是广义的概念，代表按照一定顺序运行或者操作，关系：通过程序设计语言可以实现程序，程序可以通过不同的程序设计语言实现', 2, '2018-06-16', 29, 18, 45, -1, -1),
(230, '操作码和地址码', 3, '2018-06-16', 30, 16, 46, -1, 10),
(231, '地址总线是用于传输地址的一种计算机总线。数据总线是用于传输数据的一种计算机总线。总线是计算机各个部件之间传输信息的公共通信干线。', -1, '2018-06-16', 30, 17, 46, -1, 0),
(232, '程序设计语言是由记号构成的记号串，程序是交由计算机等设备进行运行而达到一定目的的指令序列。程序设计语言可以用于书写程序，组成程序的命令序列是由程序设计语言为基础得来的。', 0, '2018-06-16', 30, 18, 46, -1, -1),
(233, '操作码，地址码。', 3, '2018-06-16', 31, 16, 47, -1, 10),
(234, '地址总线是用来使得cpu能指定内存地址的总线。数据总线是cpu与其他部件之间传送数据的通道。', -1, '2018-06-16', 31, 17, 47, -1, 0),
(235, '程序是指令的集合。程序设计语言是一种语言，是记号串集合。程序设计语言是程序的一种表现形式，程序不一定要通过程序设计语言来表现。', 7, '2018-06-16', 31, 18, 47, -1, -1),
(236, '操作码和操作数', 10, '2018-06-16', 32, 16, 48, -1, 5),
(237, '地址总线是沟通地址的总线\n数据总线是CPU与内存或其他器件之间的数据传送的通道', -1, '2018-06-16', 32, 17, 48, -1, 0),
(238, '程序设计语言是用于书写计算机程序的语言。\n程序为机器语言的组合\n程序设计语言可以创造程序', 9, '2018-06-16', 32, 18, 48, -1, -1),
(239, '总的是由操作码，地址码，存储器组成，操作码指定操作要求，之后指令以二进制编码的形式存在存储器内，再根据地址码完成操作。', 9, '2018-06-16', 33, 16, 49, -1, 10),
(240, '地址总线指计算机内部运行时用来传输地址的实体位址。数据总线指计算机内部运行时用来传输数据运行内容与指令的带宽。', -1, '2018-06-16', 33, 17, 49, -1, 0),
(241, '程序设计语言是指用于书写计算机程序的语言，程序是指用计算机语言编写的命令，即包括数据结构与算法。二者关系:程序是由程序设计语言来表示。', 5, '2018-06-16', 33, 18, 49, -1, -1),
(242, '存放在存储器的、由二进制编码表示的操作码和操作数。', 10, '2018-06-16', 34, 16, 50, -1, 5),
(243, '地址总线是用来指定在RAM之中储存的数据的地址，数据总线是在CPU与RAM之间来回传送需要处理或是需要储存的数据。', -1, '2018-06-16', 34, 17, 50, -1, 0),
(244, '程序设计语言用于书写计算机程序的语言。程序是按事先设计的功能和性能要求编制的指令序列。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 0, '2018-06-16', 34, 18, 50, -1, -1),
(245, '由操作码及地址码组成，二者均为二进制码', 0, '2018-06-16', 35, 16, 51, -1, 10),
(246, '地址总线传递寻址信息，数据总线操作该地址所保存的数据。即地址总线传递指令中的地址码，通过地址总线穿的的地址码寻址找到对应操作位置，再由数据总线对该地址所存数据进行读写操作。', -1, '2018-06-16', 35, 17, 51, -1, 0),
(247, '程序是完成一定功能所需的步骤序列。程序设计语言能够按一定语法表示计算机程序，进行程序的设计。通过程序设计语言设计的程序可以通过编译转化为计算机指令，由计算机直接识别并运行，完成功能。', 10, '2018-06-16', 35, 18, 51, -1, -1),
(248, '是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串，由操作码和地址码构成', 10, '2018-06-16', 36, 16, 52, -1, 10),
(249, 'CPU通过地址总线来制定储存单元，数据总线是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 36, 17, 52, -1, 0),
(250, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律，但不涉及这些记号的特定含义，也不涉及使用者。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义，但不涉及使用者。程序是一个指令序列。程序通过程序设计语言来实现', 10, '2018-06-16', 36, 18, 52, -1, -1),
(251, '由操作码和地址码的一串二进制数码构成', 0, '2018-06-16', 37, 16, 53, -1, 10),
(252, '数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据；控制总线用来传送CPU向存储器、输入输出设备发出的控制信号', -1, '2018-06-16', 37, 17, 53, -1, 0),
(253, '程序由程序设计语言编写，用编译器进行翻译，翻译为机器语言。程序设计语言是为了令机器语言变得可读，相比机器语言，编程时间耗时短。', 0, '2018-06-16', 37, 18, 53, -1, -1),
(254, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 38, 16, 54, -1, 10),
(255, '地址总线是CPU或有DMA能力的单元，用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。数据总线是双向三态形式的总线，用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 38, 17, 54, -1, 0),
(256, '程序是按事先设计的功能和性能要求编制的指令序列，计算机语言是指根据预先定义的规则（语法）而写出的预定语句的集合。程序设计语言语句的集合组成了程序。', 1, '2018-06-16', 38, 18, 54, -1, -1),
(257, '操作数和操作码', 10, '2018-06-16', 39, 16, 55, -1, 5),
(258, '地址总线和数据总线都是系统总线。地址总线用来向主存储器传送数据地址。数据总线用来在输入输出设备和主存储器，CPU之间传送数据。', -1, '2018-06-16', 39, 17, 55, -1, 0),
(259, '程序设计语言是用于书写计算机程序的语言，根据预先定义的语法而写出的预定语句的集合组成的程序。程序是用程序设计语言编写的。', 4, '2018-06-16', 39, 18, 55, -1, -1),
(260, '由操作码和地址码构成', 3, '2018-06-16', 40, 16, 56, -1, 10),
(261, '地址总线是CPU与内存或其他器件之间的数据传输通道，宽度决定了CPU和外界的数据传输速度，数据总线是数据线数量之和;地址总线是CPU指定储存单元的通道，决定了CPU对外部器件的控制能力', -1, '2018-06-16', 40, 17, 56, -1, 0),
(262, '程序设计语言包括低级与高级两种语言，低级语言开发的程序运行效率更高，但开发效率低;程序员通过程序设计语言编写指定程序并将其运行于某种目标结构体系上', 0, '2018-06-16', 40, 18, 56, -1, -1),
(263, '指令由二进制数据的操作码和地址码组成，计算机通过地址获取操作数，再通过操作码操作，将结果保存在该地址中，再进行下一条指令的操作。', 10, '2018-06-16', 41, 16, 57, -1, 10),
(264, '地址总线决定CPU寻址范围，宽带越大，支持内存越大。数据总线决定CPU单次通信能交换的信息数量，数据总线越宽，CPU越快。', -1, '2018-06-16', 41, 17, 57, -1, 0),
(265, '程序是按事先设计的功能和性能要求编制的指令序列，程序设计语言是用于设计计算机程序的语言，有字符和某种规则组成，两者之间的关系是可以通过程序设计语言设计程序。', 6, '2018-06-16', 41, 18, 57, -1, -1),
(266, '一串可由计算机硬件直接识别，能命令计算机进行基本操作的二进制代码。包括操作码和地址码', 10, '2018-06-16', 42, 16, 58, -1, 10),
(267, '地址总线是CPU用来访问计算机内存时的物理地址，数据总线是双向总线用于存储器与CPU，输入输出端的数据传送', -1, '2018-06-16', 42, 17, 58, -1, 0),
(268, '程序语言也称程序设计语言，包括语法等特征，而程序则是计算机可执行的一串指令。程序语言主要面向于人，人通过程序语言输入操作指令，这些操作指令就是程序，所以程序主要面向计算机。', 10, '2018-06-16', 42, 18, 58, -1, -1),
(269, '指令由操作码和地址码两部分构成，其中操作码用来表示本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址', 7, '2018-06-16', 43, 16, 59, -1, 10),
(270, '数据总线在CPU与主储存器之间来回传送需要处理或是需要储存的数据。\n地址总线用来指定在主储存器之中储存的数据的地址。', -1, '2018-06-16', 43, 17, 59, -1, 0),
(271, '程序是指令（操作）序列，按照工作步骤事先编排好的、具有特殊功能的指令序列；\n程序设计语言是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体；\n关系：程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。', 7, '2018-06-16', 43, 18, 59, -1, -1),
(272, '由操作码和地址码两部分构成。操作码表明此指令要求计算机完成的操作，地址码表示参加此次运算的操作数（或其地址）以及运算结果所在的地址。', 9, '2018-06-16', 44, 16, 60, -1, 10),
(273, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址；数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。二者都属于系统总线的范畴，与控制总线协作完成指令所传达的操作。', -1, '2018-06-16', 44, 17, 60, -1, 0),
(274, '程序设计语言是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体；程序是按照工作步骤事先编排好的、具有特殊功能的指令序列。程序设计语言是用以设计计算机程序的语言工具，程序是程序设计语言表达结果的展现形式。', 3, '2018-06-16', 44, 18, 60, -1, -1),
(275, '通常一条指令 基本结构 包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。在 计算机 中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 45, 16, 61, -1, 10),
(276, '1.地址总线：（Address Bus）是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。2.数据总线:用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 45, 17, 61, -1, 0),
(277, '1.程序的概念:程序是一组机器操作的指令或语句序列，是算法的一种描述。2.程序设计语言：就是指人们编制程序所使用的计算机语言。', 4, '2018-06-16', 45, 18, 61, -1, -1),
(278, '由操作码和地址码两部分构成。操作码用来指明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址', 5, '2018-06-16', 46, 16, 62, -1, 10),
(279, '地址总线是CPU用来向存储器传送地址的通道，数据总线是CPU与其他部分之间的数据传送的通道。', -1, '2018-06-16', 46, 17, 62, -1, 0),
(280, '程序设计语言是指根据预先定义的规则而写出的预定语句的集合，程序是按事先设计的功能和性能要求编制的指令序列。程序是按照程序设计语言编写的。', 0, '2018-06-16', 46, 18, 62, -1, -1),
(281, '由0和1组成，包涵操作码与地址码', 0, '2018-06-16', 47, 16, 63, -1, 10),
(282, '地址总线：向主存储器或者输入/输出设备传送待输入/输出的数据的地址；数据总线：在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 47, 17, 63, -1, 0),
(283, '程序设计语言是根据预先定义的规则（语法）而写出的预定语句的集合；算法与数据结构构成程序。程序由程序设计语言语句构成的集合组成。', 0, '2018-06-16', 47, 18, 63, -1, -1),
(284, '操作码+地址码', 3, '2018-06-16', 48, 16, 64, -1, 10),
(285, '地址总线：计算机中地址的传输方法，用于传输数据的地址，存在于存储器-CPU之间。\n数据总线：计算机中数据的传输方法，存在于输入设备-存储器，存储器-CPU，存储器-输出设备之间。', -1, '2018-06-16', 48, 17, 64, -1, 0),
(286, '程序设计语言，即编程语言。它是按照一定规则的，代表一定指令的语句集合。\n程序是能实现特定功能的有序指令。\n程序可由程序设计语言描述，程序设计语言是人编写程序时于机器交流的工具。', 4, '2018-06-16', 48, 18, 64, -1, -1),
(287, '一条指令包括两方面的内容：[1]  操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。 在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 49, 16, 65, -1, 10),
(288, '地址总线是用来向主储存器或者输入输出设备传送代输入输出的数据的地址。数据总线是用来在输入输出设备和主储存器间，主储存器和cpu间的传送数据。', -1, '2018-06-16', 49, 17, 65, -1, 0),
(289, '程序设计语言是用于书写计算机程序的语言，程序是是某种计算机程序设计语言编写的语句的集合。程序设计语言是用来让程序员编写程序的。', 10, '2018-06-16', 49, 18, 65, -1, -1),
(290, '由操作码和地址码组成，其中地址码包括操作数地址，操作结果的存储地址和下一条指令的地址', 10, '2018-06-16', 50, 16, 66, -1, 10),
(291, '地址总线是一种计算机总线，用来访问计算机内存组件的物理地址。\n用于传输数据的计算机总线。', -1, '2018-06-16', 50, 17, 66, -1, 0),
(292, '程序设计语言就是用于编写计算机程序的语言。\n程序是按事先设计的功能和性能要求编制的指令序列。\n程序用程序设计语言来书写，并最终转换为指令序列，才能让计算机执行。', 9, '2018-06-16', 50, 18, 66, -1, -1),
(293, '操作码和地址码', 3, '2018-06-16', 51, 16, 67, -1, 10),
(294, '地址总线：用来向主存储器或输入/输出设备传送待输入/输出的数据的地址\n数据总线：用来在输入/输出设备和主存储器，主存储器和CPU之间传送数据', -1, '2018-06-16', 51, 17, 67, -1, 0),
(295, '程序：按事先设计的功能和性能要求编制的指令序列叫做程序。\n程序设计语言：根据预先定义的规则（语法）而写出的预定语句的集合。\n联系：程序是实现算法中思想的过程，程序设计语言是把算法转化为计算机认识的语言，是将程序表现出来的一种方式（语言）\n区别：程序是指令序列，程序设计语言是语言', 6, '2018-06-16', 51, 18, 67, -1, -1),
(296, '通常由操作码和地址码两部分构成，操作码表示本条指令要求计算机完成的操作；地址码表示参加本次运算的操作数或操作数地址及运算结果所在地址。', 5, '2018-06-16', 52, 16, 68, -1, 10),
(297, '地址总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址，数据总线是cpu传入传出数据个线路总称', -1, '2018-06-16', 52, 17, 68, -1, 0),
(298, '计算机语言是根据预先定义的规则(语法)而写出的预定语句的集合，这些集合组成了程序。程序是一组可被计算机执行的二进制指令，由程序设计语言写成源代码，再经编译器编译生成二进制机器码', 1, '2018-06-16', 52, 18, 68, -1, -1),
(299, '指令有操作码和地址码两部分构成。', 10, '2018-06-16', 53, 16, 69, -1, 10),
(300, '地址总线传送内存地址编码给地址译码器，数据总线访问传送数据，用于cpu与内存之间，输入输出设备与内存之间', -1, '2018-06-16', 53, 17, 69, -1, 9),
(301, '程序设计语言是用于表达和描述要加工的数据以及求解问题的步骤和过程，程序设计语言是书写计算机程序的语言，程序是按照事先规定的功能和性能编排的指令序列，', 4, '2018-06-16', 53, 18, 69, -1, -1),
(302, '由操作码和地址码构成', 3, '2018-06-16', 54, 16, 70, -1, 10),
(303, '地址总线是专门用来传送地址的，由于地址只能从CPU传向外部存储器，所以地址总线是单向三态的。而数据总线用于传送数据信息，数据总线是双向三态形式的总线。他可以把CPU的数据传送存储器等部件，也可以将其他部件的数据传送到CPU。', -1, '2018-06-16', 54, 17, 70, -1, 0),
(304, '程序设计语言是指写程序编程所用的语言，像C语言、C++、Java等也就是说程序设计语言用于书写计算机程序的语言。而程序就是按事先设计的功能和性能要求编制的指令序列叫做程序。', 0, '2018-06-16', 54, 18, 70, -1, -1),
(305, '操作码和地址码', 3, '2018-06-16', 55, 16, 71, -1, 10),
(306, '数据总线是传输CPU在存储器中寻址信息的信息分时传输通路，数据总线是输入设备向存储器，存储器向输出设备和存储器和CPU 之间传递数据的信息分时传输通路', -1, '2018-06-16', 55, 17, 71, -1, 0),
(307, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程，是根据预先定义的规则，在有限字母表上的字符串总体，程序是指令的序列，程序设计语言可以书写程序', 5, '2018-06-16', 55, 18, 71, -1, -1),
(308, '5.指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。程序一定是先转化（编译或解释）成指令的序列，然后再被计算机执行。', 6, '2018-06-16', 56, 16, 72, -1, 0),
(309, '地址总线是用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的总线。数据总线是用来在输入/输出设备和主存储器、主存储器和CPU之前传送数据的总线。', -1, '2018-06-16', 56, 17, 72, -1, 0),
(310, '程序设计语言是根据预先定义的规则或语法而写出的预订语句的集合。程序是按事先设计的功能和性能要求编制的指令序列。程序由程序设计语言组成。', 0, '2018-06-16', 56, 18, 72, -1, -1),
(311, '指令由操作码和地址码组成。', 10, '2018-06-16', 57, 16, 73, -1, 10),
(312, '地址总线和数据总线属于系统总线，连接计算机的五大部件协作完成指令所传达的操作', -1, '2018-06-16', 57, 17, 73, -1, 0),
(313, '程序设计语言用于书写计算机程序。该语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。程序是由程序员编写的一组稳定的指令序列。程序设计语言包括语法，语义，语用三方面。语法表示程序的结构和形式，语义表示程序的含义。', 9, '2018-06-16', 57, 18, 73, -1, -1),
(314, '操作码和地址码', 3, '2018-06-16', 58, 16, 74, -1, 10),
(315, '地址总线是用来向主存储器输入/输出设备传送待输入/输出的数据的地址电脑总线，数据总线是用来在输入/输出设备和主存储器,主存储器和CPU之间传送数据的电脑总线。', -1, '2018-06-16', 58, 17, 74, -1, 0),
(316, '程序设计语言是用于书写计算机程序的语言，程序是按事先设计的功能和性能要求编制的指令序列。程序是由程序设计语言表达的。', 1, '2018-06-16', 58, 18, 74, -1, -1),
(317, '指令由操作码和地址码两部分构成。', 10, '2018-06-16', 59, 16, 75, -1, 10),
(318, '地址总线是传输存储器中待访问数据的地址，数据总线用来在输入输出设备、存储器、CPU之间传递数据。', -1, '2018-06-16', 59, 17, 75, -1, 0),
(319, '程序设计语言是由预先定义的规则写出的预定语句的集合，程序是由语句组成的。', 0, '2018-06-16', 59, 18, 75, -1, -1),
(320, '指令由操作码和地址码组成，其中地址码中含有操作数地址、操作结果存储地址和下一条指令的地址。', 10, '2018-06-16', 60, 16, 76, -1, 10),
(321, '地址总线：是具有直接内存访问的用于读写时沟通的物理地址。数据总线是用于传递需要传递的或存储的数据或指令的一种方式', -1, '2018-06-16', 60, 17, 76, -1, 0),
(322, '程序设计语言是一种用于计算机的语言，用于是人类操作计算机的，程序语言包含了语法与词汇。而程序是可以经过编译后用于给计算机实现预定操作的指令。关系：程序是由程序设计语言编写的。', 8, '2018-06-16', 60, 18, 76, -1, -1),
(323, '指令由操作码和操作数组成。操作码表示要完成的动作，操作数表示运算数据及其所在单元的地址。', 6, '2018-06-16', 61, 16, 77, -1, 5),
(324, '地址总线用来向存储器或输入输出设备传输需输入输出数据的地址。数据总线用来在输入设备、输出设备和存储器之间以及存储器和CPU之间传送数据。', -1, '2018-06-16', 61, 17, 77, -1, 0),
(325, '程序设计语言的概念：程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串总体就是语言。程序的概念：程序是按实现设计的功能和性能要求编制的指令序列。两者之间的关系：程序设计语言表达程序，程序就是程序设计语言中的记号串。', 0, '2018-06-16', 61, 18, 77, -1, -1),
(326, '由操作码和地址码两个部分组成，而且均为二进制数据，可以直接存入内存当中。', 0, '2018-06-16', 62, 16, 78, -1, 10),
(327, '地址总线是专门用来传送地址的；数据总线是用于传送数据信息的。', -1, '2018-06-16', 62, 17, 78, -1, 0),
(328, '程序设计语言是用来定义计算机程序的一组规则，是算法的一种描述；程序是用某些程序设计语言编写的，运用于某种目标结构上。程序是由程序设计语言编写的。', 10, '2018-06-16', 62, 18, 78, -1, -1),
(329, '通常一条指令基本结构包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 63, 16, 79, -1, 5),
(330, '地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址，数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据', -1, '2018-06-16', 63, 17, 79, -1, 0),
(331, '程序设计语言由四部分组成：数据成分，用以描述程序中所涉及的数据，运算成分，用以描述程序中所包含的运算，控制成分。用以表达程序中的控制构造，传输成分，用以表达程序中数据的传输，而程序是一组机器操作的指令或语句序列，是算法的一种描述，程序设计语言用来编写程序。', 7, '2018-06-16', 63, 18, 79, -1, -1),
(332, '操作码和地址码两部分构成', 3, '2018-06-16', 64, 16, 80, -1, 10),
(333, '地址总线和数据总线都是系统总线，连接冯诺依曼体系中的五大部件，协作完成指令所传达的操作。\n地址总线用来向存储器或者输入/输出设备传送待输入/输出的数据和地址；数据总线用来在输入/输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 64, 17, 80, -1, 0),
(334, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合。\n程序是指按事先设计的功能和性能要求编制的指令序列叫程序。\n二者的关系：程序语言组成了程序。', 0, '2018-06-16', 64, 18, 80, -1, -1),
(335, '指令由操作码和地址码两部分构成.', 10, '2018-06-16', 65, 16, 81, -1, 10),
(336, '地址总线是一种用于传递数据地址的系统总线\n数据总线是一种用于传递数据的系统总线', -1, '2018-06-16', 65, 17, 81, -1, 0),
(337, '程序是事先编制好的指令序列，程序设计语言用于将人们要干的事情转化为计算机语言来描述。可以说，程序设计语言是设计程序的方法，是程序成型前必经的一步。没有程序设计语言，很难写成程序。', 0, '2018-06-16', 65, 18, 81, -1, -1),
(338, '一条指令由地址码和操作码构成  操作码用于表明要完成的操作  而地址码表示参与本次运算的操作数或操作数地址及运算结果的地址。', 10, '2018-06-16', 66, 16, 82, -1, 10),
(339, '地址总线：用于向主存储器或者输入/输出设备传输待输入/输出的数据的地址的线路。\n数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的线路。', -1, '2018-06-16', 66, 17, 82, -1, 0),
(340, '程序设计语言：由一组记号按照一套规则而组成的字符串，这些字符串可以被计算机间接识别并生成按照一定规律运行的程序，这样，有字符及该规则形成的整体就叫做程序设计语言。\n程序：在计算机上按照一定，按照事先设计的功能和性能要求编制的指令序列叫做程序。\n关系：程序设计语言在经过编写、编辑、编译和链接所需的库模块链接程序后就可以生成程序。', 0, '2018-06-16', 66, 18, 82, -1, -1),
(341, '一条指令一般包括操作码和操作数构成，操作码决定要完成的操作，操作数表示参加运算的单元的地址，二者都用二进制表示', 9, '2018-06-16', 67, 16, 83, -1, 5),
(342, '地址总线是一种用来传输内存地址的信息通路，cpu可以通过它访问到内存的某个地址，而数据总线是用来传输数据的。', -1, '2018-06-16', 67, 17, 83, -1, 0),
(343, '程序指的是按照要求编写而成的指令序列。而程序设计语言是为了人们书写计算机程序的语言，是一种语言，具有语言的两个特性，即语义和语法，包括最初的二进制语言，第二代的汇编语言，第三代类似于c语言的高级语言，以及第四代的面向对象语言。二者的关系，程序设计语言是书写程序的。', 0, '2018-06-16', 67, 18, 83, -1, -1),
(344, '指令由地址码和操作码构成，两者都由二进制代码的形式存储在存储器中。地址码表示运算中操作数或操作数地址以及运算结果的地址，操作码表示计算机所要完成的操作。', 10, '2018-06-16', 68, 16, 84, -1, 10),
(345, '地址总线（Address Bus）是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 68, 17, 84, -1, 0),
(346, '程序设计语言用于书写计算机程序的语言。 语言的基础是一组记号和一组规则，根据规则由记号构成的记号串的总体就是语言。 在程序设计语言中，这些记号串就是程序。 程序设计语言有3个方面的因素，即语法、语义和语用。 语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律。 但不涉及这些记号的特定含义，也不涉及使用者。 语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义， 但不涉及使用者。', 10, '2018-06-16', 68, 18, 84, -1, -1),
(347, '通常一条计算机指令由操作码和地址码组成。\n操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址及运算结果所在的地址。', 9, '2018-06-16', 69, 16, 85, -1, 10),
(348, '地址总线 ，属于一种电脑总线 ，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取电脑内存元件/地方的实体位址。数据总线 是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 69, 17, 85, -1, 0),
(349, '程序设计语言是根据预先定义的语法写出的预定语句的集合。程序是由程序员编写的一组稳定的指令，存在硬盘上。程序设计语言组成了程序', 4, '2018-06-16', 69, 18, 85, -1, -1),
(350, '是由操作码和地址码构成的。', 3, '2018-06-16', 70, 16, 86, -1, 10),
(351, '地址总线: 控制器传送地址编码给存储器的通路。数据总线: 为个部件之间提供数据传送的通路.', -1, '2018-06-16', 70, 17, 86, -1, 0),
(352, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合。程序是由程序员编写的一组稳定的指令。程序设计语言组成程序。', 5, '2018-06-16', 70, 18, 86, -1, -1),
(353, '由操作码和操作数构成，操作码决定要完成的操作，操作数指参加运算的数据和单元地址', 6, '2018-06-16', 71, 16, 87, -1, 5),
(354, '地址总线是用于传送待处理数据的地址的线路。数据则是总线用于传送数据本身的线路。', -1, '2018-06-16', 71, 17, 87, -1, 0),
(355, '程序设计语言是根据预先约定的语法来书写设计程序的语句集合。程序则是按照事先设计的功能和性能要求编辑的指令序列。程序是通过程序设计语言来编译的。', 0, '2018-06-16', 71, 18, 87, -1, -1),
(356, '答：计算机的指令都是由二进制操作码和二进制地址码组成的。其中地址码中包括操作数地址、操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 72, 16, 88, -1, 10),
(357, '地址总线决定了cpu所能访问的最大内存空间的大小，数据总线决定了cpu和外界数据之间的传送速度。', -1, '2018-06-16', 72, 17, 88, -1, 0),
(358, '程序设计语言由一组记号和一组规则组成的用于设计程序的规则，程序是一组只是计算机或者其他装置执行动作或者判断的指令，程序的载体是程序设计语言而程序设计语言的目的是设计程序。', 9, '2018-06-16', 72, 18, 88, -1, -1),
(359, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的、由‘0’和‘1’组成的二进制代码串。指令有操作码和地址嘛两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 10, '2018-06-16', 73, 16, 89, -1, 10),
(360, '地址总线：CPU访问指定存储单元的通道；数据总线：CPU与内存或其他设备进行数据传递的通道。', -1, '2018-06-16', 73, 17, 89, -1, 0),
(361, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合，用于书写计算机程序；程序是指按实现设计的功能和性能要求编制的指令序列叫做程序；二者关系：人类使用程序设计语言编写出的语句的集合构成了程序。', 0, '2018-06-16', 73, 18, 89, -1, -1),
(362, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。这个二进制代码由操作码和地址码构成，而地址码由操作数地址，操作结果的存储地址和下一条指令的地址构成。', 9, '2018-06-16', 74, 16, 90, -1, 10),
(363, '地址总线：专门用来单向从CPU传送地址到内存或外设的导线的集合。CPU用地址总线来指定存储器单元。\n数据总线：专门用来在CPU和内存或外设之间传送数据的导线的集合。数据总线是CPU与内存或外设之间的数据传送的通道。', -1, '2018-06-16', 74, 17, 90, -1, 0),
(364, '程序设计语言是指用于书写计算机程序的语言。程序是指以某种程序设计语言编写，运行于某种目标体系上的一个指令序列。\n程序是由程序设计语言编写的，故程序设计语言是程序的基础，程序是程序设计语言的集合。', 10, '2018-06-16', 74, 18, 90, -1, -1),
(365, '指令是实质上是由’0’和’1’组成的二进制代码串。由操作码和地址码两部分构成，其中操作码用来表明该指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 75, 16, 91, -1, 10),
(366, '地址总线：用于传递地址的总线；数据总线：用于传输数据的总线。', -1, '2018-06-16', 75, 17, 91, -1, 0),
(367, '程序设计语言是预先限定好的指令语句语句的集合，程序是指令的排练组合后的结果。程序是按事先设计的功能和性能要求编制的指令序列。', 0, '2018-06-16', 75, 18, 91, -1, -1),
(368, '指令由操作码和地址码两部分构成，为二进制代码串，操作码表明要求计算机完成的操作，地址码表示操作数或操作数地址及运算结果所在的地址。', 10, '2018-06-16', 76, 16, 92, -1, 10),
(369, '数据总线是CPU与内存或其他器件之间的数据传送的通道，地址总线是cpu指定存储单位的通道', -1, '2018-06-16', 76, 17, 92, -1, 0),
(370, '程序是按事先设计的功能和性能要求编制的指令序列，程序设计语言是由语法和语义的指令系统，程序是由各种程序设计语言为标准写出来的可运行的文件', 0, '2018-06-16', 76, 18, 92, -1, -1),
(371, '操作码和地址码，操作数地址，操作结果的存储地址，下一条指令的地址。', 10, '2018-06-16', 77, 16, 93, -1, 10),
(372, '答：地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。\n 数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据', -1, '2018-06-16', 77, 17, 93, -1, 0),
(373, '程序：程序是按事先设计的功能和性能要求编制的指令序列或者最终转换为指令序列。\n程序设计语言：程序设计语言是人类根据预先定义的规则（语法）而写出的预定语句的集合\n关系：程序设计语言是人们实现程序的一种手段，程序设计语言有很多，但是都是最终会被转化为cpu能够识别的指令序列。', 0, '2018-06-16', 77, 18, 93, -1, -1),
(374, '指令包含一个操作码（指定指令该进行什么性质的操作）和零个或多个的操作数（指出指令执行操作所需要数据的来源），或说指令包含操作码和地址码字段，是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制数码。', 6, '2018-06-16', 78, 16, 94, -1, 10),
(375, '数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据；地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。', -1, '2018-06-16', 78, 17, 94, -1, 0),
(376, '计算机语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言用于书写计算机程序的语言。', 0, '2018-06-16', 78, 18, 94, -1, -1),
(377, '由操作码和地址码构成', 3, '2018-06-16', 79, 16, 95, -1, 10),
(378, '地址总线是用来沟通CPU想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线是用来把CPU的数据传送到存储器或输入输出设备，或是将其它部件的数据传送到CPU的计算机总线。', -1, '2018-06-16', 79, 17, 95, -1, 0),
(379, '程序设计语言是用于书写计算机程序的语言，基础是一组记号和一组规则，根据规则由记号构成的记号串的总体就是语言。\n程序是按事先设计的功能和性能要求编制的指令序列。\n关系：在程序设计语言中，这些记号串就是程序，即程序是由程序设计语言编写的。', 4, '2018-06-16', 79, 18, 95, -1, -1),
(380, '指令在计算机中是二进制代码串，由操作码和地址码构成。', 10, '2018-06-16', 80, 16, 96, -1, 10),
(381, '地址总线和数据总线都归属于系统总线，都为了协作完成指令所传达的操作。\n\n       地址总线是CPU或有DMA(直接内存存取）能力的单元，用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。\n\n       数据总线是双向三态形式的总线，用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 80, 17, 96, -1, 0),
(382, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合。语言的基础是一组记号和一组规则，根据规则由记号构成的记号串的总体就是语言。\n\n       程序是按事先设计的功能和性能要求编制的指令序列。\n\n       程序设计语言的这些集合（这些记号串）组成了程序，（实际也就是说程序设计语言是用于书写计算机程序的语言）。', 7, '2018-06-16', 80, 18, 96, -1, -1),
(383, '操作码和地址码', 3, '2018-06-16', 81, 16, 97, -1, 10),
(384, '地址总线是计算机功能部件间指定存储数据地址的一种通信干线。 数据总线是在CPU与其他部件间传送需要处理或储存数据的一类通信干线。', -1, '2018-06-16', 81, 17, 97, -1, 0),
(385, '程序设计语言是由固定符号和符号对应释义规则的用于书写计算机程序的语言。  程序是根据事先定义的语言解释规则，使用规定符号而写出的某个特定含义语句的集合，按照事先设计功用的指令序列。  二者关系：1.程序设计语言是为了设计程序解决问题过程中发明出的来描述程序的一套规则符号体系。2.程序是由程序设计语言写成的一套解决问题的算法步骤', 0, '2018-06-16', 81, 18, 97, -1, -1),
(386, '答：一条指令包括操作数和操作码。操作码决定要完成的操作，操作数指的是数据及其地址，操作要求和操作地址在计算机中由二进制数码表示，整条指令也是以二进制编码的形式存储。', 10, '2018-06-16', 82, 16, 98, -1, 5),
(387, '地址总线是一种计算机总线，用来沟通要访问（读取或写入）计算机内存组件的物理地址，中央处理器可用地址总线传输信息给存储器。数据总线既可以把中央处理器（CPU）的数据传送到存储器或输入输出接口，也可以倒过来讲存储器或输入输出接口的数据传输到中央存储器。', -1, '2018-06-16', 82, 17, 98, -1, 0),
(388, '程序设计语言用于书写计算机程序的语言。而程序是按事先设计的功能和性能要求编制的指令序列。两者的关系是程序是用程序设计语言编写的。', 8, '2018-06-16', 82, 18, 98, -1, -1),
(389, '计算机指令由操作码和地址码组成，操作码用来表明指令要求计算机完成的操作，地址码用来给出参加本次运算的操作数和运算结果所在的地址。在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制码的形式存放在存储器中', 10, '2018-06-16', 83, 16, 99, -1, 10),
(390, '地址总线是CPU或者有直接内存访问能力的单元，用来沟通这些单元想要访问计算机内存组件的物理地址。\n数据总线是用于传输数据信息的，在CPU和储存器之间或储存器和输入／输出设备之间来回传送需要处理或是需要储存的数据。', -1, '2018-06-16', 83, 17, 99, -1, 0),
(391, '程序设计语言就是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。程序就是一组计算机能识别和执行的指令。程序设计语言和程序通过程序设计联系起来，在程序设计中，用某种程序设计语言为工具，给出这种语言下的程序。', 10, '2018-06-16', 83, 18, 99, -1, -1),
(392, '算术运算类，逻辑运算类，传送类，程序控制类，输入/输出类，其他类指令', 5, '2018-06-16', 84, 16, 100, -1, 0),
(393, '是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想访问的计算机内存组件的物理地址。数据总线把CPU的数据传送到存储器或输入输出接口等其它部件，或者将其它部件的数据传送到CPU。', -1, '2018-06-16', 84, 17, 100, -1, 0),
(394, '程序设计语言是指用于书写计算机程序的语言。程序是一组机器操作的指令或语句序列，是算法的一种描述。程序是实现算法中的思想的过程，程序设计语言把算法转化为计算机认识的语言。', 10, '2018-06-16', 84, 18, 100, -1, -1),
(395, '由操作码和操作数两部分构成', 9, '2018-06-16', 85, 16, 101, -1, 5),
(396, '1.地址总线：向主储存器或者输入输出设备传送待输入输出的数据的地址，本质是CPU的单元。\n2.数据总线：在输入输出设备和主储存器，主储存器和CPU之间传送数据，其位数决定CPU单次通信交换数据的数量。', -1, '2018-06-16', 85, 17, 101, -1, 0),
(397, '1.程序设计语言本质就是书写计算机程序的语言。\n2.程序是指让计算机执行动作或做出判断的一组指令。\n\n3.二者互相依存。程序由程序语言编写，程序语言因为程序的存在与优点而不断进步。', 0, '2018-06-16', 85, 18, 101, -1, -1),
(398, '操作码和操作数', 10, '2018-06-16', 86, 16, 102, -1, 5),
(399, '地址总线和数据总线分别用来传送数据，指令的地址和数据', -1, '2018-06-16', 86, 17, 102, -1, 0),
(400, '程序是按事先设计的功能和性能要求编制的指令序列，程序设计语言是根据预先规定的语法写出的预定集合，这些集合组成程序', 0, '2018-06-16', 86, 18, 102, -1, -1),
(401, '指令由操作码和地址码构成，操作码用来表明本指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 9, '2018-06-16', 87, 16, 103, -1, 10),
(402, '答：地址总线是一种专门用来传送地址的通信干线。数据总线是用来在CPU和RAM之间传递数据的通信干线。', -1, '2018-06-16', 87, 17, 103, -1, 0),
(403, '答：按照预先定义的规则由一组记号组成的记号串总体就叫程序设计语言；按事先设计的功能和性能要求编制的指令序列叫作程序。程序设计语言是用来书写计算机程序的语言，而程序是程序设计语言的集合。', 0, '2018-06-16', 87, 18, 103, -1, -1),
(404, '通常一条计算机指令由操作码和地址码组成。\n操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址及运算结果所在的地址。', 9, '2018-06-16', 88, 16, 104, -1, 10),
(405, '地址总线是一种计算机系统总线，用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。数据总线也是一种计算机总线，用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据', -1, '2018-06-16', 88, 17, 104, -1, 0),
(406, '程序设计语言:是用于书写计算机程序的语言，根据预先定义的规则（语法）而写出的预定语句的集合。程序:按事先设计的功能和性能要求编制的指令序列。关系:程序是由程序语言编写的', 1, '2018-06-16', 88, 18, 104, -1, -1),
(407, '操作码和地址码', 3, '2018-06-16', 89, 16, 105, -1, 10),
(408, '地址总线属于一种电脑总线，是由CPU或有DNA能力的单元，用来沟通这些单元想要存取/读取/写入电脑内存元件的的实体位址。数据总线是双向三态形式的总线，它既可以把CPU的数据传送到存储器或输入输出接口等其他部件，也可以将其他部件的数据传送到CPU。', -1, '2018-06-16', 89, 17, 105, -1, 0),
(409, '程序设计语言是用于书写计算机程序的语言。程序是按事先设计的功能和性能要求编制的指令序列。关系：程序设计语言把算法转化为计算机认识的语言，然后程序来实现算法中的思想。', 9, '2018-06-16', 89, 18, 105, -1, -1),
(410, '由数字‘0’和‘1’构成', 0, '2018-06-16', 90, 16, 106, -1, 0),
(411, '向主存储器或者输入/输出设备传送待输入/输出的数据的地址；在输入/输出设备和主存储器、主存储器和CPU之间传输数据', -1, '2018-06-16', 90, 17, 106, -1, 0),
(412, '用来定义程序的形式语言；由程序员编写的一组稳定的指令；程序由程序设计语言编写', 10, '2018-06-16', 90, 18, 106, -1, -1),
(413, '指令由操作码和地址码两部分构成。', 10, '2018-06-16', 91, 16, 107, -1, 10),
(414, '地址总线传送内存地址编码，给地址译码器。数据总线：访问传送数据，用于CPU与内存之间、输入输出设备与内存之间。', -1, '2018-06-16', 91, 17, 107, -1, 9),
(415, '程序语言设计是根据语法表达要加工的数据以及求解问题的步骤，程序是按照算法事先编排好的的指令序列，程序设计语言是用来表达程序的。', 8, '2018-06-16', 91, 18, 107, -1, -1),
(416, '指令由操作码和地址码构成。操作码表明要执行的操作，地址码表示参加运算的操作数。', 10, '2018-06-16', 92, 16, 108, -1, 10),
(417, '数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据；地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。', -1, '2018-06-16', 92, 17, 108, -1, 0),
(418, '程序是按事先设计的功能和性能要求编制的指令序列的集合。程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序', 0, '2018-06-16', 92, 18, 108, -1, -1),
(419, '指令由操作码和地址码两部分构成', 10, '2018-06-16', 93, 16, 109, -1, 10),
(420, '地址总线：专门用来单向从CPU传送地址到内存或外设的导线的集合。CPU用地址总线来指定存储器单元。\n数据总线：专门用来在CPU和内存或外设之间传送数据的导线的集合。数据总线是CPU与内存或外设之间的数据传送的通道。', -1, '2018-06-16', 93, 17, 109, -1, 0),
(421, '程序设计语言是指用于书写计算机程序的语言。程序是指以某种程序设计语言编写，运行于某种目标体系上的一个指令序列。程序是由程序设计语言编写的，故程序设计语言是程序的基础。', 10, '2018-06-16', 93, 18, 109, -1, -1),
(422, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的、由‘0’和‘1’组成的二进制代码串。', 10, '2018-06-16', 94, 16, 110, -1, 0),
(423, '地址总线是由 CPU 或有 DMA 能力的单元，用来沟通这些单元想要存取(读取/写入)电脑内存元件/地方的实体位址。 数据总线是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 94, 17, 110, -1, 0),
(424, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。', 0, '2018-06-16', 94, 18, 110, -1, -1),
(425, '操作码和地址码。操作码决定要完成的操作，地址码是对应的运算数据所在的地址单元。', 5, '2018-06-16', 95, 16, 111, -1, 10),
(426, '地址总线是传输地址的系统总线；\n数据总线是传输数据的系统总线。', -1, '2018-06-16', 95, 17, 111, -1, 0),
(427, '程序设计语言是根据预先定义的规则而写出的预定语句的集合；\n程序是按事先设计的功能和性能要求编制的指令序列；\n程序设计语言的语句的集合组成了程序。', 0, '2018-06-16', 95, 18, 111, -1, -1),
(428, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 96, 16, 112, -1, 5),
(429, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。\n数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 96, 17, 112, -1, 0),
(430, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。\n按事先设计的功能和性能要求编译的指令序列叫做程序。\n程序是用程序设计语言编写的，运行于某种目标体系结构上。', 6, '2018-06-16', 96, 18, 112, -1, -1),
(431, '由操作码和地址码组成', 3, '2018-06-16', 97, 16, 113, -1, 10),
(432, '数据总线是CPU与内存或其他器件之间的数据传送的通道，用于传送数据信息。 地址总线是用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址，通过控制总线对外部器件进行控制。', -1, '2018-06-16', 97, 17, 113, -1, 0),
(433, '程序是按事先设计的功能和性能要求编制的指令序列。 程序语言泛指一切用于书写计算机程序的语言。 程序设计语言把算法转化为计算机认识的语言，程序是实现算法中思想的过程。', 8, '2018-06-16', 97, 18, 113, -1, -1),
(434, '通常一条指令包括两方面的内容：操作码和操作数。操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 8, '2018-06-16', 98, 16, 114, -1, 5),
(435, '地址总线用来向主程序或者输入，输出设备传送输入，输出的数据的地址。数据总线用来在输入输出设备和主存储器，主存储器和CPU之间传送数据。', -1, '2018-06-16', 98, 17, 114, -1, 0),
(436, '程序设计语言是用于人和计算机之间通讯的语言，根据预习定义的规则而写出的预定语句的集合。程序是一组指令序列，按事先设计的功能和性能要求编制的指令序列，程序=算法+数据结构。程序由程序设计语言构写成的。', 0, '2018-06-16', 98, 18, 114, -1, -1),
(437, '操作码决定要完成的操作，操作数就是参与操作的数据和其单元地址', 6, '2018-06-16', 99, 16, 115, -1, 5),
(438, '数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据\n地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址', -1, '2018-06-16', 99, 17, 115, -1, 0),
(439, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n程序是指令（操作）序列。\n\n程序是序列，而程序设计语言是用来编写程序的。', 9, '2018-06-16', 99, 18, 115, -1, -1),
(440, '由操作码和地址码两部分组成', 3, '2018-06-16', 100, 16, 116, -1, 10),
(441, '地址总线是用来传输地址的总线，数据总线是用来传输指令的总线', -1, '2018-06-16', 100, 17, 116, -1, 0),
(442, '程序设计语言是用于书写计算机程序的语言，包括语法、语义和语用。程序是为实现特定目标或特定问题而用计算机语言编写的命令序列的集合，为实现预期目的而进行的一系列语句和指令。程序设计语言通过编译能够翻译成程序。', 10, '2018-06-16', 100, 18, 116, -1, -1),
(443, '由操作码和地址码构成，其中地址码包括操作数地址、操作结果的存储地址和下一条指令的地址', 10, '2018-06-16', 101, 16, 117, -1, 10),
(444, '地址总线属于一种电脑总线，是由CPU或有DMA能力的单元，用来沟通这些单元想要存取电脑内存元件/地方的实体位置。数据总线是一种在CPU于RAM(Random Access Memory)之间来回传送需要处理或是需要储存的数据的一类总线。', -1, '2018-06-16', 101, 17, 117, -1, 0),
(445, '程序设计语言是用于编写计算机程序的语言。语言的基础是一组记号和一组规则。程序就是按事先设计的功能和性能要求编制的指令序列。程序设计语言是用于书写计算机程序的语言。', 2, '2018-06-16', 101, 18, 117, -1, -1),
(446, '由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 5, '2018-06-16', 102, 16, 118, -1, 10),
(447, '地址总线是控制器用以取地址的线路，数据总线是计算机各个部件之间用来传输数据的线路', -1, '2018-06-16', 102, 17, 118, -1, 0),
(448, '程序设计语言是具有具体语法的用来按照程序员的逻辑设计出程序的一门语言，程序是一系列有序的指令，关系:程序的编写需要程序设计语言来实现', 9, '2018-06-16', 102, 18, 118, -1, -1),
(449, '指令包括操作码和地址码，操作码表示本条指令要求计算机完成的操作，地址码包括操作数地址、操作结果的储存地址和下一条指令的地址。', 10, '2018-06-16', 103, 16, 119, -1, 10),
(450, '地址总线（Address Bus）：是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线 (DataBus)：是用于传送数据信息的一种双向三态形式的计算机总线。它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 103, 17, 119, -1, 0),
(451, '程序设计语言：用于书写计算机程序的语言。\n程序：为进行某项活动或过程所规定的途径。\n关系：程序设计语言的基础是程序和相应的规则。根据规则由程序构成的程序总体，就是程序设计语言。', 0, '2018-06-16', 103, 18, 119, -1, -1),
(452, '由地址码和操作码组成。', 3, '2018-06-16', 104, 16, 120, -1, 10),
(453, '地址总线就是地址线的总合，CPU通过地址线来指定储存单元。\n数据总线是数据线的总和，数据线是CPU与其他器件之间传递数据的通道。', -1, '2018-06-16', 104, 17, 120, -1, 0),
(454, '程序设计语言就是用于编写程序的语言，程序就是一组指令序列，程序设计语言可以编写出程序', 10, '2018-06-16', 104, 18, 120, -1, -1),
(455, '由操作码和地址码组成，地址码由操作数的地址，操作指令的地址，运算结果的地址构成', 10, '2018-06-16', 105, 16, 121, -1, 10),
(456, '地址总线：用来向储存器或者输入/输出设备传送待输入/输出的数据的地址。\n数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 105, 17, 121, -1, 0),
(457, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。\n程序：按照工作步骤事先编排好的、具有特殊功能的指令序列。\n程序设计语言是为执行程序而服务的，赋予程序可移植性，方便用户的使用。', 0, '2018-06-16', 105, 18, 121, -1, -1),
(458, '计算机的指令是由操作码和地址码两部分组成：\n（1）、指令是指示计算机执行某些操作的指令，是计算机运行的最小功能单位；\n（2）、一条指令是一组有意义的二进制代码，其中操作码指明了指令的操作性质和功能，地址码是用来描述该指令的操作对象，或者给出操作数或者指出操作数的存储器或者寄存器地址。', 9, '2018-06-16', 106, 16, 122, -1, 10),
(459, '地址总线是用来向存储器或输入输出设备传送待输入输出的数据的地址；数据总线是用来在输入输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 106, 17, 122, -1, 0),
(460, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。程序是按照工作步骤事先编排好的、具有特殊功能的指令序列。用程序设计语言编写代码文本，经编译后变成程序。', 7, '2018-06-16', 106, 18, 122, -1, -1),
(461, '指令是二进制代码串，由操作码和地址码组成。', 9, '2018-06-16', 107, 16, 123, -1, 10),
(462, '地址总线是由CPU或有DMA能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线用来在输入/输出设备和存储器、存储器和CPU之间传输数据。', -1, '2018-06-16', 107, 17, 123, -1, 0),
(463, '计算机语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些结合组成了程序。计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上的指令序列。', 7, '2018-06-16', 107, 18, 123, -1, -1),
(464, '操作码和地址码', 3, '2018-06-16', 108, 16, 124, -1, 10),
(465, '地址总线是由CPU或有DMA能力的\n地址总线是传送内存地址的编码。\n数据总线是用于CPU与内存之间或者输入输出设备与内存之间访问传送数据。', -1, '2018-06-16', 108, 17, 124, -1, 4),
(466, '程序设计语言：用于书写计算机程序的语言，根据预先定义的规则和有限字母表上的字符构成的字符串的总体。\n程序：按照工作步骤事先安排好的具有特殊功能的指令序列。\n程序在设计时需要以程序设计语言为工具，给出该语言下的程序。', 2, '2018-06-16', 108, 18, 124, -1, -1),
(467, '由操作码和操作数组成，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 109, 16, 125, -1, 5),
(468, '地址总线：用来指定在RAM之中储存的数据的地址，CPU是通过地址总线来指定存储单元，地址总线是地址线数量之和。数据总线：在CPU与RAM之间来回传送需要处理或是需要储存的数据，数据总线是数据线数量之和', -1, '2018-06-16', 109, 17, 125, -1, 0),
(469, '程序设计语言：用来控制计算机行为的，遵循一定的语法规则的字符组合。程序：一系列针对计算机行为的，具有特定的功能的指令的有序组合。两者之间的关系：利用程序设计语言可以构造出程序，程序的实现由程序设计语言来完成。', 10, '2018-06-16', 109, 18, 125, -1, -1),
(470, '指令由操作码和地址码构成。', 10, '2018-06-16', 110, 16, 126, -1, 10),
(471, '地址总线：CPU向存储器与输入输出设备传送待输入输出数据的地址编码\n数据总线：输入输出设备和cpu与存储器之间传送数据', -1, '2018-06-16', 110, 17, 126, -1, 0),
(472, '程序设计语言的概念：用于书写程序的语言\n程序：按事先设计的功能和性能要求编制的指令序列。\n用程序设计语言使程序更加易懂，同一个程序可以由不同的语言编写。\n程序：按事先设计的功能和性能要求编制的指令序列。\n用程序设计语言使程序更加易懂，同一个程序可以由不同的语言编写。\n程序设计语言的概念：用于书写程序的语言\n程序：按事先设计的功能和性能要求编制的指令序列。\n用程序设计语言使程序更加易懂，同一个程序可以由不同的语言编写。', 1, '2018-06-16', 110, 18, 126, -1, -1),
(473, '指令是由操作码和地址码构成的', 10, '2018-06-16', 111, 16, 127, -1, 10),
(474, '（1）、地址总线是单向三态的，由有CPU或者有DMA能力的单元，用来沟通这些单元想要存取/读取/写入电脑内存的实体位置，CPU通过地址总线来确定将要操作的存储单元。每个地址总线可以对两个存储单元寻址，地址总线的条数决定了CPU一次可以传输的数据的位数即能够访问存储单元的范围；\n（2）、数据总线是双向三态的总线，可以把CPU的数据传送到存储器或者I/O设备，也可以把其他部件的数据传递给CPU。数据总线的位数是微型计算机的一个重要指标。数据总线的线宽决定了CPU和外界数据的传送速度。', -1, '2018-06-16', 111, 17, 127, -1, 0),
(475, '（1）、程序设计语言是用于书写计算机程序的语言，有3个方面因素：语法（程序的结构和形式），语义（表示程序的含义）和语用（表示程序与使用者的关系）。基本成分有数据成分、运算成分、控制成分、传输成分，对应了冯诺依曼的结构组成体系。\n（2）、程序是指以某些程序设计语言编写，运行于某种目标结构体系上的适合计算机执行的指令序列，告诉计算机如何完成一个具体的任务。\n（3）、程序由程序设计语言编写。', 7, '2018-06-16', 111, 18, 127, -1, -1),
(476, '指令由操作码和地址码构成，地址码又包括操作数地址，操作结果的储存地址和下一条指令的地址。', 10, '2018-06-16', 112, 16, 128, -1, 10),
(477, '地址总线：向主存储器或O/I传送待输入/输出的数据的地址；\n数据总线：在O/I和主存储器，主存储器和CPU之间传输数据。', -1, '2018-06-16', 112, 17, 128, -1, 0),
(478, '程序设计语言是根据预先定义的规则写出的预定语句的集合。\n程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言这些集合组成了程序。', 0, '2018-06-16', 112, 18, 128, -1, -1),
(479, '计算机中的指令包括操作码和地址码，操作码用来表明指令要求计算机完成的操作。地址码指明操作对象的内容或所在的存储单元，包含操作数地址，操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 113, 16, 129, -1, 10),
(480, '地址总线是一种计算机总线，CPU通过地址总线来指定存储单元。数据总线也是计算机总线的一种，是CPU与内存或其他器件之间的数据传送通道。', -1, '2018-06-16', 113, 17, 129, -1, 0),
(481, '程序设计语言是用来书写计算机程序的语言，程序是指一组指示计算机执行动作或进行判断的指令。前者是后者的实现形式，后者是前者结果的表现。', 9, '2018-06-16', 113, 18, 129, -1, -1),
(482, '指令由操作码和地址码构成，操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或操作数地址以及运算结果所在的地址', 7, '2018-06-16', 114, 16, 130, -1, 10),
(483, '地址总线是CPU指定存储单元的途径，决定了CPU所能访问的最大内存空间的大小。数据总线是CPU与内存及其它器件之间的数据传送的通道，决定CPU和外界数据传送速度。', -1, '2018-06-16', 114, 17, 130, -1, 0),
(484, '程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言是用于书写计算机程序的语言，由记号和规则构成。程序是由程序设计语言写成的。', 3, '2018-06-16', 114, 18, 130, -1, -1),
(485, '由操作码和地址码构成。地址码中包含操作数地址、结果存储地址和（在非顺序执行的情况下）下一条指令的地址。', 9, '2018-06-16', 115, 16, 131, -1, 10),
(486, '地址总线：从内存中取址的线路。\n数据总线：进行数据交换的线路。', -1, '2018-06-16', 115, 17, 131, -1, 0),
(487, '程序设计语言：根据预先定义的规则写出的预定语句的集合。\n程序：根据要求编制的指令序列叫做程序。\n联系：由程序设计语言组成的指令的序列构成了程序。', 7, '2018-06-16', 115, 18, 131, -1, -1),
(488, '指令由操作码和地址吗两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码用来表示参加本次运算的操作数或操作数地址以及运算结果所在的地址', 8, '2018-06-16', 116, 16, 132, -1, 10),
(489, '地址总线是用来传递指令的地址，操作数地址，结果存放地址等地址的总线，数据总线是用于传递操作数，指令，运算结果等数据的总线。', -1, '2018-06-16', 116, 17, 132, -1, 0),
(490, '程序是按事先设计的功能和性能要求编制的指令序列，而程序设计语言是用于书写计算机程序的语言，是根据预先定义的语法由一个有限字母表上的字符构成的字符串的总体，用于表达和描述要加工的数据以及求解问题的步骤和过程（从课件上找的）。至于两者的关系，我们用更接近我们思维方式的程序设计语言写出程序，计算机翻译成机器指令后执行，从而使我们达到用计算机解决实际问题的目的。', 0, '2018-06-16', 116, 18, 132, -1, -1),
(491, '通常一条指令包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。\n在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 117, 16, 133, -1, 10),
(492, '地址总线是用来传送地址信息的信号线，地址总线的数目决定CPU能够直接寻找内存地址的范围；数据总线是用来传送数据信息的信号线，这些信息可以是原始数据或程序，数据总线来往于CPU、内存和输出/输入设备之间。', -1, '2018-06-16', 117, 17, 133, -1, 0),
(493, '程序是按事先设计的功能和性能要求编制的指令序列；程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则、由一个有限字母表上的字符构成的字符串的总体。\n联系：程序设计语言是构成程序的工具即程序要用程序设计语言书写。', 5, '2018-06-16', 117, 18, 133, -1, -1),
(494, '指令由操作码和地址码构成。操作码用来表明本条指令要求计算机完成的操作。地址码用来告诉计算机操作数地址、操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 118, 16, 134, -1, 10),
(495, '地址总线是用来传送内存地址的给地址编译码器，连接想要访问数据地址的中央处理器（CPU）和存储器；数据总线是数据线数量之和，用于各部件传送数据信息，连接输入输出设备和存储器，以及存储器和中央处理器（CPU）。', -1, '2018-06-16', 118, 17, 134, -1, 0),
(496, '(1)程序设计语言是一种具有语法规则定义计算机程序的语言，用于向计算机发出指令。\n(2)程序是一组由程序设计语言编写的指示计算机处理问题的指令集合。\n(3)关系：程序设计语言是程序运行的工具，用来表达程序。', 9, '2018-06-16', 118, 18, 134, -1, -1),
(497, '指令由操作码和地址码两部分组成，操作码表明要执行的操作，地址码表示参加运算的操作数，操作数地址以及运算结果所在地址', 9, '2018-06-16', 119, 16, 135, -1, 10),
(498, '地址总线：用来传送地址信息的信号线，地址总线的数目决定CPU能够直接寻找内存地址的范围；数据总线：用来传送数据信息的信号线，这些信息可以是原始数据或程序，数据总线来往于CPU、内存和输出/输入设备之间', -1, '2018-06-16', 119, 17, 135, -1, 0),
(499, '程序：按事先设计的功能和性能要求编制的指令序列；程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则、由一个有限字母表上的字符构成的字符串的总体。联系：程序设计语言是构成程序的工具', 3, '2018-06-16', 119, 18, 135, -1, -1),
(500, '指令由操作码和地址码构成，操作码表明了该指令的操作类型，地址码表明了该指令操作对象的存储地址。', 10, '2018-06-16', 120, 16, 136, -1, 10),
(501, '地址总线是地址线的总和，是处理器到主存储器之间的单向通道。处理器通过地址总线向主存储器发出地址编码，从指定的地址上获取数据，再由数据总线返回。地址总线宽度决定了可用内存的大小。数据总线是处理器和存储器及其他部件之间的双向的数据传输通道。数据总线宽度决定了数据传输速度。', -1, '2018-06-16', 120, 17, 136, -1, 0),
(502, '程序是一段按照一定的功能和性能要求编制的指令序列。程序设计语言是一种按照一定的语法、语义和元素构成的语言，可以表示特定的数据处理过程。它写成的文字可以按照一定规则翻译为指令序列，是人类思维和机器语言之间的桥梁。', 0, '2018-06-16', 120, 18, 136, -1, -1),
(503, '指令由操作码和地址码构成', 10, '2018-06-16', 121, 16, 137, -1, 10),
(504, '中央处理器通过地址总线向存储器或输入输出设备传送要待输入或输出的数据的地址；数据总线用来在输入输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 121, 17, 137, -1, 0),
(505, '计算机语言是指根据预先定义的规则写出的预定语句的集合。这些集合组成了程序。', 0, '2018-06-16', 121, 18, 137, -1, -1),
(506, '指令由操作码和地址码两部分组成。其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址', 7, '2018-06-16', 122, 16, 138, -1, 10),
(507, '地址总线：专用于在CPU、存储器和I/O端口间传送地址信息的信号线。\n数据总线：专用于在CPU、存储器和I/O端口间传送数据信息的信号线。', -1, '2018-06-16', 122, 17, 138, -1, 0),
(508, '程序设计语言是指用于书写计算机程序的语言，程序是指一组指示计算机执行动作或做出判断的指令。程序是用程序设计语言编写的，运行于某种目标体系结构上。', 10, '2018-06-16', 122, 18, 138, -1, -1),
(509, '由操作码和操作数组成，操作码代表要进行的操作，操作数代表操作的对象。', 0, '2018-06-16', 123, 16, 139, -1, 5),
(510, '数据总线是CPU与内存或其他器件之间的数据传送的通道，它的宽度决定了CPU和外界的数据传送速度。地址总线决定了cpu所能访问的最大内存空间的大小，同时CPU通过其来指定存储单元。', -1, '2018-06-16', 123, 17, 139, -1, 0),
(511, '程序是按事先设计的功能和性能要求编制的具有特殊功能的指令序列。程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 两者之间的关系是：程序需要通过程序设计语言进行编写，需要程序设计语言来表达和叙述程序的思想；而程序设计语言也需要编写成程序才具有实际意义。', 0, '2018-06-16', 123, 18, 139, -1, -1),
(512, '指令由操作码和地址码两部分构成', 10, '2018-06-16', 124, 16, 140, -1, 10),
(513, '地址总线：用于传递地址的总线 数据总线：用于数据传送的总线', -1, '2018-06-16', 124, 17, 140, -1, 0),
(514, '计算机语言是根据预先定义好的规则而写出的预定语序的集合，这些集合组成了程序。程序是指令的序列。', 1, '2018-06-16', 124, 18, 140, -1, -1),
(515, '通常一条指令包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。\n在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 125, 16, 141, -1, 10),
(516, '地址总线是CPU到存储器单向传输地址的途径，数据总线是双向传输数据,指令的途径。', -1, '2018-06-16', 125, 17, 141, -1, 0),
(517, '程序设计语言是编写程序的工具，让人们不用学习复杂的机器语言就能与机器沟通。程序是指令按照一定顺序排列的集合，即指令序列。程序能被翻译成指令序列，指令的集合是程序。', 4, '2018-06-16', 125, 18, 141, -1, -1),
(518, '是由操作码和操作数构成的', 10, '2018-06-16', 126, 16, 142, -1, 5),
(519, '数据总线是CPU与内存或其他器件之间的数据传送的通道。地址总线是CPU用其来指定存储单元的。', -1, '2018-06-16', 126, 17, 142, -1, 0),
(520, '程序设计语言是用于书写计算机程序的语言，程序是可以在计算机上编译后运行的代码。程序设计语言编写出程序，程序要符合程序设计语言的语法。', 10, '2018-06-16', 126, 18, 142, -1, -1),
(521, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 127, 16, 143, -1, 5),
(522, '地址总线：一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。 数据总线：用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。数据的含义是广义的，它可以是真正的数据，也可以是指令代码或状态信息，有时甚至是一个控制信息，因此，在实际工作中，数据总线上传送的并不一定仅仅是真正意义上的数据。', -1, '2018-06-16', 127, 17, 143, -1, 0),
(523, '程序设计语言：用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律，但不涉及这些记号的特定含义，也不涉及使用者。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义，但不涉及使用者。  程序：按事先设计好的功能和性能要求编制的指令程序叫做程序。  关系：程序设计语言用来编写程序，程序由程序设计语言构成。', 10, '2018-06-16', 127, 18, 143, -1, -1),
(524, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 128, 16, 144, -1, 10),
(525, '地址总线用于传输控制器所要访问和操作部分的位址。数据总线让数据在各个部分之间进行传输。', -1, '2018-06-16', 128, 17, 144, -1, 0),
(526, '程序设计语言是根据原先设定的规则写出的预定语句的集合。程序指一串用于执行的指令序列。程序由程序设计语言组合而成。', 0, '2018-06-16', 128, 18, 144, -1, -1),
(527, '由操作码和地址码构成', 3, '2018-06-16', 129, 16, 145, -1, 10),
(528, '数据总线用来在输入输出设备和主存储器、主存储器和CPU之间传送数据；地址总线用来向主存储器或者输入输出设备传送待输入输出的数据地址。', -1, '2018-06-16', 129, 17, 145, -1, 0),
(529, '程序设计语言是用于书写计算机程序的语言。按事先设计的功能和性能要求编制的指令序列叫做程序。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序', 0, '2018-06-16', 129, 18, 145, -1, -1),
(530, '通常一条指令包括两方面的内容：操作码和操作数。操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。\n在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码形式存放在存储器中。', 10, '2018-06-16', 130, 16, 146, -1, 10),
(531, '地址总线：属于一种电脑总线 （一部份），是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。\n数据总线：用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。数据总线的位数是微型计算机的一个重要指标，通常与微处理的字长相一致。', -1, '2018-06-16', 130, 17, 146, -1, 0),
(532, '程序设计语言：程序设计语言是用于书写计算机程序的语言\n程序：是指一组指示计算机执行动作或做出判断的指令。\n关系：程序通常由程序设计语言编写，从而运行于某种目标体系结构上。', 10, '2018-06-16', 130, 18, 146, -1, -1),
(533, '地址码和操作码', 3, '2018-06-16', 131, 16, 147, -1, 10),
(534, '数据总线：是CPU与内存或其他器件之间的数据传送的通道。地址总线：CPU与内存或其他器件之间来传送数据地址的通道。', -1, '2018-06-16', 131, 17, 147, -1, 0),
(535, '程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言是根据预先定义的规则（语法）而写出的预订语句集合，而这些集合组成了程序。', 0, '2018-06-16', 131, 18, 147, -1, -1),
(536, '0.1组成的二进制代码串', 5, '2018-06-16', 132, 16, 148, -1, 0),
(537, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问计算机内存组件/地方的物理地址。\n数据总线：是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 132, 17, 148, -1, 0),
(538, '程序设计语言是根据预先定义的规则（语法）而写出的预订语句集合。\n程序是按事先设计的功能和性能要求编制的指令序列。\n而程序设计语言所写出的集合组成了程序。', 0, '2018-06-16', 132, 18, 148, -1, -1),
(539, '通常一条指令结构包括操作数和操作码，操作码让计算机完成对它要求的操作，操作数含有运算数据及其单元地址，操作的要求和操作码都由二进制码表示，整条指令以二进制码的形式存储在存储器中。', 8, '2018-06-16', 133, 16, 149, -1, 5),
(540, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据都地址。数据总线用来在输入/输出设备和主存储器、主存储器和 CPU 之间传送数据。', -1, '2018-06-16', 133, 17, 149, -1, 0),
(541, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合。程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言的集合组成了程序。', 0, '2018-06-16', 133, 18, 149, -1, -1),
(542, '操作码和操作数，其中操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 134, 16, 150, -1, 5),
(543, '数据总线用于传送数据信息。数据总线既可以把CPU的数据传送到存储器或I／O接口等其它部件，也可以将其它部件的数据传送到CPU。地址总线是专门用来传送地址的，地址只能从CPU传向外部存储器或I／O端口', -1, '2018-06-16', 134, 17, 150, -1, 0),
(544, '程序设计语言是是一组用来定义计算机程序的语法规则，它是一种被标准化的交流技巧，用来向计算机发出指令。 程序是按事先设计的功能和性能要求编制的指令序列。 程序设计语言是用来编写和创造程序的。', 9, '2018-06-16', 134, 18, 150, -1, -1),
(545, '指令由0，1组成的二进制代码串，由操作码和地址码两部分构成。操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址及运算结果所在的地址。', 8, '2018-06-16', 135, 16, 151, -1, 10),
(546, '地址总线： 属于一种电脑总线 （一部份），是CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。\n数据总线：数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 135, 17, 151, -1, 0),
(547, '程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言是用于书写程序的语言。\n用程序设计语言，通过编程，写成机器能够理解和执行的代码，这些代码序列组成程序。', 9, '2018-06-16', 135, 18, 151, -1, -1),
(548, '通常一条指令包括两方面的内容： 操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。\n在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 136, 16, 152, -1, 10),
(549, '地址总线用于沟通单元想要访问计算机内存组件的物理地址，数据总线用于传输数据', -1, '2018-06-16', 136, 17, 152, -1, 0),
(550, '程序设计语言是一组规则，程序是以某些程序设计语言编写，运行于某种目标结构体洗上，程序设计语言是用于书写程序的语言', 9, '2018-06-16', 136, 18, 152, -1, -1),
(551, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 137, 16, 153, -1, 5),
(552, '地址总线是有DMA能力单元，用来访问内存物理地址。数据总线用于传输信息', -1, '2018-06-16', 137, 17, 153, -1, 0),
(553, '程序由程序设计语言表达。程序是指令，设计语言是指令的组成', 10, '2018-06-16', 137, 18, 153, -1, -1),
(554, '由操作码和地址码构成', 3, '2018-06-16', 138, 16, 154, -1, 10),
(555, '地址总线属于一种电脑总线 （一部份），是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 138, 17, 154, -1, 0),
(556, '为程序员写出一个好的程序提供了所需的抽象机制、组织原则以及控制结构。在程序设计语言中出现的概念，即在程序设计语言的实现过程中产生的问题，以及语言的设计方式对程序开发产生的影响。一个环节，内部嵌套着一系列复杂的列逻辑慎密的一个组件，如若一个地方出问题则会影响到整个主体。设计语言作为抽象的指令，操作程序运行，程序是实体，设计语言是灵魂。', 0, '2018-06-16', 138, 18, 154, -1, -1),
(557, '指令由操作数和地址码构成。操作码用来表明本条指令要求计算机完成操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在地址。', 8, '2018-06-16', 139, 16, 155, -1, 10),
(558, '地址总线，又称：位址总线 属于一种电脑总线 （一部份），是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 139, 17, 155, -1, 0),
(559, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。计算机程序或者软件程序（通常简称程序）是指一组指示计算机执行动作或做出判断的指令，通常用某种程序设计语言编写，运行于某种目标体系结构上。程序设计语言是用来设计程序的。', 5, '2018-06-16', 139, 18, 155, -1, -1),
(560, '通常一条指令包括两方面的内容：一是指机器执行什么操作，即给出操作要求，二是指出操作数在存储器或通用寄存器组中的地址，即给出操作数的地址。\n通常一条指令包括两方面的内容：一是指机器执行什么操作，即给出操作要求，二是指出操作数在存储器或通用寄存器组中的地址，即给出操作数的地址。\n通常一条指令包括两方面的内容：一是指机器执行什么操作，即给出操作要求;二是指出操作数在存储器或通用寄存器组中的地址，即给出操作数的地址。', 10, '2018-06-16', 140, 16, 156, -1, 0),
(561, '地址总线是专门用来向从CPU传送地址到内存或外设的导线的集合。CPU用地址总线来指定存储器单元。数据总线是专门用来在CPU和内存或外设之间传送数据的导线的集合。数据总线是CPU与内存或外设之间的数据传送的通道。', -1, '2018-06-16', 140, 17, 156, -1, 0),
(562, '程序设计语言是用于书写计算机程序的语言。程序是事先设计的功能和性能要求编制的，为具体的任务编制能够实现预定目标的一组指令序列。程序设计语言设计程序。', 2, '2018-06-16', 140, 18, 156, -1, -1),
(563, '通常一条指令结构包括操作码和操作数，操作码决定要完成的操作，操作数参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 141, 16, 157, -1, 5),
(564, '地址总线地址总线属于一种计算机总线 ，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。\n数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 141, 17, 157, -1, 0);
INSERT INTO `operate_useranswerlog` (`id`, `answer`, `score`, `add_time`, `paper_log_id`, `paper_id`, `user_id`, `mscore`, `score2`) VALUES
(565, '程序设计语言是用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律，但不涉及这些记号的特定含义，也不涉及使用者。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义，但不涉及使用者。\n程序是按事先设计的功能和性能要求编制的指令序列。\n程序必须按照程序设计语言的规则来编写，才能够进行编译并在计算机上运行。', 10, '2018-06-16', 141, 18, 157, -1, -1),
(566, '操作码（决定要完成的操作） 地址码（参加运算数据所在的地址）', 9, '2018-06-16', 142, 16, 158, -1, 10),
(567, '地址总线属于一种电脑总线 （一部份），是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。\n数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 142, 17, 158, -1, 0),
(568, '程序：指令（操作）序列。按照工作步骤事先编排好的，具有特殊功能的指令序列。\n程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题步骤和程序。\n关系是：程序是由程序设计语言表达的', 7, '2018-06-16', 142, 18, 158, -1, -1),
(569, '指令由两部分组成：操作码和地址码构成。0和1组成的二进制代码串。', 10, '2018-06-16', 143, 16, 159, -1, 10),
(570, '地址总线是连接存储器和中央处理器的计算机总线，当计算机需要处理某组数据时通过地址总线寻找到这组数据;数据总线是设备传输数据的计算机总线。', -1, '2018-06-16', 143, 17, 159, -1, 0),
(571, '程序设计语言是指用于书写计算机程序的语言;程序是指计算机执行一系列指令;程序由程序设计语言书写而成。', 9, '2018-06-16', 143, 18, 159, -1, -1),
(572, '由操作码和地址码构成', 3, '2018-06-16', 144, 16, 160, -1, 10),
(573, '地址总线属于一种电脑总线 （一部份），是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 144, 17, 160, -1, 0),
(574, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律，但不涉及这些记号的特定含义，也不涉及使用者。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义，但不涉及使用者。程序是一组机器操作的指令或语言序列，是算法的一种描述。程序是实现算法中思想的过程；程序设计语言是把算法转化为计算机认识的语言', 10, '2018-06-16', 144, 18, 160, -1, -1),
(575, '指令是由操作码和地址码两部分构成。其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 145, 16, 161, -1, 10),
(576, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问计算机内存组件的物理地址；数据中线DB用于传送数据信息。数据总线是双向三态形式的总线，但它既可以把CPU的数据传送到存储器或输入输出接口等其他部件，也可以将其他部件的数据传送到CPU', -1, '2018-06-16', 145, 17, 161, -1, 0),
(577, '程序设计语言是用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 1, '2018-06-16', 145, 18, 161, -1, -1),
(578, '操作码和地址码.操作码表明要执行的操作，地址码表示要参加运算的操作数。', 8, '2018-06-16', 146, 16, 162, -1, 10),
(579, 'CPU通过地址总线确定存储单元，地址总线决定了cpu所能访问的最大内存空间的大小，地址总线是地址线数量之和。数据总线是CPU与内存或其他器件之间的数据传送的通道，数据总线的宽度决定了CPU和外界的数据传送速度，每条传输线一次只能传输1位二进制数据，数据总线是数据线数量之和。', -1, '2018-06-16', 146, 17, 162, -1, 0),
(580, '程序设计语言是一组用来定义计算机程序的语法规则，是一种被标准化的交流方式，用来向计算机发出指令。程序＝算法+数据结构，程序就是为了得到某种结果而可以由计算机执行的代码化指令序列。', 9, '2018-06-16', 146, 18, 162, -1, -1),
(581, '由操作码和操作数构成，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 147, 16, 163, -1, 5),
(582, '是CPU或有DMA能力的单元，用来沟通这些单元想要访问计算机内存组件/地方的物理地址；是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 147, 17, 163, -1, 0),
(583, '用于书写计算机程序的语言；指一组指示计算机执行动作或做出判断的指令；程序用程序设计语言描述，使计算机执行一定指令。', 10, '2018-06-16', 147, 18, 163, -1, -1),
(584, '由操作码和地址码构成，操作码决定要完成的操作，地址码包括操作数地址、操作结果储存的地址和下一指令的地址。他们均由二进制表示，存储在存储器中。', 10, '2018-06-16', 148, 16, 164, -1, 10),
(585, '地址总线是一种计算机总线，是cpu或由DMA能力的单元，用来沟通这些单元想要访问计算机内存组件的实体位址。数据总线是用于传送数据信息，为双向三态形态的总线。', -1, '2018-06-16', 148, 17, 164, -1, 0),
(586, '程序设计语言是根据预先定义的规则而写出的预定语言的集合。程序是指以某些程序设计语言编写而成的，是一组指示计算机执行动作或做出判断的指令。程序设计语言组成了程序。', 8, '2018-06-16', 148, 18, 164, -1, -1),
(587, '指令由操作码和地址码构成。', 10, '2018-06-16', 149, 16, 165, -1, 10),
(588, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 149, 17, 165, -1, 0),
(589, '程序设计语言用于书写计算机程序的语言。按事先设计的功能和性能要求编制的指令序列叫程序。计算机语言的种类非常的多，总的来说可以分成机器语言，汇编语言，高级语言三大类。 电脑每做的一次动作，一个步骤，都是按照以经用计算机语言编好的程序来执行的，程序是计算机要执行的指令的集合，而程序全部都是用我们所掌握的语言来编写的。所以人们要控制计算机一定要通过计算机语言向计算机发出命令。', 9, '2018-06-16', 149, 18, 165, -1, -1),
(590, '指令由操作码和地址码两部分组成，操作码表明要执行的操作，地址码表示参加运算的操作数，操作数地址以及运算结果所在地址', 9, '2018-06-16', 150, 16, 166, -1, 10),
(591, '地址总线：是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。', -1, '2018-06-16', 150, 17, 166, -1, 0),
(592, '程序语言：根据预先定义的规则（语法）而写出的预定语句的集合。   程序：按事先设计的功能和性能要求编制的指令序列叫做程序。  联系：根据预先定义的规则（语法）而写出的预定语句的集合是程序语言，而这些集合组成了程序。', 3, '2018-06-16', 150, 18, 166, -1, -1),
(593, '指令由操作码和地址码构成，地址码又由操作数地址，操作结果的存储地址，下一条指令的地址构成。', 10, '2018-06-16', 151, 16, 167, -1, 10),
(594, '数据总线 是CPU与内存或其他器件之间的数据传送的通道。\n地址总线：是地址数量之和，CPU是通过地址总线来指定存储单元的。地址总线决定了cpu所能访问的最大内存空间的大小。', -1, '2018-06-16', 151, 17, 167, -1, 0),
(595, '前者是以一组记号和规则为基础根据规则由记号构成的记号串总体书写计算机程序的语言；而后者只是其中一部分，也就是前者中的记号串，是按照事先设计的功能和性能要求编制的指令序列。程序具体来说是一系列动作、行动和操作，这些活动有计算机来执行。', 0, '2018-06-16', 151, 18, 167, -1, -1),
(596, '指令由操作码和地址码两部分构成，操作码表明要执行的操作，地址码表示参加运算的的操作数，操作数地址以及结果运算所在地址。', 9, '2018-06-16', 152, 16, 168, -1, 10),
(597, '地址总线是一种电脑总线，是由CPU或有DMA能力的单元，用来沟通这些单元想要存取电脑内存元件的实体地址。数据总线是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 152, 17, 168, -1, 0),
(598, '程序语言是用来定义计算机指令执行流程的形式化语言。每种程序语言都包含一整套词汇和语法规范。程序是按事先设计的功能和性能要求编制的指令序列。程序由程序语言编写。', 0, '2018-06-16', 152, 18, 168, -1, -1),
(599, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作地址以及运算结果所在的地址。', 7, '2018-06-16', 153, 16, 169, -1, 10),
(600, '地址总线：数据存储的地址\n数据总线：用于双向传播数据，可以将CPU的数据传写入储存器中，或者将存储器中的数据读入CPU中', -1, '2018-06-16', 153, 17, 169, -1, 0),
(601, '程序：程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言：是用于书写计算机程序的语言\n程序是由程序设计语言写成的字符串，通过编译器编译成二进制指令对数据进行操作', 4, '2018-06-16', 153, 18, 169, -1, -1),
(602, '操作码和地址码', 3, '2018-06-16', 154, 16, 170, -1, 10),
(603, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出数据的地址。\n数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 154, 17, 170, -1, 0),
(604, '程序设计语言：程序设计语言就是用于书写计算机程序的语言，用于表达和描述哟啊加工的数据以及求解问题的步骤和过程。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。\n程序：程序就是按照事先设计的功能和性能要求编制的指令序列。\n关系：程序就是用程序语言编写的，运行于某种目标体系结构上。', 4, '2018-06-16', 154, 18, 170, -1, -1),
(605, '是由地址码和操作码构成的。', 3, '2018-06-16', 155, 16, 171, -1, 10),
(606, '地址总线：用于传递地址的总线  数据总线：用于数据传送的主线', -1, '2018-06-16', 155, 17, 171, -1, 0),
(607, '计算机语言是根据预先定义好的规则而写出的预定语序的集合，这些集合组成了程序。程序是指令的序列', 1, '2018-06-16', 155, 18, 171, -1, -1),
(608, '指令是能够被计算机硬件直接识别的，命令计算机进行某种基本操作的，由0和1组成的二进制代码串。', 10, '2018-06-16', 156, 16, 172, -1, 0),
(609, '计算机系统中各个部件之间传送信息的公共通路为总线，数据总线用来传送数据，地址总线来传地址。', -1, '2018-06-16', 156, 17, 172, -1, 0),
(610, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据及求解问题的步骤和过程。程序是按照算法事先编排好的用于特殊功能的指令序列。关系为程序设计语言是程序的表示形式和载体。', 2, '2018-06-16', 156, 18, 172, -1, -1),
(611, '指令是由操作码和地址码组成', 10, '2018-06-16', 157, 16, 173, -1, 10),
(612, '地址总线属于一种电脑总线，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。\n数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，\n也可以将其它部件的数据传送到CPU。数据总线的位数是微型计算机的一个重要指标，通常与微处理的字长相一致。', -1, '2018-06-16', 157, 17, 173, -1, 0),
(613, '计算机语言是根据预先定义好的规则写出的预定语序的集合，这些集合组成了程序。程序是指令的序列。', 1, '2018-06-16', 157, 18, 173, -1, -1),
(614, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 158, 16, 174, -1, 5),
(615, '数据总线决定每次传输数据的大小，地址总线决定了CPU所能访问的最大内存空间的大小。', -1, '2018-06-16', 158, 17, 174, -1, 0),
(616, '按事先设计的功能和性能要求编制的指令序列叫做程序。\n程序语言是根据预先定义的规则（语法）而写出的预定语句的集合。\n这些集合组成了程序。', 0, '2018-06-16', 158, 18, 174, -1, -1),
(617, '指令是由操作码和操作数构成的。操作码决定了要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 8, '2018-06-16', 159, 16, 175, -1, 5),
(618, '地址总线：一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线：电脑内部数据传输以及处理的带宽。', -1, '2018-06-16', 159, 17, 175, -1, 0),
(619, '程序设计语言：用于书写计算机程序的语言，用于表示和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。程序：按照工作步骤（算法）事先编排好的、具有特殊功能的指令序列。关系：程序设计语言用于编写程序，程序要通过程序设计语言来解决问题。', 6, '2018-06-16', 159, 18, 175, -1, -1),
(620, '操作码和地址码', 3, '2018-06-16', 160, 16, 176, -1, 10),
(621, '地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。\n数据总线用来在输入输出设备和存储器、存储器和cpu之间传送数据。', -1, '2018-06-16', 160, 17, 176, -1, 0),
(622, '程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言是用于编写计算机程序的语言，用于表示和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的语法、由一个有限字母表上的字符构成的字符串的总体。程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言用于编写程序，程序要通过程序设计语言来解决问题。', 4, '2018-06-16', 160, 18, 176, -1, -1),
(623, '是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。由操作码和地址码组成。两者均为二进制数据。', 10, '2018-06-16', 161, 16, 177, -1, 10),
(624, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问(读取或者写入)计算机内存组件/地方的物理地址。数据总线用于传送数据信息，是双向三态形式的总线，既可以把CPU的数据传送到存储器或者输入输出接口等其他部件，也可以将其他部件的数据传到CPU。', -1, '2018-06-16', 161, 17, 177, -1, 0),
(625, '按事先设计的功能和性能要求编制的指令序列叫做程序。计算机语言是根据预先定义的规则语法而写出的预定语句的集合，这些集合组成了程序。程序设计语言是用于书写计算机程序的语言，有三个因素，即语法，语义和语用。两者的关系就是程序是由多条计算机语言的集合构成的', 2, '2018-06-16', 161, 18, 177, -1, -1),
(626, '计算机中的指令是由操作码和地址码构成的。操作码用来本条指令要求计算机完成的操作，地址码又包括了操作数地址，操作结果的存储地址和下一条指令的地址，。操作数地址: CPU根据该地址取得所需的操作数;可能直接给出操作数，可能是内存地址，也可能是寄存器地址(即寄存器名) ;操作结果的存储地址:将对操作数的操作结果保存在该地址中，以便再次使用; 可能是内存地址，也可能是寄存器地址;下一条指令的地址:一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC (存放下一条指令地址的寄存器) 指出;仅当改变程序的运行顺序(转移、调用子程序时），下一条指令的地址才由转移类指令给出。', 3, '2018-06-16', 162, 16, 178, -1, 10),
(627, '地址总线是用来沟通想要访问计算机内存组件的单元的物理地址，数据总线是用来传递信息的指令代码、数据或状态信息', -1, '2018-06-16', 162, 17, 178, -1, 0),
(628, '程序设计语言是用于书写计算机程序的语言，程序是有程序设计语言编写的在计算机上用于完成特定目的的指令序列。程序基于程序设计语言，程序设计语言于程序中体现', 10, '2018-06-16', 162, 18, 178, -1, -1),
(629, '一条指令的基本结构包括操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 163, 16, 179, -1, 5),
(630, '地址总线：一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线：电脑内部数据传输以及处理的带宽。', -1, '2018-06-16', 163, 17, 179, -1, 0),
(631, '程序设计语言：用于书写计算机程序的语言，用于表示和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。程序：按照工作步骤（算法）事先编排好的、具有特殊功能的指令序列。程序设计语言用于编写程序，程序要通过程序设计语言来解决问题。', 6, '2018-06-16', 163, 18, 179, -1, -1),
(632, '计算机中的指令是由操作码和地址码构成的。操作码用来本条指令要求计算机完成的操作，地址码又包括了操作数地址，操作结果的存储地址和下一条指令的地址，。操作数地址: CPU根据该地址取得所需的操作数;可能直接给出操作数，可能是内存地址，也可能是寄存器地址(即寄存器名) ;操作结果的存储地址:将对操作数的操作结果保存在该地址中，以便再次使用; 可能是内存地址，也可能是寄存器地址;下一条指令的地址:一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC (存放下一条指令地址的寄存器) 指出;仅当改变程序的运行顺序(转移、调用子程序时），下一条指令的地址才由转移类指令给出。', 3, '2018-06-16', 164, 16, 180, -1, 10),
(633, '地址总线是由CPU 或有直接内存存取能力的单元，用来沟通这些单元想要读取或写入电脑内存元件/地方的实体位址。\n数据总线是用于传送数据信息的既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU的双向三态形式的总线。', -1, '2018-06-16', 164, 17, 180, -1, 0),
(634, '程序设计语言是一种用来定义计算机程序的语法规则，是一种标准化的交流技巧，程序员用它来向计算机发出指令。 \n计算机程序是指为了得到某种结果而可以由计算机等具有信息处理能力的装置执行的代码化指令序列，或者可以被自动转换成代码化指令序列的符号化指令序列或者符号化语句序列。\n两者关系 程序员根据自己的想法设计计算机的程序，然而就如同讲一门语言一样，交流就必须有一种规范化标准化的表达方式，程序设计语言便是程序员与计算机交流，程序员彼此之间交流的标准。程序员通过程序设计语言向计算机发出指令，定义计算机工作所需使用数据，并定义计算机的行为。', 10, '2018-06-16', 164, 18, 180, -1, -1),
(635, '指令由操作码和地址码两部分组成，操作码表明要执行的操作，地址码表示参加运算的操作数，操作数地址以及运算结果所在地址。', 9, '2018-06-16', 165, 16, 181, -1, 10),
(636, '地址总线是用来指定在RAM之中储存的数据的地址。数据总线是在CPU与RAM之间来回传送需要处理或是需要储存的数据。', -1, '2018-06-16', 165, 17, 181, -1, 0),
(637, '程序设计语言是指根据预先定义的规则而写出的预定语句的集合，这些集合组成了程序', 0, '2018-06-16', 165, 18, 181, -1, -1),
(638, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址.', 7, '2018-06-16', 166, 16, 182, -1, 10),
(639, '地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。\n数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据', -1, '2018-06-16', 166, 17, 182, -1, 0),
(640, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 程序是按事先设计的功能和性能要求编制的指令序列。所以程序设计语言是程序的表达化形式。程序通过程序设计语言表达自己的作用。', 2, '2018-06-16', 166, 18, 182, -1, -1),
(641, '计算机指令由操作码和操作数组成。', 8, '2018-06-16', 167, 16, 183, -1, 5),
(642, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出数据的地址。\n数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 167, 17, 183, -1, 0),
(643, '程序设计语言是指根据预先定义的规则或语法写出的预定语句的集合。程序是指以某些程序设计语言编写，运行于某种目标结构体系上的指令序列。用程序设计语言写出的语句集合组成了程序。', 6, '2018-06-16', 167, 18, 183, -1, -1),
(644, '由操作码和操作数构成，操作码决定要完成的操作，操作数指参加运算的数据及其所在单元地址', 6, '2018-06-16', 168, 16, 184, -1, 5),
(645, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问家算计内存组件的物理地址。\n数据总线是CPU与内存或其他器件之间的数据传送的通道，用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。\n地址总线用来向主存储器或者输入/输出设备传送待输入/输出数据的地址。', -1, '2018-06-16', 168, 17, 184, -1, 0),
(646, '程序设计语言是指根据预先定义的规则或语法写出的预定语句的集合。\n程序是指以某些程序设计语言编写，运行于某种目标结构体系上的指令序列。\n用程序设计语言写出的语句集合组成了程序。', 6, '2018-06-16', 168, 18, 184, -1, -1),
(647, '指令由操作码和地址码两部分构成。', 10, '2018-06-16', 169, 16, 185, -1, 10),
(648, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出数据的地址，数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据', -1, '2018-06-16', 169, 17, 185, -1, 0),
(649, '程序设计语言是指根据预先定义的规则或语法写出的预定语句的集合。\n 程序是指以某些程序设计语言编写，运行于某种目标结构体系上的指令序列。 \n用程序设计语言写出的语句集合组成了程序。', 4, '2018-06-16', 169, 18, 185, -1, -1),
(650, '指令是计算机能直接识别和操作的二进制代码串，包括操作码和地址码两部分', 10, '2018-06-16', 170, 16, 186, -1, 10),
(651, '地址总线: 用于传递地址的总线；\n数据总线: 用于数据传送的总线', -1, '2018-06-16', 170, 17, 186, -1, 0),
(652, '计算机语言是根据预先定义好的规则而写出的预定语序\n的集合，这些集合组成了程序。程序是指令的序列。', 1, '2018-06-16', 170, 18, 186, -1, -1),
(653, '通常计算机指令基本结构包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。\n　　在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 171, 16, 187, -1, 10),
(654, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址；\n数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据.', -1, '2018-06-16', 171, 17, 187, -1, 0),
(655, '程序设计语言是根据预先定义的规则（语法）而写出的预定语句的集合；算法与数据结构构成程序.程序是由程序设计语言编写的，故程序设计语言是程序的基础.', 4, '2018-06-16', 171, 18, 187, -1, -1),
(656, '一条指令由操作码和操作数组成，操作码决定要完成的操作，操作数指参加运算得到数据及其所在的单元地址。而操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 172, 16, 188, -1, 10),
(657, '地址总线和数据总线都是一组导线，通过高低电平来表示不同的数据；地址总线用于CPU向其它设备传输地址信息；数据总线用于CPU和其它器件之间传递数据。', -1, '2018-06-16', 172, 17, 188, -1, 0),
(658, '计算机程序设计语言是指根据预先定义的规则而写出的预定语句的集合，这些集合组成了程序', 1, '2018-06-16', 172, 18, 188, -1, -1),
(659, '操作码+地址码', 3, '2018-06-16', 173, 16, 189, -1, 10),
(660, '地址总线：用于向存储器或者输入/输出设备传送待输入/输出的数据的地址的系统总线。\n    数据总线：用于在输入/输出设备和存储器，存储器和CPU之间传送数据的系统总线。', -1, '2018-06-16', 173, 17, 189, -1, 0),
(661, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n程序：按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。\n两者之间的关系：当我需要进行程序设计时，需要设计求解问题的方法和步骤—算法，并以某种程序设计语言为工具，编写对应于该算法的程序。', 6, '2018-06-16', 173, 18, 189, -1, -1),
(662, '一条指令包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。首先是取指令和分析指令。按照程序规定的次序，从内存储器取出当前执行的指令，并送到控制器的指令寄存器中，对所取的指令进行分析，然后执行指令。', 2, '2018-06-16', 174, 16, 190, -1, 5),
(663, '地址总线：传送CPU向主存储器、输入/输出设备发出的信号的系统总线。\n数据总线：在输入/输出设备和主存储器、主存储器和CPU之间传送数据的系统总线。', -1, '2018-06-16', 174, 17, 190, -1, 0),
(664, '程序设计语言是根据预先定义的规则而写出的用以指挥计算机的预定语句的集合，这些集合组成了程序。', 0, '2018-06-16', 174, 18, 190, -1, -1),
(665, '指令由操作码和地址码构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 175, 16, 191, -1, 10),
(666, '地址总线用来沟通所要存取的数据的地址的路径；数据总线用于传送数据信息的路径', -1, '2018-06-16', 175, 17, 191, -1, 0),
(667, '程序设计语言是根据一定规则组成的字符串集合，程序是指令序列，程序是由程序设计语言编写的，将程序设计语言编写成程序后才能被编译执行，程序设计语言规定了程序的结构、形式以及其中字符串的含义', 9, '2018-06-16', 175, 18, 191, -1, -1),
(668, '指令是能够被计算机硬件直接识别的，命令计算机进行某种基本操作的，由“0”和“1”组成的二进制代码串，由操作码和地址码两部分组成', 10, '2018-06-16', 176, 16, 192, -1, 10),
(669, '地址总线（Address Bus）是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线的宽度，随可寻址的内存组件大小而变，决定有多少的内存可以被访问。\n\n数据总线(Data Bus)用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。数据总线的位数是微型计算机的一个重要指标，通常与微处理的字长相一致。', -1, '2018-06-16', 176, 17, 192, -1, 0),
(670, '语言是指根据预先定义的规则而写出的预定语句的集合。程序是按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言是人与计算机之间传递信息的媒介，通过预先定义好的数字，字符，语法规则将程序设计语言中的语句与计算机可执行的指令建立映射关系，从而计算机可以将程序设计语言翻译成可以直接执行的指令也就是程序。', 8, '2018-06-16', 176, 18, 192, -1, -1),
(671, '操作码和地址码。', 3, '2018-06-16', 177, 16, 193, -1, 10),
(672, '地址总线：是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线，用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。数据总线的位数是微型计算机的一个重要指标，通常与微处理的字长相一致。其中数据的含义是广义的，它可以是真正的数据，也可以是指令代码或状态信息，有时甚至是一个控制信息。', -1, '2018-06-16', 177, 17, 193, -1, 0),
(673, '程序设计语言：用于书写计算机程序的语言。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律，但不涉及这些记号的特定含义，也不涉及使用者。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义，但不涉及使用者。\n   程序：按事先设计的功能和性能要求编制的指令序列。\n二者关系：程序在执行前，对应的指令序列必须和数据一样，先放入计算机的主存储器中。启动一个程序，就是将程序的第一条指令的地址码传送给控制器，控制器知道了程序第一条指令的地址，可以依次取出主存储器中该程序的每条指令并加以识别，并不断的取指令和执行指令，直到程序的指令序列执行结束，最后将计算的结果放入指令指定的存储器地址中。', 3, '2018-06-16', 177, 18, 193, -1, -1),
(674, '由操作码和地址码构成', 3, '2018-06-16', 178, 16, 194, -1, 10),
(675, '地址总线：传送内存地址编码，给地址译码器。\n数据总线：访问传送数据，用于CPU与内存之间、输入\\输出设备与内存之间。', -1, '2018-06-16', 178, 17, 194, -1, 9),
(676, '程序设计语言由语法语义语用构成，由低级到高级，高级是人性化的语言，通过编译可形成低级语言，即面向机器语言，形成系统指令，对机器进行操作。而用程序语言编写的就是程序，是指为了得到某种结果而可以由计算机等具有信息处理能力的装置执行的代码化指令序列，或者可以被自动转换成代码化指令序列的符号化指令序列或者符号化语句序列。', 9, '2018-06-16', 178, 18, 194, -1, -1),
(677, '计算机指令有两部分构成：操作码和地址码，二者均是二进制数据。其中，操作码表明本条指令要求计算机完成的操作；地址码又分为操作数地址，操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 179, 16, 195, -1, 10),
(678, '地址总线是一种计算机总线，CPU通过地址总线来指定储存单元，地址总线决定了CPU所能访问的最大内存的大小。数据总线是CPU与内存或其他器件之间的数据传输通道。', -1, '2018-06-16', 179, 17, 195, -1, 0),
(679, '程序设计语言是用于书写计算机程序的语言。程序以某些程序设计语言编写，运行于某种目标结构体系上。', 10, '2018-06-16', 179, 18, 195, -1, -1),
(680, '由操作码和地址码（包括操作数地址，操作结果的存储地址和下一条指令的地址）构成，二者均为二进制数据。\n操作码：用来表明本条指令要求计算机完成的操作；\n操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址（即寄存器名）；\n操作结果的存储地址：将对操作数的操作结果保存在该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址；\n下一条指令的地址：一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC（存放下一条指令地址的寄存器）指出；仅当改变程序的运行顺序（转移、调用子程序）时，下条指令的地址才由转移类指令给出。', 6, '2018-06-16', 180, 16, 196, -1, 10),
(681, '地址总线是用来向主存储器或输入或输出设备传送待输入或输出的数据的地址的一种系统总线；数据总线是用来再输入或输出设备和主存储器、主存储器和CPU之前传送数据的一种系统总线。', -1, '2018-06-16', 180, 17, 196, -1, 0),
(682, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合；而程序指按事先设计的功能和性能要求编制的指令序列。程序设计语言中预定语句的集合组成了程序，也可以说，程序由程序设计语言编制而成。', 0, '2018-06-16', 180, 18, 196, -1, -1),
(683, '由操作码和地址码两部分构成', 3, '2018-06-16', 181, 16, 197, -1, 10),
(684, '地址总线：用来传送地址的总线，数据总线：用于数据传送的总线', -1, '2018-06-16', 181, 17, 197, -1, 0),
(685, '按事先设计的功能和性能要求编制的指令序列叫做程序，程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用', 3, '2018-06-16', 181, 18, 197, -1, -1),
(686, '指令是能够被计算机硬件直接识别的，命令计算机进行某种基本操作的，由\'0\'，\'1\'组成的二进制代码串，计算机硬件指令由操作码和地址码两部分构成，一般计算机包括算数运算类，逻辑运算类，传送类，程序控制类，输入输出类和其他指令类', 9, '2018-06-16', 182, 16, 198, -1, 10),
(687, '地址总线是CPU传输指定的存储器数据地址的通道。数据总线 是CPU和其他存储器之间数据传送的通道。', -1, '2018-06-16', 182, 17, 198, -1, 0),
(688, '程序设计语言是可以描述人类逻辑思维的符号集。程序是程序设计语言表达人类逻辑思维的具体结果。二者是抽象和具体的关系。', 0, '2018-06-16', 182, 18, 198, -1, -1),
(689, '指令包括操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 8, '2018-06-16', 183, 16, 199, -1, 5),
(690, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址，数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据', -1, '2018-06-16', 183, 17, 199, -1, 0),
(691, '程序是由程序员编写的储存在硬盘中的一组稳定的指令；程序设计语言是根据语法而写出的预定语句的集合；正是程序设计语言构成了程序', 3, '2018-06-16', 183, 18, 199, -1, -1),
(692, '指令是能够被计算机硬件直接识别，命令计算机进行某种基本操作的二进制代码穿，它由操作码和操作数构成。', 10, '2018-06-16', 184, 16, 200, -1, 5),
(693, '地址总线：是用来向主存储器或输入输出设备传送待输入输出的数据的地址。地址总线决定了CPU所能访问的最大内存空间的大小。\n数据总线：是CPU与内存器或其他器件之间数据传输的通道，是数据线的总和。每条数据线一次传输一位二进制数据，故数据总线的宽度决定了CPU与外界数据传输的速度。', -1, '2018-06-16', 184, 17, 200, -1, 0),
(694, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据及求解问题的步骤和过程。是根据预先定义的规则，由一个有限字母表上的字符构成的字符串的总体。它包括四大基本成分，即数据成分，运算成分，控制成分，传输成分。\n程序：按照工作步骤（算法）事先安排好的，具有特殊功能的指令序列。\n关系：程序设计语言是编写计算机程序的语言。', 1, '2018-06-16', 184, 18, 200, -1, -1),
(695, '计算机中的指令由操作码和地址码构成。', 7, '2018-06-16', 185, 16, 201, -1, 10),
(696, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址，地址总线上的信息是单向传输的。\n数据总线是CPU与存储器、CPU与输入输出设备之间传送数据信息(各种指令数据信息)的总线，数据总线上的信息是双向传输的。', -1, '2018-06-16', 185, 17, 201, -1, 0),
(697, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n程序是按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。\n关系：程序设计语言是为了能让人和计算机都能看懂程序的工具。', 7, '2018-06-16', 185, 18, 201, -1, -1),
(698, '操作码+地址码', 3, '2018-06-16', 186, 16, 202, -1, 10),
(699, '地址总线:向主存储器或者输入输出设备传送待输入输出的数据的地址。     数据总线:在输入输出设备和主存储器，主存储器和CPU之间传送数据。', -1, '2018-06-16', 186, 17, 202, -1, 0),
(700, '程序设计语言:用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。     程序:按事先设计的功能和性能要求编制的指令序列叫做程序。   由程序设计语言编写的代码转换成指令，指令序列组成了程序。', 10, '2018-06-16', 186, 18, 202, -1, -1),
(701, '指令是由操作码和地址码两部分构成的。', 10, '2018-06-16', 187, 16, 203, -1, 10),
(702, '数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据；地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。', -1, '2018-06-16', 187, 17, 203, -1, 0),
(703, '程序设计语言，用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。程序的概念：按事先设计的功能和性能要求编制的指令序列是程序。在程序设计语言中，这些记号串就是程序。', 0, '2018-06-16', 187, 18, 203, -1, -1),
(704, '计算机中的指令是由操作码和地址码构成的。操作码决定要完成的操作，地址码指参加运算的数据、结果、下一条指令所在的单元地址。', 10, '2018-06-16', 188, 16, 204, -1, 10),
(705, '地址总线：传送内存地址编码，给地址译码器。 \n数据总线：访问传送数据，用于CPU 与内存之间、输入\\输出设备与内存之间。', -1, '2018-06-16', 188, 17, 204, -1, 9),
(706, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n程序：按照工作步骤事先编排好的、具有特殊功能的指令序列。\n两者关系：程序设计语言用于书写计算机程序。', 5, '2018-06-16', 188, 18, 204, -1, -1),
(707, '操作码和地址码。\n操作码：用来表明本条指令要求计算机完成的操作。\n地址码又包括操作数地址、操作结果的存储地址、下一条指令的地址。\n操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址（即寄存器名）。\n操作结果的存储地址：将对操作数的操作结果保存在该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址。\n下一条指令的地址：一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC（存放下一条指令地址的寄存器）指出；仅当改变程序的运行顺序（转移、调用子程序）时，下条指令的地址才由转移类指令给出。\n操作码和地址码均是二进制数据。', 6, '2018-06-16', 189, 16, 205, -1, 10),
(708, '地址总线是一种电脑总线，是由 CPU 或有 DMA 能力的单元，用来沟通这些单元想要存取电脑内存元件/地方的实体地址。数据总线用于传送数据信息。数据总线是双向三态形式的总线，它既可以把CPU的数据传送到存储器或I／O接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 189, 17, 205, -1, 0),
(709, '程序设计语言，是一组用来定义计算机程序的语法规则。它是一种被标准化的交流技巧，用来向计算机发出指令。一种计算机语言让程序员能够准确地定义计算机所需要使用的数据，并精确地定义在不同情况下所应当采取的行动。计算机程序，是指为了得到某种结果而可以由计算机等具有信息处理能力的装置执行的代码化指令序列 。', 10, '2018-06-16', 189, 18, 205, -1, -1),
(710, '由操作码和地址码组成的，包括操作码、操作数地址、操作结果的存储地址和下一条指令的地址构成。', 10, '2018-06-16', 190, 16, 206, -1, 10),
(711, '地址总线是传送内存地址编码，给地址译码器的总线。\n数据总线是访问传送数据，用于CPU与内存之间，输入/输出设备与内存之间的总线。', -1, '2018-06-16', 190, 17, 206, -1, 9),
(712, '程序设计语言是用于编写程序的语言，程序是指令序列。程序是用程序设计语言所写的指令序列。', 10, '2018-06-16', 190, 18, 206, -1, -1),
(713, '由操作码和操作数构成', 10, '2018-06-16', 191, 16, 207, -1, 5),
(714, '地址总线：\n把指令的地址码传送给控制器，控制器从内存中取出指令，指令经数据总线送到指令寄存器，然后控制器执行指令规定的操作。', -1, '2018-06-16', 191, 17, 207, -1, 0),
(715, '程序：按事先设计的功能和性能要求编制的指令序列\n程序设计语言：用于编写计算机程序的语言\n关系：程序是由程序设计语言编写的指令序列', 10, '2018-06-16', 191, 18, 207, -1, -1),
(716, '操作码和地址码。', 3, '2018-06-16', 192, 16, 208, -1, 10),
(717, '1.地址总线是用来向主存储器或者输入\\输出设备传送待输入/输出的数据的地址。\n2.数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 192, 17, 208, -1, 0),
(718, '1.程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。\n2.程序：是按照工作步骤事先编排好的、具有特殊功能的指令序列。\n3.关系：程序基本上是由程序设计语言写出来的。', 1, '2018-06-16', 192, 18, 208, -1, -1),
(719, '操作码和地址码，地址码中又分为操作数地址，操作结果的存储地址和下一条指令的地址', 10, '2018-06-16', 193, 16, 209, -1, 10),
(720, '地址总线是控制器传送地址编码给存储器的通路.。\n  数据总线是CPU与内存或其他器件之间的数据传送的通路。', -1, '2018-06-16', 193, 17, 209, -1, 0),
(721, '程序设计语言是用于书写计算机程序的语言。用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、有一个有限字母表上的字符构成的字符串的总体。\n 程序是按照工作步骤（算法）事先编排好的、具有特殊功能的指令序列。\n 程序设计语言是人类用于编排程序的工具，人类利用程序设计语言来编写程序，程序再根据所用程序设计语言种类来翻译成计算机可以直接执行的指令序列。', 8, '2018-06-16', 193, 18, 209, -1, -1),
(722, '指令包括操作码和操作数，操作码决定要完成的动作，操作数是指参加运算的数据及其所在的单元地址', 3, '2018-06-16', 194, 16, 210, -1, 5),
(723, '在计算机内部数据在数据总线上传递，每条传输线我们称之为1位，各个传输线按序排列，他们之间是并行关系，地址总线也一样，数据总线决定每次传输数据的大小，地址总线决定了CPU所能访问的最大内存空间大小。', -1, '2018-06-16', 194, 17, 210, -1, 0),
(724, '计算机程序是指为了得到某种结果而可以由计算机等具有信息处理能力的装置执行的代码化指令序列，或者可以被自动转换成代码化指令序列的符号化指令序列或者符号化语句序列，而程序语言是为了实现计算机程序功能的语言，包括语义和语法，大致可分为机器语言，汇编语言和高级语言', 10, '2018-06-16', 194, 18, 210, -1, -1),
(725, '（1）指令由操作码和地址码组成\n（2）操作码是表明本条指令要求计算机完成的操作；\n（3）地址码包括操作数地址，操作结果的存储地址，下一条指令的地址；\n（4）操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数；可能是内存地址，也可能是寄存器地址（寄存器名）\n操作结果的存储地址：操作数的操作结果保存在该地址中，以便下一次使用；可能是内存地址，也可能是寄存器地址；\n下一条指令的地址：一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC（存放下一条指令的地址寄存器）指出；仅当改变程序的运行顺序（转移，调用子程序）是时，下一条指令的地址才由转移类指令给出。', 7, '2018-06-16', 195, 16, 211, -1, 10),
(726, '数据总线是CPU与内存或其他器件之间的数据传送的通道。数据总线是数据线数量之和。 CPU通过地址总线来指定存储单元。地址总线是地址线数量之和。', -1, '2018-06-16', 195, 17, 211, -1, 0),
(727, '程序：按照工作步骤（算法）事先编写好的、具有特殊功能的指令序列。程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。编写程序需要以某种程序设计语言为工具。', 7, '2018-06-16', 195, 18, 211, -1, -1),
(728, '由操作码和地址码构成。操作码表明本条指令要计算机完成的操作。地址码包括操作数的地址、操作结果的地址以及下一条指令的地址。', 10, '2018-06-16', 196, 16, 212, -1, 10),
(729, '通过地址总线找到内存数据并对数据进行读写。数据总线用于在输入输出部件喝存储器和CPU中传递数据。', -1, '2018-06-16', 196, 17, 212, -1, 0),
(730, '程序设计语言：通过一种事先定义的语法，用于书写计算机程序的语言，用于表达和描述要加工的数据和求解问题的步骤和过程。程序：按照算法实现编好的，具有特殊功能的指令序列。程序设计语言是通过某一种语言，实现程序所要表达的算法。', 7, '2018-06-16', 196, 18, 212, -1, -1),
(731, '操作码加地址码', 0, '2018-06-16', 197, 16, 213, -1, 10),
(732, '地址总线是CPU向存储器传送地址的通道。数据总线是CPU和其他存储器之间传送数据的通道。', -1, '2018-06-16', 197, 17, 213, -1, 0),
(733, '程序设计语言是在计算机中描述人类逻辑思维的符号集，计算机能够直接或者间接读懂程序设计语言。程序是以某一种程序设计语言编写，可以直接或间接运行在计算机中的指令序列，是程序设计语言在实际运用中的具体表现。程序设计语言是具体，程序是抽象，两者是具体到抽象的关系。', 9, '2018-06-16', 197, 18, 213, -1, -1),
(734, '每条指令由操作码和地址码两部分构成，整条指令以二进制编码的形式存放在存储器中。其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 10, '2018-06-16', 198, 16, 214, -1, 10),
(735, '数据总线用于传送数据信息，它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问计算机内存组件的物理地址。地址总线决定了CPU所能访问的最大内存空间的大小。', -1, '2018-06-16', 198, 17, 214, -1, 0),
(736, '程序设计语言是用于书写计算机程序的语言。程序是按事先设计的功能和性能要求编制的指令序列。程序是用程序设计语言描述的。', 6, '2018-06-16', 198, 18, 214, -1, -1),
(737, '通常，一条指令的执行分为取指令阶段、分析及取数阶段和执行阶段三个过程，而地址总线和数据总线作用于取指令过程。', 0, '2018-06-16', 199, 16, 215, -1, 0),
(738, '（1）地址总线：CPU通过地址总线来指定存储单元，用来沟通这些的单元想要访问计算机内存组件/地方的物理地址。\n    （2）数据总线：数据总线用于传送数据信息，数据总线是双向三态形式的总线，它既可以把CPU的数据传送到存储器或输入输出接口等其他部件，也可以将其他部件的数据传送到CPU。', -1, '2018-06-16', 199, 17, 215, -1, 0),
(739, '（1）程序设计语言：用于书写计算机程序上的语言，用于表的和描述要加工的数据以及解决问题的步骤和过程。是根据预先定义的规则（语法），由有限字母表上的字符构成的字符串的总体。\n（2）程序：按事先设计的功能和性能要求编制额指令序列。\n（3）关系：程序是用程序设计语言描述的。', 0, '2018-06-16', 199, 18, 215, -1, -1),
(740, '由操作码和地址码构成', 3, '2018-06-16', 200, 16, 216, -1, 10),
(741, '地址总线：用于向主存储器或者输入/输出设备传送待输入/输出的数据的地址的路线。\n数据总线：用于在输入/输出设备和主存储器、主存储器和CPU之间传送数据的线路。', -1, '2018-06-16', 200, 17, 216, -1, 0),
(742, '程序设计语言：由特定字符与一定规则组成的字符串的总体，这些字符串被编译器转换为二进制，从而被电脑识别，完成特定功能。\n程序：按照事先设计的功能和性能要求编制的指令序列。\n关系：通过程序设计语言能够编写最终能被计算机识别的二进制代码，也就是由指令序列构成的程序。', 9, '2018-06-16', 200, 18, 216, -1, -1),
(743, '计算机中的指令由操作码和地址码组成。操作码是用来表明本条指令要求计算机完成的操作。地址码由操作数地址，操作结果的存储地址，下一条指令的地址构成。CPU根据操作数地址获得操作数，操作结果的储存地址用于储存操作数的操作结果，由程序计数器PC或者转移类指令给出下条指令的地址。', 10, '2018-06-16', 201, 16, 217, -1, 10),
(744, '地址总线用来向存储器或者输入/输出设备传送待输入/输出的数据的地址，数据总线用来在输入/输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 201, 17, 217, -1, 0),
(745, '程序设计语言是指用于书写计算机程序的语言，程序是按事先设计的功能和性能要求编制的指令序列，程序必须用程序语言来进行编写。', 5, '2018-06-16', 201, 18, 217, -1, -1),
(746, '通常，一条指令的执行分为取指令阶段、分析及取数阶段和执行阶段三个过程，而地址总线和数据总线作用于取指令过程。\n地址总线：将程序计数器PC中的内容通过地址总线送至内存地址寄存器。\n数据总线：将从内存中取出的指令送到指令寄存器中。', 3, '2018-06-16', 202, 16, 218, -1, 0),
(747, '地址总线属于一种电脑总线，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。\n数据总线用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 202, 17, 218, -1, 0),
(748, '程序设计语言的概念是根据预先定义的规则（语法）而写出的预定语句的集合；程序的概念是按事先设计的功能和性能要求编制的指令序列。而这些预定语句的集合组成了程序。程序设计语言是用于书写计算机程序的语言。', 0, '2018-06-16', 202, 18, 218, -1, -1),
(749, '由操作码和地址码构成，是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。', 10, '2018-06-16', 203, 16, 219, -1, 10),
(750, '地址总线：将程序计数器PC中的内容通过地址总线送至内存地址寄存器。\n数据总线：将从内存中取出的指令送到指令寄存器中。', -1, '2018-06-16', 203, 17, 219, -1, 0),
(751, '程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言是根据预先定义的规则（语法）而写出的预订语句集合，而这些集合组成了程序。', 0, '2018-06-16', 203, 18, 219, -1, -1),
(752, '操作码和操作数。', 10, '2018-06-16', 204, 16, 220, -1, 5),
(753, '地址总线：传送内存地址编码，给地址译码器的总线\n数据总线：访问传送数据，用于CPU与内存之间、输入/输出设备与内存之间的总线。', -1, '2018-06-16', 204, 17, 220, -1, 9),
(754, '程序：按事先设计的功能和性能要求编制的指令序列\n程序设计语言：用于编写计算机程序的语言\n关系：程序是由程序设计语言编写的指令序列', 10, '2018-06-16', 204, 18, 220, -1, -1),
(755, '是由0和1组成的二进制代码串构成的。', 10, '2018-06-16', 205, 16, 221, -1, 0),
(756, '地址总线是一种计算机总线，是由CPU或有DMA能力的单元，用来沟通这些单元想要访问计算机内存组件的物理地址。地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。\n数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 205, 17, 221, -1, 0),
(757, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n程序是按事先设计的功能和性能要求编制的指令序列。\n二者的关系是：用程序设计语言编写程序。', 4, '2018-06-16', 205, 18, 221, -1, -1),
(758, '指令由操作码和地址码构成。\n操作码：用来表明本条指令要求计算机完成的操作；\n地址码又由以下三项构成。\n操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址（即寄存器名）；\n操作结果的存储地址：将对操作数的操作结果保存在该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址；\n下一条指令的地址：一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC（存放下一条指令地址的寄存器）指出；仅当改变程序的运行顺序（转移、调用子程序）时，下条指令的地址才由转移类指令给出。', 6, '2018-06-16', 206, 16, 222, -1, 10),
(759, '数据总线：是CPU与内存或其他器件之间的数据传送的通道。地址总线：CPU与内存或其他器件之间来传送数据地址的通道', -1, '2018-06-16', 206, 17, 222, -1, 0),
(760, '程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言是根据预先定义的规则（语法）而写出的预订语句集合，而这些集合组成了程序。', 0, '2018-06-16', 206, 18, 222, -1, -1),
(761, '指令由操作码和操作数组成，操作码决定所进行的操作，操作数决定参与运算的数字及其所在的单元地址', 5, '2018-06-16', 207, 16, 223, -1, 5),
(762, '数据总线用来在输入输出设备和主储存器，主储存器和CPU之间传送数据。地址总线用于向主储存器或输入输出设备传送待输入输出的数据地址。', -1, '2018-06-16', 207, 17, 223, -1, 0),
(763, '程序设计语言是由有限字母表上的字符构成的字符串的总体，用于表达和描述要加工的数据以及求解问题的步骤和过程。程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言是用于书写计算机程序的语言。', 4, '2018-06-16', 207, 18, 223, -1, -1),
(764, '计算机中的指令是操作码和操作数构成的', 3, '2018-06-16', 208, 16, 224, -1, 5),
(765, '数据总线：是CPU与内存或其他器件之间的数据传送的通道。地址总线：CPU与内存或其他器件之间来传送数据地址的通道', -1, '2018-06-16', 208, 17, 224, -1, 0),
(766, '程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言是根据预先定义的规则（语法）而写出的预订语句集合，而这些集合组成了程序。', 0, '2018-06-16', 208, 18, 224, -1, -1),
(767, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。程序一定是先转化（编译或解释）成指令的序列，然后再被计算机执行。指令由一条操作码和地址码组成，操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址及运算结果所在的地址。', 8, '2018-06-16', 209, 16, 225, -1, 10),
(768, '地址总线是用来在设备之间传输数据地址的通道；数据总线是设备之间传输数据的通道。', -1, '2018-06-16', 209, 17, 225, -1, 0),
(769, '程序设计语言是用来设计程序的工具，程序是按事先设计的功能和性能要求编制的指令序列。程序由程序设计语言组成。', 9, '2018-06-16', 209, 18, 225, -1, -1),
(770, '计算机的指令由操作码和操作数构成，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 9, '2018-06-16', 210, 16, 226, -1, 5),
(771, '地址总线：传送CPU向存储器，输入输出设备发出的地址信息的总线。\n数据总线：CPU与存储器，CPU与输入输出设备之间传送数据信息的总线。', -1, '2018-06-16', 210, 17, 226, -1, 0),
(772, '程序：按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。\n 程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n 二者的关系：面对问题时，设计求解问题的方法和步骤——算法，并以某种程序设计语言为工具，编写对应于该算法的程序。', 6, '2018-06-16', 210, 18, 226, -1, -1),
(773, '指令包括操作码和地址码,操作码用来表明本条指令要求计算机完成的操作,地址码包括操作数地址,操作结果的存储地址与下一条指令的地址。', 10, '2018-06-16', 211, 16, 227, -1, 10),
(774, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问计算机内村组件或地方的物理地址；数据总线用于传送数据信息，数据总线是双向三态形式的总线，它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 211, 17, 227, -1, 0),
(775, '程序设计语言是用来书写计算机程序的语言，根据预先定义的规则而写出的预定语句的集合。程序是用某种程序设计语言编写，运行于某种目标结构的指令序列。程序由程序设计语言编写，程序设计语言包含的预定语句的集合组成了程序', 8, '2018-06-16', 211, 18, 227, -1, -1),
(776, '答：  指令是由操作码和操作数构成的能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。操作码决定要完成的操作，用来告诉CPU需要执行哪一条指令；操作数指参加运算的数据及其所在的单元地址，它规定了指令中进行数字运算的量。在计算机中，操作要求和操作数地址都由二进制表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。程序就是一系列按一定顺序排列的指令。', 10, '2018-06-16', 212, 16, 228, -1, 10),
(777, '数据总线是CPU或有DMA能力的单元，用来沟通这些单元想要访问计算机内存组件的物理地址，数据总线是CPU与内存或其他器件之间来传送数据地址的通道。', -1, '2018-06-16', 212, 17, 228, -1, 0),
(778, '程序设计语言指的是用于书写计算机程序的语言，程序是指一组指示计算机执行动作或做出判断的指令。关系：程序是通过程序设计语言设计出来的。', 10, '2018-06-16', 212, 18, 228, -1, -1),
(779, '由操作码和地址码构成。地址码又由操作数地址，操作结果存储地址，下一条指令地址组成。', 10, '2018-06-16', 213, 16, 229, -1, 10),
(780, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线是CPU与存储器、CPU与I/O接口设备之间传送数据信息(各种指令数据信息)的总线，这些信号通过数据总线往返于CPU与存储器、CPU与I/O接口设备之间，因此，数据总线上的信息是双向传输的。', -1, '2018-06-16', 213, 17, 229, -1, 0),
(781, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n程序：指令（操作）序列。按照工作步骤事先编排好的、具有特殊功能的指令序列。\n程序要通过程序设计语言来编写，要以某种程序设计语言为工具，给出这种语言下的程序。', 8, '2018-06-16', 213, 18, 229, -1, -1),
(782, '计算机中的指令由操作码和地址码构成。通常一条指令包括两方面内容：操作码和操作数。操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。一般计算机的功能把指令分为：算术运算指令；逻辑运算指令；数据传送指令；堆栈及堆栈操作指令；字符串处理指令；输入输出（I/O）指令等。', 5, '2018-06-16', 214, 16, 230, -1, 10),
(783, '地址总线：将程序计数器pc中的内容通过地址总线送至内存地址寄存器。数据总线：将从内存中取出的指令送到指令寄存器中。', -1, '2018-06-16', 214, 17, 230, -1, 0),
(784, '程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言是根据预先定义的规则（语法）而写出的预定语句集合，而这些集合组成了程序。', 0, '2018-06-16', 214, 18, 230, -1, -1),
(785, '计算机指令计算机指令就是指挥机器工作的指示和命令，程序就是一系列按一定顺序排列的指令，它由操作码和操作数构成。整条指令以二进制编码的形式存放在存储器中。\n操作码即操作要求，指计算机程序中所规定的要执行操作的那一部分指令或字段，用来告诉CPU需要执行哪一条指令。\n操作数指参加运算的数据及其所在的单元地址，是运算符作用于的实体，是表达式中的一个组成部分，它规定了指令中进行数字运算的量 。', 5, '2018-06-16', 215, 16, 231, -1, 5),
(786, '地址总线是用于传递地址的总线，数据总线是用于数据传送的总线。', -1, '2018-06-16', 215, 17, 231, -1, 0),
(787, '程序设计语言是用于书写计算机程序的语言，是按照某一规则写出的语句序列；程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言写出的语句集合组成了程序。', 0, '2018-06-16', 215, 18, 231, -1, -1),
(788, '计算机中指令由操作码和操作数构成。', 3, '2018-06-16', 216, 16, 232, -1, 5),
(789, '答：    地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问计算机内存组件或地方的物理地址，就是用来向主存储器或者输入、输出设备传送待输入、输出的数据的地址的。           数据总线也是一种计算机总线，是用来在输入、输出设备和主存储器，主存储器和CPU之间传输数据的。', -1, '2018-06-16', 216, 17, 232, -1, 0),
(790, '答：   程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则、由一个有限字母表上的字符构成的字符串的总体。  程序是功能和性能要求事先编写好的，具有特殊功能的指令序列。 在程序设计语言中，这些有特定的规则的字符串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义。', 10, '2018-06-16', 216, 18, 232, -1, -1),
(791, '是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。指令由操作码和地址码组成，其中地址码又由操作数地址、操作结果的存储地址和下一条指令的的地址组成。', 10, '2018-06-16', 217, 16, 233, -1, 10),
(792, '数据总线是cpu和内存等其他部件数据传输的通道。地址总线是cpu用于访问外部存储器地址的，专门传输地址的通道。', -1, '2018-06-16', 217, 17, 233, -1, 0),
(793, '程序设计语言是书写计算机程序的语言，程序是按事先设计的功能和性能要求编制的指令序列。通过程序设计语言可以写出程序，但它还要被转化成指令序列才能运行。', 4, '2018-06-16', 217, 18, 233, -1, -1),
(794, '由操作码和地址码两部分构成', 3, '2018-06-16', 218, 16, 234, -1, 10),
(795, '1.地址总线：传送内存地址编码给地址译码器；2.数据总线：访问传送数据，用于CPU与内存之间、输入/输出设备与内存之间。', -1, '2018-06-16', 218, 17, 234, -1, 9),
(796, '1.程序设计语言：程序设计语言是用来书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。（分为第一代机器语言，第二代汇编语言，第三代高级语言，第四代非过程化语言。）；2.程序：按照工作步骤（算法）事先编排好的、具有特殊功能的指令序列。3.两者关系：人们通过程序设计语言将算法实现为计算机能理解的机器语言（或经过编译器转换），进而实现程序。', 0, '2018-06-16', 218, 18, 234, -1, -1),
(797, '指令基本结构包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。\n在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 219, 16, 235, -1, 10),
(798, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线的宽度，随可寻址的内存组件大小而变，决定有多少的内存可以被访问。\n数据总线是双向三态形式的总线。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 219, 17, 235, -1, 0),
(799, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则、由一个有限字母表上的字符构成的字符串的总体。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，的总语义表示程序的含义。在计算机中，程序设计语言可划分为低级语言和高级语言两大类。\n程序是指一组指示计算机或其他具有信息处理能力装置执行动作或做出判断的指令，是指一组指示计算机执行动作或做出判断的指令，通常用某种程序设计语言编写，运行于某种目标体系结构上。\n程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。这些有特定的规则的字符串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义。', 9, '2018-06-16', 219, 18, 235, -1, -1),
(800, '由操作码和地址码组成。地址码由操作数地址、操作结果的存储地址、下一条指令的地址组成。', 10, '2018-06-16', 220, 16, 236, -1, 10),
(801, '地址总线是输出地址信号的单向总线，中央处理器CPU可直接寻址的空间大小。数据总线是为各部件之间提供数据传送的通路。', -1, '2018-06-16', 220, 17, 236, -1, 0),
(802, '程序是数据结构和算法的组合。程序设计语言是书写计算机程序的语言。包含一组记号和一组规则。由程序设计语言可以写成程序的代码', 5, '2018-06-16', 220, 18, 236, -1, -1),
(803, '指令由操作码和操作数构成。操作码决定要进行的操作，操作数指参加运算的数据及其所在的单元地址。', 8, '2018-06-16', 221, 16, 237, -1, 5),
(804, '地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。\n数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据.', -1, '2018-06-16', 221, 17, 237, -1, 0),
(805, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n程序是按事先设计的功能和性能要求编制的指令序列。\n关系：程序由程序设计语言书写。', 5, '2018-06-16', 221, 18, 237, -1, -1),
(806, '由操作码与操作数构成，操作码是指令，操作数是内存地址', 10, '2018-06-16', 222, 16, 238, -1, 5),
(807, '地址总线是由CPU或有DMA能力的单元，用来沟通这些单元想要存取电脑内存元件或者地方的实体地址，数据总线是CPU与内存或其他器件之间的数据传送的通道', -1, '2018-06-16', 222, 17, 238, -1, 0),
(808, '程序设计语言是用于书写计算机程序的语言，程序是按事先设计的功能和性能要求编制的指令序列，程序由程序设计语言编写', 7, '2018-06-16', 222, 18, 238, -1, -1),
(809, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 223, 16, 239, -1, 10),
(810, '数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据；\n地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。', -1, '2018-06-16', 223, 17, 239, -1, 0),
(811, '程序语言是用来定义计算机程序的形式语言。它是一种被标准化的交流技巧，用来向计算机发出指令。一种计算机语言让程序员能够准确地定义计算机所需要使用的数据，并精确地定义在不同情况下所应当采取的行动。\n程序：按事先设计的功能和性能要求编制的指令序列叫做程序。\n计算机语言是根据预先定义的规则而写出的预定语句的集合，这些集合组成了程序。', 5, '2018-06-16', 223, 18, 239, -1, -1),
(812, '操作码和操作数。操作码决定要完成的操作，操作数是参加运算的数据及其所在单元地址。', 7, '2018-06-16', 224, 16, 240, -1, 5),
(813, '数据总线是用来传送数据的， 是CPU与内存或其他器件之间的数据传送的通道。数据总线是数据线数量之和。\n地址总线是传送地址的，CPU是通过地址总线来指定存储单元的。地址总线是地址线数量之和。', -1, '2018-06-16', 224, 17, 240, -1, 0),
(814, '程序设计语言是一种预定规则写出的预定语句的集合，程序是一组计算机可以识别和执行的指令，每一条指令使计算机执行特定的操作。关系：所有的程序设计语言构成了程序。', 9, '2018-06-16', 224, 18, 240, -1, -1),
(815, '答：指令是指能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。指令由操作码和地址码组成。操作码是用来表明本条指令要求计算机完成的动作。地址码包括操作数地址、操作结果的存储地址、下一条指令的地址。操作码和地址码均是二进制数据。', 10, '2018-06-16', 225, 16, 241, -1, 10),
(816, 'CPU是通过地址总线来指定存储单元的，用来沟通这些单元想要访问的地址。数据总线是CPU与内存或其他器件之间的数据传送的通道，决定CPU单次能交换的信息数量。', -1, '2018-06-16', 225, 17, 241, -1, 0),
(817, '程序设计语言是根据预先定义的规则，由一个有限字母表上的字符构成的字符串的整体。程序是指一组指示计算机执行动作或做出判断的指令序列，通常由程序设计语言编写。程序设计语言是用于书写计算机程序的语言。程序是算法用某种程序设计语言的具体实现。', 10, '2018-06-16', 225, 18, 241, -1, -1),
(818, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 226, 16, 242, -1, 10),
(819, '地址总线是计算机存放地址与cpu控制器之间的通道，用来给cpu指向内存存储单元的，数据总线是数据通道是用来传递，保存数据的通道，是cpu与内存及其他部件的数据通道', -1, '2018-06-16', 226, 17, 242, -1, 0),
(820, '程序设计语言是根据预先定义的语言规则，由一个有限字母表上的字符组成的字符串的整体。  程序是指令的序列。', 9, '2018-06-16', 226, 18, 242, -1, -1),
(821, '由操作码和地址码构成', 3, '2018-06-16', 227, 16, 243, -1, 10),
(822, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件的物理地址。地址总线是地址线的数量之和，决定了CPU的最大内存空间。\n数据总线是CPU与内存或其他器件之间的数据传送的通道，它的宽度决定了CPU和外界的传送速度。数据总线是数据线的数量之和。', -1, '2018-06-16', 227, 17, 243, -1, 0),
(823, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程，是根据预先定义的规则（语法），由一个有限字母表上的字符构成的字符串的总体。程序是按事先设计的功能和性能要求编制的指令序列。程序是按照程序设计语言的规则和记号书写的。', 2, '2018-06-16', 227, 18, 243, -1, -1),
(824, '指令由地址吗和操作码构成，操作吗表明要执行的操作，地址吗表示要参加运算的操作数，操作数地址以及运算结果所在地址。', 10, '2018-06-16', 228, 16, 244, -1, 5),
(825, 'CPU通过地址总线指示存储单元，数据总线是CPU与存储器以及其他结构进行数据交互的通道。', -1, '2018-06-16', 228, 17, 244, -1, 0),
(826, '程序设计语言，是为了和计算机进行交互，具有语法规则和记号词汇的一种人造语言。程序是一个指令序列，计算机通过读取这些指令对数据进行操作。程序设计语言通过编译成为若干计算机可读的指令序列，由此进行操作。', 9, '2018-06-16', 228, 18, 244, -1, -1),
(827, '指令指能够被计算机硬件直接识别的、命令计算机进行基本操作的二进制代码串。而指令本身由操作码与地址码构成，操作码用来表明本指令要求计算机完成的操作，地址码分为操作数地址和操作结果的存储地址——CPU根据操作数地址取得所需的操作数，计算机对操作数的操作结果保存在操作结果的存储地址，以便再次使用。', 10, '2018-06-16', 229, 16, 245, -1, 10),
(828, '地址总线：地址总线用于传送地址信息。CPU通过地址总线指定内存单元。地址总线是传输CPU到存储器或其他设备的地址信息的单向传输通道。\n数据总线：数据总线用于传递数据信息。它是CPU与存储器或输入输出设备等其它部件的双向数据传送通道。', -1, '2018-06-16', 229, 17, 245, -1, 0),
(829, '程序设计语言：用于书写计算机程序的语言，用于描述要加工的数据以及求解问题的过程。是根据预先定义的语法、由某些有限字符组成的字符串的总体。\n程序：按事先设计的功能和性能要求编制的指令序列。\n两者的关系：人们以程序设计语言为工具来编写具有特定功能的程序。', 7, '2018-06-16', 229, 18, 245, -1, -1),
(830, '指令是由0和1组成的二进制代码串，由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 8, '2018-06-16', 230, 16, 246, -1, 10),
(831, '地址总线是系统总线的一种，用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。数据总线是系统总线的一种，用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 230, 17, 246, -1, 0),
(832, '（1）程序是指按事先设计的功能和性能要求编制的指令序列（2）程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合（3）这些集合组成了程序。', 0, '2018-06-16', 230, 18, 246, -1, -1),
(833, '由操作码和地址码组成，以二进制编码的形式存放在存储器中。', 6, '2018-06-16', 231, 16, 247, -1, 10),
(834, '地址总线 (Address Bus；又称：位址总线) 属于一种电脑总线 （一部份），是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。\n数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU', -1, '2018-06-16', 231, 17, 247, -1, 0),
(835, '程序设计语言是根据预先定义的语法规则而写出的的预定语句的集合。\n程序是由程序员编写的一组稳定的指令，存在硬盘上。\n语言的集合组成了程序。', 1, '2018-06-16', 231, 18, 247, -1, -1),
(836, '通常一条指令包括两方面的内容：操作码和操作数。操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。\n在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 232, 16, 248, -1, 10),
(837, '地址总线：用于传递地址的总线；数据总线：用于数据传送的总线。', -1, '2018-06-16', 232, 17, 248, -1, 0),
(838, '计算机语言是根据预先定义好的规则写出的预定语序的集合，这些集合组成了程序。程序是指令的序列。', 1, '2018-06-16', 232, 18, 248, -1, -1),
(839, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。由操作码和地址码构成，而地址码包含操作数、操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 233, 16, 249, -1, 10),
(840, '数据总线指CPU和存储器或其它器件间传输交换数据的通道，每条数据线传输一个二进制信息，即八条传输一个字节。地址总线是被CPU用来指定存储空间的，即进行寻址操作。一条地址线指定包含一位二进制信息的地址，所以地址线的数目决定了所能指定存储空间的大小。', -1, '2018-06-16', 233, 17, 249, -1, 0),
(841, '程序设计语言指面向人的程序设计工具，是可使人利用其中的语言设计构造出一定操作序列的工具，不能被计算机直接识别。程序设计语言通过编译解释转换为计算机可识别的指令序列，从而进行运算或操作。对应的程序是根据程序设计语言得到的，但两者面向对象不同。', 9, '2018-06-16', 233, 18, 249, -1, -1),
(842, '由操作码与操作数构成。操作码决定要完成的动作，操作数指出参加运算的数据及其所在的单元地址。', 5, '2018-06-16', 234, 16, 250, -1, 5),
(843, '地址总线：用来向主存储器或者输入（输出）设备传送待输入（输出）的数据的地址；数据总线：用来在输入（输出）设备和主存储器、主存储器和cpu之间传送数据。', -1, '2018-06-16', 234, 17, 250, -1, 0),
(844, '语言：根据预先定义的规则（语法），而写出的预定语句的集合。程序：按事先设计的功能和性能要求编制的指令叫做程序。关系：程序必须符合语言的语法。', 0, '2018-06-16', 234, 18, 250, -1, -1),
(845, '操作码，操作数地址，操作结果的存储地址，下一条指令的地址', 10, '2018-06-16', 235, 16, 251, -1, 5),
(846, '数据总线是CPU与内存或其他器件之间的数据传送的通道，地址总线是CPU用来指定存储单元的线路。', -1, '2018-06-16', 235, 17, 251, -1, 0),
(847, '程序是指令序列，是机器码，人类不好理解。程序设计语言是根据预先定义的规则（语法），由一个有限字母表上的字符，是人类可以看懂的语言。程序设计语言通过编译成为程序。', 3, '2018-06-16', 235, 18, 251, -1, -1),
(848, '指令是由0和1组成的二进制代码串，由操作码和地址码两部分构成。', 10, '2018-06-16', 236, 16, 252, -1, 10),
(849, '数据总线用于传送数据信息。数据总线是双向三态形式的总线，即他既可以把CPU的数据传送到存储器或I/O接口等其它部件，也可以将其它部件的数据传送到CPU。地址总线是专门用来传送地址的，由于地址只能从CPU传向外部存储器或I/O端口，所以地址总线总是单向三态的，这与数据总线不同。地址总线的位数决定了CPU可直接寻址的内存空间大小', -1, '2018-06-16', 236, 17, 252, -1, 0),
(850, '程序是按照事先设计的功能和性能要求编制的指令序列。程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 0, '2018-06-16', 236, 18, 252, -1, -1),
(851, '由操作码和地址码组成', 3, '2018-06-16', 237, 16, 253, -1, 10),
(852, '地址总线用来传送中央处理器想要访问的的计算机内存的物理地址；\n数据总线用来把数据传送给中央处理器，或者把中央处理器的数据传送给存储器和输入输出设备。', -1, '2018-06-16', 237, 17, 253, -1, 0),
(853, '程序设计语言用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的语法，由一个有限字母表上的字符构成的字符串的总体；程序是按照算法事先编排好 的、具有特殊功能的指令序列。程序设计语言是用来书写计算机程序的语言', 7, '2018-06-16', 237, 18, 253, -1, -1),
(854, '操作码和操作数', 10, '2018-06-16', 238, 16, 254, -1, 5),
(855, '地址总线：传送内存地址编码，给地址译码器。数据总线是双向三态的总线，用于CPU与内存之间，输入/输出设备与内存之间传递数据。', -1, '2018-06-16', 238, 17, 254, -1, 5),
(856, '程序设计语言是用于书写计算机程序的语言。程序是为了解决特定问题用计算机编写的命令序列的集合。程序设计语言是组成程序的基本单位，程序是用程序设计语言编写产生的。', 10, '2018-06-16', 238, 18, 254, -1, -1),
(857, '是由操作码和地址码，其中地址码包括操作数地址，操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 239, 16, 255, -1, 10),
(858, '地址总线是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。\n数据总线是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 239, 17, 255, -1, 0),
(859, '程序设计语言是用于书写计算机程序的语言。程序是按事先设计的功能和性能要求编制的指令序列。程序通过程序设计语言进行编写。', 7, '2018-06-16', 239, 18, 255, -1, -1),
(860, '由操作码和地址码构成', 3, '2018-06-16', 240, 16, 256, -1, 10),
(861, '地址总线是CPU用来指定存储单元的工具。\n数据总线是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 240, 17, 256, -1, 0),
(862, '程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则，由一个有限字母表上的字符构成的字符串的总体。\n程序是由程序设计语言为工具，构造出的解决特定问题的过程。', 4, '2018-06-16', 240, 18, 256, -1, -1),
(863, '由操作码和地址码组成，其中地址码包括操作数地址，操作结果的存储地址，下一条指令的地址', 10, '2018-06-16', 241, 16, 257, -1, 10),
(864, '数据总线用来在输入或输出设备和存储器，存储器和CPU之间传送数据。地址总线用来向存储器或者输入或输出设备传送待输入或输出的数据的地址', -1, '2018-06-16', 241, 17, 257, -1, 0),
(865, '程序设计语言用于书写计算机程序的语言。程序是指以某些程序设计语言编写，运行于某种目标结构体系上。关系：程序由程序设计语言编写。', 10, '2018-06-16', 241, 18, 257, -1, -1),
(866, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的、由‘0’，‘1’组成的二进制代码串。指令由操作码和地址码两部分构成。', 10, '2018-06-16', 242, 16, 258, -1, 10),
(867, '属于一种电脑总线 (一部份)，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取(读取/写入)电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 242, 17, 258, -1, 0),
(868, '程序设计语言是用于书写计算机程序的语言，程序是一个指令序列，运用于某种目标结构。程序设计语言是程序的基础和工具。', 10, '2018-06-16', 242, 18, 258, -1, -1),
(869, '指令由操作码和地址码构成，是由0和1组成的二进制代码串。其中地址码包括操作数地址、操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 243, 16, 259, -1, 10),
(870, '地址总线：用来向存储器或者输入/输出设备传送待输入/输出的数据的地址。\n数据总线：用来在输入/输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 243, 17, 259, -1, 0),
(871, '程序设计语言是根据预先定义的规则（语法）而写出的预定语句的集合。\n程序是按事先设计的功能和性能要求编制的指令序列叫程序。\n程序是指令序列，程序设计语言是按语法预先定义的语句的集合。程序设计语言经过编译，翻译成指令序列变成程序才可被计算机执行。', 9, '2018-06-16', 243, 18, 259, -1, -1),
(872, '由操作码和操作数构成。', 10, '2018-06-16', 244, 16, 260, -1, 5),
(873, '地址总线是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 244, 17, 260, -1, 0),
(874, '程序设计语言就是用于书写计算机程序的语言。程序就是按事先设计好的功能和性能要求编制的指令序列。程序是由程序设计语言编写，来解决一般性的问题。', 1, '2018-06-16', 244, 18, 260, -1, -1),
(875, '指令由操作码，操作数地址，操作结果的存储地址，下一条指令的地址构成。', 9, '2018-06-16', 245, 16, 261, -1, 5),
(876, '地址总线用来向存储器或者输入/输出设备传送待输入/输出的数据的地址。数据总线用来在输入/输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 245, 17, 261, -1, 0),
(877, '程序设计语言是指根据预先定义的规则而写出的预定语句的集合，这些集合组成了程序。程序是指按事先设计的功能和性能要求编制的指令序列。两者之间的关系：程序设计语言是编写程序的规则。', 0, '2018-06-16', 245, 18, 261, -1, -1),
(878, '指令由操作码和地址码构成。其中地址码包括操作数地址、操作结果的存储地址、下一条指令的地址。操作码和地址码均是二进制数据。', 10, '2018-06-16', 246, 16, 262, -1, 10),
(879, '地址总线是中央处理器CPU可直接寻址的空间的大小。地址总线是一种计算机总线，是CPU或由DMA能力的单元，用来沟通这些单元想要想要访问计算机内存组件的物理地址。\n数据总线用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到储存器或输入输出接口等其他部件，也可以将其他部件的数据传送到CPU。', -1, '2018-06-16', 246, 17, 262, -1, 0),
(880, '易于理解，便于输入指令对机器操作，机器接受语言按照一定的规则转化为机器语言。\n程序是按事先设计的功能和性能要求编制的指令序列。程序是在程序语言设计的基础上实现的，程序语言设计提供规则，程序可以重复编写，方便使用。', 0, '2018-06-16', 246, 18, 262, -1, -1),
(881, '指令是能够命令计算机进行某种基本操作的二进制代码串。由操作码和地址码构成，地址码由操作数地址，操作结果的存储地址和下一条指令的地址构成。', 9, '2018-06-16', 247, 16, 263, -1, 10),
(882, '地址总线是指向主存储器或者输入（输出）设备传送待输入（输出）的数据的地址的系统总线。数据总线是指用来在输入（输出）设备和主存储器、主存储器和CPU之间传送数据的系统总线。', -1, '2018-06-16', 247, 17, 263, -1, 0),
(883, '程序设计语言是指一组用来定义计算机程序的语法规则，是可以向计算机发出指令的一种算法描述。程序是指按事先设计的功能和性能要求编制的指令序列。程序设计语言用于书写计算机程序。', 6, '2018-06-16', 247, 18, 263, -1, -1),
(884, '一条指令包括两方面的内容：操作码和地址码，操作码决定要完成的操作，地址码指参加运算的数所在的单元地址', 3, '2018-06-16', 248, 16, 264, -1, 10),
(885, '数据总线：在I/O设备和主存，主存和CPU间传送数据的系统总线。\n    地址总线：向主存或者I/O设备传送待输入/输出的地址的系统总线。', -1, '2018-06-16', 248, 17, 264, -1, 0),
(886, '程序设计语言是定义计算机程序的形式语言。程序是由指令构成的集合。程序设定语言所组成的集合构成了程序。', 0, '2018-06-16', 248, 18, 264, -1, -1),
(887, '指令由操作码和地址码组成，其中操作码用来表明本条指令要求计算机完成的操作，地址码包括操作数地址、操作结果的储存地址和下一条指令的地址，它们都是二进制数据。', 10, '2018-06-16', 249, 16, 265, -1, 10),
(888, '数据总线是CPU与内存或其他器件之间的数据传送的通道。CPU通过地址总线来指定存储单元。', -1, '2018-06-16', 249, 17, 265, -1, 0),
(889, '程序设计语言用于书写计算机程序的语言。\n程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言是用来编写程序用的。', 5, '2018-06-16', 249, 18, 265, -1, -1),
(890, '每条指令由两部分构成：操作码和地址码。操作码用来表明本条指令要求计算机完成的操作。地址码由操作数地址，操作结果的存储地址，下一条指令的地址构成。\n 其中操作数地址是CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址。操作结果的存储地址用于保存对操作数的操作结果，以便再次使用；可能是内存地址，也可能是寄存器地址。下一条指令的地址是由程序计数器PC（存放下一条指令地址的寄存器）指出；仅当改变程序的运行顺序（转移、调用子程序）时，下条指令的地址才由转移类指令给出。', 8, '2018-06-16', 250, 16, 266, -1, 10),
(891, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取或写入）计算机内存组件/地方的物理地址。地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。地址总线用来指定在RAM之中储存的数据的地址。\n 数据总线，在CPU与RAM之间来回传送需要处理或是需要储存的数据。数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 250, 17, 266, -1, 0),
(892, '程序设计语言是指用于书写计算机程序的语言，一种被标准化的交流技巧，用来向计算机发出指令。\n 程序是按事先设计的功能和性能要求编制的指令序列。\n     程序由程序设计语言编写，用于指导编译设备或体系结构完成一定的操作步骤。程序设计语言是在程序设计的基础上去实现程序，向计算机发出指令，并促进程序员交流。', 9, '2018-06-16', 250, 18, 266, -1, -1),
(893, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 251, 16, 267, -1, 5),
(894, '地址总线是用来沟通CPU想要访问、读取或者写入计算机内存组件/地方的物理地址。\n数据总线是用来把CPU的数据传送到存储器或输入输出设备，或是将其它部件的数据传送到CPU的计算机总线。', -1, '2018-06-16', 251, 17, 267, -1, 0),
(895, '程序设计语言是用于书写计算机程序的语言，根据规则由记号构成的记号串的总体就是语言。\n程序是按事先设计的功能和性能要求编制的指令序列。\n关系：在程序设计语言中，这些记号串就是程序，即程序是由程序设计语言编写的。', 7, '2018-06-16', 251, 18, 267, -1, -1),
(896, '通常一条指令包括两方面的内容：一是指机器执行什么操作,即给出操作要求,二是指出操作数在存储器或通用寄存器组中的地址,即给出操作数的地址', 9, '2018-06-16', 252, 16, 268, -1, 0),
(897, '地址总线：（1）CPU是通过地址总线来指定存储单元的。  （2）地址总线决定了cpu所能访问的最大内存空间的大小。  （3）地址总线是地址线数量之和。  数据总线  ：（1） 是CPU与内存或其他器件之间的数据传送的通道。  （2）数据总线的宽度决定了CPU和外界的数据传送速度。（3）数据总线是数据线数量之和。', -1, '2018-06-16', 252, 17, 268, -1, 0),
(898, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。  程序：按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。  两者间的关系：程序设计语言是用来书写计算机程序的工具', 6, '2018-06-16', 252, 18, 268, -1, -1),
(899, '由操作码和地址码组成，地址码包括操作数地址、操作结果的存储地址、下一条指令的地址。是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。', 10, '2018-06-16', 253, 16, 269, -1, 10),
(900, '地址总线是用来向存储器或者输入输出设备传送待输入输出的数据的地址的通道。数据总线是用来在输入输出设备和存储器、存储器和CPU之间传送数据的通道。', -1, '2018-06-16', 253, 17, 269, -1, 0),
(901, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 程序是按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。程序由程序设计语言编写。用程序设计语言编写的程序叫做源程序，源程序经过编译和解释转化为机器可以执行的指令序列。', 7, '2018-06-16', 253, 18, 269, -1, -1),
(902, '通常一条指令包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 8, '2018-06-16', 254, 16, 270, -1, 5),
(903, '地址总线：地址总线属于一种电脑总线，连接了CPU和存储器，用来沟通这些单元想要读取或写入电脑内存地方的实体位址。\n 数据总线：数据总线DB用于传送数据信息。1.它既可以把CPU的数据传送到存储器，也可以将其它部件的数据传送到CPU。2.它可以从把输入设备的数据传入存储器，也可以把数据从存储器传入输出设备。', -1, '2018-06-16', 254, 17, 270, -1, 0),
(904, '程序设计语言的概念：程序设计语言是一种用来编写计算机程序的语言。它是人类世界与机器世界沟通的桥梁，简化了人们编写程序的麻烦。\n程序的概念：程序是由程序设计语言编写，经过编译和链接形成的。\n二者关系：程序是由程序设计语言编写的。程序设计语言的发明是为了编写程序。', 3, '2018-06-16', 254, 18, 270, -1, -1),
(905, '计算机指令是由操作码和地址码构成的。\n  操作码：用来表明本条指令要求计算机完成的操作。\n  地址码；包含操作数地址，操作结果存储地址，下一条指令地址。\n         操作数地址：CPU根据该地址取得所需的地址；可能直接给出操作数，可能是内存地址，也可能是寄存器地址（即寄存器名）。\n         操作结构的存储地址：将对操作数的操作结果保存该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址。\n         下一条指令地址：一般的，如果程序是顺序执行，则下一条指令的地  址由程序计数器PC（存放下一条指令地址的寄存器）指出；仅当改变程序的运行顺序（转移、调用子程序）时，下一条指令的地址才由转移类指令给出。', 0, '2018-06-16', 255, 16, 271, -1, 10),
(906, '地址总线（Address Bus）是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线的宽度，随可寻址的内存组件大小而变，决定有多少的内存可以被访问。 数据总线(DataBus)用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。数据总线的位数是微型计算机的一个重要指标，通常与微处理的字长相一致。', -1, '2018-06-16', 255, 17, 271, -1, 0),
(907, '程序是按事先设计的功能和性能要求编制的指令序列叫做程序。语言是指根据预先定义的规则而写出的预定语句的集合。程序设计语言是人与计算机之间传递信息的媒介，通过预先定义好的数字，字符，语法规则将程序设计语言中的语句与计算机可执行的指令建立映射关系，从而计算机可以将程序设计语言翻译成可以直接执行的指令也就是程序。   6、简述计算机中地址总线与数据总线的概念。', 5, '2018-06-16', 255, 18, 271, -1, -1),
(908, '指令由操作码和地址码组成。', 10, '2018-06-16', 256, 16, 272, -1, 10),
(909, '地址总线 (Address Bus；又称：位址总线) 属于一种电脑总线 （一部份），是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。数据总线的位数是微型计算机的一个重要指标，通常与微处理的字长相一致。', -1, '2018-06-16', 256, 17, 272, -1, 0),
(910, '程序是思想，语音是实现思想的工具', 0, '2018-06-16', 256, 18, 272, -1, -1),
(911, '通常一条指令基本结构包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 257, 16, 273, -1, 5),
(912, '地址总线：CPU用来指定存储单元的工具。 数据总线：是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 257, 17, 273, -1, 0),
(913, '程序：按照工作步骤事先编好的、具有特殊功能的指令序列。 程序语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义和规则、由一个有限字母表上的字符构成的字符串的总体。 关系：程序语言是表达和描述程序的工具。', 5, '2018-06-16', 257, 18, 273, -1, -1),
(914, '指令由操作码和地址码构成。操作码用来表示本条命令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址，以及运算结果所在的地址。', 6, '2018-06-16', 258, 16, 274, -1, 10),
(915, '数据总线是双向三态形式的总线  ，即他既可以  把  CPU  的数据传送到存储器或  I  ／  O  接口等其它部件，也可以将其它部件的数据  传送到  CPU  。  数据总线的位数是微型计算机的一个重要指标，通常与微处理的字  长相一致。地址总线属于一种电脑总线 （一部份），是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。', -1, '2018-06-16', 258, 17, 274, -1, 0),
(916, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律，但不涉及这些记号的特定含义，也不涉及使用者。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义，但不涉及使用者。计算机程序或者软件程序（通常简称程序）是指一组指示计算机执行动作或做出判断的指令，通常用某种程序设计语言编写，运行于某种目标体系结构上。程序的设计需要使用程序语言，两者都是人为创造的，程序语言的出现为程序的编写提供了便利。', 8, '2018-06-16', 258, 18, 274, -1, -1),
(917, '由操作码和地址码构成', 3, '2018-06-16', 259, 16, 275, -1, 10),
(918, '数据总线（传输数据的通路）\n  （1） 是CPU与内存或其他器件之间的数据传送的通道。\n  （2）数据总线的宽度决定了CPU和外界的数据传送速度。\n  （3）每条传输线一次只能传输1位二进制数据。eg: 8根数据线一次可传送一个8位二进制数据(即一个字节)。\n  （4）数据总线是数据线数量之和。\n  （5）数据总线可单向可双向。\n地址总线（传输所选地址的通路）\n  （1）CPU是通过地址总线来指定存储单元的。\n  （2）地址总线决定了cpu所能访问的最大内存空间的大小。eg: 10根地址线能访问的最大的内存为1024位二进制数据(1B)\n  （3）地址总线是地址线数量之和。\n  （4）地址总线一般是单向的。', -1, '2018-06-16', 259, 17, 275, -1, 0);
INSERT INTO `operate_useranswerlog` (`id`, `answer`, `score`, `add_time`, `paper_log_id`, `paper_id`, `user_id`, `mscore`, `score2`) VALUES
(919, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法），由一个有限字母表上的字符构成的字符串的总体。\n  程序：按照工作步骤（算法）事先编排好的、具有特殊功能的指令序列。\n  两者关系：程序是由程序设计语言来描述的。程序设计语言让程序符号化，语   言化，便于人们阅读和设计。人们可通过程序设计语言来描述一个程序，然后代码编译后形成指令串使得计算机可以读懂并运行程序。', 8, '2018-06-16', 259, 18, 275, -1, -1),
(920, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示本次运算的操作数或者操作数地址以及运算结果所在的地址。', 8, '2018-06-16', 260, 16, 276, -1, 10),
(921, '地址总线用来向存储器或者输入、输出设备传送待输入、输出的数据的地址，数据总线用来在输入、输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 260, 17, 276, -1, 0),
(922, '程序是按事先设计的功能和性能要求编制的指令的序列。程序设计语言是用于书写计算机程序的语言，是根据预先定义的规则、语法而写出的预定语句的集合，这些集合组成了程序。程序由程序设计语言组成。', 0, '2018-06-16', 260, 18, 276, -1, -1),
(923, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的答：操作数或者操作地址以及运算结果所在的地址。', 5, '2018-06-16', 261, 16, 277, -1, 10),
(924, '地址总线 属于一种电脑总线 ，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 261, 17, 277, -1, 0),
(925, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言；计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上；两者之间的关系为：程序员依靠程序语言将机器语言变得容易编写，依靠程序语言来编写程序', 6, '2018-06-16', 261, 18, 277, -1, -1),
(926, '指令是能够被计算机硬件直接识别的、命令计算机命令计算机进行某种基本操作的、由‘0’和‘1’组成的二进制代码串。指令由操作码和操作数两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数的地址以及运算结果的所在的地址。', 10, '2018-06-16', 262, 16, 278, -1, 10),
(927, '数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据；地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址', -1, '2018-06-16', 262, 17, 278, -1, 0),
(928, '程序设计语言是用于书写计算机程序的语言。', 4, '2018-06-16', 262, 18, 278, -1, -1),
(929, '答：一条计算机指令的基本结构包括两方面的内容：操作码和地址码。操作码用来表示操作的性质，地址码用来表示操作数所在存储器中的位置。其中地址码包括：操作数地址、操作结果的存储地址和下一条指令的地址。操作码和地址码均是二进制数据，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 263, 16, 279, -1, 10),
(930, '地址总线：用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线：既以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 263, 17, 279, -1, 0),
(931, '程序设计语言：用于书写计算机程序的语言。程序：是指一组指示计算机或其他具有消息处理能力装置每一步动作的指令 关系：程序通常用某种程序设计语言编写，运行于某种目标体系结构上。', 7, '2018-06-16', 263, 18, 279, -1, -1),
(932, '计算机的指令由操作码和操作数构成，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 264, 16, 280, -1, 10),
(933, '地址总线：传送内存地址编码，给地址译码器。\n数据总线：访问传送数据，用来在输入/输出设备和主存储器，主存储器和CPU之间传送数据。', -1, '2018-06-16', 264, 17, 280, -1, 9),
(934, '程序设计语言，是一组用来定义计算机程序的语法规则。它是一种被标准化的交流技巧，用来向计算机发出指令。\n程序：是按事先设计的功能和性能要求编制的指令序列。\n关系：程序通常用程序设计语言编写，程序设计语言是写程序的一种工具。', 10, '2018-06-16', 264, 18, 280, -1, -1),
(935, '指令由操作码和地址码两部分构成', 10, '2018-06-16', 265, 16, 281, -1, 10),
(936, '答：数据总线决定每次传输数据的大小，地址总线决定了CPU所能访问的最大内存空间的大小。', -1, '2018-06-16', 265, 17, 281, -1, 0),
(937, '答：按事先设计的功能和性能要求编制的指令序列叫做程序。\n程序语言是根据预先定义的规则（语法）而写出的预定语句的集合。\n这些集合组成了程序。', 0, '2018-06-16', 265, 18, 281, -1, -1),
(938, '操作码和操作数。', 10, '2018-06-16', 266, 16, 282, -1, 5),
(939, '地址总线是用来向主存储器或者输入/输出设备传送待输入/输出的数据的总线。\n数据总线是用来在输入输出设备与主存储器、主存储器与CPU之间传送数据的总线。', -1, '2018-06-16', 266, 17, 282, -1, 0),
(940, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。\n程序是一系列指令序列。', 1, '2018-06-16', 266, 18, 282, -1, -1),
(941, '通常一条指令由操作码和操作数构成', 10, '2018-06-16', 267, 16, 283, -1, 5),
(942, '答：地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件的物理地址。CPU是通过地址总线来指定存储单元的。\n  数据总线是CPU与存储器、CPU与I/O接口设备之间传送数据信息(各种指令数据信息)的通道。', -1, '2018-06-16', 267, 17, 283, -1, 0),
(943, '答：程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n  程序：按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。\n  两者之间的关系：程序设计语言用于书写计算机程序，是一组用来定义计算机程序的语法规则。', 4, '2018-06-16', 267, 18, 283, -1, -1),
(944, '由操作码和地址码构成，操作码决定要完成的操作，地址码指参加运算的数据，结果，下一条指令所在的单元地址。', 6, '2018-06-16', 268, 16, 284, -1, 10),
(945, '程序设计语言是指根据预先定义的规则而写出的预定语句的集合。程序是按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言是人与计算机之间传递信息的媒介，通过预先定义好的数字，字符，语法规则将程序设计语言中的语句与计算机可执行的指令建立映射关系i，从而计算机可以将程序设计语言翻译成可以直接执行的指令也就是程序。', -1, '2018-06-16', 268, 17, 284, -1, 0),
(946, '程序设计语言是指根据预先定义的规则而写出的预定语句的集合。程序是按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言是人与计算机之间传递信息的媒介，通过预先定义好的数字，字符，语法规则将程序设计语言中的语句与计算机可执行的指令建立映射关系i，从而计算机可以将程序设计语言翻译成可以直接执行的指令也就是程序。', 7, '2018-06-16', 268, 18, 284, -1, -1),
(947, '指令由操作码和地址码构成。', 10, '2018-06-16', 269, 16, 285, -1, 10),
(948, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据地址。传送内存地址编码，给地址编译码。\n数据总线：用来在输入/输出设备和主存储器，主存储器和CPU之间传送数据。', -1, '2018-06-16', 269, 17, 285, -1, 5),
(949, '程序设计语言：是一组用来定义计算机程序的语法规则。人们编制程序所使用的计算机语言。\n程序：按事先设计的功能和性能要求编制的指令序列。\n用程序设计语言编写程序。', 7, '2018-06-16', 269, 18, 285, -1, -1),
(950, '操作码+地址码', 3, '2018-06-16', 270, 16, 286, -1, 10),
(951, '地址总线：传送内存地址编码，给地址译码器。\n数据总线：访问传送数据，用于CPU与内存之间、输入\\输出设备与内存之间。', -1, '2018-06-16', 270, 17, 286, -1, 9),
(952, '程序设计语言用于书写计算机程序的语言。程序是存储在外存储器、静态的为实现特定目标或解决特定问题而用计算机语言编写的命令序列的集合。程序设计语言用于书写计算机程序的语言。', 3, '2018-06-16', 270, 18, 286, -1, -1),
(953, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作地址以及运算结果所在的地址。', 7, '2018-06-16', 271, 16, 287, -1, 10),
(954, '地址总线：向主存储器或输入输出设备传送待输入输出的数据地址\n数据总线：用来在输入输出设备和主存储器、主存储器和cpu之间传送数据', -1, '2018-06-16', 271, 17, 287, -1, 0),
(955, '程序设计语言是根据预先定义的规则写出的预定语句的集合，程序是基于机器语言运行为了解决某一问题而编写的有限指令序列。用程序设计语言写代码可以编程程序。', 4, '2018-06-16', 271, 18, 287, -1, -1),
(956, '指令是能够被计算机硬件直接识别的、命令计算机进行某种操作的、由‘0’和‘1’组成的二进制代码。指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 10, '2018-06-16', 272, 16, 288, -1, 10),
(957, '地址总线是控制器传送地址编码给存储器的通路。数据总线是CPU与内存或其他器件之间的数据传送的通路。', -1, '2018-06-16', 272, 17, 288, -1, 0),
(958, '程序设计语言是用于书写程序的语言，程序是按事先设计的功能和性能要求编制的指令序列。人类用程序语言编写程序，程序被程序员输入后，会经过运算被翻译成这些指令的序列。', 7, '2018-06-16', 272, 18, 288, -1, -1),
(959, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示要参加本次运算的操作数或者操作数地址以及运算结果所在地址。', 7, '2018-06-16', 273, 16, 289, -1, 10),
(960, '地址总线是用于向存储器或者输入/输出装备传送输入/输出的数据的地址的一种总线。\n数据总线是用于输入/输出设备和存储器、存储器和CPU之间传送数据的一种总线。', -1, '2018-06-16', 273, 17, 289, -1, 0),
(961, '程序设计语言用于书写计算机程序的语言，是根据预先定义的规则而写出的预定语句的集合，这些集合构成了程序。而程序是按照实现设计的功能和性能要求编制的指令序列。程序由程序设计语言书写。', 0, '2018-06-16', 273, 18, 289, -1, -1),
(962, '由操作码和地址码构成，操作码用来表明本条指令要求计算机完成的操作，地址码为参加运算的数据所在的单元地址。', 5, '2018-06-16', 274, 16, 290, -1, 10),
(963, '数据总线是CPU与内存或其他器件之间的数据传送的通道，其宽度决定了CPU和外界的数据传送速度。\n而地址总线用于传送地址，其位数决定了cpu可寻址的内存空间大小', -1, '2018-06-16', 274, 17, 290, -1, 0),
(964, '按事先设计的功能和性能要求编制的指令序列叫做程序。\n程序语言是根据预先定义的规则（语法）而写出的预定语句的集合。这些集合组成了程序。', 0, '2018-06-16', 274, 18, 290, -1, -1),
(965, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 275, 16, 291, -1, 5),
(966, '数据总线决定每次传输数据的大小，地址总线决定了CPU所能访问的最大内存空间的大小。', -1, '2018-06-16', 275, 17, 291, -1, 0),
(967, '按事先设计的功能和性能要求编制的指令序列叫做程序\n程序设计语言，是一组用来定义计算机程序的语法规则。它是一种被标准化的交流技巧，用来向计算机发出指令。一种计算机语言让程序员能够准确地定义计算机所需要使用的数据，并精确地定义在不同情况下所应当采取的行动。\n程序由程序设计语言按照一定的语法规则组成', 8, '2018-06-16', 275, 18, 291, -1, -1),
(968, '操作数和操作码', 10, '2018-06-16', 276, 16, 292, -1, 5),
(969, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址\n数据总线用来在输入输出设备和主存储器、主存储器和CPU之间传送数据', -1, '2018-06-16', 276, 17, 292, -1, 0),
(970, '按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言是用于书写计算机程序的语言。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。计算机语言是根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。', 3, '2018-06-16', 276, 18, 292, -1, -1),
(971, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 277, 16, 293, -1, 10),
(972, '地址总线：传送内存地址编码给地址译码器，地址总线是地址线数量之和，决定了CPU所能访问的最大内存空间的大小。\n数据总线：访问传送数据，用于CPU与内存之间、输入\\输出设备与内存之间。数据总线是数据线数量之和，数据总线的宽度决定了CPU和外界的数据传送速度。', -1, '2018-06-16', 277, 17, 293, -1, 9),
(973, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。\n程序：按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。\n关系：算法是程序设计的前提，它包含方法和步骤；程序是实现算法中的思想的过程；程序设计语言把算法转化为计算机认识的语言。', 7, '2018-06-16', 277, 18, 293, -1, -1),
(974, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的、由0和1组成的二进制代码串。由操作码和地址码构成。', 10, '2018-06-16', 278, 16, 294, -1, 10),
(975, '数据总线：在CPU与存储器之间来回传送需要处理或是需要储存的数据。\n地址总线：用来指定在存储器之中储存的数据的地址。', -1, '2018-06-16', 278, 17, 294, -1, 0),
(976, '程序设计语言通常编程语言，是一种用来定义计算机程序的语法规则，是一种标准化的交流技巧，程序员用它来向计算机发出指令。 \n计算机程序是指为了得到某种结果而可以由计算机等具有信息处理能力的装置执行的代码化指令序列，或者可以被自动转换成代码化指令序列的符号化指令序列或者符号化语句序列。\n两者关系 程序员根据自己的想法设计计算机的程序，然而就如同讲一门语言一样，交流就必须有一种规范化标准化的表达方式，程序设计语言便是程序员与计算机交流，程序员彼此之间交流的标准。程序员通过程序设计语言向计算机发出指令，定义计算机工作所需使用数据，并定义计算机的行为', 10, '2018-06-16', 278, 18, 294, -1, -1),
(977, '指令由操作码和地址码构成。其中操作码决定了计算机所要完成的动作，而地址码指参加运算的数据及运算结果的存储地址', 0, '2018-06-16', 279, 16, 295, -1, 10),
(978, '地址总线是由CPU 或有直接内存存取能力的单元，用来沟通这些单元想要读取或写入电脑内存元件/地方的实体位址。\n数据总线是用于传送数据信息的既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU的双向三态形式的总线', -1, '2018-06-16', 279, 17, 295, -1, 0),
(979, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。程序是按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。程序员使用程序设计语言来设计程序。', 7, '2018-06-16', 279, 18, 295, -1, -1),
(980, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 280, 16, 296, -1, 10),
(981, '地址总线：用来向存储器或者输入输出设备传送待输入输出的数据的地址\n数据总线：用来在输入输出设备和存储器、存储器和CPU之间传送数据', -1, '2018-06-16', 280, 17, 296, -1, 0),
(982, '程序设计语言：用于书写计算机程序的语言。\n程序：按事先设计的功能和性能要求编制的指令序列。\n关系：计算机语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。', 2, '2018-06-16', 280, 18, 296, -1, -1),
(983, '是由操作码和地址码构成的。操作码决定要完成的操作，地址码指参加运算的数据，结果，下一条指令所在的单元地址。', 6, '2018-06-16', 281, 16, 297, -1, 10),
(984, '地址总线：传送内存地址编码，给地址译码器。\n数据总线：访问传送数据，用于CPU与内存之间、输入\\输出设备与内存之间。', -1, '2018-06-16', 281, 17, 297, -1, 9),
(985, '程序设计语言是一组用来定义计算机程序的语法规则。它是一种被标准化的交流技巧，用来向计算机发出指令。计算机程序，是指为了得到某种结果而可以由计算机等具有信息处理能力的装置执行的代码化指令序列，或者可以被自动转换成代码化指令序列的符号化指令序列或者符号化语句序列。计算机语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。', 9, '2018-06-16', 281, 18, 297, -1, -1),
(986, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的、由‘0’、‘1’组成的二进制代码串。它由操作码和地址码两部分组成，操作码表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址', 10, '2018-06-16', 282, 16, 298, -1, 10),
(987, '数据总线\n\n（1） 是CPU与内存或其他器件之间的数据传送的通道。\n\n（2）数据总线的宽度决定了CPU和外界的数据传送速度。\n\n（3）每条传输线一次只能传输1位二进制数据。eg: 8根数据线一次可传送一个8位二进制数据(即一个字节)。\n\n（4）数据总线是数据线数量之和。\n地址总线\n\n（1）CPU是通过地址总线来指定存储单元的。\n\n（2）地址总线决定了cpu所能访问的最大内存空间的大小。eg: 10根地址线能访问的最大的内存为1024位二进制数据(1B)\n\n（3）地址总线是地址线数量之和。', -1, '2018-06-16', 282, 17, 298, -1, 0),
(988, '程序设计语言是一种用来定义计算机程序的语法规则，是一种标准化的交流技巧，程序员用它来向计算机发出指令。\n为了得到某种结果而可以由计算机等具有信息处理能力的装置执行的代码化指令序列，或者可以被自动转换成代码化指令序列的符号化指令序列或者符号化语句序列。\n程序设计语言是编写程序时，程序员与计算机交流时所用到的语言。', 10, '2018-06-16', 282, 18, 298, -1, -1),
(989, '操作码和地址码', 3, '2018-06-16', 283, 16, 299, -1, 10),
(990, '总线是指计算机组件之间规范化的交换数据的方式。地址总线是指定内存中存储数据的地址。数据总线是CPU和内存之间来回传送需要处理或需要储存的数据。', -1, '2018-06-16', 283, 17, 299, -1, 0),
(991, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。\n按事先设计的功能和性能要求编制的指令序列叫做程序。', 0, '2018-06-16', 283, 18, 299, -1, -1),
(992, '指令由操作码和地址码构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址', 7, '2018-06-16', 284, 16, 300, -1, 10),
(993, '地址总线用来向主存储器或输入/输出设备传送待输入/输出的数据的地址。\n数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 284, 17, 300, -1, 0),
(994, '程序设计语言是用来编写计算机程序的语言，用于描述解决问题的步骤，是根据语法，由字符串构成的整体。\n程序是按照工作步骤事先编排好的，具有特殊功能的指令序列。\n用程序设计语言来编写程序。', 6, '2018-06-16', 284, 18, 300, -1, -1),
(995, '指令由操作码和地址码构成，操作码用来表明本指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 9, '2018-06-16', 285, 16, 301, -1, 10),
(996, '地址总线是控制器传送地址编码给存储器的通路，数据总线是CPU与内存或其他器件之间的数据传送的通路。', -1, '2018-06-16', 285, 17, 301, -1, 0),
(997, '5. 计算机程序设计语言是用于书写计算机程序的语言，是根据预先定义的规则而写出的预定语句的集合。程序是由程序员编写的一系列稳定的指令，是按事先设计的功能和性能要求编制的指令序列。计算机程序用程序设计语言编写，而程序设计语言的编辑器和编译器本身就是程序。', 0, '2018-06-16', 285, 18, 301, -1, -1),
(998, '通常一条指令基本结构包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 286, 16, 302, -1, 10),
(999, '6. 数据总线用于在输入输出设备和主储存器以及主储存器和CPU之间传送数据，地址总线用于向主储存器或者输入输出设备传送待输入输出数据的地址', -1, '2018-06-16', 286, 17, 302, -1, 0),
(1000, '程序设计语言：根据预先定义的规则写出的预定语句\n程序：按事先设计的功能和性能要求编制的指令序列\n程序设计语言的集合组成了程序', 1, '2018-06-16', 286, 18, 302, -1, -1),
(1001, '指令由操作码和地址码组成，操作码用来表明本条指令要求计算机完成的操作，地址码由操作数地址，操作结果的存储地址，下一条指令的地址组成。', 10, '2018-06-16', 287, 16, 303, -1, 10),
(1002, '地址总线：由CPU 或有DMA 能力的单元\n数据总线：数据总线是双向三态形式的总线', -1, '2018-06-16', 287, 17, 303, -1, 0),
(1003, '程序设计语言是书写计算机程序的语言，根据预先定义的规则而写出的预定语句的集合，这些集合组成了程序，程序是按事先设计的功能和性能要求编制的指令序列', 0, '2018-06-16', 287, 18, 303, -1, -1),
(1004, '有能够被计算机硬件直接识别、命令计算机进行某种基本操作的、由‘0’‘1’组成的二进制代码', 10, '2018-06-16', 288, 16, 304, -1, 0),
(1005, '地址总线用来向主存储器或者输入或输出设备传送待输入或输出的数据的地址，数据总线用来在输入或输出设备和主存储器、主存储器和CPU之间传送数据', -1, '2018-06-16', 288, 17, 304, -1, 0),
(1006, '程序是按事先设计的功能和性能要求编制的指令序列的集合。程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。', 0, '2018-06-16', 288, 18, 304, -1, -1),
(1007, '指令是由操作码和地址码构成，两者均是二进制数据。操作码用来表明本条指令要求计算机完成的操作；地址码由操作数地址、操作结果的存储地址、下一条指令的地址构成，用来存储地址。指令是由程序转化（编译或解释）的。', 10, '2018-06-16', 289, 16, 305, -1, 10),
(1008, '数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据；地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。', -1, '2018-06-16', 289, 17, 305, -1, 0),
(1009, '程序设计语言即用于书写计算机程序的语言。程序是指一组指示计算机执行动作或做出判断的指令，程序=数据结构+算法。\n程序通常用某种程序设计语言编写，运行于某种目标体系结构上。', 10, '2018-06-16', 289, 18, 305, -1, -1),
(1010, '指令由操作码和地址码两部分构成。', 10, '2018-06-16', 290, 16, 306, -1, 10),
(1011, '地址总线：传送内存地址编码，给地址译码器。\n数据总线：访问传送数据，用于CPU 与内存之间、输入\\输出设备与内存之间。', -1, '2018-06-16', 290, 17, 306, -1, 9),
(1012, '程序设计语言就是一组用来定义设计计算机程序的语法规则，用来向计算机发出指令。一种计算机语言让程序员能够准确地定义计算机所需要使用的数据，并让计算机能够在不同情况下所应当采取的行动。 \n程序是按事先设计的功能和性能要求编制的指令序列，是一组指示计算机每一步动作的指令，通常用某种程序设计语言编写，运行于某种目标体系结构上。\n程序由程序设计语言编写，程序设计语言是定义程序的语法规则。', 10, '2018-06-16', 290, 18, 306, -1, -1),
(1013, '指令由操作码和地址码两部分构成。', 10, '2018-06-16', 291, 16, 307, -1, 10),
(1014, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问计算机内存组件的物理地址，地址总线是用来帮助CPU指定存储单元的。\n数据总线是CPU与存储器、CPU与I/O接口设备之间传送数据信息的总线，这些信号通过数据总线往返于CPU与存储器、CPU与I/O接口设备之间。其实数据总线就是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 291, 17, 307, -1, 0),
(1015, '程序设计语言是指能让计算机执行某种操作的指令，程序是指按事先设计的功能和性能要求编制的指令序列；程序是程序设计语言的组合', 10, '2018-06-16', 291, 18, 307, -1, -1),
(1016, '指令是能够被计算机直接识别的、命令计算机进行某种基本操作的、由0和1组成的二进制代码块。由操作码和地址码两部分构成。', 10, '2018-06-16', 292, 16, 308, -1, 10),
(1017, '地址总线：传送内存地址编码，给地址编译码；数据总线：访问传送数据，由于CPU与内存之间，输入或输出设备与内存之间', -1, '2018-06-16', 292, 17, 308, -1, 9),
(1018, '程序设计语言用于书写计算机程序的语言，程序是按事先设计的功能和性能要求编制的指令序列。程序是由程序设计语言表达的。', 1, '2018-06-16', 292, 18, 308, -1, -1),
(1019, '由操作码和地址码构成。', 3, '2018-06-16', 293, 16, 309, -1, 10),
(1020, '6.地址总线是输出地址信号的单向总线，既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU的双态三向总线。', -1, '2018-06-16', 293, 17, 309, -1, 0),
(1021, '程序设计语言是程序员用来编写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言架起了机器世界与现实世界的桥梁，使得编写程序更为方便。', 0, '2018-06-16', 293, 18, 309, -1, -1),
(1022, '由操作位数和操作码构成', 0, '2018-06-16', 294, 16, 310, -1, 5),
(1023, '地址总线是用来向主存储器或输入/输出设备传送待输入/输出的数据地址的系统总线。数据总线是用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的系统总线。', -1, '2018-06-16', 294, 17, 310, -1, 0),
(1024, '程序设计语言：根据预先定义的规则（语法）而写出的预定语句的集合。程序：按事先设计的功能和性能要求编制的指令序列叫做程序。二者的关系：程序设计语言组成了程序。', 2, '2018-06-16', 294, 18, 310, -1, -1),
(1025, '操作码和操作数', 10, '2018-06-16', 295, 16, 311, -1, 5),
(1026, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一种系统总线；数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的一种系统总线。', -1, '2018-06-16', 295, 17, 311, -1, 0),
(1027, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n；程序是按照算法事先编排好的、具有特殊功能的指令序列。程序由程序设计语言写成，并遵循程序设计语言的规则和指令，能实现对应的操作。', 7, '2018-06-16', 295, 18, 311, -1, -1),
(1028, '操作码和操作数', 10, '2018-06-16', 296, 16, 312, -1, 5),
(1029, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 296, 17, 312, -1, 0),
(1030, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。程序：按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。关系：程序设计语言组成了程序。', 6, '2018-06-16', 296, 18, 312, -1, -1),
(1031, '由操作码和地址码组成 操作码表示指令要求计算机完成的工作 地址码表示参加本次运算的操作数或操作数地址及运算结果所在的地址', 8, '2018-06-16', 297, 16, 313, -1, 10),
(1032, '地址总线：用来向存储器或者输入/输出设备传送待输入/输出的数据的地址。 数据总线：是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 297, 17, 313, -1, 0),
(1033, '程序语言是用于书写代码的工具，程序由数据结构和算法构成。程序由程序语言构成', 10, '2018-06-16', 297, 18, 313, -1, -1),
(1034, '通常一条计算机指令由操作码和地址码组成。 操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址及运算结果所在的地址。', 10, '2018-06-16', 298, 16, 314, -1, 10),
(1035, '地址总线传输内存地址编码。数据总线：传输数据', -1, '2018-06-16', 298, 17, 314, -1, 0),
(1036, '程序设计语言有很多种 像c  c＋＋ 程序是由程序语言编出来的指令集合，用来执行功能', 5, '2018-06-16', 298, 18, 314, -1, -1),
(1037, '由操作码和地址码组成。地址码又包括操作数地址，操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 299, 16, 315, -1, 10),
(1038, '地址总线是cpu用来指定存储单元，而数据总线是cpy用来传输数据', -1, '2018-06-16', 299, 17, 315, -1, 0),
(1039, '程序设计语言是一组用来定义计算机程序的语法规则，用来向计算机发出指令；程序是指为了得到某种结果而可以由计算机等具有信息处理能力的装置执行的代码化指令序列，或者可以被自动转换成代码化指令序列的符号化指令序列或者符号化语句序列。程序设计语言用来编写程序。', 10, '2018-06-16', 299, 18, 315, -1, -1),
(1040, '通常一条指令 基本结构 包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 8, '2018-06-16', 300, 16, 316, -1, 5),
(1041, '地址总线：传送内存地址编码，给地址译码器。 \n数据总线：访问传送数据，用于CPU与内存之间、输入/输出设备与内存之间。', -1, '2018-06-16', 300, 17, 316, -1, 9),
(1042, '程序设计语言是用于书写计算机程序的语言。程序是指以某种程序设计语言编写的，运行于某种目标体系上的一个指令序列。程序是由程序设计语言编写的，故程序设计语言是程序的基础。', 10, '2018-06-16', 300, 18, 316, -1, -1),
(1043, '由操作码和地址码两部分组成。', 3, '2018-06-16', 301, 16, 317, -1, 10),
(1044, '地址总线是一种计算机总线，是CPU用来沟通想要访问（读取/写入）计算机内存组件/地方的物理地址。CPU用地址总线来指定存储器单元。\n数据总线用于在CPU和内存或外设之间传送数据信息，是CPU与内存或外设之间的数据传送通道。', -1, '2018-06-16', 301, 17, 317, -1, 0),
(1045, '程序设计语言是指用于书写计算机程序的语言。程序是指以某种程序设计语言编写，运行于某种目标体系上的一个指令序列。 程序是由程序设计语言编写的，故程序设计语言是程序的基础。', 10, '2018-06-16', 301, 18, 317, -1, -1),
(1046, '一条指令包括两方面内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 302, 16, 318, -1, 10),
(1047, '数据总线：专门用来在CPU和内存或外设之间传送数据的导线的集合。数据总线是CPU与内存或外设之间的数据传送的通道。', -1, '2018-06-16', 302, 17, 318, -1, 0),
(1048, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。\n根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。\n程序是按照工作步骤事先编排好的、具有特殊功能的指令序列。程序由程序设计语言编写。', 6, '2018-06-16', 302, 18, 318, -1, -1),
(1049, '指令由操作码和地址码构成，操作码负责要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作地址以及运算结果所在的地址。', 4, '2018-06-16', 303, 16, 319, -1, 10),
(1050, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，\n用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线用于传送数据信息', -1, '2018-06-16', 303, 17, 319, -1, 0),
(1051, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。而计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上。', 2, '2018-06-16', 303, 18, 319, -1, -1),
(1052, '指令是由操作码和地址码两部分构成，其中操作码用来表明本指令要求计算机完成的操作，地址码表示参加本次运算的操作数地址以及运算结果所在的地址。', 8, '2018-06-16', 304, 16, 320, -1, 10),
(1053, '地址总线属于一种电脑总线，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 304, 17, 320, -1, 0),
(1054, '程序设计语言是用于书写计算机程序的语言。\n按事先设计的功能和性能要求编制的指定序列叫做程序。\n程序由程序设计语言表达。', 0, '2018-06-16', 304, 18, 320, -1, -1),
(1055, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。由操作码、地址码构成。地址码包括操作数地址、操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 305, 16, 321, -1, 10),
(1056, '地址总线是CPU用来存储指定单元的。\n数据总线是CPU和其他器件之间的数据传输通道。', -1, '2018-06-16', 305, 17, 321, -1, 0),
(1057, '程序设计语言是用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 1, '2018-06-16', 305, 18, 321, -1, -1),
(1058, '操作码、地址码', 3, '2018-06-16', 306, 16, 322, -1, 10),
(1059, '地址总线属于一种计算机总线，是由CPU或有DMA能力的单元，用来沟通这些单元想要存取（读取/写入）计算机内存元件/地方的实体位址。数据总线是把CPU的数据传送到存储器或输入输出接口等其它部件，或将其它部件的数据传送到CPU的计算机总线。', -1, '2018-06-16', 306, 17, 322, -1, 0),
(1060, '程序设计语言是根据预先定义的语法而写出的预定预计的集合，这些集合组成了程序。程序是由程序设计语言写出的。', 0, '2018-06-16', 306, 18, 322, -1, -1),
(1061, '指令是指能够被被计算机硬件识别的命令计、机进行某种基本操作的二进制代码串，其由操作吗和地址码组成，二者都是二进制数据。', 8, '2018-06-16', 307, 16, 323, -1, 5),
(1062, '地址总线是一种计算机总线，用来沟通CPU单元想要访问计算机内存组件的地址。数据总线用来传送数据信息。', -1, '2018-06-16', 307, 17, 323, -1, 0),
(1063, '程序设计语言，是用于书写计算机程序的语言。\n程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言的集合组成了程序。', 5, '2018-06-16', 307, 18, 323, -1, -1),
(1064, '一条指令由操作码和地址码组成。操作码表示要求计算机进行的操作，地址码表示操作数地址与运算结果的地址', 10, '2018-06-16', 308, 16, 324, -1, 10),
(1065, '地址总线 CPU通过地址总线来指定存储单元，地址总线决定了CPU所能访问的最大内存空间的大小\n数据总线 是CPU与内存或者其他器件之间的数据传送的通道，它的宽度决定着CPU和外界的数据传送速度', -1, '2018-06-16', 308, 17, 324, -1, 0),
(1066, '程序设计语言是用来定义计算机程序的形式语言。程序是按事先设计的功能和性能要求编制的指令序列。\n用程序设计语言可以写出程序，写出的记号串经过编译就是程序。', 2, '2018-06-16', 308, 18, 324, -1, -1),
(1067, '指令由操作码和地址码组成。一条指令包括两种信息即操作码和地址码，操作码用来表示该指令所要完成的操作（如加、减、乘、除、数据传送等），地址码用来描述该指令的操作对象，它或者直接给出操作数，或者指出操作数的存储器地址或寄存器地址。', 8, '2018-06-16', 309, 16, 325, -1, 10),
(1068, '地址总线总是单向，由中央处理器向存储器发送地址。\n数据总线可双向传输，传输数据（操作数、运算、结果），从输入设备到存储器，从存储器到输出设备，主存储器与中央处理器之间（主存储器到控制部件、运算部件与存储器之间），主存储器与辅存储器之间。', -1, '2018-06-16', 309, 17, 325, -1, 0),
(1069, '程序设计语言是根据预先定义的规则（语法）而写出的预定语句的集合。程序是按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言用来书写程序。', 1, '2018-06-16', 309, 18, 325, -1, -1),
(1070, '指令由操作码和地址码组成。其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 310, 16, 326, -1, 10),
(1071, '地址总线是用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一种系统总线；数据总线是用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的一种系统总线。', -1, '2018-06-16', 310, 17, 326, -1, 0),
(1072, '程序是按事先设计的功能和性能要求编制的指令序列\n程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及要求解决的步骤和过程。\n程序的编写是以程序设计语言为工具编写的，程序设计语言为程序员提供了和计算机沟通的一个桥梁，让编写计算机程序更加简单', 4, '2018-06-16', 310, 18, 326, -1, -1),
(1073, '计算机的指令是能够被计算机硬件直接识别的，命令计算机进行某种基本操作，由0和1构成的二进制代码串。指令由操作码和地址码两部分构成。', 10, '2018-06-16', 311, 16, 327, -1, 10),
(1074, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址\n数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据', -1, '2018-06-16', 311, 17, 327, -1, 0),
(1075, '程序设计语言是用于编写计算机程序的语言。程序是用程序语言编写，运行于某种体系上的指令序列。程序语言是程序的基础。', 10, '2018-06-16', 311, 18, 327, -1, -1),
(1076, '操作码和地址码', 3, '2018-06-16', 312, 16, 328, -1, 10),
(1077, '地址总线是专门用来单向从cpu传送地址到内存或外设的导线的集合。地址总线是专门用来在cpu与内存与外设间传输数据的导线的集合。', -1, '2018-06-16', 312, 17, 328, -1, 0),
(1078, '程序设计语言是用于书写计算机程序的语言，是一组用来定义计算机程序的语法规则。\n程序是指以某种程序设计语言编写的，按事先设计的功能和性能要求编制的指令序列。\n   关系： 程序设计语言是一套语法规则，而程序就是在这套规则下编写的特定的指令序列。', 8, '2018-06-16', 312, 18, 328, -1, -1),
(1079, '一般由操作码和地址码所构成，操作码指计算机程序中所规定的要执行操作的那一部分指令或字段(通常用代码表示)。地址码指操作数地址和操作数结果的存储地址。', 9, '2018-06-16', 313, 16, 329, -1, 10),
(1080, '地址总线和数据总线都属于系统总线，系统总线是指计算机组件间规范化的交换数据的方式。数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据；地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。', -1, '2018-06-16', 313, 17, 329, -1, 0),
(1081, '程序设计语言是用于书写计算机程序的语言。程序是指以某些程序设计语言编写，运行于某种目标结构体系之上的指令序列。由于计算机无法直接和人进行交流，因此想操控计算机为人类完成一些工作必须用特定的语言编写一套计算机能读懂的操作，这就是程序，程序由程序设计语言编写。', 9, '2018-06-16', 313, 18, 329, -1, -1),
(1082, '地址码（操作数地址，操作结果储存地址和下一条指令的地址）和操作码', 10, '2018-06-16', 314, 16, 330, -1, 10),
(1083, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址；数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 314, 17, 330, -1, 0),
(1084, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律，但不涉及这些记号的特定含义，也不涉及使用者。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义，但不涉及使用者。按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言是一种工具，使用程序设计语言来设计语言从而达到设计出所需要的程序的目的。', 9, '2018-06-16', 314, 18, 330, -1, -1),
(1085, '指令由操作码和地址码构成，操作码表明要求计算机完成的操作，地址码给出参与本次运算的操作数和运算结果所在地址。', 6, '2018-06-16', 315, 16, 331, -1, 10),
(1086, '地址总线用来向储存器或者输入/输出设备传送待输入/输出的数据的地址。数据总线用来在输入/输出设备和存储器，存储器和cpu之间传送数据。', -1, '2018-06-16', 315, 17, 331, -1, 0),
(1087, '程序设计语言就是书写计算机程序的语言，而程序就是编写程序计算语言的具有一定规律的符号。', 5, '2018-06-16', 315, 18, 331, -1, -1),
(1088, '指令是指能够被计算机硬件直接识别的、命令计算机进行某种基本操作的、由‘0’和‘1’组成的二进制代码串。由操作码和地址码两部分构成。其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及计算结果所在的地址。', 8, '2018-06-16', 316, 16, 332, -1, 10),
(1089, '地址总线是cpu或有DMA能力单元，数据总线用于传递数据信息', -1, '2018-06-16', 316, 17, 332, -1, 0),
(1090, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n程序：按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。\n程序设计语言是用于编排程序的工具，利用程序设计语言来编写程序，程序再根据所用程序设计语言种类来翻译成计算机可以直接执行的指令序列。进而执行各种程序。', 9, '2018-06-16', 316, 18, 332, -1, -1),
(1091, '指令由操作码和地址码两部分构成，操作码表示该指令应执行的操作，地址码表示指令中操作数及其地址以及运算结果所在地址', 10, '2018-06-16', 317, 16, 333, -1, 10),
(1092, '地址总线是一种计算机总线，是控制器传送地址编码给存储器的总线。\n数据总线是用于传送数据信息，沟通CPU与内存或者其他器件的总线。', -1, '2018-06-16', 317, 17, 333, -1, 0),
(1093, '程序设计语言是依据一定语法规则写出的预定语句的集合，程序是指令序列。用程序语言写出的代码可以编译为程序', 10, '2018-06-16', 317, 18, 333, -1, -1),
(1094, '指令由操作码和地址码组成，指令也需要分配相应的空间。', 0, '2018-06-16', 318, 16, 334, -1, 10),
(1095, '地址总线在cpu和储存器、输入输出设备间传送待操作的数据的地址。\n 数据总线传送数据', -1, '2018-06-16', 318, 17, 334, -1, 0),
(1096, '程序设计语言是指根据预先定义的规则而写出的预定语句的集合，这些集合组成了程序。', 0, '2018-06-16', 318, 18, 334, -1, -1),
(1097, '一条指令通常由操作码和地址码组成。', 10, '2018-06-16', 319, 16, 335, -1, 10),
(1098, '地址总线传送内存地址编码给地址译码器；数据总线访问传送数据，用在CPU与内存之间、输入输出设备与内存之间。', -1, '2018-06-16', 319, 17, 335, -1, 9),
(1099, '程序是指按照事先设计的功能和性能要求编制的指令序列。\n程序设计语言是指根据预先定义的规则或语法而写出的预定语言的集合。\n关系：用程序设计语言来书写构成程序的指令，或者说程序由程序设计语言写成。', 1, '2018-06-16', 319, 18, 335, -1, -1),
(1100, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 320, 16, 336, -1, 5),
(1101, '地址总线是指用来向主存储器或者输入输出设备传送待输入输出数据的地址的一类系统总线。数据总线是用来在输入输出设备和主存储器、主存储器和CPU之前传送数据的一类系统总线。', -1, '2018-06-16', 320, 17, 336, -1, 0),
(1102, '程序设计语言就是人类使用的，有某种预先定义的语法，用于书写计算机程序的语言。程序是由这种语言写出的指令集合。程序是由程序设计语言编写表达的。', 8, '2018-06-16', 320, 18, 336, -1, -1),
(1103, '由操作码和操作数构成', 10, '2018-06-16', 321, 16, 337, -1, 5),
(1104, '数据总线是计算机中的CPU与存储器等部件间传输数据的通道，地址总线是CPU用来访问存储单元的通道。', -1, '2018-06-16', 321, 17, 337, -1, 0),
(1105, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。程序是指令序列，是按照工作步骤事先编排好的、具有特殊功能的指令序列。程序设计语言是由程序员编写，存入计算机后成为程序。', 8, '2018-06-16', 321, 18, 337, -1, -1),
(1106, '由操作码和地址码两部分构成.', 3, '2018-06-16', 322, 16, 338, -1, 10),
(1107, '地址总线是用来沟通存储单元想要存取地方的实体位址。数据总线是用来传送数据信息的，它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 322, 17, 338, -1, 0),
(1108, '程旭告诉计算机应如何完成一个计算任务，程序设计语言是指根据预先定义的规则而写出的预定语句的集合，这些集合组成了程序。', 0, '2018-06-16', 322, 18, 338, -1, -1),
(1109, '由操作码和地址码组成；操作码决定要完成的操作，地址码指参与运算的数据及其所在的单元地址', 0, '2018-06-16', 323, 16, 339, -1, 10),
(1110, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 323, 17, 339, -1, 0),
(1111, '程序设计语言：用于书写计算机程序的语言，用于表示和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。程序：按照工作步骤（算法）事先编排好的、具有特殊功能的指令序列。程序设计语言用于编写程序，程序要通过程序设计语言来解决问题。', 6, '2018-06-16', 323, 18, 339, -1, -1),
(1112, '一条指令基本包括两方面内容：操作码，操作数。操作码来决定需要完成的操作，操作数来决定参加运算的数据及其所在的单位地址。操作要求和操作数地址都有二进制来表示，故整条指令以二进制编码形式存放在存储器中。', 10, '2018-06-16', 324, 16, 340, -1, 5),
(1113, '地址总线：一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线：电脑内部数据传输以及处理的带宽。', -1, '2018-06-16', 324, 17, 340, -1, 0),
(1114, '程序：它是指为了得到某种结果而可以由计算机等具有信息处理能力的装置执行的代码化指令序列，或者可以被自动转换成代码化指令序列的符号化指令序列或者符号化语句序列。\n程序设计语言：用特定的词汇与语法编写程序的语言\n关系：使用程序设计语言编写程序', 10, '2018-06-16', 324, 18, 340, -1, -1),
(1115, '操作码，操作数', 10, '2018-06-16', 325, 16, 341, -1, 5),
(1116, '地址总线：是CPU或有DMA能力的单元，用来沟通这些单元想要访问(读取/写入)计算机内存组件/地方的物理地址。\n数据总线：用于传送数据信息', -1, '2018-06-16', 325, 17, 341, -1, 0),
(1117, '程序设计语言是根据预先定义的规则写出的预定语句的集合.程序是按功能和性能要求编写的指令序列.他们的关系为程序按程序设计语言规定的规则来编写。', 6, '2018-06-16', 325, 18, 341, -1, -1),
(1118, '①操作码+地址码\n②地址码又分为三项，a操作数地址 b操作结果的存储地址 c下一条指令的地址', 5, '2018-06-16', 326, 16, 342, -1, 10),
(1119, '数据总线是是CPU与内存或其的通道。地址总线是用来指定储存单元的通道。', -1, '2018-06-16', 326, 17, 342, -1, 0),
(1120, '程序设计语言是指预先定义的语法规则而写出的集合；\n程序是指按事先设计的功能和性能要求编制的指令序列；\n程序设计语言组成了程序。', 1, '2018-06-16', 326, 18, 342, -1, -1),
(1121, '指令有操作码和地址码，操作码有操作数地址，操作地址储存地址，下一指令地址。', 10, '2018-06-16', 327, 16, 343, -1, 10),
(1122, '地址总线属于一种电脑总线，是用来沟通有CPU或DMA能力的单元想要存取电脑内存元件的实体地址；\n数据总线是指用于单片机与外部存储器之间或单片机与外部I/O口之间进行数据传送的一组信号线。', -1, '2018-06-16', 327, 17, 343, -1, 0),
(1123, '程序语言是用于书写计算机程序的语言，有三个因素：语法，语义和语用。程序指以某些程序设计语言编写，运行与某种结构体系上。联系：语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 4, '2018-06-16', 327, 18, 343, -1, -1),
(1124, '由操作码和地址码两部分构成。', 3, '2018-06-16', 328, 16, 344, -1, 10),
(1125, '地址总线：是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。地址总线的宽度，随可寻址的内存元件大小而变，决定有多少的内存可以被存取。数据总线：在CPU与RAM之间来回传送需要处理或是需要储存的数据。数据总线的宽度决定了每次运输数据的大小。', -1, '2018-06-16', 328, 17, 344, -1, 0),
(1126, '程序设计语言是根据预先定义的语法而写出的预定语句的集合所组成的。程序是事先设计的功能和性能要求编制的指令序列。程序是由程序设计语言构成的。', 1, '2018-06-16', 328, 18, 344, -1, -1),
(1127, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址及运算结果所在的地址。', 7, '2018-06-16', 329, 16, 345, -1, 10),
(1128, '数据总线是CPU与内存或其他器件之间的数据传送的通道。CPU通过地址总线来指定存储单元的，决定了CPU能访问的最大内存。', -1, '2018-06-16', 329, 17, 345, -1, 0),
(1129, '①程序设计语言有语法语义，用来向计算机发出指令。\n②程序是计算机要执行的指令的集合，可以满足我们要求的性质与功能。\n③程序是由程序设计语言表达的,运行一个程序，就是不断读取由程序设计语言书写的指令的过程。', 10, '2018-06-16', 329, 18, 345, -1, -1),
(1130, '指令由二进制的地址码和操作码构成。操作码用来表明本条指令要求计算机完成的操作。地址码包括：1、操作数地址：可能是操作数，可能是内存地址，也可能是寄存器地址（即寄存器名）；2、操作结果的存储地址：可能是内存地址，也可能是寄存器地址；3、下一条指令的地址：如果程序是顺序执行，则下一条指令的地址由程序计数器PC指出；仅当改变程序的运行顺序时，下条指令的地址才由转移类指令给出。', 6, '2018-06-16', 330, 16, 346, -1, 10),
(1131, '数据总线传数据，地址总线传数据地址，具体有①数据总线在输入输出设备和存储器、存储器和CPU之间传送数据②地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址，给地址译码器。', -1, '2018-06-16', 330, 17, 346, -1, 0),
(1132, '设计语言是用来设计程序的语言，程序是储存在主存中的一系列代码。程序是由人通过程序设计语言创建的。', 2, '2018-06-16', 330, 18, 346, -1, -1),
(1133, '指令是指能够被计算机硬件直接识别的，命令计算机进行某种操作的，由0和1组成的二进制代码串。指令由操作码和地址码两部分组成，其中操作码用来表示本条命令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 10, '2018-06-16', 331, 16, 347, -1, 10),
(1134, '地址总线用来想主储存器或者输入输出设备传送输入输出的数据的地址。数据总线向输入输出设备和主存辅存和cpu间传送数据', -1, '2018-06-16', 331, 17, 347, -1, 0),
(1135, '程序设计语言是指根据预先定义的规则、语法而写出的预定语句的集合。\n程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言组成了程序。', 0, '2018-06-16', 331, 18, 347, -1, -1),
(1136, '由操作码和地址码构成', 3, '2018-06-16', 332, 16, 348, -1, 10),
(1137, '地址总线是用于向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一类系统总线。\n数据总线是用于在输入/输出设备和主存储器、主存储器和CPU之间传输数据的一类系统总线。', -1, '2018-06-16', 332, 17, 348, -1, 0),
(1138, '程序设计语言是根据预先定义的法则（语法）而写出的预定语句的合集，用于书写计算机程序。程序是按事先设计的功能和性能要求编制的指令序列。程序是用程序设计语言描述的。', 0, '2018-06-16', 332, 18, 348, -1, -1),
(1139, '指令是能被计算机硬件直接识别的，识别的，命令计算机进行某种操作的、由‘0’和‘1’组成的二进制代码串。指令包括\n1、 算术运算类\n2、 逻辑运算类\n3、 传送类\n4、 程序控制类\n5、 输入输出类\n6、 其他类', 8, '2018-06-16', 333, 16, 349, -1, 0),
(1140, '数据总线用于传送数据信息，它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。地址总线是一种计算机总线，用来向主存储器或者输入/输出设备传送待输入/输出数据的地址。', -1, '2018-06-16', 333, 17, 349, -1, 0),
(1141, '程序设计语言：用于书写计算机程序的语言。用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n程序：是事先设计的功能和性能要求编制的指令程序\n关系：程序是由按照某种程序设计语言的规则（语法）而写出的预定语句的集合', 4, '2018-06-16', 333, 18, 349, -1, -1),
(1142, '操作码 操作数地址 操作结果的存储地址 下一条指令的地址', 3, '2018-06-16', 334, 16, 350, -1, 5),
(1143, '地址总线：地址总线属于一种电脑总线，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。\n数据总线:用于传送数据信息。它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 334, 17, 350, -1, 0),
(1144, '程序设计语言用于书写计算机程序的语言。按事先设计的功能和性能要求编制的指令序列叫做程序。程序是由程序设计语言编写而成，所以程序设计语言是程序的基础。', 4, '2018-06-16', 334, 18, 350, -1, -1),
(1145, '指令是指能够被计算机硬件直接识别的、命令计算机进行某种基本操作的、由‘0’和‘1’组成的二进制代码串。由操作码和地址码两部分构成。其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及计算结果所在的地址。', 8, '2018-06-16', 335, 16, 351, -1, 10),
(1146, '地址总线是专门用来单向从CPU和内存或者外设之间传送数据的导线的集合，为CPU指定存储器单元。\n数据总线是专门用来在CPU和内存或者外设之间传送数据的导线的集合，是CPU和内存外设之间的数据通道。', -1, '2018-06-16', 335, 17, 351, -1, 0),
(1147, '程序设计语言：通过一种事先定义的语法，用于书写计算机程序的语言，用于表达和描述要加工的数据和求解问题的步骤和过程。程序：按实现设计的功能和性能要求编制的指令序列。程序设计语言是通过某一种语言，实现程序所要表达的算法。', 6, '2018-06-16', 335, 18, 351, -1, -1),
(1148, '由操作码和地址码构成，地址码中包括操作数地址、操作结果的存储地址、下一条指令的地址。', 10, '2018-06-16', 336, 16, 352, -1, 10),
(1149, '通过地址总线找到内存数据并对数据进行读写。数据总线用于在输入输出部件和存储器和CPU中传递数据。', -1, '2018-06-16', 336, 17, 352, -1, 0),
(1150, '程序设计语言是根据预先定义的规则（语法）而写出的预定语句的集合，而程序则是由程序员编写的一组存储在硬盘上的稳定的指令，程序设计语言的集合组成程序。', 0, '2018-06-16', 336, 18, 352, -1, -1),
(1151, '指令包括操作码和地址码。操作码用来表明指令要求计算机完成的操作。地址码指明操作对象的内容或所在的存储单元，包含操作数地址，操作结果的存储地址和下一条指令的地址。二者都用二进制编码储存。', 9, '2018-06-16', 337, 16, 353, -1, 10),
(1152, '数据总线用来在输入/输出设备和主存储器、主存储器和cpu之间传送数据；而地址总线用来向主存储器或输入/输出设备传送待输入/输出的数据的地址。', -1, '2018-06-16', 337, 17, 353, -1, 0),
(1153, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。程序：指令（操作）序列可以用多种程序设计语言实现一种程序', 8, '2018-06-16', 337, 18, 353, -1, -1),
(1154, '由操作码和地址码两部分构成，操作码表明要执行的操作，地址码表示参加运算的操作数。', 8, '2018-06-16', 338, 16, 354, -1, 10),
(1155, '数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据；地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。', -1, '2018-06-16', 338, 17, 354, -1, 0),
(1156, '程序是指按照事先设计的功能和性能要求编制的指令序列。 程序设计语言是指根据预先定义的规则或语法而写出的预定语言的集合。 关系：用程序设计语言来书写构成程序的指令，或者说程序由程序设计语言写成。', 3, '2018-06-16', 338, 18, 354, -1, -1),
(1157, '由操作码（要执行的创造）与地址码（下一条指令所在的地方）构成', 0, '2018-06-16', 339, 16, 355, -1, 10),
(1158, '地址总线是指用来向主存储器或者输入输出设备传送待输入输出数据的地址的一类系统总线。数据总线是用来在输入输出设备和主存储器、主存储器和CPU之前传送数据的一类系统总线。', -1, '2018-06-16', 339, 17, 355, -1, 0),
(1159, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程，是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。程序是按照工作步骤（算法）事先编排好的、具有特殊功能的指令序列。 程序是由程序设计语言所写的，由于机器语言是计算机唯一可以直接识别、理解的程序设计语言，因此只有将较高级的程序设计语言翻译成机器语言，计算机才能理解程序，高级的程序设计语言有助于更方便地书写程序。', 6, '2018-06-16', 339, 18, 355, -1, -1),
(1160, '操作码和地址码', 3, '2018-06-16', 340, 16, 356, -1, 10),
(1161, '地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址；数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 340, 17, 356, -1, 0),
(1162, '程序设计语言是一种具有语法规则定义计算机程序的语言，用于向计算机发出指令。 程序是一组由程序设计语言编写的指示计算机处理问题的指令集合。关系：程序设计语言是书写计算机程序的语言。', 10, '2018-06-16', 340, 18, 356, -1, -1),
(1163, '输入设备读取程序并转化为二进制代码串存在存储器里', 0, '2018-06-16', 341, 16, 357, -1, 0),
(1164, '地址总线：传送内存地址编码，给地址译码器。数据总线：访问传送数据，用于 CPU 与内存之间、输入\\输出设备与内存之间。', -1, '2018-06-16', 341, 17, 357, -1, 9),
(1165, '计算机语言是根据预先定义好的规则写出的预定语序结合，这些集合构成了程序，程序是指令的序列。', 2, '2018-06-16', 341, 18, 357, -1, -1),
(1166, '通常一条指令包括两方面的内容：[1]  操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 10, '2018-06-16', 342, 16, 358, -1, 5),
(1167, '用于传递地址的总线；用于数据传输的总线', -1, '2018-06-16', 342, 17, 358, -1, 0),
(1168, '语言是根据预先设定好的规则而写出的集合而这些集合组成了程序；程序是指令的序列', 0, '2018-06-16', 342, 18, 358, -1, -1),
(1169, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。这个二进制代码由操作码和地址码构成，而地址码由操作数地址，操作结果的存储地址和下一条指令的地址构成。', 9, '2018-06-16', 343, 16, 359, -1, 10),
(1170, '地址总线：用于传递地址的总线\n数据总线：用于传输数据的总线', -1, '2018-06-16', 343, 17, 359, -1, 0),
(1171, '使用汇编语言（程序设计语言）编写的程序，机器不能直接识别，要由一种程序将汇编语言翻译成机器语言，这种起翻译作用的程序叫汇编程序，', 0, '2018-06-16', 343, 18, 359, -1, -1),
(1172, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作地址以及运算结果所在的地址。', 7, '2018-06-16', 344, 16, 360, -1, 10),
(1173, '数据总线、地址总线，分别用来传输数据、数据地址', -1, '2018-06-16', 344, 17, 360, -1, 0),
(1174, '语言是和计算机沟通的桥梁，程序是下达的指令，语言决定了程序的展现形式，即使是相同的指令用不同语言写出的程序也是不同的', 2, '2018-06-16', 344, 18, 360, -1, -1),
(1175, '计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码', 9, '2018-06-16', 345, 16, 361, -1, 10),
(1176, '记录地址的线；记录数据的线', -1, '2018-06-16', 345, 17, 361, -1, 0),
(1177, '程序设计语言是用于书写计算机程序的语言。计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上。利用程序设计语言来编写程序。', 8, '2018-06-16', 345, 18, 361, -1, -1),
(1178, '操作码和地址码', 3, '2018-06-16', 346, 16, 362, -1, 10),
(1179, '地址总线是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。主板上的桥段控制器 数据从一个地方传到另一个地方控制其传输速率的称为数据总线。', -1, '2018-06-16', 346, 17, 362, -1, 0),
(1180, '程序设计语言是用于书写计算机程序的语言，基础是一组记号和一组规则，根据规则由记号构成的记号串的总体就是语言。\n程序是按事先设计的功能和性能要求编制的指令序列。\n关系：在程序设计语言中，这些记号串就是程序，即程序是由程序设计语言编写的。', 4, '2018-06-16', 346, 18, 362, -1, -1),
(1181, '计算机中的指令是一串二进制数，由操作码和操作数地址码构成。', 9, '2018-06-16', 347, 16, 363, -1, 10),
(1182, '地址总线是用来沟通CPU想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线是用来把CPU的数据传送到存储器或输入输出设备，或是将其它部件的数据传送到CPU的计算机总线。', -1, '2018-06-16', 347, 17, 363, -1, 0),
(1183, '按事先设计的功能和性能要求编制的指令序列叫做程序。\n程序语言是根据预先定义的规则（语法）而写出的预定语句的集合。\n这些集合组成了程序。', 0, '2018-06-16', 347, 18, 363, -1, -1),
(1184, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串，由操作码和地址码组成的。操作码是用来表明本条指令要求计算机完成的操作；地址码指操作数地址和操作结果的储存地址。操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址（即寄存器名）；操作结果的存储地址：将对操作数的操作结果保存在该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址。', 10, '2018-06-16', 348, 16, 364, -1, 10),
(1185, '数据总线决定每次传输数据的大小，地址总线决定了CPU所能访问的最大内存空间的大小。', -1, '2018-06-16', 348, 17, 364, -1, 0),
(1186, '程序设计语言用于书写计算机程序的语言。一个环节，内部嵌套着一系列复杂的列逻辑慎密的一个组件，如若一个地方出问题则会影响到整个主体。  用程序设计语言可以实现算法\n一种算法可以用不同的语言实现', 0, '2018-06-16', 348, 18, 364, -1, -1),
(1187, '通常一条指令包括两方面的内容：[1]  操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 10, '2018-06-16', 349, 16, 365, -1, 5),
(1188, '地址总线属于一种电脑总线一部份，是由CPU或有DMA能力   的单元，用来沟通这些单元想要存取电脑内存元件/地方的实体位址。', -1, '2018-06-16', 349, 17, 365, -1, 0),
(1189, '程序设计语言是根据预先定义的规则（语法）写出的预定语句的集合，程序是基于机器语言运行为了解决某一问题而编写的有限指令序列。\n用程序设计语言写出来的代码可以编译成程序。', 3, '2018-06-16', 349, 18, 365, -1, -1),
(1190, '指令由操作码和地址码组成，是能够被计算机硬件直接识别、命令计算机进行基本操作的二进制代码串。其中操作码用来表明该指令要求计算机完成的操作，地址码分为操作数地址和操作结果的储存地址。', 10, '2018-06-16', 350, 16, 366, -1, 10),
(1191, '地址总线：向主存储器或输入输出设备传送待输入输出的数据地址 \n数据总线：用来在输入输出设备和主存储器、主存储器和CPU之间传送数据', -1, '2018-06-16', 350, 17, 366, -1, 0),
(1192, '程序设计语言就是一系列用来编写程序的规则，让计算机了解程序要做什么。程序就是指令序列。程序开发人员用程序设计语言设计编写程序，程序是语言的具体实现。', 8, '2018-06-16', 350, 18, 366, -1, -1),
(1193, '计算机中的指令由操作码和操作数构成，操作码是指对计算机进行操作的指令；操作数是指在操作过程中运算的数据及其所在的单元地址。', 10, '2018-06-16', 351, 16, 367, -1, 5),
(1194, '地址总线是用来沟通电脑各个单元想要操作数据的位置。\n数据总线用来在各个单元之间传输数据。', -1, '2018-06-16', 351, 17, 367, -1, 0),
(1195, '程序设计语言是用于书写计算机程序的语言，指根据预先定义的规则（语法）而写出的预定语句的集合，包括机器语言，符号语言，高级语言等。程序是按事先设计的功能和性能要求编制的指令序列。两者的关系：程序是由程序设计语言组成的，程序中的每一个算法的步骤，对应着程序设计语言的一个或多个步骤。', 5, '2018-06-16', 351, 18, 367, -1, -1),
(1196, '操作码，地址码', 3, '2018-06-16', 352, 16, 368, -1, 10),
(1197, '地址总线是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址，也就是从CPU向外部储存器或I/O端口传送地址。\n     数据总线是用于传送数据信息的。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 352, 17, 368, -1, 0),
(1198, '程序设计语言是用于书写计算机程序的语言。计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上。利用程序设计语言来编写程序。', 8, '2018-06-16', 352, 18, 368, -1, -1),
(1199, '在计算机中，操作要求和操作数地址都由二进制数码表示D操作码和地址码  通常一条指令包括两方面的内容：操作码和操作数，操作码决定要完成的操作，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中，操作数指参加运算的数据及其所在的单元地址', 10, '2018-06-16', 353, 16, 369, -1, 10),
(1200, '地址总线是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。主板上的桥段控制器 数据从一个地方传到另一个地方控制其传输速率的称为数据总线。', -1, '2018-06-16', 353, 17, 369, -1, 0),
(1201, '程序设计语言指面向人的程序设计工具，是可使人利用其中的语言设计构造出一定操作序列的工具，不能被计算机直接识别。程序设计语言通过编译解释转换为计算机可识别的指令序列，从而进行运算或操作。对应的程序是根据程序设计语言得到的，但两者面向对象不同。', 9, '2018-06-16', 353, 18, 369, -1, -1),
(1202, '计算机中的指令是由操作码和地址码构成的，地址码包括操作数地址、操作结果的存储地址、下一条指令的地址。操作码和地址码都是二进制数据。', 10, '2018-06-16', 354, 16, 370, -1, 10),
(1203, '数据总线指CPU和存储器或其它器件间传输交换数据的通道，每条数据线传输一个二进制信息，即八条传输一个字节。地址总线是被CPU用来指定存储空间的，即进行寻址操作。一条地址线指定包含一位二进制信息的地址，所以地址线的数目决定了所能指定存储空间的大小。', -1, '2018-06-16', 354, 17, 370, -1, 0),
(1204, '程序设计语言是用于书写计算机程序的语言，程序是可以被计算机识别和运行的指令的集合。我们通过程序设计语言，能够便于人理解地书写计算机指令，通过计算机的编译链接等过程，形成计算机能够识别的信息运行，从而简化了人操作计算机的过程，程序设计语言沟通了人与计算机。', 10, '2018-06-16', 354, 18, 370, -1, -1),
(1205, '操作码和地址码组成了指令，操作码表明要执行的动作，地址码表示参加运算的参数，操作数地址以及运算结果所在地址', 0, '2018-06-16', 355, 16, 371, -1, 10),
(1206, '数据总线是用来在输出设备和存储器、存储器和CPU之间传送数据的通道。地址总线是用来向存储器或者输入输出设备传送待输入输出的数据的地址的线路。', -1, '2018-06-16', 355, 17, 371, -1, 0),
(1207, '程序设计语言是指用于书写计算机程序的语言。程序是指以某种程序设计语言编写，运行于某种目标体系上的一个指令序列。\n程序是由程序设计语言编写的，故程序设计语言是程序的基础。', 10, '2018-06-16', 355, 18, 371, -1, -1),
(1208, '是由操作码和地址码构成，地址码由操作数地址、操作结果的存储地址和下一条指令的地址构成。', 10, '2018-06-16', 356, 16, 372, -1, 10),
(1209, '地址总线：专门用来单向从CPU传送地址到内存或外设的导线的集合。CPU用地址总线来指定存储器单元。\n数据总线：专门用来在CPU和内存或外设之间传送数据的导线的集合。数据总线是CPU与内存或外设之间的数据传送的通道。', -1, '2018-06-16', 356, 17, 372, -1, 0),
(1210, '程序是为实现特定目标或解决特定问题而用计算机语言编写的命令序列的集合。为实现预期目的而进行操作的一系列语句和指令。程序设计往往以某种程序设计语言为工具，给出这种语言下的程序。程序设计过程应当包括分析、设计、编码、测试、排错等不同阶段。说白了，也就是按照人们的意愿以某种要求或规定科学的分析设计出一个有规律，有计划的步骤以便于去高效率的解决一个或多个问题。狭义上讲的是计算机程序，也即运用特定算法为一个计算的具体步骤，常用于计算、数据处理和自动推理）去科学的按照事先的意愿或未达到某种功能编写的一些代码。', 0, '2018-06-16', 356, 18, 372, -1, -1),
(1211, '操作码和地址码', 3, '2018-06-16', 357, 16, 373, -1, 10),
(1212, '计算机中有三类总线：地址总线、数据总线、控制总线。你应该知道，计算机中存放的全是二进制代码，运行时，都要存放在内存中，就有了“存在哪里”的概念，称为地址，地址总线中就传输地址，而数据总线负责传输数据，就是要运行的内容，这些“数据”不仅包括要运行的内容，还有操作指令。计算机运行时，就从地址总线的地址中提取数据，从数据总线中传输过来。', -1, '2018-06-16', 357, 17, 373, -1, 0),
(1213, '程序设计语言：程序设计语言，是一组用来定义计算机程序的语法规则。它是一种被标准化的交流技巧，用来向计算机发出指令。一种计算机语言让程序员能够准确地定义计算机所需要使用的数据，并精确地定义在不同情况下所应当采取的行动。程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。\n程序：在程序设计语言中，上述这些记号串就是程序。\n关系：程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律，但不涉及这些记号的特定含义，也不涉及使用者。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义，但不涉及使用者。按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言是一种工具，使用程序设计语言来设计语言从而达到设计出所需要的程序的目的。', 9, '2018-06-16', 357, 18, 373, -1, -1),
(1214, '指令是由操作码和地址码组成的', 10, '2018-06-16', 358, 16, 374, -1, 10),
(1215, '系统总线分成：数据总线、地址总线和控制总线三种，其中数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据；地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问的计算机内存组件/地方的物理地址。地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。', -1, '2018-06-16', 358, 17, 374, -1, 0),
(1216, '计算机语言是根据预先定义好的规则而写出的预定语序的集合，这些集合组成了程序，程序是指令的序列', 1, '2018-06-16', 358, 18, 374, -1, -1),
(1217, '计算机中的指令由操作码和地址码构成，操作码用来表明本条指令要求计算机完成的操作，地址码又包括操作数地址，操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 359, 16, 375, -1, 10),
(1218, '数据总线是用于传输的总线，地址总线是用于传递地址的总线', -1, '2018-06-16', 359, 17, 375, -1, 0),
(1219, '程序设计语言是按一定的规则以表示程序组织的字符序列；程序是按具体要求功能和性能编制的指令序列。所以两者关系为：程序由程序设计语言编写的，而按照程序设计语言规则组成的字符序列就是程序。', 10, '2018-06-16', 359, 18, 375, -1, -1),
(1220, '由操作码和地址码构成。', 3, '2018-06-16', 360, 16, 376, -1, 10),
(1221, '地址总线是计算机中央处理器用以访问计算机内存组件的物理地址。数据总线是CPU与输入、输出设备和存储器等组件相互传输数据的计算机总线。', -1, '2018-06-16', 360, 17, 376, -1, 0),
(1222, '程序设计语言是用于书写计算机程序的语言，是根据预先定义的规则，由一个有限字母表上的字符构成的字符串的总体。程序是按照工作步骤事先编排好的、具有特殊功能的指令序列。程序是根据程序设计语言表达的，程序设计语言是程序的基础。', 5, '2018-06-16', 360, 18, 376, -1, -1),
(1223, '操作码和地址码', 3, '2018-06-16', 361, 16, 377, -1, 10),
(1224, '地址总线是专门用来传送地址的通道。数据总线是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 361, 17, 377, -1, 0),
(1225, '程序设计语言时用于书写计算机程序的语言；程序是计算机语言根据预先定义好的规则而写出的预定语序的集合。', 0, '2018-06-16', 361, 18, 377, -1, -1),
(1226, '计算机中的指令是有0和1构成的二进制代码串，由地址码和操作码两部分组成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次的操作数或操作数地址以及运算结果所在的地址。', 10, '2018-06-16', 362, 16, 378, -1, 10),
(1227, '地址总线：用于传送地址的总线；数据总线：用于传送数据的总线。', -1, '2018-06-16', 362, 17, 378, -1, 0),
(1228, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。它是根据预先定义的语法规则，由一个有限字母表上的字符构成的字符串的总体。\n程序是按照工作步骤（算法）事先编排好的、具有特殊功能的指令序列。\n程序设计语言是人类用于编排程序的工具，人类利用程序设计语言来编写程序，程序再根据所用程序设计语言种类来翻译成计算机可以直接执行的指令序列。', 7, '2018-06-16', 362, 18, 378, -1, -1),
(1229, '指令包括操作码和地址吗，操作码表示需要执行的操作，地址码表示参加运算的操作数，操作数地址，运算结果地址。', 10, '2018-06-16', 363, 16, 379, -1, 10),
(1230, '地址总线是控制器向存储器中的地址译码器传送地址编码的通路；\n数据总线是在输入输出设备和存储器、存储器和CPU之间传送数据的通路。', -1, '2018-06-16', 363, 17, 379, -1, 0),
(1231, '程序设计语言是根据预先定义的规则而写出的预定语句的集合，按事先设计的功能和性能要求编制的指令序列叫做程序，程序是由程序设计语言写出来的。', 0, '2018-06-16', 363, 18, 379, -1, -1),
(1232, '指令由地址码和操作码构成', 10, '2018-06-16', 364, 16, 380, -1, 10),
(1233, '地址总线是用来向主存储器或者输入输出设备传送待输入输出数据的地址，数据总线是用来在输入输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 364, 17, 380, -1, 0),
(1234, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 程序是按事先设计的功能和性能要求编制的指令序列。', 2, '2018-06-16', 364, 18, 380, -1, -1),
(1235, '由操作码和地址码组成', 3, '2018-06-16', 365, 16, 381, -1, 10),
(1236, '地址总线用来沟通实体地址，数据总线用于传送数据信息', -1, '2018-06-16', 365, 17, 381, -1, 0),
(1237, '程序设计语言是用于书写计算机程序的语言。程序是由程序员编写的一组稳定的指令。程序的设计需要程序设计语言来编写。', 10, '2018-06-16', 365, 18, 381, -1, -1),
(1238, '指令由操作码和地址码两部分构成', 10, '2018-06-16', 366, 16, 382, -1, 10),
(1239, '地址总线属于一种电脑总线，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 366, 17, 382, -1, 0),
(1240, '计算机语言是根据预先定义好的规则而写出的预定语序的集合，集合组成程序，程序是指令的序列。', 1, '2018-06-16', 366, 18, 382, -1, -1),
(1241, '计算机指令由操作码和地址码构成', 10, '2018-06-16', 367, 16, 383, -1, 10),
(1242, '地址总线是传递地址的总线，数据总线是数据传送的总线。', -1, '2018-06-16', 367, 17, 383, -1, 0),
(1243, '程序设计语言是根据预先定义的规则（语法）而写出的用于书写计算机程序的语句的集合；按事先设计的功能和性能要求编制的指令序列称为程序；', 0, '2018-06-16', 367, 18, 383, -1, -1),
(1244, '指令是由0和1构成的二进制代码串，由操作码和地址码两部分组成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或操作数地址以及运算结果的所在地址。', 8, '2018-06-16', 368, 16, 384, -1, 10),
(1245, '地址总线用来向主储存器或者输入/输出设备传送待输入/输出的数据的地址；数据总线用来在输入/输出设备和主储存器、主储存器和CPU之间传送数据', -1, '2018-06-16', 368, 17, 384, -1, 0),
(1246, '程序设计语言是用于书写计算机程序的语言。计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上的指令序列。 程序需要运行需要程序设计语言代码转译成机器语言被cpu理解，进行加载。', 3, '2018-06-16', 368, 18, 384, -1, -1),
(1247, '计算机中的指令是由操作码和地址码构成的。操作码用来表明本条指令要求计算机完成的操作；地址码包含操作数地址、操作结果的存储地址、下一条指令的地址。', 10, '2018-06-16', 369, 16, 385, -1, 10),
(1248, '地址总线（Address Bus）是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线DB用于传送数据信息，是双向三态形式的总线', -1, '2018-06-16', 369, 17, 385, -1, 0),
(1249, '按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言是用于书写计算机程序的语言。程序由程序设计语言表达。', 1, '2018-06-16', 369, 18, 385, -1, -1),
(1250, '由操作码和操作数组成，操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 7, '2018-06-16', 370, 16, 386, -1, 5),
(1251, '地址总线：传送内存地址编码，给地址译码器。数据总线：访问传送数据，用于CPU与内存之间、输入输出设备与内存之间。', -1, '2018-06-16', 370, 17, 386, -1, 9),
(1252, '程序设计语言用于书写计算机程序的语言。程序是指以某些程序设计语言，如C语言，C++，Java等编写，运行于某种目标结构体系上。程序用程序设计语言来编写。', 3, '2018-06-16', 370, 18, 386, -1, -1),
(1253, '首先，指令是能够被计算机硬件直接识别的二进制代码串，这个二进制代码串就是操作码和地址码', 9, '2018-06-16', 371, 16, 387, -1, 10),
(1254, '地址总线是地址线数量之和，是CPU指定存储单元的途径，决定了cpu所能访问的最大内存空间的大小。数据总线是数据线数量之和，是CPU与内存或其他器件之间的数据传送的通道，数据总线的宽度决定了CPU和外界的数据传送速度，每条传输线一次只能传输1位二进制数据。', -1, '2018-06-16', 371, 17, 387, -1, 0),
(1255, '计算机语言是根据预先定义的规则（语法）而写出的预定语句的合集，这些合集组成了程序。程序是由程序员编写的一组稳定的指令，存在硬盘上。关系：计算机语言按照规则编写的语句的合集可以成为程序。', 0, '2018-06-16', 371, 18, 387, -1, -1),
(1256, '指令由操作码和地址码构成', 10, '2018-06-16', 372, 16, 388, -1, 10),
(1257, '地址总线：用来向主储存器或者输入/输出设备传送输入/输出的数据的地址的总线。\n数据总线：用来在输入/输出设备和主储存器，主储存器和cpu之间传送数据的总线。', -1, '2018-06-16', 372, 17, 388, -1, 0),
(1258, '程序设计语言是用于书写计算机程序的语言，是根据特定规则即语法构成的程序的总体。\n计算机程序是以某些程序设计语言编写，运行于某种目标结构体系上的指令序列。\n关系：程序由程序设计语言表达，通过编译器编译后成为计算机能够解读的格式，从而使计算机执行程序包含的指令。', 9, '2018-06-16', 372, 18, 388, -1, -1),
(1259, '指令包括操作码和地址码，它们都是由二进制数构成的，其中地址码包括操作数地址、操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 373, 16, 389, -1, 10),
(1260, '地址总线是专门用来传送地址的一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线 是CPU与内存或其他器件之间的数据传送的通道，用于传送数据信息。', -1, '2018-06-16', 373, 17, 389, -1, 0),
(1261, '程序设计语言是用于书写计算机程序的语言。程序是指一组指示计算机执行动作或做出判断的指令，程序是由程序设计语言编写而成的。', 10, '2018-06-16', 373, 18, 389, -1, -1),
(1262, '指令由操作码和地址码两部分构成，操作码表示本条指令 完成的操作，地址码包括本条指令的操作数地址、操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 374, 16, 390, -1, 10),
(1263, '地址总线属于一种电脑总线，是由CPU或有DMA能力的单元，用来沟通这些单元想要存取(读取/写入)电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。', -1, '2018-06-16', 374, 17, 390, -1, 0),
(1264, '程序设计语言是用于书写计算机程序的语言，包括机器语言、汇编语言和高级语言，是一种被标准化的交流技巧和语法规则，用来向计算机发送指令。\n 程序是按事先设计的功能和性能要求编制的指令序列。\n 程序设计语言经过翻译后就变成了指令序列即程序，程序需要程序设计语言去定义它。', 9, '2018-06-16', 374, 18, 390, -1, -1),
(1265, '由操作码和地址码构成。', 3, '2018-06-16', 375, 16, 391, -1, 10),
(1266, '地址总线传送地址编码，给地址译码器。\n数据总线 是CPU与内存或其他器件之间的数据传送的通道，它的宽度决定了CPU和外界的数据传送速度。', -1, '2018-06-16', 375, 17, 391, -1, 0),
(1267, '程序是指按照事先设计的功能和性能要求编制的指令序列。\n程序设计语言是指根据预先定义的规则或语法而写出的预定语言的集合。程序设计语言是用来设计程序的。', 0, '2018-06-16', 375, 18, 391, -1, -1),
(1268, '由操作码和地址码构成。操作码用来表明本条指令要求计算机完成的操作。地址码用来给出参加本次运算的操作数和运算结果所在的地址。', 6, '2018-06-16', 376, 16, 392, -1, 10),
(1269, '地址总线是指用来向主存储器或者输入输出设备传送待输入输出数据的地址的一类系统总线。数据总线是用来在输入输出设备和主存储器、主存储器和CPU之前传送数据的一类系统总线。', -1, '2018-06-16', 376, 17, 392, -1, 0),
(1270, '程序设计语言是用于设计程序的语言，例如高级语言，程序是按照事先设计的功能和性能要求编制的指令序列。程序设计语言是设计程序的工具，程序通过程序设计语言体现。', 8, '2018-06-16', 376, 18, 392, -1, -1),
(1271, '指令由操作码和地址码组成，操作码表示要执行的操作，地址码表示参加运算的操作数，操作数地址以及结果运算所在地址', 10, '2018-06-16', 377, 16, 393, -1, 10),
(1272, '地址总线是中央处理器与存储器之间传输地址的线路。数据总线是在计算机的冯诺依曼结构中的组成部分之间传输数据的线路。', -1, '2018-06-16', 377, 17, 393, -1, 0),
(1273, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据已经求解问题的步骤和过程，是根据一定的语法规则由一个有限字母表上的字符构成的字符串的总体。\n程序是按事先设计的功能和性能要求编制的有特殊功能的指令序列。\n关系：程序设计语言是用于编写程序的语言，程序设计语言的集合构成了程序。', 6, '2018-06-16', 377, 18, 393, -1, -1),
(1274, '计算机中的指令由地址码和操作码构成', 7, '2018-06-16', 378, 16, 394, -1, 10),
(1275, '地址总线是输出地址信号的单向总线，数据总线是输出数据信号的总线。', -1, '2018-06-16', 378, 17, 394, -1, 0),
(1276, '程序设计语言：是用于书写计算机程序的语言，是根据规则由记号构成的记号串的总体。\n程序：是按事先设计的功能和性能要求编制的指令序列。\n关系：程序由程序设计语言书写。', 3, '2018-06-16', 378, 18, 394, -1, -1),
(1277, '操作数(操作对象)和操作码(操作数的地址)', 10, '2018-06-16', 379, 16, 395, -1, 5),
(1278, '地址总线：传送内存地址编译码，给地址译码器；\n数据总线：用于在CPU与存储器之间或IO与存储器之间访问传送数据。', -1, '2018-06-16', 379, 17, 395, -1, 4),
(1279, '程序设计语言泛指一切用于书写计算机程序的语言，根据规则由记号构成的记号串的总体就是语言。程序是一组机器操作的指令或语句的序列，是算法的一种描述。关系：程序是以某些程序设计语言编写，运行于目标结构体系上的指令序列。', 9, '2018-06-16', 379, 18, 395, -1, -1),
(1280, '一条指令结构包括操作码和操作数，操作码决定要完成的操作，操作数为参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 380, 16, 396, -1, 5),
(1281, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址，用来向存储器或者输入输出设备传送待输入输出的数据的地址。数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 380, 17, 396, -1, 0),
(1282, '计算机语言是根据预先定义好的规则而写出的预定语序的集合，这些集合组成了程序。程序是指令的序列', 1, '2018-06-16', 380, 18, 396, -1, -1),
(1283, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 381, 16, 397, -1, 10),
(1284, '地址总线是用于传递地址的总数，数据总线是用于数据传送的总线。', -1, '2018-06-16', 381, 17, 397, -1, 0),
(1285, '程序设计语言是根据预先定义的规则（语法）写出的用于书写计算机程序的语句的集合；按事先设计的功能和性能要求编制的指令序列即程序。程序设计语言通过人类易于理解的语法规则书写计算机程序，计算机程序的执行过程即程序设计语言编译和执行的过程。', 4, '2018-06-16', 381, 18, 397, -1, -1),
(1286, '指令由操作码和地址码构成。其中地址码包括操作数地址、操作结果的存储地址、下一条指令的地址。操作码和地址码均是二进制数据。', 10, '2018-06-16', 382, 16, 398, -1, 10),
(1287, '地址总线是系统总线的一部分，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线也是系统总线的一部分，用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 382, 17, 398, -1, 0),
(1288, '程序是按照工作步骤事先编排好的、具有特殊功能的指令序列。程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。', 3, '2018-06-16', 382, 18, 398, -1, -1),
(1289, '计算机中的指令包括操作码和地址码，操作码用来表明指令要求计算机完成的操作。地址码指明操作对象的内容或所在的存储单元，包含操作数地址，操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 383, 16, 399, -1, 10),
(1290, '地址总线是控制器传送地址编码给存储器的通路，决定了cpu所能访问的最大内存空间的大小。数据总线用于传送数据信息，实现CPU，存储器和输入输出接口的数据信息沟通。', -1, '2018-06-16', 383, 17, 399, -1, 0),
(1291, '程序设计语言用于书写计算机程序的语言，是一组用来定义计算机程序的语法规则，是一种被标准化的交流方式，用来向计算机发出指令。    程序＝算法+数据结构，是指一组指示计算机每一步动作的代码化指令序列。    程序通常用某种程序设计语言编写。程序设计语言的语法表示程序的结构或形式，语义表示程序的含义。', 10, '2018-06-16', 383, 18, 399, -1, -1),
(1292, '通常一条指令包括操作码和操作数，在计算机中，整条指令以二进制编码的形式存放在存储器中。', 5, '2018-06-16', 384, 16, 400, -1, 5),
(1293, '地址总线是专门用来输出地址信号的单向三态总线，只能将指令中数据的地址从CPU传向外部存储器或io端口。  数据总线用于传送数据信息，是双向三态的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 384, 17, 400, -1, 0),
(1294, '程序设计语言：根据预先定义的规则（语法）而写出的预定语句的集合。程序：按事先设计的功能和性能要求编制的指令序列叫做程序。\n程序设计语言是程序的载体，高级语言经过编译形成机器语言之后能够让计算机执行程序。', 6, '2018-06-16', 384, 18, 400, -1, -1),
(1295, '指令由二进制代码串构成，包含操作码和地址码。操作码是用来表明本条指令要求计算机完成的操作；\n地址码包括三个地址：操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址；\n操作结果的存储地址：将对操作数的操作结果保存在该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址；\n下一条指令的地址：一般的下一条指令的地址由存放下一条指令地址的寄存器指出；仅当改变程序的运行顺序时，下条指令的地址才由转移类指令给出。', 7, '2018-06-16', 385, 16, 401, -1, 10),
(1296, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一种系统总线；数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的一种系统总线。', -1, '2018-06-16', 385, 17, 401, -1, 0),
(1297, '程序设计语言是指用于书写计算机程序的语言，一种被标准化的交流技巧，用来向计算机发出指令。\n 程序是按事先设计的功能和性能要求编制的指令序列。\n程序由程序设计语言编写，用于指导编译设备或体系结构完成一定的操作步骤。程序设计语言是在程序设计的基础上去实现程序，向计算机发出指令，并促进程序员交流。', 8, '2018-06-16', 385, 18, 401, -1, -1),
(1298, '由操作码和地址码构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次操作的操作数或者操作数地址以及运算结果所在的地址。', 8, '2018-06-16', 386, 16, 402, -1, 10),
(1299, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取或写入）计算机内存组件/地方的物理地址。地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址。地址总线用来指定在RAM之中储存的数据的地址。\n 数据总线，在CPU与RAM之间来回传送需要处理或是需要储存的数据。数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 386, 17, 402, -1, 0),
(1300, '(1)程序设计语言是一种具有语法规则定义计算机程序的语言，用于向计算机发出指令。\n(2)程序是一组由程序设计语言编写的指示计算机处理问题的指令集合。\n(3)关系：程序设计语言是程序运行的工具，用来表达程序。', 9, '2018-06-16', 386, 18, 402, -1, -1),
(1301, '由操作码和地址码构成', 3, '2018-06-16', 387, 16, 403, -1, 10),
(1302, '9.地址总线是用来传送内存地址的给地址编译码器，连接想要访问数据地址的中央处理器（CPU）和存储器；数据总线是数据线数量之和，用于各部件传送数据信息，连接输入输出设备和存储器，以及存储器和中央处理器（CPU）', -1, '2018-06-16', 387, 17, 403, -1, 0),
(1303, '①程序设计语言是用于书写计算机程序的语言。②程序是一个指令序列。一般的，计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上。③关系：程序由程序设计语言编写，程序设计语言由程序体现。', 10, '2018-06-16', 387, 18, 403, -1, -1),
(1304, '指令由操作码和地址码两部分组成，本质是够被计算机硬件直接识别的、命令计算机进行基本操作的、由‘0’和‘1’组成的二进制代码。操作码决定要完成的操作，地址码指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 388, 16, 404, -1, 10),
(1305, '①地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。②数据总线是数据线数量之和，是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 388, 17, 404, -1, 0),
(1306, '程序设计语言：根据预先定义的规则(语法)而写出的预定语句的集合；\n 程序：程序是按事先设计的功能和性能要求编制的指令序列。\n  关系：程序的功能可以通过不同的程序设计语言实现，程序是由程序设计语言编译成为指令序列而来的。', 8, '2018-06-16', 388, 18, 404, -1, -1),
(1307, '操作码和地址码', 3, '2018-06-16', 389, 16, 405, -1, 10),
(1308, '数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据；地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址', -1, '2018-06-16', 389, 17, 405, -1, 0);
INSERT INTO `operate_useranswerlog` (`id`, `answer`, `score`, `add_time`, `paper_log_id`, `paper_id`, `user_id`, `mscore`, `score2`) VALUES
(1309, '程序设计语言是指根据预先定义的规则而写出的预定语句的集合。按事先设计的功能和性能要求编制的指令序列叫程序。程序是由程序语言编写的，大概就是作文是用汉字书写这样的关系。', 0, '2018-06-16', 389, 18, 405, -1, -1),
(1310, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 390, 16, 406, -1, 10),
(1311, '地址总线是用来向主存储器，输入输出设备传输待输入，输出的数据的地址的通信干线，是由导线组成的传输线束。数据总线是用来在主存储器和输入输出设备，主存储器和cpu之间传输数据的的通信干线，是由导线组成的传输线束。', -1, '2018-06-16', 390, 17, 406, -1, 0),
(1312, '程序设计语言是用于书写计算机程序的语言；程序是指以某些程序设计语言编写，运行于某种目标结构体系上的记号串。', 7, '2018-06-16', 390, 18, 406, -1, -1),
(1313, '指令是指能够被计算机硬件直接识别的，命令计算机进行某种基本操作的，由‘0’和‘1’组成的二进制代码串。有操作码和地址码二部分构成。其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及计算结果所在的地址。', 9, '2018-06-16', 391, 16, 407, -1, 10),
(1314, '地址总线：传送内存地址编码，给地址译码器；\n数据总线：访问传送数据，用于CPU与内存之间，输入/输出设备与内存之间；', -1, '2018-06-16', 391, 17, 407, -1, 9),
(1315, '程序设计语言包括机器语言、符号语言、高级语言和自然语言，有一定的语法、符号规则；程序即为某种高级程序语言编写的预定语句的集合，能够运行于目标结构体系上。显然，程序就是由程序设计语言写出来的！', 8, '2018-06-16', 391, 18, 407, -1, -1),
(1316, '由操作码及操作数构成。其中，操作码决定要完成的操作，操作数决定参与运算的数据及其所在的单元的地址。', 3, '2018-06-16', 392, 16, 408, -1, 5),
(1317, '地址总线属于一种电脑总线 （一部份），是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址，它的宽度，随可寻址的内存元件大小而变，决定有多少的内存可以被存取；数据总线是双向三态的总线，用于传输数据，实现计算机的各组成部分的数据交换。', -1, '2018-06-16', 392, 17, 408, -1, 0),
(1318, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则，根据规则由记号构成的记号串的总体就是语言。一般的，计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上。两者关系是程序设计语言写出能执行的程序。', 7, '2018-06-16', 392, 18, 408, -1, -1),
(1319, '指令的基本结构包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 393, 16, 409, -1, 5),
(1320, '地址总线属于一种电脑总线，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU', -1, '2018-06-16', 393, 17, 409, -1, 0),
(1321, '程序设计语言：根据预先定义的规则（语法）而写出的预定语句的集合。程序：按事先设计的功能和性能要求编制的指令序列叫做程序。\n程序设计语言是程序的载体，高级语言经过编译形成机器语言之后能够让计算机执行程序。', 6, '2018-06-16', 393, 18, 409, -1, -1),
(1322, '指令是二进制代码串，由操作码和地址码组成', 9, '2018-06-16', 394, 16, 410, -1, 10),
(1323, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一种系统总线；数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的一种系统总线。', -1, '2018-06-16', 394, 17, 410, -1, 0),
(1324, '程序是指按照事先设计的功能和性能要求编制的指令序列\n程序设计语言是指根据预先定义的规则或语法而写出的预定语言的集合\n用程序设计语言来书写构成程序的指令', 1, '2018-06-16', 394, 18, 410, -1, -1),
(1325, '计算机的指令由操作码和地址码构成，操作码表明要执行的操作，地址码表明参加运算的操作数，操作数地址，以及运算结果所在地址。', 10, '2018-06-16', 395, 16, 411, -1, 10),
(1326, '地址总线是指用来向主存储器或者输入输出设备传送待输入输出的数据的地址的一类系统总线。数据总线是用来在输出输入设备和主存储器，主存储器和CPU之间传送数据的一类数据总线', -1, '2018-06-16', 395, 17, 411, -1, 0),
(1327, '程序设计语言为一种用来定义计算机程序，向计算机发出指令及能够让程序员准确定义计算机所需要数据并在不同情况下采取不同行动的形式语言。计算机程序为以某种程序设计语言所编写，并运行于某种目标结构体系上的程序。两者之间的关系：程序设计语言是是程序员设计程序的工具，程序是程序设计语言的实现结果。', 9, '2018-06-16', 395, 18, 411, -1, -1),
(1328, '答：指令包括：1，操作码：用来表明本条指令要求计算机完成的操作；\n2，地址码：（1）操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址（即寄存器名）；\n（2）操作结果的存储地址：将对操作数的操作结果保存在该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址；\n（3）下一条指令的地址：一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC（存放下一条指令地址的寄存器）指出；仅当改变程序的运行顺序（转移，调用子程序）时，下条指令的地址才由转移类指令给出。\n同时指令包括:算术运算类；逻辑运算类；传送类；程序控制类；输入/输出类；以及其他类指令。', 7, '2018-06-16', 396, 16, 412, -1, 10),
(1329, '地址总线：传送内存地址编码给地址译码器。数据总线：访问传送数据，用于CPU与内存之间、输入\\输出设备与内存之间。', -1, '2018-06-16', 396, 17, 412, -1, 9),
(1330, '程序设计语言是根据预先定义的语法写出的预定语句的集合。程序是基于机器语言运行为了解决某一问题而编写的有限指令序列。程序是由程序设计语言写出的代码编译而成的。', 7, '2018-06-16', 396, 18, 412, -1, -1),
(1331, '指令由地址码和操作码构成，操作码指明需要执行的操作，地址码表示参加运算的操作数，其地址以及运算结果的地址。', 9, '2018-06-16', 397, 16, 413, -1, 10),
(1332, '地址总线是向主存储器或输入输出设备传送待输入输出的数据地址。数据总线是用来在输入输出设备和主存储器，主存储器和CPU之间传送数据', -1, '2018-06-16', 397, 17, 413, -1, 0),
(1333, '程序设计语言是根据预先定义的规则写出的预定语句的集合。\n程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言这些集合组成了程序。', 0, '2018-06-16', 397, 18, 413, -1, -1),
(1334, '指令是二进制代码串，由操作码和地址码组成。', 9, '2018-06-16', 398, 16, 414, -1, 10),
(1335, '地址总线：向主存储器或O/I传送待输入/输出的数据的地址；\n数据总线：在O/I和主存储器，主存储器和CPU之间传输数据。', -1, '2018-06-16', 398, 17, 414, -1, 0),
(1336, '程序设计语言是根据规则由记号构成的记号串的总体。\n程序是由根据程序设计语言的规则书写的指令串。\n程序设计语言用于书写计算机程序的语言。', 4, '2018-06-16', 398, 18, 414, -1, -1),
(1337, '由操作码和地址码构成。地址码由操作数，操作结果的存储地址和下一条指令的地址构成。', 10, '2018-06-16', 399, 16, 415, -1, 10),
(1338, '地址总线是用于传递地址的总线\n数据总线是用于数据传送的总线', -1, '2018-06-16', 399, 17, 415, -1, 0),
(1339, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法），由一个有限字母表上的字符构成的字符串的总体。\n程序：是按照工作步骤事先编排好的、具有特殊功能的指令序列。 \n两者关系：两者通过程序设计联系起来，程序设计用程序语言设计出程序；程序是由程序语言编写的指令序列。', 9, '2018-06-16', 399, 18, 415, -1, -1),
(1340, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 400, 16, 416, -1, 10),
(1341, '答：（1）地址总线：是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。\n用来向存储器或者输入输出设备传送待输入输出的数据的地址。\n（2）数据总线：用来在输入输出设备和存储器，存储器和CPU之间传送数据的计算机总线。', -1, '2018-06-16', 400, 17, 416, -1, 0),
(1342, '程序设计语言是按照需要以及一定的规则写好的预定语序的集合，这些集合组成了程序。程序就是指令的序列。', 0, '2018-06-16', 400, 18, 416, -1, -1),
(1343, '指令指能够被计算机硬件直接识别的、命令计算机进行基本操作的二进制代码串。而指令本身由操作码与地址码构成，操作码用来表明本指令要求计算机完成的操作，地址码分为操作数地址和操作结果的存储地址——CPU根据操作数地址取得所需的操作数，计算机对操作数的操作结果保存在操作结果的存储地址，以便再次使用。', 10, '2018-06-16', 401, 16, 417, -1, 10),
(1344, '地址总线是用于传递地址的总线，数据总线是用于传输数据的总线。', -1, '2018-06-16', 401, 17, 417, -1, 0),
(1345, '程序设计语言是根据预先定义的规则写出的预定语句的集合。\n程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言这些集合组成了程序。', 0, '2018-06-16', 401, 18, 417, -1, -1),
(1346, '由操作码和操作数构成，操作码决定要完成的操作，操作数包含参加运算的数据和它们的地址。', 6, '2018-06-16', 402, 16, 418, -1, 5),
(1347, '地址总线：向主存储器或O/I传送待输入/输出的数据的地址；\n数据总线：在O/I和主存储器，主存储器和CPU之间传输数据。', -1, '2018-06-16', 402, 17, 418, -1, 0),
(1348, '程序是按照工作步骤事先编排好的、具有特殊功能的指令序列。程序设计语言是用于书写程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。 关系：程序设计语言是程序的载体。', 6, '2018-06-16', 402, 18, 418, -1, -1),
(1349, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 403, 16, 419, -1, 10),
(1350, '地址总线：一种计算机总线，用于CPU访问内存或向内存中写入数据。数据总线：用于双向传输CPU和输入设备、输出设备、内存之间的数据。', -1, '2018-06-16', 403, 17, 419, -1, 0),
(1351, '程序设计语言是用于书写计算机程序的语言；\n程序是指一组指示计算机执行动作或做出判断的指令。', 10, '2018-06-16', 403, 18, 419, -1, -1),
(1352, '一条指令包括操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 8, '2018-06-16', 404, 16, 420, -1, 5),
(1353, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址；\n数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。\n数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据；\n控制总线用来传送CPU向主存储器或者输入/输出设备传送待输入/输出的数据的地址。', -1, '2018-06-16', 404, 17, 420, -1, 0),
(1354, '程序设计语言指面向人的程序设计工具，是可使人利用其中的语言设计构造出一定操作序列的工具，不能被计算机直接识别。程序设计语言通过编译解释转换为计算机可识别的指令序列，从而进行运算或操作。对应的程序是根据程序设计语言得到的，但两者面向对象不同。', 9, '2018-06-16', 404, 18, 420, -1, -1),
(1355, '指令由操作码和地址码两部分构成，操作码和地址码都是 能够被计算机硬件直接识别的、命令计算机进行某种基本操作的、由‘0’和‘1’组成的二进制代码串。', 10, '2018-06-16', 405, 16, 421, -1, 10),
(1356, '数据总线指CPU和存储器或其它器件间传输交换数据的通道，每条数据线传输一个二进制信息，即八条传输一个字节。地址总线是被CPU用来指定存储空间的，即进行寻址操作。一条地址线指定包含一位二进制信息的地址，所以地址线的数目决定了所能指定存储空间的大小。', -1, '2018-06-16', 405, 17, 421, -1, 0),
(1357, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则、由一个有限字母表上的字符构成的字符串的总体。 \n程序是指令序列，是一段按照工作步骤事先编排好的、具有特殊功能的指令序列。\n程序设计语言的集合组成了程序。', 5, '2018-06-16', 405, 18, 421, -1, -1),
(1358, '一条指令基本结构包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 406, 16, 422, -1, 5),
(1359, '地址总线：用来传送计算机内存的物理地址的总线\n数据总线：在输入设备、存储器、输出设备、中央处理器之间传送数据的主线', -1, '2018-06-16', 406, 17, 422, -1, 0),
(1360, '按事先设计的功能和性能要求而编制的指令序列叫做程序。程序设计语言是根据预先定义的规则而写出的预定语句的集合。程序设计语言组成了程序。', 0, '2018-06-16', 406, 18, 422, -1, -1),
(1361, '操作码和地址码，其中地址码由操作数地址，操作结果的存储地址和下一条指令的地址构成。', 10, '2018-06-16', 407, 16, 423, -1, 10),
(1362, '数据总线是传输输入/输出设备和主储存器、主储存器和CPU间传输数据的通道，数据总线的宽度决定了CPU和外界的数据传送速度。地址总线是用来向主储存器和输入/输出设备传送待输入/输出的数据的地址的一组传输线，地址总线决定了cpu所能访问的最大内存空间的大小。', -1, '2018-06-16', 407, 17, 423, -1, 0),
(1363, '程序是一个指令序列，以某些程序设计语言编写，运行于某种目标结构体系上。\n程序语言是用来定义计算机程序的形式语言。它是一种被标准化的交流技巧，用来向计算机发出指令。\n程序以程序设计语言编写，程序设计语言经过编译、链接后以程序呈现。', 10, '2018-06-16', 407, 18, 423, -1, -1),
(1364, '指令是能够被计算机识别的、命令计算机进行某种基本操作的、由‘0’和‘1’组成的二进制代码串。\n指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或操作数地址以及计算结果所在的地址', 10, '2018-06-16', 408, 16, 424, -1, 10),
(1365, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线是CPU与内存或其他器件之间的数据传送的通道。数据总线的宽度决定了CPU和外界的数据传送速度。', -1, '2018-06-16', 408, 17, 424, -1, 0),
(1366, '程序设计语言：用来书写计算机程序的形式语言，它是一种被标准化的交流技巧。\n程序：程序是一组稳定的指令集合，即指令序列。\n联系：按照预先定义的语法用程序设计语言写出的预定语句的集合，这些集合就是程序，并运行于某个目标结构体系上。如果将程序语言比作英语，那么程序就是用英语按照其语法、语义写出来的一篇文章。', 0, '2018-06-16', 408, 18, 424, -1, -1),
(1367, '操作码和地址码', 3, '2018-06-16', 409, 16, 425, -1, 10),
(1368, '地址总线：是由CPU或有DMA能力的单元，用来沟通这些单元想要存取(读取/写入)电脑内存元件/地方的实体位址，是单向三态的。\n数据总线：用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 409, 17, 425, -1, 0),
(1369, '程序设计语言是用来书写计算机程序的语言，其基础是一组记号和一组规则，根据规则由记号组成的记号串就是语言。程序是有程序设计语言编写的，运行于某种目标结构体系上。程序是由程序设计语言根据语法规则罗列出的一系列操作指令。', 7, '2018-06-16', 409, 18, 425, -1, -1),
(1370, '计算机中的指令通常包括操作码和操作数。（操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。）', 10, '2018-06-16', 410, 16, 426, -1, 5),
(1371, '地址总线（Address Bus）是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。数据总线的位数是微型计算机的一个重要指标，通常与微处理的字长相一致。其中数据的含义是广义的，它可以是真正的数据，也可以是指令代码或状态信息，有时甚至是一个控制信息。', -1, '2018-06-16', 410, 17, 426, -1, 0),
(1372, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。', 0, '2018-06-16', 410, 18, 426, -1, -1),
(1373, '由操作码和地址码构成，地址码又由操作数地址，操作结果地址，下一条指令地址（当是顺序执行由PC给出，不是顺序执行，由转移类指令给出）构成。操作码和地址码都是二进制数。', 4, '2018-06-16', 411, 16, 427, -1, 10),
(1374, '数据总线用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。\n地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。', -1, '2018-06-16', 411, 17, 427, -1, 0),
(1375, '程序设计语言：用于书写计算机程序的语言，根据预先定义的规则（语法）而写出的预定语句的集合\n程序：按事先设定好的功能和性能要求编制的指令序列叫做程序\n两者之间的联系：程序设计语言是根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序', 0, '2018-06-16', 411, 18, 427, -1, -1),
(1376, '指令是由操作码和地址码组成的，其中操作码和地址码都是二进制数据。', 10, '2018-06-16', 412, 16, 428, -1, 10),
(1377, '地址总线，用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。\n数据总线，用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 412, 17, 428, -1, 0),
(1378, '程序设计语言是用于书写计算机程序的语言，程序是按事先设计的功能和性能要求编制的指令序列。后者被前者书写产生，程序设计语言是程序的载体，程序是设计语言功能的执行者。', 0, '2018-06-16', 412, 18, 428, -1, -1),
(1379, '计算机中的指令由操作码和地址码构成，操作码用来表明本条指令要求计算机完成的操作，地址码又包括操作数地址，操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 413, 16, 429, -1, 10),
(1380, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线用于数据信息在计算机各部件的传输。', -1, '2018-06-16', 413, 17, 429, -1, 0),
(1381, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法），由一个有限字母表上的字符构成的字符串的总体。\n程序：为某一具体任务的实现而设计的功能和性能经要求编制的指令序列，即为程序。\n关系：程序的编译是根据程序设计语言的语法规则进行计算；同时，程序设计语言为程序服务。', 4, '2018-06-16', 413, 18, 429, -1, -1),
(1382, '计算机指令是由什么组成的 推荐内容 计算机指令是由什么组成的 &lt;pre>A指令码和操作码 B操作数和地址码 C指令寄存器和地址寄存器 D操作码和地址码&lt;/pre> 来自匿名用户的提问 最佳答案由提问者推荐  在计算机中，操作要求和操作数地址都由二进制数码表示D操作码和地址码  通常一条指令包括两方面的内容：操作码和操作数，操作码决定要完成的操作，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中，操作数指参加运算的数据及其所在的单元地址', 9, '2018-06-16', 414, 16, 430, -1, 10),
(1383, '地址总线：用来传送地址；\n数据总线：用于传送数据信息。', -1, '2018-06-16', 414, 17, 430, -1, 0),
(1384, '程序设计语言：书写计算机程序的语言。表达要加工的数据以及求解问题的过程。\n程序：按照已经决定的算法安排好的能达到某个目的的指令或动作序列\n\n关系：程序设计语言是在计算机中描述程序的一种工具，用计算机能识别的方式表达程序。', 9, '2018-06-16', 414, 18, 430, -1, -1),
(1385, '指令由操作码与地址码构成。操作码用于表明本条指令要求计算机完成的操作，地址码用来给出参加本次运算的操作数和运算结果所在的地址。', 5, '2018-06-16', 415, 16, 431, -1, 10),
(1386, '地址总线：是一种用于指定在存储器中储存的数据的地址的通信干线。是地址线数量之和，CPU通过其来指定存储单元。\n数据总线：用于在CPU与RAM之中来回传送需要处理或者需要储存的数据的一种通信干线。', -1, '2018-06-16', 415, 17, 431, -1, 0),
(1387, '程序是按事先设计的功能和性能要求编制的指令序列，程序设计语言，程序设计语言是指根据预先定义的规则或语法而写出的预定语句的集合。程序是由程序设计语言组成的，程序是不同程序设计语言的不同组合。', 5, '2018-06-16', 415, 18, 431, -1, -1),
(1388, '指令:\n是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。\n指令由操作码和地址码构成，其均为二进制数据。\n操作码：用来表示操作的性质\n用来表明本条指令要求计算机完成的操作。\n地址码：用来表示操作数在存储器中的位置\n1.操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址；\n2.操作结果的存储地址：将对操作数的操作结果保存在该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址；\n3.下一条指令的地址：一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC指出；仅当改变程序的运行顺序时，下条指令的地址才由转移类指令给出。', 8, '2018-06-16', 416, 16, 432, -1, 10),
(1389, '地址总线是CPU用来指定存储单元的通道。数据总线是CPU与其他内存之间进行数据传输的通道。', -1, '2018-06-16', 416, 17, 432, -1, 0),
(1390, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。它是根据预先定义的语法规则，由一个有限字母表上的字符构成的字符串的总体。\n程序是按照工作步骤事先编排好的、具有特殊功能的指令序列。。\n两者之间的关系：程序设计语言是人类用于编排程序的工具，人类利用程序设计语言来编写程序，程序再根据所用程序设计语言种类来翻译成计算机可以直接执行的指令序列。', 7, '2018-06-16', 416, 18, 432, -1, -1),
(1391, '指令由操作码和地址码构成，操作码用来表明本指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址', 9, '2018-06-16', 417, 16, 433, -1, 10),
(1392, '地址总线是控制器向存储器中的地址译码器传送地址编码的通路。\n数据总线是在输入输出设备和存储器、存储器和CPU之间传送数据的通路。', -1, '2018-06-16', 417, 17, 433, -1, 0),
(1393, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。程序（program）是为实现特定目标或解决特定问题而用计算机语言编写的命令序列的集合。为实现预期目的而进行操作的一系列语句和指令。 程序由程序设计语言实现，程序设计语言因程序设计的需要而生。', 4, '2018-06-16', 417, 18, 433, -1, -1),
(1394, '指令是由操作码和地址码组成', 10, '2018-06-16', 418, 16, 434, -1, 10),
(1395, '址总线属于一种电脑总线，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。    数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 418, 17, 434, -1, 0),
(1396, '程序设计语言是为了向人以及计算机描述计算过程，根据预先定义的规则（语法）而写出的预定语句的集合。这些集合组成了程序。', 3, '2018-06-16', 418, 18, 434, -1, -1),
(1397, '一条指令基本结构包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 419, 16, 435, -1, 5),
(1398, '地址总线：用于传递地址的总线；数据总线：用于传送数据的总线。', -1, '2018-06-16', 419, 17, 435, -1, 0),
(1399, '程序由多条语句组成，一个语句就是一条指令(可以包含多个操作)。语句有规定的关键字(命令)和语法结构，程序语言利用串行的方法编写程序语句。语言中的控制指令(如顺序、选择、循环、调用等)可以改变程序的执行流程，用来控制计算机的处理过程。', 0, '2018-06-16', 419, 18, 435, -1, -1),
(1400, '计算机中指令由操作码和地址码组成。\n操作码指这个指令让计算机执行的操作。\n地址码包括操作数地址，操作结果的存储地址及下一条指令的地址。即为 此条指令操作前后过程中的一系列地址。', 10, '2018-06-16', 420, 16, 436, -1, 10),
(1401, '地址总线：\n    用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。\n数据总线：\n    用来在输入输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 420, 17, 436, -1, 0),
(1402, '程序是按事先设计的功能和性能要求编制的指令序列的集合。程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序', 0, '2018-06-16', 420, 18, 436, -1, -1),
(1403, '操作码与地址码', 3, '2018-06-16', 421, 16, 437, -1, 10),
(1404, '数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据；地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址', -1, '2018-06-16', 421, 17, 437, -1, 0),
(1405, '程序设计语言：人与计算机“沟通”使用的语言种类，能让计算机编译，运行的语言。\n程序：按事先设计的功能和性能要求编制的指令序列\n程序是由设计语言表达的，大部分应用程序是由高级语言来编程的', 2, '2018-06-16', 421, 18, 437, -1, -1),
(1406, '计算机的指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示本次运算的操作数或者操作数地址以及运算结果所在的地址，整条指令是以二进制编码的形式存放在存储器中的。', 10, '2018-06-16', 422, 16, 438, -1, 10),
(1407, '地址总线：传送内存地址编码，给地址译码器\n数据总线：访问传送数据，用于CPU 与内存之间、输入输出设备与内存之间', -1, '2018-06-16', 422, 17, 438, -1, 9),
(1408, '计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上，程序是一个指令序列。程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 6, '2018-06-16', 422, 18, 438, -1, -1),
(1409, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串。这个二进制代码由操作码和地址码构成，而地址码由操作数地址，操作结果的存储地址和下一条指令的地址构成。', 9, '2018-06-16', 423, 16, 439, -1, 10),
(1410, '地址总线用来沟通想要访问（读取/写入）计算机内存组件/地方的物理地址，地址总线的位数决定CPU寻址范围，CPU是通过地址总线来指定存储单元的。数据总线是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 423, 17, 439, -1, 0),
(1411, '程序语言是一种语言，是一种人类用来控制计算机工作的语言系统。\n程序则是指令序列，是按照一定逻辑，一定顺序所设计的执行某种功能的指令序列。\n需要用程序语言才能设计程序，设计程序时需要遵从程序语言的语法与逻辑，程序才能巡行。', 5, '2018-06-16', 423, 18, 439, -1, -1),
(1412, '指令由操作码和地址码构成，操作码指明了指令要进行什么操作，地址码指明了操作数所在的地址。', 10, '2018-06-16', 424, 16, 440, -1, 10),
(1413, '地址总线是中央处理器读取传输位于存储器中地址的。\n数据总线负责计算机各结构中运行内容，操作指令等数据的传输。', -1, '2018-06-16', 424, 17, 440, -1, 0),
(1414, '程序设计语言按照一定规则和一组字符串组成的语句；\n程序一组指示计算机执行动作或做出判断的指令；\n程序设计语言用于书写计算机程序的语言。', 10, '2018-06-16', 424, 18, 440, -1, -1),
(1415, '操作码，地址码', 3, '2018-06-16', 425, 16, 441, -1, 10),
(1416, '地址总线用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线是双向的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 425, 17, 441, -1, 0),
(1417, '程序设计语言是指用于书写计算机程序的语言。用于表达和描述要加工的数据以及求解问题的步骤和过程，是根据预先定义的规则(语法)、由一个有限字母表上的字符构成的字符串的总体。程序是按照工作步骤事先编排好的、具有特殊功能的指令序列。程序是由程序设计语言编写成的，按照预先定义的规则(语法)而而写出的预定语句的集合组成了程序。', 0, '2018-06-16', 425, 18, 441, -1, -1),
(1418, '是由二进制数据形式的操作码和地址码构成的，其中地址码又包括操作数地址，操作结果的存储地址和下一条指令的地址。', 10, '2018-06-16', 426, 16, 442, -1, 10),
(1419, '地址总线是由CPU或有DMA能力的单元，用来沟通这些单元想要存取电脑内存元件或者方位的实体位址。地址总线的宽度随可寻址的内存元件大小而变，决定有多少内存可以被存取。数据总线是用于传送数据信息，既可以把CPU的数据传送到存储器或输入输出接口等，也可以将其他部件的数据传送到CPU，数据包含真正的数据和指令代码或者状态信息。', -1, '2018-06-16', 426, 17, 442, -1, 0),
(1420, '程序设计语言是用于书写计算机程序的语言，基础是一组记号和一组规则，根据规则由记号构成的记号串的总体就是语言。\n程序是按事先设计的功能和性能要求编制的指令序列。\n关系：在程序设计语言中，这些记号串就是程序，即程序是由程序设计语言编写的。', 4, '2018-06-16', 426, 18, 442, -1, -1),
(1421, '通常一条指令基本结构包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 427, 16, 443, -1, 5),
(1422, '地址总线是用来沟通CPU想要访问（读取/写入）计算机内存组件/地方的物理地址。\n数据总线是用来把CPU的数据传送到存储器或输入输出设备，或是将其它部件的数据传送到CPU的计算机总线。', -1, '2018-06-16', 427, 17, 443, -1, 0),
(1423, '程序设计语言是指编写程序所用的语言；程序指的是指示计算机执行动作做做出判断的一组指令；程序是用程序设计语言来编写的。', 10, '2018-06-16', 427, 18, 443, -1, -1),
(1424, '操作码 地址码 \n前半部分的操作码确定指令的类型，后半部分的地址码确定指令所要处理的数据', 5, '2018-06-16', 428, 16, 444, -1, 10),
(1425, '地址总线用来向主储存器或者输入/输出设备传送待输入/输出的数据的地址。数据总线用来在输入/输出设备和主储存器、住储存器和CPU之间传送数据。', -1, '2018-06-16', 428, 17, 444, -1, 0),
(1426, '程序设计语言：根据预先定义的规则（语法）而写出的预定语句的集合。程序：按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言用来书写程序。', 1, '2018-06-16', 428, 18, 444, -1, -1),
(1427, '通常一条指令包括两方面内容：操作码：用来表明本条指令要求计算机完成的操作。地址码：（操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址（即寄存器名）；\n操作结果的存储地址：将对操作数的操作结果保存在该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址；\n下一条指令的地址：一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC（存放下一条指令地址的寄存器）指出；仅当改变程序的运行顺序（转移、调用子程序）时，下条指令的地址才由转移类指令给出。）\n操作码和地址码均是二进制数据', 6, '2018-06-16', 429, 16, 445, -1, 10),
(1428, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一种系统总线；数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的一种系统总线。', -1, '2018-06-16', 429, 17, 445, -1, 0),
(1429, '程序是一段能被计算机执行的指令（语句）序列。语言指用于人与计算机之间通讯的语言。关系：程序是用程序设计语言描述的。', 10, '2018-06-16', 429, 18, 445, -1, -1),
(1430, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 430, 16, 446, -1, 10),
(1431, '地址总线是用于传输要访问的计算机内存组件的物理地址。数据总线是用于传输数据信息。', -1, '2018-06-16', 430, 17, 446, -1, 0),
(1432, '计算机程序语言是用来书写计算机程序的语言。语言的基础是一组记号和规则，根据规则由记号构成的记号串的总体就是语言。任何程序设计语言都有自己的词汇，一般说来词汇集是由标识符、保留字、特殊符号、指令字、数、字符串及标号等组成。计算机程序或者软件程序（通常简称程序）是指一组指示计算机每一步动作的指令，为了得到某种结果而可以由计算机等具有信息处理能力的装置执行的代码化指令序列，或者可被自动转换成代码化指令序列的符号化指令序列或者符号化语句序列。通常用某种程序设计语言编写，运行于某种目标体系结构上。', 0, '2018-06-16', 430, 18, 446, -1, -1),
(1433, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 431, 16, 447, -1, 5),
(1434, '总线可分成CPU总线，存储器总线，I/O通道总线和外围接口总线四个层次。每个层次的总线又分为地址总线、控制总线、数据总线等三种。地址总线和控制总线上的信号是由执行总线操作的主设备产生的，CPU和DMA控制器都有权控制总线。数据总线是为各部件之间提供数据传送的通路。只有在控制总线和地址总线的作用下，数据总线才有意义。', -1, '2018-06-16', 431, 17, 447, -1, 0),
(1435, '程序设计语言：根据预先定义的规则（语法）而写出的预定语句的集合。程序：按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言用来书写程序。', 1, '2018-06-16', 431, 18, 447, -1, -1),
(1436, '由操作码和地址码两部分构成', 3, '2018-06-16', 432, 16, 448, -1, 10),
(1437, '地址总线是用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一种系统总线；数据总线是用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的一种系统总线。', -1, '2018-06-16', 432, 17, 448, -1, 0),
(1438, '程序：进行某项活动或过程所规定的途径。\n程序设计语言：用于书写计算机程序的语言。\n程序是由程序设计语言的集合构成。', 0, '2018-06-16', 432, 18, 448, -1, -1),
(1439, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 433, 16, 449, -1, 5),
(1440, '地址总线属于一种电脑总线（一部分），是由CPU或有DMA能力的单元组成，用来沟通这些单元想要存取电脑内存元件/地方的实体位址。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU', -1, '2018-06-16', 433, 17, 449, -1, 0),
(1441, '程序设计语言是用于书写计算机程序的语言，程序是一组指示计算机执行动作或做出判断的指令。', 10, '2018-06-16', 433, 18, 449, -1, -1),
(1442, '通常一条指令基本结构包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 434, 16, 450, -1, 5),
(1443, '数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据；控制总线用来传送CPU向主存储器或者输入/输出设备传送待输入/输出的数据的地址。', -1, '2018-06-16', 434, 17, 450, -1, 0),
(1444, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。在程序设计语言中，这些记号串就是程序。根据规则由记号构成的记号串的总体就是语言。计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上。', 4, '2018-06-16', 434, 18, 450, -1, -1),
(1445, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 435, 16, 451, -1, 5),
(1446, '地址总线：传送内存地址编码，给地址译码器。 数据总线：访问传送数据，用于CPU与内存之间、输入/输出设备与内存之间。', -1, '2018-06-16', 435, 17, 451, -1, 9),
(1447, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。程序是用计算机语言编写的命令序列的集合。', 5, '2018-06-16', 435, 18, 451, -1, -1),
(1448, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 436, 16, 452, -1, 5),
(1449, '地址总线：用于传递地址的通路。  数据总线：用于传递数据的通路。', -1, '2018-06-16', 436, 17, 452, -1, 0),
(1450, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。在程序设计语言中，这些记号串就是程序。根据规则由记号构成的记号串的总体就是语言。计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上。', 4, '2018-06-16', 436, 18, 452, -1, -1),
(1451, '操作码、地址码。', 3, '2018-06-16', 437, 16, 453, -1, 10),
(1452, '地址总线属于一种电脑总线，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 437, 17, 453, -1, 0),
(1453, '程序设计语言用于书写计算机程序的语言。而程序是基于程序设计语言所设计的指令序列。所以程序设计语言是程序的基础。', 6, '2018-06-16', 437, 18, 453, -1, -1),
(1454, '通常一条指令包括两方面的内容：[1]  操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 10, '2018-06-16', 438, 16, 454, -1, 5),
(1455, '地址总线属于一种电脑总线，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取，读取或写入电脑内存元件的实体位址。\n数据总线用于传送数据信息，即把CPU的数据传送到存储器或输入输出接口等其它部件的同时将其它部件的数据传送到CPU。', -1, '2018-06-16', 438, 17, 454, -1, 0),
(1456, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。在程序设计语言中，这些记号串就是程序。根据规则由记号构成的记号串的总体就是语言。计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上。', 4, '2018-06-16', 438, 18, 454, -1, -1),
(1457, '指令有操作码和地址码，操作码表明要执行的操作，地址码表示参加运算的操作数，操作数地址和结果所在地址。', 10, '2018-06-16', 439, 16, 455, -1, 10),
(1458, '地址总线：传送内存地址编码，给地址译码器。 数据总线：访问传送数据，用于CPU与内存之间、输入/输出设备与内存之间。', -1, '2018-06-16', 439, 17, 455, -1, 9),
(1459, '程序是一段能被计算机执行的指令（语句）序列。语言指用于人与计算机之间通讯的语言。关系：程序是用程序设计语言描述的。', 10, '2018-06-16', 439, 18, 455, -1, -1),
(1460, '由操作码和地址码构成', 3, '2018-06-16', 440, 16, 456, -1, 10),
(1461, '地址总线是用于传输要访问的计算机内存组件的物理地址。数据总线是用于传输数据信息。', -1, '2018-06-16', 440, 17, 456, -1, 0),
(1462, '程序设计语言：根据预先定义的规则（语法）而写出的预定语句的集合。程序：按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言用来书写程序。', 1, '2018-06-16', 440, 18, 456, -1, -1),
(1463, '操作码和操作数', 10, '2018-06-16', 441, 16, 457, -1, 5),
(1464, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一种系统总线；数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的一种系统总线。', -1, '2018-06-16', 441, 17, 457, -1, 0),
(1465, '程序设计语言是用于书写计算机程序的语言。计算机程序是指以某些程序设计语言编写，运行于某种目标结构体系上。利用程序设计语言来编写程序。', 8, '2018-06-16', 441, 18, 457, -1, -1),
(1466, '由‘0’或‘1’组成的二进制代码串，由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加此次运算的操作数或者操作数地址以及运算结果所在的地址。', 9, '2018-06-16', 442, 16, 458, -1, 10),
(1467, '地址总线是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。主板上的桥段控制器 数据从一个地方传到另一个地方控制其传输速率的称为数据总线。', -1, '2018-06-16', 442, 17, 458, -1, 0),
(1468, '程序设计语言是根据规则写出的预定语序的集合，这些集合组成了程序，程序是由序列组成的，告诉计算机如何完成一个具体的任务。', 0, '2018-06-16', 442, 18, 458, -1, -1),
(1469, '计算机中的指令由地址码和操作码构成。地址码指明操作数地址和运算结果地址，操作码指明要进行的操作。', 10, '2018-06-16', 443, 16, 459, -1, 10),
(1470, '地址总线：用来传递地址的总线。\n数据总线：在cpu和RAM之间传送需要处理或储存的数据的总线。', -1, '2018-06-16', 443, 17, 459, -1, 0),
(1471, '程序设计语言是用来编写计算机程序的语言 程序是按照工作步骤事先编排好的、具有特殊功能的指令序列 程序设计以程序设计语言为媒介，编写计算机程序', 10, '2018-06-16', 443, 18, 459, -1, -1),
(1472, '由操作码及操作数构成。其中，操作码决定要完成的操作，操作数决定参与运算的数据及其所在的单元的地址。', 3, '2018-06-16', 444, 16, 460, -1, 5),
(1473, '地址总线：CPU用来沟通内存中的地址的总线 数据总线：使数据在输入输出设备，CPU间传输的总线', -1, '2018-06-16', 444, 17, 460, -1, 0),
(1474, '程序设计语言是书写程序的语言，程序是代码组成的一个指令，语言是用于编写程序的工具', 10, '2018-06-16', 444, 18, 460, -1, -1),
(1475, '操作码、地址码。', 3, '2018-06-16', 445, 16, 461, -1, 10),
(1476, '地址总线是总的存储结构，数据总线是数据占据的空间', -1, '2018-06-16', 445, 17, 461, -1, 0),
(1477, '程序设计语言是用于书写计算机程序的语言。\n程序是按事先设计的功能和性能要求编制的指令序列。\n计算机语言是指根据预先定义的规则（语法）而写出的预定语言的集合，这些集合组成了程序。', 2, '2018-06-16', 445, 18, 461, -1, -1),
(1478, '指令由操作码和地址码构成，其中地址码又由操作数地址，操作结果的存储地址，下一条指令的地址构成。', 10, '2018-06-16', 446, 16, 462, -1, 10),
(1479, '数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据；地址主线用来向主存储器或者输入／输出设备传送待输入／输出的数据的地址。', -1, '2018-06-16', 446, 17, 462, -1, 0),
(1480, '计算机语言是指根据预先定义的规则（语法）而写出的预定语句的集合，这些集合组成了程序。程序就是这些指令的有序序列。', 1, '2018-06-16', 446, 18, 462, -1, -1),
(1481, '是由操作码和地址码构成的由‘0’和‘1’组成的二进制代码串，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的所需的操作数或者操作数地址（即可能是内存地址，也可能是寄存器地址）以及运算结果保存的地址（可能是内存地址，也可能是寄存器地址），还有下一条指令的地址', 10, '2018-06-16', 447, 16, 463, -1, 10),
(1482, '地址总线用来向存储器或者输入输出设备传送待输入输出的数据的地址；数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 447, 17, 463, -1, 0),
(1483, '程序设计语言为一种用来定义计算机程序，向计算机发出指令及能够让程序员准确定义计算机所需要数据并在不同情况下采取不同行动的形式语言。计算机程序为以某种程序设计语言所编写，并运行于某种目标结构体系上的程序。两者之间的关系：程序设计语言是是程序员设计程序的工具，程序是程序设计语言的实现结果。', 9, '2018-06-16', 447, 18, 463, -1, -1),
(1484, '都由二进制数码表示构成，分为操作码和地址码', 8, '2018-06-16', 448, 16, 464, -1, 10),
(1485, '地址总线：传送内存地址编码给地址译码器。数据总线：访问传送数据，用于CPU与内存之间、输入\\输出设备与内存之间。', -1, '2018-06-16', 448, 17, 464, -1, 9),
(1486, '程序设计语言：根据预先定义的规则（语法）而写出的预定语句的集合。程序：按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言用来书写程序。', 1, '2018-06-16', 448, 18, 464, -1, -1),
(1487, '通常一条计算机指令由操作码和地址码组成。操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址及运算结果所在的地址。', 8, '2018-06-16', 449, 16, 465, -1, 10),
(1488, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一种系统总线；数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的一种系统总线。', -1, '2018-06-16', 449, 17, 465, -1, 0),
(1489, '程序设计语言是按照一定规则用一定的字符写出的预定语句的集合。\n程序是按照事先设计的功能和性能要求编制的指令序列。\n程序设计语言即是用来设计程序的语言。', 4, '2018-06-16', 449, 18, 465, -1, -1),
(1490, '计算机的指令本质上是二进制代码串，它由操作码和地址码两部分构成，操作码用来表明计算机在本条指令下需完成的操作，地址码用来提供参加本次运算的操作数（可能直接给出，也可能是给出操作数地址（内存地址或寄存器地址））、操作结果的存储地址、下一条指令的地址（仅当改变程序运行顺序时，由转移类指令给出）', 10, '2018-06-16', 450, 16, 466, -1, 10),
(1491, '地址总线用来向存储器或输入/输出设备传送待输入/输出的数据的地址。\n数据总线用来在输入/输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 450, 17, 466, -1, 0),
(1492, '程序设计语言是根据预先定义的规则而写出的预定语句的集合，程序是按照事先设计的功能和性能要求编制的指令序列，程序是用程序设计语言书写出来的。', 0, '2018-06-16', 450, 18, 466, -1, -1),
(1493, '操作码、地址码', 3, '2018-06-16', 451, 16, 467, -1, 10),
(1494, '地址总线是CPU或者有DMA能力的单元，用来传送这些单元想要访问计算机内存组件的物理地址；数据总线用于传送数据信息，是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其他部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 451, 17, 467, -1, 0),
(1495, '程序设计语言是根据预先定义的规则写出的预定语句的集合。\n程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言组成了程序。', 1, '2018-06-16', 451, 18, 467, -1, -1),
(1496, '计算机的指令由操作码和地址码构成。', 10, '2018-06-16', 452, 16, 468, -1, 10),
(1497, '地址总线：向主存储器或O/I传送待输入/输出的数据的地址；\n数据总线：在O/I和主存储器，主存储器和CPU之间传输数据。', -1, '2018-06-16', 452, 17, 468, -1, 0),
(1498, '程序设计语言是指用于书写计算机程序的语言。程序是指以某种程序设计语言编写，运行于某种目标体系上的一个指令序列。程序是由程序设计语言编写的。程序设计语言是程序的基础。', 10, '2018-06-16', 452, 18, 468, -1, -1),
(1499, '指令由操作码和地址码构成的二进制代码串，', 9, '2018-06-16', 453, 16, 469, -1, 10),
(1500, '地址总线是专门用来单向从CPU传送地址到内存或外设的导线的集合。处理器用地址总线来指定存储器单元。数据总线是专门用来在处理器和内存或外设之间传送数据的导线的集合。数据总线是处理器与内存或外设之间的数据传送的通道。', -1, '2018-06-16', 453, 17, 469, -1, 0),
(1501, '程序设计语言是用于书写计算机程序的语言，用于表达要加工的数据以及求解问题的步骤和过程，是根据预先定义的规则（语法），由一个有限字母表上的字符构成的字符串（单词和句子）的总体。程序是按照工作步骤事先编排好的，具有特殊功能的指令序列。除最初的由机器语言编成的程序外，程序都需要由程序设计语言转化为机器可以执行的语言。', 0, '2018-06-16', 453, 18, 469, -1, -1),
(1502, '指令是由操作码和地址码构成的。其中，操作码用来表明本条指令要求计算机完成的条件，操作码表示操作执行对应的地址。其中，地址码又包括操作数地址、操作结果的存储地址、下一条指令的地址。操作码和地址码均是二进制数据。', 10, '2018-06-16', 454, 16, 470, -1, 10),
(1503, '地址总线是一种计算机总线，是CPU或有直接内存存取能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。数据总线用于传送数据信息，是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。。', -1, '2018-06-16', 454, 17, 470, -1, 0),
(1504, '程序设计语言：根据预先定义的规则（语法）而写出的预定语句的集合。程序：按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言用来书写程序。', 1, '2018-06-16', 454, 18, 470, -1, -1),
(1505, '指令是由0和1组成的二进制代码串，由操作码和地址码两部分构成。', 10, '2018-06-16', 455, 16, 471, -1, 10),
(1506, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一种系统总线；数据总线：用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的一种系统总线。', -1, '2018-06-16', 455, 17, 471, -1, 0),
(1507, '程序设计语言是指根据预先定义的规则而写出的预定语句的集合。\n  程序是按事先设计的功能和性能要求编制的指令序列叫做程序。 \n  程序设计语言是人与计算机之间传递信息的媒介，通过预先定义好的数字，字符，语法规则将程序设计语言中的语句与计算机可执行的指令建立映射关系i，从而计算机可以将程序设计语言翻译成可以直接执行的指令也就是程序。', 9, '2018-06-16', 455, 18, 471, -1, -1),
(1508, '指令是能够被计算机硬件直接识别的、命令计算机进行某种操作的，由0和1组成的二进制代码串。由操作码和地址码两部分组成。', 10, '2018-06-16', 456, 16, 472, -1, 10),
(1509, '地址总线：用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址。\n数据总线：用来输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 456, 17, 472, -1, 0),
(1510, '程序设计语言是用于书写计算机程序的语言。程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言是程序的表达形式，程序设计语言也是实现程序的执行者，一个程序可以用多种程序设计语言实现。', 0, '2018-06-16', 456, 18, 472, -1, -1),
(1511, '操作码和地址码', 3, '2018-06-16', 457, 16, 473, -1, 10),
(1512, '地址总线是一种用来传送想要访问（读取/写入）计算机内存组件的物理地址的计算机总线。数据总线是一种用于传送数据信息的计算机总线。', -1, '2018-06-16', 457, 17, 473, -1, 0),
(1513, '程序设计语言：用来对程序进行操作，根据规则由记号构成的记号串的总体。\n程序：一组指示计算机或其他具有讯息处理能力装置每一步动作的指令。\n程序设计语言用来书写计算机程序。', 5, '2018-06-16', 457, 18, 473, -1, -1),
(1514, '由可被计算机识别的二进制代码串构成，包括操作码与地址码两部分', 10, '2018-06-16', 458, 16, 474, -1, 10),
(1515, '地址总线：CPU用来传输地址和指定存储单元一类总线。\n数据总线：是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 458, 17, 474, -1, 0),
(1516, '程序设计语言是一组用来定义计算机程序的语法规则。程序是根据预先定义的规则而写出的预定语言的集合。程序是由程序设计语言产生的。', 4, '2018-06-16', 458, 18, 474, -1, -1),
(1517, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 459, 16, 475, -1, 10),
(1518, '地址总线是用来指定在RAM之中储存的数据的地址。数据总线是在CPU和RAM之间来回传送需要处理或储存的数据。', -1, '2018-06-16', 459, 17, 475, -1, 0),
(1519, '程序设计语言：是指根据预先定义的规则而写出的预定语句的集合。\n程序：按事先设计的功能和性能要求编制的指令序列。\n计算机将程序设计语言翻译成可以直接执行的指令也就是程序。即程序是由程序设计语言组成的。', 8, '2018-06-16', 459, 18, 475, -1, -1),
(1520, '指令包括操作码和地址码，其中地址码又分为操作数地址、操作结果的存储地址和下一条指令的地址。指令一般包括以下几类：算术运算类，逻辑运算类，传送类，程序控制类，输入输出类，其他指令类。', 10, '2018-06-16', 460, 16, 476, -1, 10),
(1521, '地址总线用来向主储存器或者输入/输出设备传送待输入/输出的数据的地址。\n数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 460, 17, 476, -1, 0),
(1522, '程序设计语言是根据预先定义的规则写出的预定语言的集合，程序是基于机器语言运行为了解决某一问题而编写的有限指令序列\n用程序语言编写的代码可以编译成程序', 7, '2018-06-16', 460, 18, 476, -1, -1),
(1523, '由操作码字段和操作数字段构成。操作码字段中的位模式指明该指令要求的基本运算，操作数字段中的位模式提供操作码指定运算的更详细的信息。', 0, '2018-06-16', 461, 16, 477, -1, 5),
(1524, '地址总线：向主存储器或输入输出设备传送待输入输出的数据地址\n数据总线：用来在输入输出设备和主存储器、主存储器和CPU之间传送数据', -1, '2018-06-16', 461, 17, 477, -1, 0),
(1525, '程序设计语言是根据事先定义的规则（语法）而写出的组成程序的预定语句\n程序是按事先设计的功能和性能要求编制的指令序列。\n程序设计语言是程序的语法', 5, '2018-06-16', 461, 18, 477, -1, -1),
(1526, '操作码和操作数', 10, '2018-06-16', 462, 16, 478, -1, 5),
(1527, '数据总线：在输入/输出设备和主存储器、主存储器和CPU之间传输数据的总线\n地址总线：向主存储器或输入/输出设备传输待输入/输出的数据的地址的总线', -1, '2018-06-16', 462, 17, 478, -1, 0),
(1528, '程序设计语言是指根据预先定义的语法规则写出的预定语句的集合，这些集合组成了程序。', 0, '2018-06-16', 462, 18, 478, -1, -1),
(1529, '由操作码和地址码构成，地址码又由操作数地址，结果储存地址和下一条指令地址组成', 9, '2018-06-16', 463, 16, 479, -1, 10),
(1530, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问计算机内存组件的物理地址。数据总线是CPU与内存或其他器件之间的数据传送的通道。', -1, '2018-06-16', 463, 17, 479, -1, 0),
(1531, '程序设计语言是用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。程序是按照工作步骤事先编排好的、具有特殊功能的指令序列。程序是由程序设计语言编成的。', 3, '2018-06-16', 463, 18, 479, -1, -1),
(1532, '操作码和操作数', 10, '2018-06-16', 464, 16, 480, -1, 5),
(1533, '地址总线：用来指定在内存中储存的数据的地址。\n数据总线：在CPU与内存之间来回传送需要处理或是需要储存的数据。', -1, '2018-06-16', 464, 17, 480, -1, 0),
(1534, '程序设计语言是用于书写计算机程序的语言，而程序则是算法的表示。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 3, '2018-06-16', 464, 18, 480, -1, -1),
(1535, '输入者输入对基本动作的改变方式，计算机将其转换成计算机能够识别和接收的信息方式（即二进制）构成指令，然后顺序地把它们送入存储器中。', 0, '2018-06-16', 465, 16, 481, -1, 0),
(1536, 'CPU通过地址总线来指定存储单元的。地址总线传送内存地址编码，给地址编码器。数据总线是CPU与存储器、CPU与I/O接口设备之间传送数据信息及指令的总线，这些信号通过数据总线往返于CPU与存储器、CPU与I/O接口设备之间。', -1, '2018-06-16', 465, 17, 481, -1, 5),
(1537, '程序设计语言用于书写计算机程序的语言。程序是指以某些程序设计语言编写的指令序列。程序是由程序设计语言编写而成的，程序使得一系列程序设计语言可以达成一定的效果。', 5, '2018-06-16', 465, 18, 481, -1, -1),
(1538, '指令由操作码和地址码构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 466, 16, 482, -1, 10),
(1539, '地址总线：传送内存地址编码，给地址译码器，是专门用来传送地址的。 数据总线：访问传送数据，用于传送数据信息。', -1, '2018-06-16', 466, 17, 482, -1, 9),
(1540, '程序是指令序列。程序设计语言是一种有“单词”，有“语法”的总体。两者之间关系：程序由设计语言边写组成。', 3, '2018-06-16', 466, 18, 482, -1, -1),
(1541, '指令由操作码和地址码两部分构成。其中操作码用来表面本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果的地址。', 3, '2018-06-16', 467, 16, 483, -1, 10),
(1542, '地址总线:CPU与存储器物理地址之间的连接。数据总线：CPU，输入输出设备，存储器之间数据得传递。', -1, '2018-06-16', 467, 17, 483, -1, 0),
(1543, '语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 0, '2018-06-16', 467, 18, 483, -1, -1),
(1544, '指令是由0和1组成的二进制代码串,由操作码和地址码两部分构成,其中操作码用来表明本条指令要求计算机完成的操作,地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址.', 8, '2018-06-16', 468, 16, 484, -1, 10),
(1545, '地址总线是一种计算机总线，是用来沟通这些单元想要访问计算机内存组件/地方的物理地址。数据总线是把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 468, 17, 484, -1, 0),
(1546, '设计语言是用于书写计算机程序的语言，程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言为程序的设计奠定了基础。', 0, '2018-06-16', 468, 18, 484, -1, -1),
(1547, '由操作吗和地址吗构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 8, '2018-06-16', 469, 16, 485, -1, 10),
(1548, '地址总线是CPU指定存储单元的方向，并且决定了CPU所能访问地最大内存空间的大小。数据总线是CPU与内存或其他器件之间的数据传送的通道，并且其宽度决定了CPU和外界的数据传送速度。', -1, '2018-06-16', 469, 17, 485, -1, 0),
(1549, '程序设计语言是用于书写计算机程序的语言，程序是一组指示计算机执行动作或做出判断的指令。', 10, '2018-06-16', 469, 18, 485, -1, -1),
(1550, '操作码和操作数', 10, '2018-06-16', 470, 16, 486, -1, 5),
(1551, '数据总线用与于在输入/输出设备和主存储器、主存储器和CPU之间传送数据；控制总线用来于传送CPU向主存储器或者输入/输出设备传送待输入/输出的数据的地址。', -1, '2018-06-16', 470, 17, 486, -1, 0),
(1552, '程序设计语言是根据预先定义的规则（语法）而写出的预定语句的集合。程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言组成程序。', 1, '2018-06-16', 470, 18, 486, -1, -1),
(1553, '指令由操作码和地址码组成。\n操作码：用来表明本条指令要求计算机完成的操作；\n操作数地址：CPU根据该地址取得所需的操作数；可能直接给出操作数，可能是内存地址，也可能是寄存器地址（即寄存器名）；\n操作结果的存储地址：将对操作数的操作结果保存在该地址中，以便再次使用；可能是内存地址，也可能是寄存器地址；\n下一条指令的地址：一般的，如果程序是顺序执行，则下一条指令的地址由程序计数器PC（存放下一条指令地址的寄存器）指出；仅当改变程序的运行顺序（转移、调用子程序）时，下条指令的地址才由转移类指令给出。\n操作数地址，操作结果的存储地址，下一条指令的地址合称为地址码', 7, '2018-06-16', 471, 16, 487, -1, 10),
(1554, '地址总线用来向存储器或者输入/输出设备传送待输入/输出的数据的地址。数据总线用来在输入/输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 471, 17, 487, -1, 0),
(1555, '程序设计语言:用于书写计算机程序的语言。\n程序:以某些程序设计语言编写，运行于某种目标结构体系上。\n关系:程序设计语言用于设计程序.', 10, '2018-06-16', 471, 18, 487, -1, -1),
(1556, '由表示计算机要完成的任务的操作码和地址码组成(操作数地址，操作结果的存储地址和下一条指令的地址)。', 10, '2018-06-16', 472, 16, 488, -1, 10),
(1557, '地址总线用来向主存储器或者输入输出设备传送待输入输出的数据的地址.\n数据总线用来在输入输出设备和主存储器,主存储器和CPU之间传送数据.', -1, '2018-06-16', 472, 17, 488, -1, 0),
(1558, '程序设计语言是用于书写计算机程序的语言，程序是一组指示计算机执行动作或做出判断的指令。', 10, '2018-06-16', 472, 18, 488, -1, -1),
(1559, '指令由操作码和地址码两部分构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 473, 16, 489, -1, 10),
(1560, '数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据；控制总线用来传送CPU向主存储器或者输入/输出设备传送待输入/输出的数据的地址。', -1, '2018-06-16', 473, 17, 489, -1, 0),
(1561, '语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 0, '2018-06-16', 473, 18, 489, -1, -1),
(1562, '由操作码和地址码构成。', 3, '2018-06-16', 474, 16, 490, -1, 10),
(1563, '地址总线是一种计算机总线，是用来沟通这些单元想要访问计算机内存组件/地方的物理地址。数据总线是把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 474, 17, 490, -1, 0),
(1564, '程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言(Programming Language)，是一组用来定义计算机程序的语法规则。它是一种被标准化的交流技巧，用来向计算机发出指令。一种计算机语言让程序员能够准确地定义计算机所需要使用的数据，并精确地定义在不同情况下所应当采取的行动。', 2, '2018-06-16', 474, 18, 490, -1, -1),
(1565, '操作码和地址码', 3, '2018-06-16', 475, 16, 491, -1, 10),
(1566, '地址总线(Address Bus)是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问(读取/写入)计算机内存组件/地方的物理地址。\n数据总线(DataBus)。规范了一个大的集成应用系统中同构系统、异构系统等方面进行数据共享和交换实现方法。 系统间数据交换标准', -1, '2018-06-16', 475, 17, 491, -1, 0),
(1567, '程序设计语言是用来书写计算机程序的语言，程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言就是用来设计程序的工具。', 7, '2018-06-16', 475, 18, 491, -1, -1),
(1568, '计算机的指令由操作码和地址码构成，其中操作码用来表明当前指令要求计算机完成的操作，地址码表示参加此次操作的操作数或操作数地址以及结果所在地址。', 10, '2018-06-16', 476, 16, 492, -1, 10),
(1569, '数据总线是用来传输设备和存储器，存储器和CPU之间数据的线路。地址总线是向存储器和输入输出设备传输数据的地址的线路。', -1, '2018-06-16', 476, 17, 492, -1, 0),
(1570, '程序设计语言是指根据预先定义的规则而写出的预定语句的集合。程序是按事先设计的功能和性能要求编制的指令序列叫做程序。程序设计语言是人与计算机之间传递信息的媒介，通过预先定义好的数字，字符，语法规则将程序设计语言中的语句与计算机可执行的指令建立映射关系i，从而计算机可以将程序设计语言翻译成可以直接执行的指令也就是程序。', 7, '2018-06-16', 476, 18, 492, -1, -1),
(1571, '操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 477, 16, 493, -1, 5),
(1572, '冯诺依曼体系下的计算机包括运算器，控制器，主存储器，输入设备和输出设备。这五大部件通过系统总线相连，地址总线和数据总线就是系统总线中的两种，其中地址总线用来向主存储器或者输入/输出设备传送待输入的数据的地址。数据总线是用来在输入/输出设备和主存储器，主存储器和CPU之间传送数据。', -1, '2018-06-16', 477, 17, 493, -1, 0),
(1573, '程序设计语言是书写计算机程序的语言，即预先规定语法的字符串的总体，而程序是是按事先设计的功能和性能要求编制的指令序列。用程序设计语言写出的一个个字符串即指令组成了程序。', 0, '2018-06-16', 477, 18, 493, -1, -1),
(1574, '指令由操作码和地址码组成', 10, '2018-06-16', 478, 16, 494, -1, 10),
(1575, '地址总线是计算机CPU、存储器及输入输出设备之间传输指令与数据的地址的通道。数据总线是CPU与内存以及输入输出设备之间传输数据的通道。', -1, '2018-06-16', 478, 17, 494, -1, 0),
(1576, '按事先设计的功能和性能要求编制的指令序列叫做程序；计算机语言是指根据预先定义的规则（语法）而写出的预定语句的集合；这些集合组成了程序。', 0, '2018-06-16', 478, 18, 494, -1, -1),
(1577, '操作码和地址码', 3, '2018-06-16', 479, 16, 495, -1, 10),
(1578, '均属于系统总线，地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址；数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 479, 17, 495, -1, 0),
(1579, '程序设计语言就是计算机语言，是按照先前定义的规则而写出的语句的集合，这些集合组成了程序。程序是由程序员按照一定规则编写的指令序列，而这个规则就是程序设计语言。', 10, '2018-06-16', 479, 18, 495, -1, -1),
(1580, '由操作码与操作数组成，用来表明本条指令要求计算机完成的操作，操作数指参加运算的数据及其所在的单元地址，是各种操作的对象。', 7, '2018-06-16', 480, 16, 496, -1, 5),
(1581, '地址总线是连接计算机CPU的单元和这些单元想要处理的存储在内存中的单元的地址的电脑总线。数据总线是CPU与内存等等结构进行数据传送的通道。', -1, '2018-06-16', 480, 17, 496, -1, 0),
(1582, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律，但不涉及这些记号的特定含义，也不涉及使用者。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义，但不涉及使用者。', 10, '2018-06-16', 480, 18, 496, -1, -1),
(1583, '操作码和地址码', 3, '2018-06-16', 481, 16, 497, -1, 10),
(1584, '地址总线：传送内存地址编码，给地址译码器。数据总线：访问传送数据，用于 CPU 与内存之间、输入/输出设备与内存之间。', -1, '2018-06-16', 481, 17, 497, -1, 9),
(1585, '语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 0, '2018-06-16', 481, 18, 497, -1, -1),
(1586, '指令由操作码、操作数地址、操作结果的存储地址、下一条指令的地址组成，是二进制代码串。', 8, '2018-06-16', 482, 16, 498, -1, 5),
(1587, '地址总线是一种计算机总线，是用来沟通这些单元想要访问计算机内存组件/地方的物理地址。数据总线是把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 482, 17, 498, -1, 0),
(1588, '按事先设计的功能和性能要求编制的指令序列叫做程序；计算机语言是指根据预先定义的规则（语法）而写出的预定语句的集合；这些集合组成了程序。', 0, '2018-06-16', 482, 18, 498, -1, -1),
(1589, '指令包括两方面的内容:操作码和地址码,操作码决定要完成的操作,地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 6, '2018-06-16', 483, 16, 499, -1, 10),
(1590, '均属于系统总线，地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址；数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 483, 17, 499, -1, 0),
(1591, '程序设计语言是标准化的形式语言，用来定义计算机程序的形式语言，通过特定的编译器转化为计算机能执行的二进制码，来精准的控制计算机。\n程序=算法+结构，是程序员使用程序设计语言运用算法写出的控制计算机的有效代码。\n程序是由程序设计语言编成的，语言是实现算法的工具，通过语句使人能够操作读懂并修改。', 6, '2018-06-16', 483, 18, 499, -1, -1),
(1592, '一条指令就是机器语言的一个语句，它是一组有意义的二进制代码，指令的基本格式如：操作码字段地址码字段其中操作码指明了指令的操作性质及功能，地址码则给出了操作数或操作数的地址。', 4, '2018-06-16', 484, 16, 500, -1, 10),
(1593, '地址总线是一种电脑总线，是控制器用来沟通它们想要访问计算机内存组件/地方的物理地址。控制器通过地址总线来指定要进行读写的存储单元,地址总线的宽度，决定了CPU的寻址范围.\n数据是控制器与内存或其他器件之间的数据传送的通道。数据总线的宽度决定了控制器和外界的数据传送速度。', -1, '2018-06-16', 484, 17, 500, -1, 0),
(1594, '程序设计语言就是指根据预先定义的算法写出的语句的集合，程序是预先编写好的一组稳定指令，程序是程序员使用程序设计语言编写的', 4, '2018-06-16', 484, 18, 500, -1, -1),
(1595, '操作码和地址码', 3, '2018-06-16', 485, 16, 501, -1, 10),
(1596, '地址总线是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址，数据总线就是计算机各部件间传递数据的公共通信干线', -1, '2018-06-16', 485, 17, 501, -1, 0),
(1597, '1. 程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 2. 按照工作步骤(算法)事先编排好的、具有特殊功能的指令序列。 3.关系： 程序设计语言是用于表达和描述程序的工具，程序是按照算法和程序设计语言规则编写的，是成果。', 5, '2018-06-16', 485, 18, 501, -1, -1),
(1598, '指令是能够被计算机识别的，0和1组成的二进制代码串。由操作码和地址码构成，操作码表明本条指令要求计算机完成的操作；地址码表示参加本次运算的操作数或者操作数地址，以及运算结果所在的地址。', 9, '2018-06-16', 486, 16, 502, -1, 10),
(1599, '地址总线是一种计算机总线，是CPU或有DMA能力的单元，用来沟通这些单元想要访问（写入或读取）计算机内存组件的物理地址。  数据总线是用来传输个功能部件之间的数据信息的双向传输总线，其位数与机器字节和存储字节有关。', -1, '2018-06-16', 486, 17, 502, -1, 0),
(1600, '程序即根据预先定义的规则而写出的预定语句的集合。', 0, '2018-06-16', 486, 18, 502, -1, -1),
(1601, '操作码，操作数，地址码。操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 6, '2018-06-16', 487, 16, 503, -1, 10),
(1602, '地址总线是输出地址信号的单向总线，能表示中央处理器CPU可直接寻址的空间大小;数据总线是用于传送数据信息的。', -1, '2018-06-16', 487, 17, 503, -1, 0),
(1603, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 1, '2018-06-16', 487, 18, 503, -1, -1),
(1604, '指令由操作码和地址码', 10, '2018-06-16', 488, 16, 504, -1, 10),
(1605, '数据总线\n\n（1） 是CPU与内存或其他器件之间的数据传送的通道。\n\n（2）数据总线的宽度决定了CPU和外界的数据传送速度。\n\n（3）每条传输线一次只能传输1位二进制数据。eg: 8根数据线一次可传送一个8位二进制数据(即一个字节)。\n\n（4）数据总线是数据线数量之和。\n地址总线\n\n（1）CPU是通过地址总线来指定存储单元的。\n\n（2）地址总线决定了cpu所能访问的最大内存空间的大小。eg: 10根地址线能访问的最大的内存为1024位二进制数据（1024个内存单元）(1B)\n\n（3）地址总线是地址线数量之和。', -1, '2018-06-16', 488, 17, 504, -1, 0),
(1606, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。', 1, '2018-06-16', 488, 18, 504, -1, -1),
(1607, '由操作码和操作数地址构成。', 10, '2018-06-16', 489, 16, 505, -1, 5),
(1608, '数据总线DB用于传送数据信息。地址总线属于一种电脑总线(一部份)，是由CPU或有DMA能力的单元，用来沟通这些单元想要存取(读取/写入)电脑内存元件/地方的实体位址。', -1, '2018-06-16', 489, 17, 505, -1, 0),
(1609, '计算机语言是指根据预先的规则（即语法）而写出的预定语句的集合，这些集合组成了程序。程序是按要求和功能设计编制的指令序列。', 0, '2018-06-16', 489, 18, 505, -1, -1),
(1610, '指令名和操作数', 10, '2018-06-16', 490, 16, 506, -1, 0),
(1611, '地址总线用来向存储器输入输出设备传送待输入输出的数据的地址；数据总线用来在输入输出设备和存储器、存储器和CPU之间传送数据。', -1, '2018-06-16', 490, 17, 506, -1, 0),
(1612, '程序设计语言是用于书写计算机程序的语言。程序是由序列组成的，告诉计算机如何完成一个具体的任务，或者说为进行某活动或过程所规定的途径。', 0, '2018-06-16', 490, 18, 506, -1, -1),
(1613, '由操作码和地址码构成', 3, '2018-06-16', 491, 16, 507, -1, 10),
(1614, '均属于系统总线，地址总线是一种计算机总线，是CPU的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。地址总线用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址；数据总线用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据。', -1, '2018-06-16', 491, 17, 507, -1, 0),
(1615, '程序设计语言是用于编写程序的具有一定语法规则的语言，程序按事先设计的功能和性能编织的指令程序', 1, '2018-06-16', 491, 18, 507, -1, -1),
(1616, '计算机的指令由操作码和地址码构成。', 10, '2018-06-16', 492, 16, 508, -1, 10),
(1617, '数据总线是用来输入输出设备和存储器、存储器和CPU之间传送数据的线路，地址总线是用来向存储器或输入输出设备传送待输入或输出的数据的地址的线路', -1, '2018-06-16', 492, 17, 508, -1, 0),
(1618, '程序设计语言是描述程序用的形式语言，程序是计算机指令的集合，程序设计语言简化了程序设计', 10, '2018-06-16', 492, 18, 508, -1, -1),
(1619, '操作码，地址码', 3, '2018-06-16', 493, 16, 509, -1, 10),
(1620, '地址总线属于一种电脑总线，是由cpu或有DMA能力的单元，用来沟通这些单元想要存取电脑内侧元件/地方的实体位址。', -1, '2018-06-16', 493, 17, 509, -1, 0),
(1621, '语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序', 0, '2018-06-16', 493, 18, 509, -1, -1),
(1622, '指令由地址码和操作码构成，其中操作码用来表明本条指令要求计算机完成的操作，地址码表示参加本次运算的操作数或者操作数地址以及运算结果所在的地址。', 7, '2018-06-16', 494, 16, 510, -1, 10),
(1623, '分别用来传递地址和数据', -1, '2018-06-16', 494, 17, 510, -1, 0),
(1624, '程序设计语言是根据预先定义的规则而写出的预定语句的集合。程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言是人与计算机之间传递信息的媒介，通过预先定义好的数字、字符、语法规则将程序设计语言中的语句与计算机可执行的指令建立映射关系，从而计算机可以将程序设计语言翻译成可以直接执行的指令，也就是程序。', 8, '2018-06-16', 494, 18, 510, -1, -1),
(1625, '操作码，地址码', 3, '2018-06-16', 495, 16, 511, -1, 10),
(1626, '地址总线是一种计算机总线，是用来沟通这些单元想要访问计算机内存组件/地方的物理地址。数据总线是把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 495, 17, 511, -1, 0),
(1627, '①计算机应包括运算器、存储器、控制器、输入和输出设备五大基本部件。  ②计算机内部应采用二进制来表示指令和数据。 每条指令一般具有一个操作码和一个地址码。其中操作码表示运算性质，地址码指出操作数在存储器中的地址。  ③将编好的程序送人内存储器中，然后启动计算机工作， 计算机勿需操作人员干预，能自动逐条取出指令和执行指令。', 0, '2018-06-16', 495, 18, 511, -1, -1),
(1628, '指令是能够被计算机硬件直接识别的、命令计算机进行某种基本操作的二进制代码串，由操作码和地址码组成。', 9, '2018-06-16', 496, 16, 512, -1, 10),
(1629, '地址总线属于一种电脑总线，是由CPU或有DMA能力的单元，用来沟通这些单元想要存取（读取/写入）电脑内存元件/地方的实体位址。 数据总线是用来输入/输出设备、主存储器和CPU之间传送数据的。', -1, '2018-06-16', 496, 17, 512, -1, 0),
(1630, '程序设计语言是根据预先设计好的规则而写出预定语序的集合，这些集合组成了程序。程序是指令的序列。', 0, '2018-06-16', 496, 18, 512, -1, -1),
(1631, '通常一条指令包括两方面的内容：操作码和操作数。操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。', 8, '2018-06-16', 497, 16, 513, -1, 5),
(1632, '地址总线是CPU或有dma能力的单元，用来沟通这些单元访问计算机物理硬件的地址。数据总线是传递数据部件间的通用通信干线。', -1, '2018-06-16', 497, 17, 513, -1, 0),
(1633, '程序设计语言：用于书写计算机程序的语言，用于表达和描述要加工的数据以及求解问题的步骤和过程。是根据预先定义的规则（语法）、由一个有限字母表上的字符构成的字符串的总体。 \n程序：指令（操作）序列。\n按照工作步骤事先编排好的、具有特殊功能的指令序列。', 7, '2018-06-16', 497, 18, 513, -1, -1),
(1634, '指令有操作码和地址码构成。', 10, '2018-06-16', 498, 16, 514, -1, 10),
(1635, '地址总线和数据总线都属于系统总线，用于连接计算机五大部件，协调完成指令所传达的操作。数据总线用于传送数据，地址总线用于传送地址。', -1, '2018-06-16', 498, 17, 514, -1, 0),
(1636, '程序设计语言是指根据预先定义的规则（语法）而写出的预定语句的集合；程序是指按事先设计的功能和性能要求编制的指令序列。程序设计语言的组成了程序。', 0, '2018-06-16', 498, 18, 514, -1, -1),
(1637, '通常一条指令包括两方面的内容：操作码和操作数，操作码决定要完成的操作，操作数指参加运算的数据及其所在的单元地址。在计算机中，操作要求和操作数地址都由二进制数码表示，分别称作操作码和地址码，整条指令以二进制编码的形式存放在存储器中。', 10, '2018-06-16', 499, 16, 515, -1, 10),
(1638, '地址总线属于一种电脑总线，是由CPU 或有DMA 能力的单元，用来沟通这些单元想要存取(读取/写入)电脑内存元件/地方的实体位址。数据总线DB用于传送数据信息。数据总线是双向三态形式的总线，即它既可以把CPU的数据传送到存储器或输入输出接口等其它部件，也可以将其它部件的数据传送到CPU。', -1, '2018-06-16', 499, 17, 515, -1, 0),
(1639, '程序设计语言是用于书写计算机程序的语言。计算机程序是指以某些程序设计语言编写，运行与某种目标结构体系上。利用程序设计语言来编写程序。', 8, '2018-06-16', 499, 18, 515, -1, -1),
(1640, '由操作码和地址码构成', 3, '2018-06-16', 500, 16, 516, -1, 10),
(1641, '地址总线是用来向主存储器或者输入/输出设备传送待输入/输出的数据的地址的一种系统总线。数据总线是用来在输入/输出设备和主存储器、主存储器和CPU之间传送数据的一种系统总线。', -1, '2018-06-16', 500, 17, 516, -1, 0),
(1642, '程序语言是用来定义计算机指令执行流程的形式化语言。程序是一个指令序列。通过程序设计语言编写指令序列，即为程序。', 9, '2018-06-16', 500, 18, 516, -1, -1),
(1643, '操作码，操作数地址，操作结果的储存地址，下一条指令的地址', 10, '2018-06-16', 501, 16, 517, -1, 5),
(1644, '地址总线是CPU或有DMA能力的单元，用来沟通这些单元想要访问（读取/写入）计算机内存组件/地方的物理地址。主板上的桥段控制器 数据从一个地方传到另一个地方控制其传输速率的称为数据总线。', -1, '2018-06-16', 501, 17, 517, -1, 0),
(1645, '程序设计语言是用于书写计算机程序的语言，程序是一个指令序列，程序设计语言用来编写程序，而编写出来的代码还需要经过编译和链接转换成计算机能读懂的二进制编码，这种指令序列就是程序。', 9, '2018-06-16', 501, 18, 517, -1, -1),
(1646, '二进制代码串', 4, '2018-06-16', 502, 16, 518, -1, 0),
(1647, '地址总线：传递内存地址的总线。数据总线：数据传递的总线。', -1, '2018-06-16', 502, 17, 518, -1, 0),
(1648, '程序设计语言用于书写计算机程序的语言。语言的基础是一组记号和一组规则。根据规则由记号构成的记号串的总体就是语言。在程序设计语言中，这些记号串就是程序。程序设计语言有3个方面的因素，即语法、语义和语用。语法表示程序的结构或形式，亦即表示构成语言的各个记号之间的组合规律，但不涉及这些记号的特定含义，也不涉及使用者。语义表示程序的含义，亦即表示按照各种方法所表示的各个记号的特定含义，但不涉及使用者。程序（program）是为实现特定目标或解决特定问题而用计算机语言编写的命令序列的集合。为实现预期目的而进行操作的一系列语句和指令。', 10, '2018-06-16', 502, 18, 518, -1, -1),
(1649, '操作码和地址码', 3, '2018-06-16', 503, 16, 519, -1, 10),
(1650, '地址总线\n（1）CPU是通过地址总线来指定存储单元的。\n（2）地址总线决定了cpu所能访问的最大内存空间的大小。\n（3）地址总线是地址线数量之和。\n数据总线\n（1） 是CPU与内存或其他器件之间的数据传送的通道。\n（2）数据总线的宽度决定了CPU和外界的数据传送速度。\n（3）每条传输线一次只能传输1位二进制数据。\n（4）数据总线是数据线数量之和。', -1, '2018-06-16', 503, 17, 519, -1, 0),
(1651, '程序设计语言是程序员输入的指令；程序是按事先设计的功能和性能要求编制的指令序列。程序设计语言翻译成指令使程序运行。', 5, '2018-06-16', 503, 18, 519, -1, -1),
(1656, '数据结构课程', 9, '2018-12-06', 504, 32, 1040, -1, -1);

-- --------------------------------------------------------

--
-- 表的结构 `operate_usernote`
--

CREATE TABLE `operate_usernote` (
  `id` int(11) NOT NULL,
  `add_time` date NOT NULL,
  `note_content` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `operate_userscore`
--

CREATE TABLE `operate_userscore` (
  `id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `add_time` date NOT NULL,
  `paper_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `operate_userscore`
--

INSERT INTO `operate_userscore` (`id`, `total`, `add_time`, `paper_id`, `user_id`) VALUES
(1, 100, '2017-04-04', 2, 2),
(2, 0, '2017-04-04', 2, 2),
(3, 0, '2017-04-04', 2, 2),
(4, 100, '2017-04-04', 2, 2),
(5, 100, '2017-04-04', 2, 2),
(6, 100, '2017-04-04', 2, 2),
(7, 100, '2017-04-04', 2, 2),
(8, 100, '2017-04-04', 2, 2),
(9, 100, '2017-04-04', 2, 2),
(10, 100, '2017-04-06', 2, 2),
(11, 100, '2017-04-10', 2, 2),
(12, 100, '2017-04-10', 2, 2),
(13, 100, '2017-04-10', 2, 2),
(14, 75, '2017-04-10', 2, 2),
(15, 0, '2018-03-18', 2, 10),
(16, 0, '2018-03-18', 1, 10);

-- --------------------------------------------------------

--
-- 表的结构 `users_alloweduser`
--

CREATE TABLE `users_alloweduser` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users_banner`
--

CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users_emailrevifyrecord`
--

CREATE TABLE `users_emailrevifyrecord` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_alive` tinyint(1) NOT NULL,
  `send_type` varchar(10) NOT NULL,
  `send_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users_emailrevifyrecord`
--

INSERT INTO `users_emailrevifyrecord` (`id`, `code`, `email`, `is_alive`, `send_type`, `send_time`) VALUES
(1, 'p3ppbfGfBUwNn4uH', 'sqr129@163.com', 1, 'register', '2018-03-11'),
(2, 'rwZD08tJzEE9L4FG', 'sqr123@163.com', 1, 'register', '2018-03-11'),
(3, 'rXdJtw6snOg4Nl7o', 'sqr124@163.com', 1, 'register', '2018-03-11'),
(4, 'gsx3Tx08gmLCIMNZ', 'sqr1287@163.com', 1, 'register', '2018-03-11'),
(5, '4Bmhd1DVkS13xisS', 'sqr126@163.com', 1, 'register', '2018-03-11'),
(6, 'W8sKKfVha2AV10CC', 'sqr1288@163.com', 1, 'register', '2018-03-31'),
(7, 'WufuLDOaa9TMiMEm', 'sqr1282@163.com', 1, 'register', '2018-03-31'),
(8, 'svJic6TAHAeszI1Z', 'sqr1284@163.com', 1, 'register', '2018-03-31'),
(9, 'semlnNLzVw1jZAa4', 'sqr1296@163.com', 1, 'register', '2018-03-31'),
(10, 'XqK8aUvt8Jgimgx6', 'sqr129341@163.com', 1, 'register', '2018-03-31'),
(11, '53lZ9eV0bAVP2NLg', '1000000100@qq.com', 1, 'register', '2018-06-16'),
(12, '7h4GflHdDXrV4EZz', '1000000101@qq.com', 1, 'register', '2018-06-16'),
(13, 'dxDBwztQME18Eu17', '1000000102@qq.com', 1, 'register', '2018-06-16'),
(14, '8IJ7uTeDtXQji4vj', '1000000103@qq.com', 1, 'register', '2018-06-16'),
(15, 'VefiXtCpKQ5tSQRR', '1000000104@qq.com', 1, 'register', '2018-06-16'),
(16, 'txUkX0UVSJuIgShh', '1000000105@qq.com', 1, 'register', '2018-06-16'),
(17, 'tZuuW5zcCpJoWcZA', '1000000106@qq.com', 1, 'register', '2018-06-16'),
(18, '16dtTTxpWNPJmkMG', '1000000107@qq.com', 1, 'register', '2018-06-16'),
(19, '7pQm6UVVWOwdp7l5', '1000000108@qq.com', 1, 'register', '2018-06-16'),
(20, '1HRlXz90rCZMNc1z', '1000000109@qq.com', 1, 'register', '2018-06-16'),
(21, 'bCoFbSCWLZjWwnuE', '1000000110@qq.com', 1, 'register', '2018-06-16'),
(22, 'DjT6I1kekQtsxPWi', '1000000111@qq.com', 1, 'register', '2018-06-16'),
(23, 'JX8M648LmgPLa69g', '1000000112@qq.com', 1, 'register', '2018-06-16'),
(24, '7ml82tmiViV4xXX6', '1000000113@qq.com', 1, 'register', '2018-06-16'),
(25, 'Qn07ALhI49zuWomt', '1000000114@qq.com', 1, 'register', '2018-06-16'),
(26, 'xcQf2b7IxgVgPxLI', '1000000115@qq.com', 1, 'register', '2018-06-16'),
(27, '9oG4UtrlT8dzeKLQ', '1000000116@qq.com', 1, 'register', '2018-06-16'),
(28, 'RhVbaVAjAnoLg00o', '1000000117@qq.com', 1, 'register', '2018-06-16'),
(29, 'af0vlwBXmKaOQdUC', '1000000118@qq.com', 1, 'register', '2018-06-16'),
(30, 'vijM1RAtbuonAQqc', '1000000119@qq.com', 1, 'register', '2018-06-16'),
(31, 'qvsU9j1sBewmNdaq', '1000000120@qq.com', 1, 'register', '2018-06-16'),
(32, 'kS9jxeVtwnCdw9II', '1000000121@qq.com', 1, 'register', '2018-06-16'),
(33, 'gBpbhMpeV54A9Xha', '1000000122@qq.com', 1, 'register', '2018-06-16'),
(34, '5KXzzQKQUPfOcc4u', '1000000123@qq.com', 1, 'register', '2018-06-16'),
(35, 'RjwGFlslfQxorM2o', '1000000124@qq.com', 1, 'register', '2018-06-16'),
(36, 't2CqzN1lXGjDUm7a', '1000000125@qq.com', 1, 'register', '2018-06-16'),
(37, 'cBJJc2nuGLf6ZApd', '1000000126@qq.com', 1, 'register', '2018-06-16'),
(38, 'LTrgG23DdCtVojH7', '1000000127@qq.com', 1, 'register', '2018-06-16'),
(39, 'U9aqR4AfEcdm9LkL', '1000000128@qq.com', 1, 'register', '2018-06-16'),
(40, 'EFNWMgxv6bKtxBTe', '1000000129@qq.com', 1, 'register', '2018-06-16'),
(41, 'Df92I3c53PT2rXlF', '1000000130@qq.com', 1, 'register', '2018-06-16'),
(42, '4vh0azS5qvkG1dlK', '1000000131@qq.com', 1, 'register', '2018-06-16'),
(43, 'p95158Fcs0imD1DU', '1000000132@qq.com', 1, 'register', '2018-06-16'),
(44, 'ihEekvvVLfhpzREO', '1000000133@qq.com', 1, 'register', '2018-06-16'),
(45, 'zTev31GLarsVjUFk', '1000000134@qq.com', 1, 'register', '2018-06-16'),
(46, 'tAtdJPwqXHOs71ID', '1000000135@qq.com', 1, 'register', '2018-06-16'),
(47, '4sPuPU862FbMSVis', '1000000136@qq.com', 1, 'register', '2018-06-16'),
(48, 'vNKxerF54rrSw4kZ', '1000000137@qq.com', 1, 'register', '2018-06-16'),
(49, '8UeOUJ7KRBpswF7x', '1000000138@qq.com', 1, 'register', '2018-06-16'),
(50, 'PW3PZj5rG5AqvAGa', '1000000139@qq.com', 1, 'register', '2018-06-16'),
(51, '4EuzdxGZQ4fK3vQS', '1000000140@qq.com', 1, 'register', '2018-06-16'),
(52, '4EVS3bWFemJ0viHu', '1000000141@qq.com', 1, 'register', '2018-06-16'),
(53, '9psmtj74FrtgVKt4', '1000000142@qq.com', 1, 'register', '2018-06-16'),
(54, 'cfTR60zmLueMVKgX', '1000000143@qq.com', 1, 'register', '2018-06-16'),
(55, 'klhH9xX6c3MEGSj5', '1000000144@qq.com', 1, 'register', '2018-06-16'),
(56, 'f7JWB7z7X86FwlFj', '1000000145@qq.com', 1, 'register', '2018-06-16'),
(57, 'BU5X0EfWMVbCrXX7', '1000000146@qq.com', 1, 'register', '2018-06-16'),
(58, '8rTRwaqnP1pU5bjh', '1000000147@qq.com', 1, 'register', '2018-06-16'),
(59, 'v3DailcLaOjeMp2s', '1000000148@qq.com', 1, 'register', '2018-06-16'),
(60, 'HSFIrXF8s6Jklegn', '1000000149@qq.com', 1, 'register', '2018-06-16'),
(61, 'L1PfV2QesdeFRsGj', '1000000150@qq.com', 1, 'register', '2018-06-16'),
(62, 'Hbjnz20k0mx1vch4', '1000000151@qq.com', 1, 'register', '2018-06-16'),
(63, 'doUD3qSm8MnI3ajh', '1000000152@qq.com', 1, 'register', '2018-06-16'),
(64, 'WO5kL04QEfI0T9xH', '1000000153@qq.com', 1, 'register', '2018-06-16'),
(65, 'GHPGNx5IH5RZ488M', '1000000154@qq.com', 1, 'register', '2018-06-16'),
(66, 'DD7noEeEZQXLQl98', '1000000155@qq.com', 1, 'register', '2018-06-16'),
(67, 'ieqXVAVkpv2sTb1m', '1000000156@qq.com', 1, 'register', '2018-06-16'),
(68, 'LZhjk5ZaAFwCxPtk', '1000000157@qq.com', 1, 'register', '2018-06-16'),
(69, 'uRDEJ8CSPxdEgEJP', '1000000158@qq.com', 1, 'register', '2018-06-16'),
(70, 'N8GkITJegnR34ESN', '1000000159@qq.com', 1, 'register', '2018-06-16'),
(71, 'kG66SDHKew4AIDOs', '1000000160@qq.com', 1, 'register', '2018-06-16'),
(72, '0fvO0IEQPi8lLHg6', '1000000161@qq.com', 1, 'register', '2018-06-16'),
(73, 'IASjETIJbawB7DsC', '1000000162@qq.com', 1, 'register', '2018-06-16'),
(74, '2Z1TIQM4nZOb6vud', '1000000163@qq.com', 1, 'register', '2018-06-16'),
(75, '3Q282mnNeudQHUor', '1000000164@qq.com', 1, 'register', '2018-06-16'),
(76, 'CMQ3UO5OvamfL49H', '1000000165@qq.com', 1, 'register', '2018-06-16'),
(77, 'F2s2zTvIgZfz3Rhf', '1000000166@qq.com', 1, 'register', '2018-06-16'),
(78, 'B4Ox67liZQfXAR4l', '1000000167@qq.com', 1, 'register', '2018-06-16'),
(79, 'aKs25QwEcFGHz9fr', '1000000168@qq.com', 1, 'register', '2018-06-16'),
(80, 'p19k4ZVolEpboKWe', '1000000169@qq.com', 1, 'register', '2018-06-16'),
(81, 'zcrEV55PaBGBzvSe', '1000000170@qq.com', 1, 'register', '2018-06-16'),
(82, '8jSCuJctqZUztI0Q', '1000000171@qq.com', 1, 'register', '2018-06-16'),
(83, 'pMEcf7Hz9AzpseeD', '1000000172@qq.com', 1, 'register', '2018-06-16'),
(84, 'J3mXwNsircS9j7J9', '1000000173@qq.com', 1, 'register', '2018-06-16'),
(85, 'fiSUdkWa4PuuZjXn', '1000000174@qq.com', 1, 'register', '2018-06-16'),
(86, 'O7TEIkHIDHdWhbqn', '1000000175@qq.com', 1, 'register', '2018-06-16'),
(87, '1bOruo74wU0TZFh8', '1000000176@qq.com', 1, 'register', '2018-06-16'),
(88, '3ho3TkedA4nqPjNm', '1000000177@qq.com', 1, 'register', '2018-06-16'),
(89, 'Vubnm3ks8Kr4qTJz', '1000000178@qq.com', 1, 'register', '2018-06-16'),
(90, '1jNQVjgUR471WLWx', '1000000179@qq.com', 1, 'register', '2018-06-16'),
(91, '80RX2ZXdLR3mdo57', '1000000180@qq.com', 1, 'register', '2018-06-16'),
(92, 'APz2IB0nqgEB0doU', '1000000181@qq.com', 1, 'register', '2018-06-16'),
(93, 'w6IAk6iraNb3ePW7', '1000000182@qq.com', 1, 'register', '2018-06-16'),
(94, 'GxHQB38CjVfubpXd', '1000000183@qq.com', 1, 'register', '2018-06-16'),
(95, 'cu5bOn6tPBLqJVPJ', '1000000184@qq.com', 1, 'register', '2018-06-16'),
(96, '9LsfPTzHZCKGx2fc', '1000000185@qq.com', 1, 'register', '2018-06-16'),
(97, '57QSVDFMkGrIfxaC', '1000000186@qq.com', 1, 'register', '2018-06-16'),
(98, 'gjc94v1eLdCGOuAr', '1000000187@qq.com', 1, 'register', '2018-06-16'),
(99, 'xN0KoZQNPvkeGeOJ', '1000000188@qq.com', 1, 'register', '2018-06-16'),
(100, 'VSewFaSbtqmBZlth', '1000000189@qq.com', 1, 'register', '2018-06-16'),
(101, 'Epx31vDvc4tIVgWs', '1000000190@qq.com', 1, 'register', '2018-06-16'),
(102, 'Pj4a5Pptz3NRsN49', '1000000191@qq.com', 1, 'register', '2018-06-16'),
(103, 'CfAsGjikp7Pfbrbf', '1000000192@qq.com', 1, 'register', '2018-06-16'),
(104, 'qfCRGkIdVMkz8jxX', '1000000193@qq.com', 1, 'register', '2018-06-16'),
(105, 'jvJdw2Bgo8R0jq5J', '1000000194@qq.com', 1, 'register', '2018-06-16'),
(106, 'dutfWikfZaiJE3f7', '1000000195@qq.com', 1, 'register', '2018-06-16'),
(107, '6wN8jvkhcqtiX3hj', '1000000196@qq.com', 1, 'register', '2018-06-16'),
(108, 'kqRBXCh8mZ42RKLc', '1000000197@qq.com', 1, 'register', '2018-06-16'),
(109, 'bJKxLvQKZFspoQtm', '1000000198@qq.com', 1, 'register', '2018-06-16'),
(110, 'Q5kBiLJpqJCWDLOc', '1000000199@qq.com', 1, 'register', '2018-06-16'),
(111, '0c84V1ipIflRfAIZ', '1000000200@qq.com', 1, 'register', '2018-06-16'),
(112, 'ng0qtxog0a4BTQpF', '1000000201@qq.com', 1, 'register', '2018-06-16'),
(113, 'kEHWbRdwGFk9DN0e', '1000000202@qq.com', 1, 'register', '2018-06-16'),
(114, '8RfAUaC22aKuwZKE', '1000000203@qq.com', 1, 'register', '2018-06-16'),
(115, 'jo9j1JgNpsAf5ZCD', '1000000204@qq.com', 1, 'register', '2018-06-16'),
(116, 'jT8LDwgTTWNhkGWz', '1000000205@qq.com', 1, 'register', '2018-06-16'),
(117, 'qEw4uBzBOVgslcGl', '1000000206@qq.com', 1, 'register', '2018-06-16'),
(118, 'aclpvo31fA5ScsWs', '1000000207@qq.com', 1, 'register', '2018-06-16'),
(119, 'ON9EdUdF8iIU0frK', '1000000208@qq.com', 1, 'register', '2018-06-16'),
(120, 'EnAGsDE0Sprrof5K', '1000000209@qq.com', 1, 'register', '2018-06-16'),
(121, 'giqCOQxpZKlRJDZC', '1000000210@qq.com', 1, 'register', '2018-06-16'),
(122, 'MJdBuT83om6jRJm9', '1000000211@qq.com', 1, 'register', '2018-06-16'),
(123, '7dtsnne3cuxuKNzG', '1000000212@qq.com', 1, 'register', '2018-06-16'),
(124, 'kRFQ4AV5UtHBUGo1', '1000000213@qq.com', 1, 'register', '2018-06-16'),
(125, 'BoV4oUmQ4P51IBBV', '1000000214@qq.com', 1, 'register', '2018-06-16'),
(126, 'uhJ1P2AlxlKthZgj', '1000000215@qq.com', 1, 'register', '2018-06-16'),
(127, 'Sz9f8IDfEc1ObT5J', '1000000216@qq.com', 1, 'register', '2018-06-16'),
(128, 'pWox1PzOBbMpSZut', '1000000217@qq.com', 1, 'register', '2018-06-16'),
(129, 'vs72flpeG4ljZDMz', '1000000218@qq.com', 1, 'register', '2018-06-16'),
(130, 'oaKLiUd87jS35KNp', '1000000219@qq.com', 1, 'register', '2018-06-16'),
(131, 'GM1OpFZ5J0WbAVCh', '1000000220@qq.com', 1, 'register', '2018-06-16'),
(132, '02qhkA8VmZuhomIW', '1000000221@qq.com', 1, 'register', '2018-06-16'),
(133, 'gRCrjLppKg5SDP9r', '1000000222@qq.com', 1, 'register', '2018-06-16'),
(134, '2K90RrRzcsJIRJt2', '1000000223@qq.com', 1, 'register', '2018-06-16'),
(135, 'fojGo5BMVEWqFlo5', '1000000224@qq.com', 1, 'register', '2018-06-16'),
(136, '1Uw8NZruSkdu8ToX', '1000000225@qq.com', 1, 'register', '2018-06-16'),
(137, '9aPIKxeEg2AxE8AQ', '1000000226@qq.com', 1, 'register', '2018-06-16'),
(138, 'wGcCFrBJP0ALjSMh', '1000000227@qq.com', 1, 'register', '2018-06-16'),
(139, '6uCiQAvPcUIG6LPN', '1000000228@qq.com', 1, 'register', '2018-06-16'),
(140, 'fgcmgXwbGROkaTZe', '1000000229@qq.com', 1, 'register', '2018-06-16'),
(141, 'cHDLgM99edaV8FZE', '1000000230@qq.com', 1, 'register', '2018-06-16'),
(142, 'zMnZ8BA3z1Ei0m0a', '1000000231@qq.com', 1, 'register', '2018-06-16'),
(143, 'UKrflIipGtEfvnS9', '1000000232@qq.com', 1, 'register', '2018-06-16'),
(144, 'gpGhF5zABnPNR2k6', '1000000233@qq.com', 1, 'register', '2018-06-16'),
(145, 'Hn4VsJ26WQoVhX8d', '1000000234@qq.com', 1, 'register', '2018-06-16'),
(146, 'SOZKqeO7wBlGbT9u', '1000000235@qq.com', 1, 'register', '2018-06-16'),
(147, 'Rb1E3K32NWhhFg5n', '1000000236@qq.com', 1, 'register', '2018-06-16'),
(148, 'kL32jrBmQgXh7CCe', '1000000237@qq.com', 1, 'register', '2018-06-16'),
(149, 'hr0C32IODdDTGzk6', '1000000238@qq.com', 1, 'register', '2018-06-16'),
(150, 'jj0pA4bGcpU9mPxv', '1000000239@qq.com', 1, 'register', '2018-06-16'),
(151, 'onkhdEDeSA1aGD03', '1000000240@qq.com', 1, 'register', '2018-06-16'),
(152, 'VMbBX8uTXLpGZgAr', '1000000241@qq.com', 1, 'register', '2018-06-16'),
(153, 'XxpPNCXss8QIDZXt', '1000000242@qq.com', 1, 'register', '2018-06-16'),
(154, 'XZmp2vIaSXkxor9u', '1000000243@qq.com', 1, 'register', '2018-06-16'),
(155, 'zlR0dw3xXqXqHf4U', '1000000244@qq.com', 1, 'register', '2018-06-16'),
(156, 'JtF1sEkUtRg2PGFe', '1000000245@qq.com', 1, 'register', '2018-06-16'),
(157, 'ORAsO7qZpLSNnknq', '1000000246@qq.com', 1, 'register', '2018-06-16'),
(158, 'cWxX8witKbJWW3Le', '1000000247@qq.com', 1, 'register', '2018-06-16'),
(159, 'RtBX5pVLafM4DQgv', '1000000248@qq.com', 1, 'register', '2018-06-16'),
(160, 'lijLjnqVRFQR1Z75', '1000000249@qq.com', 1, 'register', '2018-06-16'),
(161, 'Mb6w7q4k8PPlASLQ', '1000000250@qq.com', 1, 'register', '2018-06-16'),
(162, 'ZTzhQcH9aCkUKzQi', '1000000251@qq.com', 1, 'register', '2018-06-16'),
(163, 'aujjv5pMpuLHJMCJ', '1000000252@qq.com', 1, 'register', '2018-06-16'),
(164, 'GBf3NkTg2lgR6mQl', '1000000253@qq.com', 1, 'register', '2018-06-16'),
(165, '4ZuDsmuCS3gEAmek', '1000000254@qq.com', 1, 'register', '2018-06-16'),
(166, 'vsWFgl8dndI98UP2', '1000000255@qq.com', 1, 'register', '2018-06-16'),
(167, 'C4GTqnXld2VCIVfk', '1000000256@qq.com', 1, 'register', '2018-06-16'),
(168, 'jQqdWpW23IE340HZ', '1000000257@qq.com', 1, 'register', '2018-06-16'),
(169, 'VGfmKchxVjKekfaJ', '1000000258@qq.com', 1, 'register', '2018-06-16'),
(170, 'DEaxUXZ8npOBOm9h', '1000000259@qq.com', 1, 'register', '2018-06-16'),
(171, 'fz9nNx4FRoSop89W', '1000000260@qq.com', 1, 'register', '2018-06-16'),
(172, 'HWx6FhsHqhRi9s15', '1000000261@qq.com', 1, 'register', '2018-06-16'),
(173, 'NbJxKgscVFMQ529X', '1000000262@qq.com', 1, 'register', '2018-06-16'),
(174, '5TzXPNTbUXSWjJKq', '1000000263@qq.com', 1, 'register', '2018-06-16'),
(175, 'kO9P70bF7Xi4OKqv', '1000000264@qq.com', 1, 'register', '2018-06-16'),
(176, 'rOIbLuLT5rCaAVvU', '1000000265@qq.com', 1, 'register', '2018-06-16'),
(177, 'L2Fpj43J7n1W2Dl7', '1000000266@qq.com', 1, 'register', '2018-06-16'),
(178, '8VA4kO8niokGi3jJ', '1000000267@qq.com', 1, 'register', '2018-06-16'),
(179, 'OtPmgZorJA6kEWoZ', '1000000268@qq.com', 1, 'register', '2018-06-16'),
(180, 'kuPoLwOVQkHJ2CA2', '1000000269@qq.com', 1, 'register', '2018-06-16'),
(181, 'mjNKEoAbIS5vlR3r', '1000000270@qq.com', 1, 'register', '2018-06-16'),
(182, 'jttsPUAI0SGbqkeG', '1000000271@qq.com', 1, 'register', '2018-06-16'),
(183, 'B7O0wVdoa2X0LtIZ', '1000000272@qq.com', 1, 'register', '2018-06-16'),
(184, 'aTJj4TPx2zbWLwF5', '1000000273@qq.com', 1, 'register', '2018-06-16'),
(185, 'ZJVsN8xPxOGz1E3A', '1000000274@qq.com', 1, 'register', '2018-06-16'),
(186, 'GVUrp4XNEm5Rhpvi', '1000000275@qq.com', 1, 'register', '2018-06-16'),
(187, 'mop5Hbq8PT5nmDV4', '1000000276@qq.com', 1, 'register', '2018-06-16'),
(188, 'xrunlbzlJnx4Aegp', '1000000277@qq.com', 1, 'register', '2018-06-16'),
(189, 'GnKStSj1DE3cSaWh', '1000000278@qq.com', 1, 'register', '2018-06-16'),
(190, 'Czqfwz7TB7IJ7bd5', '1000000279@qq.com', 1, 'register', '2018-06-16'),
(191, 'XeBpp4kuh7bgDlIN', '1000000280@qq.com', 1, 'register', '2018-06-16'),
(192, 'xtz3f1BxiCHJDfqA', '1000000281@qq.com', 1, 'register', '2018-06-16'),
(193, 'Pj64V42JEDTGDqge', '1000000282@qq.com', 1, 'register', '2018-06-16'),
(194, 'Lt7ptT8ZpJRSxQRb', '1000000283@qq.com', 1, 'register', '2018-06-16'),
(195, 'u4VvrRNDEPTwLdPD', '1000000284@qq.com', 1, 'register', '2018-06-16'),
(196, 'jK1S8hzj1R3KgTww', '1000000285@qq.com', 1, 'register', '2018-06-16'),
(197, 'uZ6QWLEJfar4MIVt', '1000000286@qq.com', 1, 'register', '2018-06-16'),
(198, '83KZmuQTaNLntzmw', '1000000287@qq.com', 1, 'register', '2018-06-16'),
(199, 'I5O0sTqJtv751QKx', '1000000288@qq.com', 1, 'register', '2018-06-16'),
(200, 'l0wbcjmtAdkaAlpx', '1000000289@qq.com', 1, 'register', '2018-06-16'),
(201, 'NpWH2CUTxAdB2wIp', '1000000290@qq.com', 1, 'register', '2018-06-16'),
(202, '9frrbbPbf7J6ucd4', '1000000291@qq.com', 1, 'register', '2018-06-16'),
(203, 'i8zNC8KSHaWnw0nJ', '1000000292@qq.com', 1, 'register', '2018-06-16'),
(204, 'Z8cSTjNx5uTHAP8i', '1000000293@qq.com', 1, 'register', '2018-06-16'),
(205, 'GpVHpsw4Lkp7Qr2U', '1000000294@qq.com', 1, 'register', '2018-06-16'),
(206, 'h8lHGfFqejj66gDF', '1000000295@qq.com', 1, 'register', '2018-06-16'),
(207, 'J1wkQoUnwL9GSuXI', '1000000296@qq.com', 1, 'register', '2018-06-16'),
(208, 'bFGZK97zbFXTaact', '1000000297@qq.com', 1, 'register', '2018-06-16'),
(209, 'sN0JAGAnn4V7lXEk', '1000000298@qq.com', 1, 'register', '2018-06-16'),
(210, 'jF1ZU5HtENris10z', '1000000299@qq.com', 1, 'register', '2018-06-16'),
(211, '8O65AbRbF6Rk2Xa6', '1000000300@qq.com', 1, 'register', '2018-06-16'),
(212, 'wmnqwW6TrOPc8GIx', '1000000301@qq.com', 1, 'register', '2018-06-16'),
(213, 'PxOuhlep9dqmZVrr', '1000000302@qq.com', 1, 'register', '2018-06-16'),
(214, 'iL6KFKh0DKJ4xkZb', '1000000303@qq.com', 1, 'register', '2018-06-16'),
(215, 'gGuLaZNtk0J4Md05', '1000000304@qq.com', 1, 'register', '2018-06-16'),
(216, 'ZmIGQCsBkeQiAr4s', '1000000305@qq.com', 1, 'register', '2018-06-16'),
(217, 'HTVOX0lDMpUE2gXl', '1000000306@qq.com', 1, 'register', '2018-06-16'),
(218, 'S0R5INjbG2dSj0nP', '1000000307@qq.com', 1, 'register', '2018-06-16'),
(219, 'KHLetsaq1DTSPMrm', '1000000308@qq.com', 1, 'register', '2018-06-16'),
(220, '6BrxJKxbdPRDt2aH', '1000000309@qq.com', 1, 'register', '2018-06-16'),
(221, 'ApaXtVBnLgoXr9jb', '1000000310@qq.com', 1, 'register', '2018-06-16'),
(222, 'ViS3DfDWC5olE0xe', '1000000311@qq.com', 1, 'register', '2018-06-16'),
(223, 'bH2dRIpB4vdLOMpN', '1000000312@qq.com', 1, 'register', '2018-06-16'),
(224, 'pKkFOd6045DcE19Z', '1000000313@qq.com', 1, 'register', '2018-06-16'),
(225, '70QHGNlCBBxljviF', '1000000314@qq.com', 1, 'register', '2018-06-16'),
(226, 'Q1OkfiVtZbHSLBWf', '1000000315@qq.com', 1, 'register', '2018-06-16'),
(227, 'tmCXmqG9GdAOzqNp', '1000000316@qq.com', 1, 'register', '2018-06-16'),
(228, 'OqgEUO8HgaXReWsg', '1000000317@qq.com', 1, 'register', '2018-06-16'),
(229, 'KiN6PqAqmFHmRHZG', '1000000318@qq.com', 1, 'register', '2018-06-16'),
(230, 'iTSjdgChXGOcMlp7', '1000000319@qq.com', 1, 'register', '2018-06-16'),
(231, 'J3eFNSSsBUp6K5gD', '1000000320@qq.com', 1, 'register', '2018-06-16'),
(232, 'U6t4dbrWNsMu7NLp', '1000000321@qq.com', 1, 'register', '2018-06-16'),
(233, 'BbAS4lROStCZR9Ek', '1000000322@qq.com', 1, 'register', '2018-06-16'),
(234, '6uJeFSbTcFljrq15', '1000000323@qq.com', 1, 'register', '2018-06-16'),
(235, 'xrAVsXTltM8xWIGC', '1000000324@qq.com', 1, 'register', '2018-06-16'),
(236, 'nAkuqn8uvazPAIOw', '1000000325@qq.com', 1, 'register', '2018-06-16'),
(237, 'EEpDwlG0SokIQgoK', '1000000326@qq.com', 1, 'register', '2018-06-16'),
(238, 'FMseEHMS8kqIQIKl', '1000000327@qq.com', 1, 'register', '2018-06-16'),
(239, 'X5AoHLvcMBzcl6JW', '1000000328@qq.com', 1, 'register', '2018-06-16'),
(240, 'ASrB7nDpmTgk2BQF', '1000000329@qq.com', 1, 'register', '2018-06-16'),
(241, 'vn4gtqKKSvLz8vTh', '1000000330@qq.com', 1, 'register', '2018-06-16'),
(242, 'kWruwnhsQEwD0T30', '1000000331@qq.com', 1, 'register', '2018-06-16'),
(243, 'opZinfRKFFIZHJ62', '1000000332@qq.com', 1, 'register', '2018-06-16'),
(244, 'rXpJRBtqDDvNuQFx', '1000000333@qq.com', 1, 'register', '2018-06-16'),
(245, 'PcNJIqFAvArnjCIz', '1000000334@qq.com', 1, 'register', '2018-06-16'),
(246, 'Zeu3i7n6dhnl5wKT', '1000000335@qq.com', 1, 'register', '2018-06-16'),
(247, 'envw4llaNqMdXzjf', '1000000336@qq.com', 1, 'register', '2018-06-16'),
(248, 'wPFzHTqFoj4JtW2i', '1000000337@qq.com', 1, 'register', '2018-06-16'),
(249, 'dbDJo4E5CPbu7JdE', '1000000338@qq.com', 1, 'register', '2018-06-16'),
(250, 'VtAe4e0BjxcJUZOh', '1000000339@qq.com', 1, 'register', '2018-06-16'),
(251, '01eRvH1nxf1DDuhD', '1000000340@qq.com', 1, 'register', '2018-06-16'),
(252, '7ZzMXxJhSNgDU1rq', '1000000341@qq.com', 1, 'register', '2018-06-16'),
(253, 'kbBQp710brgrJcTo', '1000000342@qq.com', 1, 'register', '2018-06-16'),
(254, 'jgqfImNbM0hpdtF9', '1000000343@qq.com', 1, 'register', '2018-06-16'),
(255, 'UqgGGCnwaWF4GoSl', '1000000344@qq.com', 1, 'register', '2018-06-16'),
(256, 'Q6qDg9voT5dzKfsZ', '1000000345@qq.com', 1, 'register', '2018-06-16'),
(257, 'gbaVL77a1EHkbtxW', '1000000346@qq.com', 1, 'register', '2018-06-16'),
(258, 'WN5p9lgbSPtIIHEE', '1000000347@qq.com', 1, 'register', '2018-06-16'),
(259, 'Sh5btiRawlQLpVeu', '1000000348@qq.com', 1, 'register', '2018-06-16'),
(260, '4CuE1PX80S50QTzm', '1000000349@qq.com', 1, 'register', '2018-06-16'),
(261, 'MsuPIzPHsZGG49Xn', '1000000350@qq.com', 1, 'register', '2018-06-16'),
(262, 'S0xoQGNub86uIHgv', '1000000351@qq.com', 1, 'register', '2018-06-16'),
(263, 'PwuP2J3vf4cRxo0W', '1000000352@qq.com', 1, 'register', '2018-06-16'),
(264, 'UrBq5zzuX7wlWJ8k', '1000000353@qq.com', 1, 'register', '2018-06-16'),
(265, 'gn96A3BEudLdjeuM', '1000000354@qq.com', 1, 'register', '2018-06-16'),
(266, 'BISdZaBlK8Fg4lPr', '1000000355@qq.com', 1, 'register', '2018-06-16'),
(267, 'nSDBqnfNoXN5skDe', '1000000356@qq.com', 1, 'register', '2018-06-16'),
(268, 'fGNucEidSMCboMNU', '1000000357@qq.com', 1, 'register', '2018-06-16'),
(269, 'fki8geVEwSDKKFrn', '1000000358@qq.com', 1, 'register', '2018-06-16'),
(270, 'zZIhXkclIRFiS38M', '1000000359@qq.com', 1, 'register', '2018-06-16'),
(271, 'vhcE1LAJkjvGbnMX', '1000000360@qq.com', 1, 'register', '2018-06-16'),
(272, 'mJOqLvbp5ElJdOkd', '1000000361@qq.com', 1, 'register', '2018-06-16'),
(273, 'RDO62RqIDJTuKBnG', '1000000362@qq.com', 1, 'register', '2018-06-16'),
(274, 'hHRBJJZGiTzqzJBi', '1000000363@qq.com', 1, 'register', '2018-06-16'),
(275, 'jvu8UCn8cDSXKUad', '1000000364@qq.com', 1, 'register', '2018-06-16'),
(276, 'VBEmS8AeD1nkRSDn', '1000000365@qq.com', 1, 'register', '2018-06-16'),
(277, 'Dk9wx2AS7VLGKdR5', '1000000366@qq.com', 1, 'register', '2018-06-16'),
(278, 'ZFF4t6WFZFsnWv0m', '1000000367@qq.com', 1, 'register', '2018-06-16'),
(279, 'n5gnS3pk20PiDKrf', '1000000368@qq.com', 1, 'register', '2018-06-16'),
(280, '6j6lJmaPoblJ7hO8', '1000000369@qq.com', 1, 'register', '2018-06-16'),
(281, 'SQRtHp5UpXiIm1BC', '1000000370@qq.com', 1, 'register', '2018-06-16'),
(282, 'n3O2Z2eQcpkThK80', '1000000371@qq.com', 1, 'register', '2018-06-16'),
(283, 'CgRz9PUa0tv9NBCe', '1000000372@qq.com', 1, 'register', '2018-06-16'),
(284, 'f3ZGfU7RG4jJ3uv5', '1000000373@qq.com', 1, 'register', '2018-06-16'),
(285, '20D1cmIcwxENZR59', '1000000374@qq.com', 1, 'register', '2018-06-16'),
(286, 'G4VPZL0ag7aaNSoN', '1000000375@qq.com', 1, 'register', '2018-06-16'),
(287, 'CKojAL0bubIrRpb0', '1000000376@qq.com', 1, 'register', '2018-06-16'),
(288, 'eC1WZKhMZZijSOsQ', '1000000377@qq.com', 1, 'register', '2018-06-16'),
(289, '6F2NCKFIksJ5uo3G', '1000000378@qq.com', 1, 'register', '2018-06-16'),
(290, 'Un5jIZ4oCqhlgqkL', '1000000379@qq.com', 1, 'register', '2018-06-16'),
(291, 'qhVlPmRiXrUZxEmd', '1000000380@qq.com', 1, 'register', '2018-06-16'),
(292, 'pITbgIKgWpv2uaW8', '1000000381@qq.com', 1, 'register', '2018-06-16'),
(293, 'UISUzOs8uhgpKziV', '1000000382@qq.com', 1, 'register', '2018-06-16'),
(294, 'nHIMBbV1FUIdpgFO', '1000000383@qq.com', 1, 'register', '2018-06-16'),
(295, 'saaQdEVZatFQ3k02', '1000000384@qq.com', 1, 'register', '2018-06-16'),
(296, 'gAc6PZnQBbsS50k6', '1000000385@qq.com', 1, 'register', '2018-06-16'),
(297, 'E52wI7H8zEieJQOX', '1000000386@qq.com', 1, 'register', '2018-06-16'),
(298, 'goPujmWFOxzMD42X', '1000000387@qq.com', 1, 'register', '2018-06-16'),
(299, 'iz3SsCz2TubVZTR0', '1000000388@qq.com', 1, 'register', '2018-06-16'),
(300, 'UAlSA7XhW4q2eSlT', '1000000389@qq.com', 1, 'register', '2018-06-16'),
(301, 'b7xdw3GRZZVv0ub2', '1000000390@qq.com', 1, 'register', '2018-06-16'),
(302, '0zD2uBVEqgRpsLEp', '1000000391@qq.com', 1, 'register', '2018-06-16'),
(303, 'ct7e3hFJf2H79vbi', '1000000392@qq.com', 1, 'register', '2018-06-16'),
(304, 'A4KAo0Uw1itSD4Vn', '1000000393@qq.com', 1, 'register', '2018-06-16'),
(305, 'GTQ1jT1GZd5Ot6ds', '1000000394@qq.com', 1, 'register', '2018-06-16'),
(306, 'v54NVfABShKh6Nu4', '1000000395@qq.com', 1, 'register', '2018-06-16'),
(307, 'qvKzIM1z5ixZ5gJx', '1000000396@qq.com', 1, 'register', '2018-06-16'),
(308, 'wVPT8xumg5HOPj2o', '1000000397@qq.com', 1, 'register', '2018-06-16'),
(309, 'UiuzrzPovVLANmuS', '1000000398@qq.com', 1, 'register', '2018-06-16'),
(310, 'zkLZHgGqlvasu92A', '1000000399@qq.com', 1, 'register', '2018-06-16'),
(311, 'qk6tLcFANwLSMduO', '1000000400@qq.com', 1, 'register', '2018-06-16'),
(312, 'OhiAaeMVXi92zdq4', '1000000401@qq.com', 1, 'register', '2018-06-16'),
(313, 'nzvvsIe0jcw8oJ0p', '1000000402@qq.com', 1, 'register', '2018-06-16'),
(314, 'c3BjcrDt9tOZl7nu', '1000000403@qq.com', 1, 'register', '2018-06-16'),
(315, 'hFknsPoRflRC2XSW', '1000000404@qq.com', 1, 'register', '2018-06-16'),
(316, 'ChEe5eFnhzcJgVNz', '1000000405@qq.com', 1, 'register', '2018-06-16'),
(317, '1qaWXjazHeaCtNRo', '1000000406@qq.com', 1, 'register', '2018-06-16'),
(318, 'czsqcvB57w0TtZV9', '1000000407@qq.com', 1, 'register', '2018-06-16'),
(319, 'IqJbHH9jpz5U5U42', '1000000408@qq.com', 1, 'register', '2018-06-16'),
(320, '2Cc7RgZJ5r2fKizU', '1000000409@qq.com', 1, 'register', '2018-06-16'),
(321, '85OJzvmCWhir05nr', '1000000410@qq.com', 1, 'register', '2018-06-16'),
(322, 'Ian9v4hVhQtj6SA8', '1000000411@qq.com', 1, 'register', '2018-06-16'),
(323, 'Zw21Z2407vcC4PbD', '1000000412@qq.com', 1, 'register', '2018-06-16'),
(324, 'RGG4nCBKfAXVoz9j', '1000000413@qq.com', 1, 'register', '2018-06-16'),
(325, 'VsQJJOEip9ctNneW', '1000000414@qq.com', 1, 'register', '2018-06-16'),
(326, 'puEqHc8qqXlBmaT3', '1000000415@qq.com', 1, 'register', '2018-06-16'),
(327, 'GGPUkIpJTLx8enav', '1000000416@qq.com', 1, 'register', '2018-06-16'),
(328, 'u9038wfRnAgdfgc3', '1000000417@qq.com', 1, 'register', '2018-06-16'),
(329, 'P8fcHPcuQsJ1ucdE', '1000000418@qq.com', 1, 'register', '2018-06-16'),
(330, '9djOozeR4ALl7mG5', '1000000419@qq.com', 1, 'register', '2018-06-16'),
(331, 'UsbZ9gHdFSIKtpmL', '1000000420@qq.com', 1, 'register', '2018-06-16'),
(332, 'K0CkbxjqhdFrfOLn', '1000000421@qq.com', 1, 'register', '2018-06-16'),
(333, 'OimW72Z7NU5THq6l', '1000000422@qq.com', 1, 'register', '2018-06-16'),
(334, 'G7hZz8LT9KLpW2z4', '1000000423@qq.com', 1, 'register', '2018-06-16'),
(335, 'fTKxpMdVMs862F6P', '1000000424@qq.com', 1, 'register', '2018-06-16'),
(336, 'CobUMlMeAH5tWUxi', '1000000425@qq.com', 1, 'register', '2018-06-16'),
(337, '3qla4nd11Dw19mOD', '1000000426@qq.com', 1, 'register', '2018-06-16'),
(338, 'nUBdeho37oj7BtvG', '1000000427@qq.com', 1, 'register', '2018-06-16'),
(339, 'ONJhbAXfQXhO3bPL', '1000000428@qq.com', 1, 'register', '2018-06-16'),
(340, 'wNZHEFX9v6KFhsxT', '1000000429@qq.com', 1, 'register', '2018-06-16'),
(341, 'Zh1QJ3Ltq7FxEAkj', '1000000430@qq.com', 1, 'register', '2018-06-16'),
(342, 'CgN8BGSz2KcccUE9', '1000000431@qq.com', 1, 'register', '2018-06-16'),
(343, '3TJq0BvfLwXgDqAv', '1000000432@qq.com', 1, 'register', '2018-06-16'),
(344, '4oaIEpxGVwxTq8PI', '1000000433@qq.com', 1, 'register', '2018-06-16'),
(345, 'FgqUhlVdQjQNKUb1', '1000000434@qq.com', 1, 'register', '2018-06-16'),
(346, 'a3J5EsJGQaLIiRzB', '1000000435@qq.com', 1, 'register', '2018-06-16'),
(347, '94BaD11q2tQuUSc6', '1000000436@qq.com', 1, 'register', '2018-06-16'),
(348, 'ULbsL1vA9QbczXHD', '1000000437@qq.com', 1, 'register', '2018-06-16'),
(349, 'NC3BtBtp2ldQ47s4', '1000000438@qq.com', 1, 'register', '2018-06-16'),
(350, '0HRgwFfmzsZoFFQK', '1000000439@qq.com', 1, 'register', '2018-06-16'),
(351, 'WAdW6E10RzuBXWFs', '1000000440@qq.com', 1, 'register', '2018-06-16'),
(352, '0P3FMU14XORnVgGl', '1000000441@qq.com', 1, 'register', '2018-06-16'),
(353, 'Xvup4xsPuIIfrImZ', '1000000442@qq.com', 1, 'register', '2018-06-16'),
(354, 'G660qIJSIoikVQ2V', '1000000443@qq.com', 1, 'register', '2018-06-16'),
(355, 'zGwKWeDv1Op7851I', '1000000444@qq.com', 1, 'register', '2018-06-16'),
(356, 'RoDMfMIzZpOP1C0J', '1000000445@qq.com', 1, 'register', '2018-06-16'),
(357, 'JneLln3VCMJwKUuF', '1000000446@qq.com', 1, 'register', '2018-06-16'),
(358, 'pIT5H6qdS5tdFGjJ', '1000000447@qq.com', 1, 'register', '2018-06-16'),
(359, 'X75Omx5gVIauaRW9', '1000000448@qq.com', 1, 'register', '2018-06-16'),
(360, 'M5JQ4lcJkgE1oesi', '1000000449@qq.com', 1, 'register', '2018-06-16'),
(361, '7b8ZsucxgOvbaxpk', '1000000450@qq.com', 1, 'register', '2018-06-16'),
(362, '4doWIO5Cb3lj1zCR', '1000000451@qq.com', 1, 'register', '2018-06-16'),
(363, 'XMkxzMn6hb4x2Phv', '1000000452@qq.com', 1, 'register', '2018-06-16'),
(364, '9UZXEuRGPjtqex9h', '1000000453@qq.com', 1, 'register', '2018-06-16'),
(365, 'D0uxsSqcB6woWU4D', '1000000454@qq.com', 1, 'register', '2018-06-16'),
(366, 'nPziWpKOVn5xGM1z', '1000000455@qq.com', 1, 'register', '2018-06-16'),
(367, 'QQoNwJ3JhqL3AmvB', '1000000456@qq.com', 1, 'register', '2018-06-16'),
(368, '10v8KI9biZCgfmPB', '1000000457@qq.com', 1, 'register', '2018-06-16'),
(369, 'ENZKoQlTUA5SBNnD', '1000000458@qq.com', 1, 'register', '2018-06-16'),
(370, 'kOsxhFGLVgJssXDN', '1000000459@qq.com', 1, 'register', '2018-06-16'),
(371, 'DNVxTPR4pdpl0nhf', '1000000460@qq.com', 1, 'register', '2018-06-16'),
(372, 'NeSw4i8VbMf2HLf6', '1000000461@qq.com', 1, 'register', '2018-06-16'),
(373, 'GPlWmZ8K7Ja2obfZ', '1000000462@qq.com', 1, 'register', '2018-06-16'),
(374, 'KGbgFIdz6tIWuAj4', '1000000463@qq.com', 1, 'register', '2018-06-16'),
(375, 'GJodvgSqN5RI001C', '1000000464@qq.com', 1, 'register', '2018-06-16'),
(376, '3iNkQOaeCt7ncoDh', '1000000465@qq.com', 1, 'register', '2018-06-16'),
(377, 'vM2cz2IVooThifxE', '1000000466@qq.com', 1, 'register', '2018-06-16'),
(378, 'gvrIIl7Eurait2oh', '1000000467@qq.com', 1, 'register', '2018-06-16'),
(379, 'dz3D9fNGU5c9QNRc', '1000000468@qq.com', 1, 'register', '2018-06-16'),
(380, 'H0ZpVjf8fgirM8T1', '1000000469@qq.com', 1, 'register', '2018-06-16'),
(381, 'fQAkQWRFeEDX0RtN', '1000000470@qq.com', 1, 'register', '2018-06-16'),
(382, 'VULtTbox7jXqx7pc', '1000000471@qq.com', 1, 'register', '2018-06-16'),
(383, 'pCOST78zQxIMQR6H', '1000000472@qq.com', 1, 'register', '2018-06-16'),
(384, 'cnanrwDeDfzaAQqd', '1000000473@qq.com', 1, 'register', '2018-06-16'),
(385, 'Ctt4fLbQSAQMvFrC', '1000000474@qq.com', 1, 'register', '2018-06-16'),
(386, 'R78QIrFjd71QHIlc', '1000000475@qq.com', 1, 'register', '2018-06-16'),
(387, 'bg0cFmzdwk9tWZs1', '1000000476@qq.com', 1, 'register', '2018-06-16'),
(388, 'DDVO6dEBmV0QuOAx', '1000000477@qq.com', 1, 'register', '2018-06-16'),
(389, 'Mn7nKTf7CMGcJ3m8', '1000000478@qq.com', 1, 'register', '2018-06-16'),
(390, 'fLjeCl7pbcCeR8jN', '1000000479@qq.com', 1, 'register', '2018-06-16'),
(391, '0fpZqMSC4lCa0JLI', '1000000480@qq.com', 1, 'register', '2018-06-16'),
(392, 'CTXcTGzKx00Bl3uP', '1000000481@qq.com', 1, 'register', '2018-06-16'),
(393, '2jirLfMKlk2ZfqDw', '1000000482@qq.com', 1, 'register', '2018-06-16'),
(394, 'KOqw4z1hBLW8tmNx', '1000000483@qq.com', 1, 'register', '2018-06-16'),
(395, 'lejTcAbImMFwjMDb', '1000000484@qq.com', 1, 'register', '2018-06-16'),
(396, '4gGN97Z0CPQOLmr6', '1000000485@qq.com', 1, 'register', '2018-06-16'),
(397, 'liw8OEuLXkNHOQR3', '1000000486@qq.com', 1, 'register', '2018-06-16'),
(398, 'b5Da7c84G3I60IiQ', '1000000487@qq.com', 1, 'register', '2018-06-16'),
(399, 'K5TxlGfCZNbO4ZA6', '1000000488@qq.com', 1, 'register', '2018-06-16'),
(400, '3DQ6OhJ9ENmPN9dl', '1000000489@qq.com', 1, 'register', '2018-06-16'),
(401, 'MsH9imkJLJ2ceJmT', '1000000490@qq.com', 1, 'register', '2018-06-16'),
(402, '5HUveLahoxaN8IhO', '1000000491@qq.com', 1, 'register', '2018-06-16'),
(403, 'cLMCDEHr6QhOU63t', '1000000492@qq.com', 1, 'register', '2018-06-16'),
(404, 'mble6KKFX4BkMzrs', '1000000493@qq.com', 1, 'register', '2018-06-16'),
(405, 'aAJxJKJswTjSRq6N', '1000000494@qq.com', 1, 'register', '2018-06-16'),
(406, 'IfzotB6FUL7rXcE0', '1000000495@qq.com', 1, 'register', '2018-06-16'),
(407, 'gtSQNCocR94hVUak', '1000000496@qq.com', 1, 'register', '2018-06-16'),
(408, 'xJeA8DE5BBPziQa3', '1000000497@qq.com', 1, 'register', '2018-06-16'),
(409, '9rb13dJG4bivcSl1', '1000000498@qq.com', 1, 'register', '2018-06-16'),
(410, 'd6328WH8IS6EAmCa', '1000000499@qq.com', 1, 'register', '2018-06-16'),
(411, 'ULKZwAXnkRaRzQxH', '1000000500@qq.com', 1, 'register', '2018-06-16'),
(412, 'WXaqC6b5mVmbejC4', '1000000501@qq.com', 1, 'register', '2018-06-16'),
(413, 'ajArrGJZ6ppVoURW', '1000000502@qq.com', 1, 'register', '2018-06-16'),
(414, 'K9l4Mzw8Nx5SD1nU', '1000000503@qq.com', 1, 'register', '2018-06-16'),
(415, 'zxD1Mdx9mLHhlpd3', '1000000504@qq.com', 1, 'register', '2018-06-16'),
(416, 'JJtPIe8JlGcTTO3q', '1000000505@qq.com', 1, 'register', '2018-06-16'),
(417, 's9rOfKRSiots3oG2', '1000000506@qq.com', 1, 'register', '2018-06-16'),
(418, 'dK202Uukq5ReCFeL', '1000000507@qq.com', 1, 'register', '2018-06-16'),
(419, 'qnVLdoGwLCeMZRjj', '1000000508@qq.com', 1, 'register', '2018-06-16'),
(420, '1SjWwaZqD8wawcTD', '1000000509@qq.com', 1, 'register', '2018-06-16'),
(421, 'fekbjzO21csqzjSR', '1000000510@qq.com', 1, 'register', '2018-06-16'),
(422, 'wPaXb8HmVO1bOlKN', '1000000511@qq.com', 1, 'register', '2018-06-16'),
(423, 'dFuDm2EFqsjMNU2c', '1000000512@qq.com', 1, 'register', '2018-06-16'),
(424, 'Tv8zXvbqst27bsAr', '1000000513@qq.com', 1, 'register', '2018-06-16'),
(425, 'mkFMsTauO6hPwrmc', '1000000514@qq.com', 1, 'register', '2018-06-16'),
(426, 'FfbA34sFwBoBgHxh', '1000000515@qq.com', 1, 'register', '2018-06-16'),
(427, 'RWu3iWsDHEaMiw7f', '1000000516@qq.com', 1, 'register', '2018-06-16'),
(428, 'CTFxFFGorsoT0Xfe', '1000000517@qq.com', 1, 'register', '2018-06-16'),
(429, 'U0XpeDre9QvtcPta', '1000000518@qq.com', 1, 'register', '2018-06-16'),
(430, 'BBAqJJ8QuAIPZIcz', '1000000519@qq.com', 1, 'register', '2018-06-16'),
(431, 'nPsoLLzbjKT4uSoX', '1000000520@qq.com', 1, 'register', '2018-06-16'),
(432, 'Ql8fPqzD9EFsWFRn', '1000000521@qq.com', 1, 'register', '2018-06-16'),
(433, 'Pn6OqrEGk5KQmlOa', '1000000522@qq.com', 1, 'register', '2018-06-16'),
(434, 'pZbGkeSvlsmOfZiA', '1000000523@qq.com', 1, 'register', '2018-06-16'),
(435, 'AFlguK6LXHu5Hxwr', '1000000524@qq.com', 1, 'register', '2018-06-16'),
(436, 'son9JFfjRJodXN73', '1000000525@qq.com', 1, 'register', '2018-06-16'),
(437, 'oGWw6saB4kP3HQo0', '1000000526@qq.com', 1, 'register', '2018-06-16'),
(438, 'aZtmtMmXGO94x2Vs', '1000000527@qq.com', 1, 'register', '2018-06-16'),
(439, 'ElaaeTSH5fuid9Dt', '1000000528@qq.com', 1, 'register', '2018-06-16'),
(440, '18l0Gc2WhZvvgiFj', '1000000529@qq.com', 1, 'register', '2018-06-16'),
(441, 'Xk30f0r7JvQqhPkb', '1000000530@qq.com', 1, 'register', '2018-06-16'),
(442, 'ML3Lledk8pHKePSH', '1000000531@qq.com', 1, 'register', '2018-06-16'),
(443, 'stNchx7gUjQe0WaD', '1000000532@qq.com', 1, 'register', '2018-06-16'),
(444, '8sQbcO2bt3zzOROm', '1000000533@qq.com', 1, 'register', '2018-06-16'),
(445, 'sXd0FoPIMeKP4TXo', '1000000534@qq.com', 1, 'register', '2018-06-16'),
(446, 'n0Dmf0HtNkt5ibSh', '1000000535@qq.com', 1, 'register', '2018-06-16'),
(447, 'xshUvAvo6RVq8zEr', '1000000536@qq.com', 1, 'register', '2018-06-16'),
(448, 'pXfjdDOQHht8Kjtq', '1000000537@qq.com', 1, 'register', '2018-06-16'),
(449, 'nLLd2CXohlkbeAqp', '1000000538@qq.com', 1, 'register', '2018-06-16'),
(450, 'VKgec2aUi7vRxm3P', '1000000539@qq.com', 1, 'register', '2018-06-16'),
(451, 'A9pDlScjDkUowWGK', '1000000540@qq.com', 1, 'register', '2018-06-16'),
(452, 'c9K6RQViDl9KMTTR', '1000000541@qq.com', 1, 'register', '2018-06-16'),
(453, 'DMTRocGwCvObLhEo', '1000000542@qq.com', 1, 'register', '2018-06-16'),
(454, 'qbhQGwHT44df5ROO', '1000000543@qq.com', 1, 'register', '2018-06-16'),
(455, 'jsS7etrr53M8xhiU', '1000000544@qq.com', 1, 'register', '2018-06-16'),
(456, '4LC5jAwPWOa57Z9W', '1000000545@qq.com', 1, 'register', '2018-06-16'),
(457, 'vofDLWf5igOOdX9P', '1000000546@qq.com', 1, 'register', '2018-06-16'),
(458, 'JH9wethVUs61pGcx', '1000000547@qq.com', 1, 'register', '2018-06-16'),
(459, 'rKLk3CgoMOucFDA6', '1000000548@qq.com', 1, 'register', '2018-06-16'),
(460, 'O7QbbC4KktUjqUWg', '1000000549@qq.com', 1, 'register', '2018-06-16'),
(461, 'UsM2gUxImJe3Cfo4', '1000000550@qq.com', 1, 'register', '2018-06-16'),
(462, 'iRbJkw9DPNZjDvKV', '1000000551@qq.com', 1, 'register', '2018-06-16'),
(463, 'RIxa8ODVREhIuLju', '1000000552@qq.com', 1, 'register', '2018-06-16'),
(464, 'mbRvibEJkgLjIT8Z', '1000000553@qq.com', 1, 'register', '2018-06-16'),
(465, 'gxnJRQZube9DFhwW', '1000000554@qq.com', 1, 'register', '2018-06-16'),
(466, '7TJK9hKRFdPQk83s', '1000000555@qq.com', 1, 'register', '2018-06-16'),
(467, 'sZINPp0FVIxzEb6s', '1000000556@qq.com', 1, 'register', '2018-06-16'),
(468, 'xc8wTj1bZPDMSn8B', '1000000557@qq.com', 1, 'register', '2018-06-16'),
(469, 'Q227nmOuMBVgmh9b', '1000000558@qq.com', 1, 'register', '2018-06-16'),
(470, 'JjnzXs7gngu09h6R', '1000000559@qq.com', 1, 'register', '2018-06-16'),
(471, 'Kns6ucJgjXldlacq', '1000000560@qq.com', 1, 'register', '2018-06-16'),
(472, 'JFksBfrWkI6Z4vzv', '1000000561@qq.com', 1, 'register', '2018-06-16'),
(473, 'NrbIEf7alG3DFD6H', '1000000562@qq.com', 1, 'register', '2018-06-16'),
(474, 'WahpgjJdRiCUZDP5', '1000000563@qq.com', 1, 'register', '2018-06-16'),
(475, '9UGqpZSoHUawcraQ', '1000000564@qq.com', 1, 'register', '2018-06-16'),
(476, 'zmWVhG3rz9tZVIIO', '1000000565@qq.com', 1, 'register', '2018-06-16'),
(477, 'ARSmJkBRtOSJF0aB', '1000000566@qq.com', 1, 'register', '2018-06-16'),
(478, 'SDqg1Qlhjl45aAlk', '1000000567@qq.com', 1, 'register', '2018-06-16'),
(479, 'gpbA5z0Vpj9hwRoK', '1000000568@qq.com', 1, 'register', '2018-06-16'),
(480, '1XC9hDT6vxtFwn6e', '1000000569@qq.com', 1, 'register', '2018-06-16'),
(481, 'Hcj5GumKbcWhQgQg', '1000000570@qq.com', 1, 'register', '2018-06-16'),
(482, 'lHm9CQzRtV1jrp2U', '1000000571@qq.com', 1, 'register', '2018-06-16'),
(483, 'AWvD2IMalhRH7Gb0', '1000000572@qq.com', 1, 'register', '2018-06-16'),
(484, 'SH28SVoSZifaj1p3', '1000000573@qq.com', 1, 'register', '2018-06-16'),
(485, '2DFriiCAv5BCuexX', '1000000574@qq.com', 1, 'register', '2018-06-16'),
(486, 'DOq0VW6Di1zlQl6J', '1000000575@qq.com', 1, 'register', '2018-06-16'),
(487, 'CSqcNJpgZGoLohFk', '1000000576@qq.com', 1, 'register', '2018-06-16'),
(488, 'mSCnnaUhSqJNdQbG', '1000000577@qq.com', 1, 'register', '2018-06-16'),
(489, 'NVafBea0wjoJ8Xax', '1000000578@qq.com', 1, 'register', '2018-06-16'),
(490, 'O7kLEc6jgSzIEIrl', '1000000579@qq.com', 1, 'register', '2018-06-16'),
(491, 'g05hRUBRLi8vgGD7', '1000000580@qq.com', 1, 'register', '2018-06-16'),
(492, 'EiBtV2wwddpoN3jm', '1000000581@qq.com', 1, 'register', '2018-06-16'),
(493, 'XXAnReos8fcM4hNX', '1000000582@qq.com', 1, 'register', '2018-06-16'),
(494, 'IZKRqKXJPj6D4xcm', '1000000583@qq.com', 1, 'register', '2018-06-16'),
(495, '4oAkgv3XzCWoONaK', '1000000584@qq.com', 1, 'register', '2018-06-16'),
(496, 'LVgOUZlkd3w7qZVQ', '1000000585@qq.com', 1, 'register', '2018-06-16'),
(497, 'Zk1RZnxrC5oroAn6', '1000000586@qq.com', 1, 'register', '2018-06-16'),
(498, 'l6tBnmtXvTKFxxXs', '1000000587@qq.com', 1, 'register', '2018-06-16'),
(499, 'LVOw3Le66rDF0pGL', '1000000588@qq.com', 1, 'register', '2018-06-16'),
(500, 'ZTDTR8EKCk1A7qdr', '1000000589@qq.com', 1, 'register', '2018-06-16'),
(501, 'vpT1CaG43vgROFKR', '1000000590@qq.com', 1, 'register', '2018-06-16'),
(502, 'IEWWHvGdFnQOcwdQ', '1000000591@qq.com', 1, 'register', '2018-06-16'),
(503, 'FkZCa3Dopg6KaxzA', '1000000592@qq.com', 1, 'register', '2018-06-16'),
(504, 'jhhsHG4jADPu25x9', '1000000593@qq.com', 1, 'register', '2018-06-16'),
(505, 'xUK20s5LT0pVXTZq', '1000000594@qq.com', 1, 'register', '2018-06-16'),
(506, 'U2ifXVRV2T7JcpNo', '1000000595@qq.com', 1, 'register', '2018-06-16'),
(507, 'rI6XbcEPbDB6PbvH', '1000000596@qq.com', 1, 'register', '2018-06-16'),
(508, 'qkNz6I0Drz6nMEzB', '1000000597@qq.com', 1, 'register', '2018-06-16'),
(509, 'j5a5fNLCiUJF6SKO', '1000000598@qq.com', 1, 'register', '2018-06-16'),
(510, 'NBtpVtL64X4gBK64', '1000000599@qq.com', 1, 'register', '2018-06-16'),
(511, 'n31tA24f9QPVWtOB', '1000000600@qq.com', 1, 'register', '2018-06-16'),
(512, 'P0NnTrp3BoPk41Ss', '8888888888@163.com', 1, 'register', '2018-06-16'),
(513, '0FjqpBfsIXM451Lc', 'admin@qq.com', 1, 'register', '2018-11-06');

-- --------------------------------------------------------

--
-- 表的结构 `users_userclass`
--

CREATE TABLE `users_userclass` (
  `id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users_userclass`
--

INSERT INTO `users_userclass` (`id`, `class_name`, `count`) VALUES
(1, '14信算2', 0);

-- --------------------------------------------------------

--
-- 表的结构 `users_userprofile`
--

CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `user_class` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users_userprofile`
--

INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `mobile`, `image`, `user_class`, `role`) VALUES
(2, 'pbkdf2_sha256$24000$1FbedrjjO1KY$QJmwh1gecgu09fVwOnogVHp7thz7CjCopg9FanC+2Ss=', '2018-03-21 17:12:23', 1, 'root', '', '', '410018832@qq.com', 1, 1, '2017-04-03 23:46:00', '任志远1', '2017-04-06', 'male', '15068895421', 'static/images/head/2017/04/python_y9icNZd.png', NULL, 0),
(3, 'pbkdf2_sha256$24000$YxasBaEhP1cc$Bbb7MCDDy5LMw1uEjLPN8BHBkzWm2DJ2GnJxuNC+Xw8=', '2018-12-07 12:15:01', 0, '222222', '', '', '', 0, 1, '2018-12-06 08:44:24', '教师1', NULL, 'female', NULL, 'static/images/head/default.png', '', 0),
(4, 'pbkdf2_sha256$24000$RYQccYgpT3S9$xFM5mSf2po0hje80BvzyfLlc53drTM40R4lPzIWy8qk=', '2018-12-06 14:16:25', 0, '333333', '', '', '', 0, 1, '2018-12-06 12:14:38', '教师2', NULL, 'female', NULL, 'static/images/head/default.png', '', 0),
(20, 'pbkdf2_sha256$24000$6ZJSQ2ywVzsh$f8AnVYMa4FurtiozM7OXBm6O2bFi/+Y1u5q5ZPvrAEQ=', '2018-12-06 13:51:43', 0, '2017211153', '刘', '丁明', '', 0, 1, '2018-12-06 03:30:46', '刘丁明', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(21, 'pbkdf2_sha256$24000$1OU7COBiqxLS$WYdBiN29Hyv+mNQU/ipq+Ni6eWiccl96QHXj4yKIKys=', '2018-12-06 14:16:54', 0, '2017211123', '褚', '逸豪', '', 0, 1, '2018-12-06 03:30:46', '褚逸豪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(22, 'pbkdf2_sha256$24000$kmvGVRkS6Flq$+LA3pX3rUAc0vj3TzWqyJS/CwqNsPM9j4cEXMkx/BY8=', '2018-12-06 14:17:12', 0, '2017211151', '宋', '天元', '', 0, 1, '2018-12-06 03:30:46', '宋天元', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(23, 'pbkdf2_sha256$24000$NF1YtxCsIZT9$4elqQ3a8FnSZoVG07PT9WzWWCf8fyfINikM8d0944bI=', NULL, 0, '2017211129', '李', '国英', '', 0, 1, '2018-12-06 03:30:46', '李国英', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(24, 'pbkdf2_sha256$24000$YQxDoFFtmgCc$tMAGIwbHDeHxH3V9tfgoIWnr5ZlJgkNE6G8zA6Ytn/A=', NULL, 0, '2017211122', '靳', '依霖', '', 0, 1, '2018-12-06 03:30:47', '靳依霖', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(25, 'pbkdf2_sha256$24000$O17hBSzCB3nM$MevBq/I9pP7RcYUhXTPJqQCNfFMKj+ltDN6k2VRQDSA=', NULL, 0, '2017211135', '于', '天舒', '', 0, 1, '2018-12-06 03:30:47', '于天舒', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(26, 'pbkdf2_sha256$24000$6vqAT4Q8nnze$HxJMaMEW+K+jIhdugNjorzJma/2GM7Kl7X2k5jl3PvY=', NULL, 0, '2017211166', '张', '雨欣', '', 0, 1, '2018-12-06 03:30:47', '张雨欣', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(27, 'pbkdf2_sha256$24000$h7lVT0BTiTje$1klp6NRZVVC0nOMJ9tZnjgNX/C7EBkr1RdTXMoC1z2I=', NULL, 0, '2017211125', '王', '泓博', '', 0, 1, '2018-12-06 03:30:47', '王泓博', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(28, 'pbkdf2_sha256$24000$JYJ4s7MHGYl1$FJPVn9BZyap+NW2wPQkCBVPlccFLGs2pgzEkRJKI4aE=', NULL, 0, '2017211114', '于', '珺泽', '', 0, 1, '2018-12-06 03:30:47', '于珺泽', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(29, 'pbkdf2_sha256$24000$EWV0CCVgKdMP$9iIC2Itk7PRVeVxvczyub8Y4uf1BxKd9dY+WELBWgKo=', NULL, 0, '2017211417', '田', '维翰', '', 0, 1, '2018-12-06 03:30:47', '田维翰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(30, 'pbkdf2_sha256$24000$OZwNmpnUfGWY$Vy3nZ61bkfi0K7144u5sJN9O3h7Fni1/OsgsveD2bCE=', '2018-12-06 14:11:37', 0, '2017211389', '车', '培帅', '', 0, 1, '2018-12-06 03:30:47', '车培帅', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(31, 'pbkdf2_sha256$24000$qDApR73ApsEe$D7qp7l25YLTfy+Az4eWchiN7tpLO9bZY1U1fEyNDwKY=', NULL, 0, '2017211396', '陈', '立伟', '', 0, 1, '2018-12-06 03:30:47', '陈立伟', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(32, 'pbkdf2_sha256$24000$lba3xxCMjNuS$/EykdZ/3m/UU0GkWisISG5U4I7c/p+tPVTRJ2GNgUHQ=', '2018-12-06 07:03:37', 0, '2017211466', '于', '泽栋', '', 0, 1, '2018-12-06 03:30:47', '于泽栋', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(33, 'pbkdf2_sha256$24000$10eRZ7XNbTJX$batvbY98cz2Pel881DZQNenVFYu8IQz6v9YKf+9frps=', NULL, 0, '2017211428', '李', '卓', '', 0, 1, '2018-12-06 03:30:47', '李卓', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(34, 'pbkdf2_sha256$24000$M6cU3qe3IVik$C3hHBtUTfv+UtIufybPAp7He9eYPXruYAuvDacyChB4=', NULL, 0, '2017211463', '郭', '子铭', '', 0, 1, '2018-12-06 03:30:47', '郭子铭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(35, 'pbkdf2_sha256$24000$3209FP3almTJ$L7LffOGxHsyDj3oRDRneot0eWEwVhQ8iAI4tYvf1bFw=', NULL, 0, '2017211423', '朱', '梦玉', '', 0, 1, '2018-12-06 03:30:47', '朱梦玉', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(36, 'pbkdf2_sha256$24000$EUPu3gFMMgXw$0x2AoNeQ5z5BX7e3eTNV78kFSlbABQDYeFuuUsh0zi8=', NULL, 0, '2017211420', '高', '进', '', 0, 1, '2018-12-06 03:30:47', '高进', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(37, 'pbkdf2_sha256$24000$B2JZhuge84gn$L6uO/xnBc4/1RhQXbbMxQGSlOtKP94G6sQdBtgB9rnk=', NULL, 0, '2017211421', '陈', '志钢', '', 0, 1, '2018-12-06 03:30:47', '陈志钢', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(38, 'pbkdf2_sha256$24000$cf4IkxwPgOdN$5NOumxPJj6g3VAhC+tA/SxU3FGIT+/LuioCKj401eC8=', NULL, 0, '2017211422', '程', '宇辰', '', 0, 1, '2018-12-06 03:30:47', '程宇辰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(39, 'pbkdf2_sha256$24000$loznSs0TaLf5$Dzw4x5nA9CE7m5qfSyiUe854i194i39jOhF0ooN2s/I=', NULL, 0, '2017211429', '陈', '思源', '', 0, 1, '2018-12-06 03:30:47', '陈思源', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(40, 'pbkdf2_sha256$24000$gQjppdlt6hzH$sGia/+CmrLX+N3q0x/3YH7rxFz4kRPYtGP8C/F0SaOg=', NULL, 0, '2017211397', '胡', '春朗', '', 0, 1, '2018-12-06 03:30:47', '胡春朗', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(41, 'pbkdf2_sha256$24000$JPbxfJ8xHa5i$L2K4+z1YJv919TUe1Zxi+GERxLClUfFo2E8F6jYca2A=', '2018-12-06 14:14:31', 0, '2017211415', '胡', '安珂', '', 0, 1, '2018-12-06 03:30:47', '胡安珂', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(42, 'pbkdf2_sha256$24000$73PY0MxSUXh1$6z4FQinDNHQUGViUuwYpArQIYeGLXQa3a7dtLdMQGPo=', NULL, 0, '2017211451', '张', '祝铭', '', 0, 1, '2018-12-06 03:30:47', '张祝铭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(43, 'pbkdf2_sha256$24000$5iqCC3SkiLot$lVsMSF/H34iRVVov/fRdFTaQf4WLxHzIsThqYRnugno=', NULL, 0, '2017522129', '张', '振杰', '', 0, 1, '2018-12-06 03:30:48', '张振杰', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(44, 'pbkdf2_sha256$24000$NAsoL69hg9KL$2NRTDmllVhytzASWxp8yQE56ROX5RdzQHPDOWnkzzFc=', NULL, 0, '2017211270', '邓', '雨鑫', '', 0, 1, '2018-12-06 03:30:48', '邓雨鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(45, 'pbkdf2_sha256$24000$mW7dst8QPzl1$MZLd8XYMdUEg4w2omjfqJ62RzVJQ8bGTnpELcjATuMY=', NULL, 0, '2017211390', '刘', '昊源', '', 0, 1, '2018-12-06 03:30:48', '刘昊源', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(46, 'pbkdf2_sha256$24000$Vf4PklJIywWm$FjZajwSghAmUeHfLW1IZ71MVuZzVKWT9cDdEozufqrg=', NULL, 0, '2017211391', '李', '镇宇', '', 0, 1, '2018-12-06 03:30:48', '李镇宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(47, 'pbkdf2_sha256$24000$HrQ80v9hDOno$67L++DOvLqrLCM5UES7gxFfIRmV2RDrKNHHHFMrJwCE=', NULL, 0, '2017211438', '赵', '胤飞', '', 0, 1, '2018-12-06 03:30:48', '赵胤飞', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(48, 'pbkdf2_sha256$24000$pGaDQF0agdnU$5X7b0PSXDjFLw8cfMM+vhb1nlDPuPc8bErAN10JpMB4=', NULL, 0, '2017211484', '谢', '磊', '', 0, 1, '2018-12-06 03:30:48', '谢磊', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(49, 'pbkdf2_sha256$24000$XqGeG3FqT75N$mFTJLh4dldowXVNCaxaMF4wpRajn9q2AzsMFoYRQ9fE=', NULL, 0, '2017211416', '张', '志博', '', 0, 1, '2018-12-06 03:30:48', '张志博', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(50, 'pbkdf2_sha256$24000$nVQ3SPBhk5At$18rhScLETzXoD2ePGSt+kGU4wwE73BA15J6ArPiHCRU=', NULL, 0, '2017211147', '田', '维翰', '', 0, 1, '2018-12-06 03:30:48', '田维翰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(51, 'pbkdf2_sha256$24000$Hqd9UI68JCMu$tny8aNBR8dwLW89tZ1mAMreuTyU7Fbz8lxevsYvra6w=', NULL, 0, '2017211401', '陈', '宇琛', '', 0, 1, '2018-12-06 03:30:48', '陈宇琛', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(52, 'pbkdf2_sha256$24000$mUqOp5a1rWf1$FzPCXeVSc2u3+zkPnGMYX6FbholeamPRPcM303EAlwI=', NULL, 0, '2017522130', '赵', '家辉', '', 0, 1, '2018-12-06 03:30:48', '赵家辉', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(53, 'pbkdf2_sha256$24000$kwXMv2mXoQlX$/o0LKdpJFtxc0KFEVVhF+GCXDu99Du6f5OO8O3gp/8k=', NULL, 0, '2017211470', '郭', '子琳', '', 0, 1, '2018-12-06 03:30:48', '郭子琳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(54, 'pbkdf2_sha256$24000$NULAQsMuAZoL$Bsq19DO6+4eluEwjs+ICSs3rZRtjn/NnJgT+/NWFryI=', NULL, 0, '2017211274', '黄', '震', '', 0, 1, '2018-12-06 03:30:48', '黄震', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(55, 'pbkdf2_sha256$24000$fzyIqPaaWtMv$HczpRiH8+h93HSiN8iygx+psUKKIjpahwGhv5XFTR+c=', NULL, 0, '2017211542', '蔡', '仁杰', '', 0, 1, '2018-12-06 03:30:48', '蔡仁杰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(56, 'pbkdf2_sha256$24000$WKpLn0siy5Xw$3VFQjx8DPNz2QEOb1AtmNkoD/YZrGiv45MLb6gaIGfU=', NULL, 0, '2017211392', '陈', '卓', '', 0, 1, '2018-12-06 03:30:48', '陈卓', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(57, 'pbkdf2_sha256$24000$r8QdbAor5ytL$ffgW8qgJm5iCq3qfav5n/+Q8Zy3QzTXWTIoEr/7k+Sc=', NULL, 0, '2017211446', '黄', '炜杰', '', 0, 1, '2018-12-06 03:30:48', '黄炜杰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(58, 'pbkdf2_sha256$24000$O3Ec9q1SXe4C$MqmoJvnY8kg5YnE1BbkyPP/F4kC1U5OsT5TavkK6KAs=', NULL, 0, '2017211483', '张', '云龙', '', 0, 1, '2018-12-06 03:30:48', '张云龙', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(59, 'pbkdf2_sha256$24000$DGPRUKVj1AkV$NMR8JwfeWcNKr8ALl0dU0HnTKmq0TxCQxcO64haF4P0=', NULL, 0, '2017211482', '热', '爱拉.热依木江', '', 0, 1, '2018-12-06 03:30:49', '热爱拉.热依木江', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(60, 'pbkdf2_sha256$24000$l7qCoLLpdKpH$jTB/E2VqRUrO0TkCAz0yy3PHQq7lWa/H/p0Ha7kmoyQ=', '2018-12-06 14:18:28', 0, '2017211465', '郎', '占岭', '', 0, 1, '2018-12-06 03:30:49', '郎占岭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(61, 'pbkdf2_sha256$24000$uRVWp7MWoyt7$tdg+DKiKKqQ+aWb59raSxb7kthLbkRG5u7XJRZNATgg=', NULL, 0, '2017211488', '邓', '健源', '', 0, 1, '2018-12-06 03:30:49', '邓健源', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(62, 'pbkdf2_sha256$24000$D9IToaTjeqIh$7ICGWFfjGqY9TfO2vI0MqqhsX1FTfA02cwCw0G2MjTU=', NULL, 0, '2017211183', '田', '静悦', '', 0, 1, '2018-12-06 03:30:49', '田静悦', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(63, 'pbkdf2_sha256$24000$uVDbpT96udN2$PyW374mh7s+PnpeWUNfTQYR3kL07QyxSx6zezX3+s3c=', NULL, 0, '2017211259', '曾', '旺丁', '', 0, 1, '2018-12-06 03:30:49', '曾旺丁', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(64, 'pbkdf2_sha256$24000$RjMtfBDCmaS4$wKE74R3IQUTjF38TgsGsyCaAE4CN18pYo5kEg7JovGI=', NULL, 0, '2017211520', '王', '云轩', '', 0, 1, '2018-12-06 03:30:49', '王云轩', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(65, 'pbkdf2_sha256$24000$oUwBodfcCiEu$t5dMU+nA2vgXQ+TQvPJe+nBsMyoh6KQIg3pwt8Fk2Ec=', NULL, 0, '2016211792', '唐', '努尔·京伊斯', '', 0, 1, '2018-12-06 03:30:49', '唐努尔·京伊斯', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(66, 'pbkdf2_sha256$24000$svHxYXf0sNl7$AmeCanmSPTppeego428mqtTPLuVF8NePt4wbcgj53PI=', NULL, 0, '2017211505', '姚', '子俊', '', 0, 1, '2018-12-06 03:30:49', '姚子俊', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(67, 'pbkdf2_sha256$24000$IpA3w0NpxOVq$qAD7sh/Xr/4Am8PzZM4s5Ddv6a7nMy5ZWotYprJ6zQ8=', '2018-12-06 12:42:49', 0, '2016211799', '何', '哲宇', '', 0, 1, '2018-12-06 03:30:49', '何哲宇', NULL, 'female', NULL, 'static/images/head/default.png', '2016211306', 1),
(68, 'pbkdf2_sha256$24000$9pD4lpMDknER$ahMSviZxWGhwOXN6Y85YN7QRP+y/uyqtTIUm0aaF3as=', NULL, 0, '2017211613', '穆', '歌', '', 0, 1, '2018-12-06 03:30:49', '穆歌', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(69, 'pbkdf2_sha256$24000$V8DGlCmxhGdB$5MTGHdQipUX9x9kkxvjE69NVn1plKtTZu/htMTWaPbQ=', NULL, 0, '2017211530', '郭', '思涵', '', 0, 1, '2018-12-06 03:30:49', '郭思涵', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(70, 'pbkdf2_sha256$24000$RiBBrOGtd6bM$OIwwX/3bHIknCpCvaJTf+7VZFx6vvDt/WS2ZIFoHwRE=', '2018-12-06 14:17:40', 0, '2017211169', '高', '尚', '', 0, 1, '2018-12-06 03:30:49', '高尚', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(71, 'pbkdf2_sha256$24000$CRpt6opHRTqG$JKf7GY6Msk53ZbQBNtMYfc5/WO2QR/k+Q7gXKgyCEv0=', NULL, 0, '2017211536', '叶', '铭炜', '', 0, 1, '2018-12-06 03:30:49', '叶铭炜', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(72, 'pbkdf2_sha256$24000$rdv6IOrXVBt0$i6yaj7tRsQFC0Un5Y2e7qrCYmDTbbAOew5ZaPnuuync=', NULL, 0, '2017211361', '姚', '菁璇', '', 0, 1, '2018-12-06 03:30:49', '姚菁璇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(73, 'pbkdf2_sha256$24000$FTaUW3MNUKzi$IsEBALfA1jQ0LWZ5Yqc5Py85bIU+BCZ1n2ZkkGkl7Ms=', NULL, 0, '2017211588', '郭', '元晟', '', 0, 1, '2018-12-06 03:30:49', '郭元晟', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(74, 'pbkdf2_sha256$24000$I6JCBOC2WwE3$//cfP7B87JAnuw3iwI475lVWG9WDaz/fF5avKOsnjgs=', NULL, 0, '2017211358', '马', '骐', '', 0, 1, '2018-12-06 03:30:49', '马骐', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(75, 'pbkdf2_sha256$24000$6bUvPzxuDfHG$fOGb+0suPGJ1tp0U+zzmCLvTeDhzp5r0PXgLfX4hs/M=', NULL, 0, '2017211481', '杨', '俣', '', 0, 1, '2018-12-06 03:30:49', '杨俣', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(76, 'pbkdf2_sha256$24000$GLWZdpUgjlXN$qs3wRaTqzNBIKXO0mHEobpQjh6ay8Cor/Wuy9DksapQ=', NULL, 0, '2017211537', '任', '子恒', '', 0, 1, '2018-12-06 03:30:49', '任子恒', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(77, 'pbkdf2_sha256$24000$2s5lb5WPLJrG$awwRkScRTzRp+pYADsJwWgGfpm/8f76Y5ThaboMUcVk=', NULL, 0, '2017522133', '刘', '峰麟', '', 0, 1, '2018-12-06 03:30:49', '刘峰麟', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(78, 'pbkdf2_sha256$24000$xj3WXT2asQ9U$GTuDRvoEIVfvdwCstJNPrTQgeM+yCqO2URiCTreA0Aw=', NULL, 0, '2017211493', '胡', '塞尔', '', 0, 1, '2018-12-06 03:30:49', '胡塞尔', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(79, 'pbkdf2_sha256$24000$dx9Z63laU4tr$B3LYkI2DhKE36g0+1aFw6sCkyCyi/WLAfg6KEV6PZd4=', NULL, 0, '2017211375', '李', '英杰', '', 0, 1, '2018-12-06 03:30:50', '李英杰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(80, 'pbkdf2_sha256$24000$6j6QcFXbBPmc$PvZx37Z4zenUhzwPOKWodGyTCooxeG1yqTTtD9zg+to=', NULL, 0, '2017211216', '唐', '瑶', '', 0, 1, '2018-12-06 03:30:50', '唐瑶', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(81, 'pbkdf2_sha256$24000$1m4qyqcYHrUV$Rs5cYEQaWqYmLMp/2x/vQapBJK80U2fVfOmjukk9eKw=', NULL, 0, '2017211501', '刘', '言', '', 0, 1, '2018-12-06 03:30:50', '刘言', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(82, 'pbkdf2_sha256$24000$exgJlbmCbHAy$ReULLUglgFohDu3Pmt/0iv8qDWGdKfZDGOQDORWyVlg=', NULL, 0, '2017211509', '朱', '云飞', '', 0, 1, '2018-12-06 03:30:50', '朱云飞', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(83, 'pbkdf2_sha256$24000$9zQu430xfnTo$hgbbbNzeLckuFWQhoyQ9BAPTpEhe5Z4UTYMZ1RAN1Pw=', NULL, 0, '2017211487', '陈', '路', '', 0, 1, '2018-12-06 03:30:50', '陈路', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(84, 'pbkdf2_sha256$24000$U5PHlbGerHwE$JSF2FuJ3/prB2IMgLA6xVpDXV5xZXWT0VfJtUyHW6D0=', NULL, 0, '2017211317', '周', '佳玥', '', 0, 1, '2018-12-06 03:30:50', '周佳玥', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(85, 'pbkdf2_sha256$24000$lWXsC9s0rC9X$DE9AdAf2+P27NTYN05bVvvQBDqi4Mf2f+TBuiDVDybk=', NULL, 0, '2017211292', '江', '志航', '', 0, 1, '2018-12-06 03:30:50', '江志航', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(86, 'pbkdf2_sha256$24000$rXX9WoAJSjG4$/l84XPZcD2SeJZfcHjuBGKQOnZwGebtz/SNtQ+0tTcY=', NULL, 0, '2017211572', '付', '炫烨', '', 0, 1, '2018-12-06 03:30:50', '付炫烨', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(87, 'pbkdf2_sha256$24000$WQredLXC7wbk$kRNc/Alpdx8OI23RlGPzWuH+B/hgjYXwkxpsxfYevb8=', NULL, 0, '2017211498', '闫', '浩明', '', 0, 1, '2018-12-06 03:30:50', '闫浩明', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(88, 'pbkdf2_sha256$24000$6WSBjdt8bNv5$TqqqYslwcNxP8DvbU8IgrZ8rUNmwzOIEQTWbpzGoXXM=', NULL, 0, '2017211159', '刘', '忍', '', 0, 1, '2018-12-06 03:30:50', '刘忍', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(89, 'pbkdf2_sha256$24000$7cJG1pL5Mq1Y$zojnu+hrgvIeNK7c47iL0qhthiUszxLGZRHLhULli80=', NULL, 0, '2017211272', '王', '嘉', '', 0, 1, '2018-12-06 03:30:50', '王嘉', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(90, 'pbkdf2_sha256$24000$f7CPbgKXQke6$7sgTI1HX4bd3MvHfcjqWU9lpSn0QartQ2w4h8zoRTN0=', NULL, 0, '2017211584', '王', '兴宇', '', 0, 1, '2018-12-06 03:30:50', '王兴宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(91, 'pbkdf2_sha256$24000$c0ZGAiexqaFS$ViSKR6FEo7DZz5wbExWLP+FY1RWvzfijJS2KDavlb/o=', NULL, 0, '2017211335', '李', '子健', '', 0, 1, '2018-12-06 03:30:50', '李子健', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(92, 'pbkdf2_sha256$24000$93Ye4NqdwxI6$Lo2xCqGm3Zyx/VjdqF7Z8rJ5LhBLk/286rmmTKk5ntI=', NULL, 0, '2017211248', '刘', '兴贤', '', 0, 1, '2018-12-06 03:30:50', '刘兴贤', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(93, 'pbkdf2_sha256$24000$26iSLEiCOSDp$W+otuegAq5C/tto1wwZKBas1ABFvDOWfEHK0+UojV9g=', NULL, 0, '2017211337', '杨', '硕', '', 0, 1, '2018-12-06 03:30:50', '杨硕', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(94, 'pbkdf2_sha256$24000$irXCBEndZAoj$Wif206dv0YpuMHDHi1+I0TVxDW1rMKRcebpTDo+3+rk=', NULL, 0, '2017211332', '朱', '思宇', '', 0, 1, '2018-12-06 03:30:50', '朱思宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(95, 'pbkdf2_sha256$24000$FXj1EOuHDrVU$l/k18eqLcU+47l7N0ZrfmlA14ujzH2xScF/tnpBggTA=', NULL, 0, '2017211262', '张', '馨元', '', 0, 1, '2018-12-06 03:30:51', '张馨元', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(96, 'pbkdf2_sha256$24000$Qx3MCC1CChUH$3GqO2wriHWynQIFwJdPAWDfTtKBis6Vph683j/qsjgc=', NULL, 0, '2017211561', '袁', '帅', '', 0, 1, '2018-12-06 03:30:51', '袁帅', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(97, 'pbkdf2_sha256$24000$HrYj9LaDbIYT$yUtk0zY8UZrXK7mptTWVTd81TC4Vyjbzwq/oZkXQacQ=', NULL, 0, '2017211316', '孟', '轩平', '', 0, 1, '2018-12-06 03:30:51', '孟轩平', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(98, 'pbkdf2_sha256$24000$pELNs2LZKbqd$hclr7B6tTAHDSnWeXrf//dupP7IAAi88bDhrGyCFBC8=', NULL, 0, '2017211208', '彭', '鲜', '', 0, 1, '2018-12-06 03:30:51', '彭鲜', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(99, 'pbkdf2_sha256$24000$D7JbpTO6dm5n$eaKz7wTFahxGV6dVVoRELL2NKMIYN8voZXwKrW4w7s8=', NULL, 0, '2017211233', '谢', '晓璇', '', 0, 1, '2018-12-06 03:30:51', '谢晓璇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(100, 'pbkdf2_sha256$24000$jbdHg3kPZuuN$jDCjr6koidQg9Ig9r0g632nXvtC1xdcDLTu4I8PktxE=', NULL, 0, '2016211869', '邝', '国政', '', 0, 1, '2018-12-06 03:30:51', '邝国政', NULL, 'female', NULL, 'static/images/head/default.png', '2016211306', 1),
(101, 'pbkdf2_sha256$24000$b8CeddKgM4Zg$LHMzMea0FgkqRThrwDUXcyZzp5GWo74KOo/MVM0mA2w=', NULL, 0, '2017211608', '杜', '世航', '', 0, 1, '2018-12-06 03:30:51', '杜世航', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(102, 'pbkdf2_sha256$24000$rXWIMIXWIWQe$Nl95nLt84Hd/i+ahP4ze5ZyuyBLcNb+3a6X7EWphFDw=', NULL, 0, '2017211124', '杨', '威文', '', 0, 1, '2018-12-06 03:30:51', '杨威文', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(103, 'pbkdf2_sha256$24000$yokspaB0D2Zz$WR1jTKmy7SgzPWhiMxtPPWef6OdY1qDfkfzQLIT5NCc=', NULL, 0, '2017211341', '张', '培诚', '', 0, 1, '2018-12-06 03:30:51', '张培诚', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(104, 'pbkdf2_sha256$24000$Ui6B7CcoC5it$+pzCsaaMcKzsMhLqO3jx2Om+3S4U0/IxXMaaogFlQpE=', NULL, 0, '2017211544', '张', '逸群', '', 0, 1, '2018-12-06 03:30:51', '张逸群', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(105, 'pbkdf2_sha256$24000$J1ZA20PdYShq$XeNjlWaRnUxg8T9iWGJxZMjQhZO33pUB/N/VonEAfjI=', NULL, 0, '2017211571', '杨', '子阳', '', 0, 1, '2018-12-06 03:30:51', '杨子阳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(106, 'pbkdf2_sha256$24000$gUByuVbsxGb9$PLuRZE6yzJU7g5t3ASg3Jn9N3KxoQDihV2ZUmWR9zLE=', NULL, 0, '2017211605', '王', '远龙', '', 0, 1, '2018-12-06 03:30:51', '王远龙', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(107, 'pbkdf2_sha256$24000$60xa5jpPGOHX$+6wGc2jo5JQf8/zXm2BjulrWfHQSpo3+7qjvD+n4ecU=', NULL, 0, '2017211360', '邱', '吉', '', 0, 1, '2018-12-06 03:30:51', '邱吉', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(108, 'pbkdf2_sha256$24000$tDJIWYhqeM8M$3fC29lLrsrHMbK7RcCnPh/Tl79o0DmAwkfDDS+78ce4=', NULL, 0, '2017211445', '王', '博琛', '', 0, 1, '2018-12-06 03:30:51', '王博琛', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(109, 'pbkdf2_sha256$24000$ejZN4wOJjciB$6mnKSbx6JYKUxt8RePo+hl7OiUBZP8iss6Ja7fZ8FZU=', NULL, 0, '2017211526', '张', '涛', '', 0, 1, '2018-12-06 03:30:51', '张涛', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(110, 'pbkdf2_sha256$24000$9yV2ldjTij8u$+EdwjcIO+y8c7sM9W+WyXbAgtiqcAhko0Y2X56Mcauo=', NULL, 0, '2017211490', '奚', '工理', '', 0, 1, '2018-12-06 03:30:51', '奚工理', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(111, 'pbkdf2_sha256$24000$8blPsuzD5w2b$QCt5bYqqByeLIuC+wvwKB4VFbk7cECm0ZxGoSKw9wGU=', NULL, 0, '2017211489', '王', '帆', '', 0, 1, '2018-12-06 03:30:51', '王帆', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(112, 'pbkdf2_sha256$24000$d9eolJuuswH1$r8oxeZmYHGwADEKzmS9IpcGoFm15bKnMH1qUkc8gKrY=', NULL, 0, '2017211425', '谭', '典', '', 0, 1, '2018-12-06 03:30:51', '谭典', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(113, 'pbkdf2_sha256$24000$hy1rKSyX5nn0$9emyZp9hxQQVxooZ84yZVTAYF8SOJHJypE5KupJgb2o=', NULL, 0, '2017211203', '钟', '罡龙', '', 0, 1, '2018-12-06 03:30:52', '钟罡龙', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(114, 'pbkdf2_sha256$24000$NcDyuvd0d6OK$eBwaJ46qaHShzL8dxQIK4nYASngm2+T+A91uV/uRu/c=', NULL, 0, '2017211496', '龙', '俊天', '', 0, 1, '2018-12-06 03:30:52', '龙俊天', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(115, 'pbkdf2_sha256$24000$9njpBV93hjYV$m3CZB3zxCaG97OHswi//5YqmrX0xqbnwlz6ZHzwhqwU=', NULL, 0, '2017211577', '徐', '靖怡', '', 0, 1, '2018-12-06 03:30:52', '徐靖怡', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(116, 'pbkdf2_sha256$24000$3PRSYUOVBasi$BL/mW2rgHupj0GfrUAvaUfKZymbM4Edmekwd21JvBAQ=', NULL, 0, '2017211351', '李', '逸菲', '', 0, 1, '2018-12-06 03:30:52', '李逸菲', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(117, 'pbkdf2_sha256$24000$ORbJcDxWDnyw$09LESHW/gF+ObydbCpvAIunHH/b1NF8xsPLXB6mqsPA=', NULL, 0, '2017211589', '张', '佳睿', '', 0, 1, '2018-12-06 03:30:52', '张佳睿', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(118, 'pbkdf2_sha256$24000$RRUxIOoFVu9f$LGIsGTPkwVbHZIWZa6jG//QFrpIWbiXm+br+u3K0cy4=', NULL, 0, '2017211515', '包', '嘉杭', '', 0, 1, '2018-12-06 03:30:52', '包嘉杭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(119, 'pbkdf2_sha256$24000$z6u6PgGbUkLe$La80TnDVJChp/1l8ClvBoOveWG5Hcw3m2eFHg4nn89o=', NULL, 0, '2017211241', '王', '志高远', '', 0, 1, '2018-12-06 03:30:52', '王志高远', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(120, 'pbkdf2_sha256$24000$kdVpL160HsGO$thnJ7GLVpSqj8IFgO6TB1vc4DHNFEPr0HZSrz6R8I6Y=', NULL, 0, '2017211269', '陈', '芸', '', 0, 1, '2018-12-06 03:30:52', '陈芸', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(121, 'pbkdf2_sha256$24000$fCWZimgyU8fx$l1gOe99IHOMUlU2O2KbtgcIeDdRi4qpWtkLXX7rxNgg=', NULL, 0, '2017211232', '钟', '茗', '', 0, 1, '2018-12-06 03:30:52', '钟茗', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(122, 'pbkdf2_sha256$24000$roPOU31nQZRw$qjrthuNgb78Dr0xD4uX1S96ZFEJZdhYm8WPKcU4BMd4=', NULL, 0, '2017211115', '聂', '子昂', '', 0, 1, '2018-12-06 03:30:52', '聂子昂', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(123, 'pbkdf2_sha256$24000$ncfbjiftXFyV$5pZoyftStNryHK/I0wS0U6iVV4Ca23xykqnLZ3497QA=', NULL, 0, '2017211309', '李', '彦志', '', 0, 1, '2018-12-06 03:30:52', '李彦志', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(124, 'pbkdf2_sha256$24000$qnEcmpptZhiZ$0lX310FmvJWXJOFRQ+ZmGf3RHOo3ApJGImRk84qPuQc=', NULL, 0, '2017211283', '普', '文寅', '', 0, 1, '2018-12-06 03:30:52', '普文寅', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(125, 'pbkdf2_sha256$24000$Iuw8AW8SmWnp$5EEwnVoFS5ok+jfyf21LGVQM984WMHqEEv0SNndeOVY=', NULL, 0, '2017211555', '刘', '茂华', '', 0, 1, '2018-12-06 03:30:52', '刘茂华', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(126, 'pbkdf2_sha256$24000$QXv7tWvFnHRD$L6+g930OpmTwMday+Suvg+DC/mMih0pZNJBQsO3ejdQ=', NULL, 0, '2017211328', '王', '博', '', 0, 1, '2018-12-06 03:30:52', '王博', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(127, 'pbkdf2_sha256$24000$RW61v7WJ0a2d$/Zm5oWF4KDcGnwAchm90o9wLuoCSAOeUD9JCfciDzig=', NULL, 0, '2017211556', '牛', '雨彤', '', 0, 1, '2018-12-06 03:30:52', '牛雨彤', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(128, 'pbkdf2_sha256$24000$SS3zfsfaJBzK$dNGdJTcV6evP2ZDrHAZgDZTrJEdOTjpybVT5YC0jleA=', NULL, 0, '2017211174', '马', '玉杰', '', 0, 1, '2018-12-06 03:30:53', '马玉杰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(129, 'pbkdf2_sha256$24000$S4DpXc6f93NU$UBh1T0hvcZQ6DRwiWi/eJux5sjeiZwxOU3GToLhsXMg=', NULL, 0, '2017211557', '张', '开舜', '', 0, 1, '2018-12-06 03:30:53', '张开舜', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(130, 'pbkdf2_sha256$24000$QPCBmTinVfwW$n3hItFsV3e5/J6K+mmjg8HH1p4KHk8ixzC0WaQb4BBk=', NULL, 0, '2017211295', '张', '子鸣', '', 0, 1, '2018-12-06 03:30:53', '张子鸣', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(131, 'pbkdf2_sha256$24000$sOsvTXpWxloi$b32ED+MTFhngqFOlU+E9Aen16rtFtx+W5PHMKxmewOY=', NULL, 0, '2017211491', '张', '林林', '', 0, 1, '2018-12-06 03:30:53', '张林林', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(132, 'pbkdf2_sha256$24000$GJ8x1P6egOlc$KkQNZLjKj1UOf5ZKENOb3E+tIqklVwvk7kAlemXdG3k=', NULL, 0, '2017211517', '赵', '雨杰', '', 0, 1, '2018-12-06 03:30:53', '赵雨杰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(133, 'pbkdf2_sha256$24000$VlrQz3n22dIH$9pGzvjXMVZNcbG5yc+pMj1IYuWc1UavSNlcZGiHS/YU=', NULL, 0, '2017211242', '于', '海鑫', '', 0, 1, '2018-12-06 03:30:53', '于海鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(134, 'pbkdf2_sha256$24000$xZeIot6LB46j$XzwVTR5Asd5F7/pqlPT409X4Ff6kkQH7tyqUZ88G12I=', NULL, 0, '2017211240', '曾', '风临', '', 0, 1, '2018-12-06 03:30:53', '曾风临', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(135, 'pbkdf2_sha256$24000$hByHe3uBh2Dy$d26dTIgCTBDLuNNm4mF3hmZDrCCR47MhLXcrPM8jDO4=', NULL, 0, '2017211321', '朱', '澄亮', '', 0, 1, '2018-12-06 03:30:53', '朱澄亮', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(136, 'pbkdf2_sha256$24000$E0aNAoQxvc2z$vImVHMDpmgzq9spboSq4QqSMkCwAHr/d8j7vTt/7m0I=', NULL, 0, '2017211126', '刘', '凯鑫', '', 0, 1, '2018-12-06 03:30:53', '刘凯鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(137, 'pbkdf2_sha256$24000$ugysnvnPY1MD$D0Bcbzw5QAzEpLGh4r81r6oEDrhwpS+JnbVDs8gk9j0=', NULL, 0, '2017211336', '杨', '展齐', '', 0, 1, '2018-12-06 03:30:53', '杨展齐', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(138, 'pbkdf2_sha256$24000$LTpLQh3974lz$Gt2u6i5tyqlWmdNMbkyIpOi/VLyFjsH8Xo7TcADBz0I=', NULL, 0, '2017211404', '王', '思彤', '', 0, 1, '2018-12-06 03:30:53', '王思彤', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(139, 'pbkdf2_sha256$24000$TpB8nXqrtCrD$2exhYKhViyEIBORDppYTvJ0byJTYQots80PsOOTUV4o=', NULL, 0, '2017211443', '张', '蠡', '', 0, 1, '2018-12-06 03:30:53', '张蠡', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(140, 'pbkdf2_sha256$24000$RVYfmITkuVk8$NSbjz8WxvjGckGwsOgQvTMY9s6lOlt1holEAXuWcchQ=', NULL, 0, '2016212228', '胡', '恩瑞', '', 0, 1, '2018-12-06 03:30:53', '胡恩瑞', NULL, 'female', NULL, 'static/images/head/default.png', '2016211305', 1),
(141, 'pbkdf2_sha256$24000$6BFWBK8MHF09$6XO6v122iTP9dTzngqm9xOJpuM+ywZ8c8HPy755LSs8=', NULL, 0, '2017211553', '况', '瑞鑫', '', 0, 1, '2018-12-06 03:30:53', '况瑞鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(142, 'pbkdf2_sha256$24000$uZTE9NyAEVlp$2VqFo8wYlKeBZGYG1gXuzAsqhw7Ov7yaH2XuO5TlCdk=', NULL, 0, '2017211545', '马', '诚宇', '', 0, 1, '2018-12-06 03:30:53', '马诚宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(143, 'pbkdf2_sha256$24000$MYLPtzEGMO4E$JtKuKb3l5hwMh3Xy0sG3w29Aw90vOGXSE9J/h+b2Wfw=', NULL, 0, '2017211525', '廖', '超睿', '', 0, 1, '2018-12-06 03:30:53', '廖超睿', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(144, 'pbkdf2_sha256$24000$412ot2bHGuLj$Af8rZlAMlKjvsqQ93lI8yFD4eHvXsn/m6xvW55WufHU=', NULL, 0, '2017211574', '易', '诗蓓', '', 0, 1, '2018-12-06 03:30:53', '易诗蓓', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(145, 'pbkdf2_sha256$24000$6gclAY2RbNCb$KBEVJLIir7MS/mmQq04iMG5185fie3YDVSoIVZ0q8ZA=', NULL, 0, '2017211532', '徐', '立昂', '', 0, 1, '2018-12-06 03:30:53', '徐立昂', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(146, 'pbkdf2_sha256$24000$hNskh2HD1tqE$ylRM1KZIHu6gOdUMXetcRk37FBTSKGb+MpVccsyT2go=', NULL, 0, '2017522134', '范', '彦恺', '', 0, 1, '2018-12-06 03:30:53', '范彦恺', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(147, 'pbkdf2_sha256$24000$hY2q0QiXosqj$CvY4Bm3gMcFuIE63x628Xa2IEbCD8dzxEJdhw9yY2IA=', NULL, 0, '2017522136', '张', '鑫禹', '', 0, 1, '2018-12-06 03:30:54', '张鑫禹', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(148, 'pbkdf2_sha256$24000$vsGVsJfX5o1O$vHRmGSeSJqpDGmWo36+YtMR5pBKBZYfR10sm1/7do+0=', NULL, 0, '2017522127', '郑', '嘉琦', '', 0, 1, '2018-12-06 03:30:54', '郑嘉琦', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(149, 'pbkdf2_sha256$24000$NSBQ6l58Yjo5$WDnCrPxunTbTGr7xUgSc+mZfms1u4sM/TNypUc77ZyQ=', NULL, 0, '2017522131', '陈', '文灏', '', 0, 1, '2018-12-06 03:30:54', '陈文灏', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(150, 'pbkdf2_sha256$24000$DDVilMjOqJU8$6444C0vYc0HXLPzzEAREl4IuuMIClFU64sAAEw5Y2SA=', NULL, 0, '2017211570', '邓', '健源', '', 0, 1, '2018-12-06 03:30:54', '邓健源', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(151, 'pbkdf2_sha256$24000$Y7djANB49e3K$g0xzht4G5y8zfVv8LI7ZtZ5rUDEmo69FrdBe99yrQek=', NULL, 0, '2017522137', '许', '怀若', '', 0, 1, '2018-12-06 03:30:54', '许怀若', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(152, 'pbkdf2_sha256$24000$iNmtV0A1FKWW$IYF63iWpueylsZlA65ka7+jhKd7qqLodXcZy11acukg=', NULL, 0, '2017211394', '孟', '凡尧', '', 0, 1, '2018-12-06 03:30:54', '孟凡尧', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(153, 'pbkdf2_sha256$24000$42HvRRPZgnME$4hIzxYFJqqtm/t3KUtY2BQ4LDgMRjie/FTOj6ca3ric=', NULL, 0, '2017522138', '张', '与安', '', 0, 1, '2018-12-06 03:30:54', '张与安', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(154, 'pbkdf2_sha256$24000$6D9l3v4FbV3D$lqiUuSrSJT+ENhA4frh2qv19HpV9kDHITuQvgh7/VqM=', NULL, 0, '2017522128', '胡', '安珂', '', 0, 1, '2018-12-06 03:30:54', '胡安珂', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(155, 'pbkdf2_sha256$24000$N5a4jKbQTP2U$zVnxVK01ZC5pqf7MUJ1S5yeTzwcoY5WdSmlE9vhQ4H8=', NULL, 0, '2017211409', '向', '泓林', '', 0, 1, '2018-12-06 03:30:54', '向泓林', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(156, 'pbkdf2_sha256$24000$YdZLCJxEpAtp$R4Dka+apfOX/VHCwcCLY1RbwKAwZX/I8ovQwfRkT/mY=', NULL, 0, '2017211519', '黎', '卓', '', 0, 1, '2018-12-06 03:30:54', '黎卓', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(157, 'pbkdf2_sha256$24000$T2sh30v2XkbZ$GrCM/0BCh8yTNjYAjMtwKN+5y+uP6MZTM7ajkWkIV7E=', NULL, 0, '2016211815', '杨', '闪', '', 0, 1, '2018-12-06 03:30:54', '杨闪', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(158, 'pbkdf2_sha256$24000$Xb8lOX6RIw0m$sPMYMIKYzCE6qmqaqQMnR8vRNfkAC6peI23R0OILQNY=', NULL, 0, '2017211246', '彭', '帅', '', 0, 1, '2018-12-06 03:30:54', '彭帅', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(159, 'pbkdf2_sha256$24000$ktOmCzrAsmp0$WvoVIGdV4yCLeQc80KLKkEzYy/Rg7+gNoPVGa63DdCQ=', NULL, 0, '2017211217', '翟', '佳宇', '', 0, 1, '2018-12-06 03:30:54', '翟佳宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(160, 'pbkdf2_sha256$24000$TcZMRkcClOE1$HaQuNJlmxvZaJQEzegeKi/uUi//KdysCe8R/3HyZ3A4=', NULL, 0, '2017211239', '秦', '子涵', '', 0, 1, '2018-12-06 03:30:54', '秦子涵', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(161, 'pbkdf2_sha256$24000$Oy7RgRrWAKUS$HlHdGDfvjtS0/dBR+GRk1DinUtNs4Dj2azZ8M3ibKo4=', NULL, 0, '2017211434', '陈', '雁楠', '', 0, 1, '2018-12-06 03:30:55', '陈雁楠', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(162, 'pbkdf2_sha256$24000$hgsYra1kZo6c$GgLB1vuSm1AwRdHyYSR4Sqq3U3sfGXGftpEZqiok+3U=', NULL, 0, '2017211592', '孙', '韬', '', 0, 1, '2018-12-06 03:30:55', '孙韬', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(163, 'pbkdf2_sha256$24000$SsnRGdJP4zvx$e2sRs/M+SbcqvRkVeIeC4B6dowsKpMXMldjk745am/k=', NULL, 0, '2017211372', '董', '冠辰', '', 0, 1, '2018-12-06 03:30:55', '董冠辰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(164, 'pbkdf2_sha256$24000$HbG8hW4hwDCX$CVWFLOCb+kfmeTRlfICWyOURsCCnXBAZqni7KbVPnx8=', NULL, 0, '2016210542', '杨', '钊颖', '', 0, 1, '2018-12-06 03:30:55', '杨钊颖', NULL, 'female', NULL, 'static/images/head/default.png', '2016211304', 1),
(165, 'pbkdf2_sha256$24000$CY0GGe4AJ4HL$5zTX7FpWaS/rR8XeQp/qngzcTRhB77spXKFtC4Y6Nhk=', NULL, 0, '2017211373', '邓', '昊元', '', 0, 1, '2018-12-06 03:30:55', '邓昊元', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(166, 'pbkdf2_sha256$24000$3Y713IikMtZ8$/x8zZFKsuuS9jprII7wqjD00cJoCn64XulmSOA++lsQ=', NULL, 0, '2017211595', '陈', '志浩', '', 0, 1, '2018-12-06 03:30:55', '陈志浩', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(167, 'pbkdf2_sha256$24000$6dKft1bEPm0Y$OMLN13qG8yuLjQt1oBUK9ub3crDRiGKg3Opnmt6ExnA=', NULL, 0, '2017211331', '常', '家睿', '', 0, 1, '2018-12-06 03:30:55', '常家睿', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(168, 'pbkdf2_sha256$24000$JQlTskVgqtDt$sdekvDSPO5cbkgWWoRZr7vQCga7u2pHWGokrhl6LCKU=', NULL, 0, '2017211329', '孟', '烨青', '', 0, 1, '2018-12-06 03:30:55', '孟烨青', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(169, 'pbkdf2_sha256$24000$CgesOI5MxETL$SAzHl8taSPNznT8Dc4Woq4Ih2xVFuL6Ml6W9qKThR6g=', NULL, 0, '2017211143', '马', '心远', '', 0, 1, '2018-12-06 03:30:55', '马心远', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(170, 'pbkdf2_sha256$24000$PsEeJj7MCxdJ$3BDkwy8XpkdtmXpAumSynce1drY5yPwDq9bwUbQisUM=', NULL, 0, '2017211587', '陈', '忱', '', 0, 1, '2018-12-06 03:30:55', '陈忱', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(171, 'pbkdf2_sha256$24000$QqYck2fA66Jv$tryRbyXbzsjnGRGID1K9c+eAkq1J/QkLP1Zx7fh1VXE=', NULL, 0, '2017211330', '何', '继超', '', 0, 1, '2018-12-06 03:30:55', '何继超', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(172, 'pbkdf2_sha256$24000$1OHEMQA5bGDK$JBB78i4afFrfkqXDx+POPgbd6a36hLZRwY1JAgAaDfw=', NULL, 0, '2017211255', '陈', '乾', '', 0, 1, '2018-12-06 03:30:55', '陈乾', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(173, 'pbkdf2_sha256$24000$galSE107h5oJ$Y2NC3PKAardL6VU7xjvbJ2LQgekQ6gGNuOE+PXe+09Q=', NULL, 0, '2017211152', '夏', '东林', '', 0, 1, '2018-12-06 03:30:55', '夏东林', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(174, 'pbkdf2_sha256$24000$Vdod3PtRknbn$tJlDz7jhX6DCjocu/3KE/IrPdBwuz3inzrdefn2YYps=', NULL, 0, '2017211516', '马', '嘉蒙', '', 0, 1, '2018-12-06 03:30:55', '马嘉蒙', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(175, 'pbkdf2_sha256$24000$8GplDgBeo3N9$eC0VebVxSAOk5SUhwbI1Wv63E3D+s56Xs+SstTt4TQU=', NULL, 0, '2017211469', '唐', '佳佳', '', 0, 1, '2018-12-06 03:30:55', '唐佳佳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(176, 'pbkdf2_sha256$24000$eSxR5nfRAqn7$5aiOZ0xRypfF8aUIinT0T2kZhfHkuIdJWmni1AkkE6o=', NULL, 0, '2017211471', '刘', '倩芳', '', 0, 1, '2018-12-06 03:30:55', '刘倩芳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(177, 'pbkdf2_sha256$24000$eDzB98viMgAD$RJJCkDINEHbTVmug3ERuF1I20x3XCvG5lFC/4RRLeww=', NULL, 0, '2017211472', '蒙', '鑫', '', 0, 1, '2018-12-06 03:30:55', '蒙鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(178, 'pbkdf2_sha256$24000$lap1LwvBp5OX$ki+Rqhn7L134RIUhhuni4yf51ikod9ScoZUOt33+Ypw=', NULL, 0, '2017211569', '赖', '堃', '', 0, 1, '2018-12-06 03:30:55', '赖堃', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(179, 'pbkdf2_sha256$24000$i9zjQOOu5kuz$H5YPtCaKM4jFj74bJK8DPrxcrH3x0Lu+6ByPiIhYk9g=', NULL, 0, '2017211573', '左', '书扬', '', 0, 1, '2018-12-06 03:30:56', '左书扬', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(180, 'pbkdf2_sha256$24000$Rtxdt1ogkuAB$YC/1x89lHfPFHVTmyh1qWzLG3DLLt0dVHL4NfZmAl9I=', NULL, 0, '2017211271', '真', '超奇', '', 0, 1, '2018-12-06 03:30:56', '真超奇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(181, 'pbkdf2_sha256$24000$uS1B9jfiydUt$M5+e/c/TKGQ4l0RCPRl98yxKHkir3/lPqYKCpf5du2Q=', NULL, 0, '2016212481', '王', '镖', '', 0, 1, '2018-12-06 03:30:56', '王镖', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(182, 'pbkdf2_sha256$24000$s6sHOmCXOlqt$+NTZ9lCSIGULRzioXGjmn8181DPq7BTUbAVaFtJcly4=', NULL, 0, '2017211430', '王', '智韬', '', 0, 1, '2018-12-06 03:30:56', '王智韬', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(183, 'pbkdf2_sha256$24000$lUgI9JzlQ9A8$EeyYOKm+H+hfs3sNS7ORhfvbZNzGs4CXbRx1a+OJ+Xg=', NULL, 0, '2016212122', '关', '键', '', 0, 1, '2018-12-06 03:30:56', '关键', NULL, 'female', NULL, 'static/images/head/default.png', '2016211302', 1),
(184, 'pbkdf2_sha256$24000$tBks18Qcxi9C$MxlLb3Zf+byAWQcQXY7JboqdB9edAE4XX27tj/445pA=', NULL, 0, '2017211168', '任', '以粲', '', 0, 1, '2018-12-06 03:30:56', '任以粲', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(185, 'pbkdf2_sha256$24000$JlXzyGE9ng5K$Ye/3B2oFbbMfpmbmEOhadtqo8CFzFbr2LPoSIMagiEg=', NULL, 0, '2017211340', '王', '雨霏', '', 0, 1, '2018-12-06 03:30:56', '王雨霏', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(186, 'pbkdf2_sha256$24000$XOb52LkPb9a7$UT7gDDdlfEQkeHS1MqSdfJBMbBV9sO/h2YtP4CpSbiE=', NULL, 0, '2017211148', '池', '昊宸', '', 0, 1, '2018-12-06 03:30:56', '池昊宸', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(187, 'pbkdf2_sha256$24000$XYCEh3GfIquI$Y65k8erz9IU+w0A1R6IWkehj3lgiVlUv76mP7zpzj7w=', NULL, 0, '2016211460', '向', '阳曦', '', 0, 1, '2018-12-06 03:30:56', '向阳曦', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(188, 'pbkdf2_sha256$24000$44VFFF0dvQ2Z$i+ccvMEigv504r8c6gRhNQYtyNMiRnRr3me7KTS+k6w=', NULL, 0, '2017211279', '王', '长志', '', 0, 1, '2018-12-06 03:30:56', '王长志', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(189, 'pbkdf2_sha256$24000$HISJY4N0aViF$CupoJq+30K1DHRtkZ6+Pwhy0C5memq3yMJMMOulY8Es=', NULL, 0, '2017211485', '王', '雨霏', '', 0, 1, '2018-12-06 03:30:56', '王雨霏', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(190, 'pbkdf2_sha256$24000$ezeOyu3TPpQF$U2aGA1ibx1qxiSaambJwn7/M6W99rWJYAIwVUSBjbgU=', NULL, 0, '2017211234', '司', '洁', '', 0, 1, '2018-12-06 03:30:56', '司洁', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(191, 'pbkdf2_sha256$24000$MYsW38kRmEmw$wF3Mml9nTnd8wEk99JR7LZLI5uTziVxHY8Fpxif1xTU=', NULL, 0, '2017211291', '杜', '欢', '', 0, 1, '2018-12-06 03:30:56', '杜欢', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(192, 'pbkdf2_sha256$24000$dRq0bVuOOsLT$N7txxybZkKPxhEGiRDgvMKlRY5rLXLhvq1YKDK6jrXM=', NULL, 0, '2017211503', '尹', '旭然', '', 0, 1, '2018-12-06 03:30:56', '尹旭然', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(193, 'pbkdf2_sha256$24000$FRPwD4bDuYcm$rugdvGzOt5uKxQI1bzyE9CXoL0BQeJyEsvnEgc2qKF0=', NULL, 0, '2017211116', '罗', '嘉宁', '', 0, 1, '2018-12-06 03:30:56', '罗嘉宁', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(194, 'pbkdf2_sha256$24000$YbD0CN3UA9a6$5RJa/hgHvZi7AfnkZojd7ZmZs+6Pn3n+XuNWI1GzhPs=', NULL, 0, '2017211533', '秦', '峰', '', 0, 1, '2018-12-06 03:30:57', '秦峰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(195, 'pbkdf2_sha256$24000$u1S8HcM1pfFQ$zvYVY1axeI0GVU6YPoAD9QhVZIuF6tvdjuzw/TcSjK8=', NULL, 0, '2017211225', '冯', '奕瑄', '', 0, 1, '2018-12-06 03:30:57', '冯奕瑄', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(196, 'pbkdf2_sha256$24000$Zo2uma5p1ZWe$no4EeihVmLkQu7TxZrqIR5WwQceLIZYGZjONRQhVToo=', NULL, 0, '2017211440', '鲍', '金安', '', 0, 1, '2018-12-06 03:30:57', '鲍金安', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(197, 'pbkdf2_sha256$24000$xLzg7RkuPwIy$aWiFaNjFa53JYE1ZHk5C1N77yiD53L7cB45a65NabyQ=', NULL, 0, '2017211439', '胡', '人榕', '', 0, 1, '2018-12-06 03:30:57', '胡人榕', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(198, 'pbkdf2_sha256$24000$hBAC7JP3dnbh$5xn95PA2MCVb6SgLeCCw2+ge59xdKMVeoFgk0S72XOw=', NULL, 0, '2017211504', '胡', '磨璇', '', 0, 1, '2018-12-06 03:30:57', '胡磨璇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(199, 'pbkdf2_sha256$24000$Ok1pTAxoMTWS$NJOddiqzgdeR1Q1oe+2KUKQbKieaNFH6A8hnxtv50nY=', NULL, 0, '2017211323', '朱', '晨逸', '', 0, 1, '2018-12-06 03:30:57', '朱晨逸', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(200, 'pbkdf2_sha256$24000$Lt2o7d3ghe3I$PoFny2pUK00ctShweCBqFiX1eTEtzOZXiB0lVc847VQ=', NULL, 0, '2017211531', '魏', '子然', '', 0, 1, '2018-12-06 03:30:57', '魏子然', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(201, 'pbkdf2_sha256$24000$q07Fq0q1DdFz$WUU8qMDJthZrWT0ebSkdITpbqJ4CRPaVlsLhrb+QAlA=', NULL, 0, '2016211915', '章', '涵宇', '', 0, 1, '2018-12-06 03:30:57', '章涵宇', NULL, 'female', NULL, 'static/images/head/default.png', '2016211305', 1),
(202, 'pbkdf2_sha256$24000$umHuFlQCpMep$qNvQBXtP837N6VPAJCiLUahdKbHm7gJgu8x4YKx9Eo4=', NULL, 0, '2017211278', '齐', '晓玥', '', 0, 1, '2018-12-06 03:30:57', '齐晓玥', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(203, 'pbkdf2_sha256$24000$3LNLNnDuNYFW$xyU/uGRSvejwwzkAPx18RVdvAs/iqguAbWMSfPGjR9I=', NULL, 0, '2017211289', '向', '阳曦', '', 0, 1, '2018-12-06 03:30:57', '向阳曦', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(204, 'pbkdf2_sha256$24000$IWjENjgyY9qq$JsXAdxsQB/kv7NJuCwZCk5P7eZiYFCA7fpjKS6RNqoI=', '2018-12-06 14:15:39', 0, '2017211294', '郭', '璐', '', 0, 1, '2018-12-06 03:30:57', '郭璐', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(205, 'pbkdf2_sha256$24000$5rqhmwvFPPI4$Ll8IG+jx++yZiD56paCYwQTqJR6JSlPOUkXJ/b9WWQE=', NULL, 0, '2017211260', '刘', '峰麟', '', 0, 1, '2018-12-06 03:30:57', '刘峰麟', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(206, 'pbkdf2_sha256$24000$oTNRHVPABDKP$Rsw1jF0xB0AlxOLVTEqQSvn4AawxkaNE0qo2uKEZ5tQ=', NULL, 0, '2017211576', '方', '诗婷', '', 0, 1, '2018-12-06 03:30:57', '方诗婷', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(207, 'pbkdf2_sha256$24000$UxlbwgySU1iz$gMlyKGMGHIHFX3y7G/a8bhaW87sicVxu/4yZsMYrHOk=', NULL, 0, '2017211290', '王', '海槟', '', 0, 1, '2018-12-06 03:30:57', '王海槟', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(208, 'pbkdf2_sha256$24000$XRhj7eEoMBP1$nti+3dSSKiCgnnoKQUmS8CLrxe3YfFKBDOFiPBR9MVg=', NULL, 0, '2017211551', '陈', '慧琳', '', 0, 1, '2018-12-06 03:30:57', '陈慧琳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(209, 'pbkdf2_sha256$24000$9GenjIFagVeJ$30bFeJ/oMTJpmEwRHBn5AjkBbBv19laH41hC8c0JT8I=', NULL, 0, '2017211441', '孟', '阳', '', 0, 1, '2018-12-06 03:30:57', '孟阳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(210, 'pbkdf2_sha256$24000$JBIREeX9Asbi$Y6wSuNvq7WUwxEk8h6EKud4MhOtvjA2smkbl3jMGfKU=', NULL, 0, '2017211473', '王', '俊杰', '', 0, 1, '2018-12-06 03:30:57', '王俊杰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(211, 'pbkdf2_sha256$24000$g2RCvBGHpTFI$xCUNm0eZvTDfBXhDsykm+qWGuEkr2hy3Vu89BFrr/6k=', NULL, 0, '2017211550', '王', '若静', '', 0, 1, '2018-12-06 03:30:58', '王若静', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(212, 'pbkdf2_sha256$24000$dugoCY2JRWDn$/ndnbBZQextRsC5L61GoZ8y4bRiejHJJb7OsLbcYMqw=', NULL, 0, '2017211264', '王', '海槟', '', 0, 1, '2018-12-06 03:30:58', '王海槟', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(213, 'pbkdf2_sha256$24000$2X24OqVRxp3K$Ygpx1QuxCq0586V3FP+izgf5iHJsI6RhB+KH4NDd0HM=', '2018-12-06 14:15:14', 0, '2017211458', '朱', '鹏辉', '', 0, 1, '2018-12-06 03:30:58', '朱鹏辉', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(214, 'pbkdf2_sha256$24000$iTOMpgXDIdmw$cn4K3xNF2w0j7ZQ2J7f3q5holEhHyPJPfrjXkSCQehg=', NULL, 0, '2017211280', '曾', '庆喆', '', 0, 1, '2018-12-06 03:30:58', '曾庆喆', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(215, 'pbkdf2_sha256$24000$9sJGa8mzfQKH$lI7DA5Q1xb9aSe7j65XGy44FpEJv8f5xglTkTYpe6nE=', NULL, 0, '2017211546', '莫', '燕虎', '', 0, 1, '2018-12-06 03:30:58', '莫燕虎', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(216, 'pbkdf2_sha256$24000$5q0PyMCwMzVb$vpkyc1bz2J0uzWviFxkVy5nK/oxQ/LWcUMgXQJfgtEc=', NULL, 0, '2017211552', '王', '子扬', '', 0, 1, '2018-12-06 03:30:58', '王子扬', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(217, 'pbkdf2_sha256$24000$i7FosUxHhxoN$UNc8p6HjsCkgsRTB5zDiGA6iJYSLTgecGAqnqETvJ2c=', NULL, 0, '2017211566', '武', '佳宝', '', 0, 1, '2018-12-06 03:30:58', '武佳宝', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(218, 'pbkdf2_sha256$24000$lo06Iw1HE4IC$mNQshU7PfksaQgev3bbBVPXgnygrr3X6A1XVxYomAQU=', NULL, 0, '2017211540', '刘', '畅', '', 0, 1, '2018-12-06 03:30:58', '刘畅', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(219, 'pbkdf2_sha256$24000$dw18F6hAO12F$0/ymtdhzdia3qc8a9pHYUcE53Y6FpFrKsb46uPDU8Bg=', NULL, 0, '2017211364', '吴', '梅', '', 0, 1, '2018-12-06 03:30:58', '吴梅', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(220, 'pbkdf2_sha256$24000$EHDVy43caJzB$HsMPEFD00MRUy4ZU8fubJ2B1KIyAE+wXo/ib3MbHdRo=', NULL, 0, '2017211263', '熊', '智宇', '', 0, 1, '2018-12-06 03:30:58', '熊智宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(221, 'pbkdf2_sha256$24000$e8MBCn67oWGQ$tizqyA8fw+UvW9V4MBjPwSodzAXy2FrBJGMktxCVlDE=', NULL, 0, '2017211395', '赵', '雨晴', '', 0, 1, '2018-12-06 03:30:58', '赵雨晴', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(222, 'pbkdf2_sha256$24000$Va3wQvd6htGW$nJw5k1c0z8eW1/sx9tX8Ndy3MP+Hz2/cSMqAx5K5elY=', NULL, 0, '2017211230', '王', '可可', '', 0, 1, '2018-12-06 03:30:58', '王可可', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(223, 'pbkdf2_sha256$24000$n66Uonf4jDen$xsokzogQ2FlNpsso9OHWk6m7H+vmbZ40naXFmtpTUcM=', NULL, 0, '2017211261', '郝', '宜文', '', 0, 1, '2018-12-06 03:30:58', '郝宜文', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(224, 'pbkdf2_sha256$24000$tHPZiC3xMVur$0o3sz73Y8GjpoxpSuEJBhkSHaMKD1bCi88v/ocD0vfc=', NULL, 0, '2017211338', '向', '震', '', 0, 1, '2018-12-06 03:30:58', '向震', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(225, 'pbkdf2_sha256$24000$46EgYlweQ3bU$E3VNKdFWuRdKj8NsfPou88BDuGwXy/w5G+QdB6mfhQw=', NULL, 0, '2017211568', '卢', '保良', '', 0, 1, '2018-12-06 03:30:58', '卢保良', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(226, 'pbkdf2_sha256$24000$6t3SaMnlNEhS$+6WRqt5yPVTzSWWE4zceEXXltvd3Wl4S0V0e1IJemM4=', NULL, 0, '2017211383', '慕', '雨诚', '', 0, 1, '2018-12-06 03:30:59', '慕雨诚', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(227, 'pbkdf2_sha256$24000$o6UZw358EBNO$3XfIkG+DRa+jrRFbOsoZJzN2PK+HmPU1vSeAcDVDLWY=', NULL, 0, '2017211586', '应', '冲书', '', 0, 1, '2018-12-06 03:30:59', '应冲书', NULL, 'female', NULL, 'static/images/head/default.png', '2017211586', 1),
(228, 'pbkdf2_sha256$24000$HwFgeQCrTRdY$bFmWbgQUUQuSWDzXpQumbjeUVkUD/lPhG1L/qfyTXVA=', NULL, 0, '2017211585', '刘', '翔宇', '', 0, 1, '2018-12-06 03:30:59', '刘翔宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(229, 'pbkdf2_sha256$24000$VcdSQZgBwZyE$iTB4NjCB8E2cDgkU+QX2KQCeFCmjWCrVS0IgyNblC4A=', NULL, 0, '2017211388', '李', '天骄', '', 0, 1, '2018-12-06 03:30:59', '李天骄', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1);
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `mobile`, `image`, `user_class`, `role`) VALUES
(230, 'pbkdf2_sha256$24000$LUdFiMJ8lFZj$zX4NbB0dp6UJWNB2KkHeoPQcdnwrQve2UOU+Xgy+a04=', NULL, 0, '2017211378', '邹', '平', '', 0, 1, '2018-12-06 03:30:59', '邹平', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(231, 'pbkdf2_sha256$24000$S96D6CkSi1X4$XfyIaXewFGo4QMryEIYhRiMC9uyDpBlvEG/TuUj8+Lw=', NULL, 0, '2017211583', '吴', '铭钞', '', 0, 1, '2018-12-06 03:30:59', '吴铭钞', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(232, 'pbkdf2_sha256$24000$pxtYvMf9AjgG$MJUguQN2HnAgcp6d/e/2gPM3WwDR9YdTi9l/1bVHIfw=', NULL, 0, '2017211387', '李', '昱桥', '', 0, 1, '2018-12-06 03:30:59', '李昱桥', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(233, 'pbkdf2_sha256$24000$IJFE5kburuCD$PW9ylYWER7JwhS8YD2T0pM9tgTfzttVU6hDZGJYOS90=', NULL, 0, '2017211297', '曾', '晓峰', '', 0, 1, '2018-12-06 03:30:59', '曾晓峰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(234, 'pbkdf2_sha256$24000$pKDdN6FxvNDu$tcZPSx7GJxX32eqo13z6lsYWgYZONHYpeQwoirgM7Tg=', NULL, 0, '2017211275', '闫', '钰承', '', 0, 1, '2018-12-06 03:30:59', '闫钰承', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(235, 'pbkdf2_sha256$24000$cDKO74uLGJDv$9FCVDo0ypTiuIDgGTfL68f+C1JmrEpIpvwKAgzkKIkE=', NULL, 0, '2017211578', '韦', '豪', '', 0, 1, '2018-12-06 03:30:59', '韦豪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(236, 'pbkdf2_sha256$24000$xgrrTjrStvik$8GI1id3ovz4sZGbbFCoJODgqSw9jiNdBy5lfpZMihbc=', NULL, 0, '2017211523', '谭', '灿', '', 0, 1, '2018-12-06 03:30:59', '谭灿', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(237, 'pbkdf2_sha256$24000$kvrd76zs2SD4$qBflSRY/lnskriG5F99sB9kWFtaU/4cozpFJmLuH6Og=', NULL, 0, '2017211376', '曹', '天啸', '', 0, 1, '2018-12-06 03:30:59', '曹天啸', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(238, 'pbkdf2_sha256$24000$a4RVqZHN19Pg$ZGbirxNy2RBYdZk114UWjshiM4sVA1T7GqyKvAOzdBE=', NULL, 0, '2017211249', '韦', '凯文', '', 0, 1, '2018-12-06 03:30:59', '韦凯文', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(239, 'pbkdf2_sha256$24000$stzwtyHxNW6U$X+gR1mFYhKQ/grCIGNdUlcDnHp+SX7VM7mXIo8dep+Q=', NULL, 0, '2017211386', '白', '钧婷', '', 0, 1, '2018-12-06 03:30:59', '白钧婷', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(240, 'pbkdf2_sha256$24000$t6HesuKoLzFu$Ytfz4s85XHQFmSCp+GfkSsox2u+VpcYVPvoP7nlCFCg=', NULL, 0, '2017211406', '覃', '佐豪', '', 0, 1, '2018-12-06 03:30:59', '覃佐豪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(241, 'pbkdf2_sha256$24000$7PMJu2dxESDP$/ZFXcAUgK9y0kZeyTI668RDTANsOBKXRwDWR2Sr0Krc=', NULL, 0, '2017211339', '柴', '拓', '', 0, 1, '2018-12-06 03:30:59', '柴拓', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(242, 'pbkdf2_sha256$24000$exZJHksbl4sv$btTva8UdUaRWILwvamhiwYMPuZukE9cuwuG41YqcIig=', NULL, 0, '2017211518', '王', '延开', '', 0, 1, '2018-12-06 03:30:59', '王延开', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(243, 'pbkdf2_sha256$24000$679sGsal1jHW$GYiTobA9WLFSP/a+IszkntjKR7fU1JbfbxUGwLQpYTQ=', NULL, 0, '2017211492', '曾', '祥峰', '', 0, 1, '2018-12-06 03:31:00', '曾祥峰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(244, 'pbkdf2_sha256$24000$AMWBSb6oL0hX$Z05ppRgaUmRWlMltWwhVJVgEW6IYOTKOpG8wHChLeFw=', NULL, 0, '2017211350', '章', '涵宇', '', 0, 1, '2018-12-06 03:31:00', '章涵宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(245, 'pbkdf2_sha256$24000$TDleZGAplFp1$MvrybWLLdzVM0otwHviP1V88DBbjFVQx1fGsDRpUkwI=', NULL, 0, '2017211549', '邢', '小林', '', 0, 1, '2018-12-06 03:31:00', '邢小林', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(246, 'pbkdf2_sha256$24000$iJXHbxtivg8M$hrfuOUoDCpgt6YV8rI1f6wFwgSYgXX7/VkWfgCdxDXI=', NULL, 0, '2017211495', '徐', '翔', '', 0, 1, '2018-12-06 03:31:00', '徐翔', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(247, 'pbkdf2_sha256$24000$31S3UXW7Zt5f$ZqASJbii2deflCD55j2WqtHvZkzpM/pCOPDfRKqx90c=', NULL, 0, '2017211548', '赵', '永亮', '', 0, 1, '2018-12-06 03:31:00', '赵永亮', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(248, 'pbkdf2_sha256$24000$pajHxX1HFL6I$ua3O7bxkEwJqcvlhY2bNtdSFMUTi78Xy0XBPr2oxsbY=', NULL, 0, '2017211494', '尚', '子扬', '', 0, 1, '2018-12-06 03:31:00', '尚子扬', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(249, 'pbkdf2_sha256$24000$Ci3dk9rVUoUS$YH0O0HS6GxrnjkIRYWCBWtd2txgJmgdpVLjt2JcVIAM=', NULL, 0, '2017211277', '李', '志成', '', 0, 1, '2018-12-06 03:31:00', '李志成', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(250, 'pbkdf2_sha256$24000$qQqB72bxAwdv$zu5y4IrTp03diIVT+br+NUzfbcm6kkj4rAurzEV9c3M=', NULL, 0, '2017211276', '汪', '鹏', '', 0, 1, '2018-12-06 03:31:00', '汪鹏', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(251, 'pbkdf2_sha256$24000$Cgx2GKmCIaGQ$rmDdcX6RVkBD2oGtINXAlPQqyF6Dg9DNBgM+sSgGNfc=', NULL, 0, '2017211191', '陈', '睿', '', 0, 1, '2018-12-06 03:31:00', '陈睿', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(252, 'pbkdf2_sha256$24000$RfRM1WeiyCXJ$MCxEhpxG0lTJC2eO+N4uWKU627pBEL7H2gjCuOxE84o=', NULL, 0, '2017211497', '陈', '文馨', '', 0, 1, '2018-12-06 03:31:00', '陈文馨', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(253, 'pbkdf2_sha256$24000$XXHl3ncR9mor$Ug1Obbsav+QBSMMnc9mxhlpxWj906SYrTgXSljWAoLc=', NULL, 0, '2017211559', '盛', '道旭', '', 0, 1, '2018-12-06 03:31:00', '盛道旭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(254, 'pbkdf2_sha256$24000$MnrP4GK1OqCA$wysiS2PdNLdyrIjtZrVXC4gakLTaB/K5sn964Q0Q0jo=', NULL, 0, '2017211346', '杨', '舜尧', '', 0, 1, '2018-12-06 03:31:00', '杨舜尧', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(255, 'pbkdf2_sha256$24000$f2Byajf51Lc3$vBbwGOhPvczWvQV7+EIgjJu4U/xiUeAOeSNh2YZeuWo=', NULL, 0, '2016212258', '李', '菡', '', 0, 1, '2018-12-06 03:31:00', '李菡', NULL, 'female', NULL, 'static/images/head/default.png', '2016211305', 1),
(256, 'pbkdf2_sha256$24000$GfNEX4Ui0kuh$gV3F43f0phqR3nCJJW1hbwynoxwrZbEhnkERnkYjtoM=', NULL, 0, '2017211273', '黄', '永进', '', 0, 1, '2018-12-06 03:31:00', '黄永进', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(257, 'pbkdf2_sha256$24000$hznWSYBYNuJz$CDrW5uPjiLSDv0b78zSzKSH73qe53hLw356HGYqjwVs=', NULL, 0, '2017211322', '黄', '若鹏', '', 0, 1, '2018-12-06 03:31:00', '黄若鹏', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(258, 'pbkdf2_sha256$24000$n4jJLKh5AEOk$+ylXwvfojLN4nbCZ6p61Mv6ok1kTl2aeWUb6aPcuxCM=', NULL, 0, '2016212098', '熊', '雅欣', '', 0, 1, '2018-12-06 03:31:00', '熊雅欣', NULL, 'female', NULL, 'static/images/head/default.png', '2016211302', 1),
(259, 'pbkdf2_sha256$24000$UWPFzCyRrSiw$QvQ7oT/uSPms+pbOy2rpLKAodjWcjKEC8UY/nmwKiAc=', NULL, 0, '2017211257', '陈', '子薇', '', 0, 1, '2018-12-06 03:31:01', '陈子薇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(260, 'pbkdf2_sha256$24000$oiiQ2LIpFENC$yap9umD+W71h5NFC/oCHIg3j28q8cjqv4jP2sQN4r0I=', NULL, 0, '2017211349', '陆', '明聪', '', 0, 1, '2018-12-06 03:31:01', '陆明聪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(261, 'pbkdf2_sha256$24000$c3nTdWy2AXH9$gsbwHmkOzYa6AaOyUjSWBMQh9z+MIpe8TtKWUTUQUlw=', NULL, 0, '2017211393', '卢', '昱昊', '', 0, 1, '2018-12-06 03:31:01', '卢昱昊', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(262, 'pbkdf2_sha256$24000$AFJOBJq19V8E$vZlWiyjf1PpJXUfYkkEWtBJmf/6z2dnCn6djNd87fHA=', NULL, 0, '2016212901', '张', '春云', '', 0, 1, '2018-12-06 03:31:01', '张春云', NULL, 'female', NULL, 'static/images/head/default.png', '2016211303', 1),
(263, 'pbkdf2_sha256$24000$40IyDfbkXDtb$SfMGPlavlul8dwTXgDH6rZH2sK2AM4c37uJ3mIPU1I8=', NULL, 0, '2016212482', '袁', '子麒', '', 0, 1, '2018-12-06 03:31:01', '袁子麒', NULL, 'female', NULL, 'static/images/head/default.png', '2016211307', 1),
(264, 'pbkdf2_sha256$24000$EecUyKvTDRR6$Hh+gjz5BbtyzVG91lWddIks6+IryIci91DtxcrSTwB0=', NULL, 0, '2016211529', '刘', '俊鹏', '', 0, 1, '2018-12-06 03:31:01', '刘俊鹏', NULL, 'female', NULL, 'static/images/head/default.png', '2016211315', 1),
(265, 'pbkdf2_sha256$24000$DDohMrLBxxFZ$DHHaMeucN+u7b32t63hbsJwpiQM0R7+dUo/4WAUEaTk=', NULL, 0, '2017211244', '宋', '奕池', '', 0, 1, '2018-12-06 03:31:01', '宋奕池', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(266, 'pbkdf2_sha256$24000$c8waEtDt5yfP$xyrnYAudZLpsbEfaiB5l5H/010qlYxdack/uVF/mygc=', NULL, 0, '2016210537', '李', '松洋', '', 0, 1, '2018-12-06 03:31:01', '李松洋', NULL, 'female', NULL, 'static/images/head/default.png', '2016211304', 1),
(267, 'pbkdf2_sha256$24000$2ygjJSghPhxp$PHr8Th6f+B91WJRoz46p+tZmCMNUrL59USZ6MvksfA4=', NULL, 0, '2016212837', '郎', '玉', '', 0, 1, '2018-12-06 03:31:01', '郎玉', NULL, 'female', NULL, 'static/images/head/default.png', '2016211303', 1),
(268, 'pbkdf2_sha256$24000$FV1af35JgZNr$ioJ2cM41KsTrl3AsDSuv+P9XMShaik8CFgNvDUU9kZs=', NULL, 0, '2017211594', '雷', '润冰', '', 0, 1, '2018-12-06 03:31:01', '雷润冰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(269, 'pbkdf2_sha256$24000$T4GQ50BOdR3o$1YF15HTSaOWBV3uS87uBAYWcm+g66Nvi7nWZw1c9SL0=', NULL, 0, '2016212326', '杨', '昕悦', '', 0, 1, '2018-12-06 03:31:01', '杨昕悦', NULL, 'female', NULL, 'static/images/head/default.png', '2016211305', 1),
(270, 'pbkdf2_sha256$24000$qe44nnodhulS$VUPj61HgCQQykiNmcspeZVzh1cpn41FwKd0+l40HR3g=', NULL, 0, '2016212620', '王', '小月', '', 0, 1, '2018-12-06 03:31:01', '王小月', NULL, 'female', NULL, 'static/images/head/default.png', '2016211307', 1),
(271, 'pbkdf2_sha256$24000$lOVQ2LBeGWBg$/zKPKldqfUhv5U5bE+5tsSpHKFkZF7UO8otUY+iuNag=', NULL, 0, '2017211407', '张', '紫慧', '', 0, 1, '2018-12-06 03:31:01', '张紫慧', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(272, 'pbkdf2_sha256$24000$K1WcsxModU5P$qW5wG7eMqjIvn70zTF9SDJWdawdCjYZz5aUT8jHo6Nc=', NULL, 0, '2017211499', '张', '毅博', '', 0, 1, '2018-12-06 03:31:01', '张毅博', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(273, 'pbkdf2_sha256$24000$FGMIBhMTRZ6D$bsvWTnDlODt0TmnBO14elekbsX2KxTE8RzhjVu/f9Mk=', NULL, 0, '2017211229', '郭', '艺凯', '', 0, 1, '2018-12-06 03:31:01', '郭艺凯', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(274, 'pbkdf2_sha256$24000$UhbSd2pRNqJJ$6RV7fguapPNmtK1XJpr3acm2qsIJ4DgfXimPCwuBhSk=', NULL, 0, '2017211500', '林', '泓宇', '', 0, 1, '2018-12-06 03:31:01', '林泓宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(275, 'pbkdf2_sha256$24000$yY59rnTdzySF$6yNZbR7Adyulu1KD2RdSJww7ENY9oRWQ/T3NycSdNgQ=', NULL, 0, '2017211324', '王', '嘉茜', '', 0, 1, '2018-12-06 03:31:01', '王嘉茜', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(276, 'pbkdf2_sha256$24000$zMUA6wER2YLy$jjE38iHlP7jS0cl6m5yHjOGnau60nbE+TcgNam9l6J4=', NULL, 0, '2017211591', '孙', '一夫', '', 0, 1, '2018-12-06 03:31:02', '孙一夫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(277, 'pbkdf2_sha256$24000$hwrPBOVdHhty$b0jbsZkwDm6fRKe1x6NTev/oTWwvUVl59LN6kG95Qdc=', NULL, 0, '2017211313', '叶', '斯哈提·木哈塔尔', '', 0, 1, '2018-12-06 03:31:02', '叶斯哈提·木哈塔尔', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(278, 'pbkdf2_sha256$24000$NIfbgih4sw82$iu8i0fZ/hjQb2a8q2pnG9uMscJGDufsq3iIxDS93I6s=', NULL, 0, '2017211597', '李', '思佚', '', 0, 1, '2018-12-06 03:31:02', '李思佚', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(279, 'pbkdf2_sha256$24000$sRlXoEvi57wt$J2ABWNtNDpjviyItvBn04qYACPMjoBW0jGyvWXM+eTI=', NULL, 0, '2017211456', '张', '津源', '', 0, 1, '2018-12-06 03:31:02', '张津源', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(280, 'pbkdf2_sha256$24000$6EC5CfYhR8xi$IHX09LXoTKSDLkOLZsXiwqkVma49J+N7fHXLSnaICks=', NULL, 0, '2017211144', '张', '静雅', '', 0, 1, '2018-12-06 03:31:02', '张静雅', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(281, 'pbkdf2_sha256$24000$jUTzfmZSebUX$uP3PCTIiyn+HXzo58+xhGL4XbiOicK7Q7M/3W8TnOa4=', NULL, 0, '2017211252', '孙', '亚楼', '', 0, 1, '2018-12-06 03:31:02', '孙亚楼', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(282, 'pbkdf2_sha256$24000$SufN25Qx2pFc$l0IohuhDFoyOOjx0Ox1vKVft5k411tW5N4r+TV7KpcM=', NULL, 0, '2017211258', '杨', '卉帆', '', 0, 1, '2018-12-06 03:31:02', '杨卉帆', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(283, 'pbkdf2_sha256$24000$5B7JkYDMeC3H$SIVWt+y36O5DsOygJP/f/6X8yoC2U9DjOIMGLyIxrT8=', NULL, 0, '2017211343', '孙', '睿', '', 0, 1, '2018-12-06 03:31:02', '孙睿', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(284, 'pbkdf2_sha256$24000$FRAeJipiI76H$FnsC/aFSglnKRuJ37eS4xD4EfBI2eDOCHEDUfPgCYA8=', NULL, 0, '2017211145', '张', '振浩', '', 0, 1, '2018-12-06 03:31:02', '张振浩', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(285, 'pbkdf2_sha256$24000$PlnNtDYvfLLP$zFNIDC4AiSJLJvwWebWscAnqtiDII4QVNGThGfv3XRk=', NULL, 0, '2017211146', '李', '丹阳', '', 0, 1, '2018-12-06 03:31:02', '李丹阳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(286, 'pbkdf2_sha256$24000$MnaCEpKdwPdS$zWP+/HA1mAJ2YFuCdezlI/KzaqXWoO9gSIAgRKoKMok=', NULL, 0, '2017211256', '樊', '智鹏', '', 0, 1, '2018-12-06 03:31:02', '樊智鹏', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(287, 'pbkdf2_sha256$24000$iiSAVlCS7Da0$/BLSs4RtmYi/a2Iayg2PXqSyQLHGjQFydSoj/36rJFc=', NULL, 0, '2017211172', '黄', '易', '', 0, 1, '2018-12-06 03:31:02', '黄易', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(288, 'pbkdf2_sha256$24000$SDFXeI4PJhyL$wZqm5STsXbcyC8d2U2Wrq/xr3O23/2YxSVwKhLxX3nI=', NULL, 0, '2017211320', '徐', '泽斌', '', 0, 1, '2018-12-06 03:31:02', '徐泽斌', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(289, 'pbkdf2_sha256$24000$TMTNMs9Il9dd$ZYVrdEDBdc71cPuNWmsQNi5B0sICMuJTjdvGwOmvWUc=', NULL, 0, '2017211237', '宋', '浩然', '', 0, 1, '2018-12-06 03:31:02', '宋浩然', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(290, 'pbkdf2_sha256$24000$wfEPHJEzg2ig$r+Am0O8xYpgJfHNp8Y/x52vFLWiqy3pLEU5mDgKl1HY=', NULL, 0, '2017211142', '韩', '婧祎', '', 0, 1, '2018-12-06 03:31:02', '韩婧祎', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(291, 'pbkdf2_sha256$24000$gx09jgVZEsQU$KarOvvxRakEgJEu2YxKe4YiZwl/K5repgN3Ih6dUp4Q=', NULL, 0, '2017211455', '张', '子昂', '', 0, 1, '2018-12-06 03:31:02', '张子昂', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(292, 'pbkdf2_sha256$24000$fjyv97ABUUfq$3oRAjVBqV63oHJawfWPTDuIZzulOdGh/RECGqIqe5xg=', NULL, 0, '2017211541', '李', '雨东', '', 0, 1, '2018-12-06 03:31:03', '李雨东', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(293, 'pbkdf2_sha256$24000$Tz3s0dsHPa4w$B5ftgKIVDjXST7OKs075vshJMMtH++OFSF1TViV5ujE=', NULL, 0, '2017211405', '房', '庆凯', '', 0, 1, '2018-12-06 03:31:03', '房庆凯', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(294, 'pbkdf2_sha256$24000$dAEAF8avwdQp$1mYb/peD9gYAUBdKQ9u2FnG3lUIikevhxyjne3Zzuf4=', NULL, 0, '2017211398', '于', '兴国', '', 0, 1, '2018-12-06 03:31:03', '于兴国', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(295, 'pbkdf2_sha256$24000$NWVMzJVTsM4m$GReDZ08o1H5R/lU7vkYggjZMHpbed2zkwJK8mBZ0Q34=', NULL, 0, '2017211141', '赵', '泉斌', '', 0, 1, '2018-12-06 03:31:03', '赵泉斌', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(296, 'pbkdf2_sha256$24000$Ld4N09oq1f0r$2QEQBKzuoi9cMRelpbElY0gHgy3/ImX7e2rEsvM0Ag4=', NULL, 0, '2017211476', '杨', '海川', '', 0, 1, '2018-12-06 03:31:03', '杨海川', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(297, 'pbkdf2_sha256$24000$FBIg5pEkzLeL$eFoEgsEkmFpx/zcu8TMNZlEjEqhtvzs37oVC5FmcH+s=', NULL, 0, '2017211265', '甘', '成康', '', 0, 1, '2018-12-06 03:31:03', '甘成康', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(298, 'pbkdf2_sha256$24000$rEEJhK3II39u$Lzk1clPPjSvmVRmkC+5/WDQdvWWEdUfMXDp3Iu2qzpc=', NULL, 0, '2017211131', '黄', '佳玉', '', 0, 1, '2018-12-06 03:31:03', '黄佳玉', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(299, 'pbkdf2_sha256$24000$lRgE4lxcmFSM$LIamdS03U2R9eQLQBx4lox6VGMHh2B7mI/TcFekVGb8=', NULL, 0, '2017211267', '张', '泽洋', '', 0, 1, '2018-12-06 03:31:03', '张泽洋', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(300, 'pbkdf2_sha256$24000$Sn8Rr86NPrDk$ozzdUxTYlOwsd0WeJQPbwjEijUTeCK7n4VpFNgfkG9k=', NULL, 0, '2017211268', '姚', '冬炜', '', 0, 1, '2018-12-06 03:31:03', '姚冬炜', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(301, 'pbkdf2_sha256$24000$MZuaAiCZ3G0M$C1jEGVbeXqzt68a6Fu4a9qWqf1wsp4uv0ZOtr2Zcxe0=', NULL, 0, '2017211454', '叶', '帆', '', 0, 1, '2018-12-06 03:31:03', '叶帆', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(302, 'pbkdf2_sha256$24000$J66ZSMf57RgQ$xMxnAax170UzwBiCHXkSnjeDovB7vB6Qd7Ygm6dEZuU=', NULL, 0, '2017211140', '田', '中一', '', 0, 1, '2018-12-06 03:31:03', '田中一', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(303, 'pbkdf2_sha256$24000$xs2ZAfQXD2DT$/Ex6izi2UIhanJO0kIfJCTbRV3QbsuK/7gU6sp6OZDw=', NULL, 0, '2017211558', '赵', '灿坤', '', 0, 1, '2018-12-06 03:31:03', '赵灿坤', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(304, 'pbkdf2_sha256$24000$nivm7Xh99AHy$yzXeye6fbuvAXRLkzZqiZWhOcdS+zYBZkms9aOvb/M8=', NULL, 0, '2017211580', '罗', '庭蔚', '', 0, 1, '2018-12-06 03:31:03', '罗庭蔚', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(305, 'pbkdf2_sha256$24000$pIGaTaPrDk4y$+8WrWoHN/bBt/ppNbiekWgtMa1iklWCczAezhiSqA2c=', NULL, 0, '2017211201', '高', '远', '', 0, 1, '2018-12-06 03:31:03', '高远', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(306, 'pbkdf2_sha256$24000$DVg6GJF77GtC$IoRaSj4t3Nw9l6sHYEPLqCvABtPjHNHD4i3Qd7nd6u4=', NULL, 0, '2017211512', '雷', '一鸣', '', 0, 1, '2018-12-06 03:31:03', '雷一鸣', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(307, 'pbkdf2_sha256$24000$LOurYNeeq2mv$1Aei6ocuZ7OtWlj0IBwEKmC9Fux1yeMgxvtQgpYU3Ww=', NULL, 0, '2017211215', '邢', '惠锋', '', 0, 1, '2018-12-06 03:31:04', '邢惠锋', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(308, 'pbkdf2_sha256$24000$a2KCidaVU08v$/WFr8yhgZiujCNF3MCrbQX9CE7+hHa4Qt4/HZW0aowo=', NULL, 0, '2017211347', '任', '绪辉', '', 0, 1, '2018-12-06 03:31:04', '任绪辉', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(309, 'pbkdf2_sha256$24000$DawCWhkuseMV$hjWE/Akn7Vr/A1dMXFujkElVlGWuWkp5LdZ3ZqEekvs=', NULL, 0, '2017211284', '王', '吟霄', '', 0, 1, '2018-12-06 03:31:04', '王吟霄', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(310, 'pbkdf2_sha256$24000$58vR7yMuwRel$tyIUtDMk34LmHyImPmR7YFnOqSiO0uIH2mmTjEOOk9Q=', NULL, 0, '2017211247', '罗', '洋洋', '', 0, 1, '2018-12-06 03:31:04', '罗洋洋', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(311, 'pbkdf2_sha256$24000$fVZlG22enwIn$YFB0fGKgDjqGJDvdg9T/mcHTrAbgfPL+q6+mlXHs6Vo=', NULL, 0, '2017211296', '陆', '明聪', '', 0, 1, '2018-12-06 03:31:04', '陆明聪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(312, 'pbkdf2_sha256$24000$7HMDLX2NP5NP$vw6VuHCr9EKvtTJrMXvXjnlBfeJ4NZUN7tmVkSrP3Jg=', NULL, 0, '2017211132', '薛', '晴心', '', 0, 1, '2018-12-06 03:31:04', '薛晴心', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(313, 'pbkdf2_sha256$24000$XksXM87tv8S5$r8+u3/nC+1lABKESPYIcPWllYHKTFewGIeezK0s42ww=', NULL, 0, '2017211253', '赵', '飞翔', '', 0, 1, '2018-12-06 03:31:04', '赵飞翔', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(314, 'pbkdf2_sha256$24000$M7tbJkK6sDC4$QLWzTiwrpznid4OvQ1LS/F/nc3iIe2ABU6WvlBoNnm4=', NULL, 0, '2017211582', '富', '俞锋', '', 0, 1, '2018-12-06 03:31:04', '富俞锋', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(315, 'pbkdf2_sha256$24000$5U0jbe6NsPSe$6hi1ldbusN1hYexNe1VOBXkhNImFcQ8YNzL0nYodd+k=', NULL, 0, '2017211286', '芊', '海', '', 0, 1, '2018-12-06 03:31:04', '芊海', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(316, 'pbkdf2_sha256$24000$Qfkfq5mOEjTo$7aK6Eir5naJooWnmYcHdpSvwqknxObHg3MMmyz+VUD0=', NULL, 0, '2017211593', '兰', '泽军', '', 0, 1, '2018-12-06 03:31:04', '兰泽军', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(317, 'pbkdf2_sha256$24000$a7Aci98zq1U0$ZSbJhl2noazHJjYn9EJTmDbNgaNXE8i626jyj2Fzua4=', NULL, 0, '2017211453', '戴', '紫纯', '', 0, 1, '2018-12-06 03:31:04', '戴紫纯', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(318, 'pbkdf2_sha256$24000$73lT8XXT84Zl$sPPSzaqe+cueehWKG2PL/nKq7tlPY7Wu/cmsU2V9ZAg=', NULL, 0, '2017211327', '邱', '诗媛', '', 0, 1, '2018-12-06 03:31:04', '邱诗媛', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(319, 'pbkdf2_sha256$24000$LRsKhCZ5LG9A$PU8p1/o6DMfLKPEaFnfwkJ0GGOn0WStmHkMcw7t3HzA=', NULL, 0, '2017211287', '李', '俊杰', '', 0, 1, '2018-12-06 03:31:04', '李俊杰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(320, 'pbkdf2_sha256$24000$ewZiBidtVcST$aqiJD7p6pBVGjlUTxGQ+dvzfb5ws0jmmVy+YeXgNYro=', NULL, 0, '2017211506', '艾', '强', '', 0, 1, '2018-12-06 03:31:04', '艾强', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(321, 'pbkdf2_sha256$24000$BGC3ryptyjV6$WZVe0cydGLr7B9F/Mtj9RJBPTZlDUqBf9CRfaiZO1XU=', NULL, 0, '2017211354', '胡', '耀宇', '', 0, 1, '2018-12-06 03:31:04', '胡耀宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(322, 'pbkdf2_sha256$24000$84mvi0cVJ1GF$MDkm8P3n424Ccqt6gLiZYiEm74B/8U9bUfR0CsRUFJI=', NULL, 0, '2017211204', '杨', '润泽', '', 0, 1, '2018-12-06 03:31:04', '杨润泽', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(323, 'pbkdf2_sha256$24000$lJLgFH1fN9oQ$zrRmn2JRImapRAt3O5UA4Q3J4ROo0+Btgz12Eh0hjqc=', NULL, 0, '2017211459', '石', '奔飞', '', 0, 1, '2018-12-06 03:31:05', '石奔飞', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(324, 'pbkdf2_sha256$24000$2zn6ctJHyNDF$Yg5RScQdjMHmvkr3pyk3n7kQYL8tn6yPe83GsY5z5Ns=', NULL, 0, '2017211285', '邓', '煜', '', 0, 1, '2018-12-06 03:31:05', '邓煜', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(325, 'pbkdf2_sha256$24000$vtJatP81fcme$OvXPc00QtCLntEhpvysmUhQbditHODcYmdZgJKa7TTo=', NULL, 0, '2017211334', '随', '明君', '', 0, 1, '2018-12-06 03:31:05', '随明君', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(326, 'pbkdf2_sha256$24000$P9OA2cfLN0QX$oa2KgJZSVCuvW2XBhuJjpYpETPARBZj1zZjlNZatxqk=', NULL, 0, '2017211209', '曾', '莉慧瑶', '', 0, 1, '2018-12-06 03:31:05', '曾莉慧瑶', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(327, 'pbkdf2_sha256$24000$CYQmhRrFXBtN$z4rRZQMbwF5DR3wPftMbljT1AETLuEn/FP8hypHgC9Y=', NULL, 0, '2017211306', '彭', '春力', '', 0, 1, '2018-12-06 03:31:05', '彭春力', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(328, 'pbkdf2_sha256$24000$kqGVwvJwF0yK$oZX1VQ+3U0dMYX6E5m4sB46BQ75VLgPxBBXt5TlWCAA=', NULL, 0, '2017211220', '张', '德劲', '', 0, 1, '2018-12-06 03:31:05', '张德劲', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(329, 'pbkdf2_sha256$24000$GqXOnnlIkkeL$jpK8BFoiW0AyhKFBHvthDO+hTFCEjppf47JqPkfuRmo=', NULL, 0, '2017211604', '韩', '银涛', '', 0, 1, '2018-12-06 03:31:05', '韩银涛', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(330, 'pbkdf2_sha256$24000$cUZze8OVDMMj$CIVLuEYD/FGiwKVAL9Ywd6ElliUoEOFmpfF95F3I8sI=', NULL, 0, '2017211212', '张', '嘉璐', '', 0, 1, '2018-12-06 03:31:05', '张嘉璐', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(331, 'pbkdf2_sha256$24000$Z3AxDvyJQRGf$uUGAW41TIrNx+DfgQLskSZlg57fzse6Jfu26SC44uGs=', NULL, 0, '2017211293', '谷', '小兵', '', 0, 1, '2018-12-06 03:31:05', '谷小兵', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(332, 'pbkdf2_sha256$24000$Tkq1qypxQ4U8$RhOiIQZjjUaidSMnafjCYXK+PRw6oHCt3kMfbjfAymg=', NULL, 0, '2017211254', '齐', '晓玥', '', 0, 1, '2018-12-06 03:31:05', '齐晓玥', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(333, 'pbkdf2_sha256$24000$dIw29SfBtTT2$SXBr0RTHwhZi06pYrWgHtufINVe8dd10UKsP4bY7SXU=', NULL, 0, '2017211514', '贾', '岱锡', '', 0, 1, '2018-12-06 03:31:05', '贾岱锡', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(334, 'pbkdf2_sha256$24000$ssJYq0oXR3Ul$ZChJGS1sbBoM0ejkOSSPjdyLIRczVzFhfjlF3+8k4VM=', NULL, 0, '2017211319', '何', '佳龙', '', 0, 1, '2018-12-06 03:31:05', '何佳龙', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(335, 'pbkdf2_sha256$24000$65ubLb70mJkH$pYdBmZE+P2hSZt0KFIXL+NehGqUY1siFgjLpygfIiHk=', NULL, 0, '2017211567', '韦', '金酉', '', 0, 1, '2018-12-06 03:31:05', '韦金酉', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(336, 'pbkdf2_sha256$24000$bo1ugfZoyNLH$Gv3kwbcSRUof73hKdcYgIouaIpYHk6vvr/84cT7+WKg=', NULL, 0, '2017211266', '王', '浩铭', '', 0, 1, '2018-12-06 03:31:05', '王浩铭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(337, 'pbkdf2_sha256$24000$KdZ5NEJ35DgA$64oRrjbjxtG0pIsAKnvFFs0V35ZtIT/ai64JJDAIZ6c=', NULL, 0, '2017211366', '侯', '逸能', '', 0, 1, '2018-12-06 03:31:05', '侯逸能', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(338, 'pbkdf2_sha256$24000$KPqyyG5oM1H8$MRR6TL5MZhT7227ol6k+HOkYxVtLRZXN1IpDcSlUtM0=', NULL, 0, '2017211547', '袁', '海伦', '', 0, 1, '2018-12-06 03:31:05', '袁海伦', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(339, 'pbkdf2_sha256$24000$ieaaV6dEcuHJ$SLsCNqzpgkyw5GK0vskx0ZYidARdFveTuwl26eJg2lE=', NULL, 0, '2017211251', '徐', '英博', '', 0, 1, '2018-12-06 03:31:06', '徐英博', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(340, 'pbkdf2_sha256$24000$tFIWRggDqHix$YieKntvD9WldAu7dW65nQfy02idpce9NBRfIRYtB6SA=', NULL, 0, '2017211477', '次', '成达吉', '', 0, 1, '2018-12-06 03:31:06', '次成达吉', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(341, 'pbkdf2_sha256$24000$dY6rLYD1tuRY$Scji+XxzWEovrd/s7f2I4t5d/t2JlmzigL+T2Kf+yzM=', NULL, 0, '2017211486', '索', '朗旦增', '', 0, 1, '2018-12-06 03:31:06', '索朗旦增', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(342, 'pbkdf2_sha256$24000$23bMgkIWEPGu$0LChDO1tdJ469vOXkGSe0kXyrdZFlvV83Z082fbaDR8=', NULL, 0, '2017211359', '尹', '思维', '', 0, 1, '2018-12-06 03:31:06', '尹思维', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(343, 'pbkdf2_sha256$24000$fYtOL7FuVAhK$dscuPSw5YoBRYfo6lfdden2DPvbO7OCFe5i+2HHFDSE=', NULL, 0, '2017211345', '王', '可欣', '', 0, 1, '2018-12-06 03:31:06', '王可欣', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(344, 'pbkdf2_sha256$24000$80UTqGPYGakC$xtT6wQ94wUIcQ2S9X4x3VWOt35ws1pVYLgWj1d2UrX0=', NULL, 0, '2017211596', '苏', '建', '', 0, 1, '2018-12-06 03:31:06', '苏建', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(345, 'pbkdf2_sha256$24000$eGX3EUb2I2DD$Qh+R0Z3H3pUvJgCBawSxXwh7kxLKb4bWNMSkvTMMdJM=', NULL, 0, '2017211315', '郭', '培源', '', 0, 1, '2018-12-06 03:31:06', '郭培源', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(346, 'pbkdf2_sha256$24000$0SfXZakkgMC4$aCsVaB2H3IgvTvUokDmQ3nBatQy21gh99V0q1mShRlM=', NULL, 0, '2017211149', '赵', '佳祺', '', 0, 1, '2018-12-06 03:31:06', '赵佳祺', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(347, 'pbkdf2_sha256$24000$DIbRudxtubSO$X4X5zfkFCzOu8B5nvOP9ntGXbLtdn1pJDdDj1Eqes1E=', NULL, 0, '2017211374', '胡', '铂', '', 0, 1, '2018-12-06 03:31:06', '胡铂', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(348, 'pbkdf2_sha256$24000$EAblxymFNwzm$vXWhToCMLk1l3cBkHCLSEF8pyqWVRny06bH29bZadSU=', NULL, 0, '2017211534', '南', '丁', '', 0, 1, '2018-12-06 03:31:06', '南丁', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(349, 'pbkdf2_sha256$24000$smYiRNm46Kvk$C8GjfcZlFn9ljYHCUDJP5otRL4K1nh/0q3uvSQr2WWM=', NULL, 0, '2017211598', '周', '钰', '', 0, 1, '2018-12-06 03:31:06', '周钰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(350, 'pbkdf2_sha256$24000$OT4htXAokEgE$sgBcR43oO4kvjVjEutkcmR37vPEtGsvxnzmUYUgB84g=', NULL, 0, '2017211367', '潘', '日鑫', '', 0, 1, '2018-12-06 03:31:06', '潘日鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(351, 'pbkdf2_sha256$24000$kFMlo6bKFKas$2s08kM27KAviQerfW+lyKCK/OXmmMEAD4Up1SF4aPwk=', NULL, 0, '2017211418', '何', '镞', '', 0, 1, '2018-12-06 03:31:06', '何镞', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(352, 'pbkdf2_sha256$24000$UpZh9pOxSjPd$MpmghJeXKtB+kBv9MaW+Er6ohovoz6FSRFm1po9gOBU=', NULL, 0, '2017211581', '吴', '佩鞠', '', 0, 1, '2018-12-06 03:31:06', '吴佩鞠', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(353, 'pbkdf2_sha256$24000$mc7HDL5aoyiU$De5QCR1ykZT/HxGSpnOKsxus5oj577jFbRevo/GkOeI=', NULL, 0, '2017211539', '李', '佳豪', '', 0, 1, '2018-12-06 03:31:06', '李佳豪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(354, 'pbkdf2_sha256$24000$Pt7d4vyFKTfy$qeyoAv8dmUBqGi5/Q80zAQadJ3u320wTVVh837SYwng=', NULL, 0, '2017211563', '项', '云松', '', 0, 1, '2018-12-06 03:31:06', '项云松', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(355, 'pbkdf2_sha256$24000$tCHfJ0i2OLtg$RfWJJFqq6ccWymTBSCTvNiMRRaWmATf82dgEtc11KNs=', NULL, 0, '2017211480', '郭', '朝宇', '', 0, 1, '2018-12-06 03:31:06', '郭朝宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(356, 'pbkdf2_sha256$24000$6q3kAVkiDmfm$jKhl0gED/FsLMXr/Zh4370QAYoEtk5ggq+4qn3gGwL8=', NULL, 0, '2017211344', '丁', '硕', '', 0, 1, '2018-12-06 03:31:06', '丁硕', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(357, 'pbkdf2_sha256$24000$3Sq7evlJJ6HF$sSVZpr9gvPD/nBft0ncJ/NwZTtXIT56edbbRFc6eZuk=', NULL, 0, '2017211352', '郑', '彦卿', '', 0, 1, '2018-12-06 03:31:07', '郑彦卿', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(358, 'pbkdf2_sha256$24000$Np9yCNibpW0e$4V/aVpaDBwOu6KIc48dJjxvYFM+3F8NSXBJSvXHNTkQ=', NULL, 0, '2017211368', '赵', '子豪', '', 0, 1, '2018-12-06 03:31:07', '赵子豪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(359, 'pbkdf2_sha256$24000$WRxYxZKy2uiN$XT6PfmLuxPRtgcIDmsrCpZFxhsWcpf3XCxsOkWjMcT8=', '2018-12-06 12:41:38', 0, '2017211301', '王', '耀祖', '', 0, 1, '2018-12-06 03:31:07', '王耀祖', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(360, 'pbkdf2_sha256$24000$yAEgZWNkXAkC$PRHyD8x4DoevJyCaNmBeyrGjuqlntjNWUZ7vNdmRvww=', NULL, 0, '2017211245', '张', '立佳', '', 0, 1, '2018-12-06 03:31:07', '张立佳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(361, 'pbkdf2_sha256$24000$YIuewznR2UVo$LLt6pD8A0/hhWPYiZZGlIqYJrojhHrACx9YR4HZxnl8=', NULL, 0, '2017211377', '马', '文慧', '', 0, 1, '2018-12-06 03:31:07', '马文慧', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(362, 'pbkdf2_sha256$24000$mPOUob5JTQwD$h8SuRbnx2YxDhEj1bo6Ue2zwumrsrJp564NyGFyEimQ=', NULL, 0, '2017211182', '黄', '卓傲', '', 0, 1, '2018-12-06 03:31:07', '黄卓傲', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(363, 'pbkdf2_sha256$24000$3jGywCtHLj2f$Ah2z8MNm5j63obIjJGt4fiuHqdH4G4DHa5zmEIzQY2k=', NULL, 0, '2017211113', '刘', '溪', '', 0, 1, '2018-12-06 03:31:07', '刘溪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(364, 'pbkdf2_sha256$24000$kxdY46nZmyXa$HIR2Lv9IaTXLCGauA8M9t50ktPHeTzMY/KJRdqbiLek=', NULL, 0, '2017211353', '薛', '啸岳', '', 0, 1, '2018-12-06 03:31:07', '薛啸岳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(365, 'pbkdf2_sha256$24000$Au6X3jbiun4I$vzjPwQmg/Vg7NpDATUtiQ212+5HgjHwnYeTYLk13KQw=', NULL, 0, '2017211362', '钟', '一铭', '', 0, 1, '2018-12-06 03:31:07', '钟一铭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(366, 'pbkdf2_sha256$24000$P98L93XImVb0$nB6UC7YJ+3ucD8ng6kJqIam+xWECFh0jdhORb6X6mbE=', NULL, 0, '2017211199', '翟', '钰', '', 0, 1, '2018-12-06 03:31:07', '翟钰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(367, 'pbkdf2_sha256$24000$dFDBZhMTTJSc$8ILVb/kzdTl3BnbjseBhXw+vnXe2BdoUhOLxee/4Efo=', NULL, 0, '2017211538', '张', '思茹', '', 0, 1, '2018-12-06 03:31:07', '张思茹', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(368, 'pbkdf2_sha256$24000$ToKQ57rAalAf$Ysg/Pa36OAgpj4ZGrKsq3Rba2Lj8gqVGpN9sPavgNcU=', NULL, 0, '2017211607', '熊', '菲', '', 0, 1, '2018-12-06 03:31:07', '熊菲', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(369, 'pbkdf2_sha256$24000$Sg7iEUee0AoC$P76xHQvNJt1emBsenfCIn37gBCD+ykN2S+kfdXzQql0=', NULL, 0, '2017211511', '奚', '明恩', '', 0, 1, '2018-12-06 03:31:07', '奚明恩', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(370, 'pbkdf2_sha256$24000$viV9gPxi634u$1kHqGyutND2j3GxT9Y2BLLTL6b1fgjFcpG0xxffsksI=', NULL, 0, '2017211402', '郑', '登高', '', 0, 1, '2018-12-06 03:31:07', '郑登高', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(371, 'pbkdf2_sha256$24000$1Dki2lfylD3i$WuE3uG8LwcenSKscIE+VYF98dhiZCe62LWDUTfSSkHc=', NULL, 0, '2017211299', '孟', '佳毅', '', 0, 1, '2018-12-06 03:31:07', '孟佳毅', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(372, 'pbkdf2_sha256$24000$tUZwRtmu2ZIw$5N8ByyrbvBze1aCaeK0iL0iQOEtpcHvk+UKO73giAy8=', NULL, 0, '2017211562', '刘', '凡', '', 0, 1, '2018-12-06 03:31:07', '刘凡', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(373, 'pbkdf2_sha256$24000$H2OWpqYnDaST$xrOCdCbJY8oYXyn6uxMs/L/bO1Bx+wirJLYRkgQHEQI=', NULL, 0, '2017211590', '周', '宇洋', '', 0, 1, '2018-12-06 03:31:08', '周宇洋', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(374, 'pbkdf2_sha256$24000$fyoE50OwTlHQ$lUJUOlMVUssfkG8OaZxJ4YFG6g+Vs2PE7kXqtOtZXic=', NULL, 0, '2017211479', '杨', '睿', '', 0, 1, '2018-12-06 03:31:08', '杨睿', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(375, 'pbkdf2_sha256$24000$dsSmtRIwpFhd$jNmaEBX+R6EcB8mSsiv047TDJlw5a2WvYZUsL+scvTY=', NULL, 0, '2017211543', '牛', '雨彤', '', 0, 1, '2018-12-06 03:31:08', '牛雨彤', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(376, 'pbkdf2_sha256$24000$PtgNexwDzj0F$eefHE8z9voWygZAtE1qbn1VUy/rdz482FyBAucF6l1U=', NULL, 0, '2017211308', '张', '旭童', '', 0, 1, '2018-12-06 03:31:08', '张旭童', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(377, 'pbkdf2_sha256$24000$9e7Xnp4XuFSs$cVb44LKnjBhn2S0rmIzU92Sd+FM5TtY1pAwjJYNZHH8=', NULL, 0, '2017211442', '宁', '柏轩', '', 0, 1, '2018-12-06 03:31:08', '宁柏轩', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(378, 'pbkdf2_sha256$24000$eEthBn7uubld$qjcdEFKjnkUbuDguaEYxz5pbFvhwKE/As475UOriQgY=', NULL, 0, '2017211133', '董', '耀新', '', 0, 1, '2018-12-06 03:31:08', '董耀新', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(379, 'pbkdf2_sha256$24000$scCG2hlqjQlJ$WY/7+csaHvDJ6nbrIhzHUvaXsbwJkjSJHEoIItX2Bes=', NULL, 0, '2017211564', '宋', '威', '', 0, 1, '2018-12-06 03:31:08', '宋威', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(380, 'pbkdf2_sha256$24000$Zx1zJbzllDba$jttaW25POraA3gf1tThLnl3+Q3K/7qKufB7U/IS+F+g=', NULL, 0, '2017211161', '周', '宇洋', '', 0, 1, '2018-12-06 03:31:08', '周宇洋', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(381, 'pbkdf2_sha256$24000$d5VeRsjpcefw$iNB7HnsiJpN1qha/K0h/JLeZKYyv0AZg9XdYyz/U148=', NULL, 0, '2017211528', '彭', '曦', '', 0, 1, '2018-12-06 03:31:08', '彭曦', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(382, 'pbkdf2_sha256$24000$JwzlONjnFn24$FZ5an6h9daa/bVWqaWUqlx97iu7UriKVqAjTaCyh8z8=', NULL, 0, '2017211606', '肖', '遥', '', 0, 1, '2018-12-06 03:31:08', '肖遥', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(383, 'pbkdf2_sha256$24000$CoDBHQX0Fp3b$Z92hq7VH6WcPq6rQP77Mfaa/rLkjn/g46rHFJDEU7ks=', NULL, 0, '2017211281', '王', '培鑫', '', 0, 1, '2018-12-06 03:31:08', '王培鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(384, 'pbkdf2_sha256$24000$wivWhX1LgtYJ$2ch1fqvTmBtIlKEpZG7/dazS2QMC5GirNHTHe2Ks9oE=', NULL, 0, '2017211218', '郑', '文凯', '', 0, 1, '2018-12-06 03:31:08', '郑文凯', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(385, 'pbkdf2_sha256$24000$EAHi6Bby0dIO$IrT8B3hrriyJRKkIx3Mcg+Zqef792R/CLH0TYuGUDnc=', NULL, 0, '2017211502', '索', '丙妍', '', 0, 1, '2018-12-06 03:31:08', '索丙妍', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(386, 'pbkdf2_sha256$24000$RxkYHSqv8Rrs$WwfKJuDCPCfSe+EnESBpemKtAB1w2Nl5uj7BcFblBD8=', NULL, 0, '2017211205', '王', '帅迪', '', 0, 1, '2018-12-06 03:31:08', '王帅迪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(387, 'pbkdf2_sha256$24000$zlLIpMbX4S7J$uYIVZsumU7W17RHoegXPXVBIEXlxgwT2qLd6gjWxYqA=', NULL, 0, '2017211150', '李', '明昊', '', 0, 1, '2018-12-06 03:31:08', '李明昊', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(388, 'pbkdf2_sha256$24000$I6dycobRO7Gu$rL4ZMZIPOeUvbb4/Sqw0Q5r5S+hTsCRoPEdWsxtCfVM=', NULL, 0, '2017211127', '张', '若冰', '', 0, 1, '2018-12-06 03:31:08', '张若冰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(389, 'pbkdf2_sha256$24000$dTITYLxXYLVc$cCrYNsDlnjMI4X0cR1c/NzNsEaS4tZ4iV86JXx6pAsM=', NULL, 0, '2017211363', '郑', '金河', '', 0, 1, '2018-12-06 03:31:08', '郑金河', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(390, 'pbkdf2_sha256$24000$iGAljzFxr2UK$Tx76UIN5MYht2kLe0ET9809An9yD0K8SNkevIx6Qb1g=', NULL, 0, '2017211560', '陈', '文广', '', 0, 1, '2018-12-06 03:31:09', '陈文广', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(391, 'pbkdf2_sha256$24000$jLhzjdbvTAWM$kvldOIfCB3RyzZODWCdrGWW2xw6EHgFv5OxK1OMiMwA=', NULL, 0, '2017211186', '韩', '德鑫', '', 0, 1, '2018-12-06 03:31:09', '韩德鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(392, 'pbkdf2_sha256$24000$ha77MV8F8Tzb$7tNWcWfkeP8tqHr5HtXJrY5b2HPzc4kYtUabP6fbXg8=', NULL, 0, '2017211128', '邹', '自力', '', 0, 1, '2018-12-06 03:31:09', '邹自力', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(393, 'pbkdf2_sha256$24000$mJHB5xLl30BB$ejhDEqh75f+t1vUFldk1NaxKepECLQ9/XQvz9VjpodQ=', NULL, 0, '2017211379', '徐', '千千', '', 0, 1, '2018-12-06 03:31:09', '徐千千', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(394, 'pbkdf2_sha256$24000$FFL15cmlD6yC$3JHLSwN44iM/nnYEylsKcHZ8n87gIbqS1iPNhCT/ePQ=', NULL, 0, '2017211609', '张', '金博', '', 0, 1, '2018-12-06 03:31:09', '张金博', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(395, 'pbkdf2_sha256$24000$raBfIuNPjaL1$90ixMkkeVE42uq3EivDGPwbsbCO29ZjcCNYbkElN8uw=', NULL, 0, '2017211437', '朱', '子璇', '', 0, 1, '2018-12-06 03:31:09', '朱子璇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(396, 'pbkdf2_sha256$24000$xXQDGaFg2NTN$AzeMcCOnbuNhADM/Kcx6oJoWN+z44mWDdZfQqj00B8g=', NULL, 0, '2017211365', '竹', '倩叶', '', 0, 1, '2018-12-06 03:31:09', '竹倩叶', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(397, 'pbkdf2_sha256$24000$vc8TFpaLxNHt$2tgz11mohoYkSxbQdDb0vuVDW6xya5ZRL5zYLqKIP+k=', NULL, 0, '2017211314', '郑', '逸群', '', 0, 1, '2018-12-06 03:31:09', '郑逸群', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(398, 'pbkdf2_sha256$24000$iyOHxtgEb5oC$Hsm6ETN81WOnv3k5Ir4okuVuLj8W4rH32Jy3Jv1HEL4=', NULL, 0, '2017211200', '张', '家豪', '', 0, 1, '2018-12-06 03:31:09', '张家豪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(399, 'pbkdf2_sha256$24000$9TcpMNlxiqCE$pT6jnqcW7KMbtTtViYG/R0AnFc2EBLjjnPkyJNT7NqA=', NULL, 0, '2017211411', '李', '萤', '', 0, 1, '2018-12-06 03:31:09', '李萤', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(400, 'pbkdf2_sha256$24000$aG9c4azxfNlr$Zb7W1UFO2cGuiTxTxs4NKimM2uc9SyrrL6K5zjfI9iw=', NULL, 0, '2017211178', '廖', '乙鑫', '', 0, 1, '2018-12-06 03:31:09', '廖乙鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(401, 'pbkdf2_sha256$24000$HfB1fON0rJrC$3DkzONhY6XaG8CnWK6rgegnXuskpAe8DHzxct3p8K8M=', NULL, 0, '2017211444', '郭', '雨心', '', 0, 1, '2018-12-06 03:31:09', '郭雨心', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(402, 'pbkdf2_sha256$24000$Gx8QNJJbPQww$sGV5M63HUNy0lIs8orhPA0iVg21yz9qguMyvTz1vuOA=', NULL, 0, '2017211213', '项', '云松', '', 0, 1, '2018-12-06 03:31:09', '项云松', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(403, 'pbkdf2_sha256$24000$Mkb55TJvksz7$2mktVlaqtGERCnRvi4sBPywGlGuOawjFwMujfMPVAvA=', NULL, 0, '2017211165', '李', '孟轩', '', 0, 1, '2018-12-06 03:31:09', '李孟轩', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(404, 'pbkdf2_sha256$24000$KU6rtHnfbH2Q$3OQydOc8LMSnUyrRfwM6fSked7sFRlV82sYP4hpggxc=', NULL, 0, '2017211385', '邱', '建鑫', '', 0, 1, '2018-12-06 03:31:09', '邱建鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(405, 'pbkdf2_sha256$24000$CyXoixLAMAzy$KXfvWR+jkTX8ZJysxSpB7MJl03WuIkEGoxPlgYYm/8U=', NULL, 0, '2017211312', '邱', '诗媛', '', 0, 1, '2018-12-06 03:31:09', '邱诗媛', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(406, 'pbkdf2_sha256$24000$UWqAnpesOTvJ$V4akkXcfKyDUWqgyFYJ2Xr+az75G3w2jJJ3Doi7FYBY=', NULL, 0, '2017211412', '盛', '熙铭', '', 0, 1, '2018-12-06 03:31:10', '盛熙铭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(407, 'pbkdf2_sha256$24000$Bm2FeUHRWHdP$29N/iPw7UdXTvq5OGe3oql7MDwRP0wS4Th6pUY/+UsM=', NULL, 0, '2017211325', '黄', '云龙', '', 0, 1, '2018-12-06 03:31:10', '黄云龙', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(408, 'pbkdf2_sha256$24000$UAkCEsifkmoz$7S2SW3KoQQiZio/rWrcdieUP/FZ/3wXmlOxWlK+UQuU=', NULL, 0, '2017211156', '张', '大鑫', '', 0, 1, '2018-12-06 03:31:10', '张大鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(409, 'pbkdf2_sha256$24000$awXiDEct3lFb$cUuDS/zo54xx3BFY8mawe39i/CdMKJR4NXeY9/sA6Z8=', NULL, 0, '2017211527', '汤', '思璇', '', 0, 1, '2018-12-06 03:31:10', '汤思璇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(410, 'pbkdf2_sha256$24000$fA0f43BPTYSQ$n7mdzDCUpxzypuf7GZJJJSmPJMvoZTN6Xwux9SaCcTE=', NULL, 0, '2017211222', '郭', '子汉', '', 0, 1, '2018-12-06 03:31:10', '郭子汉', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(411, 'pbkdf2_sha256$24000$N2K9wf7ySbI9$aUtsjCuWArDxkk68it5Ih2mZym1yDkyJDo5B3sVG7i0=', NULL, 0, '2017211467', '陈', '政瑞', '', 0, 1, '2018-12-06 03:31:10', '陈政瑞', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(412, 'pbkdf2_sha256$24000$PAJf96Bbm3Kv$05Q+mbwwTwDeuV4TqrVJ4a9NUtyJlTNqmrqC3XxDrSY=', NULL, 0, '2017211400', '杨', '俊烨', '', 0, 1, '2018-12-06 03:31:10', '杨俊烨', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(413, 'pbkdf2_sha256$24000$A0nZUJSprEB7$4I6fuWDRZFjr9JWhwb5F7JBuDmXIQUSkZZt5SyDORPM=', NULL, 0, '2017211384', '季', '涵', '', 0, 1, '2018-12-06 03:31:10', '季涵', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(414, 'pbkdf2_sha256$24000$N1LHHEvidAzY$w4DgtUCTGZdVxSlziH4PQCybjblH32UR6oBIURYE/LM=', NULL, 0, '2017211307', '张', '振', '', 0, 1, '2018-12-06 03:31:10', '张振', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(415, 'pbkdf2_sha256$24000$iuuMvERmbEfB$ZrqS1H70wjsa+E3/cJxv59nBGy/uFJJTRaF0TZ5abas=', NULL, 0, '2017211381', '孙', '文', '', 0, 1, '2018-12-06 03:31:10', '孙文', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(416, 'pbkdf2_sha256$24000$lzN6kd9qDLAh$hbOIlhdgR/ox8fH+5rExsgg2+jUIvr51HvY6mD//KSg=', NULL, 0, '2017211130', '郭', '海洋', '', 0, 1, '2018-12-06 03:31:10', '郭海洋', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(417, 'pbkdf2_sha256$24000$9cvHaGJiSRzT$xT9wDVE1M3d56zbz+GFMTu6yZOnAbSa5xGromtZFl+4=', NULL, 0, '2017211311', '潘', '凯强', '', 0, 1, '2018-12-06 03:31:10', '潘凯强', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(418, 'pbkdf2_sha256$24000$aIdSX6Ob5Tlp$f8ufQpX0O2nVxDE5mY5qMshTHUEJuF8kOzPaKEX47Gk=', NULL, 0, '2017211600', '林', '稚皓', '', 0, 1, '2018-12-06 03:31:10', '林稚皓', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(419, 'pbkdf2_sha256$24000$SJ5QXezHh7r2$mN+rvM6Lje3Ild+vGrRIj+uFJTUUy43ZXLWZwTMq6YI=', NULL, 0, '2017211120', '王', '大卫', '', 0, 1, '2018-12-06 03:31:10', '王大卫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(420, 'pbkdf2_sha256$24000$nvqXG7LaOChO$+WgeROiD8jkW2jzahkoPE7IVo+qOhvvdbALCY4EXqw4=', NULL, 0, '2017211300', '李', '博瑞', '', 0, 1, '2018-12-06 03:31:10', '李博瑞', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(421, 'pbkdf2_sha256$24000$g2LciTnZeFMt$H9peU5JM346vujlLYPuTZbqneEuoeHZVzdlEnRwrSmM=', NULL, 0, '2017211615', '冯', '志超', '', 0, 1, '2018-12-06 03:31:10', '冯志超', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(422, 'pbkdf2_sha256$24000$OUcmsaSG0PZ1$o3axvBEcw5z20IbMwP3Is/vskuFENsWjaSSinjACxfc=', NULL, 0, '2017211508', '莫', '傲', '', 0, 1, '2018-12-06 03:31:10', '莫傲', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(423, 'pbkdf2_sha256$24000$dJY2X0JIxY4x$xJbax8vXQrn9/tKDg/VnosWzyqdd3syFVwkDqgoHhAw=', NULL, 0, '2017211185', '金', '楠昊', '', 0, 1, '2018-12-06 03:31:10', '金楠昊', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(424, 'pbkdf2_sha256$24000$psSarW2PUnyN$Jbnz2uSHLIimyXl6P1oL9izeGDnNwV0IAawzMt2bF+8=', NULL, 0, '2017211510', '吴', '征', '', 0, 1, '2018-12-06 03:31:11', '吴征', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(425, 'pbkdf2_sha256$24000$NRWfpGcjjiRg$MxjpUnphzrV3txrqCXAzHe6hpBXulM0tRs9R9KHCbBc=', NULL, 0, '2017211565', '王', '思凡', '', 0, 1, '2018-12-06 03:31:11', '王思凡', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(426, 'pbkdf2_sha256$24000$9zCzjtvvoura$SoNcKdoT5ELjEl0eQpc7xJYyKCQGwQ9SeEG7PvMOluc=', NULL, 0, '2017211507', '唐', '浩然', '', 0, 1, '2018-12-06 03:31:11', '唐浩然', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(427, 'pbkdf2_sha256$24000$wNyivWFyRLVq$xh9EPttvO6xTNaS27d2ICSGOo0dHIa6vOnhQ4lieShw=', NULL, 0, '2017211310', '刘', '新宇', '', 0, 1, '2018-12-06 03:31:11', '刘新宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(428, 'pbkdf2_sha256$24000$dTzor5pvIbRR$+Z77/W9Q0Z2YPksYfJcYmZ6w6eRI/3Q4BQQ6yMxPF0U=', NULL, 0, '2017211118', '蔺', '越蓓', '', 0, 1, '2018-12-06 03:31:11', '蔺越蓓', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(429, 'pbkdf2_sha256$24000$RZ6pIOlM2Oki$I38P3+X4X3j+9I4uSwVHu05gnWad6L7GQlif6EiZ9gg=', NULL, 0, '2017211601', '耿', '海直', '', 0, 1, '2018-12-06 03:31:11', '耿海直', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(430, 'pbkdf2_sha256$24000$wtOrsR0ywRlI$8k54SiFHT9ha1OoVEhpeJUG6scpWNG6cy90wq2UAmGE=', NULL, 0, '2017211298', '范', '乾一', '', 0, 1, '2018-12-06 03:31:11', '范乾一', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(431, 'pbkdf2_sha256$24000$5FedMcFwVZhc$ssKeJJKsBEG1cWKTuynlnlSaJMlSjJ6jAwUg7I0mvxE=', NULL, 0, '2017211369', '凌', '晨', '', 0, 1, '2018-12-06 03:31:11', '凌晨', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(432, 'pbkdf2_sha256$24000$F9NgRrcrXb3s$L4Dm/TZDEAuMw3uAkYVKgJkNtpjABKI7mu9BZzOcOHA=', NULL, 0, '2017211382', '付', '彬', '', 0, 1, '2018-12-06 03:31:11', '付彬', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(433, 'pbkdf2_sha256$24000$GA58D0M8Wmwv$UUBLSLHTNfte2PJmdVK3l4ypFvaRTAKwqiTG05mbW8w=', NULL, 0, '2017211380', '符', '芳芳', '', 0, 1, '2018-12-06 03:31:11', '符芳芳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(434, 'pbkdf2_sha256$24000$0tt1hHVDYlkX$PmiwwhwlM7F9MyxaANOL7N2p1CNlROtEbKwRjRUEpzM=', NULL, 0, '2017211616', '吴', '思慧', '', 0, 1, '2018-12-06 03:31:11', '吴思慧', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(435, 'pbkdf2_sha256$24000$FqC8pmuo4rul$0NTI+WDPRANQaY1FGjJWnDDm5+UptCi/pN8MStl5mo0=', NULL, 0, '2017211219', '张', '祚振', '', 0, 1, '2018-12-06 03:31:11', '张祚振', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(436, 'pbkdf2_sha256$24000$H1YlQ32tUXRS$kV5o692of2hY0WpQ7k5uVACFSTB6GeBQC1qjDnXsbB0=', NULL, 0, '2017211431', '李', '玉慧', '', 0, 1, '2018-12-06 03:31:11', '李玉慧', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(437, 'pbkdf2_sha256$24000$O18P6faSFbix$n6vtnLAIXzB32I0ZrIvTkcngo8aH5VPYzSHX8frkbyg=', NULL, 0, '2017211357', '孟', '琪峰', '', 0, 1, '2018-12-06 03:31:11', '孟琪峰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(438, 'pbkdf2_sha256$24000$Av09WOVCVkEL$2jHNqseP5ZujIWOtc4hjRH9R6IY5aGCcX7igZB+isV8=', NULL, 0, '2017211413', '陈', '志钢', '', 0, 1, '2018-12-06 03:31:11', '陈志钢', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(439, 'pbkdf2_sha256$24000$2qVT5LamyI09$p411fSVccyAXZGmRVDXijorVd6r2OZHMD2LOuM7Pp7w=', NULL, 0, '2017211171', '申', '茜', '', 0, 1, '2018-12-06 03:31:11', '申茜', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(440, 'pbkdf2_sha256$24000$AC9GvVFymkSu$STVN/ddozab/ehC97Vrc3CDXpD2tgnE1isjStfidCT4=', NULL, 0, '2017211575', '李', '鸿政', '', 0, 1, '2018-12-06 03:31:12', '李鸿政', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(441, 'pbkdf2_sha256$24000$bF8GCFeV8aCC$Tju1cSqWt+2EqjMOzl1glB6JbJTiBbGPH5Pg86vkWmg=', NULL, 0, '2017211410', '黄', '锦', '', 0, 1, '2018-12-06 03:31:12', '黄锦', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(442, 'pbkdf2_sha256$24000$X4vEPSaIPGAq$kueY1UzoJt/kIYNrG83tI8Oe2LLwQK3H5dXF/kvk/6I=', NULL, 0, '2017211119', '程', '宇辰', '', 0, 1, '2018-12-06 03:31:12', '程宇辰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1);
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `mobile`, `image`, `user_class`, `role`) VALUES
(443, 'pbkdf2_sha256$24000$hMYN7eQw9Wtk$XMJhlZmGsODIylmLcFPKVI0yZOAIJAMdYMYwtl/dRrA=', NULL, 0, '2017211414', '万', '家辰', '', 0, 1, '2018-12-06 03:31:12', '万家辰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(444, 'pbkdf2_sha256$24000$EvJg9WMD6yof$2/wHiYHDpyvZYgK3q6xHkbNhWiiU1IbO4Na/rs0ji6E=', NULL, 0, '2017211121', '陈', '镇东', '', 0, 1, '2018-12-06 03:31:12', '陈镇东', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(445, 'pbkdf2_sha256$24000$ax0lNhG8yGQm$OvUXhYx2S6F7y8WgQvfs2gzoC7IP6g+o2k2WA4NuFQ0=', NULL, 0, '2017211603', '梅', '梓博', '', 0, 1, '2018-12-06 03:31:12', '梅梓博', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(446, 'pbkdf2_sha256$24000$B3wOONwMMqwW$BXvfHfKGD5/RVtpTi5f5pJTUb1okK6xHMyxhwywYtGU=', NULL, 0, '2017211154', '洪', '洲', '', 0, 1, '2018-12-06 03:31:12', '洪洲', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(447, 'pbkdf2_sha256$24000$SNcpCB0aXPv5$TRld7a5ZGtNfCF3gtcXspodmqUZ02ALOkHvNsSBZ25o=', NULL, 0, '2017211194', '王', '牧峰', '', 0, 1, '2018-12-06 03:31:12', '王牧峰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(448, 'pbkdf2_sha256$24000$zWjBtBm28zlZ$QPYuiaGnjS5mHEW+8Unn53LRLVylL5ynLRBOQQ5aCME=', NULL, 0, '2017211602', '刘', '正勤', '', 0, 1, '2018-12-06 03:31:12', '刘正勤', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(449, 'pbkdf2_sha256$24000$ApU609kiHuL5$fG64pTNXyFDYJPE3BAW3AGJ+7dCAZRWE1lPbrE9ESCY=', NULL, 0, '2017211475', '李', '浩然', '', 0, 1, '2018-12-06 03:31:12', '李浩然', NULL, 'female', NULL, 'static/images/head/default.png', '2017211313', 1),
(450, 'pbkdf2_sha256$24000$ilV2Q8LjpI2o$A/4JLANk1emj7jFFRUUol61hgz0qdQWICCnXv51cbjA=', NULL, 0, '2017211175', '赵', '睿凌', '', 0, 1, '2018-12-06 03:31:12', '赵睿凌', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(451, 'pbkdf2_sha256$24000$0RRXBypBlP78$/cuzj2DDpnOgJs+V13qJktrIXmeMoAnaXcNQCMed90o=', NULL, 0, '2017211302', '梁', '书豪', '', 0, 1, '2018-12-06 03:31:12', '梁书豪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(452, 'pbkdf2_sha256$24000$hM7jJzAYQsD0$z4R54uNwqqqMRgzeRC0GEwiOT6090xbpdK81ntMe7mQ=', NULL, 0, '2017211355', '朱', '一同', '', 0, 1, '2018-12-06 03:31:12', '朱一同', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(453, 'pbkdf2_sha256$24000$FuDNbWjR3kdG$d8GwMJLQrOCbpGs7yApvNeZccTn8rdesImIefoUQSqU=', NULL, 0, '2017211449', '赵', '鹏飞', '', 0, 1, '2018-12-06 03:31:12', '赵鹏飞', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(454, 'pbkdf2_sha256$24000$3Z565SSVtQP4$TODtj0mt54tLzoJPOCD3uWQbyX1dPed/3l+2C1++Wfo=', NULL, 0, '2017211435', '陈', '辉', '', 0, 1, '2018-12-06 03:31:12', '陈辉', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(455, 'pbkdf2_sha256$24000$qBNtg9owMagD$tIjz6U7JdDFC/nMyFHthDpsUB8DnCNbNxStQ1U/33LY=', NULL, 0, '2017211614', '杜', '煊伟', '', 0, 1, '2018-12-06 03:31:13', '杜煊伟', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(456, 'pbkdf2_sha256$24000$3m6nPU9Oppdc$RP4IPMO4JFiZbgsoo/s3/iRbTtHv+q2T+qTE7tFhe4I=', NULL, 0, '2017211282', '罗', '文渊', '', 0, 1, '2018-12-06 03:31:13', '罗文渊', NULL, 'female', NULL, 'static/images/head/default.png', '2017211306', 1),
(457, 'pbkdf2_sha256$24000$yyo3c6LOgQuh$CpRmxU0bO7Uat1HUf/swPCzMVjwywp7RO4noKfzKrq0=', NULL, 0, '2017211243', '高', '进', '', 0, 1, '2018-12-06 03:31:13', '高进', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(458, 'pbkdf2_sha256$24000$JPXdny7R38O1$m77l7yC2fRZVITJNzZpN8P07n1776EuP4EUHqDnSyh4=', NULL, 0, '2017211617', '郑', '奕伟', '', 0, 1, '2018-12-06 03:31:13', '郑奕伟', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(459, 'pbkdf2_sha256$24000$DZANmANxiFdP$vhgPnr7mC75qBjkbiS4Ca8IZ0FGnAcEfC9SsQlcnxBo=', NULL, 0, '2017211447', '徐', '钊', '', 0, 1, '2018-12-06 03:31:13', '徐钊', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(460, 'pbkdf2_sha256$24000$RkIty8YU3Ao1$3vxKqKaUs2LdXorvBaQLQxd4kEUsepY0OBPiQoTu5pg=', NULL, 0, '2017211167', '魏', '来', '', 0, 1, '2018-12-06 03:31:13', '魏来', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(461, 'pbkdf2_sha256$24000$vr8NNv6d7RUh$1CgwQMslZ7vURZWLbHvq8bunYG/598tGA9byGkVH2OQ=', NULL, 0, '2017211436', '张', '逸豪', '', 0, 1, '2018-12-06 03:31:13', '张逸豪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(462, 'pbkdf2_sha256$24000$FQvpjFSNIEuo$HTNdXb2J5UygGVPFrfeHKo56saoBqT1XjHJxH25vhtk=', NULL, 0, '2017211450', '徐', '钊', '', 0, 1, '2018-12-06 03:31:13', '徐钊', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(463, 'pbkdf2_sha256$24000$no4ieaCHQ6F3$W8eeQdpoaQpSFDbAHqfcZzMhxOOaFjO7rNduUDYQ5D0=', NULL, 0, '2017211157', '韩', '存谱', '', 0, 1, '2018-12-06 03:31:13', '韩存谱', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(464, 'pbkdf2_sha256$24000$OTqTUfI1w5ad$NoLZQe8GRF5DnCJEh2cvYhjiXBp5SDfde/6pK5QWhCU=', NULL, 0, '2017211303', '畅', '通', '', 0, 1, '2018-12-06 03:31:13', '畅通', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(465, 'pbkdf2_sha256$24000$NXHBsjnPf1Bg$gKuXr2wTuT7Lw/KpCCLHy8RhTTaI8MhHMtHPw7I0DAc=', NULL, 0, '2017211305', '吴', '家鑫', '', 0, 1, '2018-12-06 03:31:13', '吴家鑫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(466, 'pbkdf2_sha256$24000$DYekFpj4YY0b$kC0seb3c90rVqaf6t6exR+RBe2wrVmTqL7nuw7yswzo=', NULL, 0, '2017211448', '邹', '石勇', '', 0, 1, '2018-12-06 03:31:13', '邹石勇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(467, 'pbkdf2_sha256$24000$xwhoaKnHpGbC$LevmNrK12fCg3Q2dWdsJvur0xPUgUJyzw39VlC85sts=', NULL, 0, '2017211468', '杨', '智超', '', 0, 1, '2018-12-06 03:31:13', '杨智超', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(468, 'pbkdf2_sha256$24000$6W7zoRyF9tYP$3biSwBLym7daGTbjzdAEw6qHjHBk4WB+0c3sEIlIJvg=', NULL, 0, '2017211238', '韩', '昊轩', '', 0, 1, '2018-12-06 03:31:13', '韩昊轩', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(469, 'pbkdf2_sha256$24000$7b97vrqLbcv3$uh/5Df3qtboYsZx/yamr77Ig1prWS5tcZY4IrOfRlW4=', NULL, 0, '2017211304', '雷', '瑜', '', 0, 1, '2018-12-06 03:31:13', '雷瑜', NULL, 'female', NULL, 'static/images/head/default.png', '2017211307', 1),
(470, 'pbkdf2_sha256$24000$IUdvlq1OWIaj$uwyA/Yuc6KzQBD58UnUmA9DPzJSfdRGLf9c7SApW04w=', NULL, 0, '2017211399', '韦', '正喜', '', 0, 1, '2018-12-06 03:31:13', '韦正喜', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(471, 'pbkdf2_sha256$24000$r9YUvWUff7pX$oJ1aJTnPKV64duJIhOkQDr2S0z0/L6cBc/eyi7hB+r0=', NULL, 0, '2017211214', '胡', '智荣', '', 0, 1, '2018-12-06 03:31:14', '胡智荣', NULL, 'female', NULL, 'static/images/head/default.png', '2017211214', 1),
(472, 'pbkdf2_sha256$24000$GVtRIYRrS506$pK2JABH/oiy1ye0WKuSl7uZTIJl4DLsVscBYfs/aa8o=', NULL, 0, '2017211163', '郑', '然', '', 0, 1, '2018-12-06 03:31:14', '郑然', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(473, 'pbkdf2_sha256$24000$CDh65FR8hUyD$LopEeRb6xMOGCgm8LccW/78eiQ2eBn3sWQ6hSYKG1xk=', NULL, 0, '2017211356', '程', '年智', '', 0, 1, '2018-12-06 03:31:14', '程年智', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(474, 'pbkdf2_sha256$24000$gG0eO1hNtQxo$lLNWolGZ8ZIDz88DY9yo8pxRyI3vFXaCSX8uEsTuDJY=', NULL, 0, '2017211164', '朱', '晓琦', '', 0, 1, '2018-12-06 03:31:14', '朱晓琦', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(475, 'pbkdf2_sha256$24000$sBYLaHI9kVhC$2aaNaZ6jPoTh0sG8iRBKTK6cP1MAE5rlMaKXU9NcIXw=', NULL, 0, '2017211462', '宋', '飞宏', '', 0, 1, '2018-12-06 03:31:14', '宋飞宏', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(476, 'pbkdf2_sha256$24000$bYok6kOnOSqt$FAyuUnRT4imCvTOcTMMKHC307kyOFzWsu0pcsb90P04=', NULL, 0, '2017211162', '陈', '子岳', '', 0, 1, '2018-12-06 03:31:14', '陈子岳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(477, 'pbkdf2_sha256$24000$myKGYRNBuRlc$dojRyYaBYNsLQn6F0H4vff6SSRr02DNeuKVRZfn6wbU=', NULL, 0, '2017211370', '甘', '意', '', 0, 1, '2018-12-06 03:31:14', '甘意', NULL, 'female', NULL, 'static/images/head/default.png', '2017211309', 1),
(478, 'pbkdf2_sha256$24000$eEUwau3I2Htx$33UFTs7iI1Wyyq4EABOBXA1PJuGSFcMPWlzTAtbE5pc=', NULL, 0, '2017211452', '梁', '跃阳', '', 0, 1, '2018-12-06 03:31:14', '梁跃阳', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(479, 'pbkdf2_sha256$24000$zf95VD5ah3fM$walcOgfbsTeR9U5bNt6kE82THDi7zeFwNgwYf9b8uuM=', NULL, 0, '2017211426', '罗', '浩然', '', 0, 1, '2018-12-06 03:31:14', '罗浩然', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(480, 'pbkdf2_sha256$24000$vWelgIvh13vF$YSUQXFN00Q+InHigXi+fnNQD/9SqF8FUeqxq8fohKQ8=', NULL, 0, '2017211184', '梁', '家旭', '', 0, 1, '2018-12-06 03:31:14', '梁家旭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(481, 'pbkdf2_sha256$24000$Dn2gu3z2ZB4K$yqICi6lEf1z9+f+jV6yBwZdLdN4Bu2NtzhEpFSHfwnM=', NULL, 0, '2017211460', '高', '杰', '', 0, 1, '2018-12-06 03:31:14', '高杰', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(482, 'pbkdf2_sha256$24000$1ynbQPSSit8u$TJs5IVveSpMns3Ilj1QA1VrYNc0F84ywXHUKPrUriPM=', NULL, 0, '2017211236', '喻', '玮韬', '', 0, 1, '2018-12-06 03:31:14', '喻玮韬', NULL, 'female', NULL, 'static/images/head/default.png', '2017211305', 1),
(483, 'pbkdf2_sha256$24000$9ZolG8yVBd04$m+W6cNJWrjHLnCL7/pcluNS7ICLEn8VeVK43g+CPsRA=', NULL, 0, '2017211599', '刘', '家毓', '', 0, 1, '2018-12-06 03:31:14', '刘家毓', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(484, 'pbkdf2_sha256$24000$HFx2jKEddxHD$76jf79fFZrxbFQorbhjfdVBlQOxRzKnAf8+tOOH8Y4I=', NULL, 0, '2017211554', '罗', '钟豪', '', 0, 1, '2018-12-06 03:31:14', '罗钟豪', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(485, 'pbkdf2_sha256$24000$bl85ql2cpx4u$J2T4Jalu9y/XzjVblu/jEdTtZ+KdIg0aW0BESbT+OLQ=', NULL, 0, '2017211408', '温', '家琛', '', 0, 1, '2018-12-06 03:31:14', '温家琛', NULL, 'female', NULL, 'static/images/head/default.png', '2017211310', 1),
(486, 'pbkdf2_sha256$24000$pDxo3HoWLoLh$itEVaoGxhg8opuUpx0VXybDoCfMMRJl0OQLqbf4s/K8=', NULL, 0, '2017211179', '张', '航', '', 0, 1, '2018-12-06 03:31:14', '张航', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(487, 'pbkdf2_sha256$24000$Iik5lZimGaYZ$Mtv6Y/yRjV38h7K8h6GgRabJmdQbyuo7+xZ36Bbismo=', NULL, 0, '2017211424', '彭', '仁蔚', '', 0, 1, '2018-12-06 03:31:14', '彭仁蔚', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(488, 'pbkdf2_sha256$24000$869vCrkIlDvq$0Oo1zIxTNkdxBTkHJmZglgEGjA0vyWiBrmo1zV/oVJI=', NULL, 0, '2017211190', '刘', '畅', '', 0, 1, '2018-12-06 03:31:14', '刘畅', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(489, 'pbkdf2_sha256$24000$ZjNACMeSEowV$g5DABCr7qCzTq8yHgvcWTThPAghM2m9xCNoveXcgEdo=', NULL, 0, '2017211342', '吴', '镓桢', '', 0, 1, '2018-12-06 03:31:15', '吴镓桢', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(490, 'pbkdf2_sha256$24000$xVy6t5xZUmSb$DkrE9cn6iM5MS9j4YtnHTDjfkLaVpL2RC74siHmIrn4=', NULL, 0, '2017211427', '曹', '景行', '', 0, 1, '2018-12-06 03:31:15', '曹景行', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(491, 'pbkdf2_sha256$24000$nJUcYm3VempB$66kOAfI35MxAi2zBJvy2CaKmErHBkI97mp470lnQ7no=', NULL, 0, '2017211189', '陈', '健', '', 0, 1, '2018-12-06 03:31:15', '陈健', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(492, 'pbkdf2_sha256$24000$P3L0L8gvWFLF$xLzuikGQKTk++736mh4YsbZgMHWUnXoFxWXz3oTJglE=', NULL, 0, '2017211433', '张', '樊昊', '', 0, 1, '2018-12-06 03:31:15', '张樊昊', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(493, 'pbkdf2_sha256$24000$9Liy69sP2YgD$MNlbLd9qQOA922lCn6GRT6cxNc5u6tqWL0SeLTFMPcQ=', NULL, 0, '2017211188', '黄', '仲桤', '', 0, 1, '2018-12-06 03:31:15', '黄仲桤', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(494, 'pbkdf2_sha256$24000$b9n9kh9bV2bC$lu7Xx3YVWyGpCAxOT5MobLmif8cWH7pDaWTrYOjE8w0=', NULL, 0, '2017211206', '齐', '能', '', 0, 1, '2018-12-06 03:31:15', '齐能', NULL, 'female', NULL, 'static/images/head/default.png', '2017211206', 1),
(495, 'pbkdf2_sha256$24000$bS9yfwADdtHV$VHHUACd+B65fqj3hBAR+yNy97Nv434ZdEUMfrzi8sIw=', NULL, 0, '2017211432', '王', '佑文', '', 0, 1, '2018-12-06 03:31:15', '王佑文', NULL, 'female', NULL, 'static/images/head/default.png', '2017211311', 1),
(496, 'pbkdf2_sha256$24000$E3qxW9NGpD1K$mlS88O4SGkS7DZV4lsFWcTuXbNxG9TFA4kvUk8fKzYE=', NULL, 0, '2017211221', '杜', '乘铭', '', 0, 1, '2018-12-06 03:31:15', '杜乘铭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(497, 'pbkdf2_sha256$24000$nb7zLuCQkB12$chnIj1A3Msa5AS6jL46woeZIVW9QjmAeKYCdynUnKxI=', NULL, 0, '2017211117', '张', '召锐', '', 0, 1, '2018-12-06 03:31:15', '张召锐', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(498, 'pbkdf2_sha256$24000$8eQnHu2OT7K5$LCallXEFJqk82zTy1Br2LJ23d8vdsSQYokYVQCQCAz4=', NULL, 0, '2017211464', '李', '中旭', '', 0, 1, '2018-12-06 03:31:15', '李中旭', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(499, 'pbkdf2_sha256$24000$g4xWIL5k5AbN$VjJ/KICk5epgIPEcXcAoEYN5yPMtM0SqxLKcXB/3yds=', NULL, 0, '2017211211', '顾', '希之', '', 0, 1, '2018-12-06 03:31:15', '顾希之', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(500, 'pbkdf2_sha256$24000$4IvO8PX9dRpJ$iO7VccxoIWWs2YBZ1IKjQojkw7h/BhHOz+sq5ckrwlM=', NULL, 0, '2017211461', '王', '瑞轩', '', 0, 1, '2018-12-06 03:31:15', '王瑞轩', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(501, 'pbkdf2_sha256$24000$TBtJy726xdgS$AYA6phuC7LC6dHRkgrkR0K4r+zK2OfOXc14YceHyRDk=', NULL, 0, '2017211207', '张', '萧枫', '', 0, 1, '2018-12-06 03:31:15', '张萧枫', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(502, 'pbkdf2_sha256$24000$cSBpDJXUYiUd$H1wG/kzTpYbEVZVt9XrouFuUjVG2ZlV5xmjUs1o7N84=', NULL, 0, '2016211787', '吴', '新苗', '', 0, 1, '2018-12-06 03:31:15', '吴新苗', NULL, 'female', NULL, 'static/images/head/default.png', '2016211319', 1),
(503, 'pbkdf2_sha256$24000$WKci4Dl1kBpU$uEQ9kS1Ff3dG0IIgmpiDVgzGXY+Hr/rUX0W7oOKiK7E=', NULL, 0, '2017211160', '肖', '尧', '', 0, 1, '2018-12-06 03:31:15', '肖尧', NULL, 'female', NULL, 'static/images/head/default.png', '2017211302', 1),
(504, 'pbkdf2_sha256$24000$QjuJqFIoLOFA$7tgKPpEMOxHzzMhta3rP+RC5YxvnAa9o4DW8rhvoMaA=', NULL, 0, '2017211610', '曹', '嘉文', '', 0, 1, '2018-12-06 03:31:16', '曹嘉文', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(505, 'pbkdf2_sha256$24000$yDXIBGY1xwAe$inLwMAO/y7Dp7rGJbX3pTYDvOrOvNmJkEqS5rYq7WS4=', NULL, 0, '2017211457', '王', '亚宇', '', 0, 1, '2018-12-06 03:31:16', '王亚宇', NULL, 'female', NULL, 'static/images/head/default.png', '2017211312', 1),
(506, 'pbkdf2_sha256$24000$HxuJNVWXWN0a$mzMsr+DwgX/mIK9pZOj//h/wspC+7ds6ILsYc0FPYCY=', NULL, 0, '2017211187', '王', '泽希', '', 0, 1, '2018-12-06 03:31:16', '王泽希', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(507, 'pbkdf2_sha256$24000$lMRjuNTGnxTw$ZFB8HQl8C3sf9pxepVHsyTufA371G9AG2+hMVKz5vO0=', NULL, 0, '2017211611', '张', '可欣', '', 0, 1, '2018-12-06 03:31:16', '张可欣', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(508, 'pbkdf2_sha256$24000$KU8099CdtaK5$3oNE6yiENdGjjL7XpUbrg/kb+jhBBE4EavDElbPhvTk=', NULL, 0, '2017211612', '张', '泽平', '', 0, 1, '2018-12-06 03:31:16', '张泽平', NULL, 'female', NULL, 'static/images/head/default.png', '2017211317', 1),
(509, 'pbkdf2_sha256$24000$GcPfuZmLRP1k$+FWzLyMQ0nFw/LI3oSfD1p57Jkyz+a4/v9iKofDadVE=', NULL, 0, '2017211196', '王', '欣然', '', 0, 1, '2018-12-06 03:31:16', '王欣然', NULL, 'female', NULL, 'static/images/head/default.png', '2017211303', 1),
(510, 'pbkdf2_sha256$24000$EGJqVU4IbPL2$UUb3AKbJGR6ZkjOWREUUYjXqi5WbZliLuZYVJcqDh8I=', NULL, 0, '2017211137', '徐', '康程', '', 0, 1, '2018-12-06 03:31:16', '徐康程', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(511, 'pbkdf2_sha256$24000$z5nIIbDMattL$b1O9fTwa/x8KFJb0JpG0McW4QYAFpaJk7ycj4XSAdpc=', NULL, 0, '2017522147', '胡', '翔骋', '', 0, 1, '2018-12-06 03:31:16', '胡翔骋', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(512, 'pbkdf2_sha256$24000$3X0qgIQ5xPjM$0uHgqrPRD7Kuyb8jy2IvgpP1Gusx3zeK1Y7U9DuSjys=', NULL, 0, '2017522146', '苏', '奕鹏', '', 0, 1, '2018-12-06 03:31:16', '苏奕鹏', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(513, 'pbkdf2_sha256$24000$RLiNtGmB0Bww$ZEexHOAWjvNX4aQFZ89RNC5GF1g9hfZ/eShZTqGGgtY=', NULL, 0, '2017211210', '张', '镌', '', 0, 1, '2018-12-06 03:31:16', '张镌', NULL, 'female', NULL, 'static/images/head/default.png', '2017211304', 1),
(514, 'pbkdf2_sha256$24000$GN1LqNrd3Zsn$Z4T5Ob8ZeHXX3k9DcobNrHOkZ3pe1lN3YfIYfZXacSg=', NULL, 0, '2017522123', '谭', '荣禛', '', 0, 1, '2018-12-06 03:31:16', '谭荣禛', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(515, 'pbkdf2_sha256$24000$ibUangyet0nu$UN9tK5sCgniVowdgp3ZTLLb6merNYZ1PScjiojt29mE=', NULL, 0, '2017211521', '傅', '可艺', '', 0, 1, '2018-12-06 03:31:16', '傅可艺', NULL, 'female', NULL, 'static/images/head/default.png', '2017211314', 1),
(516, 'pbkdf2_sha256$24000$EMCcVrkxY9PW$ojR7SRrpepQxuuV27ewMX7GWI7JOvdCsxEywU92pY6I=', NULL, 0, '2016210678', '胡', '艺博', '', 0, 1, '2018-12-06 03:31:16', '胡艺博', NULL, 'female', NULL, 'static/images/head/default.png', '2016211303', 1),
(517, 'pbkdf2_sha256$24000$neeZ9GY1P8BO$8WScC3NodUTCfIM0aKcpF4WhHR0HdyE63pXwKMlk2fc=', NULL, 0, '2017211333', '钟', '嘉文', '', 0, 1, '2018-12-06 03:31:16', '钟嘉文', NULL, 'female', NULL, 'static/images/head/default.png', '2017211308', 1),
(518, 'pbkdf2_sha256$24000$lmxeKLShrv9M$1EkDPrmBbqE0vwEnK8gwdiXXv48MkN3E1KgLutFoAqw=', NULL, 0, '2017522125', '黄', '佩达', '', 0, 1, '2018-12-06 03:31:16', '黄佩达', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(519, 'pbkdf2_sha256$24000$zOgw0nTrcPMS$v2b+av0rDTezIuN7DhhkC3JtUWT/l/A5baUtQjpnrpE=', NULL, 0, '2017211139', '欧', '文轩', '', 0, 1, '2018-12-06 03:31:16', '欧文轩', NULL, 'female', NULL, 'static/images/head/default.png', '2017211301', 1),
(520, 'pbkdf2_sha256$24000$rk8SjHj5YMLj$niA6qVSExsAbW2UUbUr07aXPowGzKcyJKhUmpbfxjM0=', NULL, 0, '2017522143', '曹', '博研', '', 0, 1, '2018-12-06 03:31:16', '曹博研', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(521, 'pbkdf2_sha256$24000$LGMio4Bx1DRR$GHbQcwUHbPAyC7GEBjCYKHkU8YnNu3TWU3hVVK4/y6o=', NULL, 0, '2016211538', '卢', '嘉煜', '', 0, 1, '2018-12-06 03:31:16', '卢嘉煜', NULL, 'female', NULL, 'static/images/head/default.png', '2017211315', 1),
(522, 'pbkdf2_sha256$24000$VNaS5jQGiBZ3$meT42oTggG5o/ICbRBJCK6PM5mREY8DEVpxeXcAjYEs=', NULL, 0, '2017522132', '罗', '霄', '', 0, 1, '2018-12-06 03:31:17', '罗霄', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(523, 'pbkdf2_sha256$24000$pUjA8m1M2oLN$1qGE2AFbiJ2eiqouRChyvC52yDx6mvfCt6P1lAQQOV8=', NULL, 0, '2017522119', '张', '晨', '', 0, 1, '2018-12-06 03:31:17', '张晨', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(524, 'pbkdf2_sha256$24000$rlBIMeL53mvS$0D9wFAAPtGJSf6Qjf5GD/ZwpGnKMwJxZTNYB/Beebao=', NULL, 0, '2017211579', '陈', '菲', '', 0, 1, '2018-12-06 03:31:17', '陈菲', NULL, 'female', NULL, 'static/images/head/default.png', '2017211316', 1),
(525, 'pbkdf2_sha256$24000$Qf6vx3EL47DO$rfJB5a/XVxWTRDo3SMqYmH4qwXdsIPKNutv190K1oyg=', NULL, 0, '2017522117', '王', '乐为', '', 0, 1, '2018-12-06 03:31:17', '王乐为', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(526, 'pbkdf2_sha256$24000$dJYjdfy407DT$grSaUTt5XMo4UvXOxaYtkGptb5TjpoNt6VkOPcyDNrA=', NULL, 0, '2017522141', '张', '涛', '', 0, 1, '2018-12-06 03:31:17', '张涛', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(527, 'pbkdf2_sha256$24000$kGlpyo6tUwlt$SpbNyUEb5KyjNAyE+jhravVVG7fZm1BWtY491biGDuA=', NULL, 0, '2017522121', '牟', '宗辉', '', 0, 1, '2018-12-06 03:31:17', '牟宗辉', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(528, 'pbkdf2_sha256$24000$RNRJD3hpWB0M$oDqOdcha3ZpHlr32AQJBCtJ7Epzlro++1v+hhkmNdfM=', NULL, 0, '2017522144', '马', '睿', '', 0, 1, '2018-12-06 03:31:17', '马睿', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(529, 'pbkdf2_sha256$24000$pumxKdPAwsH8$ktJLOIPfo9Z41zde/Pr2B4iw4Yj8k7Lu3zUqsDZ6AoA=', NULL, 0, '2017522140', '王', '萌', '', 0, 1, '2018-12-06 03:31:17', '王萌', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(530, 'pbkdf2_sha256$24000$tj5ZmpJeoIR6$YSHWs2o6MCQykkMLyJAD3pzOdgRC0J+bNJk0PkILhUo=', NULL, 0, '2017522148', '王', '璐阳', '', 0, 1, '2018-12-06 03:31:17', '王璐阳', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(531, 'pbkdf2_sha256$24000$cKBs1vx24Qkt$NKLFIRwwP4JIi35IvFsC8OL8/x/AzeBuMTCMYUjVlzE=', NULL, 0, '2017522126', '刘', '航', '', 0, 1, '2018-12-06 03:31:17', '刘航', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1),
(532, 'pbkdf2_sha256$24000$MCsk8lLf8gFp$HO3m2MxNP3xRKM5lK2eFx0yLJTSKlZuzVceREaQCEpk=', NULL, 0, '2017522139', '刘', '航', '', 0, 1, '2018-12-06 03:31:17', '刘航', NULL, 'female', NULL, 'static/images/head/default.png', '2017661801', 1);

-- --------------------------------------------------------

--
-- 表的结构 `users_userprofile_groups`
--

CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users_userprofile_user_permissions`
--

CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_bookmark`
--

CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_log`
--

CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xadmin_log`
--

INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES
(1, '2017-04-03 23:47:20', '127.0.0.1', '1', '数据结构', 'create', '已添加', 11, 2),
(2, '2017-04-03 23:47:38', '127.0.0.1', '2', 'java语言程序设计', 'create', '已添加', 11, 2),
(3, '2017-04-03 23:48:08', '127.0.0.1', '3', '小学数学', 'create', '已添加', 11, 2),
(4, '2017-04-03 23:49:55', '127.0.0.1', '1', '数据结构(题干:C语言发明者是谁？ | 正确答案:B )', 'create', '已添加', 12, 2),
(5, '2017-04-03 23:51:42', '127.0.0.1', '2', '数据结构(题干:研究数据结构就是研究（） | 正确答案:D )', 'create', '已添加', 12, 2),
(6, '2017-04-03 23:52:55', '127.0.0.1', '3', '数据结构(题干:与数据元素本身的形式、内容、相对位置和个数无关的是数据的（）结构 | 正确答案:C )', 'create', '已添加', 12, 2),
(7, '2017-04-03 23:54:19', '127.0.0.1', '4', '数据结构(题干:数据结构在计算机存储空间中的存放形式称为（） | 正确答案:C )', 'create', '已添加', 12, 2),
(8, '2017-04-03 23:56:06', '127.0.0.1', '5', '数据结构(题干:数据的存储结构是指（） | 正确答案:B )', 'create', '已添加', 12, 2),
(9, '2017-04-03 23:58:02', '127.0.0.1', '6', '数据结构(题干:以下说法正确的是（） | 正确答案:D )', 'create', '已添加', 12, 2),
(10, '2017-04-03 23:59:20', '127.0.0.1', '7', '数据结构(题干:从逻辑上可以把数据结构分成（） | 正确答案:C )', 'create', '已添加', 12, 2),
(11, '2017-04-04 00:00:52', '127.0.0.1', '8', '数据结构(题干:算法分析的目的是（） | 正确答案:C )', 'create', '已添加', 12, 2),
(12, '2017-04-04 00:02:01', '127.0.0.1', '9', '数据结构(题干:算法分析的两个主要方面 | 正确答案:A )', 'create', '已添加', 12, 2),
(13, '2017-04-04 00:03:26', '127.0.0.1', '10', '数据结构(题干:算法的时间复杂度是指（） | 正确答案:D )', 'create', '已添加', 12, 2),
(14, '2017-04-04 00:04:17', '127.0.0.1', '1', '数据结构(试卷名称:第一次测试 | 使用状态:True)', 'create', '已添加', 13, 2),
(15, '2017-04-04 00:04:50', '127.0.0.1', '1', '数据结构(试卷名称:第一次测试 | 使用状态:True) (C语言发明者是谁？)', 'create', '已添加', 14, 2),
(16, '2017-04-04 00:04:56', '127.0.0.1', '2', '数据结构(试卷名称:第一次测试 | 使用状态:True) (研究数据结构就是研究（）)', 'create', '已添加', 14, 2),
(17, '2017-04-04 00:05:09', '127.0.0.1', '3', '数据结构(试卷名称:第一次测试 | 使用状态:True) (与数据元素本身的形式、内容、相对位置和个数无关的是数据的（）结构)', 'create', '已添加', 14, 2),
(18, '2017-04-04 00:05:16', '127.0.0.1', '4', '数据结构(试卷名称:第一次测试 | 使用状态:True) (数据结构在计算机存储空间中的存放形式称为（）)', 'create', '已添加', 14, 2),
(19, '2017-04-04 00:05:56', '127.0.0.1', '5', '数据结构(试卷名称:第一次测试 | 使用状态:True) (数据的存储结构是指（）)', 'create', '已添加', 14, 2),
(20, '2017-04-04 00:06:25', '127.0.0.1', '6', '数据结构(试卷名称:第一次测试 | 使用状态:True) (以下说法正确的是（）)', 'create', '已添加', 14, 2),
(21, '2017-04-04 00:06:43', '127.0.0.1', '7', '数据结构(试卷名称:第一次测试 | 使用状态:True) (从逻辑上可以把数据结构分成（）)', 'create', '已添加', 14, 2),
(22, '2017-04-04 00:07:04', '127.0.0.1', '8', '数据结构(试卷名称:第一次测试 | 使用状态:True) (从逻辑上可以把数据结构分成（）)', 'create', '已添加', 14, 2),
(23, '2017-04-04 00:07:27', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 试题列表', NULL, 2),
(24, '2017-04-04 00:07:50', '127.0.0.1', '9', '数据结构(试卷名称:第一次测试 | 使用状态:True) (算法分析的目的是（）)', 'create', '已添加', 14, 2),
(25, '2017-04-04 00:08:01', '127.0.0.1', '10', '数据结构(试卷名称:第一次测试 | 使用状态:True) (算法分析的两个主要方面)', 'create', '已添加', 14, 2),
(26, '2017-04-04 00:08:20', '127.0.0.1', '11', '数据结构(试卷名称:第一次测试 | 使用状态:True) (算法的时间复杂度是指（）)', 'create', '已添加', 14, 2),
(27, '2017-04-04 00:13:23', '127.0.0.1', '11', '小学数学(题干:请问 3 + 9 = ___ | 正确答案:C )', 'create', '已添加', 12, 2),
(28, '2017-04-04 00:14:20', '127.0.0.1', '12', '小学数学(题干:3 * 5 = ___ | 正确答案:A )', 'create', '已添加', 12, 2),
(29, '2017-04-04 00:15:16', '127.0.0.1', '13', '小学数学(题干:我有两块糖，吃了一块，还剩三块 | 正确答案:False )', 'create', '已添加', 12, 2),
(30, '2017-04-04 00:18:19', '127.0.0.1', '14', '小学数学(题干:学校与小明家的距离是3km，小明骑自行车以300米/分钟的匀速去学校，那么他需要多长时间到学校 | 正确答案:D )', 'create', '已添加', 12, 2),
(31, '2017-04-04 00:19:34', '127.0.0.1', '2', '小学数学(试卷名称:三年级第一次月考 | 使用状态:True)', 'create', '已添加', 13, 2),
(32, '2017-04-04 00:20:07', '127.0.0.1', '12', '小学数学(试卷名称:三年级第一次月考 | 使用状态:True) (请问 3 + 9 = ___)', 'create', '已添加', 14, 2),
(33, '2017-04-04 00:20:30', '127.0.0.1', '13', '小学数学(试卷名称:三年级第一次月考 | 使用状态:True) (3 * 5 = ___)', 'create', '已添加', 14, 2),
(34, '2017-04-04 00:20:43', '127.0.0.1', '14', '小学数学(试卷名称:三年级第一次月考 | 使用状态:True) (我有两块糖，吃了一块，还剩三块)', 'create', '已添加', 14, 2),
(35, '2017-04-04 00:20:59', '127.0.0.1', '15', '小学数学(试卷名称:三年级第一次月考 | 使用状态:True) (学校与小明家的距离是3km，小明骑自行车以300米/分钟的匀速去学校，那么他需要多长时间到学校)', 'create', '已添加', 14, 2),
(36, '2017-04-04 13:33:23', '127.0.0.1', '2', 'root', 'change', '已修改 last_login，nick_name，birthday，gender，mobile 和 image 。', 7, 2),
(37, '2017-04-10 17:07:41', '127.0.0.1', '3', '1400801299', 'create', '已添加', 7, 2),
(38, '2017-04-10 17:08:24', '127.0.0.1', '2', 'root', 'change', '已修改 last_login 和 image 。', 7, 2);

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_usersettings`
--

CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xadmin_usersettings`
--

INSERT INTO `xadmin_usersettings` (`id`, `key`, `value`, `user_id`) VALUES
(1, 'dashboard:home:pos', '', 2);

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_userwidget`
--

CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`) USING BTREE;

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE;

--
-- Indexes for table `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `hashkey` (`hashkey`) USING BTREE;

--
-- Indexes for table `coures_courselist`
--
ALTER TABLE `coures_courselist`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `coures_paper`
--
ALTER TABLE `coures_paper`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `coures_paper_51e862cf` (`paper_name_id`) USING BTREE,
  ADD KEY `coures_paper_7aa0f6ee` (`question_id`) USING BTREE,
  ADD KEY `coures_paper_ea134da7` (`course_id`) USING BTREE;

--
-- Indexes for table `coures_paperlist`
--
ALTER TABLE `coures_paperlist`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `coures_paperlist_course_id_945bf724_fk_coures_courselist_id` (`course_id`) USING BTREE;

--
-- Indexes for table `coures_question`
--
ALTER TABLE `coures_question`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `coures_question_course_id_1c63d3e4_fk_coures_courselist_id` (`course_id`) USING BTREE;

--
-- Indexes for table `coures_updatemodel`
--
ALTER TABLE `coures_updatemodel`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `coures_userpaperlog`
--
ALTER TABLE `coures_userpaperlog`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `paper_name_id` (`paper_name_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`) USING BTREE,
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`) USING BTREE;

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE;

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`) USING BTREE,
  ADD KEY `django_session_de54fa62` (`expire_date`) USING BTREE;

--
-- Indexes for table `operate_notice`
--
ALTER TABLE `operate_notice`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `operate_notice_pub_name_id_1ba66da6_fk_users_userprofile_id` (`pub_name_id`) USING BTREE;

--
-- Indexes for table `operate_useranswerlog`
--
ALTER TABLE `operate_useranswerlog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `operate_usernote`
--
ALTER TABLE `operate_usernote`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `operate_usernote_user_id_07966e99_fk_users_userprofile_id` (`user_id`) USING BTREE;

--
-- Indexes for table `operate_userscore`
--
ALTER TABLE `operate_userscore`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `operate_userscore_user_id_b7fbf01a_fk_users_userprofile_id` (`user_id`) USING BTREE,
  ADD KEY `operate_userscore_paper_id_a32de3cb_uniq` (`paper_id`) USING BTREE;

--
-- Indexes for table `users_alloweduser`
--
ALTER TABLE `users_alloweduser`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_banner`
--
ALTER TABLE `users_banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_emailrevifyrecord`
--
ALTER TABLE `users_emailrevifyrecord`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_userclass`
--
ALTER TABLE `users_userclass`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_userprofile`
--
ALTER TABLE `users_userprofile`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `users_userprofile_groups`
--
ALTER TABLE `users_userprofile_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`) USING BTREE,
  ADD KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`) USING BTREE;

--
-- Indexes for table `users_userprofile_user_permissions`
--
ALTER TABLE `users_userprofile_user_permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`) USING BTREE,
  ADD KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`) USING BTREE;

--
-- Indexes for table `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`) USING BTREE,
  ADD KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`) USING BTREE;

--
-- Indexes for table `xadmin_log`
--
ALTER TABLE `xadmin_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`) USING BTREE,
  ADD KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`) USING BTREE;

--
-- Indexes for table `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`) USING BTREE;

--
-- Indexes for table `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- 使用表AUTO_INCREMENT `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- 使用表AUTO_INCREMENT `coures_courselist`
--
ALTER TABLE `coures_courselist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `coures_paper`
--
ALTER TABLE `coures_paper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 使用表AUTO_INCREMENT `coures_paperlist`
--
ALTER TABLE `coures_paperlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `coures_question`
--
ALTER TABLE `coures_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用表AUTO_INCREMENT `coures_updatemodel`
--
ALTER TABLE `coures_updatemodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `coures_userpaperlog`
--
ALTER TABLE `coures_userpaperlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- 使用表AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用表AUTO_INCREMENT `operate_notice`
--
ALTER TABLE `operate_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `operate_useranswerlog`
--
ALTER TABLE `operate_useranswerlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1657;

--
-- 使用表AUTO_INCREMENT `operate_usernote`
--
ALTER TABLE `operate_usernote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `operate_userscore`
--
ALTER TABLE `operate_userscore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `users_alloweduser`
--
ALTER TABLE `users_alloweduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `users_banner`
--
ALTER TABLE `users_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `users_emailrevifyrecord`
--
ALTER TABLE `users_emailrevifyrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- 使用表AUTO_INCREMENT `users_userclass`
--
ALTER TABLE `users_userclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `users_userprofile`
--
ALTER TABLE `users_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1555;

--
-- 使用表AUTO_INCREMENT `users_userprofile_groups`
--
ALTER TABLE `users_userprofile_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `users_userprofile_user_permissions`
--
ALTER TABLE `users_userprofile_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xadmin_log`
--
ALTER TABLE `xadmin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- 使用表AUTO_INCREMENT `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `coures_paper`
--
ALTER TABLE `coures_paper`
  ADD CONSTRAINT `coures_paper_course_id_bbb6941b_fk_coures_courselist_id` FOREIGN KEY (`course_id`) REFERENCES `coures_courselist` (`id`),
  ADD CONSTRAINT `coures_paper_paper_name_id_db46332d_fk_coures_paperlist_id` FOREIGN KEY (`paper_name_id`) REFERENCES `coures_paperlist` (`id`),
  ADD CONSTRAINT `coures_paper_question_id_f1d0b8c2_fk_coures_question_id` FOREIGN KEY (`question_id`) REFERENCES `coures_question` (`id`);

--
-- 限制表 `coures_paperlist`
--
ALTER TABLE `coures_paperlist`
  ADD CONSTRAINT `coures_paperlist_course_id_945bf724_fk_coures_courselist_id` FOREIGN KEY (`course_id`) REFERENCES `coures_courselist` (`id`);

--
-- 限制表 `users_userprofile_user_permissions`
--
ALTER TABLE `users_userprofile_user_permissions`
  ADD CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  ADD CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- 限制表 `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
  ADD CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `xadmin_log`
--
ALTER TABLE `xadmin_log`
  ADD CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
  ADD CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
  ADD CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
