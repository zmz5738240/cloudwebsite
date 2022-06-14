SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for think_ad
-- ----------------------------
DROP TABLE IF EXISTS `think_ad`;
CREATE TABLE `think_ad`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ad_position_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '广告位',
  `link_url` VARCHAR(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `opentype` int(11) NOT NULL DEFAULT 0 COMMENT '打开方式\r\n0 本窗口\r\n1 新窗口',
  `images` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL COMMENT '开始时间',
  `end_date` date NULL DEFAULT NULL COMMENT '结束时间',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `closed` tinyint(1) NULL DEFAULT 0,
  `orderby` tinyint(3) NULL DEFAULT 100,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_ad
-- ----------------------------
INSERT INTO `think_ad` VALUES (4, 'pc1', '23', 'http://www.baidu.com', 1, '20190419/fa7b49cbf6d39b1b228487f5f8d26ec2.jpg', '0000-00-00', '0000-00-00', 1, 0, 100);
INSERT INTO `think_ad` VALUES (7, 'wap1', '24', 'http://www.baidu.com', 1, '20190419/fa7b49cbf6d39b1b228487f5f8d26ec2.jpg', '0000-00-00', '0000-00-00', 1, 0, 100);

-- ----------------------------
-- Table structure for think_ad_position
-- ----------------------------
DROP TABLE IF EXISTS `think_ad_position`;
CREATE TABLE `think_ad_position`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `orderby` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '100' COMMENT '排序',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_ad_position
-- ----------------------------
INSERT INTO `think_ad_position` VALUES (22, '友情连接', '50', 1519662297, 1519662297, 0);
INSERT INTO `think_ad_position` VALUES (23, 'PC端banner大图切换', '50', 1528013034, 1528013034, 1);
INSERT INTO `think_ad_position` VALUES (24, 'WAP端banner大图切换', '50', 1528013051, 1528013051, 1);
INSERT INTO `think_ad_position` VALUES (25, '卡密底部广告位', '50', 1528292268, 1528292268, 0);
INSERT INTO `think_ad_position` VALUES (26, '积分商城PC-banner', '50', 1546506381, 1546506381, 0);
INSERT INTO `think_ad_position` VALUES (27, '积分商城WAP-banner', '50', 1546506381, 1546506381, 0);

-- ----------------------------
-- Table structure for DROP TABLE IF EXISTS `think_addmaillog`;
DROP TABLE IF EXISTS `think_addmaillog`;
CREATE TABLE `think_addmaillog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addbiaoshi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '补货标示',
  `addnum` int(11) NOT NULL DEFAULT 0 COMMENT '补货数量',
  `successnum` int(11) NOT NULL DEFAULT 0 COMMENT '成功数量',
  `failnum` int(11) NOT NULL DEFAULT 0 COMMENT '失败数量',
  `existnum` int(11) NOT NULL DEFAULT 0 COMMENT '存在数量',
  `userip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作ip',
  `goodid` int(11) NOT NULL DEFAULT 0 COMMENT '商品ID',
  `addqudao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '添加渠道',
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `addbiaoshi`(`addbiaoshi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for think_admin
-- ----------------------------
DROP TABLE IF EXISTS `think_admin`;
CREATE TABLE `think_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '密码',
  `superpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '超级密码',
  `portrait` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像',
  `loginnum` int(11) NULL DEFAULT 0 COMMENT '登陆次数',
  `last_login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) NULL DEFAULT 0 COMMENT '最后登录时间',
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '真实姓名',
  `status` int(1) NULL DEFAULT 0 COMMENT '状态',
  `groupid` int(11) NULL DEFAULT 1 COMMENT '用户角色id',
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_admin
-- ----------------------------
INSERT INTO `think_admin` VALUES (1, 'admin', '218dbb225911693af03a713581a7227f', '', '20161122\\admin.jpg', 882, '222.86.90.128', 1649418241, 'bolefaka', 1, 1, '050149f273e3ecd2fe6b146abe2c7c62');

-- ----------------------------
-- Table structure for think_amount_total_log
-- ----------------------------
DROP TABLE IF EXISTS `think_amount_total_log`;
CREATE TABLE `think_amount_total_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0,
  `czmoney` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '充值总金额',
  `zsmoney` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '赠送总金额',
  `xfmoney` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '消费总金额',
  `yjmoney` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '佣金总金额',
  `txmoney` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '成功提现总金额',
  `fzmoney` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '分站佣金总金额',
  `fxmoney` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '分销佣金总金额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `memberid`(`memberid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_amount_total_log
-- ----------------------------

-- ----------------------------
-- Table structure for think_article
-- ----------------------------
DROP TABLE IF EXISTS `think_article`;
CREATE TABLE `think_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章逻辑ID',
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章标题',
  `cate_id` int(11) NOT NULL DEFAULT 1 COMMENT '文章类别',
  `photo` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '文章图片',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '文章描述',
  `keyword` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '文章关键字',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章内容',
  `views` int(11) NOT NULL DEFAULT 1 COMMENT '浏览量',
  `status` tinyint(1) NULL DEFAULT NULL,
  `type` int(1) NOT NULL DEFAULT 1 COMMENT '文章类型',
  `is_tui` int(1) NULL DEFAULT 0 COMMENT '是否推荐',
  `from` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '来源',
  `writer` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `ip` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `a_title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_article
-- ----------------------------
INSERT INTO `think_article` VALUES (69, '公告使用教程', 1, '', '公告使用教程', '公告使用教程', '<p style=\"text-align: center;\"><img src=\"/uploads/image/20190419/1555684362106094.png\" title=\"1555684362106094.png\" alt=\"goumaizn01.png\"/></p><p style=\"font-family: 宋体, Arial, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.baidu.com\" target=\"_self\"><span style=\"color: rgb(255, 0, 0); font-size: 20px;\">http://www.baidu.com</span></a><span style=\"color: rgb(255, 0, 0); font-size: 20px;\">&nbsp;更多源码程序请访问我们官网</span></p><p style=\"font-family: 宋体, Arial, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 0, 0); font-size: 18px;\"></span></p><p style=\"font-family: 宋体, Arial, Helvetica, sans-serif; white-space: normal; font-size: 13.3333px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 0, 0); font-size: 20px;\">买家须知：本站为演示站，所有商品仅为演示，无法正常使用！</span></p><p style=\"font-family: 宋体, Arial, Helvetica, sans-serif; white-space: normal; font-size: 13.3333px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 0, 0); font-size: 20px;\">关于充值：充值的金额网站永久保存 &nbsp;&nbsp;<span style=\"color: rgb(38, 38, 38); background-color: rgb(255, 192, 0);\">工作时间：早11点-晚12点</span></span></p><p><br/></p>', 1, 1, 1, 1, '', '', '', 1508947963, 1570516046);
INSERT INTO `think_article` VALUES (80, '免责声明', 3, '', '免责声明', '免责声明', '<p><span style=\"color: rgb(0, 3, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 900; background-color: rgb(255, 255, 255);\">1.本站账号所有权归官网所有,只保证账号密码正确,使用方面请自行测试好再买,若本站销售邮箱账号侵犯了贵司版权,请联系本站客服。&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(0, 3, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 900; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(0, 3, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 900; background-color: rgb(255, 255, 255);\">2.请不要用作任何违法途径，或者用作不法犯罪活动，本站只有义务出租，但无法行驶使用权，您拥有使用权以后，请您合法利用，切勿游走法律边缘!&nbsp;</span></p>', 1, 1, 1, 1, '', '', '', 1519492431, 1555548253);
INSERT INTO `think_article` VALUES (81, '文章演示', 2, '', '', '', '&lt;p&gt;请到后台文章列表修改&lt;/p&gt;', 1, 1, 1, 1, '', '', '', 1551250719, 1555683906);

-- ----------------------------
-- Table structure for think_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `think_article_cate`;
CREATE TABLE `think_article_cate`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `orderby` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '100' COMMENT '排序',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_article_cate
-- ----------------------------
INSERT INTO `think_article_cate` VALUES (1, '首页公告', '1', 1477140627, 1509046488, 1);
INSERT INTO `think_article_cate` VALUES (2, '常见问题', '2', 1477140627, 1509184116, 1);
INSERT INTO `think_article_cate` VALUES (3, '免责声明', '3', 1477140604, 1509182377, 1);
INSERT INTO `think_article_cate` VALUES (21, '其他分类', '50', 1509183316, 1509183316, 1);

-- ----------------------------
-- Table structure for think_attach
-- ----------------------------
DROP TABLE IF EXISTS `think_attach`;
CREATE TABLE `think_attach`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '附加选项标题',
  `tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '附加提示',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `attachgroupid` int(11) NOT NULL DEFAULT 0 COMMENT '分类id',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of think_attach
-- ----------------------------
INSERT INTO `think_attach` VALUES (1, '地址', '', 0, 1, 1, 0, 0);
INSERT INTO `think_attach` VALUES (2, '电话', '', 0, 1, 1, 0, 0);
INSERT INTO `think_attach` VALUES (3, 'QQ', '', 0, 1, 1, 0, 0);

-- ----------------------------
-- Table structure for think_attach_group
-- ----------------------------
DROP TABLE IF EXISTS `think_attach_group`;
CREATE TABLE `think_attach_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '附加选项分类名字',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_attach_group
-- ----------------------------
INSERT INTO `think_attach_group` VALUES (1, '收费地址 电话  QQ', 1, 1648041286, 1648041286);

-- ----------------------------
-- Table structure for think_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group`;
CREATE TABLE `think_auth_group`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_auth_group
-- ----------------------------
INSERT INTO `think_auth_group` VALUES (1, '超级管理员', 1, '', 948766274, 948766274);

-- ----------------------------
-- Table structure for think_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group_access`;
CREATE TABLE `think_auth_group_access`  (
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_auth_group_access
-- ----------------------------
INSERT INTO `think_auth_group_access` VALUES (1, 1);
INSERT INTO `think_auth_group_access` VALUES (13, 4);

-- ----------------------------
-- Table structure for think_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_rule`;
CREATE TABLE `think_auth_rule`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `css` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '样式',
  `condition` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父栏目ID',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_auth_rule
-- ----------------------------
INSERT INTO `think_auth_rule` VALUES (1, '#', '系统管理', 1, 1, 'fa fa-gear', '', 0, 1, 1446535750, 1477312169);
INSERT INTO `think_auth_rule` VALUES (2, 'admin/user/index', '用户管理', 1, 0, '', '', 1, 10, 1446535750, 1477312169);
INSERT INTO `think_auth_rule` VALUES (3, 'admin/role/index', '角色管理', 1, 0, '', '', 1, 20, 1446535750, 1477312169);
INSERT INTO `think_auth_rule` VALUES (4, 'admin/menu/index', '菜单管理', 1, 0, '', '', 1, 30, 1446535750, 1477312169);
INSERT INTO `think_auth_rule` VALUES (5, '#', '数据库管理', 1, 0, 'fa fa-database', '', 0, 2, 1446535750, 1477312169);
INSERT INTO `think_auth_rule` VALUES (6, 'admin/data/index', '数据库备份', 1, 1, '', '', 5, 50, 1446535750, 1477312169);
INSERT INTO `think_auth_rule` VALUES (7, 'admin/data/optimize', '优化表', 1, 1, '', '', 6, 50, 1477312169, 1477312169);
INSERT INTO `think_auth_rule` VALUES (8, 'admin/data/repair', '修复表', 1, 1, '', '', 6, 50, 1477312169, 1477312169);
INSERT INTO `think_auth_rule` VALUES (9, 'admin/user/useradd', '添加用户', 1, 1, '', '', 2, 50, 1477312169, 1477312169);
INSERT INTO `think_auth_rule` VALUES (10, 'admin/user/useredit', '编辑用户', 1, 1, '', '', 2, 50, 1477312169, 1477312169);
INSERT INTO `think_auth_rule` VALUES (11, 'admin/user/userdel', '删除用户', 1, 1, '', '', 2, 50, 1477312169, 1477312169);
INSERT INTO `think_auth_rule` VALUES (12, 'admin/user/user_state', '用户状态', 1, 1, '', '', 2, 50, 1477312169, 1477312169);
INSERT INTO `think_auth_rule` VALUES (13, '#', '日志管理', 1, 1, 'fa fa-tasks', '', 0, 6, 1477312169, 1477312169);
INSERT INTO `think_auth_rule` VALUES (14, 'admin/log/operate_log', '行为日志', 1, 1, '', '', 13, 50, 1477312169, 1477312169);
INSERT INTO `think_auth_rule` VALUES (22, 'admin/log/del_log', '删除日志', 1, 1, '', '', 14, 50, 1477312169, 1477316778);
INSERT INTO `think_auth_rule` VALUES (24, '#', '文章管理', 1, 1, 'fa fa-paste', '', 0, 4, 1477312169, 1477312169);
INSERT INTO `think_auth_rule` VALUES (25, 'admin/article/index_cate', '文章分类', 1, 1, '', '', 24, 10, 1477312260, 1477312260);
INSERT INTO `think_auth_rule` VALUES (26, 'admin/article/index', '文章列表', 1, 1, '', '', 24, 20, 1477312333, 1477312333);
INSERT INTO `think_auth_rule` VALUES (27, 'admin/data/import', '数据库还原', 1, 1, '', '', 5, 50, 1477639870, 1477639870);
INSERT INTO `think_auth_rule` VALUES (28, 'admin/data/revert', '还原', 1, 1, '', '', 27, 50, 1477639972, 1477639972);
INSERT INTO `think_auth_rule` VALUES (29, 'admin/data/del', '删除', 1, 1, '', '', 27, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (30, 'admin/role/roleAdd', '添加角色', 1, 1, '', '', 3, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (31, 'admin/role/roleEdit', '编辑角色', 1, 1, '', '', 3, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (32, 'admin/role/roleDel', '删除角色', 1, 1, '', '', 3, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (33, 'admin/role/role_state', '角色状态', 1, 1, '', '', 3, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (34, 'admin/role/giveAccess', '权限分配', 1, 1, '', '', 3, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (35, 'admin/menu/add_rule', '添加菜单', 1, 1, '', '', 4, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (36, 'admin/menu/edit_rule', '编辑菜单', 1, 1, '', '', 4, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (37, 'admin/menu/del_rule', '删除菜单', 1, 1, '', '', 4, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (38, 'admin/menu/rule_state', '菜单状态', 1, 1, '', '', 4, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (39, 'admin/menu/ruleorder', '菜单排序', 1, 1, '', '', 4, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (40, 'admin/article/add_cate', '添加分类', 1, 1, '', '', 25, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (41, 'admin/article/edit_cate', '编辑分类', 1, 1, '', '', 25, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (42, 'admin/article/del_cate', '删除分类', 1, 1, '', '', 25, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (43, 'admin/article/cate_state', '分类状态', 1, 1, '', '', 25, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (44, 'admin/article/add_article', '添加文章', 1, 1, '', '', 26, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (45, 'admin/article/edit_article', '编辑文章', 1, 1, '', '', 26, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (46, 'admin/article/del_article', '删除文章', 1, 1, '', '', 26, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (47, 'admin/article/article_state', '文章状态', 1, 1, '', '', 26, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (48, '#', '广告管理', 1, 1, 'fa fa-image', '', 0, 10, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (49, 'admin/adda/index_position', '广告位', 1, 1, '', '', 48, 10, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (50, 'admin/adda/add_position', '添加广告位', 1, 1, '', '', 49, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (51, 'admin/adda/edit_position', '编辑广告位', 1, 1, '', '', 49, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (52, 'admin/adda/del_position', '删除广告位', 1, 1, '', '', 49, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (53, 'admin/adda/position_state', '广告位状态', 1, 1, '', '', 49, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (54, 'admin/adda/index', '广告列表', 1, 1, '', '', 48, 20, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (55, 'admin/adda/add_ad', '添加广告', 1, 1, '', '', 54, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (56, 'admin/adda/edit_ad', '编辑广告', 1, 1, '', '', 54, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (57, 'admin/adda/del_ad', '删除广告', 1, 1, '', '', 54, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (58, 'admin/adda/ad_state', '广告状态', 1, 1, '', '', 54, 50, 1477640011, 1477640011);
INSERT INTO `think_auth_rule` VALUES (61, 'admin/config/index', '配置管理', 1, 1, '', '', 1, 50, 1479908607, 1479908607);
INSERT INTO `think_auth_rule` VALUES (62, 'admin/config/index', '配置列表', 1, 1, '', '', 61, 50, 1479908607, 1487943813);
INSERT INTO `think_auth_rule` VALUES (63, 'admin/config/save', '保存配置', 1, 1, '', '', 61, 50, 1479908607, 1487943831);
INSERT INTO `think_auth_rule` VALUES (70, '#', '会员管理', 1, 1, 'fa fa-users', '', 0, 3, 1484103066, 1484103066);
INSERT INTO `think_auth_rule` VALUES (71, 'admin/member/group', '会员组', 1, 1, '', '', 70, 10, 1484103304, 1484103304);
INSERT INTO `think_auth_rule` VALUES (72, 'admin/member/add_group', '添加会员组', 1, 1, '', '', 71, 50, 1484103304, 1484103304);
INSERT INTO `think_auth_rule` VALUES (73, 'admin/member/edit_group', '编辑会员组', 1, 1, '', '', 71, 50, 1484103304, 1484103304);
INSERT INTO `think_auth_rule` VALUES (74, 'admin/member/del_group', '删除会员组', 1, 1, '', '', 71, 50, 1484103304, 1484103304);
INSERT INTO `think_auth_rule` VALUES (75, 'admin/member/index', '会员列表', 1, 1, '', '', 70, 20, 1484103304, 1484103304);
INSERT INTO `think_auth_rule` VALUES (76, 'admin/member/add_member', '添加会员', 1, 1, '', '', 75, 50, 1484103304, 1484103304);
INSERT INTO `think_auth_rule` VALUES (77, 'admin/member/edit_member', '编辑会员', 1, 1, '', '', 75, 50, 1484103304, 1484103304);
INSERT INTO `think_auth_rule` VALUES (78, 'admin/member/del_member', '删除会员', 1, 1, '', '', 75, 50, 1484103304, 1484103304);
INSERT INTO `think_auth_rule` VALUES (79, 'admin/member/member_status', '会员状态', 1, 1, '', '', 75, 50, 1484103304, 1487937671);
INSERT INTO `think_auth_rule` VALUES (80, 'admin/member/group_status', '会员组状态', 1, 1, '', '', 71, 50, 1484103304, 1484103304);
INSERT INTO `think_auth_rule` VALUES (83, '#', '示例', 1, 1, 'fa fa-paper-plane', '', 0, 9999, 1505281878, 1505281878);
INSERT INTO `think_auth_rule` VALUES (84, 'admin/demo/sms', '发送短信', 1, 1, '', '', 83, 50, 1505281944, 1505281944);
INSERT INTO `think_auth_rule` VALUES (85, '#', '商品管理', 1, 1, 'fa fa-bars', '', 0, 0, 1508437972, 1508439483);
INSERT INTO `think_auth_rule` VALUES (86, 'admin/category/index', '商品列表', 1, 1, 'fa fa-user', '', 85, 1, 1508438206, 1508469392);
INSERT INTO `think_auth_rule` VALUES (87, 'admin/category/group', '商品类目', 1, 1, '', '', 85, 0, 1508438708, 1508467083);
INSERT INTO `think_auth_rule` VALUES (88, 'admin/order/index', '订单管理', 1, 1, '', '', 85, 50, 1508945833, 1508945833);
INSERT INTO `think_auth_rule` VALUES (89, 'admin/demo/email', '测试发邮件', 1, 1, '', '', 83, 50, 1524652296, 1524652296);
INSERT INTO `think_auth_rule` VALUES (90, 'admin/navigation/index', '导航管理', 1, 1, 'fa fa-navicon', '', 1, 50, 1525163585, 1525163585);
INSERT INTO `think_auth_rule` VALUES (91, 'admin/attach/index', '附加选项', 1, 1, '', '', 85, 50, 1526014328, 1526014328);
INSERT INTO `think_auth_rule` VALUES (92, '#', '营销管理', 1, 1, 'fa fa-pie-chart', '', 0, 4, 1529028772, 1532764493);
INSERT INTO `think_auth_rule` VALUES (93, 'admin/market/index', '分销配置', 1, 1, '', '', 92, 50, 1529031302, 1529031302);
INSERT INTO `think_auth_rule` VALUES (94, 'admin/member/groupprice', '会员组价格', 1, 1, '', '', 70, 50, 1529829066, 1531662846);
INSERT INTO `think_auth_rule` VALUES (95, 'admin/member/memberprice', '会员私密价格', 1, 1, '', '', 70, 50, 1529829089, 1530699415);
INSERT INTO `think_auth_rule` VALUES (96, 'admin/log/member_payorder_log', '充值日志', 1, 1, '', '', 13, 50, 1532170856, 1532195957);
INSERT INTO `think_auth_rule` VALUES (97, 'admin/log/member_money_log', '财务明细', 1, 1, '', '', 13, 50, 1532170883, 1532197470);
INSERT INTO `think_auth_rule` VALUES (98, 'admin/log/member_integral_log', '积分明细', 1, 1, '', '', 13, 50, 1532170905, 1532197812);
INSERT INTO `think_auth_rule` VALUES (99, 'admin/give/index', '充值赠送', 1, 1, '', '', 70, 50, 1532882547, 1532889971);
INSERT INTO `think_auth_rule` VALUES (100, 'admin/log/member_login_log', '会员登录日志', 1, 1, '', '', 13, 50, 1532930321, 1532930321);
INSERT INTO `think_auth_rule` VALUES (101, 'admin/log/member_tgmoney_log', '佣金明细', 1, 1, '', '', 92, 50, 1536980329, 1536980329);
INSERT INTO `think_auth_rule` VALUES (102, 'admin/log/member_tixian_log', '提现处理', 1, 1, '', '', 13, 50, 1537285474, 1537285474);
INSERT INTO `think_auth_rule` VALUES (103, '#', '分站管理', 1, 1, 'fa fa-child', '', 0, 5, 1537930138, 1537930532);
INSERT INTO `think_auth_rule` VALUES (104, 'admin/subwebsite/index', '分站配置', 1, 1, '', '', 103, 50, 1537930159, 1537930553);
INSERT INTO `think_auth_rule` VALUES (105, 'admin/subwebsite/sublist', '分站列表', 1, 1, '', '', 103, 50, 1537930178, 1540434757);
INSERT INTO `think_auth_rule` VALUES (106, '#', '积分商城', 1, 1, 'fa  fa-shopping-cart', '', 0, 50, 1545902519, 1545902519);
INSERT INTO `think_auth_rule` VALUES (107, 'admin/integralmall/group', '商品类目', 1, 1, '', '', 106, 50, 1545902638, 1545902638);
INSERT INTO `think_auth_rule` VALUES (108, 'admin/integralmall/index', '商品列表', 1, 1, '', '', 106, 50, 1545902682, 1545902682);
INSERT INTO `think_auth_rule` VALUES (109, 'admin/integralmall/order', '兑换记录', 1, 1, '', '', 106, 50, 1546675492, 1546676755);
INSERT INTO `think_auth_rule` VALUES (110, '#', '免签支付', 1, 1, 'fa fa-credit-card', '', 0, 50, 1557889535, 1557890059);
INSERT INTO `think_auth_rule` VALUES (111, 'admin/mq/orderlist', '免签订单', 1, 1, '', '', 110, 5, 1557889568, 1557890323);
INSERT INTO `think_auth_rule` VALUES (112, 'admin/mq/setting', '免签设置', 1, 1, '', '', 110, 1, 1557889615, 1557890308);
INSERT INTO `think_auth_rule` VALUES (113, 'admin/mq/jk', '监控端设置', 1, 1, '', '', 110, 2, 1557889649, 1557889649);
INSERT INTO `think_auth_rule` VALUES (114, 'admin/mq/qrcodelist', '二维码管理', 1, 1, '', '', 110, 3, 1557889680, 1557889680);
INSERT INTO `think_auth_rule` VALUES (115, 'admin/mq/addqrcode', '新增二维码', 1, 1, '', '', 110, 4, 1557889710, 1557889710);
INSERT INTO `think_auth_rule` VALUES (116, 'admin/Upgrade/index', '在线更新', 1, 1, 'fa fa-cloud-download', '', 1, 50, 1647587215, 1647587438);

-- ----------------------------
-- Table structure for think_category_group
-- ----------------------------
DROP TABLE IF EXISTS `think_category_group`;
CREATE TABLE `think_category_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名字',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '分类状态',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `yunimgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '颜色',
  `css` int(11) NOT NULL DEFAULT 0 COMMENT '0 三行\r\n1 二行\r\n2 一行',
  `loucengname` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '楼层名称',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_category_group
-- ----------------------------
INSERT INTO `think_category_group` VALUES (23, '分类1👮🙆💁🙋', 1, 10, '', '', '', 1, '分类1👧👸💂🎅', 1555681790, 1649418278);
INSERT INTO `think_category_group` VALUES (24, '分类2', 1, 20, '', '', '', 1, '分类2', 1555681913, 1555683224);
INSERT INTO `think_category_group` VALUES (25, '其他分类', 1, 30, '', '', '', 1, '其他分类', 1555681930, 1555683252);

-- ----------------------------
-- Table structure for think_child_ad
-- ----------------------------
DROP TABLE IF EXISTS `think_child_ad`;
CREATE TABLE `think_child_ad`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ad_position_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '广告位',
  `link_url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `opentype` int(11) NOT NULL DEFAULT 0 COMMENT '打开方式\r\n0 本窗口\r\n1 新窗口',
  `images` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL COMMENT '开始时间',
  `end_date` date NULL DEFAULT NULL COMMENT '结束时间',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
  `closed` tinyint(1) NULL DEFAULT 0,
  `orderby` tinyint(3) NULL DEFAULT 100,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_child_ad
-- ----------------------------

-- ----------------------------
-- Table structure for think_child_article
-- ----------------------------
DROP TABLE IF EXISTS `think_child_article`;
CREATE TABLE `think_child_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章逻辑ID',
  `memberid` int(11) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章标题',
  `cate_id` int(11) NOT NULL DEFAULT 1 COMMENT '文章类别',
  `photo` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '文章图片',
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '文章描述',
  `keyword` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '文章关键字',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章内容',
  `views` int(11) NOT NULL DEFAULT 1 COMMENT '浏览量',
  `status` tinyint(1) NULL DEFAULT 1,
  `type` int(1) NOT NULL DEFAULT 1 COMMENT '文章类型',
  `is_tui` int(1) NULL DEFAULT 0 COMMENT '是否推荐',
  `from` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '来源',
  `writer` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `ip` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `a_title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_child_article
-- ----------------------------

-- ----------------------------
-- Table structure for think_child_config
-- ----------------------------
DROP TABLE IF EXISTS `think_child_config`;
CREATE TABLE `think_child_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_child_config
-- ----------------------------

-- ----------------------------
-- Table structure for think_child_fl
-- ----------------------------
DROP TABLE IF EXISTS `think_child_fl`;
CREATE TABLE `think_child_fl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0,
  `goodid` int(11) NOT NULL DEFAULT 0,
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `mprice_bz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `mprice` decimal(10, 2) NOT NULL DEFAULT -1.00,
  `mnotice` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `yunimgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `marketprice` decimal(10, 2) NOT NULL DEFAULT -1.00,
  `xqnotice` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT -1,
  `sort` int(11) NOT NULL DEFAULT -1,
  `msgboxtip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `tuijian` int(11) NOT NULL DEFAULT -1,
  `hot` int(11) NOT NULL DEFAULT -1,
  `ykongge` int(11) NOT NULL DEFAULT -1,
  `zkongge` int(11) NOT NULL DEFAULT -1,
  `color` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `kamitou` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `kamiwei` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `memgood`(`memberid`, `goodid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_child_fl
-- ----------------------------

-- ----------------------------
-- Table structure for think_child_navigation
-- ----------------------------
DROP TABLE IF EXISTS `think_child_navigation`;
CREATE TABLE `think_child_navigation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航名字',
  `opentype` int(11) NOT NULL DEFAULT 0 COMMENT '打开方式\r\n0 本窗口\r\n1 新窗口',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 不启用\r\n1 启用',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 url',
  `groupid` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_child_navigation
-- ----------------------------

-- ----------------------------
-- Table structure for think_config
-- ----------------------------
DROP TABLE IF EXISTS `think_config`;
CREATE TABLE `think_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '配置名称',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_config
-- ----------------------------
INSERT INTO `think_config` VALUES (1, 'web_site_title', '系统分销版');
INSERT INTO `think_config` VALUES (2, 'web_site_description', '系统分销版');
INSERT INTO `think_config` VALUES (3, 'web_site_keyword', '');
INSERT INTO `think_config` VALUES (4, 'web_site_icp', '');
INSERT INTO `think_config` VALUES (5, 'web_site_cnzz', '');
INSERT INTO `think_config` VALUES (6, 'web_site_copy', '系统分销版');
INSERT INTO `think_config` VALUES (7, 'web_site_close', '1');
INSERT INTO `think_config` VALUES (8, 'list_rows', '100');
INSERT INTO `think_config` VALUES (9, 'admin_allow_ip', '');
INSERT INTO `think_config` VALUES (10, 'alisms_appkey', '');
INSERT INTO `think_config` VALUES (11, 'alisms_appsecret', '');
INSERT INTO `think_config` VALUES (12, 'alisms_signname', '');
INSERT INTO `think_config` VALUES (13, 'web_qq', '123456');
INSERT INTO `think_config` VALUES (14, 'web_mobile', '13312345678');
INSERT INTO `think_config` VALUES (15, 'web_wangwang', '');
INSERT INTO `think_config` VALUES (16, 'web_title', '演示站');
INSERT INTO `think_config` VALUES (17, 'token', '24d2530c49587cd13238a0932181392e');
INSERT INTO `think_config` VALUES (18, 'ali_public_key', '');
INSERT INTO `think_config` VALUES (19, 'rsa_private_key', '');
INSERT INTO `think_config` VALUES (20, 'kami_tou', '');
INSERT INTO `think_config` VALUES (21, 'kami_wei', '');
INSERT INTO `think_config` VALUES (22, 'shouye_1', '1、选择需要购买的商品');
INSERT INTO `think_config` VALUES (23, 'shouye_2', '2、点击在线购买输入购买金额');
INSERT INTO `think_config` VALUES (24, 'shouye_3', '3、选择支付方式扫码支付');
INSERT INTO `think_config` VALUES (25, 'shouye_4', '4、扫码支付完成自动跳转');
INSERT INTO `think_config` VALUES (26, 'm_title', '系统分销版');
INSERT INTO `think_config` VALUES (27, 'mail_host', 'smtp.163.com');
INSERT INTO `think_config` VALUES (28, 'mail_port', '465');
INSERT INTO `think_config` VALUES (29, 'mail_username', '');
INSERT INTO `think_config` VALUES (30, 'mail_password', '');
INSERT INTO `think_config` VALUES (31, 'mail_senduser', '');
INSERT INTO `think_config` VALUES (32, 'web_logo', '20190420/5bb8f718b31fb3d508052f4a37eef22c.png');
INSERT INTO `think_config` VALUES (33, 'moban_index', '4');
INSERT INTO `think_config` VALUES (34, 'weixin_erweima', '20190420/2819b8d2fd01cc8ba3061d9b6ea78457.jpg');
INSERT INTO `think_config` VALUES (35, 'web_host', '');
INSERT INTO `think_config` VALUES (36, 'shop_name', '系统分销版');
INSERT INTO `think_config` VALUES (37, 'blfk_pay_alipay', 'Alipay');
INSERT INTO `think_config` VALUES (38, 'blfk_pay_wxpay', '0');
INSERT INTO `think_config` VALUES (39, 'blfk_pay_Unionpay', '0');
INSERT INTO `think_config` VALUES (40, 'blfk_pay_tenpay', '0');
INSERT INTO `think_config` VALUES (41, 'blfk_pay_qqpay', '0');
INSERT INTO `think_config` VALUES (43, 'lianxi_mobile', '0');
INSERT INTO `think_config` VALUES (44, 'lianxi_email', '0');
INSERT INTO `think_config` VALUES (45, 'web_music', '');
INSERT INTO `think_config` VALUES (46, 'web_daohang', '1');
INSERT INTO `think_config` VALUES (47, 'web_louceng', '1');
INSERT INTO `think_config` VALUES (48, 'web_lishi', '0');
INSERT INTO `think_config` VALUES (49, 'm_status', '1');
INSERT INTO `think_config` VALUES (50, 'web_wapbanner', '');
INSERT INTO `think_config` VALUES (51, 'wapmoban_index', '2');
INSERT INTO `think_config` VALUES (52, 'wap_moban2_css', '1');
INSERT INTO `think_config` VALUES (53, 'app_id', '2016120703990878');
INSERT INTO `think_config` VALUES (54, 'pc_jingdian_css', '0');
INSERT INTO `think_config` VALUES (55, 'wap_moban3_css', '3');
INSERT INTO `think_config` VALUES (56, 'web_pcbanner', '20180603\\\\1687ff1f5ea47b06d2695eb3ff52f002.jpg');
INSERT INTO `think_config` VALUES (57, 'web_reg_type', '2');
INSERT INTO `think_config` VALUES (58, 'web_reg_point', '0');
INSERT INTO `think_config` VALUES (59, 'web_reg_money', '0');
INSERT INTO `think_config` VALUES (60, 'web_reg_status', '0');
INSERT INTO `think_config` VALUES (61, 'alimoban_id', '');
INSERT INTO `think_config` VALUES (62, 'loginerrornum', '5');
INSERT INTO `think_config` VALUES (63, 'frozentime', '2');
INSERT INTO `think_config` VALUES (64, 'web_gzh', 'www.baidu.com');
INSERT INTO `think_config` VALUES (65, 'Geetest_ID', '');
INSERT INTO `think_config` VALUES (66, 'Geetest_KEY', '');
INSERT INTO `think_config` VALUES (67, 'CODE_TYPE', '0');
INSERT INTO `think_config` VALUES (68, 'alimoban_reg', '');
INSERT INTO `think_config` VALUES (69, 'web_reg_xingshi', '0');
INSERT INTO `think_config` VALUES (70, 'select_mcard', '1');
INSERT INTO `think_config` VALUES (71, 'select_mobile', '1');
INSERT INTO `think_config` VALUES (72, 'select_cookie', '1');
INSERT INTO `think_config` VALUES (73, 'select_openid', '1');
INSERT INTO `think_config` VALUES (74, 'alimoban_fahuo', '');
INSERT INTO `think_config` VALUES (75, 'hotcolor', '');
INSERT INTO `think_config` VALUES (76, 'baocolor', '#FF3030');
INSERT INTO `think_config` VALUES (77, 'pc_jingdian_title_color', 'linear-gradient(to right, #73707000, #339dc5,#73707000)');
INSERT INTO `think_config` VALUES (78, 'pc_jingdian_gg_color', '#363636');
INSERT INTO `think_config` VALUES (79, 'pc_jingdian_title_beijing_color', '#274D81');
INSERT INTO `think_config` VALUES (80, 'sub_zizhu', '0');
INSERT INTO `think_config` VALUES (81, 'sub_year', '168');
INSERT INTO `think_config` VALUES (82, 'sub_webhost', '');
INSERT INTO `think_config` VALUES (83, 'sub_forever', '999');
INSERT INTO `think_config` VALUES (84, 'fx_cengji', '2');
INSERT INTO `think_config` VALUES (85, 'fx_neigou', '1');
INSERT INTO `think_config` VALUES (86, 'fx_pid1', '40');
INSERT INTO `think_config` VALUES (87, 'fx_pid2', '25');
INSERT INTO `think_config` VALUES (88, 'fx_pid3', '10');
INSERT INTO `think_config` VALUES (89, 'fx_point', '0');
INSERT INTO `think_config` VALUES (90, 'pc_jd_footer_color', '#adae17');
INSERT INTO `think_config` VALUES (91, 'alimoban_tixian', '');
INSERT INTO `think_config` VALUES (92, 'alimoban_tixiandaozhang', '');
INSERT INTO `think_config` VALUES (93, 'fx_txmoney', '0');
INSERT INTO `think_config` VALUES (94, 'fx_txcount', '1');
INSERT INTO `think_config` VALUES (95, 'fx_sxftype', '1');
INSERT INTO `think_config` VALUES (96, 'fx_sxf', '0');
INSERT INTO `think_config` VALUES (97, 'main_webhost', '');
INSERT INTO `think_config` VALUES (98, 'shorturl', '1');
INSERT INTO `think_config` VALUES (99, 'tangg', '0');
INSERT INTO `think_config` VALUES (100, 'alimoban_resetpwd', '');
INSERT INTO `think_config` VALUES (101, 'tanggjiange', '60');
INSERT INTO `think_config` VALUES (102, 'alimoban_tixianchehui', '');
INSERT INTO `think_config` VALUES (103, 'fz_selectauth', '0');
INSERT INTO `think_config` VALUES (104, 'uploadtype', '0');
INSERT INTO `think_config` VALUES (105, 'qiniu_ak', '');
INSERT INTO `think_config` VALUES (106, 'qiniu_sk', '');
INSERT INTO `think_config` VALUES (107, 'qiniu_bucket', '');
INSERT INTO `think_config` VALUES (108, 'qiniu_domain', '');
INSERT INTO `think_config` VALUES (109, 'is_https', 'http');
INSERT INTO `think_config` VALUES (110, 'jifen_logo', '20190420/f6076163d9676d32955d51e5e4241e64.png');
INSERT INTO `think_config` VALUES (111, 'waphot', '1');
INSERT INTO `think_config` VALUES (112, 'wx_appid', '');
INSERT INTO `think_config` VALUES (113, 'wx_apiKey', '');
INSERT INTO `think_config` VALUES (114, 'mch_id', '');
INSERT INTO `think_config` VALUES (115, 'pay_mqkey', '');
INSERT INTO `think_config` VALUES (116, 'pay_yzfid', '');
INSERT INTO `think_config` VALUES (117, 'pay_yzfkey', '');
INSERT INTO `think_config` VALUES (118, 'pay_yzfurl', '');
INSERT INTO `think_config` VALUES (120, 'pay_mzfid', '');
INSERT INTO `think_config` VALUES (121, 'pay_mzfkey', '');
INSERT INTO `think_config` VALUES (122, 'cdnpublic', '//cdn.staticfile.org/');
INSERT INTO `think_config` VALUES (123, 'wx_jsapi', '0');
INSERT INTO `think_config` VALUES (124, 'wx_h5', '0');
INSERT INTO `think_config` VALUES (125, 'wx_appKey', '');
INSERT INTO `think_config` VALUES (126, 'version', '8.0.5');
INSERT INTO `think_config` VALUES (127, 'epay_url', '');
INSERT INTO `think_config` VALUES (128, 'epay_pid', '');
INSERT INTO `think_config` VALUES (129, 'epay_key', '');
INSERT INTO `think_config` VALUES (130, 'blfk_pay_usdtpay', '');
INSERT INTO `think_config` VALUES (131, 'usdt_apiurl', '');
INSERT INTO `think_config` VALUES (132, 'usdt_apitoken', '');

-- ----------------------------
-- Table structure for think_fl
-- ----------------------------
DROP TABLE IF EXISTS `think_fl`;
CREATE TABLE `think_fl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名字',
  `mnamebie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '去html标签名字',
  `mprice_bz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '价格备注',
  `mprice` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '单价   以角为单位',
  `mmin` int(11) NOT NULL DEFAULT 0 COMMENT '最小售量',
  `mmax` int(11) NOT NULL DEFAULT 0 COMMENT '最大售量',
  `mnotice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '注意提示',
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `yunimgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `xqnotice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '内容',
  `attachgroupid` int(11) NOT NULL DEFAULT 0 COMMENT '附加选项id',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 自动发货\r\n1 手动发货',
  `fx_money` decimal(11, 4) NOT NULL DEFAULT 0.0000 COMMENT '佣金',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '商品状态',
  `decrypt` int(11) NOT NULL DEFAULT 0 COMMENT '0 不加密 1 加密',
  `sort` int(10) NOT NULL DEFAULT 0,
  `sendbeishu` int(11) NOT NULL DEFAULT 1 COMMENT '1件发几件',
  `msgboxtip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '弹窗提示',
  `marketprice` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '市场价',
  `tuijian` int(11) NOT NULL DEFAULT 0 COMMENT '0 不推荐\r\n1 推荐',
  `hot` int(11) NOT NULL DEFAULT 0 COMMENT '0 不开启\r\n1 爆款推荐',
  `ykongge` int(11) NOT NULL DEFAULT 0,
  `zkongge` int(11) NOT NULL DEFAULT 0,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `integral` int(11) NOT NULL DEFAULT 0 COMMENT '赠送积分',
  `sellercount` int(11) NOT NULL DEFAULT 0 COMMENT '销量',
  `kamitou` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kamiwei` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mlm` tinyint(11) NOT NULL DEFAULT 0,
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 166 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_fl
-- ----------------------------
INSERT INTO `think_fl` VALUES (160, '👹👺💀👻👽演示商品⭐⭐⭐', '👹👺💀👻👽演示商品⭐⭐⭐', '0.01', 1.00, 1, 50000, '', '20220321/32f5e1c5f19c1a0a34fab09a35621da2.png', '', '&lt;p&gt;商品介绍 到后台修改&lt;/p&gt;', 0, 0, 0.0000, 1, 0, 0, 1, '', 1.00, 0, 0, 0, 0, '', 0, 410, '', '', 23, 1555682032, 1649418473);
INSERT INTO `think_fl` VALUES (161, '【CDK】演示商品1月卡 支持QQ/微信 官方卡', '【CDK】演示商品1月卡 支持QQ/微信 官方卡', '11.80', 1180.00, 1, 50000, '', '20190419/e958e7baafe711e64b4f5754767237d0.jpg', '', '&lt;p&gt;商品介绍请到后台修改&lt;/p&gt;', 0, 0, 0.0000, 1, 0, 0, 1, '', 1180.00, 0, 0, 0, 0, '', 0, 0, '', '', 24, 1555682415, 1555682876);
INSERT INTO `think_fl` VALUES (162, '【CDK】演示商品2激活码', '【CDK】演示商品2激活码', '10', 1000.00, 1, 50000, '', '20190419/6552e1ae5d6a34d88b4eb85fd59b7017.jpg', '', '&lt;p&gt;商品介绍请到后台修改&lt;/p&gt;', 0, 0, 0.0000, 1, 0, 0, 1, '', 1000.00, 0, 0, 0, 0, '', 0, 0, '', '', 25, 1555682773, 1555682876);
INSERT INTO `think_fl` VALUES (163, '【CDK】演示商品3激活码', '【CDK】演示商品3激活码', '10', 1000.00, 1, 50000, '', '20190419/5a1be486b19ebd71e7593d0742c61331.png', '', '&lt;p&gt;商品介绍请到后台修改&lt;/p&gt;', 0, 0, 0.0000, 1, 0, 0, 1, '', 1000.00, 0, 0, 0, 0, '', 0, 0, '', '', 25, 1555682819, 1555682876);
INSERT INTO `think_fl` VALUES (164, '【CDK】演示商品41个月激活码', '【CDK】演示商品41个月激活码', '10', 1000.00, 1, 50000, '', '20190419/141c07b936e9ca24ed5abc0f2b418b86.png', '', '&lt;p&gt;商品介绍请到后台修改&lt;/p&gt;', 0, 0, 0.0000, 1, 0, 0, 1, '', 1000.00, 0, 0, 0, 0, '', 0, 1, '', '', 25, 1555682863, 1555682863);
INSERT INTO `think_fl` VALUES (165, '测试', '测试', '1', 100.00, 1, 50000, '1', '', '', '&lt;p&gt;111&lt;/p&gt;', 1, 1, 100.0000, 1, 0, 0, 1, '1', 100.00, 0, 0, 0, 0, '', 1, 0, '', '', 25, 1648041331, 1648041331);

-- ----------------------------
-- Table structure for think_fz_auth
-- ----------------------------
DROP TABLE IF EXISTS `think_fz_auth`;
CREATE TABLE `think_fz_auth`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0 COMMENT '子站ID',
  `starttime` int(11) NOT NULL DEFAULT 0 COMMENT '开通时间',
  `endtime` int(11) NOT NULL DEFAULT 0 COMMENT '0永久  其他就是到期时间戳',
  `goodsname` int(11) NOT NULL DEFAULT 0 COMMENT '0 不可修改 1 可以修改',
  `goodsimgurl` int(11) NOT NULL DEFAULT 0,
  `goodsxqnotice` int(11) NOT NULL DEFAULT 0,
  `goodsprice` int(11) NOT NULL DEFAULT 0,
  `ordersauth` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_fz_auth
-- ----------------------------

-- ----------------------------
-- Table structure for think_info
-- ----------------------------
DROP TABLE IF EXISTS `think_info`;
CREATE TABLE `think_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mcard` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '卡号',
  `morder` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mamount` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '余额',
  `buynum` int(11) NOT NULL,
  `mflid` int(11) NOT NULL DEFAULT 0 COMMENT '分类id',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `statustext` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '状态信息',
  `mstatus` int(11) NOT NULL DEFAULT 2 COMMENT '0 未使用\r\n1 使用\r\n2 订单未付款\r\n3 进行中\r\n4 撤回\r\n5 完成',
  `lianxi` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '联系方式',
  `openid` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `email` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `sendtype` int(11) NOT NULL DEFAULT 0 COMMENT '0 没有填写邮箱\r\n1 发送成功\r\n2 发送失败\r\n3 没配置邮箱服务器',
  `pid1` int(11) NOT NULL DEFAULT 0 COMMENT '上级id',
  `childid` int(11) NOT NULL DEFAULT 0,
  `memberid` int(11) NOT NULL DEFAULT 0 COMMENT '会员ID',
  `userip` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '使用IP',
  `beizhu` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注信息',
  `cookie` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'COOKIE',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '使用时间',
  `maddtype` int(11) NOT NULL DEFAULT 0 COMMENT '添加渠道',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mcard`(`mcard`) USING BTREE,
  UNIQUE INDEX `order`(`morder`) USING BTREE,
  INDEX `mstatus`(`mstatus`) USING BTREE,
  INDEX `mflid`(`mflid`) USING BTREE,
  INDEX `createtime`(`create_time`) USING BTREE,
  INDEX `updatetime`(`update_time`) USING BTREE,
  INDEX `memberid`(`memberid`) USING BTREE,
  INDEX `lianxi`(`lianxi`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `cookie`(`cookie`) USING BTREE,
  INDEX `maddtype`(`maddtype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流水号表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for think_info_history
-- ----------------------------
DROP TABLE IF EXISTS `think_info_history`;
CREATE TABLE `think_info_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `money` decimal(10, 2) NOT NULL,
  `buynum` int(11) NOT NULL DEFAULT 0,
  `goodtype` int(11) NOT NULL DEFAULT 0,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maddtype` int(11) NOT NULL DEFAULT 0,
  `orderno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `outorderno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT 0,
  `memberid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for think_integralmall_group
-- ----------------------------
DROP TABLE IF EXISTS `think_integralmall_group`;
CREATE TABLE `think_integralmall_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名字',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '分类状态',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `yunimgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '颜色',
  `css` int(11) NOT NULL DEFAULT 0 COMMENT '0 三行\r\n1 二行\r\n2 一行',
  `loucengname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_integralmall_group
-- ----------------------------

-- ----------------------------
-- Table structure for think_integralmall_index
-- ----------------------------
DROP TABLE IF EXISTS `think_integralmall_index`;
CREATE TABLE `think_integralmall_index`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名字',
  `mnamebie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '去html标签名字',
  `mprice_bz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '价格备注',
  `mprice` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '单价   以角为单位',
  `mmin` int(11) NOT NULL DEFAULT 0 COMMENT '最小售量',
  `mmax` int(11) NOT NULL DEFAULT 0 COMMENT '最大售量',
  `mnotice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '注意提示',
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `yunimgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `xqnotice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachgroupid` int(11) NOT NULL DEFAULT 0 COMMENT '附加选项id',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 自动发货\r\n1 手动发货',
  `fx_money` decimal(11, 4) NOT NULL DEFAULT 0.0000 COMMENT '佣金',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '商品状态',
  `decrypt` int(11) NOT NULL DEFAULT 0 COMMENT '0 不加密 1 加密',
  `sort` int(10) NOT NULL DEFAULT 0,
  `sendbeishu` int(11) NOT NULL DEFAULT 1 COMMENT '1件发几件',
  `msgboxtip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '弹窗提示',
  `marketprice` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '市场价',
  `tuijian` int(11) NOT NULL DEFAULT 0 COMMENT '0 不推荐\r\n1 推荐',
  `hot` int(11) NOT NULL DEFAULT 0 COMMENT '0 不开启\r\n1 爆款推荐',
  `ykongge` int(11) NOT NULL DEFAULT 0,
  `zkongge` int(11) NOT NULL DEFAULT 0,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `integral` int(11) NOT NULL DEFAULT 0 COMMENT '赠送积分',
  `sellercount` int(11) NOT NULL DEFAULT 0 COMMENT '销量',
  `kamitou` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kamiwei` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mflid` int(11) NOT NULL DEFAULT 0 COMMENT '卡密卡种ID',
  `mlm` tinyint(11) NOT NULL DEFAULT 0,
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_integralmall_index
-- ----------------------------

-- ----------------------------
-- Table structure for think_integralmall_order
-- ----------------------------
DROP TABLE IF EXISTS `think_integralmall_order`;
CREATE TABLE `think_integralmall_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '卡号',
  `money` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '余额',
  `buynum` int(11) NOT NULL,
  `mflid` int(11) NOT NULL DEFAULT 0 COMMENT '分类id',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `statustext` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态信息',
  `mstatus` int(11) NOT NULL DEFAULT 2 COMMENT '0 未使用\r\n1 使用\r\n2 订单未付款\r\n3 进行中\r\n4 撤回\r\n5 完成',
  `lianxi` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系方式',
  `openid` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `sendtype` int(11) NOT NULL DEFAULT 0 COMMENT '0 没有填写邮箱\r\n1 发送成功\r\n2 发送失败\r\n3 没配置邮箱服务器',
  `pid1` int(11) NOT NULL DEFAULT 0 COMMENT '上级id',
  `childid` int(11) NOT NULL DEFAULT 0,
  `memberid` int(11) NOT NULL DEFAULT 0 COMMENT '会员ID',
  `userip` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '使用IP',
  `beizhu` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注信息',
  `cookie` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'COOKIE',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '使用时间',
  `maddtype` int(11) NOT NULL DEFAULT 0 COMMENT '添加渠道',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mcard`(`orderno`) USING BTREE,
  INDEX `mstatus`(`mstatus`) USING BTREE,
  INDEX `mflid`(`mflid`) USING BTREE,
  INDEX `createtime`(`create_time`) USING BTREE,
  INDEX `updatetime`(`update_time`) USING BTREE,
  INDEX `memberid`(`memberid`) USING BTREE,
  INDEX `lianxi`(`lianxi`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `cookie`(`cookie`) USING BTREE,
  INDEX `maddtype`(`maddtype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流水号表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_integralmall_order
-- ----------------------------

-- ----------------------------
-- Table structure for think_log
-- ----------------------------
DROP TABLE IF EXISTS `think_log`;
CREATE TABLE `think_log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `admin_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `ip` char(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '1 成功 2 失败',
  `add_time` int(11) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_log
-- ----------------------------

-- ----------------------------
-- Table structure for think_mail
-- ----------------------------
DROP TABLE IF EXISTS `think_mail`;
CREATE TABLE `think_mail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musernm` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱账号',
  `mpasswd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱密码',
  `syddhao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '使用订单号',
  `mis_use` tinyint(1) NOT NULL DEFAULT 0,
  `mpid` int(11) NOT NULL DEFAULT 0 COMMENT '所属栏目',
  `addid` int(11) NOT NULL DEFAULT 0 COMMENT '卡密入库ID',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '入库时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '使用时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mpid`(`mpid`) USING BTREE,
  INDEX `id`(`mis_use`, `mpid`) USING BTREE,
  INDEX `addid`(`addid`) USING BTREE,
  INDEX `updatetime`(`update_time`) USING BTREE,
  INDEX `createtime`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '邮箱主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for think_member
-- ----------------------------
DROP TABLE IF EXISTS `think_member`;
CREATE TABLE `think_member`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮件或者手机',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `sex` int(10) NOT NULL DEFAULT 0 COMMENT '1男2女',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(11) NOT NULL DEFAULT 0,
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'qq',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `head_img` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `integral` int(11) NOT NULL DEFAULT 0 COMMENT '积分',
  `tg_money` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '推广佣金',
  `money` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '账户余额',
  `alipayname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alipayno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '认证的手机号码',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '注册时间',
  `update_time` int(11) NOT NULL COMMENT '最后一次登录',
  `login_num` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1正常  0 禁用',
  `mobileauth` int(11) NOT NULL DEFAULT 0 COMMENT '0 未认证\r\n1 已认证',
  `closed` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0正常，1删除',
  `is_distribut` int(11) NOT NULL DEFAULT 0 COMMENT '0 不是分销商  1 是分销商',
  `pid3` int(11) NOT NULL DEFAULT 0 COMMENT '第三个上级',
  `pid2` int(11) NOT NULL DEFAULT 0 COMMENT '第二个上级',
  `pid1` int(11) NOT NULL DEFAULT 0 COMMENT '第一个上级',
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fzstatus` int(11) NOT NULL DEFAULT 0 COMMENT '0 没开通分站\r\n1 已开通分站',
  `fzhost` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分站域名',
  `token` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '令牌',
  `session_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `login_error` int(11) NOT NULL DEFAULT 0,
  `login_error_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `account`(`account`) USING BTREE,
  INDEX `pid1`(`pid1`) USING BTREE,
  INDEX `pid2`(`pid2`) USING BTREE,
  INDEX `pid3`(`pid3`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for think_member_group
-- ----------------------------
DROP TABLE IF EXISTS `think_member_group`;
CREATE TABLE `think_member_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `group_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '会员分组名称',
  `point` int(11) NOT NULL DEFAULT 0 COMMENT '所需积分',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否默认0否1是',
  `discount` int(11) NOT NULL DEFAULT 0 COMMENT '会员折扣',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '留言回复时间',
  `update_time` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NOT NULL DEFAULT 999.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_member_group
-- ----------------------------
INSERT INTO `think_member_group` VALUES (1, '注册会员', 0, 1, 1, 100, 0, 1569306913, 1569306929, 0.00);
INSERT INTO `think_member_group` VALUES (2, '高级会员', -1, 1, 0, 92, 0, 1569306913, 1569306929, 168.00);
INSERT INTO `think_member_group` VALUES (3, '代理会员', -1, 1, 0, 85, 0, 1569306913, 1569306929, 368.00);

-- ----------------------------
-- Table structure for think_member_group_price
-- ----------------------------
DROP TABLE IF EXISTS `think_member_group_price`;
CREATE TABLE `think_member_group_price`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membergroupid` int(11) NOT NULL DEFAULT 0,
  `goodid` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mgid`(`membergroupid`, `goodid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_member_group_price
-- ----------------------------

-- ----------------------------
-- Table structure for think_member_integral_log
-- ----------------------------
DROP TABLE IF EXISTS `think_member_integral_log`;
CREATE TABLE `think_member_integral_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0 COMMENT '会员ID',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 增加\r\n1 减少',
  `integral` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `make` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_member_integral_log
-- ----------------------------

-- ----------------------------
-- Table structure for think_member_login_log
-- ----------------------------
DROP TABLE IF EXISTS `think_member_login_log`;
CREATE TABLE `think_member_login_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_member_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for think_member_money_log
-- ----------------------------
DROP TABLE IF EXISTS `think_member_money_log`;
CREATE TABLE `think_member_money_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 增加\r\n1 减少',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `make` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_member_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for think_member_payorder
-- ----------------------------
DROP TABLE IF EXISTS `think_member_payorder`;
CREATE TABLE `think_member_payorder`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `outorderno` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0.未付款\r\n1 已付款',
  `memberid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `ip` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `paytype` int(11) NOT NULL DEFAULT 0 COMMENT '支付方式',
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order`(`orderno`) USING BTREE,
  UNIQUE INDEX `orderno`(`outorderno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_member_payorder
-- ----------------------------

-- ----------------------------
-- Table structure for think_member_price
-- ----------------------------
DROP TABLE IF EXISTS `think_member_price`;
CREATE TABLE `think_member_price`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0,
  `goodid` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mgid`(`memberid`, `goodid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_member_price
-- ----------------------------

-- ----------------------------
-- Table structure for think_member_tixian
-- ----------------------------
DROP TABLE IF EXISTS `think_member_tixian`;
CREATE TABLE `think_member_tixian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0,
  `orderno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `paymoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `feemoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `userip` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `make` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0  未处理\r\n1  已处理\r\n2  已撤回',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of think_member_tixian
-- ----------------------------

-- ----------------------------
-- Table structure for think_navigation
-- ----------------------------
DROP TABLE IF EXISTS `think_navigation`;
CREATE TABLE `think_navigation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航名字',
  `opentype` int(11) NOT NULL DEFAULT 0 COMMENT '打开方式\r\n0 本窗口\r\n1 新窗口',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 不启用\r\n1 启用',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 url',
  `groupid` int(11) NOT NULL DEFAULT 0 COMMENT '0 商城导航\r\n1 积分商城导航',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `text` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_navigation
-- ----------------------------

-- ----------------------------
-- Table structure for think_orderattach
-- ----------------------------
DROP TABLE IF EXISTS `think_orderattach`;
CREATE TABLE `think_orderattach`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `attachid` int(11) NOT NULL DEFAULT 0,
  `text` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '附加内容',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order`(`orderno`, `attachid`, `text`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_orderattach
-- ----------------------------

-- ----------------------------
-- Table structure for think_pay_give
-- ----------------------------
DROP TABLE IF EXISTS `think_pay_give`;
CREATE TABLE `think_pay_give`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paymoney` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '充值金额大于等于XXX',
  `paytype` int(11) NOT NULL DEFAULT 0 COMMENT '0 赠送 \r\n1 按比例',
  `givemoney` decimal(10, 0) NOT NULL DEFAULT 0 COMMENT '赠送多少',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `paymoney`(`paymoney`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_pay_give
-- ----------------------------

-- ----------------------------
-- Table structure for think_pay_order
-- ----------------------------
DROP TABLE IF EXISTS `think_pay_order`;
CREATE TABLE `think_pay_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `close_date` bigint(20) NOT NULL,
  `create_date` bigint(20) NOT NULL,
  `is_auto` int(11) NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pay_date` bigint(20) NOT NULL,
  `pay_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pay_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` double NOT NULL,
  `really_price` double NOT NULL,
  `state` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_pay_order
-- ----------------------------

-- ----------------------------
-- Table structure for think_pay_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `think_pay_qrcode`;
CREATE TABLE `think_pay_qrcode`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pay_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` double NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_pay_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for think_sendsms_log
-- ----------------------------
DROP TABLE IF EXISTS `think_sendsms_log`;
CREATE TABLE `think_sendsms_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 注册 1.重置密码',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_sendsms_log
-- ----------------------------

-- ----------------------------
-- Table structure for think_setting
-- ----------------------------
DROP TABLE IF EXISTS `think_setting`;
CREATE TABLE `think_setting`  (
  `key` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_setting
-- ----------------------------
INSERT INTO `think_setting` VALUES ('key', '7i7p7M84pPiWjYjGi6h3W6Tx5XJ4SbR4');
INSERT INTO `think_setting` VALUES ('lastheart', '1570512632');
INSERT INTO `think_setting` VALUES ('lastpay', '1570475665');
INSERT INTO `think_setting` VALUES ('jkstate', '1');
INSERT INTO `think_setting` VALUES ('close', '5');
INSERT INTO `think_setting` VALUES ('payQf', '1');
INSERT INTO `think_setting` VALUES ('wxpay', '');
INSERT INTO `think_setting` VALUES ('alipay', '');
INSERT INTO `think_setting` VALUES ('jhpay', '');

-- ----------------------------
-- Table structure for think_system_log
-- ----------------------------
DROP TABLE IF EXISTS `think_system_log`;
CREATE TABLE `think_system_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `referer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `make` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT 0,
  `create_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_system_log
-- ----------------------------

-- ----------------------------
-- Table structure for think_tgmoney_log
-- ----------------------------
DROP TABLE IF EXISTS `think_tgmoney_log`;
CREATE TABLE `think_tgmoney_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL DEFAULT 0,
  `money` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '佣金金额',
  `orderno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `buyid` int(11) NOT NULL DEFAULT 0 COMMENT '0 非会员  购买会员',
  `childid` int(11) NOT NULL DEFAULT 0 COMMENT '0 未知  推广会员',
  `relation` int(11) NOT NULL DEFAULT 0 COMMENT '0 推广客户\r\n1 推荐人\r\n2 自己\r\n3 下一级\r\n4 下二级\r\n5 下三级',
  `tgtype` int(11) NOT NULL DEFAULT 0 COMMENT '0  分销佣金\r\n1  分站提成',
  `shopname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_tgmoney_log
-- ----------------------------

-- ----------------------------
-- Table structure for think_tmp_price
-- ----------------------------
DROP TABLE IF EXISTS `think_tmp_price`;
CREATE TABLE `think_tmp_price`  (
  `price` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `oid` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` bigint(20) NOT NULL,
  PRIMARY KEY (`price`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_tmp_price
-- ----------------------------

-- ----------------------------
-- Table structure for think_user
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '认证的手机号码',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '1激活  0 未激活',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '令牌',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_user
-- ----------------------------

-- ----------------------------
-- Table structure for think_yh
-- ----------------------------
DROP TABLE IF EXISTS `think_yh`;
CREATE TABLE `think_yh`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mdy` int(11) NOT NULL DEFAULT 0 COMMENT '大于     单位元',
  `mdj` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '单价  单位角',
  `mpid` int(11) NOT NULL DEFAULT 0 COMMENT '所属导航',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优惠比例表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of think_yh
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
