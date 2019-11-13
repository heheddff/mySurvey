-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019-11-13 18:03:24
-- 服务器版本: 5.6.39
-- PHP 版本: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `questionare`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `a_username` varchar(25) NOT NULL COMMENT '用户名',
  `a_password` varchar(40) NOT NULL COMMENT '密码',
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='管理员表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`a_id`, `a_username`, `a_password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- 表的结构 `columns`
--

CREATE TABLE IF NOT EXISTS `columns` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项ID',
  `c_value` text NOT NULL COMMENT '选项内容',
  `n_id` int(11) NOT NULL COMMENT '问卷ID',
  `q_id` int(11) NOT NULL COMMENT '选项ID',
  `c_isaddtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有附加内容',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='题目选项表' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `columns`
--

INSERT INTO `columns` (`c_id`, `c_value`, `n_id`, `q_id`, `c_isaddtion`) VALUES
(1, '外形', 68, 143, 0),
(2, '动作', 68, 143, 0),
(3, '玩法', 68, 143, 0),
(4, '一剑', 88, 223, 0),
(5, '拇指', 88, 223, 0),
(6, '一剑', 88, 225, 0),
(7, '拇指', 88, 225, 0),
(8, '外形', 90, 238, 0),
(9, '玩法', 90, 238, 0),
(10, '装备', 90, 238, 0),
(11, '技能', 92, 253, 0),
(12, '玩法', 92, 253, 0),
(13, '特色', 92, 253, 0);

-- --------------------------------------------------------

--
-- 表的结构 `naire`
--

CREATE TABLE IF NOT EXISTS `naire` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问卷id',
  `a_id` int(11) NOT NULL COMMENT '管理员id',
  `n_creattime` varchar(14) NOT NULL COMMENT '创建时间',
  `n_deadline` varchar(14) NOT NULL COMMENT '截止时间',
  `n_title` varchar(255) NOT NULL COMMENT '问卷标题',
  `n_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发布状态',
  `n_intro` text COMMENT '问卷介绍',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='问卷表' AUTO_INCREMENT=96 ;

--
-- 转存表中的数据 `naire`
--

INSERT INTO `naire` (`n_id`, `a_id`, `n_creattime`, `n_deadline`, `n_title`, `n_status`, `n_intro`) VALUES
(62, 0, '1572515652962', '1573142400000', '食物调研', 1, '食物调研工作'),
(66, 0, '1572575605789', '1573228800000', '个人喜好调研', 1, '请如实填写一下内容'),
(88, 0, '1572923287511', '1573142400000', '功能测试', 1, '功能测试'),
(89, 0, '1572923533310', '1573142400000', '矩阵填空测试', 1, '矩阵填空测试矩阵填空测试'),
(90, 0, '1573093075815', '1573747200000', '整体功能测试', 1, '整体功能测试详情'),
(92, 0, '1573466754940', '1575043200000', '破天游戏调研', 1, '破天游戏调研系统'),
(95, 0, '1573635131364', '1573747200000', '打赏', 1, '打法');

-- --------------------------------------------------------

--
-- 表的结构 `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项ID',
  `o_value` text NOT NULL COMMENT '选项内容',
  `n_id` int(11) NOT NULL COMMENT '问卷ID',
  `q_id` int(11) NOT NULL COMMENT '题目ID',
  `o_isaddtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有附加内容',
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='题目选项表' AUTO_INCREMENT=560 ;

--
-- 转存表中的数据 `options`
--

