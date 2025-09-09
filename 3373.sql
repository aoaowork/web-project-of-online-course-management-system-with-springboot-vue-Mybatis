

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for th_admin
-- ----------------------------
DROP TABLE IF EXISTS `th_admin`;
CREATE TABLE `th_admin`  (
  `admin_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员工号',
  `password` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `telephone` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_admin
-- ----------------------------
INSERT INTO `th_admin` VALUES ('admin', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '10000001111');
INSERT INTO `th_admin` VALUES ('root', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '10000001112');




-- ----------------------------
-- Table structure for th_chapter
-- ----------------------------
DROP TABLE IF EXISTS `th_chapter`;
CREATE TABLE `th_chapter`  (
  `chapter_id` int(0) NOT NULL AUTO_INCREMENT,
  `course_id` int(0) NOT NULL COMMENT '所在课程号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `views` int(0) NULL DEFAULT 0,
  `likes` int(0) NULL DEFAULT 0,
  `chapter_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`chapter_id`) USING BTREE,
  INDEX `reforcourse`(`course_id`) USING BTREE,
  CONSTRAINT `th_chapter_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `th_course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 215 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_chapter
-- ----------------------------
INSERT INTO `th_chapter` VALUES (1, 1, '窗外', 49, 17, '/files/user/root/chapter/chapter_2022_05_04083513137.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (2, 1, '休闲', 11, 2, '/files/user/root/chapter/chapter_2022_05_04083552266.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (3, 1, '工作', 10, 3, '/files/user/root/chapter/chapter_2022_05_04083614181.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (4, 1, '加班', 6, 2, '/files/user/root/chapter/chapter_2022_05_04083641467.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (181, 7, '第一章 Java课程简介', 40, 5, '/files/user/stu023/chapter/chapter_2023_07_09174923895.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (182, 7, '第二章 ASCII编码', 14, 6, '/files/user/stu023/chapter/chapter_2023_07_09175043122.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (183, 7, '第三章 关键字和标志符', 5, 0, '/files/user/stu023/chapter/chapter_2023_07_09175104068.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (184, 7, '第四章 面向对象进阶介绍', 2, 1, '/files/user/stu023/chapter/chapter_2023_07_09175414525.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (185, 2, '第一章 计算机发展历史', 5, 1, '/files/user/root/chapter/chapter_2023_07_11210439514.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (186, 2, '第二章 计算机启动过程', 1, 0, '/files/user/root/chapter/chapter_2023_07_11210511015.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (187, 2, '第三章 计算机内存', 0, 0, '/files/user/root/chapter/chapter_2023_07_11210530996.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (188, 2, '第四章 计算机指令', 0, 0, '/files/user/root/chapter/chapter_2023_07_11210548792.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (189, 2, '第五章 静态链接', 0, 0, '/files/user/root/chapter/chapter_2023_07_11210605627.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (191, 3, '第一章 微机组成', 0, 0, '/files/user/root/chapter/chapter_2023_07_11211157325.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (192, 3, '第二章 CPU内部结构', 0, 0, '/files/user/root/chapter/chapter_2023_07_11211213942.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (193, 3, '第三章 堆栈', 0, 0, '/files/user/root/chapter/chapter_2023_07_11211227491.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (194, 3, '第四章 时序与总线操作', 0, 0, '/files/user/root/chapter/chapter_2023_07_11211243906.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (195, 3, '第五章 存储和地址空间', 0, 0, '/files/user/root/chapter/chapter_2023_07_11211828258.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (196, 4, '01 单片机结构', 0, 0, '/files/user/root/chapter/chapter_2023_07_11212510147.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (197, 4, '02 单片机性能', 0, 0, '/files/user/root/chapter/chapter_2023_07_11212522642.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (198, 4, '03 JD51型单片机实验', 0, 0, '/files/user/root/chapter/chapter_2023_07_11212535701.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (199, 4, '04 硬件功能', 0, 0, '/files/user/root/chapter/chapter_2023_07_11212546527.mp4', '2023-12-27 00:35:47');
INSERT INTO `th_chapter` VALUES (200, 3, '01-课程内容介绍.mp4', 0, 0, '/files/user/root/chapter/chapter_2024_02_01111323141.mp4', '2024-02-01 03:13:25');
INSERT INTO `th_chapter` VALUES (205, 58, '01-课程内容介绍.mp4', 0, 0, '/files/user/stu023/chapter/chapter_2024_02_01171643371.mp4', '2024-02-01 09:16:46');
INSERT INTO `th_chapter` VALUES (206, 59, '第一章', 1, 0, '/files/user/stu023/chapter/chapter_2024_02_01172846940.mp4', '2024-02-01 09:28:55');
INSERT INTO `th_chapter` VALUES (210, 8, '6 - What If I Want to Move Faster.mp4', 0, 0, '/files/user/stu023/chapter/chapter_2024_03_26025751376.mp4', '2024-03-25 18:57:53');
INSERT INTO `th_chapter` VALUES (212, 7, '6 - What If I Want to Move Faster.mp4', 1, 0, '/files/user/stu023/chapter/chapter_2024_08_05042926776.mp4', '2024-08-04 20:29:29');
INSERT INTO `th_chapter` VALUES (213, 7, '测试要素', 1, 1, '/files/user/stu023/chapter/chapter_2024_09_14104443831.mp4', '2024-09-14 14:44:55');
INSERT INTO `th_chapter` VALUES (214, 7, '测试流程', 1, 1, '/files/user/stu023/chapter/chapter_2024_09_21233638322.mp4', '2024-09-21 15:36:48');
INSERT INTO `th_chapter` VALUES (215, 7, '09-课程内容介绍.mp4', 1, 0, '/files/user/stu023/chapter/chapter_2024_09_22025250310.mp4', '2024-09-21 18:52:57');

-- ----------------------------
-- Table structure for th_chapter_like_records
-- ----------------------------
DROP TABLE IF EXISTS `th_chapter_like_records`;
CREATE TABLE `th_chapter_like_records`  (
  `record_id` int(0) NOT NULL AUTO_INCREMENT,
  `chapter_id` int(0) NULL DEFAULT NULL,
  `user_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `discussion_id`(`chapter_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `th_chapter_like_records_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `th_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `th_chapter_like_records_ibfk_3` FOREIGN KEY (`chapter_id`) REFERENCES `th_chapter` (`chapter_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_chapter_like_records
-- ----------------------------
INSERT INTO `th_chapter_like_records` VALUES (39, 3, 'stu023');
INSERT INTO `th_chapter_like_records` VALUES (40, 2, 'stu023');
INSERT INTO `th_chapter_like_records` VALUES (42, 1, 'stu023');
INSERT INTO `th_chapter_like_records` VALUES (43, 4, 'stu023');
INSERT INTO `th_chapter_like_records` VALUES (44, 3, 'stu013');
INSERT INTO `th_chapter_like_records` VALUES (45, 4, 'stu013');
INSERT INTO `th_chapter_like_records` VALUES (61, 181, 'stu022');
INSERT INTO `th_chapter_like_records` VALUES (62, 182, 'stu022');
INSERT INTO `th_chapter_like_records` VALUES (63, 181, 'stu013');
INSERT INTO `th_chapter_like_records` VALUES (64, 1, 'stu003');
INSERT INTO `th_chapter_like_records` VALUES (66, 3, 'stu003');
INSERT INTO `th_chapter_like_records` VALUES (67, 185, 'stu023');
INSERT INTO `th_chapter_like_records` VALUES (68, 184, 'stu003');
INSERT INTO `th_chapter_like_records` VALUES (69, 2, 'stu003');
INSERT INTO `th_chapter_like_records` VALUES (70, 182, 'user2');
INSERT INTO `th_chapter_like_records` VALUES (71, 181, 'stu003');
INSERT INTO `th_chapter_like_records` VALUES (72, 181, 'sdu001');
INSERT INTO `th_chapter_like_records` VALUES (73, 181, 'sdu345');
INSERT INTO `th_chapter_like_records` VALUES (74, 182, 'sdu346');
INSERT INTO `th_chapter_like_records` VALUES (75, 182, 'sdu788');
INSERT INTO `th_chapter_like_records` VALUES (76, 213, 'sdu788');
INSERT INTO `th_chapter_like_records` VALUES (77, 182, 'sdu143');
INSERT INTO `th_chapter_like_records` VALUES (78, 214, 'sdu143');
INSERT INTO `th_chapter_like_records` VALUES (79, 182, 'sdu122');





-- Table structure for th_course
-- ----------------------------
DROP TABLE IF EXISTS `th_course`;
CREATE TABLE `th_course`  (
  `course_id` int(0) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_start` bit(1) NULL DEFAULT NULL COMMENT '1真0假',
  `is_public` bit(1) NULL DEFAULT NULL COMMENT '1真0假',
  `cover_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `describes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`) USING BTREE,
  INDEX `courseforuser`(`user_id`) USING BTREE,
  CONSTRAINT `courseforuser` FOREIGN KEY (`user_id`) REFERENCES `th_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_course
-- ----------------------------
INSERT INTO `th_course` VALUES (1, '自然语言处理', 'root', b'1', b'1', '/files/user/root/cover/cover_2024_08_05035215299.png', '自然语言处理(natural language processing, NLP)是人工智能的一个重要分支，研究算法如何自动的理解和生成人类语言。近些年，自然语言处理受到了越来越多的关注，从智能检索到智能翻译、智能音箱、GPT等模型的影响十分广泛。\n自然语言处理背后的基本技术是机器学习，自然语言的特性使得自然语言处理领域的机器学习技术具有自身的重要特点，而这些特点，也为整个机器学习领域的发展提供了重要贡献。理解自然语言处理背后的机器学习基础，为深入理解语言处理技术，灵活应', '2024-07-27 00:35:47');
INSERT INTO `th_course` VALUES (2, '算法设计与分析', 'root', b'1', b'1', '/files/user/root/cover/cover_2024_08_05035843440.png', '从辗转相除法到割圆术，从算盘到电子计算机，算法在人类文明发展中始终扮演着重要角色。如今，有计算的地方，就有算法的身影。从网上购物到出行规划，从工作学习到休闲娱乐，算法无所不在,已融入到人们生活的方方面面。\n\n本课程是面向计算机和信息技术相关专业本科生的核心专业课，同时适合对算法的基础知识有学习需求的相关从业人员。课程汇聚了北航计算机学院顶级的算法授课团队，不但讲授分而治之、动态规划和贪心策略等经典算法技术，而且以产教融合的方式邀请阿里巴巴等互联网公司副总裁、ACM国际大学生程', '2024-07-27 00:35:47');
INSERT INTO `th_course` VALUES (3, '人工智能', 'root', b'1', b'1', '/files/user/root/cover/cover_2024_08_05040004699.png', '人工智能(Artificial Intelligence，简称AI)是以机器为载体所展示出来的人类智能，因此人工智能也被称为机器智能(Machine Intelligence)。对人类智能的模拟可通过以符号主义为核心的逻辑推理、以问题求解为核心的探询搜索、以数据驱动为核心的机器学习、以行为主义为核心的强化学习和以博弈对抗为核心的决策智能等方法来实现。\n\n    本课程成体系介绍人工智能的基本概念和基础算法，可帮助学习者掌握人工智能脉络体系，体会具能、使能和赋能，从算法层面对人', '2024-07-27 00:35:47');
INSERT INTO `th_course` VALUES (4, '大数据算法', 'root', b'1', b'1', '/files/user/root/cover/cover_2024_08_05035421633.png', '大数据算法这门课程旨在通过讲授一些大数据上基本算法设计思想，包括概率算法、I/O有效算法和并行算法，让听课的同学们接触到和传统算法课程不一样的算法设计与分析思路，并且以最新的研究成果为导向，让参与这门课程学习的同学了解大数据算法的前沿知识。通过这门课程的学习，同学可以掌握大数据算法设计的基本思想，并通过本门课程的作业，掌握大数据算法设计与分析的技术。', '2024-07-27 00:35:47');
INSERT INTO `th_course` VALUES (5, '计算系统的局限性', 'root', b'1', b'1', '/files/user/root/cover/cover_2022_05_10140023701.png', '设计电子电路', '2024-07-27 00:35:47');
INSERT INTO `th_course` VALUES (7, '软件测试', 'stu023', b'1', b'1', '/files/user/stu023/cover/cover_2024_08_05040348910.png', '本课程为普通高校师生（多层次）与社会学习者而开设。课程既为在校学生获得软件测试专业技能较高的‘入门’水平或继续深造奠基，也为软件测试从业者提升职业能力服务。\n\n本课程定位于软件测试/软件开发工程师，为学习培养从事软件测试各项工作而应具备的专业技能而设立具体目标。\n\n本课程涵盖软件测试基础理论、经典测试技术、各软件领域应用场景的测试策略及测试过程，以及测试工程的实践共五个部分。课程内容覆盖面广、层次多样、内涵丰富，并尽力体现‘与时俱进’。\n\n本课程突出MOOC特点，依据软件测试', '2024-07-27 00:35:47');
INSERT INTO `th_course` VALUES (8, '数据结构', 'stu023', b'1', b'0', '/files/user/stu023/cover/cover_2024_07_13142738935.jpg', 'hello,数据结构', '2024-07-27 00:35:47');
INSERT INTO `th_course` VALUES (9, '计算机组成原理', 'tea002', b'1', b'0', '/files/user/tea002/cover/cover_2022_05_10144537956.png', '学习物理知识', '2024-07-27 00:35:47');
INSERT INTO `th_course` VALUES (58, '大数据', 'stu023', b'1', b'1', '/files/user/stu023/cover/cover_2024_07_13142749722.jpg', '', '2024-02-01 09:16:10');
INSERT INTO `th_course` VALUES (59, '单机骗', 'stu023', b'1', b'1', '/files/user/stu023/cover/cover_2024_07_13142757723.png', '', '2024-02-01 09:28:08');
INSERT INTO `th_course` VALUES (60, '大数据', 'stu003', b'1', b'1', '/files/user/stu003/cover/cover_2024_02_26011920286.jpg', '2121212121', '2024-02-25 17:19:24');
INSERT INTO `th_course` VALUES (62, '设计思维', 'root', b'1', b'1', '/files/user/root/cover/cover_2024_08_05042740935.png', '1', '2024-08-04 20:27:56');
INSERT INTO `th_course` VALUES (63, 'Java程序设计', 'sdu788', b'1', b'1', '/files/user/sdu788/cover/cover_2024_09_14105132018.png', '1111111111111111111111111111', '2024-09-14 14:51:46');
INSERT INTO `th_course` VALUES (64, '算法', 'stu023', b'1', b'1', '/files/user/stu023/cover/cover_2024_09_21233526521.png', '11111111111', '2024-09-21 15:35:30');
INSERT INTO `th_course` VALUES (65, '算法进阶', 'stu023', b'1', b'1', '/files/user/stu023/cover/cover_2024_09_22025148716.png', '111111111111111111111111111', '2024-09-21 18:51:57');

-- ----------------------------
-- Table structure for th_course_user
-- ----------------------------
DROP TABLE IF EXISTS `th_course_user`;
CREATE TABLE `th_course_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `course_id` int(0) NOT NULL COMMENT '课程id',
  `user_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `res_dl_num` int(0) NULL DEFAULT 0 COMMENT '资源下载数',
  `discussion_create_num` int(0) NULL DEFAULT 0 COMMENT '讨论创建数',
  `chapter_view_time` int(0) NULL DEFAULT 0 COMMENT '章节观看时长',
  `chapter_view_num` int(0) NULL DEFAULT 0 COMMENT '章节观看次数',
  `reply_num` int(0) NULL DEFAULT 0 COMMENT '发表回复数',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cuforcourse`(`course_id`) USING BTREE,
  INDEX `cuforuser`(`user_id`) USING BTREE,
  CONSTRAINT `cuforcourse` FOREIGN KEY (`course_id`) REFERENCES `th_course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cuforuser` FOREIGN KEY (`user_id`) REFERENCES `th_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 263 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_course_user
-- ----------------------------
INSERT INTO `th_course_user` VALUES (6, 4, 'stu023', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (8, 5, 'stu023', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (14, 1, 'stu003', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (15, 1, 'stu033', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (16, 1, 'stu043', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (78, 1, 'stu013', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (88, 1, 'stu023', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (108, 2, 'stu013', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (109, 4, 'stu013', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (110, 3, 'stu013', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (111, 5, 'stu013', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (112, 7, 'stu013', 12, 2, 20, 5, 13, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (118, 1, 'tea001', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (119, 2, 'tea001', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (120, 3, 'tea001', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (121, 4, 'tea001', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (122, 5, 'tea001', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (124, 1, 'tea002', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (125, 2, 'tea002', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (127, 1, 'tea003', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (128, 2, 'tea003', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (130, 1, 'tea004', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (131, 2, 'tea004', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (133, 4, 'tea004', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (134, 3, 'tea004', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (135, 5, 'tea004', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (139, 2, 'stu033', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (140, 3, 'stu033', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (141, 4, 'stu033', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (142, 5, 'stu033', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (156, 1, 'stu022', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (157, 2, 'stu022', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (158, 3, 'stu022', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (159, 4, 'stu022', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (160, 5, 'stu022', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (162, 7, 'stu022', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (166, 7, 'root', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (168, 7, 'stu023', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (169, 1, 'root123', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (170, 2, 'root123', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (171, 3, 'root123', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (172, 4, 'root123', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (173, 5, 'root123', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (174, 1, 'stu016', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (175, 2, 'stu016', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (176, 3, 'stu016', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (177, 4, 'stu016', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (178, 5, 'stu016', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (179, 7, 'stu016', 0, 0, 0, 0, 0, '2023-12-25 09:26:07');
INSERT INTO `th_course_user` VALUES (186, 1, 'user1', 0, 0, 0, 0, 0, '2024-02-01 09:10:44');
INSERT INTO `th_course_user` VALUES (187, 2, 'user1', 0, 0, 0, 0, 0, '2024-02-01 09:10:44');
INSERT INTO `th_course_user` VALUES (188, 3, 'user1', 0, 0, 0, 0, 0, '2024-02-01 09:10:44');
INSERT INTO `th_course_user` VALUES (189, 4, 'user1', 0, 0, 0, 0, 0, '2024-02-01 09:10:44');
INSERT INTO `th_course_user` VALUES (190, 5, 'user1', 0, 0, 0, 0, 0, '2024-02-01 09:10:44');
INSERT INTO `th_course_user` VALUES (191, 7, 'user1', 0, 0, 0, 0, 0, '2024-02-01 09:11:12');
INSERT INTO `th_course_user` VALUES (192, 58, 'user1', 0, 0, 0, 0, 0, '2024-02-01 09:17:19');
INSERT INTO `th_course_user` VALUES (193, 1, 'user2', 0, 0, 0, 0, 0, '2024-02-01 09:23:04');
INSERT INTO `th_course_user` VALUES (194, 2, 'user2', 0, 0, 0, 0, 0, '2024-02-01 09:23:04');
INSERT INTO `th_course_user` VALUES (195, 3, 'user2', 0, 0, 0, 0, 0, '2024-02-01 09:23:04');
INSERT INTO `th_course_user` VALUES (196, 4, 'user2', 0, 0, 0, 0, 0, '2024-02-01 09:23:04');
INSERT INTO `th_course_user` VALUES (197, 5, 'user2', 0, 0, 0, 0, 0, '2024-02-01 09:23:04');
INSERT INTO `th_course_user` VALUES (199, 59, 'user2', 0, 0, 0, 0, 0, '2024-02-01 09:29:32');
INSERT INTO `th_course_user` VALUES (200, 2, 'stu003', 0, 0, 0, 0, 0, '2024-02-25 17:09:14');
INSERT INTO `th_course_user` VALUES (201, 1, 'sdu001', 0, 0, 0, 0, 0, '2024-03-25 19:01:01');
INSERT INTO `th_course_user` VALUES (202, 2, 'sdu001', 0, 0, 0, 0, 0, '2024-03-25 19:01:01');
INSERT INTO `th_course_user` VALUES (203, 3, 'sdu001', 0, 0, 0, 0, 0, '2024-03-25 19:01:01');
INSERT INTO `th_course_user` VALUES (204, 4, 'sdu001', 0, 0, 0, 0, 0, '2024-03-25 19:01:01');
INSERT INTO `th_course_user` VALUES (205, 5, 'sdu001', 0, 0, 0, 0, 0, '2024-03-25 19:01:01');
INSERT INTO `th_course_user` VALUES (206, 7, 'sdu001', 0, 0, 0, 0, 0, '2024-03-25 19:02:09');
INSERT INTO `th_course_user` VALUES (207, 1, 'stu567', 0, 0, 0, 0, 0, '2024-08-04 19:56:29');
INSERT INTO `th_course_user` VALUES (208, 2, 'stu567', 0, 0, 0, 0, 0, '2024-08-04 19:56:29');
INSERT INTO `th_course_user` VALUES (209, 3, 'stu567', 0, 0, 0, 0, 0, '2024-08-04 19:56:29');
INSERT INTO `th_course_user` VALUES (210, 4, 'stu567', 0, 0, 0, 0, 0, '2024-08-04 19:56:29');
INSERT INTO `th_course_user` VALUES (211, 5, 'stu567', 0, 0, 0, 0, 0, '2024-08-04 19:56:29');
INSERT INTO `th_course_user` VALUES (212, 1, 'sdu345', 0, 0, 0, 0, 0, '2024-08-04 20:15:02');
INSERT INTO `th_course_user` VALUES (213, 2, 'sdu345', 0, 0, 0, 0, 0, '2024-08-04 20:15:02');
INSERT INTO `th_course_user` VALUES (214, 3, 'sdu345', 0, 0, 0, 0, 0, '2024-08-04 20:15:02');
INSERT INTO `th_course_user` VALUES (215, 4, 'sdu345', 0, 0, 0, 0, 0, '2024-08-04 20:15:02');
INSERT INTO `th_course_user` VALUES (216, 5, 'sdu345', 0, 0, 0, 0, 0, '2024-08-04 20:15:02');
INSERT INTO `th_course_user` VALUES (219, 1, 'sdu346', 0, 0, 0, 0, 0, '2024-08-04 20:23:09');
INSERT INTO `th_course_user` VALUES (220, 2, 'sdu346', 0, 0, 0, 0, 0, '2024-08-04 20:23:09');
INSERT INTO `th_course_user` VALUES (221, 3, 'sdu346', 0, 0, 0, 0, 0, '2024-08-04 20:23:09');
INSERT INTO `th_course_user` VALUES (222, 4, 'sdu346', 0, 0, 0, 0, 0, '2024-08-04 20:23:09');
INSERT INTO `th_course_user` VALUES (223, 5, 'sdu346', 0, 0, 0, 0, 0, '2024-08-04 20:23:09');
INSERT INTO `th_course_user` VALUES (226, 3, 'stu023', 0, 0, 0, 0, 0, '2024-08-05 13:42:51');
INSERT INTO `th_course_user` VALUES (227, 2, 'stu023', 0, 0, 0, 0, 0, '2024-08-05 13:42:54');
INSERT INTO `th_course_user` VALUES (228, 62, 'stu023', 0, 0, 0, 0, 0, '2024-08-05 13:42:59');
INSERT INTO `th_course_user` VALUES (229, 1, 'sdu988', 0, 0, 0, 0, 0, '2024-09-14 14:21:50');
INSERT INTO `th_course_user` VALUES (230, 2, 'sdu988', 0, 0, 0, 0, 0, '2024-09-14 14:21:50');
INSERT INTO `th_course_user` VALUES (231, 3, 'sdu988', 0, 0, 0, 0, 0, '2024-09-14 14:21:50');
INSERT INTO `th_course_user` VALUES (232, 4, 'sdu988', 0, 0, 0, 0, 0, '2024-09-14 14:21:50');
INSERT INTO `th_course_user` VALUES (233, 5, 'sdu988', 0, 0, 0, 0, 0, '2024-09-14 14:21:50');
INSERT INTO `th_course_user` VALUES (234, 7, 'sdu988', 0, 0, 0, 0, 0, '2024-09-14 14:30:35');
INSERT INTO `th_course_user` VALUES (235, 1, 'sdu899', 0, 0, 0, 0, 0, '2024-09-14 14:33:17');
INSERT INTO `th_course_user` VALUES (236, 2, 'sdu899', 0, 0, 0, 0, 0, '2024-09-14 14:33:17');
INSERT INTO `th_course_user` VALUES (237, 3, 'sdu899', 0, 0, 0, 0, 0, '2024-09-14 14:33:17');
INSERT INTO `th_course_user` VALUES (238, 4, 'sdu899', 0, 0, 0, 0, 0, '2024-09-14 14:33:17');
INSERT INTO `th_course_user` VALUES (239, 5, 'sdu899', 0, 0, 0, 0, 0, '2024-09-14 14:33:17');
INSERT INTO `th_course_user` VALUES (240, 1, 'sdu788', 0, 0, 0, 0, 0, '2024-09-14 14:37:09');
INSERT INTO `th_course_user` VALUES (241, 2, 'sdu788', 0, 0, 0, 0, 0, '2024-09-14 14:37:10');
INSERT INTO `th_course_user` VALUES (242, 3, 'sdu788', 0, 0, 0, 0, 0, '2024-09-14 14:37:10');
INSERT INTO `th_course_user` VALUES (243, 4, 'sdu788', 0, 0, 0, 0, 0, '2024-09-14 14:37:10');
INSERT INTO `th_course_user` VALUES (244, 5, 'sdu788', 0, 0, 0, 0, 0, '2024-09-14 14:37:10');
INSERT INTO `th_course_user` VALUES (245, 7, 'sdu788', 0, 0, 0, 0, 0, '2024-09-14 14:38:28');
INSERT INTO `th_course_user` VALUES (246, 1, 'sdu7888', 0, 0, 0, 0, 0, '2024-09-14 15:38:38');
INSERT INTO `th_course_user` VALUES (247, 2, 'sdu7888', 0, 0, 0, 0, 0, '2024-09-14 15:38:38');
INSERT INTO `th_course_user` VALUES (248, 3, 'sdu7888', 0, 0, 0, 0, 0, '2024-09-14 15:38:38');
INSERT INTO `th_course_user` VALUES (249, 4, 'sdu7888', 0, 0, 0, 0, 0, '2024-09-14 15:38:38');
INSERT INTO `th_course_user` VALUES (250, 5, 'sdu7888', 0, 0, 0, 0, 0, '2024-09-14 15:38:38');
INSERT INTO `th_course_user` VALUES (251, 7, 'sdu7888', 0, 0, 0, 0, 0, '2024-09-14 15:38:52');
INSERT INTO `th_course_user` VALUES (252, 1, 'sdu143', 0, 0, 0, 0, 0, '2024-09-21 15:27:44');
INSERT INTO `th_course_user` VALUES (253, 2, 'sdu143', 0, 0, 0, 0, 0, '2024-09-21 15:27:44');
INSERT INTO `th_course_user` VALUES (254, 3, 'sdu143', 0, 0, 0, 0, 0, '2024-09-21 15:27:44');
INSERT INTO `th_course_user` VALUES (255, 4, 'sdu143', 0, 0, 0, 0, 0, '2024-09-21 15:27:44');
INSERT INTO `th_course_user` VALUES (256, 5, 'sdu143', 0, 0, 0, 0, 0, '2024-09-21 15:27:44');
INSERT INTO `th_course_user` VALUES (257, 7, 'sdu143', 0, 0, 0, 0, 0, '2024-09-21 15:28:53');
INSERT INTO `th_course_user` VALUES (258, 1, 'sdu122', 0, 0, 0, 0, 0, '2024-09-21 18:42:12');
INSERT INTO `th_course_user` VALUES (259, 2, 'sdu122', 0, 0, 0, 0, 0, '2024-09-21 18:42:12');
INSERT INTO `th_course_user` VALUES (260, 3, 'sdu122', 0, 0, 0, 0, 0, '2024-09-21 18:42:12');
INSERT INTO `th_course_user` VALUES (261, 4, 'sdu122', 0, 0, 0, 0, 0, '2024-09-21 18:42:12');
INSERT INTO `th_course_user` VALUES (262, 5, 'sdu122', 0, 0, 0, 0, 0, '2024-09-21 18:42:12');
INSERT INTO `th_course_user` VALUES (263, 7, 'sdu122', 0, 0, 0, 0, 0, '2024-09-21 18:45:21');

-- ----------------------------
-- Table structure for th_discussion
-- ----------------------------
DROP TABLE IF EXISTS `th_discussion`;
CREATE TABLE `th_discussion`  (
  `discussion_id` int(0) NOT NULL AUTO_INCREMENT,
  `course_id` int(0) NOT NULL,
  `user_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(2047) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hits` int(0) NULL DEFAULT NULL,
  `likes` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`discussion_id`) USING BTREE,
  INDEX `disforcourse`(`course_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `disforcourse` FOREIGN KEY (`course_id`) REFERENCES `th_course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `th_discussion_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `th_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_discussion
-- ----------------------------
INSERT INTO `th_discussion` VALUES (19, 7, 'stu023', '讨论区文本测试', '<p>等你，在雨中，在造虹的雨中</p>\n\n<p>蝉声沉落，蛙声升起</p>\n\n<p>一池的红莲如红焰，在雨中</p>\n\n<p>你来不来都一样，竟感觉</p>\n\n<p>每朵莲都像你</p>\n\n<p>尤其隔着黄昏，隔着这样的细雨</p>\n\n<p>永恒，刹那，刹那，永恒</p>\n\n<p>等你，在时间之外，</p>\n\n<p>在时间之内，等你，在刹那，在永恒</p>\n\n<p>如果你的手在我的手里，此刻</p>\n\n<p>如果你的清芬</p>\n\n<p>在我的鼻孔，我会说，小情人</p>\n\n<p>诺，这只手应该采莲，在吴宫</p>\n\n<p>这只手应该</p>\n\n<p>摇一柄桂桨，在木兰舟中</p>\n\n<p>一颗星悬在科学馆的飞檐</p>\n\n<p>耳坠子一般的悬着</p>\n\n<p>瑞士表说都七点了。忽然你走来</p>\n\n<p>步雨后的红莲，翩翩，你走来</p>\n\n<p>像一首小令</p>\n\n<p>从一则爱情的典故里你走来</p>\n\n<p>从姜白石的词里，有韵地，你走来</p>\n', 11, 1, '2024-07-27 04:19:04');
INSERT INTO `th_discussion` VALUES (20, 7, 'stu023', '讨论区图片测试', '<p><img alt=\"\" height=\"416\" src=\"/files/user/stu023/ckeditor/ckeditor_2023_07_10122222973.jpg\" width=\"680\" /></p>\n', 6, 0, '2024-07-27 04:19:04');
INSERT INTO `th_discussion` VALUES (21, 7, 'stu022', '学生发布讨论测试', '<div>这是占位文本&nbsp;这是占位文本&nbsp;这是占位文本&nbsp;这是占位文本</div>\n\n<div>这是占位文本&nbsp;这是占位文本&nbsp;这是占位文本&nbsp;这是占位文本</div>\n\n<div>这是占位文本&nbsp;这是占位文本&nbsp;这是占位文本&nbsp;这是占位文本</div>\n\n<div>这是占位文本&nbsp;这是占位文本&nbsp;这是占位文本&nbsp;这是占位文本</div>\n', 8, 0, '2024-07-27 04:19:04');
INSERT INTO `th_discussion` VALUES (22, 7, 'stu013', '栈和队列', '<div>在线性表中，栈和队列是我们要掌握的重要知识点，关于这两者的区别，大家可以在下面说说自己的看法吗</div>\n\n<p><img alt=\"\" height=\"306\" src=\"/files/user/stu013/ckeditor/ckeditor_2023_07_11103122185.jpg\" width=\"642\" /></p>\n', 33, 7, '2024-07-27 04:19:04');
INSERT INTO `th_discussion` VALUES (23, 2, 'stu023', '主存中的动态RAM和静态RAM', '<p><span style=\"font-size:18px\">计算机中的RAM为了提高读写效率，会分出静态RAM和动态RAM；</span></p>\n\n<p><span style=\"font-size:18px\">两种RAM在组成元件和速度等方面都有不同，大家来说说自己的看法吧。</span></p>\n\n<ul>\n	<li><span style=\"font-size:16px\">主存：DRAM，一般由电容组成，读取速度较慢，但功耗低，价格便宜</span></li>\n	<li><span style=\"font-size:16px\">缓存：SRAM，一般有触发器组成，读取速度快，同时成本高，功耗高。</span></li>\n</ul>\n', 4, 0, '2024-07-27 04:19:04');
INSERT INTO `th_discussion` VALUES (24, 2, 'stu023', '计算机系统的性能指标', '<p>衡量计算机性能的指标有很多，比如：</p>\n\n<ul>\n	<li>基本字长</li>\n	<li>数据传输率</li>\n	<li>外频</li>\n	<li>主频</li>\n	<li>功耗</li>\n</ul>\n\n<p>请大家就这方面，谈谈自己的理解</p>\n', 3, 0, '2024-07-27 04:19:04');
INSERT INTO `th_discussion` VALUES (25, 7, 'stu023', '2222222222222', '<p>2222222222222222222222222</p>\n', 4, 1, '2024-07-27 22:36:46');
INSERT INTO `th_discussion` VALUES (26, 7, 'stu023', '534534', '<p>4534543534</p>\n', 4, 1, '2024-07-27 22:48:54');
INSERT INTO `th_discussion` VALUES (27, 7, 'stu023', '如何学习测试', '<p>1111111</p>\n', 1, 0, '2024-02-01 03:21:53');
INSERT INTO `th_discussion` VALUES (28, 7, 'stu023', '1+1+1？', '<p>fasfas</p>\n', 0, 0, '2024-02-01 09:13:52');
INSERT INTO `th_discussion` VALUES (29, 59, 'stu023', '1414', '<p>1471741</p>\n', 2, 1, '2024-02-01 09:30:17');
INSERT INTO `th_discussion` VALUES (30, 7, 'stu023', '什么是python', '<p>什么是python</p>\n', 3, 1, '2024-02-25 17:14:14');
INSERT INTO `th_discussion` VALUES (31, 7, 'stu023', '什么是测试', '<p>1</p>\n', 0, 0, '2024-03-25 19:09:26');
INSERT INTO `th_discussion` VALUES (32, 7, 'stu023', '软件测试的意义', '<p>11111111111111</p>\n', 4, 1, '2024-08-04 20:31:01');
INSERT INTO `th_discussion` VALUES (33, 7, 'stu023', '222222222222222222', '<p><strong>222222222222222222222222222222</strong></p>\n', 1, 0, '2024-09-14 14:46:40');
INSERT INTO `th_discussion` VALUES (34, 7, 'stu023', '1', '<p>1</p>\n', 2, 0, '2024-09-21 15:38:04');
INSERT INTO `th_discussion` VALUES (35, 7, 'stu023', '31232', '<p>312321321</p>\n', 2, 0, '2024-09-21 18:53:59');

-- ----------------------------
-- Table structure for th_discussion_like_records
-- ----------------------------
DROP TABLE IF EXISTS `th_discussion_like_records`;
CREATE TABLE `th_discussion_like_records`  (
  `record_id` int(0) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(0) NULL DEFAULT NULL,
  `user_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `discussion_id`(`discussion_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `th_discussion_like_records_ibfk_1` FOREIGN KEY (`discussion_id`) REFERENCES `th_discussion` (`discussion_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `th_discussion_like_records_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `th_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_discussion_like_records
-- ----------------------------
INSERT INTO `th_discussion_like_records` VALUES (28, 22, 'stu013');
INSERT INTO `th_discussion_like_records` VALUES (30, 19, 'root');
INSERT INTO `th_discussion_like_records` VALUES (31, 25, 'root');
INSERT INTO `th_discussion_like_records` VALUES (32, 22, 'root');
INSERT INTO `th_discussion_like_records` VALUES (33, 29, 'user2');
INSERT INTO `th_discussion_like_records` VALUES (34, 22, 'stu003');
INSERT INTO `th_discussion_like_records` VALUES (35, 30, 'stu003');
INSERT INTO `th_discussion_like_records` VALUES (36, 26, 'sdu345');
INSERT INTO `th_discussion_like_records` VALUES (37, 22, 'sdu345');
INSERT INTO `th_discussion_like_records` VALUES (38, 22, 'sdu346');
INSERT INTO `th_discussion_like_records` VALUES (39, 32, 'sdu788');
INSERT INTO `th_discussion_like_records` VALUES (40, 22, 'sdu143');
INSERT INTO `th_discussion_like_records` VALUES (41, 22, 'sdu122');


-- ----------------------------
-- Table structure for th_experiment
-- ----------------------------
DROP TABLE IF EXISTS `th_experiment`;
CREATE TABLE `th_experiment`  (
  `experiment_id` int(0) NOT NULL AUTO_INCREMENT,
  `course_id` int(0) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`experiment_id`) USING BTREE,
  INDEX `course_id`(`course_id`) USING BTREE,
  CONSTRAINT `th_experiment_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `th_course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_experiment
-- ----------------------------
INSERT INTO `th_experiment` VALUES (27, 7, '实验一 最大子序列交替和', '23417_任务书.docx', '2023-12-28 08:46:20');
INSERT INTO `th_experiment` VALUES (28, 7, '实验二 最长回文子串', '69435_任务书.docx', '2023-12-28 08:46:20');
INSERT INTO `th_experiment` VALUES (29, 7, '5674745', '49361_4154ca73-a703-4063-8664-cda1ff273d3e.jpg', '2023-12-29 22:49:11');
INSERT INTO `th_experiment` VALUES (30, 7, '两数之和', '50870_2.xlsx', '2024-02-01 09:14:12');
INSERT INTO `th_experiment` VALUES (31, 59, '反转链表', '43891_2.xlsx', '2024-02-01 09:30:56');
INSERT INTO `th_experiment` VALUES (32, 7, '反转链表', '11679_2.xlsx', '2024-02-25 17:15:13');
INSERT INTO `th_experiment` VALUES (33, 7, '111', '02742_微信图片_20240805034949.png', '2024-08-04 20:31:44');
INSERT INTO `th_experiment` VALUES (34, 7, '三叔之和', '33496_微信图片_20240805035013.png', '2024-09-14 14:47:31');


-- ----------------------------
-- Table structure for th_notice
-- ----------------------------
DROP TABLE IF EXISTS `th_notice`;
CREATE TABLE `th_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '通知序号',
  `course_id` int(0) NOT NULL COMMENT '课程号',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hits` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE,
  INDEX `noticeforcourse`(`course_id`) USING BTREE,
  CONSTRAINT `noticeforcourse` FOREIGN KEY (`course_id`) REFERENCES `th_course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_notice
-- ----------------------------
INSERT INTO `th_notice` VALUES (2, 2, '第一周作业 总线', '<p style=\"margin-left:40px\"><span style=\"font-size:20px\">请大家把今天学习的总线知识好好整理，做好笔记，及时复习，加油！</span></p>\n', 42, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (3, 3, '微机原理与汇编作业发布', '<p>第三章的实验作业已上传课堂</p>\n', 12, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (4, 4, '课程设计', '<p>请大家结合本学期学习的课程，利用单片机的相关知识，设计一个小型定时器，要求：</p>\n\n<ul>\n	<li>能够显示时间和日期</li>\n	<li>能够设置闹钟</li>\n	<li>秒表功能</li>\n	<li>计时器功能</li>\n</ul>\n', 52, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (5, 5, '计算体系课堂小结', '本次课堂我们学习了计算体系的相关知识，请大家务必要在课下多多练习，及时复习，加油！', 23, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (6, 9, '大学物理实验通知', '大学物理：本周的实验报告没有交的同学抓紧时间了', 28, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (8, 8, '数据结构实验通知', '数据结构：本周的实验报告没有交的同学抓紧时间了', 55, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (43, 1, '萌新指南', '<h1 style=\"text-align:center\"><span style=\"font-size:26px\">首次登录请先完善您的个人信息&nbsp; *n_n*</span></h1>\n\n<p><span style=\"font-size:20px\">欢迎来到用户主页，在这里您可以：</span></p>\n\n<p><strong><span style=\"font-size:20px\">一、添加喜欢的课程</span></strong></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\">点击&ldquo;添加课程&rdquo;选择想加入的课程，只能加入公开和开放的课程哦。</span></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\">什么是公开和开放呢：</span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">公开的课程大家可以直接加入学习，使用课程中全部的资料和数据。</span></li>\n	<li><span style=\"font-size:20px\">开放是指课程刚被创建，审核通过且内容合格的课程。</span></li>\n	<li><span style=\"font-size:20px\">所以私有和关闭的课程是无法正常加入的哦。</span></li>\n</ul>\n\n<p><strong><span style=\"font-size:20px\">二、创建自己的课程</span></strong></p>\n\n<p><span style=\"font-size:20px\">&nbsp; &nbsp; &nbsp; &nbsp;在&ldquo;我的课程&rdquo;选项卡中点击创建课程，我们给您的课程提供了默认封面，您也可以选择自己上传，推荐上传体积小于1M、尺寸比例1:1.8左右的封面哦。</span></p>\n\n<p><strong><span style=\"font-size:20px\">三、查看课程通知</span></strong></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\">顶部轮播图区域会默认展示您所加入课程的最新通知，至多展示8条，更多通知请点击顶部消息中心查看。</span></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\">点击轮播图，可以查看通知详情，或者在轮播图区域滚动，也可以直接查看通知。</span></p>\n\n<p><span style=\"font-size:20px\"><strong>四、修改个人信息</strong></span></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\">点击顶部头像，可以在修改个人信息窗口中编辑您的姓名，联系方式，密保等内容，或者更换您的头像。</span></p>\n', 547, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (47, 1, '学生指南', '<p><span style=\"font-size:20px\">作为学生，您可以：</span></p>\n\n<p><strong><span style=\"font-size:20px\">一、加入课程学习</span></strong></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\">点击添加课程，查找想要学习的课程，加入后即可开始学习。</span></p>\n\n<p><span style=\"font-size:20px\">&nbsp;<strong>二、在课程中您可以</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">查看课程视频，给视频点赞、评论</span></li>\n	<li><span style=\"font-size:20px\">查看课程通知</span></li>\n	<li><span style=\"font-size:20px\">下载老师上传的资料</span></li>\n	<li><span style=\"font-size:20px\">参与课程讨论，自己发布讨论</span></li>\n	<li><span style=\"font-size:20px\">查看实验并上传报告</span></li>\n	<li><span style=\"font-size:20px\">参与考试，答题并查看成绩</span></li>\n</ul>\n\n<p><strong><span style=\"font-size:20px\">三、退出课程</span></strong></p>\n\n<p><span style=\"font-size:20px\">&nbsp; &nbsp; &nbsp; &nbsp;点击课程选项卡的右下角的退出课程，来离开课程。</span></p>\n', 8, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (48, 2, '第一周测试 计算机系统', '<p style=\"margin-left:40px\"><span style=\"font-size:20px\">本周的组成原理测试已经发布，请大家及时查看！</span></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\">本次测试内容包括：</span></p>\n\n<ul>\n	<li style=\"margin-left: 80px;\"><span style=\"font-size:20px\">​​一、计算机系统概述​​</span></li>\n	<li style=\"margin-left: 80px;\"><span style=\"font-size:20px\">​​二、计算机系统的组成​​</span></li>\n	<li style=\"margin-left: 80px;\"><span style=\"font-size:20px\">​​三、计算机硬件的性能指标​​</span></li>\n	<li style=\"margin-left: 80px;\"><span style=\"font-size:20px\">​​四、计算机的发展​​</span></li>\n</ul>\n', 3, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (53, 1, '教师指南', '<p><span style=\"font-size:20px\">作为教师，您可以：</span></p>\n\n<p><strong><span style=\"font-size:20px\">一、发布课程</span></strong></p>\n\n<div><span style=\"font-size:20px\">在我的课程选项卡中，点击创建课程，为课程设置封面和简介后，就可以创建课程啦。</span></div>\n\n<div><span style=\"font-size:20px\">新课程创建后，默认为公开权限，即所有用户都可加入。您可以点击课程封面进入后台，在侧边栏中点击课程封面，进入课程简介和封面修改页面，点击滑块来变更权限。注意，新创建的课程需等待管理员审核，故课程会显示关闭标签。待审核通过后，该课程就会被展示在系统首页啦！</span></div>\n\n<p><span style=\"font-size:20px\">&nbsp;<strong>二、在课程中，您可以</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">上传章节视频，编辑，删除视频，参加视频下的评论，删除不恰当的评论</span></li>\n	<li><span style=\"font-size:20px\">发布，编辑，删除课程内的通知</span></li>\n	<li><span style=\"font-size:20px\">上传，下载，批量管理课程内的课件</span></li>\n	<li><span style=\"font-size:20px\">发布课程讨论，参与讨论并能删除不恰当的回复</span></li>\n	<li><span style=\"font-size:20px\">发布实验并上传任务书，下载学生提交的实验报告</span></li>\n	<li><span style=\"font-size:20px\">发布考试并编辑题目，修改考试时间，阅卷并查看学生成绩</span></li>\n</ul>\n\n<p><strong><span style=\"font-size:20px\">三、管理课程人员</span></strong></p>\n\n<p><span style=\"font-size:20px\">&nbsp; &nbsp; &nbsp; &nbsp;在课程管理中，您可以查看所有课程内学生的学习记录，并能够下载记录到本地，同时也可以删除违反规定的用户。</span></p>\n\n<p>&nbsp;</p>\n', 4, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (54, 7, '短文本测试', '<p>这里是测试文本</p>\n\n<p>测试员：梁教授</p>\n\n<p>测试结果：success</p>\n\n<p>测试时间：20240711</p>\n', 3, '2024-07-27 21:58:38');

INSERT INTO `th_notice` VALUES (56, 7, '图片通知测试', '<p><img alt=\"\" height=\"360\" src=\"/files/user/stu023/ckeditor/ckeditor_2023_07_11213720647.jpg\" width=\"644\" /></p>\n', 3, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (57, 7, '表格和格式测试', '<h3>Dos命令</h3>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<th>功能</th>\n			<th>指令</th>\n			<th>示例</th>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">查看当前目录</td>\n			<td style=\"text-align:center\">dir</td>\n			<td style=\"text-align:center\">dir d:\\com\\main</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">切换到其他盘</td>\n			<td style=\"text-align:center\">cd /D</td>\n			<td style=\"text-align:center\">cd /D c:</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">切换到当前盘其他目录</td>\n			<td style=\"text-align:center\">cd</td>\n			<td style=\"text-align:center\">（绝对路径）cd d:\\com\\main</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">切换到当前盘其他目录</td>\n			<td style=\"text-align:center\">cd</td>\n			<td style=\"text-align:center\">（相对路径）cd ..\\com\\main</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">切换到上一级</td>\n			<td style=\"text-align:center\">cd ..</td>\n			<td style=\"text-align:center\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">切换到根目录</td>\n			<td style=\"text-align:center\">cd \\</td>\n			<td style=\"text-align:center\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">查看指定目录下子级目录（树）</td>\n			<td style=\"text-align:center\">tree</td>\n			<td style=\"text-align:center\">tree d:\\com\\main</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">清屏</td>\n			<td style=\"text-align:center\">cls</td>\n			<td style=\"text-align:center\">cls</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">退出</td>\n			<td style=\"text-align:center\">exit</td>\n			<td style=\"text-align:center\">exit</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">创建目录</td>\n			<td style=\"text-align:center\">md</td>\n			<td style=\"text-align:center\">md 目录名</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">删除目录（目录必须为空）</td>\n			<td style=\"text-align:center\">rd</td>\n			<td style=\"text-align:center\">rd 目录名</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>相对路径：从当前目录开始定位形成的路径</p>\n\n<p>绝对路径：从顶级目录开始定位形成的路径</p>\n\n<p>help：查看当前指令的帮助信息（如：help cd）</p>\n', 4, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (58, 2, '第二周测试内容 主存储器', '<h5>存储器</h5>\n\n<ul>\n	<li>功能：存储数据和数字化后的程序，以二进制代码来表示。</li>\n	<li>存储单元：在存储器中保存一个n位二进制数的n个存储电路，组成一个存储单元。</li>\n	<li>地址：存储器由许多存储单元组成，每个存储单元的编号，成为地址。</li>\n	<li>存储容量：存储器所有存储单元的总数。</li>\n	<li>内存储器：即主存，一种用来存放<strong>直接</strong>为CPU提供服务的程序和数据存储器。（U盘）</li>\n	<li>外存储器：即辅存，为计算机配备的存储容量很大的辅助存储器。（磁盘存储器、光盘存储器）</li>\n</ul>\n', 0, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (59, 2, '第三周测试内容 输入输出设备', '<h5>输入/输出设备&nbsp;</h5>\n\n<ul>\n	<li><strong>功能</strong>：执行输入/输出信息的转换.</li>\n	<li><strong>输入时</strong>：原始信息----&gt;二进制代码，送入主机。</li>\n	<li><strong>输出时</strong>：处理结果（二进制代码）----&gt;用户能够直接感知的形式（字符、图像、声音），并输出给用户</li>\n</ul>\n', 0, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (63, 3, '课程目标', '<p>本课程需要大家掌握：</p>\n\n<ul>\n	<li>微型计算机的基本工作原理</li>\n	<li>汇编语言程序设计方法</li>\n	<li>微型计算机接口技术</li>\n</ul>\n\n<div>建立微型计算机系统的整体概念，形成微机系统软硬件开发的初步能力</div>\n', 0, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (64, 3, '课程主要内容', '<ol>\n	<li>微机系统的组成</li>\n	<li>计算机中的编码、数制及其转换</li>\n	<li>无符号二进制数的运算</li>\n	<li>算术运算和逻辑运算</li>\n	<li>运算中的溢出</li>\n	<li>机器数的表示及运算</li>\n	<li>基本逻辑门及译码器</li>\n</ol>\n', 0, '2024-07-27 21:58:38');
INSERT INTO `th_notice` VALUES (65, 7, '111111111', '<p>111</p>\n', 0, '2023-12-29 22:48:23');
INSERT INTO `th_notice` VALUES (66, 7, '考试通知', '<p>111111111111111</p>\n', 0, '2024-02-01 03:21:13');
INSERT INTO `th_notice` VALUES (68, 59, '12121', '<p>4545</p>\n', 0, '2024-02-01 09:29:19');
INSERT INTO `th_notice` VALUES (71, 7, '11111113', '<p>huwewedwe</p>\n', 2, '2024-08-04 20:30:17');
INSERT INTO `th_notice` VALUES (72, 7, '停课通知', '<p>1</p>\n', 0, '2024-09-14 14:45:46');
INSERT INTO `th_notice` VALUES (73, 7, '1', '<p>1111111111111111</p>\n', 0, '2024-09-21 15:37:27');
INSERT INTO `th_notice` VALUES (74, 7, '12313123', '<p>312321</p>\n', 1, '2024-09-21 18:53:20');


-- ----------------------------
-- Table structure for th_reply
-- ----------------------------
DROP TABLE IF EXISTS `th_reply`;
CREATE TABLE `th_reply`  (
  `reply_id` int(0) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(0) NULL DEFAULT NULL,
  `chapter_id` int(0) NULL DEFAULT NULL,
  `from_uid` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `to_uid` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`reply_id`) USING BTREE,
  INDEX `rfordiscusssion`(`discussion_id`) USING BTREE,
  INDEX `rforuser`(`from_uid`) USING BTREE,
  INDEX `to_uid`(`to_uid`) USING BTREE,
  INDEX `chapter_id`(`chapter_id`) USING BTREE,
  CONSTRAINT `rforuser` FOREIGN KEY (`from_uid`) REFERENCES `th_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `th_reply_ibfk_1` FOREIGN KEY (`discussion_id`) REFERENCES `th_discussion` (`discussion_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `th_reply_ibfk_2` FOREIGN KEY (`chapter_id`) REFERENCES `th_chapter` (`chapter_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_reply
-- ----------------------------
INSERT INTO `th_reply` VALUES (78, 19, NULL, 'stu023', NULL, '<p>发布者回复测试</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (79, 19, NULL, 'stu023', NULL, '<p>发布者带图回复测试</p>\n\n<p><img alt=\"\" height=\"114\" src=\"/files/user/stu023/ckeditor/ckeditor_2023_07_10122049887.png\" width=\"128\" /></p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (80, 20, NULL, 'stu023', NULL, '<h1>富文本测试</h1>\n\n<h2><span style=\"color:#2ecc71\"><span style=\"background-color:#f1c40f\">富文本测试</span></span></h2>\n\n<h3><em><strong><u>富文本测试</u></strong></em></h3>\n\n<h4>富文本测试</h4>\n\n<h5>富文本测试</h5>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (81, 21, NULL, 'stu022', NULL, '<p>学生发布者回复测试1</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (82, 21, NULL, 'stu022', NULL, '<p>学生发布者回复测试2</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (83, 21, NULL, 'stu022', NULL, '<p>学生发布者回复测试3</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (84, 21, NULL, 'stu022', NULL, '<p>带图回复测试</p>\n\n<p><img alt=\"\" height=\"85\" src=\"/files/user/stu022/ckeditor/ckeditor_2023_07_10123126611.jpg\" width=\"109\" /></p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (85, 20, NULL, 'stu022', NULL, '<p>学生发布回复测试1</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (86, 20, NULL, 'stu022', NULL, '<p>学生发布带图回复测试</p>\n\n<p><img alt=\"\" height=\"140\" src=\"/files/user/stu022/ckeditor/ckeditor_2023_07_10123350101.jpg\" width=\"155\" /></p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (87, 19, NULL, 'stu022', NULL, '<p>学生编辑回复测试1</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (88, 19, NULL, 'stu022', 'stu023', '<p>学生评论回复测试1</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (89, 19, NULL, 'stu022', 'stu023', '<p>学生评论回复测试2</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (90, NULL, 181, 'stu022', NULL, '<p>学生发表评论测试</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (91, NULL, 181, 'stu022', NULL, '<p>学生发表带图评论测试</p>\n\n<p><img alt=\"\" height=\"108\" src=\"/files/user/stu022/ckeditor/ckeditor_2023_07_10124429244.jpg\" width=\"131\" /></p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (92, NULL, 182, 'stu022', NULL, '<p>学生点赞测试</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (93, NULL, 181, 'stu013', NULL, '<p>学生发表评论测试</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (94, NULL, 181, 'stu013', 'stu022', '<p>学生回复评论测试</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (95, 19, NULL, 'stu013', NULL, '<p>学生编辑回复测试2</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (96, 19, NULL, 'stu013', 'stu022', '<p>学生评论回复测试3</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (97, 21, NULL, 'stu013', 'stu022', '<p>学生评论回复测试1</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (98, 22, NULL, 'stu013', NULL, '<div>栈与队列的相同点：</div>\n\n<div>1.都是线性结构。</div>\n\n<div>2.插入操作都是限定在表尾进行。</div>\n\n<div>3.都可以通过顺序结构和链式结构实现。、</div>\n\n<div>4.插入与删除的时间复杂度都是O（1），在空间复杂度上两者也一样。</div>\n\n<div>5.多链栈和多链队列的管理模式可以相同。</div>\n\n<div>栈与队列的不同点：</div>\n\n<div>1.删除数据元素的位置不同，栈的删除操作在表尾进行，队列的删除操作在表头进行。</div>\n\n<div>2.应用场景不同；常见栈的应用场景包括括号问题的求解，表达式的转换和求值，函数调用和递归实现，深度优先搜索遍历等；常见的队列的应用场景包括计算机系统中各种资源的管理，消息缓冲器的管理和广度优先搜索遍历等。</div>\n\n<div>3.顺序栈能够实现多栈空间共享，而顺序队列不能。</div>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (99, NULL, 182, 'stu013', NULL, '<p>学生评论测试</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (100, NULL, 182, 'stu013', 'stu022', '<p>学生回复测试</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (101, NULL, 181, 'root', NULL, '<p>加油哦！</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (102, NULL, 1, 'stu003', NULL, '<p>姐姐好好看</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (103, 22, NULL, 'stu003', NULL, '<p>栈（Stack）:是限定仅在表尾进行插入和删除操作的线性表。<br />\n&emsp;&emsp;我们把允许插入和删除的一端称为栈顶（top），另一端称为栈底（bottom），不含任何元素的栈称为空栈。栈又称为后进先出（Last In First Out）的线性表，简称LIFO结构。<br />\n&emsp;&emsp;理解栈的定义需要注意：<br />\n&emsp;&emsp;首先他是一个线性表，也就是说，栈元素具有线性关系，即前驱后继关系。只不过它是一种特殊的线性表而已。定义中说是在线性表的表尾进行插入和删除操作，这里表尾是指栈顶，而不是栈底。<br />\n&emsp;&emsp;它的特殊之处就在于限制了这个线性表的插入和删除位置，它始终只在栈顶进行。这也就使得：栈底是固定的，最先进栈的只能在栈底。</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (104, NULL, 185, 'stu023', NULL, '<p>说的好</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (105, 23, NULL, 'stu023', NULL, '<p>冯诺依曼结构是把指令和数据以同等的方式保存在存储器当中，chache也是一种存储器，而现代计算机有的时候是把指令cache和控制cache分开（比如MIPS），这个和指令执行的控制方式有关。这样做避免在流水过程中造成资源冲突。</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (106, NULL, 183, 'stu013', NULL, '<p>收获很大！</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (107, 24, NULL, 'stu013', NULL, '<p>对对对</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (108, 22, NULL, 'stu003', NULL, '<p>111111111111111111111111111111111111</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (109, 22, NULL, 'stu003', 'stu013', '<p>ferfwefew</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (110, NULL, 184, 'stu003', NULL, '<p>grgergregergeffdg</p>\n', '2024-07-27 04:20:14');
INSERT INTO `th_reply` VALUES (111, 19, NULL, 'root', NULL, '<p>555555555555555555555</p>\n', '2023-12-29 22:28:20');
INSERT INTO `th_reply` VALUES (112, 19, NULL, 'root', NULL, '<p>GERGERGREGRE</p>\n', '2023-12-29 22:33:34');
INSERT INTO `th_reply` VALUES (113, 25, NULL, 'root', NULL, '<p>11111111111111</p>\n', '2023-12-29 22:37:01');
INSERT INTO `th_reply` VALUES (114, 25, NULL, 'root', NULL, '<p>534T4545Y54G</p>\n', '2023-12-29 22:45:08');
INSERT INTO `th_reply` VALUES (115, 26, NULL, 'stu003', NULL, '<p>wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww</p>\n', '2024-01-13 09:28:46');
INSERT INTO `th_reply` VALUES (116, NULL, 181, 'user1', NULL, '<p>bucuo</p>\n', '2024-02-01 09:17:42');
INSERT INTO `th_reply` VALUES (117, 22, NULL, 'user1', NULL, '<p>不知道</p>\n', '2024-02-01 09:18:30');
INSERT INTO `th_reply` VALUES (118, NULL, 182, 'user2', NULL, '<p>4545454</p>\n', '2024-02-01 09:25:03');
INSERT INTO `th_reply` VALUES (119, NULL, 182, 'user2', 'stu013', '<p>1212121</p>\n', '2024-02-01 09:25:09');
INSERT INTO `th_reply` VALUES (120, 22, NULL, 'user2', NULL, '<p>KIUKIKI</p>\n', '2024-02-01 09:25:55');
INSERT INTO `th_reply` VALUES (121, 22, NULL, 'user2', 'stu013', '<p>IULIULIU</p>\n', '2024-02-01 09:26:04');
INSERT INTO `th_reply` VALUES (122, NULL, 206, 'stu023', NULL, '<p>fsdfsdf</p>\n', '2024-02-01 09:29:08');
INSERT INTO `th_reply` VALUES (123, 29, NULL, 'user2', NULL, '<p>dsadsa</p>\n', '2024-02-01 09:30:30');
INSERT INTO `th_reply` VALUES (124, NULL, 181, 'stu003', NULL, '<p>12121213131</p>\n', '2024-02-25 17:09:51');
INSERT INTO `th_reply` VALUES (125, NULL, 181, 'stu003', 'user1', '<p>3123123123</p>\n', '2024-02-25 17:09:56');
INSERT INTO `th_reply` VALUES (126, 22, NULL, 'stu003', NULL, '<p>d3e3e3e3</p>\n', '2024-02-25 17:10:48');
INSERT INTO `th_reply` VALUES (127, 22, NULL, 'stu003', 'user2', '<p>dddede</p>\n', '2024-02-25 17:10:54');
INSERT INTO `th_reply` VALUES (129, 30, NULL, 'stu003', NULL, '<p>dsadfsadsa</p>\n', '2024-02-25 17:14:29');
INSERT INTO `th_reply` VALUES (130, NULL, 181, 'stu023', NULL, '<p>111111111111111</p>\n', '2024-03-23 02:32:21');
INSERT INTO `th_reply` VALUES (131, NULL, 1, 'sdu001', NULL, '<p>312312312312</p>\n', '2024-03-25 19:01:56');
INSERT INTO `th_reply` VALUES (132, NULL, 181, 'sdu001', NULL, '<p>34234234</p>\n', '2024-03-25 19:02:26');
INSERT INTO `th_reply` VALUES (133, 30, NULL, 'sdu001', NULL, '<p>24234234234234</p>\n', '2024-03-25 19:03:04');
INSERT INTO `th_reply` VALUES (134, 22, NULL, 'sdu001', NULL, '<p>32423423423432</p>\n', '2024-03-25 19:03:11');
INSERT INTO `th_reply` VALUES (135, 22, NULL, 'sdu001', 'stu003', '<p>4234234234324</p>\n', '2024-03-25 19:03:15');
INSERT INTO `th_reply` VALUES (136, NULL, 181, 'sdu345', NULL, '<p>4234132412343214</p>\n', '2024-08-04 20:17:23');
INSERT INTO `th_reply` VALUES (137, NULL, 181, 'sdu345', 'stu022', '<p>4213432142314</p>\n', '2024-08-04 20:17:29');
INSERT INTO `th_reply` VALUES (138, 26, NULL, 'sdu345', NULL, '<p>gfugudsg</p>\n', '2024-08-04 20:18:15');
INSERT INTO `th_reply` VALUES (139, 22, NULL, 'sdu345', 'stu003', '<p>rwerweqerwqereqw</p>\n', '2024-08-04 20:18:24');
INSERT INTO `th_reply` VALUES (140, NULL, 182, 'sdu346', NULL, '<p>4213412342314231</p>\n', '2024-08-04 20:24:51');
INSERT INTO `th_reply` VALUES (141, NULL, 182, 'sdu346', 'stu022', '<p>42341234123</p>\n', '2024-08-04 20:24:56');
INSERT INTO `th_reply` VALUES (142, 22, NULL, 'sdu346', NULL, '<p>534534534543</p>\n', '2024-08-04 20:25:35');
INSERT INTO `th_reply` VALUES (143, 22, NULL, 'sdu346', 'stu013', '<p>5324252345</p>\n', '2024-08-04 20:25:44');
INSERT INTO `th_reply` VALUES (144, NULL, 212, 'sdu346', NULL, '<p>111111</p>\n', '2024-08-04 20:29:53');
INSERT INTO `th_reply` VALUES (145, NULL, 182, 'sdu788', NULL, '<p>3123213123213</p>\n', '2024-09-14 14:39:06');
INSERT INTO `th_reply` VALUES (146, NULL, 182, 'sdu788', 'sdu346', '<p>3213123123123123</p>\n', '2024-09-14 14:39:18');
INSERT INTO `th_reply` VALUES (147, 32, NULL, 'sdu788', NULL, '<p>13124234234234234234234</p>\n', '2024-09-14 14:39:57');
INSERT INTO `th_reply` VALUES (148, 32, NULL, 'sdu788', NULL, '<p>4234234234</p>\n', '2024-09-14 14:40:12');
INSERT INTO `th_reply` VALUES (149, 22, NULL, 'sdu788', NULL, '<p>432423432423432</p>\n', '2024-09-14 14:40:28');
INSERT INTO `th_reply` VALUES (150, NULL, 213, 'sdu788', NULL, '<p>321312321</p>\n', '2024-09-14 14:45:18');
INSERT INTO `th_reply` VALUES (151, NULL, 182, 'sdu143', NULL, '<p>31231231231</p>\n', '2024-09-21 15:29:33');
INSERT INTO `th_reply` VALUES (152, NULL, 182, 'sdu143', 'sdu788', '<p>312321321</p>\n', '2024-09-21 15:29:40');
INSERT INTO `th_reply` VALUES (153, 22, NULL, 'sdu143', 'sdu788', '<p>423423432442134123423</p>\n', '2024-09-21 15:30:53');
INSERT INTO `th_reply` VALUES (154, NULL, 214, 'sdu143', NULL, '<p>1231232</p>\n', '2024-09-21 15:37:14');
INSERT INTO `th_reply` VALUES (155, NULL, 182, 'sdu122', NULL, '<p>3123213213</p>\n', '2024-09-21 18:45:51');
INSERT INTO `th_reply` VALUES (156, NULL, 182, 'sdu122', 'sdu143', '<p>312321321</p>\n', '2024-09-21 18:45:58');
INSERT INTO `th_reply` VALUES (157, 22, NULL, 'sdu122', NULL, '<p>322143124234324</p>\n', '2024-09-21 18:46:31');
INSERT INTO `th_reply` VALUES (158, 22, NULL, 'sdu122', 'sdu788', '<p>3123213123</p>\n', '2024-09-21 18:46:43');

-- ----------------------------
-- Table structure for th_report
-- ----------------------------
DROP TABLE IF EXISTS `th_report`;
CREATE TABLE `th_report`  (
  `report_id` int(0) NOT NULL AUTO_INCREMENT,
  `experiment_id` int(0) NULL DEFAULT NULL,
  `user_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`) USING BTREE,
  INDEX `experiment_id`(`experiment_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `th_report_ibfk_1` FOREIGN KEY (`experiment_id`) REFERENCES `th_experiment` (`experiment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `th_report_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `th_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_report
-- ----------------------------
INSERT INTO `th_report` VALUES (31, 28, 'stu023', '86503_测试数据.docx', '2023-12-29 14:33:08');
INSERT INTO `th_report` VALUES (32, 27, 'stu023', '94330_测试数据.docx', '2023-12-29 14:33:08');
INSERT INTO `th_report` VALUES (33, 28, 'stu016', NULL, '2023-12-29 14:33:08');
INSERT INTO `th_report` VALUES (34, 27, 'stu016', NULL, '2023-12-29 14:33:08');
INSERT INTO `th_report` VALUES (35, 28, 'stu013', '98361_实验报告.docx', '2023-12-29 14:33:08');
INSERT INTO `th_report` VALUES (36, 27, 'stu013', NULL, '2023-12-29 14:33:08');
INSERT INTO `th_report` VALUES (37, 28, 'stu003', NULL, '2023-12-29 14:33:08');
INSERT INTO `th_report` VALUES (38, 27, 'stu003', NULL, '2023-12-29 14:33:08');
INSERT INTO `th_report` VALUES (39, 27, 'root', '35213_bk1.jpg', '2023-12-29 21:33:52');
INSERT INTO `th_report` VALUES (40, 28, 'root', NULL, '2023-12-29 21:33:52');
INSERT INTO `th_report` VALUES (41, 29, 'root', NULL, '2023-12-29 23:06:02');
INSERT INTO `th_report` VALUES (42, 29, 'stu003', '69590_新建 Microsoft Word 文档 (2).docx', '2024-01-09 10:55:09');
INSERT INTO `th_report` VALUES (43, 30, 'user1', '22751_2.xlsx', '2024-02-01 09:18:32');
INSERT INTO `th_report` VALUES (44, 29, 'user1', NULL, '2024-02-01 09:18:32');
INSERT INTO `th_report` VALUES (45, 27, 'user1', NULL, '2024-02-01 09:18:32');
INSERT INTO `th_report` VALUES (46, 28, 'user1', NULL, '2024-02-01 09:18:32');
INSERT INTO `th_report` VALUES (47, 30, 'user2', NULL, '2024-02-01 09:26:11');
INSERT INTO `th_report` VALUES (48, 29, 'user2', NULL, '2024-02-01 09:26:11');
INSERT INTO `th_report` VALUES (49, 27, 'user2', '85313_2.xlsx', '2024-02-01 09:26:12');
INSERT INTO `th_report` VALUES (50, 28, 'user2', NULL, '2024-02-01 09:26:12');
INSERT INTO `th_report` VALUES (51, 31, 'user2', '70166_2.xlsx', '2024-02-01 09:31:02');
INSERT INTO `th_report` VALUES (52, 30, 'stu003', NULL, '2024-02-25 17:10:58');
INSERT INTO `th_report` VALUES (53, 32, 'stu003', NULL, '2024-02-25 17:15:18');
INSERT INTO `th_report` VALUES (54, 32, 'stu023', NULL, '2024-03-23 00:52:25');
INSERT INTO `th_report` VALUES (55, 30, 'stu023', NULL, '2024-03-23 00:52:25');
INSERT INTO `th_report` VALUES (56, 29, 'stu023', NULL, '2024-03-23 00:52:25');
INSERT INTO `th_report` VALUES (57, 32, 'sdu001', '25155_2.xlsx', '2024-03-25 19:03:19');
INSERT INTO `th_report` VALUES (58, 30, 'sdu001', NULL, '2024-03-25 19:03:19');
INSERT INTO `th_report` VALUES (59, 29, 'sdu001', NULL, '2024-03-25 19:03:19');
INSERT INTO `th_report` VALUES (60, 27, 'sdu001', NULL, '2024-03-25 19:03:19');
INSERT INTO `th_report` VALUES (61, 28, 'sdu001', NULL, '2024-03-25 19:03:19');
INSERT INTO `th_report` VALUES (62, 32, 'sdu345', '30958_未标题-1.jpg', '2024-08-04 20:18:29');
INSERT INTO `th_report` VALUES (63, 30, 'sdu345', NULL, '2024-08-04 20:18:29');
INSERT INTO `th_report` VALUES (64, 29, 'sdu345', NULL, '2024-08-04 20:18:29');
INSERT INTO `th_report` VALUES (65, 27, 'sdu345', NULL, '2024-08-04 20:18:29');
INSERT INTO `th_report` VALUES (66, 28, 'sdu345', NULL, '2024-08-04 20:18:29');
INSERT INTO `th_report` VALUES (67, 32, 'sdu346', NULL, '2024-08-04 20:25:47');
INSERT INTO `th_report` VALUES (68, 30, 'sdu346', NULL, '2024-08-04 20:25:47');
INSERT INTO `th_report` VALUES (69, 29, 'sdu346', NULL, '2024-08-04 20:25:47');
INSERT INTO `th_report` VALUES (70, 27, 'sdu346', '63474_微信图片_20240805035017.png', '2024-08-04 20:25:47');
INSERT INTO `th_report` VALUES (71, 28, 'sdu346', NULL, '2024-08-04 20:25:47');
INSERT INTO `th_report` VALUES (72, 33, 'sdu346', NULL, '2024-08-04 20:31:51');
INSERT INTO `th_report` VALUES (73, 33, 'stu023', NULL, '2024-08-05 13:44:25');
INSERT INTO `th_report` VALUES (74, 33, 'sdu988', NULL, '2024-09-14 14:30:39');
INSERT INTO `th_report` VALUES (75, 32, 'sdu988', NULL, '2024-09-14 14:30:39');
INSERT INTO `th_report` VALUES (76, 30, 'sdu988', NULL, '2024-09-14 14:30:39');
INSERT INTO `th_report` VALUES (77, 29, 'sdu988', NULL, '2024-09-14 14:30:39');
INSERT INTO `th_report` VALUES (78, 27, 'sdu988', NULL, '2024-09-14 14:30:39');
INSERT INTO `th_report` VALUES (79, 28, 'sdu988', NULL, '2024-09-14 14:30:39');
INSERT INTO `th_report` VALUES (80, 33, 'sdu788', NULL, '2024-09-14 14:40:36');
INSERT INTO `th_report` VALUES (81, 32, 'sdu788', NULL, '2024-09-14 14:40:36');
INSERT INTO `th_report` VALUES (82, 30, 'sdu788', NULL, '2024-09-14 14:40:36');
INSERT INTO `th_report` VALUES (83, 29, 'sdu788', NULL, '2024-09-14 14:40:36');
INSERT INTO `th_report` VALUES (84, 27, 'sdu788', '61502_微信图片_20240907045422.png', '2024-09-14 14:40:36');
INSERT INTO `th_report` VALUES (85, 28, 'sdu788', NULL, '2024-09-14 14:40:36');
INSERT INTO `th_report` VALUES (86, 34, 'sdu788', '68262_微信图片_20240201110001.png', '2024-09-14 14:47:36');
INSERT INTO `th_report` VALUES (87, 34, 'sdu7888', NULL, '2024-09-14 15:39:12');
INSERT INTO `th_report` VALUES (88, 33, 'sdu7888', NULL, '2024-09-14 15:39:12');
INSERT INTO `th_report` VALUES (89, 32, 'sdu7888', NULL, '2024-09-14 15:39:12');
INSERT INTO `th_report` VALUES (90, 30, 'sdu7888', NULL, '2024-09-14 15:39:12');
INSERT INTO `th_report` VALUES (91, 29, 'sdu7888', NULL, '2024-09-14 15:39:12');
INSERT INTO `th_report` VALUES (92, 27, 'sdu7888', NULL, '2024-09-14 15:39:12');
INSERT INTO `th_report` VALUES (93, 28, 'sdu7888', NULL, '2024-09-14 15:39:12');
INSERT INTO `th_report` VALUES (94, 34, 'sdu143', NULL, '2024-09-21 15:30:55');
INSERT INTO `th_report` VALUES (95, 33, 'sdu143', NULL, '2024-09-21 15:30:55');
INSERT INTO `th_report` VALUES (96, 32, 'sdu143', '77128_微信图片_20240201110001.png', '2024-09-21 15:30:55');
INSERT INTO `th_report` VALUES (97, 30, 'sdu143', NULL, '2024-09-21 15:30:55');
INSERT INTO `th_report` VALUES (98, 29, 'sdu143', NULL, '2024-09-21 15:30:55');
INSERT INTO `th_report` VALUES (99, 27, 'sdu143', NULL, '2024-09-21 15:30:55');
INSERT INTO `th_report` VALUES (100, 28, 'sdu143', NULL, '2024-09-21 15:30:55');
INSERT INTO `th_report` VALUES (101, 34, 'sdu122', NULL, '2024-09-21 18:46:45');
INSERT INTO `th_report` VALUES (102, 33, 'sdu122', NULL, '2024-09-21 18:46:45');
INSERT INTO `th_report` VALUES (103, 32, 'sdu122', '32614_1024x1024bb.png', '2024-09-21 18:46:46');
INSERT INTO `th_report` VALUES (104, 30, 'sdu122', NULL, '2024-09-21 18:46:46');
INSERT INTO `th_report` VALUES (105, 29, 'sdu122', NULL, '2024-09-21 18:46:46');
INSERT INTO `th_report` VALUES (106, 27, 'sdu122', NULL, '2024-09-21 18:46:46');
INSERT INTO `th_report` VALUES (107, 28, 'sdu122', NULL, '2024-09-21 18:46:46');

-- ----------------------------
-- Table structure for th_resource
-- ----------------------------
DROP TABLE IF EXISTS `th_resource`;
CREATE TABLE `th_resource`  (
  `resource_id` int(0) NOT NULL AUTO_INCREMENT,
  `course_id` int(0) NOT NULL COMMENT '所在课程号',
  `resource_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `resource_size` double NULL DEFAULT NULL,
  `download_num` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`resource_id`) USING BTREE,
  INDEX `reforcourse`(`course_id`) USING BTREE,
  CONSTRAINT `reforcourse` FOREIGN KEY (`course_id`) REFERENCES `th_course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 342 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_resource
-- ----------------------------
INSERT INTO `th_resource` VALUES (302, 7, '84420_提问的智慧.pdf', 401.90625, 2, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (303, 7, '20012_Maven配置.md', 0.576171875, 14, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (304, 7, '28597_Java注解.md', 4.36328125, 46, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (306, 7, '69798_User.java', 0.810546875, 21, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (315, 7, '70728_Doc文件测试.docx', 16.142578125, 9, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (317, 7, '76458_Excel文件测试.xlsx', 8.974609375, 33, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (320, 7, '93817_无限-头像.png', 100.65625, 8, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (322, 7, '16889_PPT文件测试.pptx', 33.353515625, 20, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (323, 7, '16889_Git学习笔记.md', 10.1337890625, 28, '2023-12-30 10:28:04');

INSERT INTO `th_resource` VALUES (325, 2, '16890_第02讲+计算机的发展及应用.ppt', 1067, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (326, 2, '16890_第01讲+计算机系统概论.ppt', 715, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (327, 2, '16890_第4讲-4+辅助存储器.ppt', 1007.5, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (328, 2, '16890_第4讲-3+存储器3.ppt', 1320, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (329, 2, '16890_第3讲 数值及运算.pptx', 1965.1826171875, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (330, 2, '16890_第4讲-1+存储器1.ppt', 5091.5, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (331, 2, '16890_第07讲-1+控制单元的功能.ppt', 1485, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (332, 2, '16890_第05讲+指令系统.ppt', 2131, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (333, 2, '16890_第06讲+CPU+的结构和功能.ppt', 4820.5, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (334, 2, '16890_第07讲-2+控制单元的设计.ppt', 2276, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (335, 2, '16890_第00章+上课之前.ppt', 356.5, 0, '2023-12-30 10:28:04');
INSERT INTO `th_resource` VALUES (337, 59, '99899_2.xlsx', 10.978515625, 0, '2024-02-01 09:30:00');
INSERT INTO `th_resource` VALUES (338, 7, '16035_2.xlsx', 10.978515625, 1, '2024-02-25 17:13:36');
INSERT INTO `th_resource` VALUES (339, 7, '52692_2.xlsx', 10.978515625, 1, '2024-03-25 19:09:13');
INSERT INTO `th_resource` VALUES (340, 7, '75694_微信图片_20240805035020.png', 533.837890625, 0, '2024-09-14 14:46:16');
INSERT INTO `th_resource` VALUES (341, 7, '65097_微信图片_20240201105835.jpg', 410.630859375, 0, '2024-09-21 15:37:45');
INSERT INTO `th_resource` VALUES (342, 7, '14118_微信图片_20240907045413.png', 1877.880859375, 0, '2024-09-21 18:53:34');


-- ----------------------------
-- Table structure for th_user
-- ----------------------------
DROP TABLE IF EXISTS `th_user`;
CREATE TABLE `th_user`  (
  `user_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id用于登陆',
  `password` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `telephone` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `question1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父亲名称',
  `answer1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '母亲名称',
  `question2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '自定义问题',
  `answer2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '答案',
  `user_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像路径',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of th_user
-- ----------------------------
INSERT INTO `th_user` VALUES ('root', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '吴教授', '10000000001', '10000000001@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/files/user/root/avatar/avatar_2024_07_13142457992.jpg');
INSERT INTO `th_user` VALUES ('root123', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'root123', NULL, NULL, NULL, NULL, NULL, NULL, '/imgs/user/default.jpg');
INSERT INTO `th_user` VALUES ('sdu001', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'sdu001', NULL, NULL, NULL, NULL, NULL, NULL, '/files/user/sdu001/avatar/avatar_2024_03_26030751081.jpg');
INSERT INTO `th_user` VALUES ('sdu122', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'sdu122', '321', '3213', '21', '12', '21', '12', '/files/user/sdu122/avatar/avatar_2024_09_22024458654.png');
INSERT INTO `th_user` VALUES ('sdu143', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'sdu143', '312321', '312312', '1', '1', '1', '1', '/files/user/sdu143/avatar/avatar_2024_09_21232831730.png');
INSERT INTO `th_user` VALUES ('sdu345', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'sdu345', NULL, NULL, NULL, NULL, NULL, NULL, '/files/user/sdu345/avatar/avatar_2024_08_05041612380.jpg');
INSERT INTO `th_user` VALUES ('sdu346', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'sdu346', NULL, NULL, NULL, NULL, NULL, NULL, '/files/user/sdu346/avatar/avatar_2024_08_05042355170.png');
INSERT INTO `th_user` VALUES ('sdu788', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'sdu788', '3123123', '312312312', '1', '2', '2', '3', '/files/user/sdu788/avatar/avatar_2024_09_14103755760.jpg');
INSERT INTO `th_user` VALUES ('sdu7888', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'sdu7888', NULL, NULL, NULL, NULL, NULL, NULL, '/files/user/sdu7888/avatar/avatar_2024_09_21231925616.png');
INSERT INTO `th_user` VALUES ('sdu899', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'sdu899', NULL, NULL, NULL, NULL, NULL, NULL, '/files/user/sdu899/avatar/avatar_2024_09_14103534392.png');
INSERT INTO `th_user` VALUES ('sdu988', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'sdu988', NULL, NULL, NULL, NULL, NULL, NULL, '/imgs/user/default.jpg');
INSERT INTO `th_user` VALUES ('stu003', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '章北海', '10000000002', '10000000002@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/files/user/stu003/avatar/avatar_2024_02_26010903954.jpg');
INSERT INTO `th_user` VALUES ('stu013', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '林诗情', '10000000003', '10000000003@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/files/user/stu013/avatar/avatar_2022_05_07194806019.jpg');
INSERT INTO `th_user` VALUES ('stu016', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'stu016', NULL, NULL, NULL, NULL, NULL, NULL, '/imgs/user/default.jpg');
INSERT INTO `th_user` VALUES ('stu022', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '温喆月', '10000000004', '10000000004@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/imgs/user/default.jpg');
INSERT INTO `th_user` VALUES ('stu023', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '梁教授', '10000000005', '10000000005@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/files/user/stu023/avatar/avatar_2024_09_21231751399.png');
INSERT INTO `th_user` VALUES ('stu033', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '何温祥', '10000000006', '10000000006@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/imgs/user/default.jpg');
INSERT INTO `th_user` VALUES ('stu043', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '张玉婷', '10000000007', '10000000007@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/files/user/stu033/avatar/cover_2022_04_16113139130.png');
INSERT INTO `th_user` VALUES ('stu567', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'stu567', NULL, NULL, NULL, NULL, NULL, NULL, '/imgs/user/default.jpg');
INSERT INTO `th_user` VALUES ('tea001', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '李定波', '10000000008', '10000000008@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/files/user/tea001/avatar/avatar_2022_05_02104618854.jpg');
INSERT INTO `th_user` VALUES ('tea002', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '张禹乐', '10000000009', '10000000009@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/imgs/user/default.jpg');
INSERT INTO `th_user` VALUES ('tea003', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '鱼智慧', '10000000010', '10000000010@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/files/user/tea003/avatar/avatar_2022_05_10155314836.jpg');
INSERT INTO `th_user` VALUES ('tea004', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', '陈泓长', '10000000011', '10000000011@163.com', 'tan45°=', '1', '长风破浪会有时', '直挂云帆济沧海', '/files/user/tea004/avatar/avatar_2022_05_10154440583.jpg');
INSERT INTO `th_user` VALUES ('user1', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'user1', '11111111111', '11111', '1', '1', '1', '1', '/imgs/user/default.jpg');
INSERT INTO `th_user` VALUES ('user2', '299bbc6453f96d5cb3e91f389a2df191748fb32623c293eeabec236f3184c468', 'user2', NULL, NULL, NULL, NULL, NULL, NULL, '/files/user/user2/avatar/avatar_2024_02_01172328767.png');

-- ----------------------------
-- View structure for th_course_user_view
-- ----------------------------
DROP VIEW IF EXISTS `th_course_user_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `th_course_user_view` AS select `th_course_user`.`id` AS `id`,`th_course_user`.`course_id` AS `course_id`,`th_course_user`.`user_id` AS `user_id`,`th_course_user`.`res_dl_num` AS `res_dl_num`,`th_course_user`.`discussion_create_num` AS `discussion_create_num`,`th_course_user`.`chapter_view_time` AS `chapter_view_time`,`th_course_user`.`chapter_view_num` AS `chapter_view_num`,`th_course_user`.`reply_num` AS `reply_num`,`th_user`.`username` AS `username`,`th_user`.`user_avatar` AS `user_avatar`,`th_course_user`.`create_time` AS `create_time` from (`th_course_user` join `th_user` on((`th_course_user`.`user_id` = `th_user`.`user_id`)));

-- ----------------------------
-- View structure for th_course_view
-- ----------------------------
DROP VIEW IF EXISTS `th_course_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `th_course_view` AS select `th_course`.`course_id` AS `course_id`,`th_course`.`course_name` AS `course_name`,`th_course`.`user_id` AS `user_id`,`th_course`.`is_start` AS `is_start`,`th_course`.`is_public` AS `is_public`,`th_course`.`cover_img` AS `cover_img`,`th_course`.`describes` AS `describes`,`th_course`.`create_time` AS `create_time`,`th_user`.`username` AS `username` from (`th_course` join `th_user` on((`th_course`.`user_id` = `th_user`.`user_id`)));

-- ----------------------------
-- View structure for th_discussion_view
-- ----------------------------
DROP VIEW IF EXISTS `th_discussion_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `th_discussion_view` AS select `th_discussion`.`discussion_id` AS `discussion_id`,`th_discussion`.`course_id` AS `course_id`,`th_discussion`.`user_id` AS `user_id`,`th_discussion`.`title` AS `title`,`th_discussion`.`content` AS `content`,`th_discussion`.`hits` AS `hits`,`th_discussion`.`likes` AS `likes`,`th_discussion`.`create_time` AS `create_time`,`th_user`.`username` AS `username`,`th_user`.`user_avatar` AS `user_avatar` from (`th_discussion` join `th_user` on((`th_discussion`.`user_id` = `th_user`.`user_id`)));

-- ----------------------------
-- View structure for th_notice_view
-- ----------------------------
DROP VIEW IF EXISTS `th_notice_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `th_notice_view` AS select `th_notice`.`notice_id` AS `notice_id`,`th_notice`.`course_id` AS `course_id`,`th_notice`.`title` AS `title`,`th_notice`.`content` AS `content`,`th_notice`.`hits` AS `hits`,`th_notice`.`create_time` AS `create_time`,`th_user`.`username` AS `username` from ((`th_notice` join `th_course` on((`th_notice`.`course_id` = `th_course`.`course_id`))) join `th_user` on((`th_course`.`user_id` = `th_user`.`user_id`)));

-- ----------------------------
-- View structure for th_reply_view
-- ----------------------------
DROP VIEW IF EXISTS `th_reply_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `th_reply_view` AS select `th_reply`.`reply_id` AS `reply_id`,`th_reply`.`discussion_id` AS `discussion_id`,`th_reply`.`from_uid` AS `from_uid`,`th_reply`.`to_uid` AS `to_uid`,`th_reply`.`content` AS `content`,`th_reply`.`create_time` AS `create_time`,`uf`.`username` AS `from_username`,`ut`.`username` AS `to_username`,`uf`.`user_avatar` AS `from_user_avatar`,`th_reply`.`chapter_id` AS `chapter_id` from ((`th_reply` left join `th_user` `uf` on((`uf`.`user_id` = `th_reply`.`from_uid`))) left join `th_user` `ut` on((`ut`.`user_id` = `th_reply`.`to_uid`)));



SET FOREIGN_KEY_CHECKS = 1;
