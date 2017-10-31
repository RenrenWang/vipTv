-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 26, 2017 at 03:56 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `vip`
--

-- --------------------------------------------------------

--
-- Table structure for table `tmptable`
--

CREATE TABLE `tmptable` (
  `d_name1` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_art`
--

CREATE TABLE `vip_art` (
  `a_id` int(11) UNSIGNED NOT NULL,
  `a_name` varchar(255) NOT NULL DEFAULT '',
  `a_subname` varchar(255) NOT NULL,
  `a_enname` varchar(255) NOT NULL DEFAULT '',
  `a_letter` char(1) NOT NULL DEFAULT '',
  `a_color` char(6) NOT NULL DEFAULT '',
  `a_from` varchar(32) NOT NULL DEFAULT '',
  `a_author` varchar(32) NOT NULL,
  `a_tag` varchar(64) NOT NULL DEFAULT '',
  `a_pic` varchar(255) NOT NULL DEFAULT '',
  `a_type` smallint(6) NOT NULL DEFAULT '0',
  `a_topic` varchar(255) NOT NULL DEFAULT '',
  `a_level` tinyint(1) NOT NULL DEFAULT '0',
  `a_hide` tinyint(1) NOT NULL DEFAULT '0',
  `a_lock` tinyint(1) NOT NULL DEFAULT '0',
  `a_up` mediumint(8) NOT NULL DEFAULT '0',
  `a_down` mediumint(8) NOT NULL DEFAULT '0',
  `a_hits` mediumint(8) NOT NULL DEFAULT '0',
  `a_dayhits` mediumint(8) NOT NULL DEFAULT '0',
  `a_weekhits` mediumint(8) NOT NULL DEFAULT '0',
  `a_monthhits` mediumint(8) NOT NULL DEFAULT '0',
  `a_addtime` int(10) NOT NULL DEFAULT '0',
  `a_time` int(10) NOT NULL DEFAULT '0',
  `a_hitstime` int(10) NOT NULL DEFAULT '0',
  `a_maketime` int(10) NOT NULL DEFAULT '0',
  `a_remarks` varchar(255) NOT NULL DEFAULT '',
  `a_content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_art_relation`
--

CREATE TABLE `vip_art_relation` (
  `r_id` mediumint(8) NOT NULL,
  `r_type` tinyint(1) NOT NULL DEFAULT '0',
  `r_a` mediumint(8) NOT NULL DEFAULT '0',
  `r_b` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_art_topic`
--

CREATE TABLE `vip_art_topic` (
  `t_id` smallint(6) UNSIGNED NOT NULL,
  `t_name` varchar(64) NOT NULL DEFAULT '',
  `t_enname` varchar(128) NOT NULL DEFAULT '',
  `t_sort` smallint(6) NOT NULL DEFAULT '0',
  `t_tpl` varchar(128) NOT NULL DEFAULT '',
  `t_pic` varchar(255) NOT NULL DEFAULT '',
  `t_content` varchar(255) NOT NULL DEFAULT '',
  `t_key` varchar(255) NOT NULL DEFAULT '',
  `t_des` varchar(255) NOT NULL DEFAULT '',
  `t_title` varchar(255) NOT NULL DEFAULT '',
  `t_hide` tinyint(1) NOT NULL DEFAULT '0',
  `t_level` tinyint(1) NOT NULL DEFAULT '0',
  `t_up` mediumint(8) NOT NULL DEFAULT '0',
  `t_down` mediumint(8) NOT NULL DEFAULT '0',
  `t_score` decimal(3,1) NOT NULL DEFAULT '0.0',
  `t_scoreall` mediumint(8) NOT NULL DEFAULT '0',
  `t_scorenum` smallint(6) NOT NULL DEFAULT '0',
  `t_hits` mediumint(8) NOT NULL DEFAULT '0',
  `t_dayhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_weekhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_monthhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_addtime` int(10) NOT NULL DEFAULT '0',
  `t_time` int(10) NOT NULL DEFAULT '0',
  `t_hitstime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_art_type`
--

CREATE TABLE `vip_art_type` (
  `t_id` smallint(6) UNSIGNED NOT NULL,
  `t_name` varchar(64) NOT NULL DEFAULT '',
  `t_enname` varchar(128) NOT NULL DEFAULT '',
  `t_pid` smallint(6) NOT NULL DEFAULT '0',
  `t_sort` smallint(6) NOT NULL DEFAULT '0',
  `t_hide` tinyint(1) NOT NULL DEFAULT '0',
  `t_tpl` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_list` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_art` varchar(64) NOT NULL DEFAULT '',
  `t_key` varchar(255) NOT NULL DEFAULT '',
  `t_des` varchar(255) NOT NULL DEFAULT '',
  `t_title` varchar(255) NOT NULL DEFAULT '',
  `t_union` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vip_art_type`
--

INSERT INTO `vip_art_type` (`t_id`, `t_name`, `t_enname`, `t_pid`, `t_sort`, `t_hide`, `t_tpl`, `t_tpl_list`, `t_tpl_art`, `t_key`, `t_des`, `t_title`, `t_union`) VALUES
(1, '站内新闻', 'zhanneixinwen', 0, 1, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', ''),
(2, '娱乐动态', 'yuledongtai', 0, 2, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', ''),
(3, '八卦爆料', 'baguabaoliao', 0, 3, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', ''),
(4, '影片资讯', 'yingpianzixun', 0, 4, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', ''),
(5, '明星资讯', 'mingxingzixun', 0, 5, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', ''),
(6, '电视资讯', 'dianshizixun', 0, 6, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vip_comment`
--

CREATE TABLE `vip_comment` (
  `c_id` int(11) NOT NULL,
  `c_type` int(11) DEFAULT '0',
  `c_vid` int(11) DEFAULT '0',
  `c_rid` int(11) DEFAULT '0',
  `c_hide` tinyint(1) DEFAULT '0',
  `c_name` varchar(64) NOT NULL DEFAULT '',
  `c_ip` varchar(32) NOT NULL DEFAULT '',
  `c_content` varchar(128) NOT NULL DEFAULT '',
  `c_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_gbook`
--

CREATE TABLE `vip_gbook` (
  `g_id` int(11) NOT NULL,
  `g_vid` int(11) DEFAULT '0',
  `g_hide` tinyint(1) DEFAULT '0',
  `g_sort` smallint(6) NOT NULL DEFAULT '0',
  `g_name` varchar(64) NOT NULL DEFAULT '',
  `g_content` varchar(255) NOT NULL DEFAULT '',
  `g_reply` varchar(255) NOT NULL DEFAULT '',
  `g_ip` int(10) NOT NULL DEFAULT '0',
  `g_time` int(10) NOT NULL DEFAULT '0',
  `g_replytime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_link`
--

CREATE TABLE `vip_link` (
  `l_id` smallint(6) UNSIGNED NOT NULL,
  `l_name` varchar(64) NOT NULL DEFAULT '',
  `l_url` varchar(255) NOT NULL DEFAULT '',
  `l_logo` varchar(255) NOT NULL DEFAULT '',
  `l_type` tinyint(1) NOT NULL DEFAULT '0',
  `l_sort` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_manager`
--

CREATE TABLE `vip_manager` (
  `m_id` smallint(6) UNSIGNED NOT NULL,
  `m_name` varchar(32) NOT NULL DEFAULT '',
  `m_password` varchar(32) NOT NULL DEFAULT '',
  `m_levels` varchar(32) NOT NULL DEFAULT '',
  `m_random` varchar(32) NOT NULL DEFAULT '',
  `m_status` tinyint(1) NOT NULL DEFAULT '0',
  `m_logintime` int(10) NOT NULL DEFAULT '0',
  `m_loginip` int(10) NOT NULL DEFAULT '0',
  `m_loginnum` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vip_manager`
--

INSERT INTO `vip_manager` (`m_id`, `m_name`, `m_password`, `m_levels`, `m_random`, `m_status`, `m_logintime`, `m_loginip`, `m_loginnum`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'b,c,d,e,f,g,h,i,j', 'e1218473a2355b60a2c98cb0b56de0bb', 1, 1508961294, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vip_user`
--

CREATE TABLE `vip_user` (
  `u_id` mediumint(8) UNSIGNED NOT NULL,
  `u_qid` varchar(32) NOT NULL DEFAULT '',
  `u_name` varchar(32) NOT NULL DEFAULT '',
  `u_password` varchar(32) NOT NULL DEFAULT '',
  `u_qq` varchar(16) NOT NULL DEFAULT '',
  `u_email` varchar(32) NOT NULL DEFAULT '',
  `u_phone` varchar(16) NOT NULL DEFAULT '',
  `u_status` tinyint(1) NOT NULL DEFAULT '0',
  `u_flag` tinyint(1) NOT NULL DEFAULT '0',
  `u_question` varchar(255) NOT NULL DEFAULT '',
  `u_answer` varchar(255) NOT NULL DEFAULT '',
  `u_group` smallint(6) NOT NULL DEFAULT '0',
  `u_points` smallint(6) NOT NULL DEFAULT '0',
  `u_regtime` int(10) NOT NULL DEFAULT '0',
  `u_logintime` int(10) NOT NULL DEFAULT '0',
  `u_loginnum` smallint(6) NOT NULL DEFAULT '0',
  `u_extend` smallint(6) NOT NULL DEFAULT '0',
  `u_loginip` int(10) NOT NULL DEFAULT '0',
  `u_random` varchar(32) NOT NULL DEFAULT '',
  `u_fav` text NOT NULL,
  `u_plays` text NOT NULL,
  `u_downs` text NOT NULL,
  `u_start` int(10) NOT NULL DEFAULT '0',
  `u_end` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_user_card`
--

CREATE TABLE `vip_user_card` (
  `c_id` int(11) UNSIGNED NOT NULL,
  `c_number` varchar(16) NOT NULL DEFAULT '',
  `c_pass` varchar(8) NOT NULL DEFAULT '',
  `c_money` smallint(6) NOT NULL DEFAULT '0',
  `c_point` smallint(6) NOT NULL DEFAULT '0',
  `c_used` tinyint(1) NOT NULL DEFAULT '0',
  `c_sale` tinyint(1) NOT NULL DEFAULT '0',
  `c_user` smallint(6) NOT NULL DEFAULT '0',
  `c_addtime` int(10) NOT NULL DEFAULT '0',
  `c_usetime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_user_group`
--

CREATE TABLE `vip_user_group` (
  `ug_id` smallint(6) NOT NULL,
  `ug_name` varchar(32) NOT NULL DEFAULT '',
  `ug_type` varchar(255) NOT NULL DEFAULT '',
  `ug_popedom` varchar(32) NOT NULL DEFAULT '',
  `ug_upgrade` smallint(6) NOT NULL DEFAULT '0',
  `ug_popvalue` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vip_user_group`
--

INSERT INTO `vip_user_group` (`ug_id`, `ug_name`, `ug_type`, `ug_popedom`, `ug_upgrade`, `ug_popvalue`) VALUES
(1, '普通会员', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vip_user_pay`
--

CREATE TABLE `vip_user_pay` (
  `p_id` int(11) NOT NULL,
  `p_order` int(11) NOT NULL DEFAULT '0',
  `p_uid` mediumint(8) NOT NULL DEFAULT '0',
  `p_price` smallint(6) NOT NULL DEFAULT '0',
  `p_time` int(10) NOT NULL DEFAULT '0',
  `p_point` smallint(6) NOT NULL DEFAULT '0',
  `p_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_user_visit`
--

CREATE TABLE `vip_user_visit` (
  `uv_id` int(11) NOT NULL,
  `uv_uid` int(11) DEFAULT '0',
  `uv_ip` int(10) NOT NULL DEFAULT '0',
  `uv_ly` varchar(128) NOT NULL DEFAULT '',
  `uv_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_vod`
--

CREATE TABLE `vip_vod` (
  `d_id` int(11) UNSIGNED NOT NULL,
  `d_name` varchar(255) NOT NULL DEFAULT '',
  `d_subname` varchar(255) NOT NULL DEFAULT '',
  `d_enname` varchar(255) NOT NULL DEFAULT '',
  `d_letter` char(1) NOT NULL DEFAULT '',
  `d_color` char(6) NOT NULL DEFAULT '',
  `d_pic` varchar(255) NOT NULL DEFAULT '',
  `d_picthumb` varchar(255) NOT NULL DEFAULT '',
  `d_picslide` varchar(255) NOT NULL DEFAULT '',
  `d_starring` varchar(255) NOT NULL DEFAULT '',
  `d_directed` varchar(255) NOT NULL DEFAULT '',
  `d_tag` varchar(64) NOT NULL DEFAULT '',
  `d_remarks` varchar(64) NOT NULL DEFAULT '',
  `d_area` varchar(16) NOT NULL DEFAULT '',
  `d_lang` varchar(16) NOT NULL DEFAULT '',
  `d_year` smallint(4) NOT NULL DEFAULT '0',
  `d_type` smallint(6) NOT NULL DEFAULT '0',
  `d_type_expand` varchar(255) NOT NULL DEFAULT '',
  `d_class` varchar(255) NOT NULL DEFAULT '',
  `d_topic` varchar(255) NOT NULL DEFAULT '0',
  `d_hide` tinyint(1) NOT NULL DEFAULT '0',
  `d_lock` tinyint(1) NOT NULL DEFAULT '0',
  `d_state` int(8) NOT NULL DEFAULT '0',
  `d_level` tinyint(1) NOT NULL DEFAULT '0',
  `d_usergroup` smallint(6) NOT NULL DEFAULT '0',
  `d_stint` smallint(6) NOT NULL DEFAULT '0',
  `d_stintdown` smallint(6) NOT NULL DEFAULT '0',
  `d_hits` mediumint(8) NOT NULL DEFAULT '0',
  `d_dayhits` mediumint(8) NOT NULL DEFAULT '0',
  `d_weekhits` mediumint(8) NOT NULL DEFAULT '0',
  `d_monthhits` mediumint(8) NOT NULL DEFAULT '0',
  `d_duration` smallint(6) NOT NULL DEFAULT '0',
  `d_up` mediumint(8) NOT NULL DEFAULT '0',
  `d_down` mediumint(8) NOT NULL DEFAULT '0',
  `d_score` decimal(3,1) NOT NULL DEFAULT '0.0',
  `d_scoreall` mediumint(8) NOT NULL DEFAULT '0',
  `d_scorenum` smallint(6) NOT NULL DEFAULT '0',
  `d_addtime` int(10) NOT NULL DEFAULT '0',
  `d_time` int(10) NOT NULL DEFAULT '0',
  `d_hitstime` int(10) NOT NULL DEFAULT '0',
  `d_maketime` int(10) NOT NULL DEFAULT '0',
  `d_content` text NOT NULL,
  `d_playfrom` varchar(255) NOT NULL DEFAULT '',
  `d_playserver` varchar(255) NOT NULL DEFAULT '',
  `d_playnote` varchar(255) NOT NULL DEFAULT '',
  `d_playurl` mediumtext NOT NULL,
  `d_downfrom` varchar(255) NOT NULL DEFAULT '',
  `d_downserver` varchar(255) NOT NULL DEFAULT '',
  `d_downnote` varchar(255) NOT NULL DEFAULT '',
  `d_downurl` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_vod_class`
--

CREATE TABLE `vip_vod_class` (
  `c_id` smallint(6) UNSIGNED NOT NULL,
  `c_name` varchar(64) NOT NULL DEFAULT '',
  `c_pid` smallint(6) NOT NULL DEFAULT '0',
  `c_sort` smallint(6) NOT NULL DEFAULT '0',
  `c_hide` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vip_vod_class`
--

INSERT INTO `vip_vod_class` (`c_id`, `c_name`, `c_pid`, `c_sort`, `c_hide`) VALUES
(1, '惊悚', 1, 1, 0),
(2, '悬疑', 1, 2, 0),
(3, '魔幻', 1, 3, 0),
(4, '罪案', 1, 4, 0),
(5, '灾难', 1, 5, 0),
(6, '动画', 1, 6, 0),
(7, '古装', 1, 7, 0),
(8, '青春', 1, 8, 0),
(9, '歌舞', 1, 9, 0),
(10, '文艺', 1, 10, 0),
(11, '生活', 1, 10, 0),
(12, '历史', 1, 10, 0),
(13, '励志', 1, 10, 0),
(14, '预告片', 1, 10, 0),
(15, '言情', 2, 1, 0),
(16, '都市', 2, 2, 0),
(17, '家庭', 2, 3, 0),
(18, '生活', 2, 4, 0),
(19, '偶像', 2, 5, 0),
(20, '喜剧', 2, 6, 0),
(21, '历史', 2, 7, 0),
(22, '古装', 2, 8, 0),
(23, '武侠', 2, 9, 0),
(24, '刑侦', 2, 10, 0),
(25, '战争', 2, 11, 0),
(26, '神话', 2, 12, 0),
(27, '军旅', 2, 13, 0),
(28, '谍战', 2, 14, 0),
(29, '商战', 2, 15, 0),
(30, '校园', 2, 16, 0),
(31, '穿越', 2, 17, 0),
(32, '悬疑', 2, 18, 0),
(33, '犯罪', 2, 19, 0),
(34, '科幻', 2, 20, 0),
(35, '预告片', 2, 21, 0),
(36, '脱口秀', 3, 1, 0),
(37, '真人秀', 3, 2, 0),
(38, '选秀', 3, 3, 0),
(39, '情感', 3, 4, 0),
(40, '访谈', 3, 5, 0),
(41, '时尚', 3, 6, 0),
(42, '晚会', 3, 7, 0),
(43, '财经', 3, 8, 0),
(44, '益智', 3, 9, 0),
(45, '音乐', 3, 10, 0),
(46, '游戏', 3, 11, 0),
(47, '职场', 3, 12, 0),
(48, '美食', 3, 13, 0),
(49, '旅游', 3, 14, 0),
(50, '冒险', 4, 1, 0),
(51, '热血', 4, 2, 0),
(52, '搞笑', 4, 3, 0),
(53, '少女', 4, 4, 0),
(54, '推理', 4, 5, 0),
(55, '竞技', 4, 6, 0),
(56, '益智', 4, 7, 0),
(57, '童话', 4, 8, 0),
(58, '经典', 4, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vip_vod_relation`
--

CREATE TABLE `vip_vod_relation` (
  `r_id` mediumint(8) NOT NULL,
  `r_type` tinyint(1) NOT NULL DEFAULT '0',
  `r_a` mediumint(8) NOT NULL DEFAULT '0',
  `r_b` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_vod_topic`
--

CREATE TABLE `vip_vod_topic` (
  `t_id` smallint(6) UNSIGNED NOT NULL,
  `t_name` varchar(64) NOT NULL DEFAULT '',
  `t_enname` varchar(128) NOT NULL DEFAULT '',
  `t_sort` smallint(6) NOT NULL DEFAULT '0',
  `t_tpl` varchar(128) NOT NULL DEFAULT '',
  `t_pic` varchar(255) NOT NULL DEFAULT '',
  `t_content` varchar(255) NOT NULL DEFAULT '',
  `t_key` varchar(255) NOT NULL DEFAULT '',
  `t_des` varchar(255) NOT NULL DEFAULT '',
  `t_title` varchar(255) NOT NULL DEFAULT '',
  `t_hide` tinyint(1) NOT NULL DEFAULT '0',
  `t_level` tinyint(1) NOT NULL DEFAULT '0',
  `t_up` mediumint(8) NOT NULL DEFAULT '0',
  `t_down` mediumint(8) NOT NULL DEFAULT '0',
  `t_score` decimal(3,1) NOT NULL DEFAULT '0.0',
  `t_scoreall` mediumint(8) NOT NULL DEFAULT '0',
  `t_scorenum` smallint(6) NOT NULL DEFAULT '0',
  `t_hits` mediumint(8) NOT NULL DEFAULT '0',
  `t_dayhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_weekhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_monthhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_addtime` int(10) NOT NULL DEFAULT '0',
  `t_time` int(10) NOT NULL DEFAULT '0',
  `t_hitstime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vip_vod_type`
--

CREATE TABLE `vip_vod_type` (
  `t_id` smallint(6) UNSIGNED NOT NULL,
  `t_name` varchar(64) NOT NULL DEFAULT '',
  `t_enname` varchar(128) NOT NULL DEFAULT '',
  `t_pid` smallint(6) NOT NULL DEFAULT '0',
  `t_sort` smallint(6) NOT NULL DEFAULT '0',
  `t_hide` tinyint(1) NOT NULL DEFAULT '0',
  `t_tpl` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_list` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_vod` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_play` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_down` varchar(64) NOT NULL DEFAULT '',
  `t_key` varchar(255) NOT NULL DEFAULT '',
  `t_des` varchar(255) NOT NULL DEFAULT '',
  `t_title` varchar(255) NOT NULL DEFAULT '',
  `t_union` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vip_vod_type`
--

INSERT INTO `vip_vod_type` (`t_id`, `t_name`, `t_enname`, `t_pid`, `t_sort`, `t_hide`, `t_tpl`, `t_tpl_list`, `t_tpl_vod`, `t_tpl_play`, `t_tpl_down`, `t_key`, `t_des`, `t_title`, `t_union`) VALUES
(1, '电影', 'dianying', 0, 1, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(2, '连续剧', 'lianxuju', 0, 2, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(3, '综艺', 'zongyi', 0, 3, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(4, '动漫', 'dongman', 0, 4, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(5, '动作片', 'dongzuopian', 1, 11, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(6, '喜剧片', 'xijupian', 1, 12, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(7, '爱情片', 'aiqingpian', 1, 13, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(8, '科幻片', 'kehuanpian', 1, 14, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(9, '恐怖片', 'kongbupian', 1, 14, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(10, '剧情片', 'juqingpian', 1, 16, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(11, '战争片', 'zhanzhengpian', 1, 17, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(12, '国产剧', 'guochanju', 2, 21, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(13, '港台剧', 'gangtaiju', 2, 22, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(14, '日韩剧', 'rihanju', 2, 23, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(15, '欧美剧', 'oumeiju', 2, 24, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
(17, '影片排行', '影片排行', 0, 25, 0, 'label_top.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vip_art`
--
ALTER TABLE `vip_art`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `a_type` (`a_type`),
  ADD KEY `a_level` (`a_level`),
  ADD KEY `a_hits` (`a_hits`),
  ADD KEY `a_dayhits` (`a_dayhits`),
  ADD KEY `a_weekhits` (`a_weekhits`),
  ADD KEY `a_monthhits` (`a_monthhits`),
  ADD KEY `a_addtime` (`a_addtime`),
  ADD KEY `a_time` (`a_time`),
  ADD KEY `a_maketime` (`a_maketime`),
  ADD KEY `a_hide` (`a_hide`),
  ADD KEY `a_letter` (`a_letter`),
  ADD KEY `a_down` (`a_down`),
  ADD KEY `a_up` (`a_up`),
  ADD KEY `a_tag` (`a_tag`),
  ADD KEY `a_name` (`a_name`),
  ADD KEY `a_enname` (`a_enname`);

--
-- Indexes for table `vip_art_relation`
--
ALTER TABLE `vip_art_relation`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `r_type` (`r_type`),
  ADD KEY `r_a` (`r_a`),
  ADD KEY `r_b` (`r_b`);

--
-- Indexes for table `vip_art_topic`
--
ALTER TABLE `vip_art_topic`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `t_sort` (`t_sort`),
  ADD KEY `t_hide` (`t_hide`),
  ADD KEY `t_level` (`t_level`),
  ADD KEY `t_up` (`t_up`),
  ADD KEY `t_down` (`t_down`),
  ADD KEY `t_score` (`t_score`),
  ADD KEY `t_scoreall` (`t_scoreall`),
  ADD KEY `t_scorenum` (`t_scorenum`),
  ADD KEY `t_hits` (`t_hits`),
  ADD KEY `t_dayhits` (`t_dayhits`),
  ADD KEY `t_weekhits` (`t_weekhits`),
  ADD KEY `t_monthhits` (`t_monthhits`),
  ADD KEY `t_addtime` (`t_addtime`),
  ADD KEY `t_time` (`t_time`),
  ADD KEY `t_hitstime` (`t_hitstime`);

--
-- Indexes for table `vip_art_type`
--
ALTER TABLE `vip_art_type`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `t_pid` (`t_pid`),
  ADD KEY `t_sort` (`t_sort`),
  ADD KEY `t_hide` (`t_hide`);

--
-- Indexes for table `vip_comment`
--
ALTER TABLE `vip_comment`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `c_vid` (`c_vid`),
  ADD KEY `c_type` (`c_type`),
  ADD KEY `c_rid` (`c_rid`),
  ADD KEY `c_time` (`c_time`),
  ADD KEY `c_hide` (`c_hide`);

--
-- Indexes for table `vip_gbook`
--
ALTER TABLE `vip_gbook`
  ADD PRIMARY KEY (`g_id`),
  ADD KEY `g_vid` (`g_vid`),
  ADD KEY `g_time` (`g_time`),
  ADD KEY `g_hide` (`g_hide`),
  ADD KEY `g_sort` (`g_sort`),
  ADD KEY `g_replytime` (`g_replytime`);

--
-- Indexes for table `vip_link`
--
ALTER TABLE `vip_link`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `l_sort` (`l_sort`),
  ADD KEY `l_type` (`l_type`);

--
-- Indexes for table `vip_manager`
--
ALTER TABLE `vip_manager`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `m_status` (`m_status`);

--
-- Indexes for table `vip_user`
--
ALTER TABLE `vip_user`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `u_group` (`u_group`),
  ADD KEY `u_status` (`u_status`);

--
-- Indexes for table `vip_user_card`
--
ALTER TABLE `vip_user_card`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `c_used` (`c_used`),
  ADD KEY `c_sale` (`c_sale`),
  ADD KEY `c_user` (`c_user`),
  ADD KEY `c_addtime` (`c_addtime`),
  ADD KEY `c_usetime` (`c_usetime`);

--
-- Indexes for table `vip_user_group`
--
ALTER TABLE `vip_user_group`
  ADD PRIMARY KEY (`ug_id`),
  ADD KEY `ug_upgrade` (`ug_upgrade`),
  ADD KEY `ug_popvalue` (`ug_popvalue`);

--
-- Indexes for table `vip_user_pay`
--
ALTER TABLE `vip_user_pay`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `p_order` (`p_order`),
  ADD KEY `p_uid` (`p_uid`),
  ADD KEY `p_status` (`p_status`);

--
-- Indexes for table `vip_user_visit`
--
ALTER TABLE `vip_user_visit`
  ADD PRIMARY KEY (`uv_id`);

--
-- Indexes for table `vip_vod`
--
ALTER TABLE `vip_vod`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `d_type` (`d_type`),
  ADD KEY `d_state` (`d_state`),
  ADD KEY `d_level` (`d_level`),
  ADD KEY `d_hits` (`d_hits`),
  ADD KEY `d_dayhits` (`d_dayhits`),
  ADD KEY `d_weekhits` (`d_weekhits`),
  ADD KEY `d_monthhits` (`d_monthhits`),
  ADD KEY `d_stint` (`d_stint`),
  ADD KEY `d_stintdown` (`d_stintdown`),
  ADD KEY `d_hide` (`d_hide`),
  ADD KEY `d_usergroup` (`d_usergroup`),
  ADD KEY `d_score` (`d_score`),
  ADD KEY `d_addtime` (`d_addtime`),
  ADD KEY `d_time` (`d_time`),
  ADD KEY `d_maketime` (`d_maketime`),
  ADD KEY `d_topic` (`d_topic`),
  ADD KEY `d_letter` (`d_letter`),
  ADD KEY `d_name` (`d_name`),
  ADD KEY `d_enname` (`d_enname`),
  ADD KEY `d_year` (`d_year`),
  ADD KEY `d_area` (`d_area`),
  ADD KEY `d_language` (`d_lang`),
  ADD KEY `d_starring` (`d_starring`),
  ADD KEY `d_directed` (`d_directed`),
  ADD KEY `d_tag` (`d_tag`),
  ADD KEY `d_type_expand` (`d_type_expand`),
  ADD KEY `d_class` (`d_class`),
  ADD KEY `d_lock` (`d_lock`),
  ADD KEY `d_up` (`d_up`),
  ADD KEY `d_down` (`d_down`),
  ADD KEY `d_scoreall` (`d_scoreall`),
  ADD KEY `d_scorenum` (`d_scorenum`);

--
-- Indexes for table `vip_vod_class`
--
ALTER TABLE `vip_vod_class`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `c_sort` (`c_sort`),
  ADD KEY `c_pid` (`c_pid`),
  ADD KEY `c_hide` (`c_hide`);

--
-- Indexes for table `vip_vod_relation`
--
ALTER TABLE `vip_vod_relation`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `r_type` (`r_type`),
  ADD KEY `r_a` (`r_a`),
  ADD KEY `r_b` (`r_b`);

--
-- Indexes for table `vip_vod_topic`
--
ALTER TABLE `vip_vod_topic`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `t_sort` (`t_sort`),
  ADD KEY `t_hide` (`t_hide`),
  ADD KEY `t_level` (`t_level`),
  ADD KEY `t_up` (`t_up`),
  ADD KEY `t_down` (`t_down`),
  ADD KEY `t_score` (`t_score`),
  ADD KEY `t_scoreall` (`t_scoreall`),
  ADD KEY `t_scorenum` (`t_scorenum`),
  ADD KEY `t_hits` (`t_hits`),
  ADD KEY `t_dayhits` (`t_dayhits`),
  ADD KEY `t_weekhits` (`t_weekhits`),
  ADD KEY `t_monthhits` (`t_monthhits`),
  ADD KEY `t_addtime` (`t_addtime`),
  ADD KEY `t_time` (`t_time`),
  ADD KEY `t_hitstime` (`t_hitstime`);

--
-- Indexes for table `vip_vod_type`
--
ALTER TABLE `vip_vod_type`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `t_sort` (`t_sort`),
  ADD KEY `t_pid` (`t_pid`),
  ADD KEY `t_hide` (`t_hide`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vip_art`
--
ALTER TABLE `vip_art`
  MODIFY `a_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_art_relation`
--
ALTER TABLE `vip_art_relation`
  MODIFY `r_id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_art_topic`
--
ALTER TABLE `vip_art_topic`
  MODIFY `t_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_art_type`
--
ALTER TABLE `vip_art_type`
  MODIFY `t_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `vip_comment`
--
ALTER TABLE `vip_comment`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_gbook`
--
ALTER TABLE `vip_gbook`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_link`
--
ALTER TABLE `vip_link`
  MODIFY `l_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_manager`
--
ALTER TABLE `vip_manager`
  MODIFY `m_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vip_user`
--
ALTER TABLE `vip_user`
  MODIFY `u_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_user_card`
--
ALTER TABLE `vip_user_card`
  MODIFY `c_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_user_group`
--
ALTER TABLE `vip_user_group`
  MODIFY `ug_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vip_user_pay`
--
ALTER TABLE `vip_user_pay`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_user_visit`
--
ALTER TABLE `vip_user_visit`
  MODIFY `uv_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_vod`
--
ALTER TABLE `vip_vod`
  MODIFY `d_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_vod_class`
--
ALTER TABLE `vip_vod_class`
  MODIFY `c_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `vip_vod_relation`
--
ALTER TABLE `vip_vod_relation`
  MODIFY `r_id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `vip_vod_topic`
--
ALTER TABLE `vip_vod_topic`
  MODIFY `t_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vip_vod_type`
--
ALTER TABLE `vip_vod_type`
  MODIFY `t_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;