INSERT INTO `options` (`o_id`, `o_value`, `n_id`, `q_id`, `o_isaddtion`) VALUES
(239, '非常好', 62, 126, 0),
(240, '好', 62, 126, 0),
(241, '一般', 62, 126, 0),
(242, '不好', 62, 126, 0),
(243, '非常不好', 62, 126, 0),
(268, '男', 66, 136, 0),
(269, '女', 66, 136, 0),
(270, '苹果', 66, 137, 0),
(271, '梨子', 66, 137, 0),
(272, '香蕉', 66, 137, 0),
(273, '桃子', 66, 137, 0),
(274, '红色', 66, 138, 0),
(275, '蓝色', 66, 138, 0),
(276, '黄色', 66, 138, 0),
(277, '紫色', 66, 138, 0),
(278, '绿色', 66, 138, 0),
(279, '非常满意', 66, 140, 0),
(280, '满意', 66, 140, 0),
(281, '一般', 66, 140, 0),
(282, '不满意', 66, 140, 0),
(283, '非常不满意', 66, 140, 0),
(438, '儿童', 88, 218, 0),
(439, '幼儿', 88, 218, 0),
(440, '少年', 88, 218, 0),
(441, '红色', 88, 219, 0),
(442, '蓝色', 88, 219, 0),
(443, '绿色', 88, 219, 0),
(444, '外形', 88, 220, 0),
(445, '武器', 88, 220, 0),
(446, '装备', 88, 220, 0),
(447, '满意', 88, 222, 0),
(448, '一般', 88, 222, 0),
(449, '不满意', 88, 222, 0),
(450, '满意', 88, 223, 0),
(451, '一般', 88, 223, 0),
(452, '不满意', 88, 223, 0),
(453, '非常满意', 88, 224, 0),
(454, '满意', 88, 224, 0),
(455, '一般', 88, 224, 0),
(456, '不满意', 88, 224, 0),
(457, '非常不满意', 88, 224, 0),
(458, '好玩', 88, 225, 0),
(459, '一般', 88, 225, 0),
(460, '不好玩', 88, 225, 0),
(461, '非常满意', 88, 226, 0),
(462, '满意', 88, 226, 0),
(463, '不满意', 88, 226, 0),
(464, '满意_3', 88, 227, 0),
(465, '非常满意_4', 88, 227, 0),
(466, '非常很满意_5', 88, 227, 0),
(467, '满意_100', 88, 228, 0),
(468, '不满意_0', 88, 228, 0),
(469, '单选1', 90, 230, 0),
(470, '单选2', 90, 230, 0),
(471, '单选3', 90, 230, 0),
(472, '多选1', 90, 231, 0),
(473, '多选2', 90, 231, 0),
(474, '多选3', 90, 231, 0),
(475, '下拉1', 90, 232, 0),
(476, '下拉2', 90, 232, 0),
(477, '下拉3', 90, 232, 0),
(478, '满意', 90, 235, 0),
(479, '一般', 90, 235, 0),
(480, '不满意', 90, 235, 0),
(481, '红色', 90, 236, 0),
(482, '蓝色', 90, 236, 0),
(483, '绿色', 90, 236, 0),
(484, '非常不满意', 90, 237, 0),
(485, '不满意', 90, 237, 0),
(486, '一般', 90, 237, 0),
(487, '满意', 90, 237, 0),
(488, '非常满意', 90, 237, 0),
(489, '非常好玩', 90, 238, 0),
(490, '好玩', 90, 238, 0),
(491, '一般', 90, 238, 0),
(492, '不好玩', 90, 238, 0),
(493, '非常不好玩', 90, 238, 0),
(494, '非常不满意', 90, 239, 0),
(495, '满意', 90, 239, 0),
(496, '一般', 90, 239, 0),
(497, '不满意', 90, 239, 0),
(498, '非常不满意', 90, 239, 0),
(499, '选项1_1', 90, 240, 0),
(500, '选项2_2', 90, 240, 0),
(501, '选项3_3', 90, 240, 0),
(502, '外形', 90, 241, 0),
(503, '玩法', 90, 241, 0),
(504, '满意_100', 90, 242, 0),
(505, '不满意_0', 90, 242, 0),
(512, '男', 92, 245, 0),
(513, '女', 92, 245, 0),
(514, '红色', 92, 246, 0),
(515, '蓝色', 92, 246, 0),
(516, '紫色', 92, 246, 0),
(517, '北京', 92, 247, 0),
(518, '上海', 92, 247, 0),
(519, '天津', 92, 247, 0),
(520, '非常满意', 92, 250, 0),
(521, '满意', 92, 250, 0),
(522, '一般', 92, 250, 0),
(523, '不满意', 92, 250, 0),
(524, '非常不满意', 92, 250, 0),
(525, '都市', 92, 251, 0),
(526, '玄幻', 92, 251, 0),
(527, '仙侠', 92, 251, 0),
(528, '非常不满意', 92, 252, 0),
(529, '不满意', 92, 252, 0),
(530, '一般', 92, 252, 0),
(531, '满意', 92, 252, 0),
(532, '非常满意', 92, 252, 0),
(533, '满意', 92, 253, 0),
(534, '一般', 92, 253, 0),
(535, '不满意', 92, 253, 0),
(536, '非常不满意', 92, 254, 0),
(537, '不满意', 92, 254, 0),
(538, '一般', 92, 254, 0),
(539, '满意', 92, 254, 0),
(540, '非常满意', 92, 254, 0),
(541, '满意_3', 92, 255, 0),
(542, '一般_2', 92, 255, 0),
(543, '不满意_1', 92, 255, 0),
(544, '角色', 92, 256, 0),
(545, '武功', 92, 256, 0),
(546, '满意_100', 92, 257, 0),
(547, '不满意_0', 92, 257, 0),
(548, '一剑', 92, 258, 0),
(549, '拇指', 92, 258, 0),
(550, '娇红', 92, 258, 0),
(557, '选项1', 95, 261, 0),
(558, '选项1', 95, 261, 0),
(559, '选项1', 95, 261, 0);

