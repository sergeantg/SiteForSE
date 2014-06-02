/*
Navicat MySQL Data Transfer

Source Server         : sergeantg-pc_3306
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : siteforse

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2014-06-02 12:25:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `password` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('123');

-- ----------------------------
-- Table structure for `doc`
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `DOC_ID` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `ADD_DATE` date NOT NULL DEFAULT '2014-04-21',
  `PATH` varchar(255) NOT NULL,
  PRIMARY KEY (`DOC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc
-- ----------------------------
INSERT INTO `doc` VALUES ('1', 'nature', '2014-05-06', '/SiteForSE/docs/nature13056.pdf');

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `POST_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UID` int(11) NOT NULL DEFAULT '0',
  `TITLE` varchar(256) NOT NULL,
  `CONTENT` text NOT NULL,
  `REPLY_COUNT` int(255) unsigned NOT NULL DEFAULT '0',
  `POST_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`POST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '0', '关于软件工程', '软件工程到底是关于什么的课程？', '7', '2014-06-02 00:47:31');
INSERT INTO `post` VALUES ('2', '0', '关于软件', '怎么学好软件工程？', '1', '2014-06-02 00:47:42');
INSERT INTO `post` VALUES ('8', '1', '你们好', '测试内同', '2', '2014-06-02 00:47:57');
INSERT INTO `post` VALUES ('9', '1', '测试评估', '测试', '0', '2014-05-21 18:05:53');
INSERT INTO `post` VALUES ('10', '0', '终于要完成了', '完成了啊', '0', '2014-05-21 23:53:17');
INSERT INTO `post` VALUES ('11', '0', '为什么要用柠檬而不用猕猴桃？', '柠檬汁中能抗氧化的主要成分是Vc，每只柠檬大约有250mgVC，完压草莓的10mg左右Vc含量，所以草莓不能给自己保鲜，但是吃的人可以被抗氧化（……）。\r\n\r\n但是，猕猴桃的Vc含量高达450mg（好像被夸张的样子。），众所周知的Vc王。为什么不用猕猴桃汁。\r\n\r\n话说，在生活中，感觉柠檬汁才是保鲜神器，做甜品的时候也会用柠檬汁给新鲜的水果原料保鲜呢。\r\n\r\n于是我觉得是价格问题。从日常看，柠檬好像比猕猴桃便宜。但是不事生产坐等吃喝的我，对价格敏感度不敢恭维。于是问了百度。发现柠檬和猕猴桃的价格都在15～20元/斤，一些地方的猕猴桃还有7元/斤。单个卖都在4元上下。差距不大啊。\r\n\r\n接着是含水量的考虑。柠檬的含水量是89%，猕猴桃未知（原谅我这个只会百度和维基的孩子），但是猕猴桃各个品种都提到了“多汁”这个特点。再联想切猕猴桃和切柠檬，嗯，汁水都不少啊。\r\n\r\n然后我又想到了“市场占有率”或者是“市场覆盖率”什么的，有可能猕猴桃买不到啊。西藏貌似真没有，但是，东部中部就不用说了，新疆也有啊。各地都有猕猴桃卖，买不到也不像是原因了。\r\n\r\n好像真的没有理由不用猕猴桃啊。我知道真的不会有人用猕猴桃汁保鲜。但是，为什么呢。\r\n\r\n难道是因为猕猴桃比柠檬好吃，所以柠檬只能被榨掉，什么的。', '4', '2014-05-28 17:10:17');
INSERT INTO `post` VALUES ('12', '0', ' 人文社会科学', '——经济管理——\r\n\r\n分析企业和社会的全球趋势 Analyzing Global Trends for Business and Society 沃顿商学院 5月5日 果壳链接 课程链接 Coursera\r\n通过情商实现鼓舞人心的领导 Inspiring Leadership through Emotional Intelligence 凯斯西储大学 5月5日 果壳链接 课程链接 Coursera\r\nMini MBA: Unlocking the Secrets of the Ivory Tower（收费课程249$）5月5日 果壳链接 课程链接 NovoEd\r\n市场营销原理（德语） Grundlagen des Marketing 5月6日 果壳链接 课程链接 iversity\r\n成为有弹性的人 - 压力管理的科学 Becoming a Resilient Person 华盛顿大学 5月6日 果壳链接 课程链接 EdX\r\n决策质量第一课 DQ 101: Introduction to Decision Quality ——Strategic Decisions Group (SDG) 5月8日 果壳链接 课程链接 NovoEd\r\n科技创业 2 Technology Entrepreneurship Part 2 斯坦福大学 5月11日 果壳链接 课程链接 NovoEd\r\n管理人才 Managing people: engaging your workforce 5月12日 英国雷丁大学 果壳链接 课程链接 FuturnLearn\r\n管理我的财富 Managing my money 英国开放大学 5月12日 果壳链接 课程链接 FuturnLearn\r\n精益企业的基本知识（西班牙语） El ABC del emprendimiento esbelto 5月12日 果壳链接 课程链接 Coursera\r\n计量金融学的数学方法 Mathematical Methods for Quantitative Finance 华盛顿大学 5月19日 果壳链接 课程链接 Coursera\r\n宏观经济学（俄语）Макроэкономика 俄罗斯高等经济学院 5月21日 果壳链接 课程链接 Coursera ————————\r\n职业生涯和就业技能提升 Enhance Your Career and Employability Skills 伦敦大学 5月27日 果壳链接 课程链接 Coursera\r\n货币银行学，第一部分 Economics of Money and Banking, Part One 哥伦比亚大学 5月17日 果壳链接 （时间需更新） 课程链接 Corusera ——————————\r\n工商管理导论（德语）Einführung in die Betriebswirtschaftslehre 5月5日 果壳链接 课程链接 iversity\r\n谈判心理学 Psychology of Negotiations 5月20日 果壳链接 课程链接 Leuphana ————————\r\n（收费149$) The Startup Pitch 5月5日 Kauffman Fellows Academy 果壳链接 （时间需更新） 课程链接 NovoEd ————————', '0', '2014-05-22 00:40:15');
INSERT INTO `post` VALUES ('13', '0', '如何看coursera上已经结束的课程？还是压根看不了？', '如题~', '1', '2014-06-02 00:48:03');
INSERT INTO `post` VALUES ('14', '0', '看课程时 能发弹幕是不是学习的积极性会高一些？呵呵', '如题', '1', '2014-06-02 00:48:09');
INSERT INTO `post` VALUES ('15', '0', '有汉语字幕吗这门课', '英语四级水平完全听不懂怎么办啊~', '1', '2014-06-02 00:48:27');
INSERT INTO `post` VALUES ('16', '1', '如果不知道Quadcopter，那么你已经out了', '如果不知道 Quadcopter，那么你已经out 了！！！\r\n\r\nQuadcopter， 也被称作quadrotor helicopter, quadrotor，它的中文名字是“四旋翼直升机”或“四轴飞行器”，它是一名杂技运动员，是一位空中的摄像师，是一个飞行的机器人……', '11', '2014-06-02 00:48:31');
INSERT INTO `post` VALUES ('17', '0', '请注意：明信片入围的有。。。', '我来公布明信片名单啦！！大家擦亮眼睛找找看啊，名字在名单里的请留言或私信我具体联系方式。ps: 逗号前面是名字，逗号后面是果壳给每个用户产生的代码，你们不用去管他啦！\r\n\r\nMARIO LAN,qjubom\r\nAaronHunt,bx0dzf\r\nmouner,zdbuas\r\nSophia Lee,a6lruv\r\n徐帆,cq3tts\r\nrinawen,7f61sg\r\nJiawei Zhang,a7n7p9\r\nLiHui,fnjn44\r\n玛雅蓝,73qoly\r\nguochao,wv2vg3\r\nSun Qiao,q066no\r\nMaryBell,bick43\r\n何波,4cps9o\r\nxiangyang,p6eii0\r\nBereiken,vb3sbt\r\nKaya Wai,jld1oj\r\nLIULIK,c0qae5\r\nZhong Wang,ahfxvd\r\n朱东辉,5detld\r\nwuusteve,ep5chk\r\n最后的阿迪王君,uu9ztc\r\nLittleLL,tvhkx0\r\n祁嘉脚脚,evguxm\r\n金淑玉,icmuqb\r\nGina Lu,z025ah\r\nSimpleXIEZX,vrwc6y\r\n闫小胖,c9f7z3\r\nSunFei,r9pycd\r\nWang Wenjing,scurrc\r\nChen Yingxiang,eipp9p\r\nYangwan,hkkajf\r\nYing Liu,zcsdw2\r\n陈放群,afbcrb\r\ntata,ukkyl9\r\n张京阳,s0r5fc\r\ncastrolin,51trxt\r\n农立仪,nbuepd\r\n阚光嫣,96u63p\r\nJi Rigelesaiyin,p5is4r\r\n地下天鹅绒,gqqon2\r\nwatterfall,omgydk\r\nAmy Zhou,0rnbk4\r\n曾建康,pz0jvj\r\nFansy Fan,9dvx3b\r\nZhe ZHANG,5ilupu\r\nDrake Ramoray,5x85qw\r\nJieqiong Jin,n8f46v\r\n文土坤,x1sxhy\r\nvanch,1sxkm9\r\n习拉瑞斯不是凯丁,3qfxrw\r\n\r\n还有啊，有同学跟我要提供certificate的课程，列表如下：\r\n\r\n所有泰勒 taylor\'s university 的课程都有证书，包括：\r\n\r\nGlobal Entrepreneurship\r\n\r\nBiosciences: journey into the cell\r\n\r\nwonderful styles of food and beverage around the world\r\n\r\nEntrepreneurship\r\n\r\nSuccess - achieve success with emotional intelligence\r\n\r\nEngeneering innovation and the future of humankind\r\n\r\n其他课程包括：\r\n\r\nGames in education: Gamification\r\n\r\nPeace game\r\n\r\nMobile Game Development with Game salad\r\n\r\n明信片在等印章和贴纸，最快这周五发出，最慢下周二发出，请名字在列表里的同学于这周联系我！！\r\n\r\nps: openlearning在征集中文名字，欢迎大家集思广益，想出有趣好玩有意义与众不同的名字来给openlearning吧！！我们会选五个入围名字，加发明信片，因为大家太爱这个了！！不在列表里，又想要明信片的同学们，不要犹豫啦！！赶紧想起来吧。。。哇哈哈', '1', '2014-06-02 00:48:36');

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `QuestionsNumber` int(11) NOT NULL,
  `QuestionsContent` varchar(255) NOT NULL,
  `QuestionsAnswer_A` varchar(255) NOT NULL,
  `QuestionsAnswer_B` varchar(255) NOT NULL,
  `QuestionsAnswer_C` varchar(255) NOT NULL,
  `QuestionsAnswer_D` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  PRIMARY KEY (`QuestionsNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', '软件产品的开发主要是( )', '复制', '再生产', '拷贝', '研制', 'D');
INSERT INTO `questions` VALUES ('2', '作坊式小团体合作生产方式的时代是（）时代', '程序设计', '软件生产自动化', '程序系统', '软件工程', 'C');
INSERT INTO `questions` VALUES ('3', '软件工程与计算机科学性质不同,软件工程着重于（）', '理论研究', '原理探讨', '建造软件系统', '院里的理论', 'C');
INSERT INTO `questions` VALUES ('4', '将每个模块的控制结构转换成计算机课接受的程序代码是（）阶段的任务', '编码', '需求分析', '详细设计', '测试', 'A');
INSERT INTO `questions` VALUES ('5', '可行性研究的目的是决定（）', '开发项目', '项目值得开发否', '规划项目', '维护项目', 'B');
INSERT INTO `questions` VALUES ('6', 'SA方法用DFD描述（）', '系统的控制流程', '系统的数据结构', '系统的基本加工', '系统的功能', 'D');
INSERT INTO `questions` VALUES ('7', '进行需求分析可使用多种工具，但（）是不适用的', '数据流图', '判定表', 'PAD图', '数据字典', 'C');
INSERT INTO `questions` VALUES ('8', '结构化分析(SA)方发的说明工具中，便于对加工出现的组合条件的工具是', '结构化语言', '判定树', '判定表', 'PAD', 'B');
INSERT INTO `questions` VALUES ('9', '软件概要设计阶段一般又可分为（）', '逻辑设计和功能设计', '概要设计和详细设计', '概念设计和物理设计', '模型设计和程序设计', 'B');
INSERT INTO `questions` VALUES ('10', '软件概要设计结束后得到（）', '初始化的软件结构图', '优化后的软件结构图', '模块的详细算法', '程序编码', 'B');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `POST_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UID` int(11) NOT NULL DEFAULT '0',
  `CONTENT` varchar(140) CHARACTER SET utf8 NOT NULL,
  `POST_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`POST_ID`,`UID`,`CONTENT`,`POST_TIME`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '0', 'nihao', '2014-05-25 15:05:40');
INSERT INTO `reply` VALUES ('1', '0', '你们好啊', '2014-06-02 00:49:54');
INSERT INTO `reply` VALUES ('1', '0', '你好', '2014-05-28 17:44:19');
INSERT INTO `reply` VALUES ('1', '0', '同求', '2014-05-14 15:36:00');
INSERT INTO `reply` VALUES ('1', '0', '大家好', '2014-06-02 00:49:51');
INSERT INTO `reply` VALUES ('1', '0', '测试一下触发器', '2014-05-26 00:03:33');
INSERT INTO `reply` VALUES ('1', '1', '就是软件工程啊', '2014-05-20 14:19:14');
INSERT INTO `reply` VALUES ('2', '1', '', '2014-05-19 21:49:54');
INSERT INTO `reply` VALUES ('8', '0', '你好', '2014-06-02 00:49:57');
INSERT INTO `reply` VALUES ('8', '0', '大家好', '2014-06-02 00:49:59');
INSERT INTO `reply` VALUES ('11', '0', '作死', '2014-05-28 17:10:17');
INSERT INTO `reply` VALUES ('11', '0', '猕猴桃不是个好东西吗？', '2014-05-28 17:10:04');
INSERT INTO `reply` VALUES ('11', '0', '飞翔', '2014-05-26 00:27:41');
INSERT INTO `reply` VALUES ('11', '1', '猕猴桃是个好东西', '2014-05-28 17:09:34');
INSERT INTO `reply` VALUES ('13', '1', '這門課貌似要很高深數學嗎？', '2014-05-22 00:44:40');
INSERT INTO `reply` VALUES ('14', '0', '也许吧', '2014-05-25 22:10:49');
INSERT INTO `reply` VALUES ('15', '1', '没有中文字幕，但有英文字幕。', '2014-05-22 00:42:29');
INSERT INTO `reply` VALUES ('16', '0', 'course 给我发的邮件直接收不到，我现登陆不了账户了。。郁闷', '2014-06-02 00:49:34');
INSERT INTO `reply` VALUES ('16', '0', 'DIY Quadcopter已经接近尾声，超喜欢这课。', '2014-06-02 00:49:36');
INSERT INTO `reply` VALUES ('16', '0', '也不算，只是有个简单的模拟', '2014-06-02 00:49:38');
INSERT INTO `reply` VALUES ('16', '0', '只有看官方之后会不会更新字幕了', '2014-06-02 00:49:38');
INSERT INTO `reply` VALUES ('16', '0', '好啊，第一次看的时候还没有字幕，后来更新了', '2014-06-02 00:49:39');
INSERT INTO `reply` VALUES ('16', '0', '想起了一本书，叫《与机器赛跑》~', '2014-06-02 00:49:40');
INSERT INTO `reply` VALUES ('16', '0', '成本太高（diy1000以上才算入门级）', '2014-06-02 00:49:41');
INSERT INTO `reply` VALUES ('16', '0', '第一次知道四轴飞行器是因为看三傻……', '2014-06-02 00:49:42');
INSERT INTO `reply` VALUES ('16', '0', '话说，　这课有没有附加视频介绍　ＤＩＹ　飞行器的？或是买哪款产品后，我们可以自己编程录入，用手机、程序自动控制的？', '2014-06-02 00:49:43');
INSERT INTO `reply` VALUES ('16', '0', '这课程主要讲算法设计，不教DIY飞行器的，因为它的算法都用仿真平台实现。', '2014-06-02 00:49:43');
INSERT INTO `reply` VALUES ('16', '0', '这货落到三胖手里就算是侦查机了。', '2014-06-02 00:49:45');
INSERT INTO `reply` VALUES ('17', '0', '没有我啊', '2014-05-25 15:22:29');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `VIDEO_ID` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `ADD_DATE` date NOT NULL DEFAULT '0000-00-00',
  `PATH` varchar(255) NOT NULL,
  PRIMARY KEY (`VIDEO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('7', '如此把妹', '2014-05-25', 'http://player.youku.com/embed/XNzE1MjIyMDAw');
DROP TRIGGER IF EXISTS `reply_post_count`;
DELIMITER ;;
CREATE TRIGGER `reply_post_count` AFTER INSERT ON `reply` FOR EACH ROW begin
    set @id = NEW.POST_ID;   
    UPDATE post set REPLY_COUNT = REPLY_COUNT + 1 where POST_ID = @id;
end
;;
DELIMITER ;
