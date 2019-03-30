-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2019-03-30 14:14:34
-- 服务器版本： 5.5.62-log
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crmeb`
--

-- --------------------------------------------------------

--
-- 表的结构 `eb_article`
--

CREATE TABLE `eb_article` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '文章管理ID',
  `cid` varchar(255) DEFAULT '1' COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `author` varchar(255) DEFAULT NULL COMMENT '文章作者',
  `image_input` varchar(255) NOT NULL COMMENT '文章图片',
  `synopsis` varchar(255) DEFAULT NULL COMMENT '文章简介',
  `share_title` varchar(255) DEFAULT NULL COMMENT '文章分享标题',
  `share_synopsis` varchar(255) DEFAULT NULL COMMENT '文章分享简介',
  `visit` varchar(255) DEFAULT NULL COMMENT '浏览次数',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `url` varchar(255) DEFAULT NULL COMMENT '原文链接',
  `status` tinyint(1) UNSIGNED NOT NULL COMMENT '状态',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `hide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员id',
  `mer_id` int(10) UNSIGNED DEFAULT '0' COMMENT '商户id',
  `is_hot` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否热门(小程序)',
  `is_banner` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否轮播图(小程序)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章管理表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_article_category`
--

CREATE TABLE `eb_article_category` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '文章分类id',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `title` varchar(255) NOT NULL COMMENT '文章分类标题',
  `intr` varchar(255) DEFAULT NULL COMMENT '文章分类简介',
  `image` varchar(255) NOT NULL COMMENT '文章分类图片',
  `status` tinyint(1) UNSIGNED NOT NULL COMMENT '状态',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1删除0未删除',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否隐藏'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章分类表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_article_content`
--