-- --------------------------------------------------------

--
-- 表的结构 `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目ID',
  `q_content` text NOT NULL COMMENT '题目内容',
  `q_type` varchar(10) NOT NULL COMMENT '题目类型（单选、多选、填空）',
  `n_id` int(11) NOT NULL COMMENT '问卷ID',
  `q_isrequire` tinyint(1) NOT NULL COMMENT '是否为必填项',
  `q_description` text COMMENT '问题描述',
  `rows` varchar(255) DEFAULT NULL,
  `columns` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='题目表' AUTO_INCREMENT=262 ;

--
-- 转存表中的数据 `question`
--

INSERT INTO `question` (`q_id`, `q_content`, `q_type`, `n_id`, `q_isrequire`, `q_description`, `rows`, `columns`) VALUES
(126, '一下内容单选', '7', 62, 1, '', NULL, NULL),
(136, '性别', '1', 66, 1, '', NULL, NULL),
(137, '最爱水果', '1', 66, 1, '', NULL, NULL),
(138, '喜爱颜色', '3', 66, 1, '', NULL, NULL),
(139, '个人总结', '4', 66, 1, '', NULL, NULL),
(140, '请给以下内容打分', '7', 66, 1, '', NULL, NULL),
(218, '单选测试', '1', 88, 1, '', NULL, NULL),
(219, '多选测试', '2', 88, 1, '', NULL, NULL),
(220, '下拉测试', '3', 88, 1, '', NULL, NULL),
(221, '单项填空测试', '4', 88, 1, '', NULL, NULL),
(222, '矩阵单选测试', '7', 88, 1, '', NULL, NULL),
(223, '矩阵多选测试', '8', 88, 1, '', NULL, NULL),
(224, '矩阵量表测试', '9', 88, 1, '', NULL, NULL),
(225, '矩阵量表测试', '10', 88, 1, '', NULL, NULL),
(226, '量表题测试', '11', 88, 1, '', NULL, NULL),
(227, '评分单选测试', '12', 88, 1, '', NULL, NULL),
(228, '滑动条测试', '14', 88, 1, '', NULL, NULL),
(229, '矩阵填空', '6', 89, 1, '', NULL, NULL),
(230, '单选测试', '1', 90, 1, '', NULL, NULL),
(231, '多选测试', '2', 90, 1, '', NULL, NULL),
(232, '下拉测试', '3', 90, 1, '', NULL, NULL),
(233, '单选填空测试', '4', 90, 1, '', NULL, NULL),
(234, '矩阵填空测试', '6', 90, 1, '', NULL, NULL),
(235, '矩阵单选测试', '7', 90, 1, '', NULL, NULL),
(236, '矩阵多选测试', '8', 90, 1, '', NULL, NULL),
(237, '矩阵量表测试', '9', 90, 1, '', NULL, NULL),
(238, '表格下拉框测试', '10', 90, 1, '', NULL, NULL),
(239, '量表题测试', '11', 90, 1, '', NULL, NULL),
(240, '评分单选测试', '12', 90, 1, '', NULL, NULL),
(241, '比重题测试', '13', 90, 1, '', NULL, NULL),
(242, '滑动条测试', '14', 90, 1, '', NULL, NULL),
(245, '性别', '1', 92, 1, '', NULL, NULL),
(246, '喜爱颜色', '2', 92, 1, '', NULL, NULL),
(247, '所居城市', '3', 92, 1, '', NULL, NULL),
(248, '身份证号', '4', 92, 1, '', NULL, NULL),
(249, '完善个人信息', '6', 92, 1, '', NULL, NULL),
(250, '完善个人信息', '7', 92, 1, '', NULL, NULL),
(251, '喜好类型', '8', 92, 1, '', NULL, NULL),
(252, '喜好类型', '9', 92, 1, '', NULL, NULL),
(253, '喜好类型', '10', 92, 1, '', NULL, NULL),
(254, '游戏玩法打分', '11', 92, 1, '', NULL, NULL),
(255, '外形打分', '12', 92, 1, '', NULL, NULL),
(256, '以下比重评估', '13', 92, 1, '', NULL, NULL),
(257, '商城系统打分', '14', 92, 1, '', NULL, NULL),
(258, '所属角色', '1', 92, 1, '', NULL, NULL),
(261, '游戏测试', '2', 95, 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `u_id` int(11) NOT NULL COMMENT '用户ID',
  `n_id` int(11) NOT NULL COMMENT '问卷ID',
  `q_id` int(11) NOT NULL COMMENT '题目ID',
  `o_id` varchar(255) DEFAULT NULL COMMENT '选项ID',
  `o_addtion` text COMMENT '附加文字',
  `type` int(11) NOT NULL,
  `rows` int(11) DEFAULT NULL,
  `columns` int(11) DEFAULT NULL,
  `scores` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- 转存表中的数据 `result`
--

INSERT INTO `result` (`u_id`, `n_id`, `q_id`, `o_id`, `o_addtion`, `type`, `rows`, `columns`, `scores`, `createtime`, `id`) VALUES
(0, 92, 245, '512', '', 1, NULL, NULL, 0, '2019-11-11 18:33:07', 1),
(0, 92, 246, '514', '', 2, NULL, NULL, 0, '2019-11-11 18:33:07', 2),
(0, 92, 246, '515', '', 2, NULL, NULL, 0, '2019-11-11 18:33:07', 3),
(0, 92, 247, '517', '', 3, NULL, NULL, 0, '2019-11-11 18:33:07', 4),
(0, 92, 248, '1111111111111111111111111', '', 4, NULL, NULL, 0, '2019-11-11 18:33:07', 5),
(0, 92, 249, '张三', '', 6, NULL, NULL, 0, '2019-11-11 18:33:07', 6),
(0, 92, 249, '21', '', 6, NULL, NULL, 0, '2019-11-11 18:33:07', 7),
(0, 92, 250, '60_520', '', 7, NULL, NULL, 0, '2019-11-11 18:33:07', 8),
(0, 92, 250, '61_520', '', 7, NULL, NULL, 0, '2019-11-11 18:33:07', 9),
(0, 92, 251, '62_525', '', 8, NULL, NULL, 0, '2019-11-11 18:33:07', 10),
(0, 92, 251, '62_526', '', 8, NULL, NULL, 0, '2019-11-11 18:33:07', 11),
(0, 92, 251, '63_526', '', 8, NULL, NULL, 0, '2019-11-11 18:33:07', 12),
(0, 92, 251, '63_527', '', 8, NULL, NULL, 0, '2019-11-11 18:33:07', 13),
(0, 92, 252, '64_530', '', 9, NULL, NULL, 0, '2019-11-11 18:33:07', 14),
(0, 92, 252, '65_531', '', 9, NULL, NULL, 0, '2019-11-11 18:33:07', 15),
(0, 92, 253, '66_11_533', '', 10, NULL, NULL, 0, '2019-11-11 18:33:07', 16),
(0, 92, 253, '66_12_534', '', 10, NULL, NULL, 0, '2019-11-11 18:33:07', 17),
(0, 92, 253, '66_13_533', '', 10, NULL, NULL, 0, '2019-11-11 18:33:07', 18),
(0, 92, 253, '67_11_535', '', 10, NULL, NULL, 0, '2019-11-11 18:33:07', 19),
(0, 92, 253, '67_12_533', '', 10, NULL, NULL, 0, '2019-11-11 18:33:07', 20),
(0, 92, 253, '67_13_534', '', 10, NULL, NULL, 0, '2019-11-11 18:33:07', 21),
(0, 92, 254, '537', '', 11, NULL, NULL, 0, '2019-11-11 18:33:07', 22),
(0, 92, 255, '541', '', 12, NULL, NULL, 0, '2019-11-11 18:33:07', 23),
(0, 92, 256, '544_20', '', 13, NULL, NULL, 0, '2019-11-11 18:33:07', 24),
(0, 92, 256, '545_30', '', 13, NULL, NULL, 0, '2019-11-11 18:33:07', 25),
(0, 92, 257, '30', '', 14, NULL, NULL, 0, '2019-11-11 18:33:07', 26),
(0, 92, 258, '548', '', 1, NULL, NULL, 0, '2019-11-11 18:33:07', 27),
(0, 92, 245, '512', '', 1, NULL, NULL, 0, '2019-11-11 18:44:54', 28),
(0, 92, 246, '514', '', 2, NULL, NULL, 0, '2019-11-11 18:44:54', 29),
(0, 92, 246, '515', '', 2, NULL, NULL, 0, '2019-11-11 18:44:54', 30),
(0, 92, 247, '517', '', 3, NULL, NULL, 0, '2019-11-11 18:44:54', 31),
(0, 92, 248, '但是发放', '', 4, NULL, NULL, 0, '2019-11-11 18:44:54', 32),
(0, 92, 249, '发顺丰', '', 6, NULL, NULL, 0, '2019-11-11 18:44:54', 33),
(0, 92, 249, '放大', '', 6, NULL, NULL, 0, '2019-11-11 18:44:54', 34),
(0, 92, 250, '60_520', '', 7, NULL, NULL, 0, '2019-11-11 18:44:54', 35),
(0, 92, 250, '61_520', '', 7, NULL, NULL, 0, '2019-11-11 18:44:54', 36),
(0, 92, 251, '62_526', '', 8, NULL, NULL, 0, '2019-11-11 18:44:54', 37),
(0, 92, 251, '62_525', '', 8, NULL, NULL, 0, '2019-11-11 18:44:54', 38),
(0, 92, 252, '64_529', '', 9, NULL, NULL, 0, '2019-11-11 18:44:54', 39),
(0, 92, 252, '65_530', '', 9, NULL, NULL, 0, '2019-11-11 18:44:54', 40),
(0, 92, 253, '66_11_533', '', 10, NULL, NULL, 0, '2019-11-11 18:44:54', 41),
(0, 92, 253, '66_12_533', '', 10, NULL, NULL, 0, '2019-11-11 18:44:54', 42),
(0, 92, 253, '66_13_534', '', 10, NULL, NULL, 0, '2019-11-11 18:44:54', 43),
(0, 92, 253, '67_11_535', '', 10, NULL, NULL, 0, '2019-11-11 18:44:54', 44),
(0, 92, 253, '67_12_534', '', 10, NULL, NULL, 0, '2019-11-11 18:44:54', 45),
(0, 92, 253, '67_13_533', '', 10, NULL, NULL, 0, '2019-11-11 18:44:54', 46),
(0, 92, 254, '537', '', 11, NULL, NULL, 0, '2019-11-11 18:44:54', 47),
(0, 92, 255, '542', '', 12, NULL, NULL, 0, '2019-11-11 18:44:54', 48),
(0, 92, 256, '544_36', '', 13, NULL, NULL, 0, '2019-11-11 18:44:54', 49),
(0, 92, 256, '545_43', '', 13, NULL, NULL, 0, '2019-11-11 18:44:54', 50),
(0, 92, 257, '29', '', 14, NULL, NULL, 0, '2019-11-11 18:44:54', 51),
(0, 92, 258, '548', '', 1, NULL, NULL, 0, '2019-11-11 18:44:54', 52);

-- --------------------------------------------------------

--
-- 表的结构 `rows`
--

CREATE TABLE IF NOT EXISTS `rows` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项ID',
  `r_value` text NOT NULL COMMENT '选项内容',
  `n_id` int(11) NOT NULL COMMENT '问卷ID',
  `q_id` int(11) NOT NULL COMMENT '选项ID',
  `r_isaddtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有附加内容',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='题目选项表' AUTO_INCREMENT=73 ;

