SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bl_admin
-- ----------------------------
DROP TABLE IF EXISTS `bl_admin`;
CREATE TABLE `bl_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `adminname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `adminpass` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `is_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `limits` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL,
  `limit_ip` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '',
  `is_limit_ip` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_admin
-- ----------------------------
INSERT INTO `bl_admin` VALUES (1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '4718737b9f2f6e2c225fe605d6c7234330e7e7e4', 0, '{\"limit_ip\":\"\",\"is_limit_ip\":\"0\",\"set\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"Upgrade\":\"\\u5728\\u7ebf\\u5347\\u7ea7\",\"mailtpl\":\"\\u90ae\\u4ef6\\u6a21\\u7248\",\"admins\":\"\\u7ba1\\u7406\\u5458\\u5217\\u8868\",\"pwd\":\"\\u4fee\\u6539\\u5bc6\\u7801\",\"logs\":\"\\u767b\\u5f55\\u65e5\\u5fd7\",\"cog\":\"\\u5bfc\\u822a\\u8bbe\\u7f6e\",\"link\":\"\\u53cb\\u60c5\\u94fe\\u63a5\",\"acp\":\"\\u652f\\u4ed8\\u8bbe\\u7f6e\",\"pc\":\"\\u7535\\u8111\\u6a21\\u677f\",\"wap\":\"\\u624b\\u673a\\u6a21\\u677f\",\"user\":\"\\u7528\\u6237\\u5217\\u8868\",\"ulevel\":\"\\u7528\\u6237\\u7ea7\\u522b\",\"orders\":\"\\u8ba2\\u5355\\u5217\\u8868\",\"gdclass\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"goods\":\"\\u5546\\u54c1\\u5217\\u8868\",\"down\":\"\\u4e0b\\u8f7d\\u7ba1\\u7406\",\"kami\":\"\\u5361\\u5bc6\\u7ba1\\u7406\",\"mq\":\"\\u514d\\u7b7e\\u8bbe\\u7f6e\"}', '', 0);

-- ----------------------------
-- Table structure for bl_adminlogs
-- ----------------------------
DROP TABLE IF EXISTS `bl_adminlogs`;
CREATE TABLE `bl_adminlogs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `adminid` int(10) UNSIGNED NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL,
  `ip` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `adminid`(`adminid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_adminlogs
-- ----------------------------

-- ----------------------------
-- Table structure for bl_config
-- ----------------------------
DROP TABLE IF EXISTS `bl_config`;
CREATE TABLE `bl_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sitename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteurl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `payinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '',
  `tel` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '',
  `qq` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '',
  `address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icpcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '',
  `copyright` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stacode` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '',
  `smtp_server` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '',
  `smtp_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '',
  `smtp_pwd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '',
  `tips` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL,
  `ctime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL,
  `email_state` tinyint(1) NOT NULL DEFAULT 0,
  `ismail_kuc` tinyint(1) NOT NULL DEFAULT 0,
  `ismail_num` int(20) NULL DEFAULT 0,
  `serive_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL,
  `pcindex` int(1) NULL DEFAULT 0 COMMENT 'PC首页模板',
  `wapindex` int(1) NOT NULL DEFAULT 1 COMMENT 'wap首页模板',
  `xieyi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL,
  `mp3list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `mp3_state` tinyint(1) NOT NULL DEFAULT 0,
  `bodyimage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `background` int(1) NOT NULL DEFAULT 0 COMMENT '必应背景图随机调用',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '/upload/image/20191226/logo.png',
  `qqqun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '//shang.qq.com/wpa/qunwpa?idkey=a92bab5558cd83defada77810accef6a5b5f8d7cbb97edd4eccad7e7df8b7245',
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT '4099ff' COMMENT '前端配色',
  `sw_reg` int(11) NOT NULL DEFAULT 0 COMMENT '注册开关',
  `regle` int(11) NOT NULL DEFAULT 1 COMMENT '默认用户等级',
  `gw_reg` int(11) NOT NULL DEFAULT 0 COMMENT '登录购买',
  `cp_jt` int(11) NOT NULL DEFAULT 1 COMMENT '产品url',
  `pay_alipay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '0' COMMENT '支付宝接口选择',
  `pay_wxpay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '0' COMMENT '微信接口选择',
  `pay_jhpay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '0' COMMENT '聚合码',
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '支付宝appid',
  `ali_public_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '支付宝公钥',
  `rsa_private_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '支付宝私钥',
  `mch_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '微信支付商户号',
  `wx_appid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '微信支付APPID',
  `wx_apiKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '微信支付API密钥',
  `pay_yzfid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '蓝支付对接ID',
  `pay_yzfkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '蓝支付对接Token',
  `pay_mzfid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '码支付ID',
  `pay_mzfkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '码支付密钥',
  `cdnpublic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '//cdn.staticfile.org/' COMMENT 'CDN库',
  `sg_kuc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '0' COMMENT '手工商品库存开关',
  `diyname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '门店购物',
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '6.0.0' COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_config
-- ----------------------------
INSERT INTO `bl_config` VALUES (1, '😍😘😗😙😚基础版系统', 'http://kk.lailiyun.com', '注意：1000元以下订单请使用支付宝支付，1000元以上订单请使用微信支付！', '基础版系统 安全稳定', '基础版系统 安全稳定', 'admin@baidu.com', '400-000-0000', '123456', '基础版系统', 'ICP备88888888号', 'CopyRight©2022 基础版系统😍😘😗😙😚.', '', 'smtp.qq.com', '123456@qq.com', 'kjtgwrjhbgcebhai', '<li class=\"list-group-item\">\r\n	<span class=\"btn btn-success btn-xs\">1</span> 本站为演示站，所有商品仅为演示，无法正常使用！\r\n</li>\r\n<li class=\"list-group-item\">\r\n	<span class=\"btn btn-info btn-xs\">2</span> 如没有需要的产品，可以联系客服QQ123456咨询是否可以定制推广\r\n</li>\r\n<li class=\"list-group-item\">\r\n	<span class=\"btn btn-warning btn-xs\">3</span> 温馨提示：付款后请返回本网站，网页自动跳转发号，如有问题联系客服。\r\n</li>\r\n<li class=\"list-group-item\">\r\n	<span class=\"btn btn-primary btn-xs\">4</span>  专业推广无限永久  技术流人工操作  用心的服务每一位顾客\r\n</li>', '2022-04-08', 0, 1, 10, 'shuka2022', 5, 2, '<p><span style=\"font-size:14px;\">            欢迎您使用商业版全自动发卡平台（专业虚拟数字产品交易平台服务产品）。以下所述条款和条件即构成您与商业版虚拟数字产品交易平台所达成的协议（以下简称“本协议”）。以下协议根据《中华人民共和国合同法》、《中华人民共和国计算机信息网络国际互联网管理暂行规定》、邮电部《中国公用计算机互联网国际网管理办法》等有关规定制定。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">     一、承诺 　　</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">            1. 您确认，在您成为我们的用户之前已充分阅读、理解并接受本协议的全部内容，一旦您使用本服务，即表示您同意遵循本协议之所有约定。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　    2. 您同意，本公司有权随时对本协议内容进行单方面的变更，并以在本网站公告的方式予以公布，无需另行单独通知您；若您在本协议内容公告变更后继续使用本服务的，表示您已充分阅读、理解并接受修改后的协议内容，也将遵循修改后的协议内容使用本服务；若您不同意修改后的协议内容，您应停止使用本服务。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">     二、商业版--专业虚拟数字产品交易平台服务使用的责任和义务　　</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">           1. 您在使用本服务时应遵守中华人民共和国相关法律法规、您所在国家或地区之法令及相关国际惯例，不将本服务用于任何非法目的，也不以任何非法方式使用本服务。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　    2. 您不得利用本服务从事侵害他人合法权益之行为，否则本公司有权拒绝提供本服务，且您应承担所有相关法律责任，因此导致本公司或本公司用户受损的，您应承担赔偿责任。上述行为包括但不限于：</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (1)侵害他人名誉权、隐私权、商业秘密、商标权、著作权、专利权等合法权益。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (2)违反依法定或约定之保密义务。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (3)冒用他人名义使用本服务。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (4)从事不法行为，如制作色情、赌博、病毒、挂马、反动、外挂、私服、钓鱼以及为私服提供任何服务(比如支付)的类似网站。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (5)提供赌博资讯或以任何方式引诱他人参与赌博。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (6)从事任何可能含有电脑病毒或是可能侵害本服务系统、资料之行为。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (7)其他本公司有正当理由认为不适当之行为。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     3. 您理解并同意，本公司不对因下述任一情况导致的任何损害赔偿承担责任，包括但不限于流量、访问、数据等方面的损失或其他无形损失的损害赔偿 (无论本公司是否已被告知该等损害赔偿的可能性)：</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (1)本公司有权基于单方判断，包含但不限于本公司认为您已经违反本协议的明文规定及精神，暂停、中断或终止向您提供本服务或其任何部分，并移除您的资料。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (2) 本公司在发现非法网站或有疑义或有违反法律规定或本协议约定之虞时，有权不经通知先行暂停或终止该域名的解析，并拒绝您使用本服务之部分或全部功能。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (3) 在必要时，本公司无需事先通知即可终止提供本服务，并暂停、关闭或删除该账户及您账号中所有相关资料及档案，如遇到非法域名被关闭，所涉及到的款项将不会退款给您。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">     三、 隐私与保护　　</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">             一旦您同意本协议或使用本服务，您即同意本公司按照以下条款来使用和披露您的个人信息。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　      (1) 用户名和密码 　　在您注册为商业版--专业虚拟数字产品交易平台用户时，我们会要求您设置用户名和密码，以便在您丢失密码时用以确认您的身份。请确保您的账号安全防止泄露密码，如果您发现发现账号和密码有泄露的嫌疑，请及时联系我司处理，在我司采取行动之前，本司对此不负任何责任。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　      (2)注册信息 　　我们有义务保证您在注册我们系统时填写的真实姓名、电话号码、电子邮件地址、身份证号码的其隐私性，并且您同意我们通过电子邮件或者电话号码通知您有关我司有关优惠活动和您在我们系统上面设置的告警通知。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     (3)为了更好的向您提供服务，您同意，本公司有权将您在注册及在使用我们服务的过程中所产生的信息，提供给本司的关联公司。除本协议另有规定外，本公司不对外公开或向第三方提供您的信息，但以下情况除外：</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　      A、事先获得您的明确授权；</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　     　 B、按照本协议的要求进行的披露；</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　      C、根据法律法规的规定；</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　      D、由国家相关部门开具证明，需要调阅您的信息</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　     　 E、您使用商业版--专业虚拟数字产品交易平台账户成功登录过的其他网站。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　     　 F、为维护本公司及其关联公司的合法权益；</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">     四、安全 　　</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">             本司仅以现有技术提供相应的安全措施来保证您的信息不丢失、泄露。尽管有这些安全措施，但本司不保证这些信息的100%安全。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">     五、免责条款</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     因下列状况无法正常运作，使您无法使用各项服务时，本公司不承担损害赔偿责任，该状况包括但不限于：</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     1. 由于系统升级或调整期间需要停机维护且停机维护之前做过广告的</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     2. 用户违反本协议条款的约定，导致第三方主张的任何损失或索赔。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     3. 因台风、地震、海啸、洪水、停电、战争、恐怖袭击等不可抗力之因素，造成本公司系统障碍不能执行业务的。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     4. 由于黑客攻击、电信部门技术调整或故障、网站升级、银行方面的问题等原因而造成的服务中断或者延迟。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">     六、责任范围及责任限制</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     1. 本公司仅对本协议中列明的责任承担范围负责。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　     　2. 由于服务服务器故障给您造成大范围无法正常销售超过72小时的，除VIP外您无权要求本公司给予经济赔偿。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">     七、法律及争议解决</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     1.本协议适用中华人民共和国法律。如遇本协议有关的某一特定事项缺乏明确法律规定，则应参照通用国际商业惯例和（或）行业惯例。</span></p>\r\n\r\n    <p><span style=\"font-size:14px;\">　　     2.因双方就本协议的签订、履行或解释发生争议，双方应努力友好协商解决。如协商不成，任何一方均有权将争议递交当地人民法院。</span></p>', '<script id=\"lailiyun\" src=\"//music.lailiyun.com/player/js/player.js\" key=\"6bb0a0be4d11499fa2e710ce39777082\"></script>', 1, 'https://ae01.alicdn.com/kf/Ha4740315cb2843edb1c28dbcb0241ffdl.jpg', 99, '/upload/image/20191226/logo.png', '', 'rgba(8, 117, 214, 0.73)', 1, 1, 0, 1, 'zfbf2f', 'lailiyun', '0', '', '', '', '', '', '', '', '', '', '', '//cdn.staticfile.org/', '0', '门店购物', '6.0.0');

-- ----------------------------
-- Table structure for bl_down
-- ----------------------------
DROP TABLE IF EXISTS `bl_down`;
CREATE TABLE `bl_down`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `gid` int(100) NOT NULL COMMENT '商品id',
  `kano` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下载内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_down
-- ----------------------------

-- ----------------------------
-- Table structure for bl_gdclass
-- ----------------------------
DROP TABLE IF EXISTS `bl_gdclass`;
CREATE TABLE `bl_gdclass`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord` int(100) NULL DEFAULT 0 COMMENT '商品排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_gdclass
-- ----------------------------
INSERT INTO `bl_gdclass` VALUES (10, '分类1', 0);
INSERT INTO `bl_gdclass` VALUES (11, '分类2', 0);
INSERT INTO `bl_gdclass` VALUES (12, '分类3', 0);

-- ----------------------------
-- Table structure for bl_goods
-- ----------------------------
DROP TABLE IF EXISTS `bl_goods`;
CREATE TABLE `bl_goods`  (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `cid` int(100) NOT NULL COMMENT '分类id',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '主图',
  `gname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmoney` decimal(20, 2) NOT NULL DEFAULT 400.00 COMMENT '商品售价',
  `money1` decimal(20, 2) NOT NULL DEFAULT 100.00,
  `money2` decimal(20, 2) NOT NULL DEFAULT 200.00,
  `money3` decimal(20, 2) NOT NULL DEFAULT 100.00,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 自动发卡  1 手工订单',
  `checks` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否允许重复下单 1是  0否',
  `cont` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '商品介绍',
  `onetle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第一个输入框标题',
  `gdipt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL COMMENT '更多input qq密码 ,大区名称',
  `ord` int(100) NULL DEFAULT 0 COMMENT '排序',
  `is_ste` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0下架 1上架',
  `kuc` int(100) NOT NULL DEFAULT 0 COMMENT '库存',
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL,
  `noti` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '提示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_goods
-- ----------------------------
INSERT INTO `bl_goods` VALUES (17, 12, '/upload/image/20191226/20191226005729_49097.jpg', '商品测试 慎拍', 0.01, 0.01, 0.01, 0.01, 0, 1, '测试商品 勿拍！！456', 'QQ号123', '', 0, 1, 0, '', '<span style=\"white-space:normal;\">测试商品 勿拍！！123</span>');
INSERT INTO `bl_goods` VALUES (13, 10, '/upload/image/20191226/20191226005729_49097.jpg', '演示商品1', 160.00, 160.00, 160.00, 160.00, 0, 1, '商品介绍 请到后台修改', 'QQ号', '', 8, 1, 0, '', '');
INSERT INTO `bl_goods` VALUES (15, 11, '/upload/image/20191226/20191226005729_49097.jpg', '演示商品3', 168.00, 168.00, 168.00, 168.00, 0, 1, '商品介绍 请到后台修改', 'QQ号', '', 5, 1, 0, '', '');
INSERT INTO `bl_goods` VALUES (14, 10, '/upload/image/20191226/20191226005729_49097.jpg', '演示商品2', 260.00, 260.00, 260.00, 260.00, 0, 1, '商品介绍 请到后台修改', 'QQ号', '', 7, 1, 0, '', '');
INSERT INTO `bl_goods` VALUES (16, 11, '/upload/image/20191226/20191226005729_49097.jpg', '演示商品4', 268.00, 268.00, 268.00, 268.00, 0, 1, '商品介绍 请到后台修改', 'QQ号', '', 4, 1, 0, '', '商品提示 请到后台修改');
INSERT INTO `bl_goods` VALUES (12, 10, '/upload/image/20191226/20191226005729_49097.jpg', '演示商品5', 80.00, 80.00, 80.00, 80.00, 0, 1, '商品介绍 请到后台修改', 'QQ号', '', 9, 1, 0, '', '商品提示 请到后台修改');
INSERT INTO `bl_goods` VALUES (18, 10, '/upload/image/20191226/20191226005729_49097.jpg', '演示商品6💀👻👽', 50.00, 50.00, 50.00, 50.00, 0, 1, '商品介绍 请到后台修改<span style=\"white-space:nowrap;\">💀👻👽</span>', 'QQ号', '', 10, 1, 0, '', '商品提示 请到后台修改<span style=\"white-space:nowrap;\">💀👻👽</span>');
INSERT INTO `bl_goods` VALUES (19, 10, '/upload/image/20191226/20191226005729_49097.jpg', '演示商品7', 88.00, 88.00, 88.00, 88.00, 0, 1, '商品介绍 请到后台修改', 'QQ号', '', 6, 1, 0, '', '商品提示 请到后台修改');

-- ----------------------------
-- Table structure for bl_kami
-- ----------------------------
DROP TABLE IF EXISTS `bl_kami`;
CREATE TABLE `bl_kami`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `gid` int(100) NOT NULL COMMENT '商品id',
  `kano` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '卡号',
  `is_ste` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0:正常 1:已售',
  `ctime` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_kami
-- ----------------------------

-- ----------------------------
-- Table structure for bl_links
-- ----------------------------
DROP TABLE IF EXISTS `bl_links`;
CREATE TABLE `bl_links`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `is_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_links
-- ----------------------------

-- ----------------------------
-- Table structure for bl_mailtpl
-- ----------------------------
DROP TABLE IF EXISTS `bl_mailtpl`;
CREATE TABLE `bl_mailtpl`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cname`(`cname`(250)) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_mailtpl
-- ----------------------------
INSERT INTO `bl_mailtpl` VALUES (1, '卡密发送', '您在{sitename}购买的商品已发货', '<p class=\"p1\">\r\n<span class=\"s1\">尊敬的用户您好：</span> \r\n</p>\r\n<p class=\"p1\">\r\n<span class=\"s1\">您在：【{sitename}】 购买的商品：{gname} 已发货。</span> \r\n</p>\r\n<p class=\"p1\">订单号：{orid}</p>\r\n<p class=\"p1\">数量：{ornum}</p>\r\n<p class=\"p1\">金额：{cmoney}</p>\r\n<p class=\"p1\">时间：{ctime}</p>\r\n---------------------------------------------------------------------------------------------------------------------------<br/>\r\n<p class=\"p1\"> \r\n<span class=\"s1\">{orderinfo}</span>\r\n</p> \r\n---------------------------------------------------------------------------------------------------------------------------<br/>\r\n\r\n感谢您的惠顾，祝您生活愉快！<br/>\r\n<p class=\"p1\">\r\n	<span class=\"s1\">来自 <span style=\"white-space:normal;\">{sitename} -{siteurl}</span></span> \r\n</p>', 0, 0);
INSERT INTO `bl_mailtpl` VALUES (2, '管理员通知', '【{sitename}】新订单等待处理', '<p class=\"p1\">尊敬的管理员：</p>\r\n\r\n<p class=\"p1\">客户购买的商品：【{gname}】 已支付成功，请及时处理。</p>\r\n------------------------------------------<br/>\r\n<p class=\"p1\">订单号：{orid}</p>\r\n<p class=\"p1\">数量：{ornum}</p>\r\n<p class=\"p1\">金额：{cmoney}</p>\r\n<p class=\"p1\">时间：{ctime}</p>\r\n---------------------------------------------<br/>\r\n\r\n<p class=\"p1\">\r\n	<span class=\"s1\">来自 <span style=\"white-space:normal;\">{sitename} -{siteurl}</span></span> \r\n</p>', 0, 0);
INSERT INTO `bl_mailtpl` VALUES (3, '库存告警', '【{sitename}】库存告警', '<p class=\"p1\">尊敬的管理员：</p>\r\n\r\n<p class=\"p1\">平台商品：【{gname}】库存低于{ornum}，请及时补货。</p>\r\n\r\n<p class=\"p1\">\r\n	<span class=\"s1\">来自 <span style=\"white-space:normal;\">{sitename} -{siteurl}</span></span> \r\n</p>', 0, 0);
INSERT INTO `bl_mailtpl` VALUES (4, '找回密码', '【{sitename}】找回密码', '<p class=\"p1\">\r\n<span class=\"s1\">尊敬的用户您好：</span> \r\n</p>\r\n<p class=\"p1\">\r\n<span class=\"s1\">以下是您找回密码的验证链接，请勿告知他人！链接有效期为2小时！</span> \r\n</p>\r\n---------------------------------------------------------------------------------------------------------------------------<br/>\r\n\r\n<a href=\"{siteurl}/reg/repwd?token={token}\">{siteurl}/reg/repwd?token={token}</a><br/>\r\n\r\n---------------------------------------------------------------------------------------------------------------------------<br/>\r\n\r\n感谢您的惠顾，祝您生活愉快！<br/>\r\n<p class=\"p1\">\r\n	<span class=\"s1\">来自 <span style=\"white-space:normal;\">{sitename} -{siteurl}</span></span> \r\n</p>', 0, 0);

-- ----------------------------
-- Table structure for bl_mqorder
-- ----------------------------
DROP TABLE IF EXISTS `bl_mqorder`;
CREATE TABLE `bl_mqorder`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `close_date` bigint(20) NOT NULL,
  `create_date` bigint(20) NOT NULL,
  `is_auto` int(11) NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL,
  `param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL,
  `pay_date` bigint(20) NOT NULL,
  `pay_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL,
  `pay_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL,
  `price` double NOT NULL,
  `really_price` double NOT NULL,
  `state` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bl_mqorder
-- ----------------------------

-- ----------------------------
-- Table structure for bl_mqqrcode
-- ----------------------------
DROP TABLE IF EXISTS `bl_mqqrcode`;
CREATE TABLE `bl_mqqrcode`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pay_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL,
  `price` double NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bl_mqqrcode
-- ----------------------------

-- ----------------------------
-- Table structure for bl_mqsetting
-- ----------------------------
DROP TABLE IF EXISTS `bl_mqsetting`;
CREATE TABLE `bl_mqsetting`  (
  `key` varchar(185) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_mqsetting
-- ----------------------------
INSERT INTO `bl_mqsetting` VALUES ('keyl', 'oi6f288cl0osxtdnpcgofn4gffw0z2gs');
INSERT INTO `bl_mqsetting` VALUES ('lastheart', '');
INSERT INTO `bl_mqsetting` VALUES ('lastpay', '');
INSERT INTO `bl_mqsetting` VALUES ('jkstate', '1');
INSERT INTO `bl_mqsetting` VALUES ('close', '5');
INSERT INTO `bl_mqsetting` VALUES ('payQf', '1');
INSERT INTO `bl_mqsetting` VALUES ('wxpay', '');
INSERT INTO `bl_mqsetting` VALUES ('alipay', '');
INSERT INTO `bl_mqsetting` VALUES ('jhpay', '');

-- ----------------------------
-- Table structure for bl_mqtmp_price
-- ----------------------------
DROP TABLE IF EXISTS `bl_mqtmp_price`;
CREATE TABLE `bl_mqtmp_price`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `oid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `create_date` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bl_mqtmp_price
-- ----------------------------

-- ----------------------------
-- Table structure for bl_navcog
-- ----------------------------
DROP TABLE IF EXISTS `bl_navcog`;
CREATE TABLE `bl_navcog`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_navcog
-- ----------------------------
INSERT INTO `bl_navcog` VALUES (2, '{\"set\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"admins\":\"\\u7ba1\\u7406\\u5458\\u5217\\u8868\",\"user\":\"\\u7528\\u6237\\u5217\\u8868\",\"orders\":\"\\u8ba2\\u5355\\u5217\\u8868\",\"gdclass\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"goods\":\"\\u5546\\u54c1\\u5217\\u8868\",\"kami\":\"\\u5361\\u5bc6\\u7ba1\\u7406\"}');

-- ----------------------------
-- Table structure for bl_orders
-- ----------------------------
DROP TABLE IF EXISTS `bl_orders`;
CREATE TABLE `bl_orders`  (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '订单id',
  `oname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单名称',
  `gid` int(100) NOT NULL COMMENT '商品id',
  `omoney` decimal(60, 2) NOT NULL DEFAULT 0.00 COMMENT '商品单价',
  `cmoney` decimal(60, 2) NOT NULL COMMENT '订单总价',
  `onum` int(100) NOT NULL COMMENT '订单数量',
  `chapwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL COMMENT '查询密码',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT '充值账号',
  `otype` tinyint(1) NOT NULL COMMENT '订单类型 0自动发卡 1手工充值',
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '充值详情',
  `payid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL COMMENT '第三方支付平台id',
  `paytype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL COMMENT '支付方式',
  `uname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL COMMENT '用户名',
  `ctime` int(100) NOT NULL COMMENT '下单日期',
  `status` tinyint(1) NOT NULL COMMENT '0待付款 1待处理 2已处理 3已完成  4处理失败 5发卡失败',
  `uid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 CHECKSUM = 1 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_orders
-- ----------------------------

-- ----------------------------
-- Table structure for bl_ulevel
-- ----------------------------
DROP TABLE IF EXISTS `bl_ulevel`;
CREATE TABLE `bl_ulevel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bl_ulevel
-- ----------------------------
INSERT INTO `bl_ulevel` VALUES (1, '注册');
INSERT INTO `bl_ulevel` VALUES (2, '金牌');
INSERT INTO `bl_ulevel` VALUES (3, '钻石');

-- ----------------------------
-- Table structure for bl_users
-- ----------------------------
DROP TABLE IF EXISTS `bl_users`;
CREATE TABLE `bl_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `upasswd` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `lid` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
  `is_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `pwtime` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT '1465164366',
  `ctime` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '1514736000',
  `last_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '127.0.0.1',
  `ckmail` tinyint(1) NULL DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