CREATE TABLE `eb_article_content` (
  `nid` int(10) UNSIGNED NOT NULL COMMENT '文章id',
  `content` text NOT NULL COMMENT '文章内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章内容表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_cache`
--

CREATE TABLE `eb_cache` (
  `key` varchar(32) NOT NULL,
  `result` text COMMENT '缓存数据',
  `add_time` int(10) DEFAULT NULL COMMENT '缓存时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信缓存表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_express`
--

CREATE TABLE `eb_express` (
  `id` mediumint(11) UNSIGNED NOT NULL COMMENT '快递公司id',
  `code` varchar(50) NOT NULL COMMENT '快递公司简称',
  `name` varchar(50) NOT NULL COMMENT '快递公司全称',
  `sort` int(11) NOT NULL COMMENT '排序',
  `is_show` tinyint(1) NOT NULL COMMENT '是否显示'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='快递公司表';

--
-- 转存表中的数据 `eb_express`
--

INSERT INTO `eb_express` (`id`, `code`, `name`, `sort`, `is_show`) VALUES
(1, 'LIMINWL', '利民物流', 1, 0),
(2, 'XINTIAN', '鑫天顺物流', 1, 0),
(3, 'henglu', '恒路物流', 1, 0),
(4, 'klwl', '康力物流', 1, 0),
(5, 'meiguo', '美国快递', 1, 0),
(6, 'a2u', 'A2U速递', 1, 0),
(7, 'benteng', '奔腾物流', 1, 0),
(8, 'ahdf', '德方物流', 1, 0),
(9, 'timedg', '万家通', 1, 0),
(10, 'ztong', '智通物流', 1, 0),
(11, 'xindan', '新蛋物流', 1, 0),
(12, 'bgpyghx', '挂号信', 1, 0),
(13, 'XFHONG', '鑫飞鸿物流快递', 1, 0),
(14, 'ALP', '阿里物流', 1, 0),
(15, 'BFWL', '滨发物流', 1, 0),
(16, 'SJWL', '宋军物流', 1, 0),
(17, 'SHUNFAWL', '顺发物流', 1, 0),
(18, 'TIANHEWL', '天河物流', 1, 0),
(19, 'YBWL', '邮联物流', 1, 0),
(20, 'SWHY', '盛旺货运', 1, 0),
(21, 'TSWL', '汤氏物流', 1, 0),
(22, 'YUANYUANWL', '圆圆物流', 1, 0),
(23, 'BALIANGWL', '八梁物流', 1, 0),
(24, 'ZGWL', '振刚物流', 1, 0),
(25, 'JIAYU', '佳宇物流', 1, 0),
(26, 'SHHX', '昊昕物流', 1, 0),
(27, 'ande', '安得物流', 1, 0),
(28, 'ppbyb', '贝邮宝', 1, 0),
(29, 'dida', '递达快递', 1, 0),
(30, 'jppost', '日本邮政', 1, 0),
(31, 'intmail', '中国邮政', 96, 0),
(32, 'HENGCHENGWL', '恒诚物流', 1, 0),
(33, 'HENGFENGWL', '恒丰物流', 1, 0),
(34, 'gdems', '广东ems快递', 1, 0),
(35, 'xlyt', '祥龙运通', 1, 0),
(36, 'gjbg', '国际包裹', 1, 0),
(37, 'uex', 'UEX', 1, 0),
(38, 'singpost', '新加坡邮政', 1, 0),
(39, 'guangdongyouzhengwuliu', '广东邮政', 1, 0),
(40, 'bht', 'BHT', 1, 0),
(41, 'cces', 'CCES快递', 1, 0),
(42, 'cloudexpress', 'CE易欧通国际速递', 1, 0),
(43, 'dasu', '达速物流', 1, 0),
(44, 'pfcexpress', '皇家物流', 1, 0),
(45, 'hjs', '猴急送', 1, 0),
(46, 'huilian', '辉联物流', 1, 0),
(47, 'huanqiu', '环球速运', 1, 0),
(48, 'huada', '华达快运', 1, 0),
(49, 'htwd', '华通务达物流', 1, 0),
(50, 'hipito', '海派通', 1, 0),
(51, 'hqtd', '环球通达', 1, 0),
(52, 'airgtc', '航空快递', 1, 0),
(53, 'haoyoukuai', '好又快物流', 1, 0),
(54, 'hanrun', '韩润物流', 1, 0),
(55, 'ccd', '河南次晨达', 1, 0),
(56, 'hfwuxi', '和丰同城', 1, 0),
(57, 'Sky', '荷兰', 1, 0),
(58, 'hongxun', '鸿讯物流', 1, 0),
(59, 'hongjie', '宏捷国际物流', 1, 0),
(60, 'httx56', '汇通天下物流', 1, 0),
(61, 'lqht', '恒通快递', 1, 0),
(62, 'jinguangsudikuaijian', '京广速递快件', 1, 0),
(63, 'junfengguoji', '骏丰国际速递', 1, 0),
(64, 'jiajiatong56', '佳家通', 1, 0),
(65, 'jrypex', '吉日优派', 1, 0),
(66, 'jinchengwuliu', '锦程国际物流', 1, 0),
(67, 'jgwl', '景光物流', 1, 0),
(68, 'pzhjst', '急顺通', 1, 0),
(69, 'ruexp', '捷网俄全通', 1, 0),
(70, 'jmjss', '金马甲', 1, 0),
(71, 'lanhu', '蓝弧快递', 1, 0),
(72, 'ltexp', '乐天速递', 1, 0),
(73, 'lutong', '鲁通快运', 1, 0),
(74, 'ledii', '乐递供应链', 1, 0),
(75, 'lundao', '论道国际物流', 1, 0),
(76, 'mailikuaidi', '麦力快递', 1, 0),
(77, 'mchy', '木春货运', 1, 0),
(78, 'meiquick', '美快国际物流', 1, 0),
(79, 'valueway', '美通快递', 1, 0),
(80, 'nuoyaao', '偌亚奥国际', 1, 0),
(81, 'euasia', '欧亚专线', 1, 0),
(82, 'pca', '澳大利亚PCA快递', 1, 0),
(83, 'pingandatengfei', '平安达腾飞', 1, 0),
(84, 'pjbest', '品骏快递', 1, 0),
(85, 'qbexpress', '秦邦快运', 1, 0),
(86, 'quanxintong', '全信通快递', 1, 0),
(87, 'quansutong', '全速通国际快递', 1, 0),
(88, 'qinyuan', '秦远物流', 1, 0),
(89, 'qichen', '启辰国际物流', 1, 0),
(90, 'quansu', '全速快运', 1, 0),
(91, 'qzx56', '全之鑫物流', 1, 0),
(92, 'qskdyxgs', '千顺快递', 1, 0),
(93, 'runhengfeng', '全时速运', 1, 0),
(94, 'rytsd', '日益通速递', 1, 0),
(95, 'ruidaex', '瑞达国际速递', 1, 0),
(96, 'shiyun', '世运快递', 1, 0),
(97, 'sfift', '十方通物流', 1, 0),
(98, 'stkd', '顺通快递', 1, 0),
(99, 'bgn', '布谷鸟快递', 1, 0),
(100, 'jiahuier', '佳惠尔快递', 1, 0),
(101, 'pingyou', '小包', 1, 0),
(102, 'yumeijie', '誉美捷快递', 1, 0),
(103, 'meilong', '美龙快递', 1, 0),
(104, 'guangtong', '广通速递', 1, 0),
(105, 'STARS', '星晨急便', 1, 0),
(106, 'NANHANG', '中国南方航空股份有限公司', 1, 0),
(107, 'lanbiao', '蓝镖快递', 1, 0),
(109, 'baotongda', '宝通达物流', 1, 0),
(110, 'dashun', '大顺物流', 1, 0),
(111, 'dada', '大达物流', 1, 0),
(112, 'fangfangda', '方方达物流', 1, 0),
(113, 'hebeijianhua', '河北建华物流', 1, 0),
(114, 'haolaiyun', '好来运快递', 1, 0),
(115, 'jinyue', '晋越快递', 1, 0),
(116, 'kuaitao', '快淘快递', 1, 0),
(117, 'peixing', '陪行物流', 1, 0),
(118, 'hkpost', '香港邮政', 1, 0),
(119, 'ytfh', '一统飞鸿快递', 1, 0),
(120, 'zhongxinda', '中信达快递', 1, 0),
(121, 'zhongtian', '中天快运', 1, 0),
(122, 'zuochuan', '佐川急便', 1, 0),
(123, 'chengguang', '程光快递', 1, 0),
(124, 'cszx', '城市之星', 1, 0),
(125, 'chuanzhi', '传志快递', 1, 0),
(126, 'feibao', '飞豹快递', 1, 0),
(127, 'huiqiang', '汇强快递', 1, 0),
(128, 'lejiedi', '乐捷递', 1, 0),
(129, 'lijisong', '成都立即送快递', 1, 0),
(130, 'minbang', '民邦速递', 1, 0),
(131, 'ocs', 'OCS国际快递', 1, 0),
(132, 'santai', '三态速递', 1, 0),
(133, 'saiaodi', '赛澳递', 1, 0),
(134, 'jingdong', '京东快递', 1, 0),
(135, 'zengyi', '增益快递', 1, 0),
(136, 'fanyu', '凡宇速递', 1, 0),
(137, 'fengda', '丰达快递', 1, 0),
(138, 'coe', '东方快递', 1, 0),
(139, 'ees', '百福东方快递', 1, 0),
(140, 'disifang', '递四方速递', 1, 0),
(141, 'rufeng', '如风达快递', 1, 0),
(142, 'changtong', '长通物流', 1, 0),
(143, 'chengshi100', '城市100快递', 1, 0),
(144, 'feibang', '飞邦物流', 1, 0),
(145, 'haosheng', '昊盛物流', 1, 0),
(146, 'yinsu', '音速速运', 1, 0),
(147, 'kuanrong', '宽容物流', 1, 0),
(148, 'tongcheng', '通成物流', 1, 0),
(149, 'tonghe', '通和天下物流', 1, 0),
(150, 'zhima', '芝麻开门', 1, 0),
(151, 'ririshun', '日日顺物流', 1, 0),
(152, 'anxun', '安迅物流', 1, 0),
(153, 'baiqian', '百千诚国际物流', 1, 0),
(154, 'chukouyi', '出口易', 1, 0),
(155, 'diantong', '店通快递', 1, 0),
(156, 'dajin', '大金物流', 1, 0),
(157, 'feite', '飞特物流', 1, 0),
(159, 'gnxb', '国内小包', 1, 0),
(160, 'huacheng', '华诚物流', 1, 0),
(161, 'huahan', '华翰物流', 1, 0),
(162, 'hengyu', '恒宇运通', 1, 0),
(163, 'huahang', '华航快递', 1, 0),
(164, 'jiuyi', '久易快递', 1, 0),
(165, 'jiete', '捷特快递', 1, 0),
(166, 'jingshi', '京世物流', 1, 0),
(167, 'kuayue', '跨越快递', 1, 0),
(168, 'mengsu', '蒙速快递', 1, 0),
(169, 'nanbei', '南北快递', 1, 0),
(171, 'pinganda', '平安达快递', 1, 0),
(172, 'ruifeng', '瑞丰速递', 1, 0),
(173, 'rongqing', '荣庆物流', 1, 0),
(174, 'suijia', '穗佳物流', 1, 0),
(175, 'simai', '思迈快递', 1, 0),
(176, 'suteng', '速腾快递', 1, 0),
(177, 'shengbang', '晟邦物流', 1, 0),
(178, 'suchengzhaipei', '速呈宅配', 1, 0),
(179, 'wuhuan', '五环速递', 1, 0),
(180, 'xingchengzhaipei', '星程宅配', 1, 0),
(181, 'yinjie', '顺捷丰达', 1, 0),
(183, 'yanwen', '燕文物流', 1, 0),
(184, 'zongxing', '纵行物流', 1, 0),
(185, 'aae', 'AAE快递', 1, 0),
(186, 'dhl', 'DHL快递', 1, 0),
(187, 'feihu', '飞狐快递', 1, 0),
(188, 'shunfeng', '顺丰速运', 92, 1),
(189, 'spring', '春风物流', 1, 0),
(190, 'yidatong', '易达通快递', 1, 0),
(191, 'PEWKEE', '彪记快递', 1, 0),
(192, 'PHOENIXEXP', '凤凰快递', 1, 0),
(193, 'CNGLS', 'GLS快递', 1, 0),
(194, 'BHTEXP', '华慧快递', 1, 0),
(195, 'B2B', '卡行天下', 1, 0),
(196, 'PEISI', '配思货运', 1, 0),
(197, 'SUNDAPOST', '上大物流', 1, 0),
(198, 'SUYUE', '苏粤货运', 1, 0),
(199, 'F5XM', '伍圆速递', 1, 0),
(200, 'GZWENJIE', '文捷航空速递', 1, 0),
(201, 'yuancheng', '远成物流', 1, 0),
(202, 'dpex', 'DPEX快递', 1, 0),
(203, 'anjie', '安捷快递', 1, 0),
(204, 'jldt', '嘉里大通', 1, 0),
(205, 'yousu', '优速快递', 1, 0),
(206, 'wanbo', '万博快递', 1, 0),
(207, 'sure', '速尔物流', 1, 0),
(208, 'sutong', '速通物流', 1, 0),
(209, 'JUNCHUANWL', '骏川物流', 1, 0),
(210, 'guada', '冠达快递', 1, 0),
(211, 'dsu', 'D速快递', 1, 0),
(212, 'LONGSHENWL', '龙胜物流', 1, 0),
(213, 'abc', '爱彼西快递', 1, 0),
(214, 'eyoubao', 'E邮宝', 1, 0),
(215, 'aol', 'AOL快递', 1, 0),
(216, 'jixianda', '急先达物流', 1, 0),
(217, 'haihong', '山东海红快递', 1, 0),
(218, 'feiyang', '飞洋快递', 1, 0),
(219, 'rpx', 'RPX保时达', 1, 0),
(220, 'zhaijisong', '宅急送', 1, 0),
(221, 'tiantian', '天天快递', 99, 0),
(222, 'yunwuliu', '云物流', 1, 0),
(223, 'jiuye', '九曳供应链', 1, 0),
(224, 'bsky', '百世快运', 1, 0),
(225, 'higo', '黑狗物流', 1, 0),
(226, 'arke', '方舟速递', 1, 0),
(227, 'zwsy', '中外速运', 1, 0),
(228, 'jxy', '吉祥邮', 1, 0),
(229, 'aramex', 'Aramex', 1, 0),
(230, 'guotong', '国通快递', 1, 0),
(231, 'jiayi', '佳怡物流', 1, 0),
(232, 'longbang', '龙邦快运', 1, 0),
(233, 'minhang', '民航快递', 1, 0),
(234, 'quanyi', '全一快递', 1, 0),
(235, 'quanchen', '全晨快递', 1, 0),
(236, 'usps', 'USPS快递', 1, 0),
(237, 'xinbang', '新邦物流', 1, 0),
(238, 'yuanzhi', '元智捷诚快递', 1, 0),
(239, 'zhongyou', '中邮物流', 1, 0),
(240, 'yuxin', '宇鑫物流', 1, 0),
(241, 'cnpex', '中环快递', 1, 0),
(242, 'shengfeng', '盛丰物流', 1, 0),
(243, 'yuantong', '圆通速递', 97, 1),
(244, 'jiayunmei', '加运美物流', 1, 0),
(245, 'ywfex', '源伟丰快递', 1, 0),
(246, 'xinfeng', '信丰物流', 1, 0),
(247, 'wanxiang', '万象物流', 1, 0),
(248, 'menduimen', '门对门', 1, 0),
(249, 'mingliang', '明亮物流', 1, 0),
(250, 'fengxingtianxia', '风行天下', 1, 0),
(251, 'gongsuda', '共速达物流', 1, 0),
(252, 'zhongtong', '中通快递', 100, 1),
(253, 'quanritong', '全日通快递', 1, 0),
(254, 'ems', 'EMS', 1, 1),
(255, 'wanjia', '万家物流', 1, 0),
(256, 'yuntong', '运通快递', 1, 0),
(257, 'feikuaida', '飞快达物流', 1, 0),
(258, 'haimeng', '海盟速递', 1, 0),
(259, 'zhongsukuaidi', '中速快件', 1, 0),
(260, 'yuefeng', '越丰快递', 1, 0),
(261, 'shenghui', '盛辉物流', 1, 0),
(262, 'datian', '大田物流', 1, 0),
(263, 'quanjitong', '全际通快递', 1, 0),
(264, 'longlangkuaidi', '隆浪快递', 1, 0),
(265, 'neweggozzo', '新蛋奥硕物流', 1, 0),
(266, 'shentong', '申通快递', 95, 1),
(267, 'haiwaihuanqiu', '海外环球', 1, 0),
(268, 'yad', '源安达快递', 1, 0),
(269, 'jindawuliu', '金大物流', 1, 0),
(270, 'sevendays', '七天连锁', 1, 0),
(271, 'tnt', 'TNT快递', 1, 0),
(272, 'huayu', '天地华宇物流', 1, 0),
(273, 'lianhaotong', '联昊通快递', 1, 0),
(274, 'nengda', '港中能达快递', 1, 0),
(275, 'LBWL', '联邦物流', 1, 0),
(276, 'ontrac', 'onTrac', 1, 0),
(277, 'feihang', '原飞航快递', 1, 0),
(278, 'bangsongwuliu', '邦送物流', 1, 0),
(279, 'huaxialong', '华夏龙物流', 1, 0),
(280, 'ztwy', '中天万运快递', 1, 0),
(281, 'fkd', '飞康达物流', 1, 0),
(282, 'anxinda', '安信达快递', 1, 0),
(283, 'quanfeng', '全峰快递', 1, 0),
(284, 'shengan', '圣安物流', 1, 0),
(285, 'jiaji', '佳吉物流', 1, 0),
(286, 'yunda', '韵达快运', 94, 0),
(287, 'ups', 'UPS快递', 1, 0),
(288, 'debang', '德邦物流', 1, 0),
(289, 'yafeng', '亚风速递', 1, 0),
(290, 'kuaijie', '快捷速递', 98, 0),
(291, 'huitong', '百世快递', 93, 0),
(293, 'aolau', 'AOL澳通速递', 1, 0),
(294, 'anneng', '安能物流', 1, 0),
(295, 'auexpress', '澳邮中国快运', 1, 0),
(296, 'exfresh', '安鲜达', 1, 0),
(297, 'bcwelt', 'BCWELT', 1, 0),
(298, 'youzhengguonei', '挂号信', 1, 0),
(299, 'xiaohongmao', '北青小红帽', 1, 0),
(300, 'lbbk', '宝凯物流', 1, 0),
(301, 'byht', '博源恒通', 1, 0),
(302, 'idada', '百成大达物流', 1, 0),
(303, 'baitengwuliu', '百腾物流', 1, 0),
(304, 'birdex', '笨鸟海淘', 1, 0),
(305, 'bsht', '百事亨通', 1, 0),
(306, 'dayang', '大洋物流快递', 1, 0),
(307, 'dechuangwuliu', '德创物流', 1, 0),
(308, 'donghanwl', '东瀚物流', 1, 0),
(309, 'dfpost', '达方物流', 1, 0),
(310, 'dongjun', '东骏快捷物流', 1, 0),
(311, 'dindon', '叮咚澳洲转运', 1, 0),
(312, 'dazhong', '大众佐川急便', 1, 0),
(313, 'decnlh', '德中快递', 1, 0),
(314, 'dekuncn', '德坤供应链', 1, 0),
(315, 'eshunda', '俄顺达', 1, 0),
(316, 'ewe', 'EWE全球快递', 1, 0),
(317, 'fedexuk', 'FedEx英国', 1, 0),
(318, 'fox', 'FOX国际速递', 1, 0),
(319, 'rufengda', '凡客如风达', 1, 0),
(320, 'fandaguoji', '颿达国际快递', 1, 0),
(321, 'hnfy', '飞鹰物流', 1, 0),
(322, 'flysman', '飞力士物流', 1, 0),
(323, 'sccod', '丰程物流', 1, 0),
(324, 'farlogistis', '泛远国际物流', 1, 0),
(325, 'gsm', 'GSM', 1, 0),
(326, 'gaticn', 'GATI快递', 1, 0),
(327, 'gts', 'GTS快递', 1, 0),
(328, 'gangkuai', '港快速递', 1, 0),
(329, 'gtsd', '高铁速递', 1, 0),
(330, 'tiandihuayu', '华宇物流', 1, 0),
(331, 'huangmajia', '黄马甲快递', 1, 0),
(332, 'ucs', '合众速递', 1, 0),
(333, 'huoban', '伙伴物流', 1, 0),
(334, 'nedahm', '红马速递', 1, 0),
(335, 'huiwen', '汇文配送', 1, 0),
(336, 'nmhuahe', '华赫物流', 1, 0),
(337, 'hangyu', '航宇快递', 1, 0),
(338, 'minsheng', '闽盛物流', 1, 0),
(339, 'riyu', '日昱物流', 1, 0),
(340, 'sxhongmajia', '山西红马甲', 1, 0),
(341, 'syjiahuier', '沈阳佳惠尔', 1, 0),
(342, 'shlindao', '上海林道货运', 1, 0),
(343, 'shunjiefengda', '顺捷丰达', 1, 0),
(344, 'subida', '速必达物流', 1, 0),
(345, 'bphchina', '速方国际物流', 1, 0),
(346, 'sendtochina', '速递中国', 1, 0),
(347, 'suning', '苏宁快递', 1, 0),
(348, 'sihaiet', '四海快递', 1, 0),
(349, 'tianzong', '天纵物流', 1, 0),
(350, 'chinatzx', '同舟行物流', 1, 0),
(351, 'nntengda', '腾达速递', 1, 0),
(352, 'sd138', '泰国138', 1, 0),
(353, 'tongdaxing', '通达兴物流', 1, 0),
(354, 'tlky', '天联快运', 1, 0),
(355, 'youshuwuliu', 'UC优速快递', 1, 0),
(356, 'ueq', 'UEQ快递', 1, 0),
(357, 'weitepai', '微特派快递', 1, 0),
(358, 'wtdchina', '威时沛运', 1, 0),
(359, 'wzhaunyun', '微转运', 1, 0),
(360, 'gswtkd', '万通快递', 1, 0),
(361, 'wotu', '渥途国际速运', 1, 0),
(362, 'xiyoute', '希优特快递', 1, 0),
(363, 'xilaikd', '喜来快递', 1, 0),
(364, 'xsrd', '鑫世锐达', 1, 0),
(365, 'xtb', '鑫通宝物流', 1, 0),
(366, 'xintianjie', '信天捷快递', 1, 0),
(367, 'xaetc', '西安胜峰', 1, 0),
(368, 'xianfeng', '先锋快递', 1, 0),
(369, 'sunspeedy', '新速航', 1, 0),
(370, 'xipost', '西邮寄', 1, 0),
(371, 'sinatone', '信联通', 1, 0),
(372, 'sunjex', '新杰物流', 1, 0),
(373, 'yundaexus', '韵达美国件', 1, 0),
(374, 'yxwl', '宇鑫物流', 1, 0),
(375, 'yitongda', '易通达', 1, 0),
(376, 'yiqiguojiwuliu', '一柒物流', 1, 0),
(377, 'yilingsuyun', '亿领速运', 1, 0),
(378, 'yujiawuliu', '煜嘉物流', 1, 0),
(379, 'gml', '英脉物流', 1, 0),
(380, 'leopard', '云豹国际货运', 1, 0),
(381, 'czwlyn', '云南中诚', 1, 0),
(382, 'sdyoupei', '优配速运', 1, 0),
(383, 'yongchang', '永昌物流', 1, 0),
(384, 'yufeng', '御风速运', 1, 0),
(385, 'yamaxunwuliu', '亚马逊物流', 1, 0),
(386, 'yousutongda', '优速通达', 1, 0),
(387, 'yishunhang', '亿顺航', 1, 0),
(388, 'yongwangda', '永旺达快递', 1, 0),
(389, 'ecmscn', '易满客', 1, 0),
(390, 'yingchao', '英超物流', 1, 0),
(391, 'edlogistics', '益递物流', 1, 0),
(392, 'yyexpress', '远洋国际', 1, 0),
(393, 'onehcang', '一号仓', 1, 0),
(394, 'ycgky', '远成快运', 1, 0),
(395, 'lineone', '一号线', 1, 0),
(396, 'ypsd', '壹品速递', 1, 0),
(397, 'vipexpress', '鹰运国际速递', 1, 0),
(398, 'el56', '易联通达物流', 1, 0),
(399, 'yyqc56', '一运全成物流', 1, 0),
(400, 'zhongtie', '中铁快运', 1, 0),
(401, 'ZTKY', '中铁物流', 1, 0),
(402, 'zzjh', '郑州建华快递', 1, 0),
(403, 'zhongruisudi', '中睿速递', 1, 0),
(404, 'zhongwaiyun', '中外运速递', 1, 0),
(405, 'zengyisudi', '增益速递', 1, 0),
(406, 'sujievip', '郑州速捷', 1, 0),
(407, 'zhichengtongda', '至诚通达快递', 1, 0),
(408, 'zhdwl', '众辉达物流', 1, 0),
(409, 'kuachangwuliu', '直邮易', 1, 0),
(410, 'topspeedex', '中运全速', 1, 0),
(411, 'otobv', '中欧快运', 1, 0),
(412, 'zsky123', '准实快运', 1, 0),
(413, 'donghong', '东红物流', 1, 0),
(414, 'kuaiyouda', '快优达速递', 1, 0),
(415, 'balunzhi', '巴伦支快递', 1, 0),
(416, 'hutongwuliu', '户通物流', 1, 0),
(417, 'xianchenglian', '西安城联速递', 1, 0),
(418, 'youbijia', '邮必佳', 1, 0),
(419, 'feiyuan', '飞远物流', 1, 0),
(420, 'chengji', '城际速递', 1, 0),
(421, 'huaqi', '华企快运', 1, 0),
(422, 'yibang', '一邦快递', 1, 0),
(423, 'citylink', 'CityLink快递', 1, 0),
(424, 'meixi', '美西快递', 1, 0),
(425, 'acs', 'ACS', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_routine_access_token`
--

CREATE TABLE `eb_routine_access_token` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '小程序access_token表ID',
  `access_token` varchar(256) NOT NULL COMMENT 'openid',
  `stop_time` int(11) UNSIGNED NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小程序access_token表';

--
-- 转存表中的数据 `eb_routine_access_token`
--

INSERT INTO `eb_routine_access_token` (`id`, `access_token`, `stop_time`) VALUES
(1, '17_JKzGTT6XULJfVJMw_uRU_tOXkNJBjhiez2bcKoE3iPdnsoJPW7Y9tH5xI-F-jZhCojrMZNblQh-yjz9YvhA-9usCffoJYtoqWxmINSMkVTaIQ6f8hnxUOjt4V2nsTwzDFRA4WMdCq_uxrS7ISGBeAIADRM', 1547624543);

-- --------------------------------------------------------

--
-- 表的结构 `eb_routine_form_id`
--

CREATE TABLE `eb_routine_form_id` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '表单ID表ID',
  `uid` int(11) DEFAULT '0' COMMENT '用户uid',
  `form_id` varchar(32) NOT NULL COMMENT '表单ID',
  `stop_time` int(11) UNSIGNED DEFAULT NULL COMMENT '表单ID失效时间',
  `status` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '状态1 未使用 2不能使用'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单id表记录表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_routine_qrcode`
--

CREATE TABLE `eb_routine_qrcode` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '微信二维码ID',
  `third_type` varchar(32) NOT NULL COMMENT '二维码类型 spread(用户推广) product_spread(产品推广)',
  `third_id` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `status` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '状态 0不可用 1可用',
  `add_time` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `page` varchar(255) DEFAULT NULL COMMENT '小程序页面路径带参数',
  `qrcode_url` varchar(255) DEFAULT NULL COMMENT '小程序二维码路径',
  `url_time` int(11) UNSIGNED DEFAULT NULL COMMENT '二维码添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小程序二维码管理表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_routine_template`
--

CREATE TABLE `eb_routine_template` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '模板id',
  `tempkey` char(50) NOT NULL COMMENT '模板编号',
  `name` char(100) NOT NULL COMMENT '模板名',
  `content` varchar(1000) NOT NULL COMMENT '回复内容',
  `tempid` char(100) DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) NOT NULL COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信模板';

--
-- 转存表中的数据 `eb_routine_template`
--

INSERT INTO `eb_routine_template` (`id`, `tempkey`, `name`, `content`, `tempid`, `add_time`, `status`) VALUES
(13, 'AT0007', '订单发货提醒', '订单号{{keyword1.DATA}}\n快递公司{{keyword2.DATA}}\n快递单号{{keyword3.DATA}}\n发货时间{{keyword4.DATA}}\n备注{{keyword5.DATA}}', 'XQlyO_b3QocHBOrC69bfOCaOJq5kdKXQcdQtCO11sA0', '1534469928', 1),
(14, 'AT0787', '退款成功通知', '订单号{{keyword1.DATA}}\n退款时间{{keyword2.DATA}}\n退款金额{{keyword3.DATA}}\n退款方式{{keyword4.DATA}}\n备注{{keyword5.DATA}}', 'gQi8X-wuOYAwdVRBXaJVwfAXQ0ngjMxYcYVS0GT1anI', '1534469993', 1),
(15, 'AT0009', '订单支付成功通知', '单号{{keyword1.DATA}}\n下单时间{{keyword2.DATA}}\n订单状态{{keyword3.DATA}}\n支付金额{{keyword4.DATA}}\n支付方式{{keyword5.DATA}}', 'x5Jw630Rp63T34kv0Q43RaeVKtk5OFKDNkwcrwMp9FM', '1534470043', 1),
(16, 'AT1173', '砍价成功通知', '商品名称{{keyword1.DATA}}\n砍价金额{{keyword2.DATA}}\n底价{{keyword3.DATA}}\n砍掉价格{{keyword4.DATA}}\n支付金额{{keyword5.DATA}}\n备注{{keyword6.DATA}}', 'FofE1ABYV1iXkNFIvEOUy4j5lInos20KCwIW6gyZ2nM', '1534470085', 1),
(17, 'AT0036', '退款通知', '订单编号{{keyword1.DATA}}\n退款原因{{keyword2.DATA}}\n退款时间{{keyword3.DATA}}\n退款金额{{keyword4.DATA}}\n退款方式{{keyword5.DATA}}', 'JhmCRYO7ahP6nbCb6oO-BPYz8lIP2u9xs-CkZ63Z4HI', '1534470134', 1),
(18, '19', 'AT0177', 'AT0177AT0177AT0177AT0177AT0177AT0177AT0177', 'AT0177', '1537015237', 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_bargain`
--

CREATE TABLE `eb_store_bargain` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '砍价产品ID',
  `product_id` int(11) UNSIGNED NOT NULL COMMENT '关联产品ID',
  `title` varchar(255) NOT NULL COMMENT '砍价活动名称',
  `image` varchar(150) NOT NULL COMMENT '砍价活动图片',
  `unit_name` varchar(16) DEFAULT NULL COMMENT '单位名称',
  `stock` int(11) UNSIGNED DEFAULT NULL COMMENT '库存',
  `sales` int(11) UNSIGNED DEFAULT NULL COMMENT '销量',
  `images` varchar(1000) NOT NULL COMMENT '砍价产品轮播图',
  `start_time` int(11) UNSIGNED NOT NULL COMMENT '砍价开启时间',
  `stop_time` int(11) UNSIGNED NOT NULL COMMENT '砍价结束时间',
  `store_name` varchar(255) DEFAULT NULL COMMENT '砍价产品名称',
  `price` decimal(8,2) UNSIGNED DEFAULT NULL COMMENT '砍价金额',
  `min_price` decimal(8,2) UNSIGNED DEFAULT NULL COMMENT '砍价商品最低价',
  `num` int(11) UNSIGNED DEFAULT NULL COMMENT '每次购买的砍价产品数量',
  `bargain_max_price` decimal(8,2) UNSIGNED DEFAULT NULL COMMENT '用户每次砍价的最大金额',
  `bargain_min_price` decimal(8,2) UNSIGNED DEFAULT NULL COMMENT '用户每次砍价的最小金额',
  `bargain_num` int(11) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户每次砍价的次数',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '砍价状态 0(到砍价时间不自动开启)  1(到砍价时间自动开启时间)',
  `description` text COMMENT '砍价详情',
  `give_integral` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '反多少积分',
  `info` varchar(255) DEFAULT NULL COMMENT '砍价活动简介',
  `cost` decimal(8,2) UNSIGNED DEFAULT NULL COMMENT '成本价',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否推荐0不推荐1推荐',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否删除 0未删除 1删除',
  `add_time` int(11) UNSIGNED DEFAULT NULL COMMENT '添加时间',
  `is_postage` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否包邮 0不包邮 1包邮',
  `postage` decimal(10,2) UNSIGNED DEFAULT NULL COMMENT '邮费',
  `rule` text COMMENT '砍价规则',
  `look` int(11) UNSIGNED DEFAULT '0' COMMENT '砍价产品浏览量',
  `share` int(11) UNSIGNED DEFAULT '0' COMMENT '砍价产品分享量'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='砍价表';

--
-- 转存表中的数据 `eb_store_bargain`
--

INSERT INTO `eb_store_bargain` (`id`, `product_id`, `title`, `image`, `unit_name`, `stock`, `sales`, `images`, `start_time`, `stop_time`, `store_name`, `price`, `min_price`, `num`, `bargain_max_price`, `bargain_min_price`, `bargain_num`, `status`, `description`, `give_integral`, `info`, `cost`, `sort`, `is_hot`, `is_del`, `add_time`, `is_postage`, `postage`, `rule`, `look`, `share`) VALUES
(1, 1, '拼团购 无线吸尘器F8 玫瑰金礼盒版', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dba1366885.jpg', '件', 988, 12, '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"]', 1546272000, 1551283200, '无线吸尘器F8 玫瑰金礼盒版', '999.00', '10.00', 1, '50.00', '1.00', 1, 1, '', '1699.00', '无线吸尘器F8', '100.00', 1, 1, 0, 0, 1, '1.00', '', 8, 0),
(2, 3, '加湿器 智能 白色', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc0ef27068.jpg', '件', 999, 1, '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\"]', 1546272000, 1551283200, '智米加湿器 白色 4L', '249.00', '1.00', 1, '10.00', '0.01', 1, 1, '', '249.00', '加湿器 智能 白色', '10.00', 0, 1, 0, 0, 1, '0.00', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_bargain_user`
--

CREATE TABLE `eb_store_bargain_user` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '用户参与砍价表ID',
  `uid` int(11) UNSIGNED DEFAULT NULL COMMENT '用户ID',
  `bargain_id` int(11) UNSIGNED DEFAULT NULL COMMENT '砍价产品id',
  `bargain_price_min` decimal(8,2) UNSIGNED DEFAULT NULL COMMENT '砍价的最低价',
  `bargain_price` decimal(8,2) DEFAULT NULL COMMENT '砍价金额',
  `price` decimal(8,2) UNSIGNED DEFAULT NULL COMMENT '砍掉的价格',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态 1参与中 2 活动结束参与失败 3活动结束参与成功',
  `add_time` int(11) UNSIGNED DEFAULT NULL COMMENT '参与时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户参与砍价表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_bargain_user_help`
--

CREATE TABLE `eb_store_bargain_user_help` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '砍价用户帮助表ID',
  `uid` int(11) UNSIGNED DEFAULT NULL COMMENT '帮助的用户id',
  `bargain_id` int(11) UNSIGNED DEFAULT NULL COMMENT '砍价产品ID',
  `bargain_user_id` int(11) UNSIGNED DEFAULT NULL COMMENT '用户参与砍价表id',
  `price` decimal(8,2) UNSIGNED DEFAULT NULL COMMENT '帮助砍价多少金额',
  `add_time` int(11) UNSIGNED DEFAULT NULL COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='砍价用户帮助表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_cart`
--

CREATE TABLE `eb_store_cart` (
  `id` bigint(8) UNSIGNED NOT NULL COMMENT '购物车表ID',
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `product_attr_unique` varchar(16) NOT NULL DEFAULT '' COMMENT '商品属性',
  `cart_num` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品数量',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '添加时间',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = 未购买 1 = 已购买',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为立即购买',
  `combination_id` int(11) UNSIGNED DEFAULT '0' COMMENT '拼团id',
  `seckill_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '砍价id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车表';

--
-- 转存表中的数据 `eb_store_cart`
--

INSERT INTO `eb_store_cart` (`id`, `uid`, `type`, `product_id`, `product_attr_unique`, `cart_num`, `add_time`, `is_pay`, `is_del`, `is_new`, `combination_id`, `seckill_id`, `bargain_id`) VALUES
(1, 1, 'product', 1, 'f46393a9', 1, 1552638913, 1, 0, 1, 0, 0, 0),
(2, 1, 'product', 1, '0e90eee8', 1, 1552639441, 1, 0, 1, 0, 0, 0),
(3, 1, 'product', 1, '0e90eee8', 1, 1552642851, 1, 0, 1, 0, 0, 0),
(4, 1, 'product', 2, 'bae75a3a', 1, 1552648775, 0, 0, 1, 0, 0, 0),
(5, 1, 'product', 2, 'bae75a3a', 1, 1552648782, 0, 0, 0, 0, 0, 0),
(6, 2, 'product', 1, '0e90eee8', 1, 1552659902, 1, 0, 1, 0, 0, 0),
(7, 2, 'product', 1, '0e90eee8', 1, 1552662490, 1, 0, 0, 0, 0, 0),
(8, 2, 'product', 2, 'bae75a3a', 1, 1552662517, 1, 0, 1, 0, 0, 0),
(9, 2, 'product', 2, 'bae75a3a', 1, 1552662730, 1, 0, 1, 0, 0, 0),
(10, 2, 'product', 1, '0e90eee8', 1, 1552663431, 1, 0, 1, 0, 0, 0),
(11, 2, 'product', 3, 'ab6067b3', 1, 1552663457, 1, 0, 1, 0, 0, 0),
(12, 2, 'product', 2, 'bae75a3a', 1, 1552698796, 1, 0, 1, 0, 0, 0),
(13, 2, 'product', 2, 'bae75a3a', 1, 1552746495, 1, 0, 1, 0, 0, 0),
(14, 2, 'product', 1, '0e90eee8', 1, 1552747685, 1, 0, 1, 0, 0, 0),
(15, 2, 'product', 2, 'bae75a3a', 1, 1552747871, 1, 0, 1, 0, 0, 0),
(16, 2, 'product', 1, '0e90eee8', 1, 1552750770, 1, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_category`
--

CREATE TABLE `eb_store_category` (
  `id` mediumint(11) NOT NULL COMMENT '商品分类表ID',
  `pid` mediumint(11) NOT NULL COMMENT '父id',
  `cate_name` varchar(100) NOT NULL COMMENT '分类名称',
  `sort` mediumint(11) NOT NULL COMMENT '排序',
  `pic` varchar(128) NOT NULL DEFAULT '' COMMENT '图标',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否推荐',
  `add_time` int(11) NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品分类表';

--
-- 转存表中的数据 `eb_store_category`
--

INSERT INTO `eb_store_category` (`id`, `pid`, `cate_name`, `sort`, `pic`, `is_show`, `add_time`) VALUES
(1, 0, '热门推荐', 0, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3db8b933d92.jpg', 1, 1547205038),
(2, 1, '清洁工具', 0, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3db9de2b73a.jpg', 1, 1547205055),
(3, 1, '生活电器', 0, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg', 1, 1547550363);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_combination`
--

CREATE TABLE `eb_store_combination` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL COMMENT '商品id',
  `mer_id` int(10) UNSIGNED DEFAULT '0' COMMENT '商户id',
  `image` varchar(255) NOT NULL COMMENT '推荐图',
  `images` varchar(1000) NOT NULL COMMENT '轮播图',
  `title` varchar(255) NOT NULL COMMENT '活动标题',
  `attr` varchar(255) DEFAULT NULL COMMENT '活动属性',
  `people` int(2) UNSIGNED NOT NULL COMMENT '参团人数',
  `info` varchar(255) NOT NULL COMMENT '简介',
  `price` decimal(10,2) UNSIGNED NOT NULL COMMENT '价格',
  `sort` int(10) UNSIGNED NOT NULL COMMENT '排序',
  `sales` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` int(10) UNSIGNED NOT NULL COMMENT '库存',
  `add_time` varchar(128) NOT NULL COMMENT '添加时间',
  `is_host` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '推荐',
  `is_show` tinyint(1) UNSIGNED NOT NULL COMMENT '产品状态',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `combination` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `mer_use` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '商户是否可用1可用0不可用',
  `is_postage` tinyint(1) UNSIGNED NOT NULL COMMENT '是否包邮1是0否',
  `postage` decimal(10,2) UNSIGNED NOT NULL COMMENT '邮费',
  `description` text NOT NULL COMMENT '拼团内容',
  `start_time` int(11) UNSIGNED NOT NULL COMMENT '拼团开始时间',
  `stop_time` int(11) UNSIGNED NOT NULL COMMENT '拼团结束时间',
  `cost` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '拼图产品成本',
  `browse` int(11) DEFAULT '0' COMMENT '浏览量'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='拼团产品表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `eb_store_combination`
--

INSERT INTO `eb_store_combination` (`id`, `product_id`, `mer_id`, `image`, `images`, `title`, `attr`, `people`, `info`, `price`, `sort`, `sales`, `stock`, `add_time`, `is_host`, `is_show`, `is_del`, `combination`, `mer_use`, `is_postage`, `postage`, `description`, `start_time`, `stop_time`, `cost`, `browse`) VALUES
(1, 1, 0, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dba1366885.jpg', '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"]', '3人团 无线吸尘器F8 玫瑰金礼盒版', '', 3, '年货节活动价1699元，领取吸尘器优惠券再减50元，到手价仅1649元', '1.00', 0, 12, 988, '1547554180', 1, 1, 0, 1, 0, 1, '1.00', '', 1546272000, 1551283200, 0, 0),
(2, 3, 0, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc0ef27068.jpg', '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\"]', '智米加湿器 白色', '', 6, '智米加湿器 白色', '199.00', 0, 0, 999, '1547554327', 1, 1, 0, 1, 0, 1, '0.00', '', 1546272000, 1551283200, 0, 0),
(3, 2, 0, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg', '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc6a38fab.jpg\"]', '智能马桶盖 AI版', '', 10, '智能马桶盖 AI版', '499.00', 0, 6, 994, '1547554596', 1, 1, 0, 1, 0, 1, '0.00', '', 1546272000, 1551283200, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_combination_attr`
--

CREATE TABLE `eb_store_combination_attr` (
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_combination_attr_result`
--

CREATE TABLE `eb_store_combination_attr_result` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) UNSIGNED NOT NULL COMMENT '上次修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性详情表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_combination_attr_value`
--

CREATE TABLE `eb_store_combination_attr_value` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) UNSIGNED NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) UNSIGNED NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) UNSIGNED NOT NULL COMMENT '成本价'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_coupon`
--

CREATE TABLE `eb_store_coupon` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '优惠券表ID',
  `title` varchar(64) NOT NULL COMMENT '优惠券名称',
  `integral` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '兑换消耗积分值',
  `coupon_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '兑换的优惠券面值',
  `use_min_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `coupon_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '优惠券有效期限（单位：天）',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '1' COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态（0：关闭，1：开启）',
  `add_time` int(11) UNSIGNED NOT NULL COMMENT '兑换项目添加时间',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券表';

--
-- 转存表中的数据 `eb_store_coupon`
--

INSERT INTO `eb_store_coupon` (`id`, `title`, `integral`, `coupon_price`, `use_min_price`, `coupon_time`, `sort`, `status`, `add_time`, `is_del`) VALUES
(1, 'UI你水电费', 0, '10.00', '50.00', 3, 0, 1, 1552643797, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_coupon_issue`
--

CREATE TABLE `eb_store_coupon_issue` (
  `id` int(10) UNSIGNED NOT NULL,
  `cid` int(10) DEFAULT NULL COMMENT '优惠券ID',
  `start_time` int(10) DEFAULT NULL COMMENT '优惠券领取开启时间',
  `end_time` int(10) DEFAULT NULL COMMENT '优惠券领取结束时间',
  `total_count` int(10) DEFAULT NULL COMMENT '优惠券领取数量',
  `remain_count` int(10) DEFAULT NULL COMMENT '优惠券剩余领取数量',
  `is_permanent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否无限张数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 正常 0 未开启 -1 已无效',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(10) DEFAULT NULL COMMENT '优惠券添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券前台领取表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_coupon_issue_user`
--

CREATE TABLE `eb_store_coupon_issue_user` (
  `uid` int(10) DEFAULT NULL COMMENT '领取优惠券用户ID',
  `issue_coupon_id` int(10) DEFAULT NULL COMMENT '优惠券前台领取ID',
  `add_time` int(10) DEFAULT NULL COMMENT '领取时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券前台用户领取记录表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_coupon_user`
--

CREATE TABLE `eb_store_coupon_user` (
  `id` int(11) NOT NULL COMMENT '优惠券发放记录id',
  `cid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '兑换的项目id',
  `uid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '优惠券所属用户',
  `coupon_title` varchar(32) NOT NULL COMMENT '优惠券名称',
  `coupon_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '优惠券的面值',
  `use_min_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `add_time` int(11) UNSIGNED NOT NULL COMMENT '优惠券创建时间',
  `end_time` int(11) UNSIGNED NOT NULL COMMENT '优惠券结束时间',
  `use_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '使用时间',
  `type` varchar(32) NOT NULL DEFAULT 'send' COMMENT '获取方式',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（0：未使用，1：已使用, 2:已过期）',
  `is_fail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否有效'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券发放记录表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_order`
--

CREATE TABLE `eb_store_order` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '订单ID',
  `order_id` varchar(32) NOT NULL COMMENT '订单号',
  `uid` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `real_name` varchar(32) NOT NULL COMMENT '用户姓名',
  `user_phone` varchar(18) NOT NULL COMMENT '用户电话',
  `user_address` varchar(100) NOT NULL COMMENT '详细地址',
  `cart_id` varchar(256) NOT NULL DEFAULT '[]' COMMENT '购物车id',
  `total_num` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订单商品总数',
  `total_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `total_postage` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `pay_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '实际支付金额',
  `pay_postage` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '支付邮费',
  `deduction_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '抵扣金额',
  `coupon_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `coupon_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '优惠券金额',
  `paid` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '支付状态',
  `pay_time` int(11) UNSIGNED DEFAULT NULL COMMENT '支付时间',
  `pay_type` varchar(32) NOT NULL COMMENT '支付方式',
  `add_time` int(11) UNSIGNED NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态（-1 : 申请退款 -2 : 退货成功 0：待发货；1：待收货；2：已收货；3：待评价；-1：已退款）',
  `refund_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 未退款 1 申请中 2 已退款',
  `refund_reason_wap_img` varchar(255) DEFAULT NULL COMMENT '退款图片',
  `refund_reason_wap_explain` varchar(255) DEFAULT NULL COMMENT '退款用户说明',
  `refund_reason_time` int(11) UNSIGNED DEFAULT NULL COMMENT '退款时间',
  `refund_reason_wap` varchar(255) DEFAULT NULL COMMENT '前台退款原因',
  `refund_reason` varchar(255) DEFAULT NULL COMMENT '不退款的理由',
  `refund_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `delivery_name` varchar(64) DEFAULT NULL COMMENT '快递名称/送货人姓名',
  `delivery_type` varchar(32) DEFAULT NULL COMMENT '发货类型',
  `delivery_id` varchar(64) DEFAULT NULL COMMENT '快递单号/手机号',
  `gain_integral` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '消费赚取积分',
  `use_integral` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '使用积分',
  `back_integral` decimal(8,2) UNSIGNED DEFAULT NULL COMMENT '给用户退了多少积分',
  `mark` varchar(512) NOT NULL COMMENT '备注',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否删除',
  `unique` char(32) NOT NULL COMMENT '唯一id(md5加密)类似id',
  `remark` varchar(512) DEFAULT NULL COMMENT '管理员备注',
  `mer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户ID',
  `is_mer_check` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `combination_id` int(11) UNSIGNED DEFAULT '0' COMMENT '拼团产品id0一般产品',
  `pink_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '拼团id 0没有拼团',
  `cost` decimal(8,2) UNSIGNED NOT NULL COMMENT '成本价',
  `seckill_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int(11) UNSIGNED DEFAULT '0' COMMENT '砍价id',
  `is_channel` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '支付渠道(0微信公众号1微信小程序)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单表';

--
-- 转存表中的数据 `eb_store_order`
--

INSERT INTO `eb_store_order` (`id`, `order_id`, `uid`, `real_name`, `user_phone`, `user_address`, `cart_id`, `total_num`, `total_price`, `total_postage`, `pay_price`, `pay_postage`, `deduction_price`, `coupon_id`, `coupon_price`, `paid`, `pay_time`, `pay_type`, `add_time`, `status`, `refund_status`, `refund_reason_wap_img`, `refund_reason_wap_explain`, `refund_reason_time`, `refund_reason_wap`, `refund_reason`, `refund_price`, `delivery_name`, `delivery_type`, `delivery_id`, `gain_integral`, `use_integral`, `back_integral`, `mark`, `is_del`, `unique`, `remark`, `mer_id`, `is_mer_check`, `combination_id`, `pink_id`, `cost`, `seckill_id`, `bargain_id`, `is_channel`) VALUES
(7, 'wx2019031523121310004', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[9]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1552662733, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '1999.00', '0.00', NULL, '', 0, '8893926c90a0d7f9415cf4aedeba4c3d', NULL, 0, 0, 0, 0, '1500.00', 0, 0, 0),
(6, 'wx2019031523084710003', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[8]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1552662527, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '1999.00', '0.00', NULL, '', 0, '86d04671651bf65f696d03c7fdfb4503', NULL, 0, 0, 0, 0, '1500.00', 0, 0, 0),
(5, 'wx2019031523081210002', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[7]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1552662492, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '1699.00', '0.00', NULL, '', 0, '5590108e323b57a93e3aaf0606157dfb', NULL, 0, 0, 0, 0, '100.00', 0, 0, 0),
(4, 'wx2019031522254610004', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[6]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1552660204, 'weixin', 1552659946, 2, 0, NULL, NULL, NULL, '收货地址填错了', '绅士手', '0.00', '中通快递', 'express', '5555', '1699.00', '0.00', NULL, '', 0, '39534d4613e0d30e133166e8da1bf2e7', NULL, 0, 0, 0, 0, '100.00', 0, 0, 0),
(8, 'wx2019031523235310005', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[10]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1552663433, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '1699.00', '0.00', NULL, '', 0, '72673afa3b01a9e5c82075fa7b5ded63', NULL, 0, 0, 0, 0, '100.00', 0, 0, 0),
(9, 'wx2019031523241910006', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[11]', 1, '248.00', '0.00', '248.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1552663459, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '249.00', '0.00', NULL, '', 0, 'f1f889a143ad16f9ce75489baef37b79', NULL, 0, 0, 0, 0, '10.00', 0, 0, 0),
(10, 'wx2019031609133610001', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[12]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1552698816, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '1999.00', '0.00', NULL, '', 0, '1b8b8e4a43f6a9041539f7d6fc4a7212', NULL, 0, 0, 0, 0, '1500.00', 0, 0, 0),
(11, 'wx2019031622281710002', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[13]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1552746504, 'weixin', 1552746497, 0, 2, NULL, NULL, NULL, '颜色、款式、图案描述不符合', NULL, '0.01', NULL, NULL, NULL, '1999.00', '0.00', NULL, '', 0, '7b4824d9ab2a79dacb867ee7a07cc2a1', NULL, 0, 0, 0, 0, '1500.00', 0, 0, 0),
(12, 'wx2019031622480910003', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[14]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1552747695, 'weixin', 1552747689, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.01', NULL, NULL, NULL, '1699.00', '0.00', NULL, '', 0, '8425286dac4c129ef08e87b67b5ae084', NULL, 0, 0, 0, 0, '100.00', 0, 0, 0),
(13, 'wx2019031622511310004', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[15]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1552747879, 'weixin', 1552747873, 0, 2, NULL, NULL, NULL, '收货地址填错了', NULL, '0.01', NULL, NULL, NULL, '1999.00', '0.00', NULL, '', 0, '0509e9ec498efe3bd72b5ab49ad9b096', NULL, 0, 0, 0, 0, '1500.00', 0, 0, 0),
(14, 'wx2019031623393210005', 2, '朱桢', '18163626560', '湖南 长沙市 岳麓区 天顶街道', '[16]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1552750780, 'weixin', 1552750772, 0, 2, NULL, NULL, NULL, '大小尺寸与描述不符', NULL, '0.01', NULL, NULL, NULL, '1699.00', '0.00', NULL, '', 0, '0a3a655d644f8cb1fcb387332af7e33c', NULL, 0, 0, 0, 0, '100.00', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_order_cart_info`
--

CREATE TABLE `eb_store_order_cart_info` (
  `oid` int(11) UNSIGNED NOT NULL COMMENT '订单id',
  `cart_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '购物车id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品ID',
  `cart_info` text NOT NULL COMMENT '购买东西的详细信息',
  `unique` char(32) NOT NULL COMMENT '唯一id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单购物详情表';

--
-- 转存表中的数据 `eb_store_order_cart_info`
--

INSERT INTO `eb_store_order_cart_info` (`oid`, `cart_id`, `product_id`, `cart_info`, `unique`) VALUES
(1, 1, 1, '{\"id\":1,\"uid\":1,\"type\":\"product\",\"product_id\":1,\"product_attr_unique\":\"f46393a9\",\"cart_num\":1,\"add_time\":1552638913,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":1,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"],\"price\":\"0.01\",\"cost\":\"100.00\",\"ot_price\":\"1699.00\",\"vip_price\":\"0.00\",\"postage\":\"1.00\",\"mer_id\":0,\"give_integral\":\"1699.00\",\"cate_id\":\"2\",\"sales\":17,\"stock\":988,\"store_name\":\"\\u65e0\\u7ebf\\u5438\\u5c18\\u5668F8 \\u73ab\\u7470\\u91d1\\u793c\\u76d2\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":1,\"suk\":\"\\u84dd\\u8272\",\"stock\":987,\"sales\":1,\"price\":\"0.03\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"unique\":\"f46393a9\",\"cost\":\"100.00\"}},\"truePrice\":0.03,\"costPrice\":100,\"trueStock\":987}', '6512bd43d9caa6e02c990b0a82652dca'),
(2, 2, 1, '{\"id\":2,\"uid\":1,\"type\":\"product\",\"product_id\":1,\"product_attr_unique\":\"0e90eee8\",\"cart_num\":1,\"add_time\":1552639441,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":1,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"],\"price\":\"0.01\",\"cost\":\"100.00\",\"ot_price\":\"1699.00\",\"vip_price\":\"0.00\",\"postage\":\"1.00\",\"mer_id\":0,\"give_integral\":\"1699.00\",\"cate_id\":\"2\",\"sales\":18,\"stock\":988,\"store_name\":\"\\u65e0\\u7ebf\\u5438\\u5c18\\u5668F8 \\u73ab\\u7470\\u91d1\\u793c\\u76d2\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":1,\"suk\":\"\\u9ed1\\u8272\",\"stock\":986,\"sales\":2,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"unique\":\"0e90eee8\",\"cost\":\"100.00\"}},\"truePrice\":0.01,\"costPrice\":100,\"trueStock\":986}', 'b6d767d2f8ed5d21a44b0e5886680cb9'),
(3, 3, 1, '{\"id\":3,\"uid\":1,\"type\":\"product\",\"product_id\":1,\"product_attr_unique\":\"0e90eee8\",\"cart_num\":1,\"add_time\":1552642851,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":1,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"],\"price\":\"0.01\",\"cost\":\"100.00\",\"ot_price\":\"1699.00\",\"vip_price\":\"0.00\",\"postage\":\"1.00\",\"mer_id\":0,\"give_integral\":\"1699.00\",\"cate_id\":\"2\",\"sales\":19,\"stock\":988,\"store_name\":\"\\u65e0\\u7ebf\\u5438\\u5c18\\u5668F8 \\u73ab\\u7470\\u91d1\\u793c\\u76d2\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":1,\"suk\":\"\\u9ed1\\u8272\",\"stock\":985,\"sales\":3,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"unique\":\"0e90eee8\",\"cost\":\"100.00\"}},\"truePrice\":0.01,\"costPrice\":100,\"trueStock\":985}', '182be0c5cdcd5072bb1864cdee4d3d6e'),
(4, 6, 1, '{\"id\":6,\"uid\":2,\"type\":\"product\",\"product_id\":1,\"product_attr_unique\":\"0e90eee8\",\"cart_num\":1,\"add_time\":1552659902,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":1,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"],\"price\":\"0.01\",\"cost\":\"100.00\",\"ot_price\":\"1699.00\",\"vip_price\":\"0.00\",\"postage\":\"1.00\",\"mer_id\":0,\"give_integral\":\"1699.00\",\"cate_id\":\"2\",\"sales\":20,\"stock\":988,\"store_name\":\"\\u65e0\\u7ebf\\u5438\\u5c18\\u5668F8 \\u73ab\\u7470\\u91d1\\u793c\\u76d2\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":1,\"suk\":\"\\u9ed1\\u8272\",\"stock\":984,\"sales\":4,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"unique\":\"0e90eee8\",\"cost\":\"100.00\"}},\"truePrice\":0.01,\"costPrice\":100,\"trueStock\":984}', 'ea5d2f1c4608232e07d3aa3d998e5135'),
(5, 7, 1, '{\"id\":7,\"uid\":2,\"type\":\"product\",\"product_id\":1,\"product_attr_unique\":\"0e90eee8\",\"cart_num\":1,\"add_time\":1552662490,\"is_pay\":0,\"is_del\":0,\"is_new\":0,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":1,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"],\"price\":\"0.01\",\"cost\":\"100.00\",\"ot_price\":\"1699.00\",\"vip_price\":\"0.00\",\"postage\":\"1.00\",\"mer_id\":0,\"give_integral\":\"1699.00\",\"cate_id\":\"2\",\"sales\":21,\"stock\":988,\"store_name\":\"\\u65e0\\u7ebf\\u5438\\u5c18\\u5668F8 \\u73ab\\u7470\\u91d1\\u793c\\u76d2\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":1,\"suk\":\"\\u9ed1\\u8272\",\"stock\":983,\"sales\":5,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"unique\":\"0e90eee8\",\"cost\":\"100.00\"}},\"truePrice\":0.01,\"costPrice\":100,\"trueStock\":983}', 'd09bf41544a3365a46c9077ebb5e35c3'),
(6, 8, 2, '{\"id\":8,\"uid\":2,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"bae75a3a\",\"cart_num\":1,\"add_time\":1552662517,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc6a38fab.jpg\"],\"price\":\"0.01\",\"cost\":\"1500.00\",\"ot_price\":\"1999.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"mer_id\":0,\"give_integral\":\"1999.00\",\"cate_id\":\"3\",\"sales\":7,\"stock\":994,\"store_name\":\"\\u667a\\u80fd\\u9a6c\\u6876\\u76d6 AI\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":2,\"suk\":\"30cm\",\"stock\":993,\"sales\":1,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"unique\":\"bae75a3a\",\"cost\":\"1500.00\"}},\"truePrice\":0.01,\"costPrice\":1500,\"trueStock\":993}', '93db85ed909c13838ff95ccfa94cebd9'),
(7, 9, 2, '{\"id\":9,\"uid\":2,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"bae75a3a\",\"cart_num\":1,\"add_time\":1552662730,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc6a38fab.jpg\"],\"price\":\"0.01\",\"cost\":\"1500.00\",\"ot_price\":\"1999.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"mer_id\":0,\"give_integral\":\"1999.00\",\"cate_id\":\"3\",\"sales\":8,\"stock\":994,\"store_name\":\"\\u667a\\u80fd\\u9a6c\\u6876\\u76d6 AI\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":2,\"suk\":\"30cm\",\"stock\":992,\"sales\":2,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"unique\":\"bae75a3a\",\"cost\":\"1500.00\"}},\"truePrice\":0.01,\"costPrice\":1500,\"trueStock\":992}', 'e2ef524fbf3d9fe611d5a8e90fefdc9c'),
(8, 10, 1, '{\"id\":10,\"uid\":2,\"type\":\"product\",\"product_id\":1,\"product_attr_unique\":\"0e90eee8\",\"cart_num\":1,\"add_time\":1552663431,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":1,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"],\"price\":\"0.01\",\"cost\":\"100.00\",\"ot_price\":\"1699.00\",\"vip_price\":\"0.00\",\"postage\":\"1.00\",\"mer_id\":0,\"give_integral\":\"1699.00\",\"cate_id\":\"2\",\"sales\":22,\"stock\":988,\"store_name\":\"\\u65e0\\u7ebf\\u5438\\u5c18\\u5668F8 \\u73ab\\u7470\\u91d1\\u793c\\u76d2\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":1,\"suk\":\"\\u9ed1\\u8272\",\"stock\":982,\"sales\":6,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"unique\":\"0e90eee8\",\"cost\":\"100.00\"}},\"truePrice\":0.01,\"costPrice\":100,\"trueStock\":982}', 'a3c65c2974270fd093ee8a9bf8ae7d0b'),
(9, 11, 3, '{\"id\":11,\"uid\":2,\"type\":\"product\",\"product_id\":3,\"product_attr_unique\":\"ab6067b3\",\"cart_num\":1,\"add_time\":1552663457,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":3,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\"],\"price\":\"249.00\",\"cost\":\"10.00\",\"ot_price\":\"299.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"mer_id\":0,\"give_integral\":\"249.00\",\"cate_id\":\"3\",\"sales\":0,\"stock\":999,\"store_name\":\"\\u667a\\u7c73\\u52a0\\u6e7f\\u5668 \\u767d\\u8272\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":3,\"suk\":\"3L,\\u767d\\u8272\",\"stock\":999,\"sales\":0,\"price\":\"248.00\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\",\"unique\":\"ab6067b3\",\"cost\":\"10.00\"}},\"truePrice\":248,\"costPrice\":10,\"trueStock\":999}', '07e1cd7dca89a1678042477183b7ac3f'),
(10, 12, 2, '{\"id\":12,\"uid\":2,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"bae75a3a\",\"cart_num\":1,\"add_time\":1552698796,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc6a38fab.jpg\"],\"price\":\"0.01\",\"cost\":\"1500.00\",\"ot_price\":\"1999.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"mer_id\":0,\"give_integral\":\"1999.00\",\"cate_id\":\"3\",\"sales\":9,\"stock\":994,\"store_name\":\"\\u667a\\u80fd\\u9a6c\\u6876\\u76d6 AI\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":2,\"suk\":\"30cm\",\"stock\":991,\"sales\":3,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"unique\":\"bae75a3a\",\"cost\":\"1500.00\"}},\"truePrice\":0.01,\"costPrice\":1500,\"trueStock\":991}', 'f7cade80b7cc92b991cf4d2806d6bd78'),
(11, 13, 2, '{\"id\":13,\"uid\":2,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"bae75a3a\",\"cart_num\":1,\"add_time\":1552746495,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc6a38fab.jpg\"],\"price\":\"0.01\",\"cost\":\"1500.00\",\"ot_price\":\"1999.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"mer_id\":0,\"give_integral\":\"1999.00\",\"cate_id\":\"3\",\"sales\":10,\"stock\":994,\"store_name\":\"\\u667a\\u80fd\\u9a6c\\u6876\\u76d6 AI\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":2,\"suk\":\"30cm\",\"stock\":990,\"sales\":4,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"unique\":\"bae75a3a\",\"cost\":\"1500.00\"}},\"truePrice\":0.01,\"costPrice\":1500,\"trueStock\":990}', '7bb060764a818184ebb1cc0d43d382aa'),
(12, 14, 1, '{\"id\":14,\"uid\":2,\"type\":\"product\",\"product_id\":1,\"product_attr_unique\":\"0e90eee8\",\"cart_num\":1,\"add_time\":1552747685,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":1,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"],\"price\":\"0.01\",\"cost\":\"100.00\",\"ot_price\":\"1699.00\",\"vip_price\":\"0.00\",\"postage\":\"1.00\",\"mer_id\":0,\"give_integral\":\"1699.00\",\"cate_id\":\"2\",\"sales\":23,\"stock\":988,\"store_name\":\"\\u65e0\\u7ebf\\u5438\\u5c18\\u5668F8 \\u73ab\\u7470\\u91d1\\u793c\\u76d2\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":1,\"suk\":\"\\u9ed1\\u8272\",\"stock\":981,\"sales\":7,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"unique\":\"0e90eee8\",\"cost\":\"100.00\"}},\"truePrice\":0.01,\"costPrice\":100,\"trueStock\":981}', '0e4e946668cf2afc4299b462b812caca'),
(13, 15, 2, '{\"id\":15,\"uid\":2,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"bae75a3a\",\"cart_num\":1,\"add_time\":1552747871,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc6a38fab.jpg\"],\"price\":\"0.01\",\"cost\":\"1500.00\",\"ot_price\":\"1999.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"mer_id\":0,\"give_integral\":\"1999.00\",\"cate_id\":\"3\",\"sales\":11,\"stock\":994,\"store_name\":\"\\u667a\\u80fd\\u9a6c\\u6876\\u76d6 AI\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":2,\"suk\":\"30cm\",\"stock\":989,\"sales\":5,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"unique\":\"bae75a3a\",\"cost\":\"1500.00\"}},\"truePrice\":0.01,\"costPrice\":1500,\"trueStock\":989}', '2b3bf3eee2475e03885a110e9acaab61'),
(14, 16, 1, '{\"id\":16,\"uid\":2,\"type\":\"product\",\"product_id\":1,\"product_attr_unique\":\"0e90eee8\",\"cart_num\":1,\"add_time\":1552750770,\"is_pay\":0,\"is_del\":0,\"is_new\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":1,\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"slider_image\":[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"],\"price\":\"0.01\",\"cost\":\"100.00\",\"ot_price\":\"1699.00\",\"vip_price\":\"0.00\",\"postage\":\"1.00\",\"mer_id\":0,\"give_integral\":\"1699.00\",\"cate_id\":\"2\",\"sales\":24,\"stock\":988,\"store_name\":\"\\u65e0\\u7ebf\\u5438\\u5c18\\u5668F8 \\u73ab\\u7470\\u91d1\\u793c\\u76d2\\u7248\",\"unit_name\":\"\\u4ef6\",\"is_show\":1,\"is_del\":0,\"is_postage\":1,\"attrInfo\":{\"product_id\":1,\"suk\":\"\\u9ed1\\u8272\",\"stock\":980,\"sales\":8,\"price\":\"0.01\",\"image\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"unique\":\"0e90eee8\",\"cost\":\"100.00\"}},\"truePrice\":0.01,\"costPrice\":100,\"trueStock\":980}', 'e9fd7c2c6623306db59b6aef5c0d5cac');

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_order_status`
--

CREATE TABLE `eb_store_order_status` (
  `oid` int(10) UNSIGNED NOT NULL COMMENT '订单id',
  `change_type` varchar(32) NOT NULL COMMENT '操作类型',
  `change_message` varchar(256) NOT NULL COMMENT '操作备注',
  `change_time` int(10) UNSIGNED NOT NULL COMMENT '操作时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单操作记录表';

--
-- 转存表中的数据 `eb_store_order_status`
--

INSERT INTO `eb_store_order_status` (`oid`, `change_type`, `change_message`, `change_time`) VALUES
(1, 'cache_key_create_order', '订单生成', 1552638960),
(2, 'cache_key_create_order', '订单生成', 1552639468),
(2, 'remove_order', '删除订单', 1552639602),
(1, 'remove_order', '删除订单', 1552639615),
(3, 'cache_key_create_order', '订单生成', 1552642876),
(4, 'cache_key_create_order', '订单生成', 1552659946),
(4, 'pay_success', '用户付款成功', 1552660204),
(4, 'apply_refund', '用户申请退款，原因：收货地址填错了', 1552660309),
(4, 'delivery', '已配送 发货人：朱桢呢 发货人电话：18163626560', 1552660386),
(3, 'order_edit', '修改商品总价为：0.01 实际支付金额0.01', 1552660458),
(4, 'refund_n', '不退款原因:绅士手', 1552662146),
(4, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：5555', 1552662454),
(4, 'take_delivery', '已收货', 1552662465),
(5, 'cache_key_create_order', '订单生成', 1552662492),
(6, 'cache_key_create_order', '订单生成', 1552662527),
(7, 'cache_key_create_order', '订单生成', 1552662733),
(8, 'cache_key_create_order', '订单生成', 1552663433),
(9, 'cache_key_create_order', '订单生成', 1552663459),
(10, 'cache_key_create_order', '订单生成', 1552698816),
(11, 'cache_key_create_order', '订单生成', 1552746497),
(11, 'pay_success', '用户付款成功', 1552746504),
(11, 'apply_refund', '用户申请退款，原因：颜色、款式、图案描述不符合', 1552746512),
(12, 'cache_key_create_order', '订单生成', 1552747689),
(12, 'pay_success', '用户付款成功', 1552747695),
(12, 'refund_price', '退款给用户0.01元', 1552747803),
(13, 'cache_key_create_order', '订单生成', 1552747873),
(13, 'pay_success', '用户付款成功', 1552747879),
(13, 'apply_refund', '用户申请退款，原因：收货地址填错了', 1552747903),
(14, 'cache_key_create_order', '订单生成', 1552750772),
(14, 'pay_success', '用户付款成功', 1552750780),
(14, 'apply_refund', '用户申请退款，原因：大小尺寸与描述不符', 1552750794),
(14, 'refund_price', '退款给用户0.01元', 1552750820);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_pink`
--

CREATE TABLE `eb_store_pink` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `order_id` varchar(32) NOT NULL COMMENT '订单id 生成',
  `order_id_key` int(10) UNSIGNED NOT NULL COMMENT '订单id  数据库',
  `total_num` int(10) UNSIGNED NOT NULL COMMENT '购买商品个数',
  `total_price` decimal(10,2) UNSIGNED NOT NULL COMMENT '购买总金额',
  `cid` int(10) UNSIGNED NOT NULL COMMENT '拼团产品id',
  `pid` int(10) UNSIGNED NOT NULL COMMENT '产品id',
  `people` int(10) UNSIGNED NOT NULL COMMENT '拼图总人数',
  `price` decimal(10,2) UNSIGNED NOT NULL COMMENT '拼团产品单价',
  `add_time` varchar(24) NOT NULL COMMENT '开始时间',
  `stop_time` varchar(24) NOT NULL,
  `k_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '团长id 0为团长',
  `is_tpl` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否发送模板消息0未发送1已发送',
  `is_refund` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否退款 0未退款 1已退款',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态1进行中2已完成3未完成'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='拼团表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product`
--

CREATE TABLE `eb_store_product` (
  `id` mediumint(11) NOT NULL COMMENT '商品id',
  `mer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户Id(0为总后台管理员创建,不为0的时候是商户后台创建)',
  `image` varchar(128) NOT NULL COMMENT '商品图片',
  `slider_image` varchar(512) NOT NULL COMMENT '轮播图',
  `store_name` varchar(128) NOT NULL COMMENT '商品名称',
  `store_info` varchar(256) NOT NULL COMMENT '商品简介',
  `keyword` varchar(256) NOT NULL COMMENT '关键字',
  `cate_id` varchar(64) NOT NULL COMMENT '分类id',
  `price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `vip_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '会员价格',
  `ot_price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `postage` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `unit_name` varchar(32) NOT NULL COMMENT '单位名',
  `sort` smallint(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `sales` mediumint(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` mediumint(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '库存',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0：未上架，1：上架）',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否热卖',
  `is_benefit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否优惠',
  `is_best` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否精品',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `description` text NOT NULL COMMENT '产品描述',
  `add_time` int(11) UNSIGNED NOT NULL COMMENT '添加时间',
  `is_postage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否删除',
  `mer_use` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户是否代理 0不可代理1可代理',
  `give_integral` decimal(8,2) UNSIGNED NOT NULL COMMENT '获得积分',
  `cost` decimal(8,2) UNSIGNED NOT NULL COMMENT '成本价',
  `is_seckill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '秒杀状态 0 未开启 1已开启',
  `is_bargain` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '砍价状态 0未开启 1开启',
  `ficti` mediumint(11) DEFAULT '100' COMMENT '虚拟销量',
  `browse` int(11) DEFAULT '0' COMMENT '浏览量',
  `code_path` varchar(64) DEFAULT NULL COMMENT '产品二维码地址(用户小程序海报)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品表';

--
-- 转存表中的数据 `eb_store_product`
--

INSERT INTO `eb_store_product` (`id`, `mer_id`, `image`, `slider_image`, `store_name`, `store_info`, `keyword`, `cate_id`, `price`, `vip_price`, `ot_price`, `postage`, `unit_name`, `sort`, `sales`, `stock`, `is_show`, `is_hot`, `is_benefit`, `is_best`, `is_new`, `description`, `add_time`, `is_postage`, `is_del`, `mer_use`, `give_integral`, `cost`, `is_seckill`, `is_bargain`, `ficti`, `browse`, `code_path`) VALUES
(1, 0, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dba1366885.jpg', '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"]', '无线吸尘器F8 玫瑰金礼盒版', '【年货节活动价1699元，领取吸尘器优惠券再减50元，到手价仅1649元】', '无线吸尘器', '2', '0.01', '0.00', '1699.00', '1.00', '件', 1, 25, 988, 1, 1, 0, 1, 1, '<p><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dbb137d656.jpeg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dbb229e820.jpeg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dbb3b37f84.jpeg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dbb513b06f.jpeg\"/></p>', 1547205504, 1, 0, 0, '1699.00', '100.00', 0, 0, 81, 0, ''),
(2, 0, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg', '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc6a38fab.jpg\"]', '智能马桶盖 AI版', '智能马桶盖 AI版', '智能马桶', '3', '0.01', '0.00', '1999.00', '0.00', '件', 0, 12, 994, 1, 1, 1, 1, 1, '<p><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dbce620415.jpeg\"/></p>', 1547516202, 1, 0, 0, '1999.00', '1500.00', 0, 0, 12, 0, ''),
(3, 0, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc0ef27068.jpg', '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\"]', '智米加湿器 白色', '智米加湿器 白色', '加湿器', '3', '249.00', '0.00', '299.00', '0.00', '件', 0, 1, 999, 1, 1, 1, 1, 1, '<p><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dc1730a0c0.jpg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dc182bccac.jpg\"/></p>', 1547551009, 1, 0, 0, '249.00', '10.00', 0, 0, 8, 0, ''),
(4, 0, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc23646fff.jpg', '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc23646fff.jpg\"]', '互联网电热水器1A', '3000w双管速热，动态360L热水用量，双重漏电保护，智能APP操控', '电热水器', '3', '999.00', '0.00', '1599.00', '0.00', '件', 0, 1, 1099, 1, 1, 1, 1, 1, '<p><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dc286862fd.jpg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dc294a9a0a.jpg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dc2ba18a77.jpg\"/></p>', 1547551346, 1, 0, 0, '999.00', '888.00', 0, 0, 10, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product_attr`
--

CREATE TABLE `eb_store_product_attr` (
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性表';

--
-- 转存表中的数据 `eb_store_product_attr`
--

INSERT INTO `eb_store_product_attr` (`product_id`, `attr_name`, `attr_values`) VALUES
(1, '颜色', '黑色,白色,蓝色'),
(2, '孔距', '30cm,40cm'),
(3, '容量', '3L,4L'),
(3, '颜色', '白色,黑色');

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product_attr_result`
--

CREATE TABLE `eb_store_product_attr_result` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) UNSIGNED NOT NULL COMMENT '上次修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性详情表';

--
-- 转存表中的数据 `eb_store_product_attr_result`
--

INSERT INTO `eb_store_product_attr_result` (`product_id`, `result`, `change_time`) VALUES
(1, '{\"attr\":[{\"value\":\"\\u989c\\u8272\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u9ed1\\u8272\",\"\\u767d\\u8272\",\"\\u84dd\\u8272\"]}],\"value\":[{\"detail\":{\"\\u989c\\u8272\":\"\\u9ed1\\u8272\"},\"cost\":\"100.00\",\"price\":\"0.01\",\"sales\":988,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u767d\\u8272\"},\"cost\":\"100.00\",\"price\":0.02,\"sales\":988,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u84dd\\u8272\"},\"cost\":\"100.00\",\"price\":0.03,\"sales\":988,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"check\":false}]}', 1547553666),
(2, '{\"attr\":[{\"value\":\"\\u5b54\\u8ddd\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"30cm\",\"40cm\"]}],\"value\":[{\"detail\":{\"\\u5b54\\u8ddd\":\"30cm\"},\"cost\":\"1500.00\",\"price\":\"0.01\",\"sales\":994,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"check\":false},{\"detail\":{\"\\u5b54\\u8ddd\":\"40cm\"},\"cost\":\"1500.00\",\"price\":888,\"sales\":994,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc6a38fab.jpg\",\"check\":false}]}', 1547553770),
(3, '{\"attr\":[{\"value\":\"\\u5bb9\\u91cf\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"3L\",\"4L\"]},{\"value\":\"\\u989c\\u8272\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u767d\\u8272\",\"\\u9ed1\\u8272\"]}],\"value\":[{\"detail\":{\"\\u5bb9\\u91cf\":\"3L\",\"\\u989c\\u8272\":\"\\u767d\\u8272\"},\"cost\":\"10.00\",\"price\":248,\"sales\":999,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\",\"check\":false},{\"detail\":{\"\\u5bb9\\u91cf\":\"3L\",\"\\u989c\\u8272\":\"\\u9ed1\\u8272\"},\"cost\":\"10.00\",\"price\":249,\"sales\":999,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\",\"check\":false},{\"detail\":{\"\\u5bb9\\u91cf\":\"4L\",\"\\u989c\\u8272\":\"\\u767d\\u8272\"},\"cost\":\"10.00\",\"price\":289,\"sales\":999,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\",\"check\":false},{\"detail\":{\"\\u5bb9\\u91cf\":\"4L\",\"\\u989c\\u8272\":\"\\u9ed1\\u8272\"},\"cost\":\"10.00\",\"price\":299,\"sales\":999,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\",\"check\":false}]}', 1547553857);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product_attr_value`
--

CREATE TABLE `eb_store_product_attr_value` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) UNSIGNED NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) UNSIGNED NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) UNSIGNED NOT NULL COMMENT '成本价'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

--
-- 转存表中的数据 `eb_store_product_attr_value`
--

INSERT INTO `eb_store_product_attr_value` (`product_id`, `suk`, `stock`, `sales`, `price`, `image`, `unique`, `cost`) VALUES
(1, '黑色', 979, 9, '0.01', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dba1366885.jpg', '0e90eee8', '100.00'),
(1, '白色', 986, 2, '0.02', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3db9de2b73a.jpg', 'c8cb03a2', '100.00'),
(1, '蓝色', 986, 2, '0.03', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dba4187461.jpg', 'f46393a9', '100.00'),
(2, '40cm', 994, 0, '888.00', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc6a38fab.jpg', '19f1d772', '1500.00'),
(2, '30cm', 988, 6, '0.01', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg', 'bae75a3a', '1500.00'),
(3, '3L,白色', 998, 1, '248.00', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc0ef27068.jpg', 'ab6067b3', '10.00'),
(3, '3L,黑色', 999, 0, '249.00', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc15ba1972.jpg', 'afb4949f', '10.00'),
(3, '4L,白色', 999, 0, '289.00', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc0ef27068.jpg', '824485b3', '10.00'),
(3, '4L,黑色', 999, 0, '299.00', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc15ba1972.jpg', 'c4b7ce93', '10.00');

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product_relation`
--

CREATE TABLE `eb_store_product_relation` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `type` varchar(32) NOT NULL COMMENT '类型(收藏(collect）、点赞(like))',
  `category` varchar(32) NOT NULL COMMENT '某种类型的商品(普通商品、秒杀商品)',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品点赞和收藏表';

--
-- 转存表中的数据 `eb_store_product_relation`
--

INSERT INTO `eb_store_product_relation` (`uid`, `product_id`, `type`, `category`, `add_time`) VALUES
(1, 2, 'like', 'product', 1552648765);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product_reply`
--

CREATE TABLE `eb_store_product_reply` (
  `id` int(11) NOT NULL COMMENT '评论ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `oid` int(11) NOT NULL COMMENT '订单ID',
  `unique` char(32) NOT NULL COMMENT '唯一id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `reply_type` varchar(32) NOT NULL DEFAULT 'product' COMMENT '某种商品类型(普通商品、秒杀商品）',
  `product_score` tinyint(1) NOT NULL COMMENT '商品分数',
  `service_score` tinyint(1) NOT NULL COMMENT '服务分数',
  `comment` varchar(512) NOT NULL COMMENT '评论内容',
  `pics` text NOT NULL COMMENT '评论图片',
  `add_time` int(11) NOT NULL COMMENT '评论时间',
  `merchant_reply_content` varchar(300) DEFAULT NULL COMMENT '管理员回复内容',
  `merchant_reply_time` int(11) DEFAULT NULL COMMENT '管理员回复时间',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0未删除1已删除',
  `is_reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未回复1已回复'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_seckill`
--

CREATE TABLE `eb_store_seckill` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '商品秒杀产品表id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT '商品id',
  `image` varchar(255) NOT NULL COMMENT '推荐图',
  `images` varchar(1000) NOT NULL COMMENT '轮播图',
  `title` varchar(255) NOT NULL COMMENT '活动标题',
  `info` varchar(255) NOT NULL COMMENT '简介',
  `price` decimal(10,2) UNSIGNED NOT NULL COMMENT '价格',
  `cost` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '成本',
  `ot_price` decimal(10,2) UNSIGNED NOT NULL COMMENT '原价',
  `give_integral` decimal(10,2) UNSIGNED NOT NULL COMMENT '返多少积分',
  `sort` int(10) UNSIGNED NOT NULL COMMENT '排序',
  `stock` int(10) UNSIGNED NOT NULL COMMENT '库存',
  `sales` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '销量',
  `unit_name` varchar(16) NOT NULL COMMENT '单位名',
  `postage` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `description` text COMMENT '内容',
  `start_time` varchar(128) NOT NULL COMMENT '开始时间',
  `stop_time` varchar(128) NOT NULL COMMENT '结束时间',
  `add_time` varchar(128) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) UNSIGNED NOT NULL COMMENT '产品状态',
  `is_postage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_hot` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '热门推荐',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除 0未删除1已删除',
  `num` int(11) UNSIGNED NOT NULL COMMENT '最多秒杀几个',
  `is_show` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '显示'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品秒杀产品表';

--
-- 转存表中的数据 `eb_store_seckill`
--

INSERT INTO `eb_store_seckill` (`id`, `product_id`, `image`, `images`, `title`, `info`, `price`, `cost`, `ot_price`, `give_integral`, `sort`, `stock`, `sales`, `unit_name`, `postage`, `description`, `start_time`, `stop_time`, `add_time`, `status`, `is_postage`, `is_hot`, `is_del`, `num`, `is_show`) VALUES
(1, 1, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dba1366885.jpg', '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"]', '手慢无 无线吸尘器F8 玫瑰金礼盒版', '【年货节活动价1699元，领取吸尘器优惠券再减50元，到手价仅1649元】', '1.00', '100.00', '599.00', '1699.00', 1, 987, 13, '件', '0.00', '', '1546272000', '1551283200', '1547554098', 1, 1, 1, 0, 1, 1),
(2, 3, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc0ef27068.jpg', '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\"]', '智米加湿器 白色', '智米加湿器 白色', '99.00', '10.00', '249.00', '249.00', 0, 999, 1, '件', '0.00', '', '1546272000', '1551283200', '1547554239', 1, 1, 1, 0, 1, 1),
(3, 2, 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg', '[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc6a38fab.jpg\"]', '智能马桶盖 AI版 限时秒杀中', '智能马桶盖 AI版', '599.00', '1500.00', '1599.00', '1999.00', 0, 994, 6, '件', '0.00', '', '1546272000', '1551283200', '1547554561', 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_seckill_attr`
--

CREATE TABLE `eb_store_seckill_attr` (
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_seckill_attr_result`
--

CREATE TABLE `eb_store_seckill_attr_result` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) UNSIGNED NOT NULL COMMENT '上次修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性详情表';

--
-- 转存表中的数据 `eb_store_seckill_attr_result`
--

INSERT INTO `eb_store_seckill_attr_result` (`product_id`, `result`, `change_time`) VALUES
(16, '{\"attr\":[{\"value\":\"\\u989c\\u8272\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u9ed1\\u8272\",\"\\u767d\\u8272\"]},{\"value\":\"\\u5305\\u88c5\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u5927\",\"\\u5c0f\",\"\\u4e2d\"]}],\"value\":[{\"detail\":{\"\\u989c\\u8272\":\"\\u9ed1\\u8272\",\"\\u5305\\u88c5\":\"\\u5927\"},\"price\":\"0.00\",\"sales\":888,\"pic\":\"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u9ed1\\u8272\",\"\\u5305\\u88c5\":\"\\u5c0f\"},\"price\":\"0.00\",\"sales\":888,\"pic\":\"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u9ed1\\u8272\",\"\\u5305\\u88c5\":\"\\u4e2d\"},\"price\":\"0.00\",\"sales\":888,\"pic\":\"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u767d\\u8272\",\"\\u5305\\u88c5\":\"\\u5927\"},\"price\":\"0.00\",\"sales\":888,\"pic\":\"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u767d\\u8272\",\"\\u5305\\u88c5\":\"\\u5c0f\"},\"price\":\"0.00\",\"sales\":888,\"pic\":\"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u767d\\u8272\",\"\\u5305\\u88c5\":\"\\u4e2d\"},\"price\":\"0.00\",\"sales\":888,\"pic\":\"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg\",\"check\":false}]}', 1528271776),
(21, '{\"attr\":[{\"value\":\"\\u989c\\u8272\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u767d\\u8272\",\"\\u9ed1\\u8272\"]}],\"value\":[{\"detail\":{\"\\u989c\\u8272\":\"\\u767d\\u8272\"},\"price\":\"10.00\",\"sales\":9,\"pic\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2f5cd89b.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u9ed1\\u8272\"},\"price\":\"10.00\",\"sales\":9,\"pic\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2f5cd89b.jpg\",\"check\":false}]}', 1530779190),
(24, '{\"attr\":[{\"value\":\"\\u989c\\u8272\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u767d\\u8272\",\"\\u9ed1\\u8272\"]}],\"value\":[{\"detail\":{\"\\u989c\\u8272\":\"\\u767d\\u8272\"},\"price\":\"1.00\",\"sales\":99,\"pic\":\"\\/public\\/uploads\\/store\\/product\\/s_5ae6715187623.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u9ed1\\u8272\"},\"price\":\"1.00\",\"sales\":99,\"pic\":\"\\/public\\/uploads\\/store\\/product\\/s_5ae6715187623.jpg\",\"check\":false}]}', 1530890416);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_seckill_attr_value`
--

CREATE TABLE `eb_store_seckill_attr_value` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) UNSIGNED NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) UNSIGNED NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) UNSIGNED NOT NULL COMMENT '成本价'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性值表';

--
-- 转存表中的数据 `eb_store_seckill_attr_value`
--

INSERT INTO `eb_store_seckill_attr_value` (`product_id`, `suk`, `stock`, `sales`, `price`, `image`, `unique`, `cost`) VALUES
(16, '大,黑色', 888, 0, '0.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '57852e0e', '0.00'),
(16, '小,黑色', 888, 0, '0.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '747eaf51', '0.00'),
(16, '中,黑色', 888, 0, '0.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '12b77e62', '0.00'),
(16, '大,白色', 888, 0, '0.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '187ad0ea', '0.00'),
(16, '小,白色', 888, 0, '0.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '0ea13c0e', '0.00'),
(16, '中,白色', 888, 0, '0.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'a3421a2c', '0.00'),
(21, '白色', 9, 0, '10.00', 'http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2f5cd89b.jpg', 'e893b71b', '0.00'),
(21, '黑色', 9, 0, '10.00', 'http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2f5cd89b.jpg', '56cb2fe0', '0.00'),
(24, '白色', 99, 0, '1.00', '/public/uploads/store/product/s_5ae6715187623.jpg', '48bf425d', '0.00'),
(24, '黑色', 99, 0, '1.00', '/public/uploads/store/product/s_5ae6715187623.jpg', '147b853b', '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_service`
--

CREATE TABLE `eb_store_service` (
  `id` int(11) NOT NULL COMMENT '客服id',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `uid` int(11) NOT NULL COMMENT '客服uid',
  `avatar` varchar(250) NOT NULL COMMENT '客服头像',
  `nickname` varchar(50) NOT NULL COMMENT '代理名称',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0隐藏1显示',
  `notify` int(2) DEFAULT '0' COMMENT '订单通知1开启0关闭'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客服表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_service_log`
--

CREATE TABLE `eb_store_service_log` (
  `id` int(11) NOT NULL COMMENT '客服用户对话记录表ID',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `msn` text NOT NULL COMMENT '消息内容',
  `uid` int(11) NOT NULL COMMENT '发送人uid',
  `to_uid` int(11) NOT NULL COMMENT '接收人uid',
  `add_time` int(11) NOT NULL COMMENT '发送时间',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读（0：否；1：是；）',
  `remind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否提醒过'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客服用户对话记录表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_visit`
--

CREATE TABLE `eb_store_visit` (
  `id` int(10) NOT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '产品ID',
  `product_type` varchar(32) DEFAULT NULL COMMENT '产品类型',
  `cate_id` int(11) DEFAULT NULL COMMENT '产品分类ID',
  `type` char(50) DEFAULT NULL COMMENT '产品类型',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `count` int(11) DEFAULT NULL COMMENT '访问次数',
  `content` varchar(255) DEFAULT NULL COMMENT '备注描述',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品浏览分析表';

--
-- 转存表中的数据 `eb_store_visit`
--

INSERT INTO `eb_store_visit` (`id`, `product_id`, `product_type`, `cate_id`, `type`, `uid`, `count`, `content`, `add_time`) VALUES
(1, 0, 'product', 0, 'search', 1, 1, '0', 1552637240),
(2, 1, 'product', 2, 'viwe', 1, 4, '', 1552642834),
(3, 0, 'product', 0, 'search', 1, 1, '0', 1552637243),
(4, 0, 'product', 0, 'search', 1, 1, '0', 1552647348),
(5, 0, 'product', 0, 'search', 1, 1, '0', 1552647362),
(6, 0, 'product', 0, 'search', 1, 1, '0', 1552647372),
(7, 0, 'product', 0, 'search', 1, 1, '0', 1552647436),
(8, 0, 'product', 0, 'search', 1, 1, '0', 1552647436),
(9, 0, 'product', 0, 'search', 1, 1, '0', 1552647499),
(10, 3, 'product', 3, 'viwe', 1, 1, '', 1552648051),
(11, 0, 'product', 0, 'search', 1, 1, '0', 1552648062),
(12, 0, 'product', 0, 'search', 1, 1, '0', 1552648151),
(13, 0, 'product', 0, 'search', 1, 1, '0', 1552648168),
(14, 0, 'product', 0, 'search', 1, 1, '0', 1552648648),
(15, 0, 'product', 0, 'search', 1, 1, '0', 1552648656),
(16, 0, 'product', 0, 'search', 1, 1, '0', 1552648666),
(17, 0, 'product', 0, 'search', 1, 1, '0', 1552648668),
(18, 0, 'product', 0, 'search', 1, 1, '0', 1552648681),
(19, 0, 'product', 0, 'search', 1, 1, '0', 1552648681),
(20, 0, 'product', 0, 'search', 1, 1, '0', 1552648685),
(21, 0, 'product', 0, 'search', 1, 1, '0', 1552648686),
(22, 0, 'product', 0, 'search', 1, 1, '0', 1552648687),
(23, 0, 'product', 0, 'search', 1, 1, '0', 1552648689),
(24, 0, 'product', 0, 'search', 1, 1, '0', 1552648696),
(25, 0, 'product', 0, 'search', 1, 1, '0', 1552648712),
(26, 2, 'product', 3, 'viwe', 1, 1, '', 1552648762),
(27, 1, 'product', 2, 'viwe', 2, 7, '', 1552750768),
(28, 2, 'product', 3, 'viwe', 2, 5, '', 1552747868),
(29, 3, 'product', 3, 'viwe', 2, 1, '', 1552663450),
(30, 0, 'product', 0, 'search', 2, 1, '0', 1552663597),
(31, 0, 'product', 0, 'search', 2, 1, '0', 1552663618),
(32, 0, 'product', 0, 'search', 2, 1, '0', 1552663764),
(33, 1, 'product', 2, 'viwe', 3, 1, '', 1552696997),
(34, 3, 'product', 3, 'viwe', 3, 1, '', 1552699771),
(35, 0, 'product', 0, 'search', 2, 1, '0', 1552741432),
(36, 0, 'product', 0, 'search', 2, 1, '0', 1552741440);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_admin`
--

CREATE TABLE `eb_system_admin` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '后台管理员表ID',
  `account` varchar(32) NOT NULL COMMENT '后台管理员账号',
  `pwd` char(32) NOT NULL COMMENT '后台管理员密码',
  `real_name` varchar(16) NOT NULL COMMENT '后台管理员姓名',
  `roles` varchar(128) NOT NULL COMMENT '后台管理员权限(menus_id)',
  `last_ip` varchar(16) DEFAULT NULL COMMENT '后台管理员最后一次登录ip',
  `last_time` int(10) UNSIGNED DEFAULT NULL COMMENT '后台管理员最后一次登录时间',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '后台管理员添加时间',
  `login_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录次数',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '后台管理员级别',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '后台管理员状态 1有效0无效',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台管理员表';

--
-- 转存表中的数据 `eb_system_admin`
--

INSERT INTO `eb_system_admin` (`id`, `account`, `pwd`, `real_name`, `roles`, `last_ip`, `last_time`, `add_time`, `login_count`, `level`, `status`, `is_del`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '1', '113.246.154.59', 1552962365, 1552637048, 0, 0, 1, 0),
(2, 'test', 'e10adc3949ba59abbe56e057f20f883e', '大熊', '24', '113.246.154.196', 1552698706, 1552698692, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_attachment`
--

CREATE TABLE `eb_system_attachment` (
  `att_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '附件名称',
  `att_dir` varchar(200) NOT NULL COMMENT '附件路径',
  `satt_dir` varchar(200) DEFAULT NULL COMMENT '压缩图片路径',
  `att_size` char(30) NOT NULL COMMENT '附件大小',
  `att_type` char(30) NOT NULL COMMENT '附件类型',
  `pid` int(10) NOT NULL COMMENT '分类ID0编辑器,1产品图片,2拼团图片,3砍价图片,4秒杀图片,5文章图片,6组合数据图',
  `time` int(11) NOT NULL COMMENT '上传时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件管理表';

--
-- 转存表中的数据 `eb_system_attachment`
--

INSERT INTO `eb_system_attachment` (`att_id`, `name`, `att_dir`, `satt_dir`, `att_size`, `att_type`, `pid`, `time`) VALUES
(12, '5c3db9de2b73a.jpg', '/public/uploads/attach/2019/01/15/5c3db9de2b73a.jpg', '/public/uploads/attach/2019/01/15/s_5c3db9de2b73a.jpg', '61866', 'image/jpeg', 1, 1547549150),
(2, '5c387d18c37fa.jpg', '/public/uploads/editor/20190111/5c387d18c37fa.jpg', '/public/uploads/editor/20190111/s_5c387d18c37fa.jpg', '9274', 'image/jpeg', 0, 1547205912),
(3, '5c387daf3ef63.jpg', '/public/uploads/editor/20190111/5c387daf3ef63.jpg', '/public/uploads/editor/20190111/s_5c387daf3ef63.jpg', '9274', 'image/jpeg', 0, 1547206063),
(7, '5c3db14908923.jpg', '/public/uploads/attach/2019/01/15/5c3db14908923.jpg', '/public/uploads/attach/2019/01/15/s_5c3db14908923.jpg', '102671', 'image/jpeg', 3, 1547546953),
(46, '5c8bc82ae5c27.png', '/public/uploads/attach/2019/03/15/5c8bc82ae5c27.png', '/public/uploads/attach/2019/03/15/s_5c8bc82ae5c27.png', '2002232', 'image/png', 2, 1552664619),
(11, '5c3db8b933d92.jpg', '/public/uploads/attach/2019/01/15/5c3db8b933d92.jpg', '/public/uploads/attach/2019/01/15/s_5c3db8b933d92.jpg', '31746', 'image/jpeg', 2, 1547548857),
(13, '5c3dba1366885.jpg', '/public/uploads/attach/2019/01/15/5c3dba1366885.jpg', '/public/uploads/attach/2019/01/15/s_5c3dba1366885.jpg', '41951', 'image/jpeg', 1, 1547549203),
(14, '5c3dba4187461.jpg', '/public/uploads/attach/2019/01/15/5c3dba4187461.jpg', '/public/uploads/attach/2019/01/15/s_5c3dba4187461.jpg', '76932', 'image/jpeg', 1, 1547549249),
(15, '5c3dbb137d656.jpeg', '/public/uploads/editor/20190115/5c3dbb137d656.jpeg', '/public/uploads/editor/20190115/s_5c3dbb137d656.jpeg', '114386', 'image/jpeg', 0, 1547549459),
(16, '5c3dbb229e820.jpeg', '/public/uploads/editor/20190115/5c3dbb229e820.jpeg', '/public/uploads/editor/20190115/s_5c3dbb229e820.jpeg', '143065', 'image/jpeg', 0, 1547549474),
(17, '5c3dbb3b37f84.jpeg', '/public/uploads/editor/20190115/5c3dbb3b37f84.jpeg', '/public/uploads/editor/20190115/s_5c3dbb3b37f84.jpeg', '139850', 'image/jpeg', 0, 1547549499),
(18, '5c3dbb513b06f.jpeg', '/public/uploads/editor/20190115/5c3dbb513b06f.jpeg', '/public/uploads/editor/20190115/s_5c3dbb513b06f.jpeg', '150123', 'image/jpeg', 0, 1547549521),
(19, '5c3dbc27c69c7.jpg', '/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg', '/public/uploads/attach/2019/01/15/s_5c3dbc27c69c7.jpg', '33563', 'image/jpeg', 1, 1547549735),
(20, '5c3dbc6a38fab.jpg', '/public/uploads/attach/2019/01/15/5c3dbc6a38fab.jpg', '/public/uploads/attach/2019/01/15/s_5c3dbc6a38fab.jpg', '48892', 'image/jpeg', 1, 1547549802),
(21, '5c3dbce620415.jpeg', '/public/uploads/editor/20190115/5c3dbce620415.jpeg', '/public/uploads/editor/20190115/s_5c3dbce620415.jpeg', '132779', 'image/jpeg', 0, 1547549926),
(22, '5c3dc0ef27068.jpg', '/public/uploads/attach/2019/01/15/5c3dc0ef27068.jpg', '/public/uploads/attach/2019/01/15/s_5c3dc0ef27068.jpg', '40991', 'image/jpeg', 1, 1547550959),
(23, '5c3dc15ba1972.jpg', '/public/uploads/attach/2019/01/15/5c3dc15ba1972.jpg', '/public/uploads/attach/2019/01/15/s_5c3dc15ba1972.jpg', '37389', 'image/jpeg', 1, 1547551067),
(24, '5c3dc1730a0c0.jpg', '/public/uploads/editor/20190115/5c3dc1730a0c0.jpg', '/public/uploads/editor/20190115/s_5c3dc1730a0c0.jpg', '113870', 'image/jpeg', 0, 1547551091),
(25, '5c3dc182bccac.jpg', '/public/uploads/editor/20190115/5c3dc182bccac.jpg', '/public/uploads/editor/20190115/s_5c3dc182bccac.jpg', '145391', 'image/jpeg', 0, 1547551106),
(26, '5c3dc23646fff.jpg', '/public/uploads/attach/2019/01/15/5c3dc23646fff.jpg', '/public/uploads/attach/2019/01/15/s_5c3dc23646fff.jpg', '39941', 'image/jpeg', 1, 1547551286),
(27, '5c3dc286862fd.jpg', '/public/uploads/editor/20190115/5c3dc286862fd.jpg', '/public/uploads/editor/20190115/s_5c3dc286862fd.jpg', '81291', 'image/jpeg', 0, 1547551366),
(28, '5c3dc294a9a0a.jpg', '/public/uploads/editor/20190115/5c3dc294a9a0a.jpg', '/public/uploads/editor/20190115/s_5c3dc294a9a0a.jpg', '104012', 'image/jpeg', 0, 1547551380),
(29, '5c3dc2ba18a77.jpg', '/public/uploads/editor/20190115/5c3dc2ba18a77.jpg', '/public/uploads/editor/20190115/s_5c3dc2ba18a77.jpg', '127719', 'image/jpeg', 0, 1547551418),
(31, '5c3dc7146add5.png', '/public/uploads/attach/2019/01/15/5c3dc7146add5.png', '/public/uploads/attach/2019/01/15/s_5c3dc7146add5.png', '3209', 'image/png', 2, 1547552532),
(32, '5c3dc72335ee5.png', '/public/uploads/attach/2019/01/15/5c3dc72335ee5.png', '/public/uploads/attach/2019/01/15/s_5c3dc72335ee5.png', '3607', 'image/png', 2, 1547552547),
(33, '5c3dc730dead2.png', '/public/uploads/attach/2019/01/15/5c3dc730dead2.png', '/public/uploads/attach/2019/01/15/s_5c3dc730dead2.png', '3729', 'image/png', 2, 1547552560),
(34, '5c3dc73feecaf.png', '/public/uploads/attach/2019/01/15/5c3dc73feecaf.png', '/public/uploads/attach/2019/01/15/s_5c3dc73feecaf.png', '3351', 'image/png', 2, 1547552575),
(35, '5c3dc74c1bd3f.png', '/public/uploads/attach/2019/01/15/5c3dc74c1bd3f.png', '/public/uploads/attach/2019/01/15/s_5c3dc74c1bd3f.png', '2847', 'image/png', 2, 1547552588),
(36, '5c3dc7ee98a2e.png', '/public/uploads/attach/2019/01/15/5c3dc7ee98a2e.png', '/public/uploads/attach/2019/01/15/s_5c3dc7ee98a2e.png', '778', 'image/png', 2, 1547552750),
(37, '5c3dc802814e5.png', '/public/uploads/attach/2019/01/15/5c3dc802814e5.png', '/public/uploads/attach/2019/01/15/s_5c3dc802814e5.png', '574', 'image/png', 2, 1547552770),
(38, '5c3dc8232ac13.png', '/public/uploads/attach/2019/01/15/5c3dc8232ac13.png', '/public/uploads/attach/2019/01/15/s_5c3dc8232ac13.png', '1197', 'image/png', 2, 1547552803),
(39, '5c3dc84ef1070.png', '/public/uploads/attach/2019/01/15/5c3dc84ef1070.png', '/public/uploads/attach/2019/01/15/s_5c3dc84ef1070.png', '1556', 'image/png', 2, 1547552846),
(40, '5c3dc865bb257.png', '/public/uploads/attach/2019/01/15/5c3dc865bb257.png', '/public/uploads/attach/2019/01/15/s_5c3dc865bb257.png', '749', 'image/png', 2, 1547552869),
(41, '5c3dc8a7205f0.png', '/public/uploads/attach/2019/01/15/5c3dc8a7205f0.png', '/public/uploads/attach/2019/01/15/s_5c3dc8a7205f0.png', '814', 'image/png', 2, 1547552935),
(42, '5c3dc91cee6ed.png', '/public/uploads/attach/2019/01/15/5c3dc91cee6ed.png', '/public/uploads/attach/2019/01/15/s_5c3dc91cee6ed.png', '1100', 'image/png', 2, 1547553052),
(43, '5c3dc93937a48.png', '/public/uploads/attach/2019/01/15/5c3dc93937a48.png', '/public/uploads/attach/2019/01/15/s_5c3dc93937a48.png', '917', 'image/png', 2, 1547553081),
(44, '5c3dc95a1d134.png', '/public/uploads/attach/2019/01/15/5c3dc95a1d134.png', '/public/uploads/attach/2019/01/15/s_5c3dc95a1d134.png', '1200', 'image/png', 2, 1547553114),
(45, '5c3dc97a19134.png', '/public/uploads/attach/2019/01/15/5c3dc97a19134.png', '/public/uploads/attach/2019/01/15/s_5c3dc97a19134.png', '1227', 'image/png', 2, 1547553146);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_attachment_category`
--

CREATE TABLE `eb_system_attachment_category` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT '0' COMMENT '父级ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `enname` varchar(50) DEFAULT NULL COMMENT '分类目录'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件分类表';

--
-- 转存表中的数据 `eb_system_attachment_category`
--

INSERT INTO `eb_system_attachment_category` (`id`, `pid`, `name`, `enname`) VALUES
(1, 0, '产品图', ''),
(2, 0, '分类图片', ''),
(3, 0, '广告图', '');

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_config`
--

CREATE TABLE `eb_system_config` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '配置id',
  `menu_name` varchar(255) NOT NULL COMMENT '字段名称',
  `type` varchar(255) NOT NULL COMMENT '类型(文本框,单选按钮...)',
  `config_tab_id` int(10) UNSIGNED NOT NULL COMMENT '配置分类id',
  `parameter` varchar(255) DEFAULT NULL COMMENT '规则 单选框和多选框',
  `upload_type` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '上传文件格式1单图2多图3文件',
  `required` varchar(255) DEFAULT NULL COMMENT '规则',
  `width` int(10) UNSIGNED DEFAULT NULL COMMENT '多行文本框的宽度',
  `high` int(10) UNSIGNED DEFAULT NULL COMMENT '多行文框的高度',
  `value` varchar(5000) DEFAULT NULL COMMENT '默认值',
  `info` varchar(255) NOT NULL COMMENT '配置名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '配置简介',
  `sort` int(10) UNSIGNED NOT NULL COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL COMMENT '是否隐藏'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置表';

--
-- 转存表中的数据 `eb_system_config`
--

INSERT INTO `eb_system_config` (`id`, `menu_name`, `type`, `config_tab_id`, `parameter`, `upload_type`, `required`, `width`, `high`, `value`, `info`, `desc`, `sort`, `status`) VALUES
(1, 'site_name', 'text', 1, '', 0, 'required:true', 100, 0, '\"\\u6c6a\\u603b\\u6d4b\\u8bd5\"', '网站名称', '网站名称', 0, 1),
(2, 'site_url', 'text', 1, '', 0, 'required:true,url:true', 100, 0, '\"http:\\/\\/tp.74kd.com\"', '网站地址', '网站地址', 0, 1),
(3, 'site_logo', 'upload', 1, '', 1, '', 0, 0, '\"\\/public\\/uploads\\/config\\/image\\/5c8b6b8b23838.png\"', '后台LOGO', '左上角logo,建议尺寸[170*50]', 0, 1),
(4, 'site_phone', 'text', 1, '', 0, '', 100, 0, '\"\"', '联系电话', '联系电话', 0, 1),
(5, 'seo_title', 'text', 1, '', 0, 'required:true', 100, 0, '\"\\u6c34\\u679c\\u852c\\u83dc\"', 'SEO标题', 'SEO标题', 0, 1),
(6, 'site_email', 'text', 1, '', 0, 'email:true', 100, 0, '\"\"', '联系邮箱', '联系邮箱', 0, 1),
(7, 'site_qq', 'text', 1, '', 0, 'qq:true', 100, 0, '\"98718401\"', '联系QQ', '联系QQ', 0, 1),
(8, 'site_close', 'radio', 1, '0=>开启\n1=>PC端关闭\n2=>WAP端关闭(含微信)\n3=>全部关闭', 0, '', 0, 0, '\"0\"', '网站关闭', '网站后台、商家中心不受影响。关闭网站也可访问', 0, 1),
(9, 'close_system', 'radio', 1, '0=>开启\n1=>关闭', 0, '', 0, 0, '\"0\"', '关闭后台', '关闭后台', 0, 2),
(10, 'wechat_name', 'text', 2, '', 0, 'required:true', 100, 0, '\"\\u57ce\\u5e02\\u679c\\u56ed\"', '公众号名称', '公众号的名称', 0, 1),
(11, 'wechat_id', 'text', 2, '', 0, 'required:true', 100, 0, '\"CRMEB\"', '微信号', '微信号', 0, 1),
(12, 'wechat_sourceid', 'text', 2, '', 0, 'required:true', 100, 0, '\"gh_14a8ce47c62c\"', '公众号原始id', '公众号原始id', 0, 1),
(13, 'wechat_appid', 'text', 2, '', 0, 'required:true', 100, 0, '\"wx80ddb90a5ff58d97\"', 'AppID', 'AppID', 0, 1),
(14, 'wechat_appsecret', 'text', 2, '', 0, 'required:true', 100, 0, '\"c17465a9a9141f507731fd66caa0f3ac\"', 'AppSecret', 'AppSecret', 0, 1),
(15, 'wechat_token', 'text', 2, '', 0, 'required:true', 100, 0, '\"cddd0415e95\"', '微信验证TOKEN', '微信验证TOKEN', 0, 1),
(16, 'wechat_encode', 'radio', 2, '0=>明文模式\n1=>兼容模式\n2=>安全模式', 0, '', 0, 0, '\"0\"', '消息加解密方式', '如需使用安全模式请在管理中心修改，仅限服务号和认证订阅号', 0, 1),
(17, 'wechat_encodingaeskey', 'text', 2, '', 0, 'required:true', 100, 0, '\"3baRoYY2HmeWyDt33Mz4CS3jB9WaotggE15qeCfsDhb\"', 'EncodingAESKey', '公众号消息加解密Key,在使用安全模式情况下要填写该值，请先在管理中心修改，然后填写该值，仅限服务号和认证订阅号', 0, 1),
(18, 'wechat_share_img', 'upload', 3, '', 1, '', 0, 0, '\"\"', '微信分享图片', '若填写此图片地址，则分享网页出去时会分享此图片。可有效防止分享图片变形', 0, 1),
(19, 'wechat_qrcode', 'upload', 2, '', 1, '', 0, 0, '\"\\/public\\/uploads\\/config\\/image\\/5c8b5d134d4ea.png\"', '公众号二维码', '您的公众号二维码', 0, 1),
(20, 'wechat_type', 'radio', 2, '0=>服务号\n1=>订阅号', 0, '', 0, 0, '\"0\"', '公众号类型', '公众号的类型', 0, 1),
(21, 'wechat_share_title', 'text', 3, '', 0, 'required:true', 100, 0, '\"crmeb\\u5ba2\\u6e90\"', '微信分享标题', '微信分享标题', 0, 1),
(22, 'wechat_share_synopsis', 'textarea', 3, '', 0, '', 100, 5, '\"crmeb\\u5ba2\\u6e90crmeb\\u5ba2\\u6e90crmeb\\u5ba2\\u6e90\"', '微信分享简介', '微信分享简介', 0, 1),
(23, 'pay_weixin_appid', 'text', 4, '', 0, '', 100, 0, '\"wx80ddb90a5ff58d97\"', 'Appid', '微信公众号身份的唯一标识。审核通过后，在微信发送的邮件中查看。', 0, 1),
(24, 'pay_weixin_appsecret', 'text', 4, '', 0, '', 100, 0, '\"c17465a9a9141f507731fd66caa0f3ac\"', 'Appsecret', 'JSAPI接口中获取openid，审核后在公众平台开启开发模式后可查看。', 0, 1),
(25, 'pay_weixin_mchid', 'text', 4, '', 0, '', 100, 0, '\"1486863342\"', 'Mchid', '受理商ID，身份标识', 0, 1),
(26, 'pay_weixin_client_cert', 'upload', 4, '', 3, '', 0, 0, '\"\\/public\\/uploads\\/config\\/file\\/5c8d07a9577cf.pem\"', '微信支付证书', '微信支付证书，在微信商家平台中可以下载！文件名一般为apiclient_cert.pem', 0, 1),
(27, 'pay_weixin_client_key', 'upload', 4, '', 3, '', 0, 0, '\"\\/public\\/uploads\\/config\\/file\\/5c8d07b09cc27.pem\"', '微信支付证书密钥', '微信支付证书密钥，在微信商家平台中可以下载！文件名一般为apiclient_key.pem', 0, 1),
(56, 'store_home_pink', 'upload', 5, '', 1, '', 0, 0, '', '首页拼团广告图', '首页拼团广告图', 0, 1),
(28, 'pay_weixin_key', 'text', 4, '', 0, '', 100, 0, '\"if7Lbl26go8X05M62snaYKHBov9Q00yr\"', 'Key', '商户支付密钥Key。审核通过后，在微信发送的邮件中查看。', 0, 1),
(29, 'pay_weixin_open', 'radio', 4, '1=>开启\n0=>关闭', 0, '', 0, 0, '\"1\"', '开启', '是否启用微信支付', 0, 1),
(31, 'store_postage', 'text', 10, '', 0, 'number:true,min:0', 100, 0, '\"0\"', '邮费基础价', '商品邮费基础价格,最终金额为(基础价 + 商品1邮费 + 商品2邮费)', 0, 1),
(32, 'store_free_postage', 'text', 5, '', 0, 'number:true,min:-1', 100, 0, '\"20\"', '满额包邮', '商城商品满多少金额即可包邮', 0, 1),
(33, 'offline_postage', 'radio', 10, '0=>不包邮\n1=>包邮', 0, '', 0, 0, '\"1\"', '线下支付是否包邮', '用户选择线下支付时是否包邮', 0, 1),
(34, 'integral_ratio', 'text', 11, '', 0, 'number:true', 100, 0, '\"0.01\"', '积分抵用比例', '积分抵用比例(1积分抵多少金额)', 0, 1),
(35, 'site_service_phone', 'text', 1, '', 0, '', 100, 0, '\"\"', '客服电话', '客服联系电话', 0, 1),
(44, 'store_user_min_recharge', 'text', 5, '', 0, 'required:true,number:true,min:0', 100, 0, '\"0.01\"', '用户最低充值金额', '用户单次最低充值金额', 0, 0),
(45, 'site_store_admin_uids', 'text', 5, '', 0, '', 100, 0, '\"4\"', '管理员用户ID', '管理员用户ID,用于接收商城订单提醒，到微信用户中查找编号，多个英文‘,’隔开', 0, 1),
(46, 'system_express_app_code', 'text', 10, '', 0, '', 100, 0, '\"16607367740edb563b0f39f0c4b71d\"', '快递查询密钥', '阿里云快递查询接口密钥购买地址：https://market.aliyun.com/products/56928004/cmapi021863.html', 0, 1),
(47, 'main_business', 'text', 2, '', 0, 'required:true', 100, 0, '\" IT\\u79d1\\u6280 \\u4e92\\u8054\\u7f51|\\u7535\\u5b50\\u5546\\u52a1\"', '微信模板消息_主营行业', '微信公众号模板消息中选择开通的主营行业', 0, 0),
(48, 'vice_business', 'text', 2, '', 0, 'required:true', 100, 0, '\"IT\\u79d1\\u6280 IT\\u8f6f\\u4ef6\\u4e0e\\u670d\\u52a1 \"', '微信模板消息_副营行业', '微信公众号模板消息中选择开通的副营行业', 0, 0),
(49, 'store_brokerage_ratio', 'text', 9, '', 0, 'required:true,min:0,max:100,number:true', 100, 0, '\"30\"', '一级返佣比例', '订单交易成功后给上级返佣的比例0 - 100,例:5 = 反订单金额的5%', 5, 1),
(50, 'wechat_first_sub_give_coupon', 'text', 12, '', 0, 'requred:true,digits:true,min:0', 100, 0, '\"\"', '首次关注赠送优惠券ID', '首次关注赠送优惠券ID,0为不赠送', 0, 1),
(51, 'store_give_con_min_price', 'text', 12, '', 0, 'requred:true,digits:true,min:0', 100, 0, '\"0.01\"', '消费满多少赠送优惠券', '消费满多少赠送优惠券,0为不赠送', 0, 1),
(52, 'store_order_give_coupon', 'text', 12, '', 0, 'requred:true,digits:true,min:0', 100, 0, '\"\"', '消费赠送优惠劵ID', '消费赠送优惠劵ID,0为不赠送', 0, 1),
(53, 'user_extract_min_price', 'text', 9, '', 0, 'required:true,number:true,min:0', 100, 0, '\"8\"', '提现最低金额', '用户提现最低金额', 0, 1),
(54, 'sx_sign_min_int', 'text', 11, '', 0, 'required:true,number:true,min:0', 100, 0, '\"1\"', '签到奖励最低积分', '签到奖励最低积分', 0, 1),
(55, 'sx_sign_max_int', 'text', 11, '', 0, 'required:true,number:true,min:0', 100, 0, '\"5\"', '签到奖励最高积分', '签到奖励最高积分', 0, 1),
(57, 'about_us', 'upload', 1, '', 1, '', 0, 0, '\"\\/public\\/uploads\\/config\\/image\\/5c8d04d592292.png\"', '关于我们', '系统的标识', 0, 1),
(61, 'api', 'text', 2, '', 0, '', 100, 0, '\"\\/wap\\/Wechat\\/serve\"', '接口地址', '微信接口例如：http://www.abc.com/wap/Wechat/serve', 0, 1),
(58, 'replenishment_num', 'text', 5, '', 0, 'required:true,number:true,min:0', 100, 0, '\"20\"', '待补货数量', '产品待补货数量低于多少时，提示补货', 0, 1),
(59, 'routine_appId', 'text', 7, '', 0, '', 100, 0, '\"1\"', 'appId', '小程序appID', 0, 1),
(60, 'routine_appsecret', 'text', 7, '', 0, '', 100, 0, '\"1\"', 'AppSecret', '小程序AppSecret', 0, 1),
(62, 'paydir', 'textarea', 4, '', 0, '', 100, 5, '\"\\/wap\\/my\\/\\r\\n\\/wap\\/my\\/order\\/uni\\/\\r\\n\\/wap\\/store\\/confirm_order\\/cartId\\/\\r\\n\\/wap\\/store\\/combination_order\\/\"', '配置目录', '支付目录配置系统不调用提示作用', 0, 1),
(73, 'routine_logo', 'upload', 7, '', 1, '', 0, 0, '\"\\/public\\/uploads\\/config\\/image\\/5c3d98825aa8a.png\"', '小程序logo', '小程序logo', 0, 1),
(74, 'routine_name', 'text', 7, '', 0, '', 100, 0, '\"CRMEB\\u5ba2\\u6e90\"', '小程序名称', '小程序名称', 0, 1),
(76, 'routine_style', 'text', 7, '', 0, '', 100, 0, '\"#FFFFFF\"', '小程序风格', '小程序颜色', 0, 1),
(77, 'store_stock', 'text', 5, '', 0, '', 100, 0, '\"2\"', '警戒库存', '警戒库存提醒值', 0, 1),
(88, 'store_brokerage_statu', 'radio', 9, '1=>指定分销\n2=>人人分销', 0, '', 0, 0, '\"2\"', '分销模式', '人人分销默认每个人都可以分销，制定人分销后台制定人开启分销', 10, 1),
(85, 'stor_reason', 'textarea', 5, '', 0, '', 100, 8, '\"\\u6536\\u8d27\\u5730\\u5740\\u586b\\u9519\\u4e86\\r\\n\\u4e0e\\u63cf\\u8ff0\\u4e0d\\u7b26\\r\\n\\u4fe1\\u606f\\u586b\\u9519\\u4e86\\uff0c\\u91cd\\u65b0\\u62cd\\r\\n\\u6536\\u5230\\u5546\\u54c1\\u635f\\u574f\\u4e86\\r\\n\\u672a\\u6309\\u9884\\u5b9a\\u65f6\\u95f4\\u53d1\\u8d27\\r\\n\\u5176\\u5b83\\u539f\\u56e0\"', '退货理由', '配置退货理由，一行一个理由', 0, 1),
(87, 'store_brokerage_two', 'text', 9, '', 0, 'required:true,min:0,max:100,number:true', 100, 0, '\"10\"', '二级返佣比例', '订单交易成功后给上级返佣的比例0 - 100,例:5 = 反订单金额的5%', 4, 1),
(89, 'pay_routine_appid', 'text', 14, '', 0, 'required:true', 100, 0, '\"1\"', 'Appid', '小程序Appid', 0, 1),
(90, 'pay_routine_appsecret', 'text', 14, '', 0, 'required:true', 100, 0, '\"1\"', 'Appsecret', '小程序Appsecret', 0, 1),
(91, 'pay_routine_mchid', 'text', 14, '', 0, 'required:true', 100, 0, '\"1\"', 'Mchid', '商户号', 0, 1),
(92, 'pay_routine_key', 'text', 14, '', 0, 'required:true', 100, 0, '\"1\"', 'Key', '商户key', 0, 1),
(93, 'pay_routine_client_cert', 'upload', 14, '', 3, '', 0, 0, '\"\\/public\\/uploads\\/config\\/file\\/5c3d992951151.pem\"', '小程序支付证书', '小程序支付证书', 0, 1),
(94, 'pay_routine_client_key', 'upload', 14, '', 3, '', 0, 0, '\"\\/public\\/uploads\\/config\\/file\\/5c3d992d5785d.pem\"', '小程序支付证书密钥', '小程序支付证书密钥', 0, 1),
(99, 'user_extract_bank', 'textarea', 9, NULL, NULL, NULL, 100, 5, '\"\\u4e2d\\u56fd\\u519c\\u884c\\r\\n\\u4e2d\\u56fd\\u5efa\\u8bbe\\u94f6\\u884c\\r\\n\\u5de5\\u5546\\u94f6\\u884c\"', '提现银行卡', '提现银行卡，每个银行换行', 0, 1),
(98, 'wechat_avatar', 'upload', 2, '', 1, '', 0, 0, '\"\\/public\\/uploads\\/config\\/image\\/5c8b5d1b833a8.png\"', '公众号logo', '公众号logo', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_config_tab`
--

CREATE TABLE `eb_system_config_tab` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '配置分类id',
  `title` varchar(255) NOT NULL COMMENT '配置分类名称',
  `eng_title` varchar(255) NOT NULL COMMENT '配置分类英文名称',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '配置分类状态',
  `info` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '配置分类是否显示',
  `icon` varchar(30) DEFAULT NULL COMMENT '图标',
  `type` int(2) DEFAULT '0' COMMENT '配置类型'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置分类表';

--
-- 转存表中的数据 `eb_system_config_tab`
--

INSERT INTO `eb_system_config_tab` (`id`, `title`, `eng_title`, `status`, `info`, `icon`, `type`) VALUES
(1, '基础配置', 'basics', 1, 0, 'cog', 0),
(2, '公众号配置', 'wechat', 1, 0, 'weixin', 1),
(3, '公众号分享配置', 'wechat_share', 1, 0, 'whatsapp', 1),
(4, '公众号支付配置', 'pay', 1, 0, 'jpy', 1),
(5, '商城配置', 'store', 1, 0, 'shopping-cart', 0),
(7, '小程序配置', 'routine', 1, 0, 'weixin', 2),
(9, '分销配置', 'fenxiao', 1, 0, 'sitemap', 3),
(10, '物流配置', 'express', 1, 0, 'motorcycle', 0),
(11, '积分配置', 'point', 1, 0, 'powerpoint-o', 3),
(12, '优惠券配置', 'coupon', 1, 0, 'heartbeat', 3),
(14, '小程序支付配置', 'routine_pay', 1, 0, '', 2);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_file`
--

CREATE TABLE `eb_system_file` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '文件对比ID',
  `cthash` char(32) NOT NULL COMMENT '文件内容',
  `filename` varchar(255) NOT NULL COMMENT '文价名称',
  `atime` char(12) NOT NULL COMMENT '上次访问时间',
  `mtime` char(12) NOT NULL COMMENT '上次修改时间',
  `ctime` char(12) NOT NULL COMMENT '上次改变时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文件对比表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_group`
--

CREATE TABLE `eb_system_group` (
  `id` int(11) NOT NULL COMMENT '组合数据ID',
  `name` varchar(50) NOT NULL COMMENT '数据组名称',
  `info` varchar(256) NOT NULL COMMENT '数据提示',
  `config_name` varchar(50) NOT NULL COMMENT '数据字段',
  `fields` text COMMENT '数据组字段以及类型（json数据）'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='组合数据表';

--
-- 转存表中的数据 `eb_system_group`
--

INSERT INTO `eb_system_group` (`id`, `name`, `info`, `config_name`, `fields`) VALUES
(32, '个人中心菜单', '【公众号】', 'my_index_menu', '[{\"name\":\"\\u540d\\u79f0\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u6807\",\"title\":\"icon\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"select\",\"param\":\"\\/wap\\/my\\/integral.html=>\\u6211\\u7684\\u79ef\\u5206\\n\\/wap\\/my\\/coupon.html=>\\u4f18\\u60e0\\u5238\\n\\/wap\\/my\\/collect.html=>\\u6536\\u85cf\\u5217\\u8868\\n\\/wap\\/my\\/address.html=>\\u5730\\u5740\\u7ba1\\u7406\\n\\/wap\\/my\\/balance.html=>\\u6211\\u7684\\u4f59\\u989d\\n\\/wap\\/service\\/service_new.html=>\\u804a\\u5929\\u8bb0\\u5f55\\n\\/wap\\/index\\/about.html=>\\u8054\\u7cfb\\u6211\\u4eec\\n\\/wap\\/my\\/user_pro.html=>\\u63a8\\u5e7f\\u4f63\\u91d1\"},{\"name\":\"\\u6d4b\\u8bd5\",\"title\":\"test\",\"type\":\"uploads\",\"param\":\"\"}]'),
(34, '商城首页banner', '【公众号】', 'store_home_banner', '[{\"name\":\"\\u6807\\u9898\",\"title\":\"title\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u7247\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"}]'),
(35, '首页分类按钮图标', '【公众号】', 'store_home_menus', '[{\"name\":\"\\u540d\\u79f0\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u6807\",\"title\":\"icon\",\"type\":\"upload\",\"param\":\"\"}]'),
(36, '首页滚动新闻', '【公众号】', 'store_home_roll_news', '[{\"name\":\"\\u6eda\\u52a8\\u6587\\u5b57\",\"title\":\"info\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u70b9\\u51fb\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"}]'),
(37, '拼团、秒杀、砍价顶部banner图', '小程序', 'routine_lovely', '[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"}]'),
(38, '砍价列表页左上小图标', '小程序', 'bargain_banner', '[{\"name\":\"banner\",\"title\":\"banner\",\"type\":\"upload\",\"param\":\"\"}]'),
(47, '首页分类图标', '小程序', 'routine_home_menus', '[{\"name\":\"\\u5206\\u7c7b\\u540d\\u79f0\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5206\\u7c7b\\u56fe\\u6807\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"url\",\"type\":\"select\",\"param\":\"\\/pages\\/index\\/index=>\\u5546\\u57ce\\u9996\\u9875\\n\\/pages\\/spread\\/spread=>\\u4e2a\\u4eba\\u63a8\\u5e7f\\n\\/pages\\/coupon-status\\/coupon-status=>\\u4f18\\u60e0\\u5238\\n\\/pages\\/user\\/user=>\\u4e2a\\u4eba\\u4e2d\\u5fc3\\n\\/pages\\/miao-list\\/miao-list=>\\u79d2\\u6740\\u5217\\u8868\\n\\/pages\\/pink-list\\/index=>\\u62fc\\u56e2\\u5217\\u8868\\u9875\\n\\/pages\\/cut-list\\/cut-list?id=123=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/pages\\/productSort\\/productSort=>\\u5206\\u7c7b\\u9875\\u9762\\n\\/pages\\/address\\/address=>\\u5730\\u5740\\u5217\\u8868\\n\\/pages\\/cash\\/cash=>\\u63d0\\u73b0\\u9875\\u9762\\n\\/pages\\/extension\\/extension=>\\u63a8\\u5e7f\\u7edf\\u8ba1\\n\\/pages\\/main\\/main=>\\u8d26\\u6237\\u91d1\\u989d\\n\\/pages\\/collect\\/collect=>\\u6211\\u7684\\u6536\\u85cf\\n\\/pages\\/promotion-card\\/promotion-card=>\\u63a8\\u5e7f\\u4e8c\\u7ef4\\u7801\\u9875\\u9762\\n\\/pages\\/buycar\\/buycar=>\\u8d2d\\u7269\\u8f66\\u9875\\u9762\\n\\/pages\\/news-list\\/news-list=>\\u6d88\\u606f\\u5217\\u8868\\u9875\\n\\/pages\\/orders-list\\/orders-list=>\\u8ba2\\u5355\\u5217\\u8868\\u9875\\u9762\\n\\/pages\\/new-list\\/new-list=>\\u6587\\u7ae0\\u5217\\u8868\\u9875\"},{\"name\":\"\\u5e95\\u90e8\\u83dc\\u5355\",\"title\":\"show\",\"type\":\"radio\",\"param\":\"\\u662f=>\\u662f\\n\\u5426=>\\u5426\"}]'),
(48, '首页banner滚动图', '小程序', 'routine_home_banner', '[{\"name\":\"\\u6807\\u9898\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u7247\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"}]');

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_group_data`
--

CREATE TABLE `eb_system_group_data` (
  `id` int(11) NOT NULL COMMENT '组合数据详情ID',
  `gid` int(11) NOT NULL COMMENT '对应的数据组id',
  `value` text NOT NULL COMMENT '数据组对应的数据值（json数据）',
  `add_time` int(10) NOT NULL COMMENT '添加数据时间',
  `sort` int(11) NOT NULL COMMENT '数据排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1：开启；2：关闭；）'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='组合数据详情表';

--
-- 转存表中的数据 `eb_system_group_data`
--

INSERT INTO `eb_system_group_data` (`id`, `gid`, `value`, `add_time`, `sort`, `status`) VALUES
(52, 32, '{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u79ef\\u5206\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc7ee98a2e.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/wap\\/my\\/integral.html\"}}', 1513846430, 1, 1),
(53, 32, '{\"name\":{\"type\":\"input\",\"value\":\"\\u4f18\\u60e0\\u5238\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc802814e5.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/wap\\/my\\/coupon.html\"}}', 1513846448, 1, 1),
(84, 34, '{\"title\":{\"type\":\"input\",\"value\":\"banner1\"},\"url\":{\"type\":\"input\",\"value\":\"#\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db14908923.jpg\"}}', 1522135667, 2, 1),
(56, 32, '{\"name\":{\"type\":\"input\",\"value\":\"\\u5df2\\u6536\\u85cf\\u5546\\u54c1\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc91cee6ed.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/wap\\/my\\/collect.html\"}}', 1513846605, 1, 1),
(57, 32, '{\"name\":{\"type\":\"input\",\"value\":\"\\u5730\\u5740\\u7ba1\\u7406\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc93937a48.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/wap\\/my\\/address.html\"}}', 1513846618, 1, 1),
(87, 32, '{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u4f59\\u989d\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc865bb257.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/wap\\/my\\/balance.html\"}}', 1525330614, 1, 1),
(67, 32, '{\"name\":{\"type\":\"input\",\"value\":\"\\u804a\\u5929\\u8bb0\\u5f55\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc8a7205f0.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/wap\\/service\\/service_new.html\"}}', 1515570261, 1, 1),
(72, 35, '{\"name\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/store\\/cut_list.html\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc72335ee5.png\"}}', 1515985426, 1, 2),
(73, 35, '{\"name\":{\"type\":\"input\",\"value\":\"\\u9886\\u5238\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/store\\/issue_coupon.html\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc7146add5.png\"}}', 1515985435, 1, 1),
(74, 35, '{\"name\":{\"type\":\"input\",\"value\":\"\\u62fc\\u56e2\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/store\\/combination.html\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc73feecaf.png\"}}', 1515985441, 1, 2),
(80, 36, '{\"info\":{\"type\":\"input\",\"value\":\"CRMEB\\u7535\\u5546\\u7cfb\\u7edf V 2.5 \\u5373\\u5c06\\u4e0a\\u7ebf\\uff01\"},\"url\":{\"type\":\"input\",\"value\":\"#\"}}', 1515985907, 1, 1),
(81, 36, '{\"info\":{\"type\":\"input\",\"value\":\"CRMEB\\u5546\\u57ce V 2.5 \\u5c0f\\u7a0b\\u5e8f\\u516c\\u4f17\\u53f7\\u6570\\u636e\\u540c\\u6b65\\uff01\"},\"url\":{\"type\":\"input\",\"value\":\"#\"}}', 1515985918, 1, 1),
(107, 37, '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/8\\/20180817\\/5b768dfd6189a.jpg\"},\"comment\":{\"type\":\"input\",\"value\":\"\\u62fc\\u56e2\\u5217\\u8868\\u9876\\u90e8banner\"}}', 1534496260, 0, 1),
(88, 37, '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2b0969d7.jpg\"},\"comment\":{\"type\":\"input\",\"value\":\"\\u62fc\\u56e2\"}}', 1526699754, 10, 1),
(89, 38, '{\"banner\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc730dead2.png\"}}', 1527153599, 1, 1),
(86, 32, '{\"name\":{\"type\":\"input\",\"value\":\"\\u8054\\u7cfb\\u5ba2\\u670d\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc84ef1070.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/wap\\/index\\/about.html\"}}', 1522310836, 1, 1),
(91, 37, '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2deb5b20.jpg\"},\"comment\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\\u5217\\u8868\\u9876\\u90e8baaner\"}}', 1528688012, 1, 1),
(92, 32, '{\"name\":{\"type\":\"input\",\"value\":\"\\u63a8\\u5e7f\\u4f63\\u91d1\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc95a1d134.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/wap\\/my\\/user_pro.html\"}}', 1530688244, 1, 1),
(99, 47, '{\"name\":{\"type\":\"input\",\"value\":\"\\u6536\\u85cf\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc7146add5.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/collect\\/collect\"},\"show\":{\"type\":\"radio\",\"value\":\"\\u662f\"}}', 1533721963, 1, 1),
(100, 47, '{\"name\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc72335ee5.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/cut-list\\/cut-list\"},\"show\":{\"type\":\"radio\",\"value\":\"\\u5426\"}}', 1533722009, 1, 1),
(101, 47, '{\"name\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc730dead2.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/miao-list\\/miao-list\"},\"show\":{\"type\":\"radio\",\"value\":\"\\u5426\"}}', 1533722037, 1, 1),
(102, 47, '{\"name\":{\"type\":\"input\",\"value\":\"\\u62fc\\u56e2\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc73feecaf.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/pink-list\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"\\u5426\"}}', 1533722063, 1, 1),
(104, 48, '{\"name\":{\"type\":\"input\",\"value\":\"banenr2\"},\"url\":{\"type\":\"input\",\"value\":\"\\/pages\\/pink-list\\/index\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db14908923.jpg\"}}', 1533722286, 10, 1),
(105, 47, '{\"name\":{\"type\":\"input\",\"value\":\"\\u8d44\\u8baf\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc74c1bd3f.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/new-list\\/new-list\"},\"show\":{\"type\":\"radio\",\"value\":\"\\u5426\"}}', 1533797064, 1, 1),
(106, 32, '{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u780d\\u4ef7\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc97a19134.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/wap\\/my\\/user_cut.html\"}}', 1533889033, 1, 2),
(108, 35, '{\"name\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\"},\"url\":{\"type\":\"input\",\"value\":\"wap\\/store\\/seckill_index.html\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc730dead2.png\"}}', 1541054595, 1, 2),
(109, 35, '{\"name\":{\"type\":\"input\",\"value\":\"\\u7b7e\\u5230\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/my\\/sign_in.html\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc74c1bd3f.png\"}}', 1541054641, 1, 1),
(110, 37, '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/editor\\/20190111\\/5c387daf3ef63.jpg\"},\"comment\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u5217\\u8868\\u9876\\u90e8banner\"}}', 1547208439, 1, 1),
(113, 35, '{\"name\":{\"type\":\"input\",\"value\":\"\\u70ed\\u95e8\\u63a8\\u8350\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/store\\/index\\/cid\\/1.html\"},\"icon\":{\"type\":\"upload\",\"value\":\"http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc72335ee5.png\"}}', 1552663962, 1, 1),
(114, 35, '{\"name\":{\"type\":\"input\",\"value\":\"\\u4e2a\\u4eba\\u4e2d\\u5fc3\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/my\\/index.html\"},\"icon\":{\"type\":\"upload\",\"value\":\"http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc72335ee5.png\"}}', 1552664626, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_log`
--

CREATE TABLE `eb_system_log` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '管理员操作记录ID',
  `admin_id` int(10) UNSIGNED NOT NULL COMMENT '管理员id',
  `admin_name` varchar(64) NOT NULL COMMENT '管理员姓名',
  `path` varchar(128) NOT NULL COMMENT '链接',
  `page` varchar(64) NOT NULL COMMENT '行为',
  `method` varchar(12) NOT NULL COMMENT '访问类型',
  `ip` varchar(16) NOT NULL COMMENT '登录IP',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '操作时间',
  `merchant_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员操作记录表';

--
-- 转存表中的数据 `eb_system_log`
--

INSERT INTO `eb_system_log` (`id`, `admin_id`, `admin_name`, `path`, `page`, `method`, `ip`, `type`, `add_time`, `merchant_id`) VALUES
(1, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/2', '公众号接口配置', 'GET', '113.246.152.89', 'system', 1552637163, 0),
(2, 1, 'admin', 'admin/common/rmpublicresource/', '未知', 'GET', '113.246.152.89', 'system', 1552637195, 0),
(3, 1, 'admin', 'admin/setting.systemconfig/view_upload/', '配置列表上传文件', 'POST', '113.246.152.89', 'system', 1552637203, 0),
(4, 1, 'admin', 'admin/setting.systemconfig/getimagename/', '获取配置列表上传文件的名称', 'POST', '113.246.152.89', 'system', 1552637203, 0),
(5, 1, 'admin', 'admin/setting.systemconfig/view_upload/', '配置列表上传文件', 'POST', '113.246.152.89', 'system', 1552637211, 0),
(6, 1, 'admin', 'admin/setting.systemconfig/getimagename/', '获取配置列表上传文件的名称', 'POST', '113.246.152.89', 'system', 1552637211, 0),
(7, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.246.152.89', 'system', 1552637217, 0),
(8, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/2', '公众号接口配置', 'GET', '113.246.152.89', 'system', 1552637217, 0),
(9, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/2', '公众号接口配置', 'GET', '113.246.152.89', 'system', 1552639815, 0),
(10, 1, 'admin', 'admin/system.systemupgradeclient/index/', '在线更新', 'GET', '113.246.152.89', 'system', 1552640012, 0),
(11, 1, 'admin', 'admin/system.systemupgradeclient/get_new_version_conte/', '未知', 'POST', '113.246.152.89', 'system', 1552640013, 0),
(12, 1, 'admin', 'admin/system.systemupgradeclient/get_list/', '未知', 'POST', '113.246.152.89', 'system', 1552640013, 0),
(13, 1, 'admin', 'admin/system.clear/index/', '刷新缓存', 'GET', '113.246.152.89', 'system', 1552640014, 0),
(14, 1, 'admin', 'admin/system.clear/delete_cache/', '未知', 'GET', '113.246.152.89', 'system', 1552640019, 0),
(15, 1, 'admin', 'admin/system.clear/delete_log/', '未知', 'GET', '113.246.152.89', 'system', 1552640022, 0),
(16, 1, 'admin', 'admin/system.clear/refresh_cache/', '未知', 'GET', '113.246.152.89', 'system', 1552640026, 0),
(17, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/1', '配置列表展示页', 'GET', '113.246.152.89', 'system', 1552640335, 0),
(18, 1, 'admin', 'admin/store.storeproduct/index/type/1', '产品管理展示页', 'GET', '113.246.152.89', 'system', 1552640805, 0),
(19, 1, 'admin', 'admin/store.storeproduct/product_ist/type/1', '未知', 'GET', '113.246.152.89', 'system', 1552640805, 0),
(20, 1, 'admin', 'admin/store.storecategory/index/', '产品分类展示页', 'GET', '113.246.152.89', 'system', 1552640821, 0),
(21, 1, 'admin', 'admin/store.storecategory/category_list/pid/0', '未知', 'GET', '113.246.152.89', 'system', 1552640821, 0),
(22, 1, 'admin', 'admin/store.storeproduct/index/type/1', '产品管理展示页', 'GET', '113.246.152.89', 'system', 1552640843, 0),
(23, 1, 'admin', 'admin/store.storeproduct/product_ist/type/1', '未知', 'GET', '113.246.152.89', 'system', 1552640843, 0),
(24, 1, 'admin', 'admin/store.storeproduct/edit/', '未知', 'GET', '113.246.152.89', 'system', 1552640850, 0),
(25, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/1', '配置列表展示页', 'GET', '113.246.152.89', 'system', 1552640883, 0),
(26, 1, 'admin', 'admin/common/rmpublicresource/', '未知', 'GET', '113.246.152.89', 'system', 1552640889, 0),
(27, 1, 'admin', 'admin/setting.systemconfig/view_upload/', '配置列表上传文件', 'POST', '113.246.152.89', 'system', 1552640896, 0),
(28, 1, 'admin', 'admin/setting.systemconfig/getimagename/', '获取配置列表上传文件的名称', 'POST', '113.246.152.89', 'system', 1552640896, 0),
(29, 1, 'admin', 'admin/setting.systemconfig/view_upload/', '配置列表上传文件', 'POST', '113.246.152.89', 'system', 1552640907, 0),
(30, 1, 'admin', 'admin/setting.systemconfig/getimagename/', '获取配置列表上传文件的名称', 'POST', '113.246.152.89', 'system', 1552640907, 0),
(31, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.246.152.89', 'system', 1552640913, 0),
(32, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/1', '配置列表展示页', 'GET', '113.246.152.89', 'system', 1552640913, 0),
(33, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/1', '配置列表展示页', 'GET', '113.246.152.89', 'system', 1552640922, 0),
(34, 1, 'admin', 'admin/setting.systemconfigtab/index/', '配置分类展示页', 'GET', '113.246.152.89', 'system', 1552640924, 0),
(35, 1, 'admin', 'admin/setting.systemgroup/index/', '组合数据展示页', 'GET', '113.246.152.89', 'system', 1552640926, 0),
(36, 1, 'admin', 'admin/system.clear/index/', '刷新缓存', 'GET', '113.246.152.89', 'system', 1552640930, 0),
(37, 1, 'admin', 'admin/system.clear/refresh_cache/', '未知', 'GET', '113.246.152.89', 'system', 1552640934, 0),
(38, 1, 'admin', 'admin/system.clear/index/', '刷新缓存', 'GET', '113.246.152.89', 'system', 1552641095, 0),
(39, 1, 'admin', 'admin/system.clear/delete_cache/', '未知', 'GET', '113.246.152.89', 'system', 1552641098, 0),
(40, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/34', '数据列表', 'GET', '113.246.152.89', 'system', 1552641421, 0),
(41, 1, 'admin', 'admin/setting.systemgroupdata/edit/gid/34/id/84', '编辑数据', 'GET', '113.246.152.89', 'system', 1552641429, 0),
(42, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/35', '数据列表', 'GET', '113.246.152.89', 'system', 1552641438, 0),
(43, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/36', '数据列表', 'GET', '113.246.152.89', 'system', 1552641444, 0),
(44, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/32', '数据列表', 'GET', '113.246.152.89', 'system', 1552641462, 0),
(45, 1, 'admin', 'admin/setting.systemgroupdata/edit/gid/32/id/56', '编辑数据', 'GET', '113.246.152.89', 'system', 1552641483, 0),
(46, 1, 'admin', 'admin/widget.images/index/fodder/icon/big/1', '附件管理展示页', 'GET', '113.246.152.89', 'system', 1552641486, 0),
(47, 1, 'admin', 'admin/widget.images/index/pid/1/fodder/icon/big/1', '附件管理展示页', 'GET', '113.246.152.89', 'system', 1552641491, 0),
(48, 1, 'admin', 'admin/widget.images/index/pid/2/fodder/icon/big/1', '附件管理展示页', 'GET', '113.246.152.89', 'system', 1552641494, 0),
(49, 1, 'admin', 'admin/widget.images/index/pid/1/fodder/icon/big/1', '附件管理展示页', 'GET', '113.246.152.89', 'system', 1552641495, 0),
(50, 1, 'admin', 'admin/widget.images/index/pid/0/fodder/icon/big/1', '附件管理展示页', 'GET', '113.246.152.89', 'system', 1552641496, 0),
(51, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/32', '数据列表', 'GET', '113.246.152.89', 'system', 1552641503, 0),
(52, 1, 'admin', 'admin/setting.systemgroupdata/edit/gid/32/id/56', '编辑数据', 'GET', '113.246.152.89', 'system', 1552641561, 0),
(53, 1, 'admin', 'admin/setting.systemrole/index/', '身份管理展示页', 'GET', '113.246.152.89', 'system', 1552643189, 0),
(54, 1, 'admin', 'admin/setting.systemadmin/index/', '管理员列表展示页', 'GET', '113.246.152.89', 'system', 1552643192, 0),
(55, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.152.89', 'system', 1552643194, 0),
(56, 1, 'admin', 'admin/setting.systemmenus/edit/id/269', '编辑菜单', 'GET', '113.246.152.89', 'system', 1552643201, 0),
(57, 1, 'admin', 'admin/setting.systemmenus/update/id/269', '编辑提交菜单', 'POST', '113.246.152.89', 'system', 1552643207, 0),
(58, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.152.89', 'system', 1552643207, 0),
(59, 1, 'admin', 'admin/record.record/chart_cash/', '提现统计', 'GET', '113.246.152.89', 'system', 1552643226, 0),
(60, 1, 'admin', 'admin/record.record/getextractdata/', '未知', 'GET', '113.246.152.89', 'system', 1552643227, 0),
(61, 1, 'admin', 'admin/record.record/getextracthead/', '未知', 'GET', '113.246.152.89', 'system', 1552643227, 0),
(62, 1, 'admin', 'admin/user.user/index/', '会员列表页', 'GET', '113.246.152.89', 'system', 1552643267, 0),
(63, 1, 'admin', 'admin/user.user/get_user_list/', '未知', 'GET', '113.246.152.89', 'system', 1552643268, 0),
(64, 1, 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'GET', '113.246.152.89', 'system', 1552643268, 0),
(65, 1, 'admin', 'admin/user.user/set_status/status/0/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643274, 0),
(66, 1, 'admin', 'admin/user.user/set_status/status/1/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643274, 0),
(67, 1, 'admin', 'admin/user.user/edit/uid/1', '编辑用户', 'GET', '113.246.152.89', 'system', 1552643276, 0),
(68, 1, 'admin', 'admin/user.user/see/uid/1', '查看用户', 'GET', '113.246.152.89', 'system', 1552643281, 0),
(69, 1, 'admin', 'admin/user.user/getoneorderlist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643282, 0),
(70, 1, 'admin', 'admin/user.user/getspreadlist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643282, 0),
(71, 1, 'admin', 'admin/user.user/getonesignlist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643282, 0),
(72, 1, 'admin', 'admin/user.user/getonebalancechanglist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643282, 0),
(73, 1, 'admin', 'admin/user.user/getoneintegrallist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643282, 0),
(74, 1, 'admin', 'admin/user.user/getonecouponslist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643282, 0),
(75, 1, 'admin', 'admin/user.usernotice/index/', '未知', 'GET', '113.246.152.89', 'system', 1552643290, 0),
(76, 1, 'admin', 'admin/user.usernotice/index/', '未知', 'GET', '113.246.152.89', 'system', 1552643290, 0),
(77, 1, 'admin', 'admin/user.usernotice/create/', '未知', 'GET', '113.246.152.89', 'system', 1552643292, 0),
(78, 1, 'admin', 'admin/user.usernotice/save/', '未知', 'POST', '113.246.152.89', 'system', 1552643301, 0),
(79, 1, 'admin', 'admin/user.usernotice/index/', '未知', 'GET', '113.246.152.89', 'system', 1552643301, 0),
(80, 1, 'admin', 'admin/user.usernotice/index/', '未知', 'GET', '113.246.152.89', 'system', 1552643301, 0),
(81, 1, 'admin', 'admin/user.usernotice/send/id/1', '未知', 'GET', '113.246.152.89', 'system', 1552643310, 0),
(82, 1, 'admin', 'admin/user.usernotice/create/', '未知', 'GET', '113.246.152.89', 'system', 1552643328, 0),
(83, 1, 'admin', 'admin/user.usernotice/save/', '未知', 'POST', '113.246.152.89', 'system', 1552643334, 0),
(84, 1, 'admin', 'admin/user.usernotice/index/', '未知', 'GET', '113.246.152.89', 'system', 1552643334, 0),
(85, 1, 'admin', 'admin/user.usernotice/index/', '未知', 'GET', '113.246.152.89', 'system', 1552643335, 0),
(86, 1, 'admin', 'admin/user.usernotice/send/id/2', '未知', 'GET', '113.246.152.89', 'system', 1552643339, 0),
(87, 1, 'admin', 'admin/setting.systemconfig/index/type/3/tab_id/9', '分销配置', 'GET', '113.246.152.89', 'system', 1552643582, 0),
(88, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.246.152.89', 'system', 1552643592, 0),
(89, 1, 'admin', 'admin/setting.systemconfig/index/type/3/tab_id/9', '分销配置', 'GET', '113.246.152.89', 'system', 1552643593, 0),
(90, 1, 'admin', 'admin/agent.agentmanage/index/', '分销管理列表页', 'GET', '113.246.152.89', 'system', 1552643625, 0),
(91, 1, 'admin', 'admin/user.user/see/uid/1', '查看用户', 'GET', '113.246.152.89', 'system', 1552643637, 0),
(92, 1, 'admin', 'admin/user.user/getspreadlist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643637, 0),
(93, 1, 'admin', 'admin/user.user/getoneorderlist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643637, 0),
(94, 1, 'admin', 'admin/user.user/getonecouponslist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643637, 0),
(95, 1, 'admin', 'admin/user.user/getonesignlist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643637, 0),
(96, 1, 'admin', 'admin/user.user/getonebalancechanglist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643637, 0),
(97, 1, 'admin', 'admin/user.user/getoneintegrallist/page/1/limit/10/uid/1', '未知', 'GET', '113.246.152.89', 'system', 1552643637, 0),
(98, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.246.152.89', 'system', 1552643660, 0),
(99, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.246.152.89', 'system', 1552643660, 0),
(100, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.246.152.89', 'system', 1552643660, 0),
(101, 1, 'admin', 'admin/finance.userextract/index/', '未知', 'GET', '113.246.152.89', 'system', 1552643673, 0),
(102, 1, 'admin', 'admin/finance.userextract/succ/id/1', '未知', 'POST', '113.246.152.89', 'system', 1552643679, 0),
(103, 1, 'admin', 'admin/finance.userextract/index/', '未知', 'GET', '113.246.152.89', 'system', 1552643681, 0),
(104, 1, 'admin', 'admin/finance.userextract/edit/id/1', '未知', 'GET', '113.246.152.89', 'system', 1552643683, 0),
(105, 1, 'admin', 'admin/ump.storecoupon/index/', '优惠券制作', 'GET', '113.246.152.89', 'system', 1552643733, 0),
(106, 1, 'admin', 'admin/ump.storecoupon/create/', '未知', 'GET', '113.246.152.89', 'system', 1552643736, 0),
(107, 1, 'admin', 'admin/ump.storecouponissue/index/', '已发布管理', 'GET', '113.246.152.89', 'system', 1552643743, 0),
(108, 1, 'admin', 'admin/ump.storecouponuser/index/', '会员领取记录', 'GET', '113.246.152.89', 'system', 1552643744, 0),
(109, 1, 'admin', 'admin/setting.systemconfig/index/type/3/tab_id/12', '优惠券配置', 'GET', '113.246.152.89', 'system', 1552643745, 0),
(110, 1, 'admin', 'admin/ump.storecoupon/create/', '未知', 'GET', '113.246.152.89', 'system', 1552643774, 0),
(111, 1, 'admin', 'admin/ump.storecoupon/save/', '未知', 'POST', '113.246.152.89', 'system', 1552643797, 0),
(112, 1, 'admin', 'admin/ump.storecoupon/index/', '优惠券制作', 'GET', '113.246.152.89', 'system', 1552643797, 0),
(113, 1, 'admin', 'admin/article.articlecategory/index/', '文章分类管理展示页', 'GET', '113.246.152.89', 'system', 1552643874, 0),
(114, 1, 'admin', 'admin/article.articlecategory/create/', '添加文章分类', 'GET', '113.246.152.89', 'system', 1552643877, 0),
(115, 1, 'admin', 'admin/article.article/index/', '文章管理', 'GET', '113.246.152.89', 'system', 1552643884, 0),
(116, 1, 'admin', 'admin/article.article/create/', '未知', 'GET', '113.246.152.89', 'system', 1552643886, 0),
(117, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.152.89', 'system', 1552644044, 0),
(118, 1, 'admin', 'admin/setting.systemmenus/create/cid/80', '添加菜单', 'GET', '113.246.152.89', 'system', 1552644051, 0),
(119, 1, 'admin', 'admin/system.clear/index/', '刷新缓存', 'GET', '113.246.152.89', 'system', 1552647308, 0),
(120, 1, 'admin', 'admin/system.clear/delete_cache/', '未知', 'GET', '113.246.152.89', 'system', 1552647311, 0),
(121, 1, 'admin', 'admin/system.clear/refresh_cache/', '未知', 'GET', '113.246.152.89', 'system', 1552647314, 0),
(122, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.152.89', 'system', 1552647597, 0),
(123, 1, 'admin', 'admin/wechat.menus/index/', '微信菜单展示页', 'GET', '113.246.152.89', 'system', 1552648870, 0),
(124, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/32', '数据列表', 'GET', '113.246.152.89', 'system', 1552648898, 0),
(125, 1, 'admin', 'admin/setting.systemgroupdata/edit/gid/32/id/106', '编辑数据', 'GET', '113.246.152.89', 'system', 1552648902, 0),
(126, 1, 'admin', 'admin/setting.systemgroupdata/update/id/106', '提交修改数据', 'POST', '113.246.152.89', 'system', 1552648905, 0),
(127, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/32', '数据列表', 'GET', '113.246.152.89', 'system', 1552648905, 0),
(128, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/2', '公众号接口配置', 'GET', '113.247.22.168', 'system', 1552658203, 0),
(129, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.247.22.168', 'system', 1552658433, 0),
(130, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/2', '公众号接口配置', 'GET', '113.247.22.168', 'system', 1552658434, 0),
(131, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552658585, 0),
(132, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/2/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552658586, 0),
(133, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659451, 0),
(134, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.247.22.168', 'system', 1552659532, 0),
(135, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659533, 0),
(136, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/2/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659534, 0),
(137, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659539, 0),
(138, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/2/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659550, 0),
(139, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659555, 0),
(140, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.247.22.168', 'system', 1552659561, 0),
(141, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659561, 0),
(142, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/2/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659563, 0),
(143, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659566, 0),
(144, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.247.22.168', 'system', 1552659570, 0),
(145, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659571, 0),
(146, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/2/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659576, 0),
(147, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659590, 0),
(148, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.247.22.168', 'system', 1552659594, 0),
(149, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659594, 0),
(150, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.247.22.168', 'system', 1552659896, 0),
(151, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552659896, 0),
(152, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552660212, 0),
(153, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552660213, 0),
(154, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552660213, 0),
(155, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.22.168', 'system', 1552660225, 0),
(156, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/4', '未知', 'POST', '113.247.22.168', 'system', 1552660231, 0),
(157, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/4', '未知', 'POST', '113.247.22.168', 'system', 1552660234, 0),
(158, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/4', '未知', 'POST', '113.247.22.168', 'system', 1552660237, 0),
(159, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552660336, 0),
(160, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552660336, 0),
(161, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552660337, 0),
(162, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.22.168', 'system', 1552660354, 0),
(163, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/4', '未知', 'POST', '113.247.22.168', 'system', 1552660357, 0),
(164, 1, 'admin', 'admin/order.storeorder/order_info/', '未知', 'GET', '113.247.22.168', 'system', 1552660365, 0),
(165, 1, 'admin', 'admin/order.storeorder/delivery/', '未知', 'GET', '113.247.22.168', 'system', 1552660374, 0),
(166, 1, 'admin', 'admin/order.storeorder/updatedelivery/id/4', '未知', 'POST', '113.247.22.168', 'system', 1552660386, 0),
(167, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552660386, 0),
(168, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552660386, 0),
(169, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552660387, 0),
(170, 1, 'admin', 'admin/order.storeorder/delivery/', '未知', 'GET', '113.247.22.168', 'system', 1552660439, 0),
(171, 1, 'admin', 'admin/order.storeorder/edit/', '未知', 'GET', '113.247.22.168', 'system', 1552660450, 0),
(172, 1, 'admin', 'admin/order.storeorder/update/id/3', '未知', 'POST', '113.247.22.168', 'system', 1552660458, 0),
(173, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552660458, 0),
(174, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552660458, 0),
(175, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552660458, 0),
(176, 1, 'admin', 'admin/order.storeorder/order_info/', '未知', 'GET', '113.247.22.168', 'system', 1552660480, 0),
(177, 1, 'admin', 'admin/order.storeorder/order_info/', '未知', 'GET', '113.247.22.168', 'system', 1552660487, 0),
(178, 1, 'admin', 'admin/order.storeorder/delivery/', '未知', 'GET', '113.247.22.168', 'system', 1552660496, 0),
(179, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.22.168', 'system', 1552660506, 0),
(180, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552660512, 0),
(181, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552660512, 0),
(182, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552660512, 0),
(183, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/2/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552660515, 0),
(184, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552660530, 0),
(185, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552660530, 0),
(186, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552660530, 0),
(187, 1, 'admin', 'admin/store.storeproductreply/index/', '评论管理展示页', 'GET', '113.247.22.168', 'system', 1552660532, 0),
(188, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552660539, 0),
(189, 1, 'admin', 'admin/order.storeorder/delivery/', '未知', 'GET', '113.247.22.168', 'system', 1552660719, 0),
(190, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552660910, 0),
(191, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552660910, 0),
(192, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552660910, 0),
(193, 1, 'admin', 'admin/order.storeorder/delivery/', '未知', 'GET', '113.247.22.168', 'system', 1552660967, 0),
(194, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552661074, 0),
(195, 1, 'admin', 'admin/order.storeorder/delivery/', '未知', 'GET', '113.247.22.168', 'system', 1552661085, 0),
(196, 1, 'admin', 'admin/order.storeorder/delivery/', '未知', 'GET', '113.247.22.168', 'system', 1552661120, 0),
(197, 1, 'admin', 'admin/order.storeorder/delivery/', '未知', 'GET', '113.247.22.168', 'system', 1552661324, 0),
(198, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552661681, 0),
(199, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552661681, 0),
(200, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552661681, 0),
(201, 1, 'admin', 'admin/order.storeorder/delivery/', '未知', 'GET', '113.247.22.168', 'system', 1552661694, 0),
(202, 1, 'admin', 'admin/order.storeorder/delivery/', '未知', 'GET', '113.247.22.168', 'system', 1552662078, 0),
(203, 1, 'admin', 'admin/order.storeorder/refund_n/', '未知', 'GET', '113.247.22.168', 'system', 1552662141, 0),
(204, 1, 'admin', 'admin/order.storeorder/updaterefundn/id/4', '未知', 'POST', '113.247.22.168', 'system', 1552662146, 0),
(205, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552662146, 0),
(206, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552662146, 0),
(207, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552662146, 0),
(208, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.22.168', 'system', 1552662153, 0),
(209, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/4', '未知', 'POST', '113.247.22.168', 'system', 1552662155, 0),
(210, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/4', '未知', 'POST', '113.247.22.168', 'system', 1552662340, 0),
(211, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552662445, 0),
(212, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552662445, 0),
(213, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552662445, 0),
(214, 1, 'admin', 'admin/order.storeorder/deliver_goods/', '未知', 'GET', '113.247.22.168', 'system', 1552662448, 0),
(215, 1, 'admin', 'admin/order.storeorder/updatedeliverygoods/id/4', '未知', 'POST', '113.247.22.168', 'system', 1552662454, 0),
(216, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.22.168', 'system', 1552662455, 0),
(217, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.22.168', 'system', 1552662455, 0),
(218, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.22.168', 'system', 1552662455, 0),
(219, 1, 'admin', 'admin/order.storeorder/take_delivery/id/4', '未知', 'GET', '113.247.22.168', 'system', 1552662465, 0),
(220, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/2', '公众号接口配置', 'GET', '113.247.22.168', 'system', 1552662564, 0),
(221, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552662567, 0),
(222, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.247.22.168', 'system', 1552662571, 0),
(223, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552662571, 0),
(224, 1, 'admin', 'admin/wechat.menus/index/', '微信菜单展示页', 'GET', '113.247.22.168', 'system', 1552663675, 0),
(225, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/4', '公众号支付配置', 'GET', '113.247.22.168', 'system', 1552663677, 0),
(226, 1, 'admin', 'admin/wechat.wechattemplate/index/', '微信模版消息列表页', 'GET', '113.247.22.168', 'system', 1552663678, 0),
(227, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/35', '数据列表', 'GET', '113.247.22.168', 'system', 1552663693, 0),
(228, 1, 'admin', 'admin/setting.systemgroupdata/edit/gid/35/id/74', '编辑数据', 'GET', '113.247.22.168', 'system', 1552663701, 0),
(229, 1, 'admin', 'admin/setting.systemgroupdata/update/id/74', '提交修改数据', 'POST', '113.247.22.168', 'system', 1552663704, 0),
(230, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/35', '数据列表', 'GET', '113.247.22.168', 'system', 1552663704, 0),
(231, 1, 'admin', 'admin/setting.systemgroupdata/edit/gid/35/id/72', '编辑数据', 'GET', '113.247.22.168', 'system', 1552663709, 0),
(232, 1, 'admin', 'admin/setting.systemgroupdata/update/id/72', '提交修改数据', 'POST', '113.247.22.168', 'system', 1552663712, 0),
(233, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/35', '数据列表', 'GET', '113.247.22.168', 'system', 1552663712, 0),
(234, 1, 'admin', 'admin/setting.systemgroupdata/edit/gid/35/id/108', '编辑数据', 'GET', '113.247.22.168', 'system', 1552663742, 0),
(235, 1, 'admin', 'admin/setting.systemgroupdata/update/id/108', '提交修改数据', 'POST', '113.247.22.168', 'system', 1552663745, 0),
(236, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/35', '数据列表', 'GET', '113.247.22.168', 'system', 1552663745, 0),
(237, 1, 'admin', 'admin/setting.systemgroupdata/create/gid/35', '添加数据', 'GET', '113.247.22.168', 'system', 1552663788, 0),
(238, 1, 'admin', 'admin/setting.systemgroupdata/edit/gid/35/id/72', '编辑数据', 'GET', '113.247.22.168', 'system', 1552663800, 0),
(239, 1, 'admin', 'admin/setting.systemgroupdata/create/gid/35', '添加数据', 'GET', '113.247.22.168', 'system', 1552663804, 0),
(240, 1, 'admin', 'admin/widget.images/index/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663830, 0),
(241, 1, 'admin', 'admin/widget.images/index/pid/1/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663834, 0),
(242, 1, 'admin', 'admin/widget.images/index/pid/2/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663835, 0),
(243, 1, 'admin', 'admin/widget.images/index/pid/3/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663836, 0),
(244, 1, 'admin', 'admin/widget.images/index/pid/2/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663838, 0),
(245, 1, 'admin', 'admin/widget.images/index/pid/1/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663839, 0),
(246, 1, 'admin', 'admin/widget.images/index/pid/0/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663841, 0),
(247, 1, 'admin', 'admin/widget.images/index/pid/2/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663842, 0),
(248, 1, 'admin', 'admin/widget.images/index/pid/3/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663844, 0),
(249, 1, 'admin', 'admin/widget.images/addcate/id/3', '添加分类展示', 'GET', '113.247.22.168', 'system', 1552663851, 0),
(250, 1, 'admin', 'admin/widget.images/index/pid/3/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663855, 0),
(251, 1, 'admin', 'admin/widget.images/delete/', '删除图片', 'POST', '113.247.22.168', 'system', 1552663858, 0),
(252, 1, 'admin', 'admin/widget.images/index/pid/3/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663859, 0),
(253, 1, 'admin', 'admin/setting.systemgroupdata/save/gid/35', '提交添加数据', 'POST', '113.247.22.168', 'system', 1552663949, 0),
(254, 1, 'admin', 'admin/widget.images/index/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663952, 0),
(255, 1, 'admin', 'admin/widget.images/index/pid/2/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552663955, 0),
(256, 1, 'admin', 'admin/setting.systemgroupdata/save/gid/35', '提交添加数据', 'POST', '113.247.22.168', 'system', 1552663962, 0),
(257, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/35', '数据列表', 'GET', '113.247.22.168', 'system', 1552663962, 0),
(258, 1, 'admin', 'admin/setting.systemgroupdata/create/gid/35', '添加数据', 'GET', '113.247.22.168', 'system', 1552664199, 0),
(259, 1, 'admin', 'admin/setting.systemgroupdata/create/gid/35', '添加数据', 'GET', '113.247.22.168', 'system', 1552664209, 0),
(260, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/35', '数据列表', 'GET', '113.247.22.168', 'system', 1552664274, 0),
(261, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552664335, 0),
(262, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.247.22.168', 'system', 1552664406, 0),
(263, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/1', '配置列表展示页', 'GET', '113.247.22.168', 'system', 1552664407, 0),
(264, 1, 'admin', 'admin/setting.systemgroup/index/', '组合数据展示页', 'GET', '113.247.22.168', 'system', 1552664429, 0),
(265, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/35', '数据列表', 'GET', '113.247.22.168', 'system', 1552664438, 0),
(266, 1, 'admin', 'admin/setting.systemgroup/index/', '组合数据展示页', 'GET', '113.247.22.168', 'system', 1552664444, 0),
(267, 1, 'admin', 'admin/setting.systemgroup/edit/id/32', '未知', 'GET', '113.247.22.168', 'system', 1552664447, 0),
(268, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/32', '数据列表', 'GET', '113.247.22.168', 'system', 1552664453, 0),
(269, 1, 'admin', 'admin/setting.systemgroup/index/', '组合数据展示页', 'GET', '113.247.22.168', 'system', 1552664460, 0),
(270, 1, 'admin', 'admin/system.systemcleardata/index/', '清除数据', 'GET', '113.247.22.168', 'system', 1552664473, 0),
(271, 1, 'admin', 'admin/system.systemfile/opendir/', '文件管理', 'GET', '113.247.22.168', 'system', 1552664488, 0),
(272, 1, 'admin', 'admin/system.systemfile/opendir/', '文件管理', 'GET', '113.247.22.168', 'system', 1552664492, 0),
(273, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/32', '数据列表', 'GET', '113.247.22.168', 'system', 1552664505, 0),
(274, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/34', '数据列表', 'GET', '113.247.22.168', 'system', 1552664507, 0),
(275, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/36', '数据列表', 'GET', '113.247.22.168', 'system', 1552664510, 0),
(276, 1, 'admin', 'admin/setting.systemgroupdata/create/gid/35', '添加数据', 'GET', '113.247.22.168', 'system', 1552664590, 0),
(277, 1, 'admin', 'admin/widget.images/index/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552664609, 0),
(278, 1, 'admin', 'admin/widget.images/upload/', '上传图片', 'POST', '113.247.22.168', 'system', 1552664618, 0),
(279, 1, 'admin', 'admin/widget.images/index/fodder/icon/big/1', '附件管理展示页', 'GET', '113.247.22.168', 'system', 1552664620, 0),
(280, 1, 'admin', 'admin/setting.systemgroupdata/save/gid/35', '提交添加数据', 'POST', '113.247.22.168', 'system', 1552664626, 0),
(281, 1, 'admin', 'admin/setting.systemgroupdata/index/gid/35', '数据列表', 'GET', '113.247.22.168', 'system', 1552664626, 0),
(282, 1, 'admin', 'admin/setting.systemadmin/index/', '管理员列表展示页', 'GET', '113.246.154.196', 'system', 1552698554, 0),
(283, 1, 'admin', 'admin/setting.systemrole/index/', '身份管理展示页', 'GET', '113.246.154.196', 'system', 1552698558, 0),
(284, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.154.196', 'system', 1552698559, 0),
(285, 1, 'admin', 'admin/setting.systemrole/create/', '添加身份', 'GET', '113.246.154.196', 'system', 1552698568, 0),
(286, 1, 'admin', 'admin/setting.systemrole/save/', '提交添加身份', 'POST', '113.246.154.196', 'system', 1552698635, 0),
(287, 1, 'admin', 'admin/setting.systemrole/index/', '身份管理展示页', 'GET', '113.246.154.196', 'system', 1552698641, 0),
(288, 1, 'admin', 'admin/setting.systemadmin/create/', '添加管理员', 'GET', '113.246.154.196', 'system', 1552698651, 0),
(289, 1, 'admin', 'admin/setting.systemadmin/index/', '管理员列表展示页', 'GET', '113.246.154.196', 'system', 1552698659, 0),
(290, 1, 'admin', 'admin/setting.systemadmin/create/', '添加管理员', 'GET', '113.246.154.196', 'system', 1552698660, 0),
(291, 1, 'admin', 'admin/setting.systemadmin/save/', '提交添加管理员', 'POST', '113.246.154.196', 'system', 1552698692, 0),
(292, 1, 'admin', 'admin/setting.systemadmin/index/', '管理员列表展示页', 'GET', '113.246.154.196', 'system', 1552698692, 0),
(293, 2, 'test', 'admin/article.article/index/', '文章管理', 'GET', '113.246.154.196', 'system', 1552701076, 0),
(294, 2, 'test', 'admin/article.article/create/', '未知', 'GET', '113.246.154.196', 'system', 1552701079, 0),
(295, 2, 'test', 'admin/article.article/create/', '未知', 'GET', '113.246.154.196', 'system', 1552701084, 0),
(296, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.154.196', 'system', 1552701316, 0),
(297, 1, 'admin', 'admin/setting.systemmenus/create/cid/80', '添加菜单', 'GET', '113.246.154.196', 'system', 1552701321, 0),
(298, 1, 'admin', 'admin/setting.systemmenus/edit/id/80', '编辑菜单', 'GET', '113.246.154.196', 'system', 1552701325, 0),
(299, 1, 'admin', 'admin/setting.systemmenus/create/', '添加菜单', 'GET', '113.246.154.196', 'system', 1552701343, 0),
(300, 1, 'admin', 'admin/widget.widgets/icon/fodder/icon', '未知', 'GET', '113.246.154.196', 'system', 1552701382, 0),
(301, 1, 'admin', 'admin/setting.systemmenus/create/cid/21', '添加菜单', 'GET', '113.246.154.196', 'system', 1552701396, 0),
(302, 1, 'admin', 'admin/article.article/index/', '文章管理', 'GET', '113.246.154.196', 'system', 1552701414, 0),
(303, 1, 'admin', 'admin/article.articlecategory/index/', '文章分类管理展示页', 'GET', '113.246.154.196', 'system', 1552701419, 0),
(304, 1, 'admin', 'admin/article.articlecategory/index/', '文章分类管理展示页', 'GET', '113.246.154.196', 'system', 1552701427, 0),
(305, 1, 'admin', 'admin/setting.systemmenus/create/cid/80', '添加菜单', 'GET', '113.246.154.196', 'system', 1552701489, 0),
(306, 1, 'admin', 'admin/setting.systemmenus/create/cid/80', '添加菜单', 'GET', '113.246.154.196', 'system', 1552701494, 0),
(307, 1, 'admin', 'admin/widget.widgets/icon/fodder/icon', '未知', 'GET', '113.246.154.196', 'system', 1552701599, 0),
(308, 1, 'admin', 'admin/setting.systemmenus/save/', '添加提交菜单', 'POST', '113.246.154.196', 'system', 1552701607, 0),
(309, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.154.196', 'system', 1552701608, 0),
(310, 1, 'admin', 'admin/setting.systemadmin/index/', '管理员列表展示页', 'GET', '113.246.154.196', 'system', 1552701640, 0),
(311, 1, 'admin', 'admin/setting.systemrole/index/', '身份管理展示页', 'GET', '113.246.154.196', 'system', 1552701643, 0),
(312, 1, 'admin', 'admin/article.testart/create/', '测试编辑', 'GET', '113.246.154.196', 'system', 1552701651, 0),
(313, 1, 'admin', 'admin/article.testart/create/', '测试编辑', 'GET', '113.246.154.196', 'system', 1552701715, 0),
(314, 1, 'admin', 'admin/system.clear/index/', '刷新缓存', 'GET', '113.246.154.196', 'system', 1552701727, 0),
(315, 1, 'admin', 'admin/system.clear/refresh_cache/', '未知', 'GET', '113.246.154.196', 'system', 1552701731, 0),
(316, 1, 'admin', 'admin/article.testart/create/', '测试编辑', 'GET', '113.246.154.196', 'system', 1552701738, 0),
(317, 1, 'admin', 'admin/article.testart/create/', '测试编辑', 'GET', '113.246.154.196', 'system', 1552701768, 0),
(318, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.154.196', 'system', 1552701843, 0),
(319, 1, 'admin', 'admin/setting.systemmenus/edit/id/80', '编辑菜单', 'GET', '113.246.154.196', 'system', 1552701854, 0),
(320, 1, 'admin', 'admin/article.testart/testart/', '测试编辑', 'GET', '113.246.154.196', 'system', 1552701910, 0),
(321, 1, 'admin', 'admin/system.systemupgradeclient/index/', '在线更新', 'GET', '113.246.154.196', 'system', 1552702006, 0),
(322, 1, 'admin', 'admin/system.systemupgradeclient/get_new_version_conte/', '未知', 'POST', '113.246.154.196', 'system', 1552702007, 0),
(323, 1, 'admin', 'admin/system.systemupgradeclient/get_list/', '未知', 'POST', '113.246.154.196', 'system', 1552702007, 0),
(324, 1, 'admin', 'admin/system.systemfile/opendir/', '文件管理', 'GET', '113.246.154.196', 'system', 1552702010, 0),
(325, 1, 'admin', 'admin/system.clear/index/', '刷新缓存', 'GET', '113.246.154.196', 'system', 1552702011, 0),
(326, 1, 'admin', 'admin/system.clear/delete_cache/', '未知', 'GET', '113.246.154.196', 'system', 1552702014, 0),
(327, 1, 'admin', 'admin/system.clear/delete_log/', '未知', 'GET', '113.246.154.196', 'system', 1552702017, 0),
(328, 1, 'admin', 'admin/article.testart/testart/', '测试编辑', 'GET', '113.246.154.196', 'system', 1552702036, 0),
(329, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/1', '配置列表展示页', 'GET', '113.246.154.196', 'system', 1552702146, 0),
(330, 1, 'admin', 'admin/setting.systemconfigtab/index/', '配置分类展示页', 'GET', '113.246.154.196', 'system', 1552702148, 0),
(331, 1, 'admin', 'admin/setting.systemgroup/index/', '组合数据展示页', 'GET', '113.246.154.196', 'system', 1552702150, 0),
(332, 1, 'admin', 'admin/setting.systemconfigtab/edit/id/10', '编辑配置分类', 'GET', '113.246.154.196', 'system', 1552702156, 0),
(333, 1, 'admin', 'admin/setting.systemadmin/index/', '管理员列表展示页', 'GET', '113.246.154.196', 'system', 1552702171, 0),
(334, 1, 'admin', 'admin/setting.systemadmin/index/', '管理员列表展示页', 'GET', '113.246.154.196', 'system', 1552702178, 0),
(335, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.154.196', 'system', 1552702181, 0),
(336, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.154.196', 'system', 1552702186, 0),
(337, 1, 'admin', 'admin/setting.systemmenus/create/', '添加菜单', 'GET', '113.246.154.196', 'system', 1552702205, 0),
(338, 1, 'admin', 'admin/article.article/index/', '文章管理', 'GET', '113.246.154.196', 'system', 1552702342, 0),
(339, 1, 'admin', 'admin/article.article/create/', '未知', 'GET', '113.246.154.196', 'system', 1552702343, 0),
(340, 1, 'admin', 'admin/article.article/testart/', '测试编辑', 'GET', '113.246.154.196', 'system', 1552702413, 0),
(341, 1, 'admin', 'admin/article.article/testart/', '测试编辑', 'GET', '113.246.154.196', 'system', 1552702447, 0),
(342, 1, 'admin', 'admin/article.article/create/', '未知', 'GET', '113.246.154.196', 'system', 1552708549, 0),
(343, 1, 'admin', 'admin/setting.systemmenus/index/', '菜单管理展示页', 'GET', '113.246.154.196', 'system', 1552708588, 0),
(344, 1, 'admin', 'admin/setting.systemmenus/create/', '添加菜单', 'GET', '113.246.154.196', 'system', 1552708603, 0),
(345, 1, 'admin', 'admin/setting.systemmenus/create/', '添加菜单', 'GET', '113.246.154.196', 'system', 1552708633, 0),
(346, 1, 'admin', 'admin/setting.systemmenus/create/cid/80', '添加菜单', 'GET', '113.246.154.196', 'system', 1552708687, 0),
(347, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/1', '配置列表展示页', 'GET', '113.247.54.220', 'system', 1552745553, 0),
(348, 1, 'admin', 'admin/common/rmpublicresource/', '未知', 'GET', '113.247.54.220', 'system', 1552745570, 0),
(349, 1, 'admin', 'admin/setting.systemconfig/view_upload/', '配置列表上传文件', 'POST', '113.247.54.220', 'system', 1552745685, 0),
(350, 1, 'admin', 'admin/setting.systemconfig/getimagename/', '获取配置列表上传文件的名称', 'POST', '113.247.54.220', 'system', 1552745685, 0),
(351, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.247.54.220', 'system', 1552745687, 0),
(352, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/1', '配置列表展示页', 'GET', '113.247.54.220', 'system', 1552745688, 0),
(353, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/4', '公众号支付配置', 'GET', '113.247.54.220', 'system', 1552745717, 0),
(354, 1, 'admin', 'admin/common/rmpublicresource/', '未知', 'GET', '113.247.54.220', 'system', 1552746395, 0),
(355, 1, 'admin', 'admin/common/rmpublicresource/', '未知', 'GET', '113.247.54.220', 'system', 1552746397, 0),
(356, 1, 'admin', 'admin/setting.systemconfig/view_upload/', '配置列表上传文件', 'POST', '113.247.54.220', 'system', 1552746409, 0),
(357, 1, 'admin', 'admin/setting.systemconfig/view_upload/', '配置列表上传文件', 'POST', '113.247.54.220', 'system', 1552746409, 0),
(358, 1, 'admin', 'admin/setting.systemconfig/view_upload/', '配置列表上传文件', 'POST', '113.247.54.220', 'system', 1552746409, 0),
(359, 1, 'admin', 'admin/setting.systemconfig/getimagename/', '获取配置列表上传文件的名称', 'POST', '113.247.54.220', 'system', 1552746409, 0),
(360, 1, 'admin', 'admin/setting.systemconfig/getimagename/', '获取配置列表上传文件的名称', 'POST', '113.247.54.220', 'system', 1552746409, 0),
(361, 1, 'admin', 'admin/setting.systemconfig/getimagename/', '获取配置列表上传文件的名称', 'POST', '113.247.54.220', 'system', 1552746410, 0),
(362, 1, 'admin', 'admin/setting.systemconfig/view_upload/', '配置列表上传文件', 'POST', '113.247.54.220', 'system', 1552746416, 0),
(363, 1, 'admin', 'admin/setting.systemconfig/getimagename/', '获取配置列表上传文件的名称', 'POST', '113.247.54.220', 'system', 1552746416, 0),
(364, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.247.54.220', 'system', 1552746421, 0),
(365, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/4', '公众号支付配置', 'GET', '113.247.54.220', 'system', 1552746422, 0),
(366, 1, 'admin', 'admin/system.clear/index/', '刷新缓存', 'GET', '113.247.54.220', 'system', 1552746432, 0),
(367, 1, 'admin', 'admin/system.clear/refresh_cache/', '未知', 'GET', '113.247.54.220', 'system', 1552746436, 0),
(368, 1, 'admin', 'admin/system.clear/index/', '刷新缓存', 'GET', '113.247.54.220', 'system', 1552746451, 0),
(369, 1, 'admin', 'admin/system.clear/delete_cache/', '未知', 'GET', '113.247.54.220', 'system', 1552746454, 0),
(370, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552746629, 0),
(371, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552746630, 0),
(372, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552746630, 0),
(373, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.54.220', 'system', 1552746636, 0),
(374, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/11', '未知', 'POST', '113.247.54.220', 'system', 1552746639, 0),
(375, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/11', '未知', 'POST', '113.247.54.220', 'system', 1552746645, 0),
(376, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552746784, 0),
(377, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552746784, 0),
(378, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552746784, 0),
(379, 1, 'admin', 'admin/order.storeorder/order_info/', '未知', 'GET', '113.247.54.220', 'system', 1552747138, 0),
(380, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552747790, 0),
(381, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552747790, 0),
(382, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552747791, 0),
(383, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.54.220', 'system', 1552747797, 0),
(384, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/12', '未知', 'POST', '113.247.54.220', 'system', 1552747801, 0),
(385, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552747803, 0),
(386, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552747804, 0),
(387, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552747804, 0),
(388, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552747824, 0),
(389, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552747825, 0),
(390, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552747825, 0),
(391, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552747887, 0),
(392, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552747888, 0),
(393, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552747888, 0),
(394, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552747908, 0),
(395, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552747909, 0),
(396, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552747909, 0),
(397, 1, 'admin', 'admin/article.article/testart/', '测试编辑', 'GET', '113.247.54.220', 'system', 1552748381, 0),
(398, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552748396, 0),
(399, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552748397, 0),
(400, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552748397, 0),
(401, 1, 'admin', 'admin/store.storeproduct/index/type/1', '产品管理展示页', 'GET', '113.247.54.220', 'system', 1552748415, 0),
(402, 1, 'admin', 'admin/store.storeproduct/product_ist/type/1', '未知', 'GET', '113.247.54.220', 'system', 1552748416, 0),
(403, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552748422, 0),
(404, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552748422, 0),
(405, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552748423, 0),
(406, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.54.220', 'system', 1552748433, 0),
(407, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.54.220', 'system', 1552748444, 0),
(408, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552748601, 0),
(409, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552749183, 0),
(410, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552749184, 0),
(411, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552749184, 0),
(412, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.54.220', 'system', 1552749192, 0),
(413, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/13', '未知', 'POST', '113.247.54.220', 'system', 1552749203, 0),
(414, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552749389, 0),
(415, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552749389, 0),
(416, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552749390, 0),
(417, 1, 'admin', 'admin/order.storeorder/order_status/', '未知', 'GET', '113.247.54.220', 'system', 1552749408, 0),
(418, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.54.220', 'system', 1552749614, 0),
(419, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552750716, 0),
(420, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552750716, 0),
(421, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552750717, 0),
(422, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552750806, 0),
(423, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552750807, 0),
(424, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552750807, 0),
(425, 1, 'admin', 'admin/order.storeorder/refund_y/', '未知', 'GET', '113.247.54.220', 'system', 1552750811, 0),
(426, 1, 'admin', 'admin/order.storeorder/updaterefundy/id/14', '未知', 'POST', '113.247.54.220', 'system', 1552750818, 0),
(427, 1, 'admin', 'admin/order.storeorder/index/', '订单管理', 'GET', '113.247.54.220', 'system', 1552750820, 0),
(428, 1, 'admin', 'admin/order.storeorder/order_list/', '未知', 'GET', '113.247.54.220', 'system', 1552750821, 0),
(429, 1, 'admin', 'admin/order.storeorder/getbadge/', '未知', 'POST', '113.247.54.220', 'system', 1552750821, 0);
INSERT INTO `eb_system_log` (`id`, `admin_id`, `admin_name`, `path`, `page`, `method`, `ip`, `type`, `add_time`, `merchant_id`) VALUES
(430, 1, 'admin', 'admin/store.storeproduct/index/type/1', '产品管理展示页', 'GET', '113.247.54.220', 'system', 1552751527, 0),
(431, 1, 'admin', 'admin/store.storeproduct/product_ist/type/1', '未知', 'GET', '113.247.54.220', 'system', 1552751527, 0),
(432, 1, 'admin', 'admin/user.user/index/', '会员列表页', 'GET', '113.247.54.220', 'system', 1552751539, 0),
(433, 1, 'admin', 'admin/user.user/get_user_list/', '未知', 'GET', '113.247.54.220', 'system', 1552751539, 0),
(434, 1, 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'GET', '113.247.54.220', 'system', 1552751539, 0),
(435, 1, 'admin', 'admin/user.user/get_user_list/', '未知', 'GET', '113.247.54.220', 'system', 1552751544, 0),
(436, 1, 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'GET', '113.247.54.220', 'system', 1552751544, 0),
(437, 1, 'admin', 'admin/user.user/get_user_list/', '未知', 'GET', '113.247.54.220', 'system', 1552751545, 0),
(438, 1, 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'GET', '113.247.54.220', 'system', 1552751545, 0),
(439, 1, 'admin', 'admin/user.user/set_status/status/0/uid/2', '未知', 'GET', '113.247.54.220', 'system', 1552751550, 0),
(440, 1, 'admin', 'admin/user.user/set_status/status/1/uid/2', '未知', 'GET', '113.247.54.220', 'system', 1552751551, 0),
(441, 1, 'admin', 'admin/user.user/see/uid/2', '查看用户', 'GET', '113.247.54.220', 'system', 1552751553, 0),
(442, 1, 'admin', 'admin/user.user/getonesignlist/page/1/limit/10/uid/2', '未知', 'GET', '113.247.54.220', 'system', 1552751553, 0),
(443, 1, 'admin', 'admin/user.user/getonebalancechanglist/page/1/limit/10/uid/2', '未知', 'GET', '113.247.54.220', 'system', 1552751553, 0),
(444, 1, 'admin', 'admin/user.user/getonecouponslist/page/1/limit/10/uid/2', '未知', 'GET', '113.247.54.220', 'system', 1552751553, 0),
(445, 1, 'admin', 'admin/user.user/getoneorderlist/page/1/limit/10/uid/2', '未知', 'GET', '113.247.54.220', 'system', 1552751553, 0),
(446, 1, 'admin', 'admin/user.user/getoneintegrallist/page/1/limit/10/uid/2', '未知', 'GET', '113.247.54.220', 'system', 1552751553, 0),
(447, 1, 'admin', 'admin/user.user/getspreadlist/page/1/limit/10/uid/2', '未知', 'GET', '113.247.54.220', 'system', 1552751553, 0),
(448, 1, 'admin', 'admin/user.user/getoneorderlist/page/2/limit/10/uid/2', '未知', 'GET', '113.247.54.220', 'system', 1552751560, 0),
(449, 1, 'admin', 'admin/user.user/getoneorderlist/page/1/limit/10/uid/2', '未知', 'GET', '113.247.54.220', 'system', 1552751564, 0),
(450, 1, 'admin', 'admin/store.storecategory/index/', '产品分类展示页', 'GET', '113.247.54.220', 'system', 1552751592, 0),
(451, 1, 'admin', 'admin/store.storecategory/category_list/pid/0', '未知', 'GET', '113.247.54.220', 'system', 1552751593, 0),
(452, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/2', '公众号接口配置', 'GET', '113.246.154.59', 'system', 1552962377, 0),
(453, 1, 'admin', 'admin/setting.systemconfig/save_basics/', '提交保存配置列表', 'POST', '113.246.154.59', 'system', 1552962411, 0),
(454, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/2', '公众号接口配置', 'GET', '113.246.154.59', 'system', 1552962412, 0),
(455, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/4/type/1', '配置列表展示页', 'GET', '113.246.154.59', 'system', 1552962420, 0),
(456, 1, 'admin', 'admin/setting.systemconfig/index/tab_id/2/type/1', '配置列表展示页', 'GET', '113.246.154.59', 'system', 1552962672, 0),
(457, 1, 'admin', 'admin/user.user/index/', '会员列表页', 'GET', '113.246.154.59', 'system', 1552962724, 0),
(458, 1, 'admin', 'admin/user.user/get_user_list/', '未知', 'GET', '113.246.154.59', 'system', 1552962724, 0),
(459, 1, 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'GET', '113.246.154.59', 'system', 1552962724, 0),
(460, 1, 'admin', 'admin/setting.systemconfig/index/type/1/tab_id/2', '公众号接口配置', 'GET', '119.39.90.30', 'system', 1552982509, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_menus`
--

CREATE TABLE `eb_system_menus` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '菜单ID',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父级id',
  `icon` varchar(16) NOT NULL COMMENT '图标',
  `menu_name` varchar(32) NOT NULL DEFAULT '' COMMENT '按钮名',
  `module` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '模块名',
  `controller` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制器',
  `action` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '方法名',
  `params` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]' COMMENT '参数',
  `sort` tinyint(3) NOT NULL DEFAULT '1' COMMENT '排序',
  `is_show` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否显示',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '子管理员是否可用'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='菜单表';

--
-- 转存表中的数据 `eb_system_menus`
--

INSERT INTO `eb_system_menus` (`id`, `pid`, `icon`, `menu_name`, `module`, `controller`, `action`, `params`, `sort`, `is_show`, `access`) VALUES
(1, 289, '', '系统设置', 'admin', 'setting.systemConfig', 'index', '[]', 90, 1, 1),
(2, 153, '', '权限规则', 'admin', 'setting.systemMenus', 'index', '[]', 7, 1, 1),
(4, 153, '', '管理员列表', 'admin', 'setting.systemAdmin', 'index', '[]', 9, 1, 1),
(6, 1, '', '系统配置', 'admin', 'setting.systemConfig', 'index', '{\"tab_id\":\"1\"}', 1, 1, 1),
(7, 1, '', '配置分类', 'admin', 'setting.systemConfigTab', 'index', '[]', 1, 1, 1),
(8, 153, '', '身份管理', 'admin', 'setting.systemRole', 'index', '[]', 10, 1, 1),
(9, 1, '', '组合数据', 'admin', 'setting.systemGroup', 'index', '[]', 1, 1, 1),
(11, 0, 'wechat', '公众号', 'admin', 'wechat', 'index', '[]', 91, 1, 1),
(12, 354, '', '微信关注回复', 'admin', 'wechat.reply', 'index', '{\"key\":\"subscribe\",\"title\":\"\\u7f16\\u8f91\\u65e0\\u914d\\u7f6e\\u9ed8\\u8ba4\\u56de\\u590d\"}', 86, 1, 1),
(17, 360, '', '微信菜单', 'admin', 'wechat.menus', 'index', '[]', 95, 1, 1),
(286, 0, 'paper-plane', '营销', 'admin', 'ump', 'index', '[]', 105, 1, 1),
(19, 11, '', '图文管理', 'admin', 'wechat.wechatNewsCategory', 'index', '[]', 60, 1, 1),
(21, 0, 'magic', '维护', 'admin', 'system', 'index', '[]', 1, 1, 1),
(23, 0, 'laptop', '商品', 'admin', 'store', 'index', '[]', 110, 1, 1),
(24, 23, '', '商品管理', 'admin', 'store.storeProduct', 'index', '{\"type\":\"1\"}', 100, 1, 1),
(25, 23, '', '商品分类', 'admin', 'store.storeCategory', 'index', '[]', 1, 1, 1),
(26, 285, '', '订单管理', 'admin', 'order.storeOrder', 'index', '[]', 1, 1, 1),
(30, 354, '', '关键字回复', 'admin', 'wechat.reply', 'keyword', '[]', 85, 1, 1),
(31, 354, '', '无效关键词回复', 'admin', 'wechat.reply', 'index', '{\"key\":\"default\",\"title\":\"\\u7f16\\u8f91\\u65e0\\u6548\\u5173\\u952e\\u5b57\\u9ed8\\u8ba4\\u56de\\u590d\"}', 84, 1, 1),
(33, 284, '', '附加权限', 'admin', 'article.articleCategory', '', '[]', 0, 0, 1),
(34, 33, '', '添加文章分类', 'admin', 'article.articleCategory', 'create', '[]', 0, 0, 1),
(35, 33, '', '编辑文章分类', 'admin', 'article.articleCategory', 'edit', '[]', 0, 0, 1),
(36, 33, '', '删除文章分类', 'admin', 'article.articleCategory', 'delete', '[]', 0, 0, 1),
(37, 31, '', '附加权限', 'admin', 'wechat.reply', '', '[]', 0, 0, 1),
(38, 283, '', '附加权限', 'admin', 'article.article', '', '[]', 0, 0, 1),
(39, 38, '', '添加文章', 'admin', 'article. article', 'create', '[]', 0, 0, 1),
(40, 38, '', '编辑文章', 'admin', 'article. article', 'add_new', '[]', 0, 0, 1),
(41, 38, '', '删除文章', 'admin', 'article. article', 'delete', '[]', 0, 0, 1),
(42, 19, '', '附加权限', 'admin', 'wechat.wechatNewsCategory', '', '[]', 0, 0, 1),
(43, 42, '', '添加图文消息', 'admin', 'wechat.wechatNewsCategory', 'create', '[]', 0, 0, 1),
(44, 42, '', '编辑图文消息', 'admin', 'wechat.wechatNewsCategory', 'edit', '[]', 0, 0, 1),
(45, 42, '', '删除图文消息', 'admin', 'wechat.wechatNewsCategory', 'delete', '[]', 0, 0, 1),
(46, 7, '', '配置分类附加权限', 'admin', 'setting.systemConfigTab', '', '[]', 0, 0, 1),
(47, 46, '', '添加配置分类', 'admin', 'setting.systemConfigTab', 'create', '[]', 0, 0, 1),
(48, 46, '', '添加配置', 'admin', 'setting.systemConfig', 'create', '[]', 0, 0, 1),
(49, 46, '', '编辑配置分类', 'admin', 'setting.systemConfigTab', 'edit', '[]', 0, 0, 1),
(50, 46, '', '删除配置分类', 'admin', 'setting.systemConfigTab', 'delete', '[]', 0, 0, 1),
(51, 46, '', '查看子字段', 'admin', 'system.systemConfigTab', 'sonConfigTab', '[]', 0, 0, 1),
(52, 9, '', '组合数据附加权限', 'admin', 'setting.systemGroup', '', '[]', 0, 0, 1),
(53, 52, '', '添加数据', 'admin', 'setting.systemGroupData', 'create', '[]', 0, 0, 1),
(54, 52, '', '编辑数据', 'admin', 'setting.systemGroupData', 'edit', '[]', 0, 0, 1),
(55, 52, '', '删除数据', 'admin', 'setting.systemGroupData', 'delete', '[]', 0, 0, 1),
(56, 52, '', '数据列表', 'admin', 'setting.systemGroupData', 'index', '[]', 0, 0, 1),
(57, 52, '', '添加数据组', 'admin', 'setting.systemGroup', 'create', '[]', 0, 0, 1),
(58, 52, '', '删除数据组', 'admin', 'setting.systemGroup', 'delete', '[]', 0, 0, 1),
(59, 4, '', '管理员列表附加权限', 'admin', 'setting.systemAdmin', '', '[]', 0, 0, 1),
(60, 59, '', '添加管理员', 'admin', 'setting.systemAdmin', 'create', '[]', 0, 0, 1),
(61, 59, '', '编辑管理员', 'admin', 'setting.systemAdmin', 'edit', '[]', 0, 0, 1),
(62, 59, '', '删除管理员', 'admin', 'setting.systemAdmin', 'delete', '[]', 0, 0, 1),
(63, 8, '', '身份管理附加权限', 'admin', 'setting.systemRole', '', '[]', 0, 0, 1),
(64, 63, '', '添加身份', 'admin', 'setting.systemRole', 'create', '[]', 0, 0, 1),
(65, 63, '', '修改身份', 'admin', 'setting.systemRole', 'edit', '[]', 0, 0, 1),
(66, 63, '', '删除身份', 'admin', 'setting.systemRole', 'delete', '[]', 0, 0, 1),
(67, 8, '', '身份管理展示页', 'admin', 'setting.systemRole', 'index', '[]', 0, 0, 1),
(68, 4, '', '管理员列表展示页', 'admin', 'setting.systemAdmin', 'index', '[]', 0, 0, 1),
(69, 7, '', '配置分类展示页', 'admin', 'setting.systemConfigTab', 'index', '[]', 0, 0, 1),
(70, 9, '', '组合数据展示页', 'admin', 'setting.systemGroup', 'index', '[]', 0, 0, 1),
(71, 284, '', '文章分类管理展示页', 'admin', 'article.articleCategory', 'index', '[]', 0, 0, 1),
(72, 283, '', '文章管理展示页', 'admin', 'article.article', 'index', '[]', 0, 0, 1),
(73, 19, '', '图文消息展示页', 'admin', 'wechat.wechatNewsCategory', 'index', '[]', 0, 0, 1),
(74, 2, '', '菜单管理附加权限', 'admin', 'setting.systemMenus', '', '[]', 0, 0, 1),
(75, 74, '', '添加菜单', 'admin', 'setting.systemMenus', 'create', '[]', 0, 0, 1),
(76, 74, '', '编辑菜单', 'admin', 'setting.systemMenus', 'edit', '[]', 0, 0, 1),
(77, 74, '', '删除菜单', 'admin', 'setting.systemMenus', 'delete', '[]', 0, 0, 1),
(78, 2, '', '菜单管理展示页', 'admin', 'setting.systemMenus', 'index', '[]', 0, 0, 1),
(352, 148, '', '优惠券配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"12\"}', 0, 1, 1),
(80, 0, 'leanpub', '内容', 'admin', 'article', 'index', '[]', 90, 1, 1),
(82, 11, '', '微信用户管理', 'admin', 'user', 'list', '[]', 5, 1, 1),
(84, 82, '', '用户标签', 'admin', 'wechat.wechatUser', 'tag', '[]', 0, 1, 1),
(89, 30, '', '关键字回复附加权限', 'admin', 'wechat.reply', '', '[]', 0, 0, 1),
(90, 89, '', '添加关键字', 'admin', 'wechat.reply', 'add_keyword', '[]', 0, 0, 1),
(91, 89, '', '修改关键字', 'admin', 'wechat.reply', 'info_keyword', '[]', 0, 0, 1),
(92, 89, '', '删除关键字', 'admin', 'wechat.reply', 'delete', '[]', 0, 0, 1),
(93, 30, '', '关键字回复展示页', 'admin', 'wechat.reply', 'keyword', '[]', 0, 0, 1),
(94, 31, '', '无效关键词回复展示页', 'admin', 'wechat.reply', 'index', '[]', 0, 0, 1),
(95, 31, '', '无效关键词回复附加权限', 'admin', 'wechat.reply', '', '[]', 0, 0, 1),
(96, 95, '', '无效关键词回复提交按钮', 'admin', 'wechat.reply', 'save', '{\"key\":\"default\",\"title\":\"编辑无效关键字默认回复\"}', 0, 0, 1),
(97, 12, '', '微信关注回复展示页', 'admin', 'wechat.reply', 'index', '[]', 0, 0, 1),
(98, 12, '', '微信关注回复附加权限', 'admin', 'wechat.reply', '', '[]', 0, 0, 1),
(99, 98, '', '微信关注回复提交按钮', 'admin', 'wechat.reply', 'save', '{\"key\":\"subscribe\",\"title\":\"编辑无配置默认回复\"}', 0, 0, 1),
(100, 74, '', '添加提交菜单', 'admin', 'setting.systemMenus', 'save', '[]', 0, 0, 1),
(101, 74, '', '编辑提交菜单', 'admin', 'setting.systemMenus', 'update', '[]', 0, 0, 1),
(102, 59, '', '提交添加管理员', 'admin', 'setting.systemAdmin', 'save', '[]', 0, 0, 1),
(103, 59, '', '提交修改管理员', 'admin', 'setting.systemAdmin', 'update', '[]', 0, 0, 1),
(104, 63, '', '提交添加身份', 'admin', 'setting.systemRole', 'save', '[]', 0, 0, 1),
(105, 63, '', '提交修改身份', 'admin', 'setting.systemRole', 'update', '[]', 0, 0, 1),
(106, 46, '', '提交添加配置分类', 'admin', 'setting.systemConfigTab', 'save', '[]', 0, 0, 1),
(107, 46, '', '提交修改配置分类', 'admin', 'setting.systemConfigTab', 'update', '[]', 0, 0, 1),
(108, 46, '', '提交添加配置列表', 'admin', 'setting.systemConfig', 'save', '[]', 0, 0, 1),
(109, 52, '', '提交添加数据组', 'admin', 'setting.systemGroup', 'save', '[]', 0, 0, 1),
(110, 52, '', '提交修改数据组', 'admin', 'setting.systemGroup', 'update', '[]', 0, 0, 1),
(111, 52, '', '提交添加数据', 'admin', 'setting.systemGroupData', 'save', '[]', 0, 0, 1),
(112, 52, '', '提交修改数据', 'admin', 'setting.systemGroupData', 'update', '[]', 0, 0, 1),
(113, 33, '', '提交添加文章分类', 'admin', 'article.articleCategory', 'save', '[]', 0, 0, 1),
(114, 33, '', '提交添加文章分类', 'admin', 'article.articleCategory', 'update', '[]', 0, 0, 1),
(115, 42, '', '提交添加图文消息', 'admin', 'wechat.wechatNewsCategory', 'save', '[]', 0, 0, 1),
(116, 42, '', '提交编辑图文消息', 'admin', 'wechat.wechatNewsCategory', 'update', '[]', 0, 0, 1),
(117, 6, '', '配置列表附加权限', 'admin', 'setting.systemConfig', '', '[]', 0, 0, 1),
(118, 6, '', '配置列表展示页', 'admin', 'setting.systemConfig', 'index', '[]', 0, 0, 1),
(119, 117, '', '提交保存配置列表', 'admin', 'setting.systemConfig', 'save_basics', '[]', 0, 0, 1),
(123, 89, '', '提交添加关键字', 'admin', 'wechat.reply', 'save_keyword', '{\"dis\":\"1\"}', 0, 0, 1),
(124, 89, '', '提交修改关键字', 'admin', 'wechat.reply', 'save_keyword', '{\"dis\":\"2\"}', 0, 0, 1),
(126, 17, '', '微信菜单展示页', 'admin', 'wechat.menus', 'index', '[]', 0, 0, 1),
(127, 17, '', '微信菜单附加权限', 'admin', 'wechat.menus', '', '[]', 0, 0, 1),
(128, 127, '', '提交微信菜单按钮', 'admin', 'wechat.menus', 'save', '{\"dis\":\"1\"}', 0, 0, 1),
(129, 82, '', '用户行为纪录', 'admin', 'wechat.wechatMessage', 'index', '[]', 0, 1, 1),
(130, 21, '', '系统日志', 'admin', 'system.systemLog', 'index', '[]', 5, 1, 1),
(131, 130, '', '管理员操作记录展示页', 'admin', 'system.systemLog', 'index', '[]', 0, 0, 1),
(132, 129, '', '微信用户行为纪录展示页', 'admin', 'wechat.wechatMessage', 'index', '[]', 0, 0, 1),
(133, 82, '', '微信用户', 'admin', 'wechat.wechatUser', 'index', '[]', 1, 1, 1),
(134, 133, '', '微信用户展示页', 'admin', 'wechat.wechatUser', 'index', '[]', 0, 0, 1),
(241, 273, '', '限时秒杀', 'admin', 'ump.storeSeckill', 'index', '[]', 0, 1, 1),
(137, 135, '', '添加通知模板', 'admin', 'system.systemNotice', 'create', '[]', 0, 0, 1),
(138, 135, '', '编辑通知模板', 'admin', 'system.systemNotice', 'edit', '[]', 0, 0, 1),
(139, 135, '', '删除辑通知模板', 'admin', 'system.systemNotice', 'delete', '[]', 0, 0, 1),
(140, 135, '', '提交编辑辑通知模板', 'admin', 'system.systemNotice', 'update', '[]', 0, 0, 1),
(141, 135, '', '提交添加辑通知模板', 'admin', 'system.systemNotice', 'save', '[]', 0, 0, 1),
(142, 25, '', '产品分类展示页', 'admin', 'store.storeCategory', 'index', '[]', 0, 0, 1),
(143, 25, '', '产品分类附加权限', 'admin', 'store.storeCategory', '', '[]', 0, 0, 1),
(144, 117, '', '获取配置列表上传文件的名称', 'admin', 'setting.systemConfig', 'getimagename', '[]', 0, 0, 1),
(145, 117, '', '配置列表上传文件', 'admin', 'setting.systemConfig', 'view_upload', '[]', 0, 0, 1),
(146, 24, '', '产品管理展示页', 'admin', 'store.storeProduct', 'index', '[]', 0, 0, 1),
(147, 24, '', '产品管理附加权限', 'admin', 'store.storeProduct', '', '[]', 0, 0, 1),
(148, 286, '', '优惠券', '', '', '', '[]', 10, 1, 1),
(149, 148, '', '优惠券制作', 'admin', 'ump.storeCoupon', 'index', '[]', 5, 1, 1),
(150, 148, '', '会员领取记录', 'admin', 'ump.storeCouponUser', 'index', '[]', 1, 1, 1),
(151, 0, 'user', '会员', 'admin', 'user', 'index', '[]', 107, 1, 1),
(153, 289, '', '管理权限', 'admin', 'setting.systemAdmin', '', '[]', 100, 1, 1),
(155, 154, '', '商户产品展示页', 'admin', 'store.storeMerchant', 'index', '[]', 0, 0, 1),
(156, 154, '', '商户产品附加权限', 'admin', 'store.storeMerchant', '', '[]', 0, 0, 1),
(158, 157, '', '商户文章管理展示页', 'admin', 'wechat.wechatNews', 'merchantIndex', '[]', 0, 0, 1),
(159, 157, '', '商户文章管理附加权限', 'admin', 'wechat.wechatNews', '', '[]', 0, 0, 1),
(170, 290, '', '评论管理', 'admin', 'store.store_product_reply', 'index', '[]', 0, 1, 1),
(173, 21, '', '文件校验', 'admin', 'system.systemFile', 'index', '[]', 1, 1, 1),
(174, 360, '', '微信模板消息', 'admin', 'wechat.wechatTemplate', 'index', '[]', 1, 1, 1),
(175, 11, '', '客服管理', 'admin', 'wechat.storeService', 'index', '[]', 70, 1, 1),
(176, 151, '', '站内通知', 'admin', 'user.user_notice', 'index', '[]', 8, 1, 1),
(177, 151, '', '会员管理', 'admin', 'user.user', 'index', '[]', 10, 1, 1),
(179, 307, '', '充值记录', 'admin', 'finance.userRecharge', 'index', '[]', 1, 1, 1),
(190, 26, '', '订单管理展示页', 'admin', 'store.storeOrder', 'index', '[]', 0, 0, 1),
(191, 26, '', '订单管理附加权限', 'admin', 'store.storeOrder', '', '[]', 0, 0, 1),
(192, 191, '', '订单管理去发货', 'admin', 'store.storeOrder', 'deliver_goods', '[]', 0, 0, 1),
(193, 191, '', '订单管理备注', 'admin', 'store.storeOrder', 'remark', '[]', 0, 0, 1),
(194, 191, '', '订单管理去送货', 'admin', 'store.storeOrder', 'delivery', '[]', 0, 0, 1),
(195, 191, '', '订单管理已收货', 'admin', 'store.storeOrder', 'take_delivery', '[]', 0, 0, 1),
(196, 191, '', '订单管理退款', 'admin', 'store.storeOrder', 'refund_y', '[]', 0, 0, 1),
(197, 191, '', '订单管理修改订单', 'admin', 'store.storeOrder', 'edit', '[]', 0, 0, 1),
(198, 191, '', '订单管理修改订单提交', 'admin', 'store.storeOrder', 'update', '[]', 0, 0, 1),
(199, 191, '', '订单管理退积分', 'admin', 'store.storeOrder', 'integral_back', '[]', 0, 0, 1),
(200, 191, '', '订单管理退积分提交', 'admin', 'store.storeOrder', 'updateIntegralBack', '[]', 0, 0, 1),
(201, 191, '', '订单管理立即支付', 'admin', 'store.storeOrder', 'offline', '[]', 0, 0, 1),
(202, 191, '', '订单管理退款原因', 'admin', 'store.storeOrder', 'refund_n', '[]', 0, 0, 1),
(203, 191, '', '订单管理退款原因提交', 'admin', 'store.storeOrder', 'updateRefundN', '[]', 0, 0, 1),
(204, 191, '', '订单管理修改配送信息', 'admin', 'store.storeOrder', 'distribution', '[]', 0, 0, 1),
(205, 191, '', '订单管理修改配送信息提交', 'admin', 'store.storeOrder', 'updateDistribution', '[]', 0, 0, 1),
(206, 191, '', '订单管理退款提交', 'admin', 'store.storeOrder', 'updateRefundY', '[]', 0, 0, 1),
(207, 191, '', '订单管理去发货提交', 'admin', 'store.storeOrder', 'updateDeliveryGoods', '[]', 0, 0, 1),
(208, 191, '', '订单管理去送货提交', 'admin', 'store.storeOrder', 'updateDelivery', '[]', 0, 0, 1),
(209, 175, '', '客服管理展示页', 'admin', 'store.storeService', 'index', '[]', 0, 0, 1),
(210, 175, '', '客服管理附加权限', 'admin', 'store.storeService', '', '[]', 0, 0, 1),
(211, 210, '', '客服管理添加', 'admin', 'store.storeService', 'create', '[]', 0, 0, 1),
(212, 210, '', '客服管理添加提交', 'admin', 'store.storeService', 'save', '[]', 0, 0, 1),
(213, 210, '', '客服管理编辑', 'admin', 'store.storeService', 'edit', '[]', 0, 0, 1),
(214, 210, '', '客服管理编辑提交', 'admin', 'store.storeService', 'update', '[]', 0, 0, 1),
(215, 210, '', '客服管理删除', 'admin', 'store.storeService', 'delete', '[]', 0, 0, 1),
(216, 179, '', '用户充值记录展示页', 'admin', 'user.userRecharge', 'index', '[]', 0, 0, 1),
(217, 179, '', '用户充值记录附加权限', 'admin', 'user.userRecharge', '', '[]', 0, 0, 1),
(218, 217, '', '用户充值记录退款', 'admin', 'user.userRecharge', 'edit', '[]', 0, 0, 1),
(219, 217, '', '用户充值记录退款提交', 'admin', 'user.userRecharge', 'updaterefundy', '[]', 0, 0, 1),
(220, 180, '', '预售卡管理批量修改预售卡金额', 'admin', 'presell.presellCard', 'batch_price', '[]', 0, 0, 1),
(221, 180, '', '预售卡管理批量修改预售卡金额提交', 'admin', 'presell.presellCard', 'savebatch', '[]', 0, 0, 1),
(222, 210, '', '客服管理聊天记录查询', 'admin', 'store.storeService', 'chat_user', '[]', 0, 0, 1),
(223, 210, '', '客服管理聊天记录查询详情', 'admin', 'store.storeService', 'chat_list', '[]', 0, 0, 1),
(224, 170, '', '评论管理展示页', 'admin', 'store.storeProductReply', 'index', '[]', 0, 0, 1),
(225, 170, '', '评论管理附加权限', 'admin', 'store.storeProductReply', '', '[]', 0, 0, 1),
(226, 225, '', '评论管理回复评论', 'admin', 'store.storeProductReply', 'set_reply', '[]', 0, 0, 1),
(227, 225, '', '评论管理修改回复评论', 'admin', 'store.storeProductReply', 'edit_reply', '[]', 0, 0, 1),
(228, 225, '', '评论管理删除评论', 'admin', 'store.storeProductReply', 'delete', '[]', 0, 0, 1),
(229, 149, '', '优惠券管理展示页', 'admin', 'store.storeCoupon', 'index', '[]', 0, 0, 1),
(230, 149, '', '优惠券管理附加权限', 'admin', 'store.storeCoupon', '', '[]', 0, 0, 1),
(231, 230, '', '优惠券管理添加', 'admin', 'store.storeCoupon', 'create', '[]', 0, 0, 1),
(232, 230, '', '优惠券管理添加提交', 'admin', 'store.storeCoupon', 'save', '[]', 0, 0, 1),
(233, 230, '', '优惠券管理删除', 'admin', 'store.storeCoupon', 'delete', '[]', 0, 0, 1),
(234, 230, '', '优惠券管理立即失效', 'admin', 'store.storeCoupon', 'status', '[]', 0, 0, 1),
(235, 148, '', '已发布管理', 'admin', 'ump.storeCouponIssue', 'index', '[]', 3, 1, 1),
(236, 82, '', '用户分组', 'admin', 'wechat.wechatUser', 'group', '[]', 0, 1, 1),
(237, 21, '', '刷新缓存', 'admin', 'system.clear', 'index', '[]', 0, 1, 1),
(238, 272, '', '拼团产品', 'admin', 'ump.storeCombination', 'index', '[]', 0, 1, 1),
(239, 306, '', '提现申请', 'admin', 'finance.user_extract', 'index', '[]', 0, 1, 1),
(351, 349, '', '积分日志', 'admin', 'ump.userPoint', 'index', '[]', 0, 1, 1),
(244, 294, '', '财务报表', 'admin', 'record.storeStatistics', 'index', '[]', 0, 1, 1),
(246, 295, '', '用户统计', 'admin', 'user.user', 'user_analysis', '[]', 0, 1, 1),
(247, 153, '', '个人资料', 'admin', 'setting.systemAdmin', 'admininfo', '[]', 0, 0, 1),
(248, 247, '', '个人资料附加权限', 'admin', 'setting.systemAdmin', '', '[]', 0, 0, 1),
(249, 248, '', '个人资料提交保存', 'admin', 'system.systemAdmin', 'setAdminInfo', '[]', 0, 0, 1),
(250, 247, '', '个人资料展示页', 'admin', 'setting.systemAdmin', 'admininfo', '[]', 0, 0, 1),
(252, 21, '', '在线更新', 'admin', 'system.systemUpgradeclient', 'index', '[]', 0, 1, 1),
(254, 271, '', '砍价产品', 'admin', 'ump.storeBargain', 'index', '[]', 0, 1, 1),
(255, 1, '', '后台通知', 'admin', 'setting.systemNotice', 'index', '[]', 0, 1, 1),
(256, 0, 'cloud', '服务器端', 'admin', 'upgrade', 'index', '[]', -100, 1, 1),
(261, 147, '', '编辑产品', 'admin', 'store.storeproduct', 'edit', '[]', 0, 0, 1),
(262, 147, '', '添加产品', 'admin', 'store.storeproduct', 'create', '[]', 0, 0, 1),
(263, 147, '', '编辑产品详情', 'admin', 'store.storeproduct', 'edit_content', '[]', 0, 0, 1),
(264, 147, '', '开启秒杀', 'admin', 'store.storeproduct', 'seckill', '[]', 0, 0, 1),
(265, 147, '', '开启秒杀', 'admin', 'store.store_product', 'bargain', '[]', 0, 0, 1),
(266, 147, '', '产品编辑属性', 'admin', 'store.storeproduct', 'attr', '[]', 0, 0, 1),
(267, 360, '', '公众号接口配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"1\",\"tab_id\":\"2\"}', 100, 1, 1),
(269, 0, 'cubes', '小程序', 'admin', 'routine', 'index', '[]', 92, 0, 1),
(270, 269, '', '小程序配置', 'admin', 'setting.systemConfig', 'index_alone', '{\"type\":\"2\",\"tab_id\":\"7\"}', 0, 1, 1),
(271, 286, '', '砍价管理', 'admin', '', '', '[]', 0, 1, 1),
(272, 286, '', '拼团管理', 'admin', '', '', '[]', 0, 1, 1),
(273, 286, '', '秒杀管理', 'admin', '', '', '[]', 0, 1, 1),
(293, 288, '', '交易数据', 'admin', '', '', '[]', 100, 1, 1),
(276, 21, '', '附件管理', 'admin', 'widget.images', 'index', '[]', 0, 0, 1),
(278, 21, '', '清除数据', 'admin', 'system.systemCleardata', 'index', '[]', 0, 1, 1),
(363, 362, '', '上传图片', 'admin', 'widget.images', 'upload', '[]', 0, 0, 1),
(364, 362, '', '删除图片', 'admin', 'widget.images', 'delete', '[]', 0, 0, 1),
(362, 276, '', '附加权限', 'admin', 'widget.images', '', '[]', 0, 1, 1),
(285, 0, 'building-o', '订单', 'admin', 'order', 'index', '[]', 109, 1, 1),
(283, 80, '', '文章管理', 'admin', 'article.article', 'index', '[]', 0, 1, 1),
(284, 80, '', '文章分类', 'admin', 'article.article_category', 'index', '[]', 0, 1, 1),
(287, 0, 'money', '财务', 'admin', 'finance', 'index', '[]', 103, 1, 1),
(288, 0, 'line-chart', '数据', 'admin', 'record', 'index', '[]', 100, 1, 1),
(289, 0, 'gear', '设置', 'admin', 'setting', 'index', '[]', 90, 1, 1),
(290, 285, '', '售后服务', 'admin', '', '', '[]', 0, 1, 1),
(353, 337, '', '分销配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"9\"}', 0, 1, 1),
(294, 288, '', '财务数据', 'admin', '', '', '[]', 80, 1, 1),
(295, 288, '', '会员数据', 'admin', '', '', '[]', 70, 1, 1),
(296, 288, '', '营销数据', 'admin', '', '', '[]', 90, 1, 1),
(297, 288, '', '排行榜', 'admin', '', '', '[]', 0, 1, 1),
(300, 294, '', '提现统计', 'admin', 'record.record', 'chart_cash', '[]', 0, 1, 1),
(301, 294, '', '充值统计', 'admin', 'record.record', 'chart_recharge', '[]', 0, 1, 1),
(302, 294, '', '返佣统计', 'admin', 'record.record', 'chart_rebate', '[]', 0, 1, 1),
(303, 295, '', '会员增长', 'admin', 'record.record', 'user_chart', '[]', 0, 1, 1),
(304, 295, '', '会员业务', 'admin', 'record.record', 'user_business_chart', '[]', 0, 1, 1),
(305, 295, '', '会员属性', 'admin', 'record.record', 'user_attr', '[]', 0, 1, 1),
(306, 287, '', '财务操作', 'admin', '', '', '[]', 100, 1, 1),
(307, 287, '', '财务记录', 'admin', '', '', '[]', 50, 1, 1),
(308, 287, '', '佣金记录', 'admin', '', '', '[]', 0, 1, 1),
(372, 269, '', '首页幻灯片', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"48\"}', 0, 1, 1),
(312, 307, '', '资金监控', 'admin', 'finance.finance', 'bill', '[]', 0, 1, 1),
(313, 308, '', '佣金记录', 'admin', 'finance.finance', 'commission_list', '[]', 0, 1, 1),
(314, 296, '', '积分统计', 'admin', 'record.record', 'chart_score', '[]', 0, 1, 1),
(315, 296, '', '优惠券统计', 'admin', 'record.record', 'chart_coupon', '[]', 0, 1, 1),
(316, 296, '', '拼团统计', 'admin', 'record.record', 'chart_combination', '[]', 0, 1, 1),
(317, 296, '', '秒杀统计', 'admin', 'record.record', 'chart_seckill', '[]', 0, 1, 1),
(318, 296, '', '砍价统计', 'admin', 'record.record', 'chart_bargain', '[]', 0, 1, 1),
(319, 297, '', '产品销售排行', 'admin', 'record.record', 'ranking_saleslists', '[]', 0, 1, 1),
(320, 297, '', '返佣排行', 'admin', 'record.record', 'ranking_commission', '[]', 0, 1, 1),
(321, 297, '', '积分排行', 'admin', 'record.record', 'ranking_point', '[]', 0, 1, 1),
(377, 21, '', '数据备份', 'admin', 'system.systemDatabackup', 'index', '[]', 0, 1, 1),
(329, 285, '', '营销订单', 'admin', 'user', 'user', '[]', 0, 0, 1),
(371, 337, '', '分销员管理', 'admin', 'agent.agentManage', 'index', '[]', 0, 1, 1),
(354, 11, '', '自动回复', '', '', '', '[]', 80, 1, 1),
(333, 272, '', '拼团列表', 'admin', 'ump.storeCombination', 'combina_list', '[]', 0, 1, 1),
(334, 329, '', '秒杀订单', 'admin', 'user', '', '[]', 0, 0, 1),
(335, 329, '', '积分兑换', 'admin', 'user', '', '[]', 0, 0, 1),
(337, 0, 'users', '分销', 'admin', 'agent', 'index', '[]', 106, 1, 1),
(349, 286, '', '积分', 'admin', 'userPoint', 'index', '[]', 0, 1, 1),
(340, 293, '', '订单统计', 'admin', 'record.record', 'chart_order', '[]', 0, 1, 1),
(341, 293, '', '产品统计', 'admin', 'record.record', 'chart_product', '[]', 0, 1, 1),
(350, 349, '', '积分配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"11\"}', 0, 1, 1),
(355, 11, '', '页面设置', '', '', '', '[]', 90, 1, 1),
(356, 355, '', '个人中心菜单', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"32\"}', 0, 1, 1),
(357, 355, '', '商城首页banner', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"34\"}', 0, 1, 1),
(358, 355, '', '商城首页分类按钮', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"35\"}', 0, 1, 1),
(359, 355, '', '商城首页滚动新闻', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"36\"}', 0, 1, 1),
(360, 11, '', '公众号配置', '', '', '', '[]', 100, 1, 1),
(361, 360, '', '公众号支付配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"1\",\"tab_id\":\"4\"}', 0, 1, 1),
(365, 362, '', '附件管理', 'admin', 'widget.images', 'index', '[]', 0, 0, 1),
(366, 254, '', '其它权限管理', '', '', '', '[]', 0, 0, 1),
(367, 366, '', '编辑砍价', 'admin', 'ump.storeBargain', 'edit', '[]', 0, 0, 1),
(368, 366, '', '砍价产品更新', 'admin', 'ump.storeBargain', 'update', '[]', 0, 1, 1),
(369, 143, '', '添加产品分类', 'admin', 'store.storeCategory', 'create', '[]', 0, 0, 1),
(370, 143, '', '编辑产品分类', 'admin', 'store.storeCategory', 'edit', '[]', 0, 0, 1),
(373, 269, '', '首页导航按钮', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"47\"}', 0, 1, 1),
(374, 295, '', '分销会员业务', 'admin', 'record.record', 'user_distribution_chart', '[]', 0, 1, 1),
(375, 269, '', '小程序支付配置', 'admin', 'setting.systemConfig', 'index_alone', '{\"type\":\"2\",\"tab_id\":\"14\"}', 0, 1, 1),
(376, 269, '', '小程序模板消息', 'admin', 'routine.routineTemplate', 'index', '[]', 0, 1, 1),
(378, 289, '', '物流公司', 'admin', 'system.express', 'index', '[]', 0, 1, 1),
(379, 21, '', '文件管理', 'admin', 'system.systemFile', 'opendir', '[]', 0, 1, 1),
(380, 379, '', '权限规则', 'admin', 'system.systemFile', '', '[]', 0, 0, 1),
(381, 380, '', '打开文件', 'admin', 'system.systemFile', 'openfile', '[]', 0, 0, 1),
(382, 380, '', '编辑文件', 'admin', 'system.systemFile', 'savefile', '[]', 0, 0, 1),
(386, 362, '', '移动图片分类展示', 'admin', 'widget.images', 'moveimg', '[]', 0, 0, 1),
(387, 362, '', '编辑分类', 'admin', 'widget.images', 'updatecate', '[]', 0, 0, 1),
(388, 362, '', '添加分类', 'admin', 'widget.images', 'savecate', '[]', 0, 0, 1),
(389, 362, '', '移动图片分类', 'admin', 'widget.images', 'moveimgcecate', '[]', 0, 0, 1),
(390, 362, '', '编辑分类展示', 'admin', 'widget.images', 'editcate', '[]', 0, 0, 1),
(393, 362, '', '添加分类展示', 'admin', 'widget.images', 'addcate', '[]', 0, 0, 1),
(392, 362, '', '删除分类', 'admin', 'widget.images', 'deletecate', '[]', 0, 0, 1),
(394, 191, '', '订单获取列表', 'admin', 'store.storeOrder', 'order_list', '[]', 0, 0, 1),
(395, 82, '', '微信用户附加权限', 'admin', 'wechat.wechatUser', '', '[]', 0, 0, 1),
(396, 395, '', '推送消息', 'admin', 'wechat.wechat_news_category', 'push', '[]', 0, 0, 1),
(397, 395, '', '推送优惠券', 'admin', 'ump.storeCouponUser', 'grant', '[]', 0, 0, 1),
(398, 177, '', '会员列表页', 'admin', 'user.user', 'index', '[]', 0, 0, 1),
(399, 177, '', '会员附加权限', '', 'user.user', '', '[]', 0, 0, 1),
(400, 399, '', '修改用户状态', '', 'user.user', 'set_status', '[]', 0, 0, 1),
(401, 399, '', '编辑用户', 'admin', 'user.user', 'edit', '[]', 0, 0, 1),
(402, 399, '', '更新用户', 'admin', 'user.user', 'update', '[]', 0, 0, 1),
(403, 399, '', '查看用户', 'admin', 'user.user', 'see', '[]', 0, 0, 1),
(405, 399, '', '发优惠券', 'admin', 'ump.storeCouponUser', 'grant', '[]', 0, 0, 1),
(406, 399, '', '推送图文', 'admin', 'wechat.wechatNewsCategory', 'push', '[]', 0, 0, 1),
(407, 399, '', '发站内信', 'admin', 'user.userNotice', 'notice', '[]', 0, 0, 1),
(408, 176, '', '站内通知附加权限', 'admin', 'user.user_notice', '', '[]', 0, 0, 1),
(409, 408, '', '添加站内消息', 'admin', 'user.user_notice', 'save', '[]', 0, 0, 1),
(410, 408, '', '编辑站内消息', 'admin', 'user.user_notice', 'update', '[]', 0, 0, 1),
(411, 408, '', '发送站内消息', 'admin', 'user.user_notice', 'send', '[]', 0, 0, 1),
(412, 408, '', '删除站内消息', 'admin', 'user.user_notice', 'delete', '[]', 0, 0, 1),
(413, 408, '', '指定用户发送', 'admin', 'user.user_notice', 'send_user', '[]', 0, 0, 1),
(415, 371, '', '分销管理附加权限', 'admin', 'agent.agentManage', '', '[]', 0, 0, 1),
(416, 174, '', '微信模版消息附加权限', 'admin', 'wechat.wechatTemplate', '', '[]', 0, 0, 1),
(417, 416, '', '添加模版消息', 'admin', 'wechat.wechatTemplate', 'save', '[]', 0, 0, 1),
(418, 416, '', '添加模版消息展示', 'admin', 'wechat.wechatTemplate', 'create', '[]', 0, 0, 1),
(419, 416, '', '编辑模版消息展示', 'admin', 'wechat.wechatTemplate', 'edit', '[]', 0, 0, 1),
(420, 416, '', '更新模版消息展示', 'admin', 'wechat.wechatTemplate', 'update', '[]', 0, 0, 1),
(421, 416, '', '删除模版消息展示', 'admin', 'wechat.wechatTemplate', 'delete', '[]', 0, 0, 1),
(422, 376, '', '小程序模版消息附加权限', 'admin', 'routine.routineTemplate', '', '[]', 0, 0, 1),
(423, 422, '', '添加模版消息展示', 'admin', 'routine.routineTemplate', 'create', '[]', 0, 0, 1),
(424, 422, '', '添加模版消息', 'admin', 'routine.routineTemplate', 'save', '[]', 0, 0, 1),
(425, 422, '', '编辑模版消息展示', 'admin', 'routine.routineTemplate', 'edit', '[]', 0, 0, 1),
(426, 422, '', '编辑模版消息', 'admin', 'routine.routineTemplate', 'update', '[]', 0, 0, 1),
(427, 422, '', '删除模版消息', 'admin', 'routine.routineTemplate', 'delete', '[]', 0, 0, 1),
(439, 377, '', '数据库备份附加权限', 'admin', 'system.systemDatabackup', '', '[]', 0, 0, 1),
(440, 439, '', '查看表结构', 'admin', 'system.systemDatabackup', 'seetable', '[]', 0, 0, 1),
(441, 439, '', '优化表', 'admin', 'system.systemDatabackup', 'optimize', '[]', 0, 0, 1),
(442, 439, '', '修复表', 'admin', 'system.systemDatabackup', 'repair', '[]', 0, 0, 1),
(443, 439, '', '备份表', 'admin', 'system.systemDatabackup', 'backup', '[]', 0, 0, 1),
(444, 439, '', '删除备份', 'admin', 'system.systemDatabackup', 'delFile', '[]', 0, 0, 1),
(445, 439, '', '恢复备份', 'admin', 'system.systemDatabackup', 'import', '[]', 0, 0, 1),
(446, 439, '', '下载备份', 'admin', 'system.systemDatabackup', 'downloadFile', '[]', 0, 0, 1),
(447, 377, '', '数据备份展示页', 'admin', 'system.systemDatabackup', 'index', '[]', 0, 0, 1),
(448, 379, '', '文件管理展示页', 'admin', 'system.systemFile', 'index', '[]', 0, 0, 1),
(449, 176, '', '站内通知', 'admin', 'user.user_notice', 'index', '[]', 0, 0, 1),
(450, 371, '', '分销管理列表页', 'admin', 'agent.agentManage', 'index', '[]', 0, 0, 1),
(451, 376, '', '小程序模版消息列表页', 'admin', 'routine.routineTemplate', 'index', '[]', 0, 0, 1),
(452, 174, '', '微信模版消息列表页', 'admin', 'wechat.wechatTemplate', 'index', '[]', 0, 0, 1),
(453, 276, '', '附件管理展示页', 'admin', 'widget.images', 'index', '[]', 0, 0, 1),
(456, 80, 'facebook-officia', '测试编辑', 'admin', 'article.article', 'testart', '[]', 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_notice`
--

CREATE TABLE `eb_system_notice` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '通知模板id',
  `title` varchar(64) NOT NULL COMMENT '通知标题',
  `type` varchar(64) NOT NULL COMMENT '通知类型',
  `icon` varchar(16) NOT NULL COMMENT '图标',
  `url` varchar(64) NOT NULL COMMENT '链接',
  `table_title` varchar(256) NOT NULL COMMENT '通知数据',
  `template` varchar(64) NOT NULL COMMENT '通知模板',
  `push_admin` varchar(128) NOT NULL COMMENT '通知管理员id',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='通知模板表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `eb_system_notice`
--

INSERT INTO `eb_system_notice` (`id`, `title`, `type`, `icon`, `url`, `table_title`, `template`, `push_admin`, `status`) VALUES
(5, '用户关注通知', 'user_sub', 'user-plus', '', '[{\"title\":\"openid\",\"key\":\"openid\"},{\"title\":\"\\u5fae\\u4fe1\\u6635\\u79f0\",\"key\":\"nickname\"},{\"title\":\"\\u5173\\u6ce8\\u4e8b\\u4ef6\",\"key\":\"add_time\"}]', '有%u个新用户关注了公众号', '1', 1),
(7, '新订单提醒', '订单提醒', 'building-o', '', '[{\"title\":\"\\u8ba2\\u5355\\u53f7\",\"key\":\"key1\"}]', '新订单提醒', '1', 1),
(9, '测试通知中 ', '测试', 'buysellads', '', '[{\"title\":\"\\u8ba2\\u5355\\u53f7\",\"key\":\"key1\"}]', '测试', '20', 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_notice_admin`
--

CREATE TABLE `eb_system_notice_admin` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '通知记录ID',
  `notice_type` varchar(64) NOT NULL COMMENT '通知类型',
  `admin_id` smallint(5) UNSIGNED NOT NULL COMMENT '通知的管理员',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT '关联ID',
  `table_data` text NOT NULL COMMENT '通知的数据',
  `is_click` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击次数',
  `is_visit` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '访问次数',
  `visit_time` int(11) NOT NULL COMMENT '访问时间',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '通知时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='通知记录表' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_role`
--

CREATE TABLE `eb_system_role` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '身份管理id',
  `role_name` varchar(32) NOT NULL COMMENT '身份管理名称',
  `rules` text NOT NULL COMMENT '身份管理权限(menus_id)',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='身份管理表';

--
-- 转存表中的数据 `eb_system_role`
--

INSERT INTO `eb_system_role` (`id`, `role_name`, `rules`, `level`, `status`) VALUES
(1, '超级管理员', '23,24,147,266,265,264,263,262,261,146,25,142,143,369,370,285,26,191,394,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,190,329,334,335,290,170,225,228,227,226,224,151,177,399,402,403,405,406,407,401,400,398,176,408,413,412,411,409,410,449,337,353,371,415,450,286,148,149,230,234,233,232,231,229,235,150,352,271,254,366,367,368,272,238,333,273,241,349,351,350,287,306,239,307,179,216,217,218,219,312,308,313,288,293,340,341,296,318,317,316,315,314,294,302,244,301,300,295,303,304,305,246,374,297,321,320,319,269,372,270,373,375,376,422,423,424,425,426,427,451,11,360,267,17,127,128,126,174,416,417,418,419,420,421,452,361,355,359,358,356,357,354,12,97,98,99,30,93,89,92,91,90,124,123,31,95,96,94,37,175,210,215,214,213,212,211,223,222,209,19,73,42,116,115,45,44,43,82,133,134,395,396,397,84,236,129,132,289,378,153,8,67,63,105,104,66,65,64,4,68,59,103,102,62,61,60,2,78,74,77,76,75,101,100,247,250,248,249,1,6,118,117,119,145,144,7,46,108,107,106,50,49,48,47,51,69,9,70,52,112,111,110,109,58,57,56,55,54,53,255,80,283,72,38,41,40,39,284,71,33,114,113,36,35,34,21,173,252,237,278,130,131,377,447,439,445,446,444,443,440,441,442,276,362,364,363,365,390,393,392,389,388,386,387,453,379,448,380,381,382,0', 0, 1),
(24, '操作员', '23,24,147,266,265,264,263,262,261,146,25,142,143,369,370,285,26,191,394,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,190,329,334,335,290,170,225,228,227,226,224,151,177,399,402,403,405,406,407,401,400,398,176,408,413,412,411,409,410,449,371,415,450,80,283,72,38,41,40,39,284,71,33,114,113,36,35,34,237,278,0,337,21', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user`
--

CREATE TABLE `eb_user` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `account` varchar(32) NOT NULL COMMENT '用户账号',
  `pwd` varchar(32) NOT NULL COMMENT '用户密码',
  `nickname` varchar(16) NOT NULL COMMENT '用户昵称',
  `avatar` varchar(256) NOT NULL COMMENT '用户头像',
  `phone` char(15) DEFAULT NULL COMMENT '手机号码',
  `add_time` int(11) UNSIGNED NOT NULL COMMENT '添加时间',
  `add_ip` varchar(16) NOT NULL COMMENT '添加ip',
  `last_time` int(11) UNSIGNED NOT NULL COMMENT '最后一次登录时间',
  `last_ip` varchar(16) NOT NULL COMMENT '最后一次登录ip',
  `now_money` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '用户余额',
  `integral` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '用户剩余积分',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为正常，0为禁止',
  `level` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT '等级',
  `spread_uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '推广元id',
  `user_type` varchar(32) NOT NULL COMMENT '用户类型',
  `is_promoter` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为推广员',
  `pay_count` int(11) UNSIGNED DEFAULT '0' COMMENT '用户购买次数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `eb_user`
--

INSERT INTO `eb_user` (`uid`, `account`, `pwd`, `nickname`, `avatar`, `phone`, `add_time`, `add_ip`, `last_time`, `last_ip`, `now_money`, `integral`, `status`, `level`, `spread_uid`, `user_type`, `is_promoter`, `pay_count`) VALUES
(2, 'wx21552659207', 'e10adc3949ba59abbe56e057f20f883e', '达尔文', 'http://thirdwx.qlogo.cn/mmopen/icMibLicpiaD0LRskjvKEOoM8Zw6BibYPOuDGduFhQz4kXdvx8EwEswYtHHUfyOJ1ibic1icam97fwRo60khjMNF3SKKrGtWTraKOuZQ/132', NULL, 1552659207, '113.247.22.168', 1552890453, '113.246.104.74', '0.00', '10.00', 1, 0, 0, 'wechat', 0, 5),
(3, 'wx31552696976', 'e10adc3949ba59abbe56e057f20f883e', '2019努力奋斗', 'http://thirdwx.qlogo.cn/mmopen/8dQ2T4EPrnzjDrib6DJkaUSTnyLhnibibhDOITuK6giarVBoPxVse4qfibwyLhjwT7OsgM0EictZEGPe8IhLDhiadoEVaXEPPbXmhOO/132', NULL, 1552696976, '36.157.88.130', 1552696976, '36.157.88.130', '0.00', '0.00', 1, 0, 0, 'wechat', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_address`
--

CREATE TABLE `eb_user_address` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '用户地址id',
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `real_name` varchar(32) NOT NULL COMMENT '收货人姓名',
  `phone` varchar(16) NOT NULL COMMENT '收货人电话',
  `province` varchar(64) NOT NULL COMMENT '收货人所在省',
  `city` varchar(64) NOT NULL COMMENT '收货人所在市',
  `district` varchar(64) NOT NULL COMMENT '收货人所在区',
  `detail` varchar(256) NOT NULL COMMENT '收货人详细地址',
  `post_code` int(10) UNSIGNED NOT NULL COMMENT '邮编',
  `longitude` varchar(16) NOT NULL DEFAULT '0' COMMENT '经度',
  `latitude` varchar(16) NOT NULL DEFAULT '0' COMMENT '纬度',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否默认',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否删除',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户地址表';

--
-- 转存表中的数据 `eb_user_address`
--

INSERT INTO `eb_user_address` (`id`, `uid`, `real_name`, `phone`, `province`, `city`, `district`, `detail`, `post_code`, `longitude`, `latitude`, `is_default`, `is_del`, `add_time`) VALUES
(1, 1, '朱桢', '18163626560', '湖南', '长沙市', '岳麓区', '斤斤计较', 0, '0', '0', 1, 0, 1552638956),
(2, 2, '朱桢', '18163626560', '湖南', '长沙市', '岳麓区', '天顶街道', 0, '0', '0', 1, 0, 1552659943);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_bill`
--

CREATE TABLE `eb_user_bill` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '用户账单id',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户uid',
  `link_id` varchar(32) NOT NULL DEFAULT '0' COMMENT '关联id',
  `pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 = 支出 1 = 获得',
  `title` varchar(64) NOT NULL COMMENT '账单标题',
  `category` varchar(64) NOT NULL COMMENT '明细种类',
  `type` varchar(64) NOT NULL DEFAULT '' COMMENT '明细类型',
  `number` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '明细数字',
  `balance` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '剩余',
  `mark` varchar(512) NOT NULL COMMENT '备注',
  `add_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = 带确定 1 = 有效 -1 = 无效'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户账单表';

--
-- 转存表中的数据 `eb_user_bill`
--

INSERT INTO `eb_user_bill` (`id`, `uid`, `link_id`, `pm`, `title`, `category`, `type`, `number`, `balance`, `mark`, `add_time`, `status`) VALUES
(1, 1, '1', 0, '余额提现', 'now_money', 'extract', '9.00', '1.00', '使用银联卡5445343434343545提现9元', 1552643619, 1),
(2, 2, '0', 1, '用户签到', 'integral', 'sign', '5.00', '0.00', '签到获得5积分', 1552663729, 1),
(3, 2, '0', 1, '用户签到', 'integral', 'sign', '5.00', '5.00', '签到获得5积分', 1552699232, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_enter`
--

CREATE TABLE `eb_user_enter` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '商户申请ID',
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `province` varchar(32) NOT NULL COMMENT '商户所在省',
  `city` varchar(32) NOT NULL COMMENT '商户所在市',
  `district` varchar(32) NOT NULL COMMENT '商户所在区',
  `address` varchar(256) NOT NULL COMMENT '商户详细地址',
  `merchant_name` varchar(256) NOT NULL COMMENT '商户名称',
  `link_user` varchar(32) NOT NULL,
  `link_tel` varchar(16) NOT NULL COMMENT '商户电话',
  `charter` varchar(512) NOT NULL COMMENT '商户证书',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '添加时间',
  `apply_time` int(10) UNSIGNED NOT NULL COMMENT '审核时间',
  `success_time` int(11) NOT NULL COMMENT '通过时间',
  `fail_message` varchar(256) NOT NULL COMMENT '未通过原因',
  `fail_time` int(10) UNSIGNED NOT NULL COMMENT '未通过时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 审核未通过 0未审核 1审核通过',
  `is_lock` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 = 开启 1= 关闭',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商户申请表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_extract`
--

CREATE TABLE `eb_user_extract` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED DEFAULT NULL,
  `real_name` varchar(64) DEFAULT NULL COMMENT '名称',
  `extract_type` varchar(32) DEFAULT 'bank' COMMENT 'bank = 银行卡 alipay = 支付宝wx=微信',
  `bank_code` varchar(32) DEFAULT '0' COMMENT '银行卡',
  `bank_address` varchar(256) DEFAULT '' COMMENT '开户地址',
  `alipay_code` varchar(64) DEFAULT '' COMMENT '支付宝账号',
  `extract_price` decimal(8,2) UNSIGNED DEFAULT '0.00' COMMENT '提现金额',
  `mark` varchar(512) DEFAULT NULL,
  `balance` decimal(8,2) UNSIGNED DEFAULT '0.00',
  `fail_msg` varchar(128) DEFAULT NULL COMMENT '无效原因',
  `fail_time` int(10) UNSIGNED DEFAULT NULL,
  `add_time` int(10) UNSIGNED DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '-1 未通过 0 审核中 1 已提现',
  `wechat` varchar(15) DEFAULT NULL COMMENT '微信号'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户提现表';

--
-- 转存表中的数据 `eb_user_extract`
--

INSERT INTO `eb_user_extract` (`id`, `uid`, `real_name`, `extract_type`, `bank_code`, `bank_address`, `alipay_code`, `extract_price`, `mark`, `balance`, `fail_msg`, `fail_time`, `add_time`, `status`, `wechat`) VALUES
(1, 1, '朱桢', 'bank', '5445343434343545', '岳麓区', '', '9.00', NULL, '1.00', NULL, NULL, 1552643619, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_group`
--

CREATE TABLE `eb_user_group` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `group_name` varchar(64) DEFAULT NULL COMMENT '用户分组名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户分组表';

--
-- 转存表中的数据 `eb_user_group`
--

INSERT INTO `eb_user_group` (`id`, `group_name`) VALUES
(1, '未分组'),
(2, '活跃用户'),
(3, '测试');

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_notice`
--

CREATE TABLE `eb_user_notice` (
  `id` int(11) NOT NULL,
  `uid` text NOT NULL COMMENT '接收消息的用户id（类型：json数据）',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '消息通知类型（1：系统消息；2：用户通知）',
  `user` varchar(20) NOT NULL DEFAULT '' COMMENT '发送人',
  `title` varchar(20) NOT NULL COMMENT '通知消息的标题信息',
  `content` varchar(500) NOT NULL COMMENT '通知消息的内容',
  `add_time` int(11) NOT NULL COMMENT '通知消息发送的时间',
  `is_send` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发送（0：未发送；1：已发送）',
  `send_time` int(11) NOT NULL COMMENT '发送时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户通知表';

--
-- 转存表中的数据 `eb_user_notice`
--

INSERT INTO `eb_user_notice` (`id`, `uid`, `type`, `user`, `title`, `content`, `add_time`, `is_send`, `send_time`) VALUES
(1, '', 1, '系统管理员', '多多岛', '当时发生的', 1552643301, 1, 1552643310),
(2, ',1,', 2, '系统管理员', '第三方', '沈德符是', 1552643334, 1, 1552643339);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_notice_see`
--

CREATE TABLE `eb_user_notice_see` (
  `id` int(11) NOT NULL,
  `nid` int(11) NOT NULL COMMENT '查看的通知id',
  `uid` int(11) NOT NULL COMMENT '查看通知的用户id',
  `add_time` int(11) NOT NULL COMMENT '查看通知的时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户通知发送记录表';

--
-- 转存表中的数据 `eb_user_notice_see`
--

INSERT INTO `eb_user_notice_see` (`id`, `nid`, `uid`, `add_time`) VALUES
(1, 2, 1, 1552643348);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_recharge`
--

CREATE TABLE `eb_user_recharge` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) DEFAULT NULL COMMENT '充值用户UID',
  `order_id` varchar(32) DEFAULT NULL COMMENT '订单号',
  `price` decimal(8,2) DEFAULT NULL COMMENT '充值金额',
  `recharge_type` varchar(32) DEFAULT NULL COMMENT '充值类型',
  `paid` tinyint(1) DEFAULT NULL COMMENT '是否充值',
  `pay_time` int(10) DEFAULT NULL COMMENT '充值支付时间',
  `add_time` int(12) DEFAULT NULL COMMENT '充值时间',
  `refund_price` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户充值表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_media`
--

CREATE TABLE `eb_wechat_media` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '微信视频音频id',
  `type` varchar(16) NOT NULL COMMENT '回复类型',
  `path` varchar(128) NOT NULL COMMENT '文件路径',
  `media_id` varchar(64) NOT NULL COMMENT '微信服务器返回的id',
  `url` varchar(256) NOT NULL COMMENT '地址',
  `temporary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否永久或者临时 0永久1临时',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信回复表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_message`
--

CREATE TABLE `eb_wechat_message` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '用户行为记录id',
  `openid` varchar(32) NOT NULL COMMENT '用户openid',
  `type` varchar(32) NOT NULL COMMENT '操作类型',
  `result` varchar(512) NOT NULL COMMENT '操作详细记录',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '操作时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户行为记录表';

--
-- 转存表中的数据 `eb_wechat_message`
--

INSERT INTO `eb_wechat_message` (`id`, `openid`, `type`, `result`, `add_time`) VALUES
(1, 'o5EjC0SqR1W0Smzam79XdPRSDoj4', 'payment_success', '{\"appid\":\"wx80ddb90a5ff58d97\",\"attach\":\"product\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1486863342\",\"nonce_str\":\"5c8bb6e3d9e2d\",\"openid\":\"o5EjC0SqR1W0Smzam79XdPRSDoj4\",\"out_trade_no\":\"wx2019031522254610004\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"522F27AA20937DD1F5E564D71E701D75\",\"time_end\":\"20190315223002\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000284201903152225932805\"}', 1552660204),
(2, 'o5EjC0SqR1W0Smzam79XdPRSDoj4', 'payment_success', '{\"appid\":\"wx80ddb90a5ff58d97\",\"attach\":\"product\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1486863342\",\"nonce_str\":\"5c8d080214c60\",\"openid\":\"o5EjC0SqR1W0Smzam79XdPRSDoj4\",\"out_trade_no\":\"wx2019031622281710002\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"8F217E57460B81CA4FBE6BD3B8E75EC7\",\"time_end\":\"20190316222822\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000278201903169112661351\"}', 1552746503),
(3, 'o5EjC0SqR1W0Smzam79XdPRSDoj4', 'payment_success', '{\"appid\":\"wx80ddb90a5ff58d97\",\"attach\":\"product\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1486863342\",\"nonce_str\":\"5c8d0ca9d26eb\",\"openid\":\"o5EjC0SqR1W0Smzam79XdPRSDoj4\",\"out_trade_no\":\"wx2019031622480910003\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"A7F0BE72378C2B6A11B3984BA3340C8F\",\"time_end\":\"20190316224814\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000278201903169109417148\"}', 1552747695),
(4, 'o5EjC0SqR1W0Smzam79XdPRSDoj4', 'payment_success', '{\"appid\":\"wx80ddb90a5ff58d97\",\"attach\":\"product\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1486863342\",\"nonce_str\":\"5c8d0d615efe4\",\"openid\":\"o5EjC0SqR1W0Smzam79XdPRSDoj4\",\"out_trade_no\":\"wx2019031622511310004\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"EE86240BF98FA19D9FF3AC667832E2A9\",\"time_end\":\"20190316225117\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000272201903161941007640\"}', 1552747879),
(5, 'o5EjC0SqR1W0Smzam79XdPRSDoj4', 'payment_success', '{\"appid\":\"wx80ddb90a5ff58d97\",\"attach\":\"product\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1486863342\",\"nonce_str\":\"5c8d18b49fca5\",\"openid\":\"o5EjC0SqR1W0Smzam79XdPRSDoj4\",\"out_trade_no\":\"wx2019031623393210005\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"94C5B1DA66467FE8304EA72215A82C10\",\"time_end\":\"20190316233939\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000263201903165520636266\"}', 1552750780);

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_news_category`
--

CREATE TABLE `eb_wechat_news_category` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '图文消息管理ID',
  `cate_name` varchar(255) NOT NULL COMMENT '图文名称',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态',
  `new_id` varchar(255) NOT NULL COMMENT '文章id',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图文消息管理表';

--
-- 转存表中的数据 `eb_wechat_news_category`
--

INSERT INTO `eb_wechat_news_category` (`id`, `cate_name`, `sort`, `status`, `new_id`, `add_time`) VALUES
(21, '11', 0, 1, '51,52,58,59,60,150', '1542379262'),
(29, '测试', 0, 1, '1', '1547206341');

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_qrcode`
--

CREATE TABLE `eb_wechat_qrcode` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '微信二维码ID',
  `third_type` varchar(32) NOT NULL COMMENT '二维码类型',
  `third_id` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `ticket` varchar(255) NOT NULL COMMENT '二维码参数',
  `expire_seconds` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '二维码有效时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `url` varchar(255) NOT NULL COMMENT '微信访问url',
  `qrcode_url` varchar(255) NOT NULL COMMENT '微信二维码url',
  `scan` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '被扫的次数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信二维码管理表';

--
-- 转存表中的数据 `eb_wechat_qrcode`
--

INSERT INTO `eb_wechat_qrcode` (`id`, `third_type`, `third_id`, `ticket`, `expire_seconds`, `status`, `add_time`, `url`, `qrcode_url`, `scan`) VALUES
(1, 'spread', 1, 'gQGb8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyM1NSR1JQVHpkc2sxeFRuUHhzMUoAAgR3iotcAwQAjScA', 1555240823, 1, '1552643626', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGb8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyM1NSR1JQVHpkc2sxeFRuUHhzMUoAAgR3iotcAwQAjScA', 'http://weixin.qq.com/q/023SRGRPTzdsk1xTnPxs1J', 0),
(2, 'spread', 2, 'gQEF8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyLTYtX3QwQThmMmgxQVAwUE5zMWMAAgQzs4tcAwQAjScA', 1555251251, 1, '1552659251', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEF8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyLTYtX3QwQThmMmgxQVAwUE5zMWMAAgQzs4tcAwQAjScA', 'http://weixin.qq.com/q/02-6-_t0A8f2h1AP0PNs1c', 0),
(3, 'spread', 3, 'gQGC8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZXl0THN3QThmMmgxTEtqUE5zMWIAAgTuRoxcAwQAjScA', 1555289070, 1, '1552697070', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGC8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZXl0THN3QThmMmgxTEtqUE5zMWIAAgTuRoxcAwQAjScA', 'http://weixin.qq.com/q/02eytLswA8f2h1LKjPNs1b', 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_reply`
--

CREATE TABLE `eb_wechat_reply` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '微信关键字回复id',
  `key` varchar(64) NOT NULL COMMENT '关键字',
  `type` varchar(32) NOT NULL COMMENT '回复类型',
  `data` text NOT NULL COMMENT '回复数据',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0=不可用  1 =可用',
  `hide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否隐藏'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信关键字回复表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_template`
--

CREATE TABLE `eb_wechat_template` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '模板id',
  `tempkey` char(50) NOT NULL COMMENT '模板编号',
  `name` char(100) NOT NULL COMMENT '模板名',
  `content` varchar(1000) NOT NULL COMMENT '回复内容',
  `tempid` char(100) DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) NOT NULL COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信模板';

--
-- 转存表中的数据 `eb_wechat_template`
--

INSERT INTO `eb_wechat_template` (`id`, `tempkey`, `name`, `content`, `tempid`, `add_time`, `status`) VALUES
(3, 'OPENTM200565259', '订单发货提醒', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n物流公司：{{keyword2.DATA}}\n物流单号：{{keyword3.DATA}}\n{{remark.DATA}}', 'RRsyuuWpCo81xCtfG-5qYnXXoeSQHY4mTVav0zzaZsM', '1515052638', 1),
(4, 'OPENTM413386489', '订单收货通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n订单状态：{{keyword2.DATA}}\n收货时间：{{keyword3.DATA}}\n商品详情：{{keyword4.DATA}}\n{{remark.DATA}}', 'caAhoWioDb2A8Ew1bTr4GTe6mdsDoM4kjp9XV5BC8hg', '1515052765', 1),
(5, 'OPENTM410119152', '退款进度通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n订单金额：{{keyword2.DATA}}\n下单时间：{{keyword3.DATA}}\n{{remark.DATA}}', '-WH6gUzezKnX9OTam9VrQEVyNWfr1bUhT6FRuBMotZw', '1515053049', 1),
(6, 'OPENTM405847076', '帐户资金变动提醒', '{{first.DATA}}\n变动类型：{{keyword1.DATA}}\n变动时间：{{keyword2.DATA}}\n变动金额：{{keyword3.DATA}}\n{{remark.DATA}}', 'dTNjE5QY6FzXyH0jbXEkNeNTgFQeMxdvqZRvDBqgatE', '1515053127', 1),
(7, 'OPENTM207707249', '订单发货提醒', '\n{{first.DATA}}\n商品明细：{{keyword1.DATA}}\n下单时间：{{keyword2.DATA}}\n配送地址：{{keyword3.DATA}}\n配送人：{{keyword4.DATA}}\n联系电话：{{keyword5.DATA}}\n{{remark.DATA}}', 'hC9PFuxOKq6u5kNZyl6VdHGgAuA6h5I3ztpuDk1ioAk', '1515053313', 1),
(8, 'OPENTM408237350', '服务进度提醒', '{{first.DATA}}\n服务类型：{{keyword1.DATA}}\n服务状态：{{keyword2.DATA}}\n服务时间：{{keyword3.DATA}}\n{{remark.DATA}}', '6Q7lusUXhX7HKcevHlEvMDC2qMuF2Yxtq52VTFNoNwg', '1515483915', 1),
(9, 'OPENTM204431262', '客服通知提醒', '{{first.DATA}}\n客户名称：{{keyword1.DATA}}\n客服类型：{{keyword2.DATA}}\n提醒内容：{{keyword3.DATA}}\n通知时间：{{keyword4.DATA}}\n{{remark.DATA}}', '6xvvsrYPGyTbYPPecVI1WihNpvWSAUsW1vBWGwL8Je0', '1515484354', 1),
(10, 'OPENTM407456411', '拼团成功通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n团购商品：{{keyword2.DATA}}\n{{remark.DATA}}', '8EI_FJ-h1UbIBYSXEm5BnV345fQs9s1eiELwlMUnbhk', '1520063823', 1),
(11, 'OPENTM401113750', '拼团失败通知', '{{first.DATA}}\n拼团商品：{{keyword1.DATA}}\n商品金额：{{keyword2.DATA}}\n退款金额：{{keyword3.DATA}}\n{{remark.DATA}}', 'BdO4l8H2p7OK8_f7Cx8DOqpE3D-mjDvjNdMeS05u2lI', '1520064059', 1),
(12, 'OPENTM205213550', '订单生成通知', '{{first.DATA}}\n时间：{{keyword1.DATA}}\n商品名称：{{keyword2.DATA}}\n订单号：{{keyword3.DATA}}\n{{remark.DATA}}', 'EY3j42ql2S6TBz5yK14iVjZqh4OSDOParZ9F_6e-56Q', '1528966701', 1),
(13, 'OPENTM207791277', '订单支付成功通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n支付金额：{{keyword2.DATA}}\n{{remark.DATA}}', 'UL7rLuzUIlYHNx5X_whUaAHWZWMmhZL35pUnJHgz8eI', '1528966759', 1),
(16, '1111111111111111111111111111', '11', '11', '211', '1542189446', 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_user`
--

CREATE TABLE `eb_wechat_user` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '微信用户id',
  `unionid` varchar(30) DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
  `openid` varchar(30) DEFAULT NULL COMMENT '用户的标识，对当前公众号唯一',
  `routine_openid` varchar(32) DEFAULT NULL COMMENT '小程序唯一身份ID',
  `nickname` varchar(64) NOT NULL COMMENT '用户的昵称',
  `headimgurl` varchar(256) NOT NULL COMMENT '用户头像',
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(64) NOT NULL COMMENT '用户所在城市',
  `language` varchar(64) NOT NULL COMMENT '用户的语言，简体中文为zh_CN',
  `province` varchar(64) NOT NULL COMMENT '用户所在省份',
  `country` varchar(64) NOT NULL COMMENT '用户所在国家',
  `remark` varchar(256) DEFAULT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` smallint(5) UNSIGNED DEFAULT '0' COMMENT '用户所在的分组ID（兼容旧的用户分组接口）',
  `tagid_list` varchar(256) DEFAULT NULL COMMENT '用户被打上的标签ID列表',
  `subscribe` tinyint(3) UNSIGNED DEFAULT '1' COMMENT '用户是否订阅该公众号标识',
  `subscribe_time` int(10) UNSIGNED DEFAULT NULL COMMENT '关注公众号时间',
  `add_time` int(10) UNSIGNED DEFAULT NULL COMMENT '添加时间',
  `stair` int(11) UNSIGNED DEFAULT NULL COMMENT '一级推荐人',
  `second` int(11) UNSIGNED DEFAULT NULL COMMENT '二级推荐人',
  `order_stair` int(11) DEFAULT NULL COMMENT '一级推荐人订单',
  `order_second` int(11) UNSIGNED DEFAULT NULL COMMENT '二级推荐人订单',
  `now_money` decimal(8,2) UNSIGNED DEFAULT NULL COMMENT '佣金',
  `session_key` varchar(32) DEFAULT NULL COMMENT '小程序用户会话密匙',
  `user_type` varchar(32) DEFAULT 'wechat' COMMENT '用户类型'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户表';

--
-- 转存表中的数据 `eb_wechat_user`
--

INSERT INTO `eb_wechat_user` (`uid`, `unionid`, `openid`, `routine_openid`, `nickname`, `headimgurl`, `sex`, `city`, `language`, `province`, `country`, `remark`, `groupid`, `tagid_list`, `subscribe`, `subscribe_time`, `add_time`, `stair`, `second`, `order_stair`, `order_second`, `now_money`, `session_key`, `user_type`) VALUES
(1, NULL, 'od-Nc1NuwdqlurLFOdztzE4Hkzbk', NULL, '达尔文', 'http://thirdwx.qlogo.cn/mmopen/GUA0KGWAUzUkCQ15qLKDzyhByaibCSBhzQ8CRU6xp0tUqPjhcdv5WTfxauXtfePV7ccdjqCBbpVh1KZowiaVFHYVqaOgdy4fQx/132', 1, '常德', 'zh_CN', '湖南', '中国', '', 0, '', 1, 1552306094, 1552637223, NULL, NULL, NULL, NULL, NULL, NULL, 'wechat'),
(2, NULL, 'o5EjC0SqR1W0Smzam79XdPRSDoj4', NULL, '达尔文', 'http://thirdwx.qlogo.cn/mmopen/icMibLicpiaD0LRskjvKEOoM8Zw6BibYPOuDGduFhQz4kXdvx8EwEswYtHHUfyOJ1ibic1icam97fwRo60khjMNF3SKKrGtWTraKOuZQ/132', 1, '常德', 'zh_CN', '湖南', '中国', '', 0, '', 1, 1524046028, 1552659207, NULL, NULL, NULL, NULL, NULL, NULL, 'wechat'),
(3, NULL, 'o5EjC0TaqwW2S2UlZl13o6wSM2MU', NULL, '2019努力奋斗', 'http://thirdwx.qlogo.cn/mmopen/8dQ2T4EPrnzjDrib6DJkaUSTnyLhnibibhDOITuK6giarVBoPxVse4qfibwyLhjwT7OsgM0EictZEGPe8IhLDhiadoEVaXEPPbXmhOO/132', 1, '怀化', 'zh_CN', '湖南', '中国', '', 0, '', 1, 1536894422, 1552696976, NULL, NULL, NULL, NULL, NULL, NULL, 'wechat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eb_article`
--
ALTER TABLE `eb_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_article_category`
--
ALTER TABLE `eb_article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_article_content`
--
ALTER TABLE `eb_article_content`
  ADD UNIQUE KEY `nid` (`nid`) USING BTREE;

--
-- Indexes for table `eb_cache`
--
ALTER TABLE `eb_cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `eb_express`
--
ALTER TABLE `eb_express`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`) USING BTREE,
  ADD KEY `is_show` (`is_show`) USING BTREE;

--
-- Indexes for table `eb_routine_access_token`
--
ALTER TABLE `eb_routine_access_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_routine_form_id`
--
ALTER TABLE `eb_routine_form_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_routine_qrcode`
--
ALTER TABLE `eb_routine_qrcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_routine_template`
--
ALTER TABLE `eb_routine_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tempkey` (`tempkey`) USING BTREE;

--
-- Indexes for table `eb_store_bargain`
--
ALTER TABLE `eb_store_bargain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_bargain_user`
--
ALTER TABLE `eb_store_bargain_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_bargain_user_help`
--
ALTER TABLE `eb_store_bargain_user_help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_cart`
--
ALTER TABLE `eb_store_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`uid`) USING BTREE,
  ADD KEY `goods_id` (`product_id`) USING BTREE,
  ADD KEY `uid` (`uid`,`is_pay`) USING BTREE,
  ADD KEY `uid_2` (`uid`,`is_del`) USING BTREE,
  ADD KEY `uid_3` (`uid`,`is_new`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `eb_store_category`
--
ALTER TABLE `eb_store_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`) USING BTREE,
  ADD KEY `is_base` (`is_show`) USING BTREE,
  ADD KEY `sort` (`sort`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE;

--
-- Indexes for table `eb_store_combination`
--
ALTER TABLE `eb_store_combination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_combination_attr`
--
ALTER TABLE `eb_store_combination_attr`
  ADD KEY `store_id` (`product_id`) USING BTREE;

--
-- Indexes for table `eb_store_combination_attr_result`
--
ALTER TABLE `eb_store_combination_attr_result`
  ADD UNIQUE KEY `product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `eb_store_combination_attr_value`
--
ALTER TABLE `eb_store_combination_attr_value`
  ADD UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  ADD KEY `store_id` (`product_id`,`suk`) USING BTREE;

--
-- Indexes for table `eb_store_coupon`
--
ALTER TABLE `eb_store_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state` (`status`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `coupon_time` (`coupon_time`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE;

--
-- Indexes for table `eb_store_coupon_issue`
--
ALTER TABLE `eb_store_coupon_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`) USING BTREE,
  ADD KEY `start_time` (`start_time`,`end_time`) USING BTREE,
  ADD KEY `remain_count` (`remain_count`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE;

--
-- Indexes for table `eb_store_coupon_issue_user`
--
ALTER TABLE `eb_store_coupon_issue_user`
  ADD UNIQUE KEY `uid` (`uid`,`issue_coupon_id`) USING BTREE;

--
-- Indexes for table `eb_store_coupon_user`
--
ALTER TABLE `eb_store_coupon_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`) USING BTREE,
  ADD KEY `uid` (`uid`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `end_time` (`end_time`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `is_fail` (`is_fail`) USING BTREE;

--
-- Indexes for table `eb_store_order`
--
ALTER TABLE `eb_store_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id_2` (`order_id`,`uid`) USING BTREE,
  ADD UNIQUE KEY `unique` (`unique`) USING BTREE,
  ADD KEY `uid` (`uid`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `pay_price` (`pay_price`) USING BTREE,
  ADD KEY `paid` (`paid`) USING BTREE,
  ADD KEY `pay_time` (`pay_time`) USING BTREE,
  ADD KEY `pay_type` (`pay_type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE,
  ADD KEY `coupon_id` (`coupon_id`) USING BTREE;

--
-- Indexes for table `eb_store_order_cart_info`
--
ALTER TABLE `eb_store_order_cart_info`
  ADD UNIQUE KEY `oid` (`oid`,`unique`) USING BTREE,
  ADD KEY `cart_id` (`cart_id`) USING BTREE,
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `eb_store_order_status`
--
ALTER TABLE `eb_store_order_status`
  ADD KEY `oid` (`oid`) USING BTREE,
  ADD KEY `change_type` (`change_type`) USING BTREE;

--
-- Indexes for table `eb_store_pink`
--
ALTER TABLE `eb_store_pink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_product`
--
ALTER TABLE `eb_store_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id` (`cate_id`) USING BTREE,
  ADD KEY `is_hot` (`is_hot`) USING BTREE,
  ADD KEY `is_benefit` (`is_benefit`) USING BTREE,
  ADD KEY `is_best` (`is_best`) USING BTREE,
  ADD KEY `is_new` (`is_new`) USING BTREE,
  ADD KEY `toggle_on_sale, is_del` (`is_del`) USING BTREE,
  ADD KEY `price` (`price`) USING BTREE,
  ADD KEY `is_show` (`is_show`) USING BTREE,
  ADD KEY `sort` (`sort`) USING BTREE,
  ADD KEY `sales` (`sales`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `is_postage` (`is_postage`) USING BTREE;

--
-- Indexes for table `eb_store_product_attr`
--
ALTER TABLE `eb_store_product_attr`
  ADD KEY `store_id` (`product_id`) USING BTREE;

--
-- Indexes for table `eb_store_product_attr_result`
--
ALTER TABLE `eb_store_product_attr_result`
  ADD UNIQUE KEY `product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `eb_store_product_attr_value`
--
ALTER TABLE `eb_store_product_attr_value`
  ADD UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  ADD KEY `store_id` (`product_id`,`suk`) USING BTREE;

--
-- Indexes for table `eb_store_product_relation`
--
ALTER TABLE `eb_store_product_relation`
  ADD UNIQUE KEY `uid` (`uid`,`product_id`,`type`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `category` (`category`) USING BTREE;

--
-- Indexes for table `eb_store_product_reply`
--
ALTER TABLE `eb_store_product_reply`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `order_id_2` (`oid`,`unique`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `parent_id` (`reply_type`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE,
  ADD KEY `product_score` (`product_score`) USING BTREE,
  ADD KEY `service_score` (`service_score`) USING BTREE;

--
-- Indexes for table `eb_store_seckill`
--
ALTER TABLE `eb_store_seckill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `start_time` (`start_time`,`stop_time`),
  ADD KEY `is_del` (`is_del`),
  ADD KEY `is_hot` (`is_hot`),
  ADD KEY `is_show` (`status`),
  ADD KEY `add_time` (`add_time`),
  ADD KEY `sort` (`sort`),
  ADD KEY `is_postage` (`is_postage`);

--
-- Indexes for table `eb_store_seckill_attr`
--
ALTER TABLE `eb_store_seckill_attr`
  ADD KEY `store_id` (`product_id`) USING BTREE;

--
-- Indexes for table `eb_store_seckill_attr_result`
--
ALTER TABLE `eb_store_seckill_attr_result`
  ADD UNIQUE KEY `product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `eb_store_seckill_attr_value`
--
ALTER TABLE `eb_store_seckill_attr_value`
  ADD UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  ADD KEY `store_id` (`product_id`,`suk`) USING BTREE;

--
-- Indexes for table `eb_store_service`
--
ALTER TABLE `eb_store_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_service_log`
--
ALTER TABLE `eb_store_service_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_visit`
--
ALTER TABLE `eb_store_visit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_system_admin`
--
ALTER TABLE `eb_system_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account` (`account`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `eb_system_attachment`
--
ALTER TABLE `eb_system_attachment`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `eb_system_attachment_category`
--
ALTER TABLE `eb_system_attachment_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `eb_system_config`
--
ALTER TABLE `eb_system_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_system_config_tab`
--
ALTER TABLE `eb_system_config_tab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_system_file`
--
ALTER TABLE `eb_system_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_system_group`
--
ALTER TABLE `eb_system_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_name` (`config_name`) USING BTREE;

--
-- Indexes for table `eb_system_group_data`
--
ALTER TABLE `eb_system_group_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_system_log`
--
ALTER TABLE `eb_system_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `eb_system_menus`
--
ALTER TABLE `eb_system_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`) USING BTREE,
  ADD KEY `is_show` (`is_show`) USING BTREE,
  ADD KEY `access` (`access`) USING BTREE;

--
-- Indexes for table `eb_system_notice`
--
ALTER TABLE `eb_system_notice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `eb_system_notice_admin`
--
ALTER TABLE `eb_system_notice_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`,`notice_type`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `is_visit` (`is_visit`) USING BTREE,
  ADD KEY `is_click` (`is_click`) USING BTREE;

--
-- Indexes for table `eb_system_role`
--
ALTER TABLE `eb_system_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `eb_user`
--
ALTER TABLE `eb_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `account` (`account`) USING BTREE,
  ADD KEY `spreaduid` (`spread_uid`) USING BTREE,
  ADD KEY `level` (`level`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `is_promoter` (`is_promoter`) USING BTREE;

--
-- Indexes for table `eb_user_address`
--
ALTER TABLE `eb_user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`) USING BTREE,
  ADD KEY `is_default` (`is_default`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE;

--
-- Indexes for table `eb_user_bill`
--
ALTER TABLE `eb_user_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `openid` (`uid`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `pm` (`pm`) USING BTREE,
  ADD KEY `type` (`category`,`type`,`link_id`) USING BTREE;

--
-- Indexes for table `eb_user_enter`
--
ALTER TABLE `eb_user_enter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`) USING BTREE,
  ADD KEY `province` (`province`,`city`,`district`) USING BTREE,
  ADD KEY `is_lock` (`is_lock`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `eb_user_extract`
--
ALTER TABLE `eb_user_extract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extract_type` (`extract_type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `openid` (`uid`) USING BTREE,
  ADD KEY `fail_time` (`fail_time`);

--
-- Indexes for table `eb_user_group`
--
ALTER TABLE `eb_user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_user_notice`
--
ALTER TABLE `eb_user_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_user_notice_see`
--
ALTER TABLE `eb_user_notice_see`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_user_recharge`
--
ALTER TABLE `eb_user_recharge`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`) USING BTREE,
  ADD KEY `uid` (`uid`) USING BTREE,
  ADD KEY `recharge_type` (`recharge_type`) USING BTREE,
  ADD KEY `paid` (`paid`) USING BTREE;

--
-- Indexes for table `eb_wechat_media`
--
ALTER TABLE `eb_wechat_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`,`media_id`) USING BTREE,
  ADD KEY `type_2` (`type`) USING BTREE;

--
-- Indexes for table `eb_wechat_message`
--
ALTER TABLE `eb_wechat_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `openid` (`openid`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE;

--
-- Indexes for table `eb_wechat_news_category`
--
ALTER TABLE `eb_wechat_news_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_wechat_qrcode`
--
ALTER TABLE `eb_wechat_qrcode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `third_type` (`third_type`,`third_id`) USING BTREE,
  ADD KEY `ticket` (`ticket`) USING BTREE;

--
-- Indexes for table `eb_wechat_reply`
--
ALTER TABLE `eb_wechat_reply`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `hide` (`hide`) USING BTREE;

--
-- Indexes for table `eb_wechat_template`
--
ALTER TABLE `eb_wechat_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tempkey` (`tempkey`) USING BTREE;

--
-- Indexes for table `eb_wechat_user`
--
ALTER TABLE `eb_wechat_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `openid` (`openid`) USING BTREE,
  ADD KEY `groupid` (`groupid`) USING BTREE,
  ADD KEY `subscribe_time` (`subscribe_time`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `subscribe` (`subscribe`) USING BTREE,
  ADD KEY `unionid` (`unionid`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `eb_article`
--
ALTER TABLE `eb_article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章管理ID';

--
-- 使用表AUTO_INCREMENT `eb_article_category`
--
ALTER TABLE `eb_article_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章分类id';

--
-- 使用表AUTO_INCREMENT `eb_express`
--
ALTER TABLE `eb_express`
  MODIFY `id` mediumint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '快递公司id', AUTO_INCREMENT=426;

--
-- 使用表AUTO_INCREMENT `eb_routine_access_token`
--
ALTER TABLE `eb_routine_access_token`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '小程序access_token表ID', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `eb_routine_form_id`
--
ALTER TABLE `eb_routine_form_id`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表单ID表ID';

--
-- 使用表AUTO_INCREMENT `eb_routine_qrcode`
--
ALTER TABLE `eb_routine_qrcode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '微信二维码ID';

--
-- 使用表AUTO_INCREMENT `eb_routine_template`
--
ALTER TABLE `eb_routine_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '模板id', AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `eb_store_bargain`
--
ALTER TABLE `eb_store_bargain`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '砍价产品ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `eb_store_bargain_user`
--
ALTER TABLE `eb_store_bargain_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户参与砍价表ID';

--
-- 使用表AUTO_INCREMENT `eb_store_bargain_user_help`
--
ALTER TABLE `eb_store_bargain_user_help`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '砍价用户帮助表ID';

--
-- 使用表AUTO_INCREMENT `eb_store_cart`
--
ALTER TABLE `eb_store_cart`
  MODIFY `id` bigint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '购物车表ID', AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `eb_store_category`
--
ALTER TABLE `eb_store_category`
  MODIFY `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类表ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `eb_store_combination`
--
ALTER TABLE `eb_store_combination`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `eb_store_coupon`
--
ALTER TABLE `eb_store_coupon`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '优惠券表ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `eb_store_coupon_issue`
--
ALTER TABLE `eb_store_coupon_issue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `eb_store_coupon_user`
--
ALTER TABLE `eb_store_coupon_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券发放记录id';

--
-- 使用表AUTO_INCREMENT `eb_store_order`
--
ALTER TABLE `eb_store_order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单ID', AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `eb_store_pink`
--
ALTER TABLE `eb_store_pink`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `eb_store_product`
--
ALTER TABLE `eb_store_product`
  MODIFY `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `eb_store_product_reply`
--
ALTER TABLE `eb_store_product_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID';

--
-- 使用表AUTO_INCREMENT `eb_store_seckill`
--
ALTER TABLE `eb_store_seckill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品秒杀产品表id', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `eb_store_service`
--
ALTER TABLE `eb_store_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服id';

--
-- 使用表AUTO_INCREMENT `eb_store_service_log`
--
ALTER TABLE `eb_store_service_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服用户对话记录表ID';

--
-- 使用表AUTO_INCREMENT `eb_store_visit`
--
ALTER TABLE `eb_store_visit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用表AUTO_INCREMENT `eb_system_admin`
--
ALTER TABLE `eb_system_admin`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '后台管理员表ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `eb_system_attachment`
--
ALTER TABLE `eb_system_attachment`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- 使用表AUTO_INCREMENT `eb_system_attachment_category`
--
ALTER TABLE `eb_system_attachment_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `eb_system_config`
--
ALTER TABLE `eb_system_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '配置id', AUTO_INCREMENT=100;

--
-- 使用表AUTO_INCREMENT `eb_system_config_tab`
--
ALTER TABLE `eb_system_config_tab`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '配置分类id', AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `eb_system_file`
--
ALTER TABLE `eb_system_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文件对比ID';

--
-- 使用表AUTO_INCREMENT `eb_system_group`
--
ALTER TABLE `eb_system_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合数据ID', AUTO_INCREMENT=49;

--
-- 使用表AUTO_INCREMENT `eb_system_group_data`
--
ALTER TABLE `eb_system_group_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合数据详情ID', AUTO_INCREMENT=115;

--
-- 使用表AUTO_INCREMENT `eb_system_log`
--
ALTER TABLE `eb_system_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员操作记录ID', AUTO_INCREMENT=461;

--
-- 使用表AUTO_INCREMENT `eb_system_menus`
--
ALTER TABLE `eb_system_menus`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜单ID', AUTO_INCREMENT=457;

--
-- 使用表AUTO_INCREMENT `eb_system_notice`
--
ALTER TABLE `eb_system_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '通知模板id', AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `eb_system_notice_admin`
--
ALTER TABLE `eb_system_notice_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '通知记录ID';

--
-- 使用表AUTO_INCREMENT `eb_system_role`
--
ALTER TABLE `eb_system_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '身份管理id', AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `eb_user`
--
ALTER TABLE `eb_user`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `eb_user_address`
--
ALTER TABLE `eb_user_address`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户地址id', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `eb_user_bill`
--
ALTER TABLE `eb_user_bill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户账单id', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `eb_user_enter`
--
ALTER TABLE `eb_user_enter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商户申请ID';

--
-- 使用表AUTO_INCREMENT `eb_user_extract`
--
ALTER TABLE `eb_user_extract`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `eb_user_group`
--
ALTER TABLE `eb_user_group`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `eb_user_notice`
--
ALTER TABLE `eb_user_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `eb_user_notice_see`
--
ALTER TABLE `eb_user_notice_see`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `eb_user_recharge`
--
ALTER TABLE `eb_user_recharge`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `eb_wechat_media`
--
ALTER TABLE `eb_wechat_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '微信视频音频id';

--
-- 使用表AUTO_INCREMENT `eb_wechat_message`
--
ALTER TABLE `eb_wechat_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户行为记录id', AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `eb_wechat_news_category`
--
ALTER TABLE `eb_wechat_news_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '图文消息管理ID', AUTO_INCREMENT=30;

--
-- 使用表AUTO_INCREMENT `eb_wechat_qrcode`
--
ALTER TABLE `eb_wechat_qrcode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '微信二维码ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `eb_wechat_reply`
--
ALTER TABLE `eb_wechat_reply`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '微信关键字回复id';

--
-- 使用表AUTO_INCREMENT `eb_wechat_template`
--
ALTER TABLE `eb_wechat_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '模板id', AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `eb_wechat_user`
--
ALTER TABLE `eb_wechat_user`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '微信用户id', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