--
-- 转存表中的数据 `rows`
--

INSERT INTO `rows` (`r_id`, `r_value`, `n_id`, `q_id`, `r_isaddtion`) VALUES
(1, '打法', 57, 121, 0),
(2, '打发发', 58, 122, 0),
(3, '打发发', 59, 123, 0),
(4, '打发发', 60, 124, 0),
(5, '颜色', 61, 125, 0),
(6, '装备', 61, 125, 0),
(7, '武器', 61, 125, 0),
(8, '味道', 62, 126, 0),
(9, '色泽', 62, 126, 0),
(10, '口感', 62, 126, 0),
(11, '颜色', 63, 128, 0),
(12, '武器', 63, 128, 0),
(13, '装备', 63, 128, 0),
(14, 'aaa', 65, 133, 0),
(15, 'bbb', 65, 133, 0),
(16, 'ccc', 65, 133, 0),
(17, '服务态度', 66, 140, 0),
(18, '处理速度', 66, 140, 0),
(19, '服务质量', 66, 140, 0),
(20, '一剑', 68, 143, 0),
(21, '拇指', 68, 143, 0),
(22, '哈啊', 69, 144, 0),
(23, '的地方', 69, 144, 0),
(24, '放大', 69, 144, 0),
(25, '啊大大', 70, 147, 0),
(26, '阿道夫', 70, 147, 0),
(27, '阿达', 70, 147, 0),
(28, '100', 71, 148, 0),
(29, '外形', 88, 222, 0),
(30, '玩法', 88, 222, 0),
(31, '特色', 88, 222, 0),
(32, '外形', 88, 223, 0),
(33, '玩法', 88, 223, 0),
(34, '特色', 88, 223, 0),
(35, '外形', 88, 224, 0),
(36, '玩法', 88, 224, 0),
(37, '特色', 88, 224, 0),
(38, '外形', 88, 225, 0),
(39, '玩法', 88, 225, 0),
(40, '特色', 88, 225, 0),
(41, '姓名', 89, 229, 0),
(42, '手机', 89, 229, 0),
(43, '姓名', 90, 234, 0),
(44, '年龄', 90, 234, 0),
(45, '手机', 90, 234, 0),
(46, '姓名', 90, 235, 0),
(47, '年龄', 90, 235, 0),
(48, '手机', 90, 235, 0),
(49, '外形', 90, 236, 0),
(50, '玩法', 90, 236, 0),
(51, '装备', 90, 236, 0),
(52, '外形', 90, 237, 0),
(53, '玩法', 90, 237, 0),
(54, '装备', 90, 237, 0),
(55, '一剑', 90, 238, 0),
(56, '拇指', 90, 238, 0),
(57, '100', 90, 241, 0),
(58, '姓名', 92, 249, 0),
(59, '年龄', 92, 249, 0),
(60, '武器', 92, 250, 0),
(61, '装备', 92, 250, 0),
(62, '外形', 92, 251, 0),
(63, '颜色', 92, 251, 0),
(64, '外形', 92, 252, 0),
(65, '颜色', 92, 252, 0),
(66, '一剑', 92, 253, 0),
(67, '拇指', 92, 253, 0),
(68, '100', 92, 256, 0),
(69, 'asfd', 93, 259, 0),
(70, 'dfa', 93, 259, 0),
(71, 'asfd', 93, 260, 0),
(72, 'dfa', 93, 260, 0);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `u_name` varchar(100) NOT NULL COMMENT '姓名',
  `u_sex` int(1) NOT NULL COMMENT '性别',
  `u_class` varchar(255) NOT NULL COMMENT '班级',
  `u_number` char(10) NOT NULL COMMENT '学号',
  `u_identity` varchar(18) NOT NULL COMMENT '身份证',
  `u_birthday` varchar(8) NOT NULL COMMENT '出生日期',
  `u_nation` varchar(10) NOT NULL COMMENT '民族',
  `u_password` varchar(40) NOT NULL COMMENT '密码',
  `u_major` varchar(200) NOT NULL COMMENT '专业名称',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_sex`, `u_class`, `u_number`, `u_identity`, `u_birthday`, `u_nation`, `u_password`, `u_major`) VALUES
(1, '陈程', 0, '计算机1505', '2015002529', '33062199611223015', '19961122', '汉族', 'a9c6272e1446483f94192d621f0c54fc0e92d70f', '计算机应用');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
