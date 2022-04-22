CREATE DATABASE IF NOT EXISTS `CFA104G5`;
USE `CFA104G5`;

DROP TABLE IF EXISTS `ADMIN_PRIV`;
DROP TABLE IF EXISTS `ADMIN_FUNC`;
DROP TABLE IF EXISTS `ADMIN_EMP`;
DROP TABLE IF EXISTS `SEC_FAV`;
DROP TABLE IF EXISTS `SEC_REFUND`;
DROP TABLE IF EXISTS `SEC_ORD_DETAILS`;
DROP TABLE IF EXISTS `SEC_PICS`;
DROP TABLE IF EXISTS `SEC_ORD`;
DROP TABLE IF EXISTS `SEC_ITEMS`;
DROP TABLE IF EXISTS `SEC_POSTCODE`;
DROP TABLE IF EXISTS `SEC_CATEGORY`;
DROP TABLE IF EXISTS `SEC_TRAN_RECORD`;
DROP TABLE IF EXISTS `REN_FAVORITES`;
DROP TABLE IF EXISTS `REN_APPOINTMENT`;
DROP TABLE IF EXISTS `REN_LEASE_PIC`;
DROP TABLE IF EXISTS `REN_LISTING_PIC`;
DROP TABLE IF EXISTS `REN_LEASE`;
DROP TABLE IF EXISTS `REN_LISTING`;
DROP TABLE IF EXISTS `REN_ROOMTYPE`;
DROP TABLE IF EXISTS `REN_LANDLORD`;
DROP TABLE IF EXISTS `REN_LOCATION`;
DROP TABLE IF EXISTS `SER_REPO`;
DROP TABLE IF EXISTS `SER_ORD`;
DROP TABLE IF EXISTS `SER_QUO`;
DROP TABLE IF EXISTS `SER_DMD`;
DROP TABLE IF EXISTS `SER_AD`;
DROP TABLE IF EXISTS `SER_VDR`;
DROP TABLE IF EXISTS `SER_CLA`;
DROP TABLE IF EXISTS `CHAT`;
DROP TABLE IF EXISTS `MEMBER`;

-- 會員
CREATE TABLE `CFA104G5`.`MEMBER` (
  `MEM_ID` INT NOT NULL AUTO_INCREMENT,
  `MEM_USERNAME` VARCHAR(20) NOT NULL,
  `MEM_PASSWORD` VARCHAR(20) NOT NULL,
  `MEM_NAME` VARCHAR(20) NOT NULL,
  `MEM_LANDLORD` TINYINT(1) NOT NULL DEFAULT 0,
  `MEM_SUPPLIER` TINYINT(1) NOT NULL DEFAULT 1,
  `MEM_SELLER` TINYINT(1) NOT NULL DEFAULT 1,
  `MEM_PHONE` VARCHAR(10) NOT NULL,
  `MEM_ADDRESS` VARCHAR(200) NULL DEFAULT NULL,
  `MEM_EMAIL` VARCHAR(50) NOT NULL,
  `MEM_PID` VARCHAR(10) NOT NULL,
  `MEM_STATUS` TINYINT(1) NOT NULL DEFAULT 0,
  `MEM_HEADSHOT` LONGBLOB NULL DEFAULT NULL,
  `MEM_REV_COUNT` INT NOT NULL DEFAULT 0,
  `MEM_REV_SCORE` INT NOT NULL DEFAULT 0,
  `MEM_RED_COUNT` INT NOT NULL DEFAULT 0,
  `MEM_RED_SCORE` INT NOT NULL DEFAULT 0,
  `MEM_REPORTED` INT NOT NULL DEFAULT 0,
  `MEM_LDD_REPORTED` INT NOT NULL DEFAULT 0,
  `MEM_SUP_REPORTED` INT NOT NULL DEFAULT 0,
  `MEM_SEL_REPORTED` INT NOT NULL DEFAULT 0,
  `MEM_VATNO` VARCHAR(8) NULL,
  PRIMARY KEY (`MEM_ID`),
  UNIQUE KEY UK_MEMBER_MEM_USERNAME(MEM_USERNAME),
  UNIQUE KEY UK_MEMBER_MEM_EMAIL(MEM_EMAIL),
  UNIQUE KEY UK_MEMBER_MEM_PID(MEM_PID)
)COMMENT = '會員';

INSERT INTO `CFA104G5`.`MEMBER` VALUES (1,"Gwen02","gwen02","陳富津",0,1,1,"0912345678","桃園市中壢區三芝里苗米路168號","threecats@gmail.com","H232873555",1,"",1,4,8,27,0,3,4,5,"81761063");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (2,"Doris03","doris03","Doris Lin",0,0,1,"0987654321","新北市板橋區伊比里椏芽路94號7樓1號","rr965234@gmail.com","F277726766",1,"",3,9,5,5,1,0,4, 2,"73429803");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (3,"Ling18","ling18","琳琳",0,1,1,"0955999000","桃園市八德區幸福路999號","lingling18@yahoo.com","H294803022",1,"",5,7,2,8,0,0,1,1,"80742110");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (4,"Ming20","ming20","我是大吳老師最愛的企鵝",1,1,1,"0956234720","台南市柳營區恆多路鈕奈街222號","minglovesservlet@gmail.com","R189190326",1,"",5,18,5,25,0,0,0,0,"56234720");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (5,"Ruei22","ruei22","睿睿",2,0,0,"0978098253","桃園市桃園區武陵街634號","minglovesservlet123@gmail.com","H126793508",2,"",10,10,10,10,3,10,10,10,"18225868");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (6,"Anon123","abc12344","Anon",1,0,1,"0960463264","台北市信義區信義路五段7號","anon567892@gmail.com","A159059194",1,"",3,12,3,9,1,3,4,0,"57977872");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (7,"cailing322","cailing322","cailing",1,1,1,"0944754328","台中市龍井區新興路9巷12號","baseballbat@gmail.com","W185961441",2,"",3,13,2,9,3,0,0,1,"53299541");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (8,"johnj","test3781","John Doe",0,0,0,"0977886288","桃園市桃園區中山路889號","john999doe@gmail.com","H125845692",1,"",6,14,8,9,2,0,10,10,"99180882");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (9,"CuRiOuS_DoPhIn","dophinisthebest!","海豚",0,1,1,"0963802750","澎湖縣白沙鄉岐頭村58號","Doooophin@gmail.com","X130245534",1,"",8,33,3,14,0,0,0,0,"18122010");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (10,"iSS@te$t","p@s$w0rd","Jane",1,1,0,"0987654321","高雄市前鎮區中華五路789號","jannnnnne@gmail.com","S214927987",1,"",6,19,6,13,0,0,1,10,"99999856");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (11,"rylee123","rylee456","RYLEE",0,1,1,"0932939721","臺東縣池上鄉錦園路12號","rylee123@gmail.com","A147608918",1,"",7,23,7,26,0,0,0,0,"82021448");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (12,"eliana123","eliana456","ELIANA",0,1,1,"0937056409","花蓮縣瑞穗鄉掃叭頂一路25號","eliana123@gmail.com","A271865483",1,"",4,19,3,14,0,0,0,0,"16824992");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (13,"nova123","nova456","NOVA",0,1,1,"0927523384","臺北市士林區倫等街16號","nova123@gmail.com","D293256525",1,"",0,0,0,0,0,0,0,0,"37840287");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (14,"justin123","justin456","JUSTIN",1,1,1,"0922124814","桃園市中壢區林森路35號","justin123@gmail.com","N127947424",1,"",5,18,5,15,0,0,1,2,"27257410");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (15,"lily123","lily456","快結訓了",1,1,1,"0968849962","桃園市龜山區興華五街22號","lily123@gmail.com","F210749441",1,"",4,16,4,15,0,1,1,1,"32220702");
INSERT INTO `CFA104G5`.`MEMBER` VALUES (16,"notReg","notReg3445","終於可以好好睡一覺",0,1,1,"0976482983","宜蘭縣大同鄉太平巷58之1號","moutain0984@gmail.com","G158563640",0,"",0,0,0,0,0,0,0,0,"75060182");






-- 聊聊
CREATE TABLE `CFA104G5`.`CHAT` (
  `CHAT_MSG_ID` INT NOT NULL AUTO_INCREMENT,
  `CHAT_FROM_MEM_ID` INT NOT NULL,
  `CHAT_TO_MEM_ID` INT NOT NULL,
   `CHAT_CONTENT` VARCHAR(255) NULL DEFAULT NULL,
   `CHAT_TIME` DATETIME NOT NULL,
   `CHAT_IMAGES` LONGBLOB NULL DEFAULT NULL,
PRIMARY KEY (`CHAT_MSG_ID`),
INDEX `FK_CHAT_FROM` (`CHAT_FROM_MEM_ID` ASC) VISIBLE,
INDEX `FK_CHAT_TO` (`CHAT_TO_MEM_ID` ASC) VISIBLE,
CONSTRAINT `FK_CHAT_CHAT_FROM_MEM_ID` FOREIGN KEY (`CHAT_FROM_MEM_ID`) REFERENCES `MEMBER` (`MEM_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT `FK_CHAT_CHAT_TO_MEM_ID` FOREIGN KEY (`CHAT_TO_MEM_ID`) REFERENCES `MEMBER` (`MEM_ID`) ON DELETE RESTRICT ON UPDATE CASCADE)
COMMENT = '聊聊';

INSERT INTO `CFA104G5`.`chat` (`CHAT_MSG_ID`, `CHAT_FROM_MEM_ID`, `CHAT_TO_MEM_ID`, `CHAT_CONTENT`, `CHAT_TIME`) VALUES ('1', '9', '2', '有別的顏色嗎', '2022-01-01 11:46:37');
INSERT INTO `CFA104G5`.`chat` (`CHAT_MSG_ID`, `CHAT_FROM_MEM_ID`, `CHAT_TO_MEM_ID`, `CHAT_CONTENT`, `CHAT_TIME`) VALUES ('2', '2', '9', '只有黑色喔!', '2022-01-01 13:33:32');
INSERT INTO `CFA104G5`.`chat` (`CHAT_MSG_ID`, `CHAT_FROM_MEM_ID`, `CHAT_TO_MEM_ID`, `CHAT_CONTENT`, `CHAT_TIME`) VALUES ('3', '9', '2', '好 謝謝', '2022-01-01 14:00:00');
INSERT INTO `CFA104G5`.`chat` (`CHAT_MSG_ID`, `CHAT_FROM_MEM_ID`, `CHAT_TO_MEM_ID`, `CHAT_CONTENT`, `CHAT_TIME`) VALUES ('4', '3', '1', '這禮拜三7點可以預約看房嗎?', '2022-01-03 22:30:12');
INSERT INTO `CFA104G5`.`chat` (`CHAT_MSG_ID`, `CHAT_FROM_MEM_ID`, `CHAT_TO_MEM_ID`, `CHAT_CONTENT`, `CHAT_TIME`) VALUES ('5', '8', '1', '我禮拜三想看房', '2022-01-04 08:12:42');
INSERT INTO `CFA104G5`.`chat` (`CHAT_MSG_ID`, `CHAT_FROM_MEM_ID`, `CHAT_TO_MEM_ID`, `CHAT_CONTENT`, `CHAT_TIME`) VALUES ('6', '1', '3', '可以~可以打0912345678聯繫我~', '2022-01-04 10:22:38');
INSERT INTO `CFA104G5`.`chat` (`CHAT_MSG_ID`, `CHAT_FROM_MEM_ID`, `CHAT_TO_MEM_ID`, `CHAT_CONTENT`, `CHAT_TIME`) VALUES ('7', '1', '8', '什麼時候呢? 晚上7:00~7:30以外都可以喔!', '2022-01-04 10:23:58');
INSERT INTO `CFA104G5`.`chat` (`CHAT_MSG_ID`, `CHAT_FROM_MEM_ID`, `CHAT_TO_MEM_ID`, `CHAT_CONTENT`, `CHAT_TIME`) VALUES ('8', '11', '4', '請問工程大概需要多久?', '2022-01-15 21:46:37');
INSERT INTO `CFA104G5`.`chat` (`CHAT_MSG_ID`, `CHAT_FROM_MEM_ID`, `CHAT_TO_MEM_ID`, `CHAT_CONTENT`, `CHAT_TIME`) VALUES ('9', '4', '11', '具體時間會請師傅當場評估，有可能跟預期的時間有些微出入', '2022-01-16 09:13:43');

-- 租賃
-- 1. 房東
CREATE TABLE `CFA104G5`.`REN_LANDLORD` (
  `LDD_ID` INT NOT NULL AUTO_INCREMENT,
  `LDD_MEM_ID` INT NOT NULL,
  `LDD_APPROVAL` TINYINT(1) NULL DEFAULT 0,
`LDD_PIC` LONGBLOB NULL,
  PRIMARY KEY (`LDD_ID`),
  INDEX `FK_LDD_MEM_ID` (`LDD_MEM_ID` ASC) VISIBLE,
  CONSTRAINT `FK_REN_LANDLORD_LDD_MEM_ID`
    FOREIGN KEY (`LDD_MEM_ID`)
    REFERENCES `CFA104G5`.`MEMBER` (`MEM_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE);

INSERT INTO `CFA104G5`.`REN_LANDLORD` VALUES (1,4,2,null),(2,6,2,null),(3,7,2,null),(4,10,2,null),(5,14,2,null),(6,15,2,null),(7,1,0,null),(8,5,2,null);

-- 2. 房源區域
CREATE TABLE `CFA104G5`.`REN_LOCATION` (
  `LOC_ID` INT NOT NULL AUTO_INCREMENT,
  `LOC_CITY` VARCHAR(45) NOT NULL,
  `LOC_DIST` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`LOC_ID`));

insert into `CFA104G5`.`REN_LOCATION`
values(1,"基隆市","中正區"),(2,"基隆市","中山區"),(3,"基隆市","信義區"),(4,"基隆市","仁愛區"),(5,"基隆市","暖暖區"),(6,"基隆市","安樂區"),(7,"基隆市","七堵區"),
      (8,"台北市","中正區"),(9,"台北市","大同區"),(10,"台北市","中山區"),(11,"台北市","松山區"),(12,"台北市","大安區"),(13,"台北市","萬華區"),(14,"台北市","信義區"),(15,"台北市","士林區"),(16,"台北市","北投區"),(17,"台北市","內湖區"),(18,"台北市","南港區"),(19,"台北市","文山區"),
      (20,"新北市","板橋區"),(21,"新北市","三重區"),(22,"新北市","中和區"),(23,"新北市","永和區"),(24,"新北市","新莊區"),(25,"新北市","新店區"),(26,"新北市","土城區"),(27,"新北市","蘆洲區"),(28,"新北市","汐止區"),(29,"新北市","樹林區"),(30,"新北市","鶯歌區"),(31,"新北市","三峽區"),
      (32,"新北市","淡水區"),(33,"新北市","瑞芳區"),(34,"新北市","五股區"),(35,"新北市","泰山區"),(36,"新北市","林口區"),(37,"新北市","八里區"),(38,"新北市","深坑區"),(39,"新北市","石碇區"),(40,"新北市","坪林區"),(41,"新北市","三芝區"),(42,"新北市","石門區"),(43,"新北市","金山區"),
	  (44,"新北市","萬里區"),(45,"新北市","平溪區"),(46,"新北市","雙溪區"),(47,"新北市","貢寮區"),(48,"新北市","烏來區"),(49,"桃園市","中壢區"),(50,"桃園市","平鎮區"),(51,"桃園市","龍潭區"),(52,"桃園市","楊梅區"),(53,"桃園市","新屋區"),(54,"桃園市","觀音區"),
      (55,"桃園市","桃園區"),(56,"桃園市","龜山區"),(57,"桃園市","八德區"),(58,"桃園市","大溪區"),(59,"桃園市","復興區"),(60,"桃園市","大園區"),(61,"桃園市","蘆竹區"),(62,"新竹市","東區"),(63,"新竹市","北區"),(64,"新竹市","香山區"),(65,"苗栗縣","竹南鎮"),(66,"苗栗縣","頭份市"),(67,"苗栗縣","三灣鄉"),(68,"苗栗縣","南庄鄉"),(69,"苗栗縣","獅潭鄉"),(70,"苗栗縣","後龍鎮"),(71,"苗栗縣","通霄鎮"),(72,"苗栗縣","苑裡鎮"),
(73,"苗栗縣","苗栗市"),(74,"苗栗縣","造橋鄉"),(75,"苗栗縣","頭屋鄉"),(76,"苗栗縣","公館鄉"),(77,"苗栗縣","大湖鄉"),(78,"苗栗縣","泰安鄉"),
(79,"苗栗縣","銅鑼鄉0"),(80,"苗栗縣","三義鄉"),(81,"苗栗縣","西湖鄉"),(82,"苗栗縣","卓蘭鎮"),(83,"臺中市","中區"),(84,"臺中市","東區"),
(85,"臺中市","南區"),(86,"臺中市","西區"),(87,"臺中市","北區"),(88,"臺中市","北屯區"),
(89,"臺中市","西屯區"),(90,"臺中市","南屯區"),(91,"臺中市","太平區"),(92,"臺中市","大里區"),(93,"臺中市","霧峰區"),(94,"臺中市","烏日區"),
(95,"臺中市","豐原區"),(96,"臺中市","后里區"),(97,"臺中市","石岡區"),(98,"臺中市","東勢區"),(99,"臺中市","和平區"),(100,"臺中市","新社區"),
(101,"臺中市","潭子區"),(102,"臺中市","大雅區"),(103,"臺中市","神岡區"),(104,"臺中市","大肚區"),(105,"臺中市","沙鹿區"),(106,"臺中市","龍井區"),
(107,"臺中市","梧棲區"),(108,"臺中市","清水區"),(109,"臺中市","大甲區"),(110,"臺中市","外埔區"),(111,"臺中市","大安區"),(112,"彰化縣","彰化市"),
(113,"彰化縣","芬園鄉"),(114,"彰化縣","花壇鄉"),(115,"彰化縣","秀水鄉"),(116,"彰化縣","鹿港鎮"),(117,"彰化縣","福興鄉"),(118,"彰化縣","線西鄉"),
(119,"彰化縣","和美鎮"),(120,"彰化縣","伸港鄉"),(121,"彰化縣","員林市"),(122,"彰化縣","社頭鄉"),(123,"彰化縣","永靖鄉"),(124,"彰化縣","埔心鄉"),
(125,"彰化縣","溪湖鎮"),(126,"彰化縣","大村鄉"),(127,"彰化縣","埔鹽鄉"),(128,"彰化縣","田中鎮"),(129,"彰化縣","北斗鎮"),(130,"彰化縣","田尾鄉"),
(131,"彰化縣","埤頭鄉"),(132,"彰化縣","溪州鄉"),(133,"彰化縣","竹塘鄉"),(134,"彰化縣","二林鎮"),(135,"彰化縣","大城鄉"),(136,"彰化縣","芳苑鄉"),
(137,"彰化縣","二水鄉"),(138,"南投縣","南投市"),(139,"南投縣","中寮鄉"),(140,"南投縣","草屯鎮"),(141,"南投縣","國姓鄉"),(142,"南投縣","埔里鎮"),
(143,"南投縣","仁愛鄉"),(144,"南投縣","名間鄉"),(145,"南投縣","集集鎮"),(146,"南投縣","水里鄉"),(147,"南投縣","魚池鄉"),(148,"南投縣","信義鄉"),
(149,"南投縣","竹山鎮"),(150,"南投縣","鹿谷鄉"),(151,"嘉義市","東區"),(152,"嘉義市","西區"),(153,"嘉義縣","番路鄉"),(154,"嘉義縣","梅山鄉"),(155,"嘉義縣","竹崎鄉"),(156,"嘉義縣","阿里山"),(157,"嘉義縣","中埔鄉"),(158,"嘉義縣","大埔鄉"),(159,"嘉義縣","水上鄉"),(160,"嘉義縣","鹿草鄉"),
(161,"嘉義縣","太保市"),(162,"嘉義縣","朴子市"),(163,"嘉義縣","東石鄉"),(164,"嘉義縣","六腳鄉"),(165,"嘉義縣","新港鄉"),(166,"嘉義縣","民雄鄉"),
(167,"嘉義縣","大林鎮"),(168,"嘉義縣","溪口鄉"),(169,"嘉義縣","義竹鄉"),(170,"嘉義縣","布袋鎮"),(171,"雲林縣","斗南鎮"),(172,"雲林縣","大埤鄉"),
(173,"雲林縣","虎尾鎮"),(174,"雲林縣","土庫鎮"),(175,"雲林縣","褒忠鄉"),(176,"雲林縣","東勢鄉"),(177,"雲林縣","臺西鄉"),(178,"雲林縣","崙背鄉"),
(179,"雲林縣","麥寮鄉"),(180,"雲林縣","斗六市"),(181,"雲林縣","林內鄉"),(182,"雲林縣","古坑鄉"),(183,"雲林縣","莿桐鄉"),(184,"雲林縣","西螺鎮"),
(185,"雲林縣","二崙鄉"),(186,"雲林縣","北港鎮"),(187,"雲林縣","水林鄉"),(188,"雲林縣","口湖鄉"),(189,"雲林縣","四湖鄉"),(190,"雲林縣","元長鄉"),
(191,"臺南市","中西區"),(192,"臺南市","東區"),(193,"臺南市","南區"),(194,"臺南市","北區"),(195,"臺南市","安平區"),(196,"臺南市","安南區"),
(197,"臺南市","永康區"),(198,"臺南市","歸仁區"),(199,"臺南市","新化區"),(200,"臺南市","左鎮區"),(201,"臺南市","玉井區"),(202,"臺南市","楠西區"),
(203,"臺南市","南化區"),(204,"臺南市","仁德區"),(205,"臺南市","關廟區"),(206,"臺南市","龍崎區"),(207,"臺南市","官田區"),(208,"臺南市","麻豆區"),
(209,"臺南市","佳里區"),(210,"臺南市","西港區"),(211,"臺南市","七股區"),(212,"臺南市","將軍區"),(213,"臺南市","學甲區"),(214,"臺南市","北門區"),
(215,"臺南市","新營區"),(216,"臺南市","後壁區"),(217,"臺南市","白河區"),(218,"臺南市","東山區"),(219,"臺南市","六甲區"),(220,"臺南市","下營區"),
(221,"臺南市","柳營區"),(222,"臺南市","鹽水區"),(223,"臺南市","善化區"),(224,"臺南市","大內區"),(225,"臺南市","山上區"),(226,"臺南市","新市區"),(227,"臺南市","安定區"),(228,"高雄市","楠梓區"),(229,"高雄市","左營區"),(230,"高雄市"," 鼓山區"),
(231,"高雄市","三民區"),(232,"高雄市","苓雅區"),(233,"高雄市","新興區"),(234,"高雄市","前金區"),(235,"高雄市","鹽埕區"),
(236,"高雄市","前鎮區"),(237,"高雄市","旗津區"),(238,"高雄市","小港區"),(239,"高雄市","鳳山區"),(240,"高雄市","茂林區"),
(241,"高雄市","甲仙區"),(242,"高雄市","六龜區"),(243,"高雄市","杉林區"),(244,"高雄市","美濃區"),(245,"高雄市","內門區"),
(246,"高雄市","仁武區"),(247,"高雄市","田寮區"),(248,"高雄市","旗山區"),(249,"高雄市","梓官區"),(250,"高雄市","阿蓮區"),
(251,"高雄市","湖內區"),(252,"高雄市","岡山區"),(253,"高雄市","茄萣區"),(254,"高雄市","路竹區"),(255,"高雄市","鳥松區"),
(256,"高雄市","永安區"),(257,"高雄市","燕巢區"),(258,"高雄市","大樹區"),(259,"高雄市","大寮區"),(260,"高雄市","林園區"),
(261,"高雄市","彌陀區"),(262,"高雄市","橋頭區"),(263,"高雄市","大社區"),(264,"高雄市","那瑪夏區"),(265,"高雄市","桃源區"),
(266,"屏東縣","屏東市"),(267,"屏東縣","潮州鎮"),(268,"屏東縣","東港鎮"),(269,"屏東縣","恆春鎮"),(270,"屏東縣","萬丹鄉"),
(271,"屏東縣","長治鄉"),(272,"屏東縣","麟洛鄉"),(273,"屏東縣","九如鄉"),(274,"屏東縣","里港鄉"),(275,"屏東縣","鹽埔鄉"),
(276,"屏東縣","高樹鄉"),(277,"屏東縣","萬巒鄉"),(278,"屏東縣","內埔鄉"),(279,"屏東縣","竹田鄉"),(280,"屏東縣","新埤鄉"),
(281,"屏東縣","枋寮鄉"),(282,"屏東縣","新園鄉"),(283,"屏東縣","崁頂鄉"),(284,"屏東縣","林邊鄉"),(285,"屏東縣","南州鄉"),
(286,"屏東縣","佳冬鄉"),(287,"屏東縣","琉球鄉"),(288,"屏東縣","車城鄉"),(289,"屏東縣","滿州鄉"),(290,"屏東縣","枋山鄉"),
(291,"屏東縣","三地門鄉"),(292,"屏東縣","霧臺鄉"),(293,"屏東縣","瑪家鄉"),(294,"屏東縣","泰武鄉"),(295,"屏東縣","來義鄉"),
(296,"屏東縣","春日鄉"),(297,"屏東縣","獅子鄉"),(298,"屏東縣","牡丹鄉"),(299,"宜蘭縣","頭城鄉"),(300,"宜蘭縣","礁溪鄉"),
(301,"宜蘭縣","員山鄉"),(302,"宜蘭縣","宜蘭市"),(303,"宜蘭縣","壯圍鄉"),(304,"宜蘭縣","大同鄉"),(305,"宜蘭縣","三星鄉"),
(306,"宜蘭縣","羅東鎮"),(307,"宜蘭縣","五結鄉"),(308,"宜蘭縣","冬山鄉"),(309,"宜蘭縣","蘇澳鎮"),(310,"宜蘭縣","南澳鄉"),
(311,"花蓮縣","花蓮市"),(312,"花蓮縣","鳳林鎮"),(313,"花蓮縣","玉里鎮"),(314,"花蓮縣","新城鄉 "),(315,"花蓮縣","吉安鄉"),
(316,"花蓮縣","壽豐鄉"),(317,"花蓮縣","光復鄉"),(318,"花蓮縣","豐濱鄉"),(319,"花蓮縣","瑞穗鄉"),(320,"花蓮縣","富里鄉"),
(321,"花蓮縣","秀林鄉"),(322,"花蓮縣","壽豐鄉"),(323,"花蓮縣","卓溪鄉"),(324,"台東縣","臺東市"),(325,"台東縣","成功鎮"),
(326,"台東縣","關山鎮"),(327,"台東縣","長濱鄉"),(328,"台東縣","海端鄉"),(329,"台東縣","池上鄉"),(330,"台東縣","東河鄉"),
(331,"台東縣","鹿野鄉"),(332,"台東縣","延平鄉"),(333,"台東縣","卑南鄉"),(334,"台東縣"," 金峰鄉"),(335,"台東縣","太麻里鄉"),
(336,"台東縣","大武鄉"),(337,"台東縣","達仁鄉"),(338,"台東縣","綠島鄉"),(339,"台東縣","蘭嶼鄉"),(340,"澎湖縣","馬公市"),
(341,"澎湖縣","湖西鄉"),(342,"澎湖縣","白沙鄉"),(343,"澎湖縣","西嶼鄉"),(344,"澎湖縣","望安鄉"),(345,"澎湖縣","七美鄉"),
(346,"金門縣","金城鎮"),(347,"金門縣","金湖鎮"),(348,"金門縣","金沙鎮"),(349,"金門縣","金寧鄉"),(350,"金門縣","烈嶼鄉"),
(351,"金門縣","烏坵鄉"),(352,"連江縣","南竿鄉"),(353,"連江縣","北竿鄉"),(354,"連江縣","莒光鄉"),(355,"連江縣","東引鄉");






-- 3. 房型
CREATE TABLE `CFA104G5`.`REN_ROOMTYPE` (
  `RT_ID` INT NOT NULL AUTO_INCREMENT,
  `RT_TYPE` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`RT_ID`));

insert into `CFA104G5`.`REN_ROOMTYPE`
values (1,"整層住家"),(2,"套房"),(3,"雅房");


-- 4. 房源
CREATE TABLE `CFA104G5`.`REN_LISTING` (
  `LIS_ID` INT NOT NULL AUTO_INCREMENT comment '房源ID',
  `LIS_LDD_ID` INT NOT NULL comment '房東ID',
  `LIS_RT_ID` INT NOT NULL comment '房型ID',
  `LIS_AREA_ID` INT NOT NULL comment '區域ID',
  `LIS_TITLE` VARCHAR(255) NOT NULL comment '房源標題',
  `LIS_ABT` VARCHAR(255) NOT NULL comment '房源介紹',
  `LIS_ADDRESS` VARCHAR(255) NOT NULL comment '詳細地址',
  `LIS_RENT` DECIMAL NOT NULL comment '租金',
  `LIS_MNG_FEE` DECIMAL NOT NULL comment '管理費',
  `LIS_PFEE` DECIMAL NOT NULL comment '停車費',
  `LIS_SQFT` DOUBLE NOT NULL comment '坪數',
  `LIS_FLR` VARCHAR(10) NOT NULL comment '樓層',
  `LIS_RM_NO` INT NOT NULL comment '房間數',
  `LIS_CMN_AREA` INT NOT NULL comment '廳堂',
  `LIS_BR_NO` INT NOT NULL comment '衛浴',
  `LIS_ETHERNET` TINYINT(1) NOT NULL DEFAULT 0 comment '有線網路',
  `LIS_WIFI` TINYINT(1) NOT NULL DEFAULT 0 comment 'WIFI',
  `LIS_WH` TINYINT(1) NOT NULL DEFAULT 0 comment '熱水器',
  `LIS_SHENC` TINYINT(1) NOT NULL DEFAULT 0 comment '乾溼分離',
  `LIS_AC` TINYINT(1) NOT NULL DEFAULT 0 comment '冷氣',
  `LIS_FRIDGE` TINYINT(1) NOT NULL DEFAULT 0 comment '冰箱',
  `LIS_TV` TINYINT(1) NOT NULL DEFAULT 0 comment '電視',
  `LIS_WASHER` TINYINT(1) NOT NULL DEFAULT 0 comment '洗衣機',
  `LIS_DRYER` TINYINT(1) NOT NULL DEFAULT 0 comment '烘衣機',
  `LIS_TC` TINYINT(1) NOT NULL DEFAULT 0 comment '桌椅',
  `LIS_BED` TINYINT(1) NOT NULL DEFAULT 0 comment '床',
  `LIS_CABINET` TINYINT(1) NOT NULL DEFAULT 0 comment '櫃子',
  `LIS_SOFA` TINYINT(1) NOT NULL DEFAULT 0 comment '沙發',
  `LIS_PARKING` TINYINT(1) NOT NULL DEFAULT 0 comment '車位',
  `LIS_COOK` TINYINT(1) NOT NULL DEFAULT 0 comment '可以開伙',
  `LIS_PET` TINYINT(1) NOT NULL DEFAULT 0 comment '可以養寵物',
  `LIS_SMOKING` TINYINT(1) NOT NULL DEFAULT 0 comment '可以抽菸',
  `LIS_MONLY` TINYINT(1) NOT NULL DEFAULT 0 comment '限男性',
  `LIS_FONLY` TINYINT(1) NOT NULL DEFAULT 0 comment '限女性',
  `LIS_SONLY` TINYINT(1) NOT NULL DEFAULT 0 comment '限學生',
  `LIS_STATUS` TINYINT(1) NOT NULL DEFAULT 1 comment '房源上架狀態',
  `LIS_APPROVAL` TINYINT(1) NOT NULL DEFAULT 0 comment '房源申請審核狀態',
  PRIMARY KEY (`LIS_ID`),
  INDEX `FK_LDD_ID` (`LIS_LDD_ID` ASC) VISIBLE,
  INDEX `FK_RT_ID` (`LIS_RT_ID` ASC) VISIBLE,
  INDEX `FK_AREA_ID` (`LIS_AREA_ID` ASC) VISIBLE,
  CONSTRAINT `FK_REN_LISTING_LIS_LDD_ID`
    FOREIGN KEY (`LIS_LDD_ID`)
    REFERENCES `CFA104G5`.`REN_LANDLORD` (`LDD_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE,
  CONSTRAINT `FK_REN_LISTING_LIS_RT_ID`
    FOREIGN KEY (`LIS_RT_ID`)
    REFERENCES `CFA104G5`.`REN_ROOMTYPE` (`RT_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE,
  CONSTRAINT `FK_REN_LISTING_LIS_AREA_ID`
    FOREIGN KEY (`LIS_AREA_ID`)
    REFERENCES `CFA104G5`.`REN_LOCATION` (`LOC_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE);

INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 1,3,2,49,"近SOGO🔥全新套房可貓獨立陽台805"," 生活機能佳！👍1. 距離中壢火車站，走路只要 10 分鐘；距離中壢夜市，走路 12 分鐘；距離工業區 5 分鐘。2. 下樓對面就是寶雅，左邊出去是全聯，巷口轉角是7-11，方便上班族採買與覓食。🔥新生路有公車站牌直達桃園高鐵站、桃捷環北站!!!!!! ","中央西路一段76巷23弄16號 ", 7000 ,0,0,6,8,1,0,1,1,0,1,0,1,1,1,1,0,1,1,1,0,0,1,1,0,0,1,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 2,3,1,49,"內壢後站電梯美三房","不可寵 可開火 租金含管 台水台電 有電梯 樓下可停機車 汽車須找月租 小家庭 上班族佳","榮安五街***號",14000,0,0,21,"4F/7F",3,2,2,0,0,1,1,1,1,0,1,0,1,0,0,0,0,1,1,1,0,0,0,1,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 3,2,2,49,"近中原夜市/中原大學","走路下樓就是夜市很方便,有自己的陽台,洗衣機 浴室有乾濕分離唷~~","大仁街60號對面",6000,0,0,8,"3F/5F",1,0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,0,0,0,0,0,0,1,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 4,1,1,50,"近公園、醫院、車站，大五房","近新勢公園，走路5分鐘；兒三公園，走路12分鐘；義興公園，走路10分鐘。近學區，近醫院 ，交通方便。適合家庭、上班族宿舍或想要擁有大空間的人居住。座北朝南，光缐明亮，五樓整層雙拼，單層單戶，整棟大樓共11戶，來往人員單純。每間房間都有一張雙人床、衣櫃和冷氣，客廳沙發、電視、酒櫃，廚房有冰箱，陽台洗衣機，一卡皮箱即可入住！","延平路二段21巷30弄2號",2400,0,0,58,"5F/GF",5,2,2,0,0,1,0,1,1,1,1,0,1,1,1,1,0,1,0,0,0,0,0,1,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 5,2,2,56,"艾【好房立即租】市政府/全新裝潢","家電–冰箱、LED32吋電視、熱水器、洗衣機","桃園市/桃園區/忠二路",8000,0,0,7,"3F/5F",1,0,1,1,1,1,0,1,1,1,1,0,1,1,1,1,0,0,0,0,0,0,0,1,0);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 6,3,1,12,"台北市復興南路安東公園/近公館&臨江夜市","共四房一衛浴一廳一廚，月租費包管理費代收垃圾，水電瓦斯平分，房間附全身鏡、地墊、書架書桌、衣櫃，剩一房空房哦！","瑞安街23巷24弄22號",13500,0,0,4,"4F/5F",4,1,1,0,0,1,0,1,1,0,1,0,1,1,1,1,0,1,0,0,0,0,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 7,4,1,15,"芝山國小★樓中樓社區","近芝山國小.台北體院.芝山國小公車站.","德行東路241-233",44800,0,0,44,"4-5F/5F",3,3,2,0,0,1,0,1,1,1,0,0,1,1,1,1,0,1,0,0,0,0,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 8,5,2,62,"新竹園區學生上班族套房","電梯大樓，優質套房，獨立陽台，獨立網路，獨立停車位，裝潢家具齊全，陽台有洗衣機。代收郵件包裹服務。投幣式洗衣機烘衣機。附電鍋，微波爐。垃圾分類區。竹科園區內，近清交大後門。","寶山路452巷10弄22號",7600,0,0,7.5,"1-6F/6F",1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,0,0,0,0,1,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 9,5,2,49,"近內壢車站全新整理美套房","📢預約看屋請先加LINE~line:@cometruehouse「留言找LILY小姐看房」或來電詢問：0987193919📞我會盡快為您服務！🙂康厝有限公司，核准登記文號:府經登字第10991159000號","成章二街18巷6-2",1500,0,0,12,"3F/5F",1,0,1,1,0,1,0,1,1,1,1,0,1,1,1,1,0,0,0,0,0,1,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 10,5,2,49,"套房出租","🏠需求：出租🏠💰押金2個月💰🏢樓層：2樓🏢（爬樓梯）⏰最短租期：一年⏰","復華街85巷14弄11號",4700,0,0,6,"2F/5F",1,0,1,1,0,1,1,1,1,1,1,0,1,1,1,0,0,1,0,0,0,0,1,1,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(11,2,2,49,"近中原大學中壢工業區對外窗採光佳套房、家電家具齊全","1.格局方正，典雅舒適
2.  近中原大學、健行科大、中原夜市、中壢及內壢工業區、中壢火車站、中原大學及普仁公車站、大潤發家樂福屈臣氏寶雅應有盡有，生活機能佳且交通便利
3.  內附IKEA優質家具及冷氣、冰箱、液晶電視等
4.  每間配有對外窗，不用擔心潮濕問題
5.  套房環境單純且生活機能佳，歡迎學生及上班族電洽預約看屋","三和二街5之1號",5500,0,0,5,"4 / 5 樓",1,0,1,1,0,1,0,1,1,1,0,0,1,1,1,0,0,0,0,0,0,0,0,1,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(12,3,2,49,"近中原大學大坪數對外窗套房、附公用洗衣機飲水機","1. 格局方正大坪數優雅舒適，數量稀少機會難得2. 近中原大學、國小及夜市、中壢及內壢工業區、中壢火車站、中原大學及普仁公車站、大潤發家樂福屈臣氏寶雅應有盡有，生活機能佳且交通便利
3. 舒適木質地板裝潢；衛浴乾濕分離不用擔心潮濕問題。內附IKEA優質家具及冷氣、冰箱、液晶電視、雙人沙發等4. 頂樓附有公共洗衣機及飲水機，有專員定期保養5. 套房環境單純且生活機能佳，歡迎學生及上班族電洽預約看屋","日新路73巷6弄4號",
8500,0,0,6,"1 / 3 樓",1,0,1,1,0,1,1,1,1,1,1,0,1,1,1,1,0,0,0,0,0,1,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(13,4,2,49,"便宜租替你存兩桶金、近中原大學優質和室套房","1.木質地板日本和室風格，每間皆有個人衛浴及對外窗2.  格局方正，鬧中取靜，溫馨舒適3.  近中原大學、中原夜市、中壢工業區、內壢工業區、中壢火車站、普仁公車站、大潤發及家樂福，生活機能佳且交通便利
4.  有陽台房型$3000; 無陽台附對外窗房型$2500; 另有大間房型$3500，歡迎軍校生及上班族電洽預約看屋","日新路54號",
3000,0,0,4,"3/5樓",1,0,1,1,0,1,0,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,1,0);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(14,5,2,49,"近中原大學附獨立洗衣機對外窗~大坪數套房","採光佳、視野好，舒適木質地板裝潢，內附IKEA優質家具及冷氣、冰箱、液晶電視等一併俱全2. 間間設有獨立洗衣機，洗衣不用等也不用擔心衛生問題3. 近中原大學、國小及夜市、中壢及內壢工業區、中壢火車站、中原大學及普仁公車站、大潤發家樂福屈臣氏寶雅應有盡有，生活機能佳且交通便利4. 歡迎學生及上班族電洽預約看屋 (另有小坪數套房$5000,歡迎預約看房)","三和二街3",5000,0,0,5,"5/6樓",1,0,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,1,0,0,1,1,0,0);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(15,6,2,49,"近中壢高中.觀光夜市旁.漂亮網路套房.限女生","近中壢高中.古華飯店.觀光夜市旁.漂亮網路套房.附傢俱.家電.漂亮裝璜.限租女生(第四台.水費.網路免費).只付電費.本屋禁止養寵物.月租4500元......●●房客租屋~免付仲介費●●","民權路二段",
4500,0,0,8,"4/5樓",1,0,1,1,0,1,0,1,1,1,0,0,1,1,1,0,0,0,0,0,0,1,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(16,6,2,49,"近中壢市區.觀光夜市.附豪華級傢俱.家電.漂亮裝璜","近中壢市區.觀光夜市.NOVA.民權路與中山路口旁.五星級時尚漂亮套房.挑高有夾層.進出門禁刷卡.24小時監視系統.附豪華級傢俱.家電.專用洗衣機.漂亮裝璜.(電視盒.水費.網路免費).只付電費.(本屋禁止養寵物.禁止吸毒.租客需有正當職業).機會難得.要租要快.月租6800元.....●●房客租屋~免付仲介費●●","民權路",
6800,0,0,8,"3/4樓",1,0,1,1,1,1,0,1,1,1,1,0,1,1,1,1,0,0,0,0,0,0,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(17,5,2,49,"中原大學旁.美食街.網路套房.傢俱齊全","近中原大學.中原國小.美食街旁.附全套傢俱.家電.(水費.網路免費).只付電費.月租3600元.....●●房客租屋~免付仲介費●●","力行北街",
3600,0,0,6,"4/5樓",1,0,1,1,0,1,0,1,1,1,0,0,1,1,1,0,0,0,0,0,0,0,1,1,0);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(18,3,2,49,"近SOGO.威尼斯影城旁.網路套房.附傢俱家電","近中壢SOGO.威尼斯影城旁.附傢俱家電.專用洗衣機.(第四台.水費.網路免費).只付電費.生活便利.本屋禁止養寵物.月租4500元.....","區慈惠一街",
4500,0,0,8,"5/5樓",1,0,1,1,0,1,0,1,1,1,1,0,1,1,1,0,0,0,0,0,0,1,0,1,0);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(19,5,2,49,"內壢前站.工業區.漂亮網路套房","近內壢前站.中壢工業區.漂亮精緻網路套房.附傢俱.家電.專用洗衣機.(第四台.水費.網路免費).只付電費.月租6500元...","吉利六街",
6500,0,0,8,"4/5樓",1,0,1,1,0,1,0,1,1,1,1,0,1,1,1,0,0,0,1,0,0,0,0,1,0);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(20,5,2,49,"近中原大學旁.漂亮精緻網路新套房.傢俱齊全","近中原大學.附全套傢俱.家電.漂亮裝璜.實木地板.(MOD.水費.網路免費).只付電費.公共設施有洗衣機.月租7000元......","力行北街",
7000,0,0,8,"3/5樓",1,0,1,1,1,1,0,1,1,1,1,0,1,1,1,1,0,1,0,0,0,1,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(21,6,3,49,"近中原大學.大潤發旁.便宜網路雅房.附傢俱家電","近中原大學.大潤發旁.便宜雅房.共用衛浴.附全套傢俱.家電.(第四台.網路.水費免費).只付電費.月租3500元","國泰街",
3500,0,0,7,"2/5樓",1,0,0,1,0,0,0,1,1,1,0,0,1,1,1,0,0,0,0,0,0,1,1,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(22,6,3,49,"近中原大學.大潤發旁.便宜網路雅房","近中原大學.大潤發旁.便宜雅房.共用衛浴.附全套傢俱.家電(第四台.網路.水費免費).只付電費.月租3000元......●●房客租屋","國泰街",
3000,0,0,5,"3/5樓",1,0,0,1,0,0,0,1,0,1,0,0,1,1,1,0,0,0,0,0,0,0,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(23,4,3,49,"近中原大學.大潤發旁.便宜網路雅房.附傢俱家電","近中原大學.大潤發旁.便宜雅房.共用衛浴.附全套傢俱.家電(第四台.網路.水費免費).只付電費.月租3000元......●●房客租屋","國泰街",
3000,0,0,6,"2/5樓",1,0,0,1,0,0,0,1,1,1,0,0,1,1,1,0,0,0,0,0,0,0,0,1,0);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(24,5,1,49,"中壢運動中心附近二房，寧靜住宅","鄰近生活機能：便利商店、郵局、診所、餐廳、小吃店、飲料店、藥局、市場。
‧附近學區：中大壢中。
‧交通狀況：市區公車，近新屋交流道。  
‧其他描述：(1)在地專業租賃公司。 
                (2)親切服務、以客為尊。 
                (3)租多久、服務多久。 
                (4)本公司收取承租方成交價半個月服務費。 
                (5)歡迎屋主託租、服務費另計。","三光路",
12000,1000,0,28,"5/12樓",2,2,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,1,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(25,5,1,49,"近機捷A19 空間機能三房 超親民價格","近青塘園  冠德購物中心 7-11


大空間景觀視野三房  雙車位

配有四台冷氣 立可入住

通風採光景觀佳  超親民價格","領航北路二段",
15000,2000,1000,30,"12/14樓",3,2,2,0,0,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(26,1,1,49,"中壢青埔 近高鐵 機捷A18 親民三房","中壢青埔  近機捷A18 

近桃園高鐵站  近交流道

旁有多座公園  7-11  全聯

稀有大三房釋出  景觀視野好

配有家具  價格誠可議  誠可議","青商路",
15000,2000,1000,30,"11/12樓",3,2,2,0,0,1,1,1,1,1,1,0,1,1,1,1,1,1,0,0,0,0,0,1,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(27,2,1,49,"近大園市區 中壢青埔 配備齊全2房","近中壢青埔  大園市區

舒適二房  超親民價格

配備齊全  立可入住","民溪七路",
15000,2000,1000,20,"6/11樓",2,2,1,0,0,1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,0,0,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(28,5,1,49,"過嶺 松義路 超親民3房","中壢 過領區  近好事多

生活機能佳  近交流道

大空間三房  超親民價格","松義路",
15000,2000,0,30,"6/15樓",3,2,2,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(29,5,1,49,"中華路一段 超親民三房 近內壢火車站","中壢  中華路一段  近內壢火車站

3房  配備齊全  立可入住

超超超親民價格  生活機能佳

交通超便利 附近商圈林立","中華路一段783巷2號",
15000,0,0,18,"9/11樓",3,2,2,0,0,1,0,0,0,0,0,0,1,1,1,1,0,1,1,0,0,0,0,1,0);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES
(30,5,1,49,"青埔 超優質2房 配備齊全 要看要快","中壢青埔  站前溪路

近桃園高鐵站  機捷A18

配備齊全2房  立可入住

有美麗裝潢  機能2房

高樓視採光好 輕民價格","高鐵站前西路二段",
16000,1000,0,25,"11/11樓",2,2,1,0,0,1,1,1,1,1,1,0,1,1,1,1,0,1,1,0,0,0,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 31,4,2,89,"✌️秒殺全新未住大坪數✌️陽台獨洗✌️流理台"," 加賴：0916101851","太原路一段",11500,1000,0,15,"2樓/5樓",1,0,1,1,0,1,0,0,1,1,1,0,1,1,1,1,0,0,1,0,0,0,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 32,4,2,89,"✌超秒殺~近逢甲❤機車位❤陽台獨洗❤先搶先贏","  陳先生【台灣大】0909697279line ID:shan6226、0909697279歡迎來電預約賞屋！！","櫻城五街",6999,1000,0,12,"3樓/6樓",1,0,1,1,0,1,0,1,1,1,1,0,1,1,1,1,0,1,1,0,0,0,0,0,2);
INSERT INTO `CFA104G5`.`REN_LISTING` VALUES ( 33,4,1,89,"全新完工精稅放未來❤️2房2廳2衛1陽台+平車"," 租金42000包管理費車位B2-186網路第四台   全配家具","寶慶街/精銳FUN未來",42000,0,0,28,"23樓/24樓",2,1,1,1,0,1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,0,0,0,0,2);







-- 5. 房源照片
CREATE TABLE `CFA104G5`.`REN_LISTING_PIC` (
  `LSP_ID` INT NOT NULL AUTO_INCREMENT,
  `LSP_LIS_ID` INT NOT NULL,
  `LSP_PIC` LONGBLOB NULL,
  PRIMARY KEY (`LSP_ID`),
  INDEX `FK_LIS_ID` (`LSP_LIS_ID` ASC) VISIBLE, 
  CONSTRAINT `FK_REN_LISTING_PIC_LSP_LIS_ID`
    FOREIGN KEY (`LSP_LIS_ID`)
    REFERENCES `CFA104G5`.`REN_LISTING` (`LIS_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE);

INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(1,1,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(2,2,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(3,3,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(4,4,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(5,5,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(6,6,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(7,7,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(8,8,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(9,9,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(10,10,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(11,11,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(12,12,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(13,13,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(14,14,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(15,15,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(16,16,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(17,17,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(18,18,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(19,19,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(20,20,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(21,21,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(22,22,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(23,23,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(24,24,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(25,25,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(26,26,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(27,27,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(28,28,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(29,29,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(30,30,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(31,31,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(32,32,null);
INSERT INTO `CFA104G5`.`REN_LISTING_PIC` VALUES(33,33,null);


-- 6. 預約訂單
CREATE TABLE `CFA104G5`.`REN_APPOINTMENT` (
  `APT_ID` INT NOT NULL AUTO_INCREMENT,
  `APT_MEM_ID` INT NOT NULL,
  `APT_LDD_ID` INT NOT NULL,
  `APT_LIS_ID` INT NOT NULL,
  `APT_STATUS` TINYINT(1) NOT NULL,
  `APT_TIME` DATETIME NOT NULL,
  `APT_TIMESTAMP` DATETIME NOT NULL,
  PRIMARY KEY (`APT_ID`),
  INDEX `FK_MEM_ID` (`APT_MEM_ID` ASC) VISIBLE,
  INDEX `FK_LDD_ID` (`APT_LDD_ID` ASC) VISIBLE,
  INDEX `FK_LIS_ID` (`APT_LIS_ID` ASC) VISIBLE,
  CONSTRAINT `FK_REN_APPOINTMENT_APT_MEM_ID`
    FOREIGN KEY (`APT_MEM_ID`)
    REFERENCES `CFA104G5`.`MEMBER` (`MEM_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE,
  CONSTRAINT `FK_REN_APPOINTMENT_APT_LDD_ID`
    FOREIGN KEY (`APT_LDD_ID`)
    REFERENCES `CFA104G5`.`REN_LANDLORD` (`LDD_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE,
  CONSTRAINT `FK_REN_APPOINTMENT_APT_LIS_ID`
    FOREIGN KEY (`APT_LIS_ID`)
    REFERENCES `CFA104G5`.`REN_LISTING` (`LIS_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE);

INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('1', '7', '4', '31', '0', '2022-01-01 14:00:00', '2021-12-31 11:30:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('2', '7', '2', '27', '3', '2022-01-12 19:00:00', '2022-01-09 19:36:49');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('3', '10', 1, '26', '2', '2022-02-03 12:30:00', '2022-01-30 21:03:27');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('4', '14', 5, '19', '1', '2022-02-14 18:00:00', '2022-02-12 08:50:22');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('5', '15', 3, '18', '1', '2022-03-04 20:30:00', '2022-02-13 17:10:33');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('6', '1', '1', '26', '0', '2022-01-04 12:30:00', '2022-02-14 18:00:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('7', '2', '2', '27', '0', '2022-03-04 20:30:00', '2022-01-04 12:30:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('8', '3', '3', '1', '0', '2022-01-13 20:45:00', '2022-02-24 10:30:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('9', '1', '2', '11', '1', '2022-03-04 20:30:00', '2022-02-24 10:30:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('10', '2', '3', '6', '1', '2022-04-04 09:00:00', '2022-01-13 20:45:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('11', '3', '5', '8', '1', '2022-02-24 10:30:00', '2022-02-14 18:00:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('12', '1', '2', '5', '2', '2022-02-28 13:00:00', '2022-02-09 22:00:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('13', '2', '5', '14', '2', '2022-03-14 15:30:00', '2022-02-11 22:00:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('14', '3', '5', '9', '2', '2022-09-09 12:30:00', '2022-02-10 22:00:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('15', '1', '2', '3', '3', '2021-12-31 21:00:00', '2022-02-12 22:00:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('16', '2', '3', '2', '3', '2022-02-12 22:00:00', '2021-12-30 11:00:00');
INSERT INTO `CFA104G5`.`REN_APPOINTMENT` (`APT_ID`, `APT_MEM_ID`, `APT_LDD_ID`, `APT_LIS_ID`, `APT_STATUS`, `APT_TIME`, `APT_TIMESTAMP`) VALUES ('17', '3', '5', '17', '3', '2022-02-22 16:30:00', '2021-12-31 21:00:00');


-- 7. 租賃訂單
CREATE TABLE `CFA104G5`.`REN_LEASE` (
  `LSE_ID` INT NOT NULL AUTO_INCREMENT,
  `LSE_MEM_ID` INT NOT NULL,
  `LSE_LIS_ID` INT NOT NULL,
  `LSE_LDD_ID` INT NOT NULL,
`LSE_LEASEMEMID` INT NOT NULL,
 `LSE_PRICE` INT NOT NULL ,
  `LSE_START` DATE NOT NULL,
  `LSE_END` DATE NOT NULL,
`LSE_PIC` LONGBLOB NULL,
  `LSE_STATUS` TINYINT(1) NULL ,
  `LSE_TIMESTAMP` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (`LSE_ID`),
  INDEX `FK_MEM_ID` (`LSE_MEM_ID` ASC) VISIBLE,
  INDEX `FK_LIS_ID` (`LSE_LIS_ID` ASC) VISIBLE,
  INDEX `FK_LDD_ID` (`LSE_LDD_ID` ASC) VISIBLE,
  CONSTRAINT `FK_REN_LEASE_LSE_MEM_ID`
    FOREIGN KEY (`LSE_MEM_ID`)
    REFERENCES `CFA104G5`.`MEMBER` (`MEM_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE, 
 CONSTRAINT `FK_REN_LEASE_LSE_LIS_ID`
    FOREIGN KEY (`LSE_LIS_ID`)
    REFERENCES `CFA104G5`.`REN_LISTING` (`LIS_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE,
CONSTRAINT `FK_REN_LEASE_LSE_LDD_ID`
    FOREIGN KEY (`LSE_LDD_ID`)
    REFERENCES `CFA104G5`.`REN_LANDLORD` (`LDD_ID`)
   ON DELETE RESTRICT  ON UPDATE CASCADE);
    
INSERT INTO `CFA104G5`.`REN_LEASE` VALUES 
(1,7,6,3,1,8500,'2020-12-31','2021-01-01',null,3,'2020-12-22 13:33:32');
INSERT INTO `CFA104G5`.`REN_LEASE` VALUES 
(2,6,11,2,3,12000,'2020-01-01','2022-12-31',null,3,'2019-11-21 13:33:32');
INSERT INTO `CFA104G5`.`REN_LEASE` VALUES 
(3,10,13,4,2,18000,'2022-01-01','2023-12-31',null,0,'2021-12-31 13:33:32');
INSERT INTO `CFA104G5`.`REN_LEASE` VALUES 
(4,14,8,5,12,8000,'2022-01-01','2023-12-31',null,0,'2021-11-01 13:33:32');
INSERT INTO `CFA104G5`.`REN_LEASE` VALUES 
(5,7,12,3,3,6500,'2022-02-01','2023-04-30',null,0,'2022-01-15 12:45:00');


    
-- 8. 租賃合約照片
CREATE TABLE `CFA104G5`.`REN_LEASE_PIC` (
  `LP_ID` INT NOT NULL AUTO_INCREMENT,
  `LP_LEASE_ID` INT NOT NULL,
  `LP_PIC` LONGBLOB NULL,
  PRIMARY KEY (`LP_ID`),
  INDEX `FK_LEASE_ID` (`LP_LEASE_ID` ASC) VISIBLE,
  CONSTRAINT `FK_REN_LEASE_PIC_LP_LEASE_ID`
    FOREIGN KEY (`LP_LEASE_ID`)
    REFERENCES `CFA104G5`.`REN_LEASE` (`LSE_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE);


-- 9. 收藏房源
CREATE TABLE `CFA104G5`.`REN_FAVORITES` (
  `FAV_LIS_ID` INT NOT NULL,
  `FAV_MEM_ID` INT NOT NULL,
  `FAV_ADD_TIME` DATETIME NOT NULL,
  PRIMARY KEY (`FAV_LIS_ID`, `FAV_MEM_ID`),
  INDEX `FK_LIS_ID` (`FAV_LIS_ID` ASC) VISIBLE,
  INDEX `FK_MEM_ID` (`FAV_MEM_ID` ASC) VISIBLE,
  CONSTRAINT `FK_REN_FAVORITES_FAV_LIS_ID`
    FOREIGN KEY (`FAV_LIS_ID`)
    REFERENCES `CFA104G5`.`REN_LISTING` (`LIS_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE,
  CONSTRAINT `FK_REN_FAVORITES_FAV_MEM_ID`
    FOREIGN KEY (`FAV_MEM_ID`)
    REFERENCES `CFA104G5`.`MEMBER` (`MEM_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE);

INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('23', '10', '2021-12-22 13:33:32');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('14', '14', '2022-01-02 15:22:12');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('21', '15', '2022-01-11 22:44:44');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('12', '7', '2022-01-23 07:50:09');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('3', '6', '2022-01-30 01:12:51');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('5', '1', '2021-12-01 01:33:32');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('16', '2', '2021-02-21 13:33:32');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('12', '3', '2022-03-02 13:33:32');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('11', '2', '2021-09-09 13:33:32');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('8', '1', '2021-04-04 13:33:32');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('9', '2', '2021-04-30 13:33:32');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('2', '3', '2022-01-14 13:33:32');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('6', '1', '2021-11-03 13:33:32');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('7', '2', '2021-10-31 13:33:32');
INSERT INTO `CFA104G5`.`REN_FAVORITES` (`FAV_LIS_ID`, `FAV_MEM_ID`, `FAV_ADD_TIME`) VALUES ('8', '3', '2022-02-25 13:33:32');






-- 二手
-- 1. 錢包交易紀錄
CREATE TABLE `CFA104G5`.`SEC_TRAN_RECORD` (
`SH_TRAN_ID` INT NOT NULL AUTO_INCREMENT COMMENT '交易流水編號',
`SH_TRAN_MEM_ID` INT NOT NULL COMMENT '會員ID',
`SH_TRAN_TIME` DATETIME NOT NULL COMMENT '交易時間',
`SH_TRAN_CATEGORY` TINYINT(1) NOT NULL COMMENT '交易類別',
`SH_TRAN_AMOUNT` DECIMAL NOT NULL COMMENT '交易金額',
`SH_TRAN_AP` DECIMAL NOT NULL COMMENT '待付金額',
`SH_TRAN_BAL` DECIMAL NOT NULL COMMENT '錢包可用餘額',
PRIMARY KEY (`SH_TRAN_ID`),
INDEX `FK_SEC_TRAN_RECORD_SH_TRAN_MEM_ID` (`SH_TRAN_MEM_ID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_TRAN_RECORD_SH_TRAN_MEM_ID` 
FOREIGN KEY (`SH_TRAN_MEM_ID`) 
REFERENCES `MEMBER` (`MEM_ID`) 
ON DELETE RESTRICT 
ON UPDATE CASCADE
) 
COMMENT = '錢包交易紀錄';
INSERT INTO `CFA104G5`.`SEC_TRAN_RECORD` VALUES(1,2,"2022/01/27",10,1000,1000,0);
INSERT INTO `CFA104G5`.`SEC_TRAN_RECORD` VALUES(2,10,"2022/01/27",10,1000,1000,0);
INSERT INTO `CFA104G5`.`SEC_TRAN_RECORD` VALUES(3,7,"2022/01/27",10,1000,1000,0);

-- 2. 二手商品類別

CREATE TABLE `CFA104G5`.`SEC_CATEGORY` (
`SH_CATE_ID` INT NOT NULL AUTO_INCREMENT COMMENT '商品分類ID',
`SH_CATE_NAME` VARCHAR(50) NOT NULL COMMENT '商品分類名稱',
PRIMARY KEY (`SH_CATE_ID`)
)
COMMENT = '二手商品類別';

INSERT INTO `CFA104G5`.`SEC_CATEGORY` VALUES(1,"冷氣空調");
INSERT INTO `CFA104G5`.`SEC_CATEGORY` VALUES(2,"生活家電");
INSERT INTO `CFA104G5`.`SEC_CATEGORY` VALUES(3,"廚房家電");
INSERT INTO `CFA104G5`.`SEC_CATEGORY` VALUES(4,"大型家電");
INSERT INTO `CFA104G5`.`SEC_CATEGORY` VALUES(5,"生活百貨");
-- 3. 郵遞區號
CREATE TABLE `CFA104G5`.`SEC_POSTCODE` (
	`SH_POST_CODE` INT NOT NULL COMMENT '郵遞區號',
	`SH_POST_COUNTY` VARCHAR(10) NOT NULL COMMENT '縣市',
	`SH_POST_DIST` VARCHAR(10) NOT NULL COMMENT '地區'
)
COMMENT = '郵遞區號';

INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(100,"臺北市","中正區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(103,"臺北市","大同區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(104,"臺北市","中山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(105,"臺北市","松山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(106,"臺北市","大安區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(108,"臺北市","萬華區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(110,"臺北市","信義區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(111,"臺北市","士林區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(112,"臺北市","北投區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(114,"臺北市","內湖區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(115,"臺北市","南港區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(116,"臺北市","文山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(200,"基隆市","仁愛區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(201,"基隆市","信義區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(202,"基隆市","中正區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(203,"基隆市","中山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(204,"基隆市","安樂區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(205,"基隆市","暖暖區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(206,"基隆市","七堵區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(207,"新北市","萬里區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(208,"新北市","金山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(220,"新北市","板橋區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(221,"新北市","汐止區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(222,"新北市","深坑區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(223,"新北市","石碇區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(224,"新北市","瑞芳區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(226,"新北市","平溪區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(227,"新北市","雙溪區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(228,"新北市","貢寮區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(231,"新北市","新店區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(232,"新北市","坪林區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(233,"新北市","烏來區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(234,"新北市","永和區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(235,"新北市","中和區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(236,"新北市","土城區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(237,"新北市","三峽區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(238,"新北市","樹林區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(239,"新北市","鶯歌區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(241,"新北市","三重區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(242,"新北市","新莊區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(243,"新北市","泰山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(244,"新北市","林口區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(247,"新北市","蘆洲區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(248,"新北市","五股區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(249,"新北市","八里區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(251,"新北市","淡水區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(252,"新北市","三芝區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(253,"新北市","石門區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(260,"宜蘭縣","宜蘭市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(261,"宜蘭縣","頭城鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(262,"宜蘭縣","礁溪鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(263,"宜蘭縣","壯圍鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(264,"宜蘭縣","員山鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(265,"宜蘭縣","羅東鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(266,"宜蘭縣","三星鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(267,"宜蘭縣","大同鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(268,"宜蘭縣","五結鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(269,"宜蘭縣","冬山鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(270,"宜蘭縣","蘇澳鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(272,"宜蘭縣","南澳鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(290,"宜蘭縣","釣魚臺列嶼");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(300,"新竹市","東區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(300,"新竹市","北區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(300,"新竹市","香山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(302,"新竹縣","竹北市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(303,"新竹縣","湖口鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(304,"新竹縣","新豐鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(305,"新竹縣","新埔鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(306,"新竹縣","關西鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(307,"新竹縣","芎林鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(308,"新竹縣","寶山鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(310,"新竹縣","竹東鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(311,"新竹縣","五峰鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(312,"新竹縣","橫山鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(313,"新竹縣","尖石鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(314,"新竹縣","北埔鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(315,"新竹縣","峨眉鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(320,"桃園市","中壢區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(324,"桃園市","平鎮區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(325,"桃園市","龍潭區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(326,"桃園市","楊梅區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(327,"桃園市","新屋區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(328,"桃園市","觀音區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(330,"桃園市","桃園區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(333,"桃園市","龜山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(334,"桃園市","八德區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(335,"桃園市","大溪區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(336,"桃園市","復興區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(337,"桃園市","大園區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(338,"桃園市","蘆竹區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(350,"苗栗縣","竹南鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(351,"苗栗縣","頭份市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(352,"苗栗縣","三灣鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(353,"苗栗縣","南庄鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(354,"苗栗縣","獅潭鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(356,"苗栗縣","後龍鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(357,"苗栗縣","通霄鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(358,"苗栗縣","苑裡鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(360,"苗栗縣","苗栗市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(361,"苗栗縣","造橋鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(362,"苗栗縣","頭屋鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(363,"苗栗縣","公館鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(364,"苗栗縣","大湖鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(365,"苗栗縣","泰安鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(366,"苗栗縣","銅鑼鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(367,"苗栗縣","三義鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(368,"苗栗縣","西湖鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(369,"苗栗縣","卓蘭鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(400,"臺中市","中區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(401,"臺中市","東區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(402,"臺中市","南區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(403,"臺中市","西區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(404,"臺中市","北區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(406,"臺中市","北屯區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(407,"臺中市","西屯區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(408,"臺中市","南屯區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(411,"臺中市","太平區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(412,"臺中市","大里區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(413,"臺中市","霧峰區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(414,"臺中市","烏日區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(420,"臺中市","豐原區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(421,"臺中市","后里區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(422,"臺中市","石岡區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(423,"臺中市","東勢區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(424,"臺中市","和平區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(426,"臺中市","新社區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(427,"臺中市","潭子區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(428,"臺中市","大雅區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(429,"臺中市","神岡區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(432,"臺中市","大肚區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(433,"臺中市","沙鹿區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(434,"臺中市","龍井區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(435,"臺中市","梧棲區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(436,"臺中市","清水區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(437,"臺中市","大甲區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(438,"臺中市","外埔區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(439,"臺中市","大安區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(500,"彰化縣","彰化市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(502,"彰化縣","芬園鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(503,"彰化縣","花壇鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(504,"彰化縣","秀水鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(505,"彰化縣","鹿港鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(506,"彰化縣","福興鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(507,"彰化縣","線西鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(508,"彰化縣","和美鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(509,"彰化縣","伸港鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(510,"彰化縣","員林市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(511,"彰化縣","社頭鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(512,"彰化縣","永靖鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(513,"彰化縣","埔心鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(514,"彰化縣","溪湖鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(515,"彰化縣","大村鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(516,"彰化縣","埔鹽鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(520,"彰化縣","田中鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(521,"彰化縣","北斗鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(522,"彰化縣","田尾鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(523,"彰化縣","埤頭鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(524,"彰化縣","溪州鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(525,"彰化縣","竹塘鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(526,"彰化縣","二林鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(527,"彰化縣","大城鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(528,"彰化縣","芳苑鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(530,"彰化縣","二水鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(540,"南投縣","南投市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(541,"南投縣","中寮鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(542,"南投縣","草屯鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(544,"南投縣","國姓鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(545,"南投縣","埔里鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(546,"南投縣","仁愛鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(551,"南投縣","名間鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(552,"南投縣","集集鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(553,"南投縣","水里鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(555,"南投縣","魚池鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(556,"南投縣","信義鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(557,"南投縣","竹山鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(558,"南投縣","鹿谷鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(600,"嘉義市","東區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(600,"嘉義市","西區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(602,"嘉義縣","番路鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(603,"嘉義縣","梅山鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(604,"嘉義縣","竹崎鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(605,"嘉義縣","阿里山");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(606,"嘉義縣","中埔鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(607,"嘉義縣","大埔鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(608,"嘉義縣","水上鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(611,"嘉義縣","鹿草鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(612,"嘉義縣","太保市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(613,"嘉義縣","朴子市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(614,"嘉義縣","東石鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(615,"嘉義縣","六腳鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(616,"嘉義縣","新港鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(621,"嘉義縣","民雄鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(622,"嘉義縣","大林鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(623,"嘉義縣","溪口鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(624,"嘉義縣","義竹鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(625,"嘉義縣","布袋鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(630,"雲林縣","斗南鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(631,"雲林縣","大埤鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(632,"雲林縣","虎尾鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(633,"雲林縣","土庫鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(634,"雲林縣","褒忠鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(635,"雲林縣","東勢鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(636,"雲林縣","臺西鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(637,"雲林縣","崙背鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(638,"雲林縣","麥寮鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(640,"雲林縣","斗六市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(643,"雲林縣","林內鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(646,"雲林縣","古坑鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(647,"雲林縣","莿桐鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(648,"雲林縣","西螺鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(649,"雲林縣","二崙鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(651,"雲林縣","北港鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(652,"雲林縣","水林鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(653,"雲林縣","口湖鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(654,"雲林縣","四湖鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(655,"雲林縣","元長鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(700,"臺南市","中西區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(701,"臺南市","東區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(702,"臺南市","南區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(704,"臺南市","北區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(708,"臺南市","安平區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(709,"臺南市","安南區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(710,"臺南市","永康區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(711,"臺南市","歸仁區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(712,"臺南市","新化區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(713,"臺南市","左鎮區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(714,"臺南市","玉井區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(715,"臺南市","楠西區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(716,"臺南市","南化區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(717,"臺南市","仁德區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(718,"臺南市","關廟區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(719,"臺南市","龍崎區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(720,"臺南市","官田區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(721,"臺南市","麻豆區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(722,"臺南市","佳里區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(723,"臺南市","西港區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(724,"臺南市","七股區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(725,"臺南市","將軍區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(726,"臺南市","學甲區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(727,"臺南市","北門區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(730,"臺南市","新營區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(731,"臺南市","後壁區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(732,"臺南市","白河區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(733,"臺南市","東山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(734,"臺南市","六甲區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(735,"臺南市","下營區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(736,"臺南市","柳營區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(737,"臺南市","鹽水區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(741,"臺南市","善化區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(742,"臺南市","大內區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(743,"臺南市","山上區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(744,"臺南市","新市區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(745,"臺南市","安定區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(800,"高雄市","新興區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(801,"高雄市","前金區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(802,"高雄市","苓雅區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(803,"高雄市","鹽埕區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(804,"高雄市","鼓山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(805,"高雄市","旗津區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(806,"高雄市","前鎮區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(807,"高雄市","三民區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(811,"高雄市","楠梓區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(812,"高雄市","小港區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(813,"高雄市","左營區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(814,"高雄市","仁武區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(815,"高雄市","大社區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(820,"高雄市","岡山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(821,"高雄市","路竹區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(822,"高雄市","阿蓮區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(823,"高雄市","田寮區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(824,"高雄市","燕巢區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(825,"高雄市","橋頭區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(826,"高雄市","梓官區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(827,"高雄市","彌陀區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(828,"高雄市","永安區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(829,"高雄市","湖內區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(830,"高雄市","鳳山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(831,"高雄市","大寮區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(832,"高雄市","林園區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(833,"高雄市","鳥松區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(840,"高雄市","大樹區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(842,"高雄市","旗山區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(843,"高雄市","美濃區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(844,"高雄市","六龜區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(845,"高雄市","內門區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(846,"高雄市","杉林區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(847,"高雄市","甲仙區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(848,"高雄市","桃源區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(849,"高雄市","那瑪夏區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(851,"高雄市","茂林區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(852,"高雄市","茄萣區");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(817,"南海諸島","東沙");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(819,"南海諸島","南沙");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(880,"澎湖縣","馬公市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(881,"澎湖縣","西嶼鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(882,"澎湖縣","望安鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(883,"澎湖縣","七美鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(884,"澎湖縣","白沙鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(885,"澎湖縣","湖西鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(900,"屏東縣","屏東市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(901,"屏東縣","三地門");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(902,"屏東縣","霧臺鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(903,"屏東縣","瑪家鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(904,"屏東縣","九如鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(905,"屏東縣","里港鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(906,"屏東縣","高樹鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(907,"屏東縣","鹽埔鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(908,"屏東縣","長治鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(909,"屏東縣","麟洛鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(911,"屏東縣","竹田鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(912,"屏東縣","內埔鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(913,"屏東縣","萬丹鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(920,"屏東縣","潮州鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(921,"屏東縣","泰武鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(922,"屏東縣","來義鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(923,"屏東縣","萬巒鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(924,"屏東縣","崁頂鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(925,"屏東縣","新埤鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(926,"屏東縣","南州鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(927,"屏東縣","林邊鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(928,"屏東縣","東港鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(929,"屏東縣","琉球鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(931,"屏東縣","佳冬鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(932,"屏東縣","新園鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(940,"屏東縣","枋寮鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(941,"屏東縣","枋山鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(942,"屏東縣","春日鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(943,"屏東縣","獅子鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(944,"屏東縣","車城鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(945,"屏東縣","牡丹鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(946,"屏東縣","恆春鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(947,"屏東縣","滿州鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(950,"臺東縣","臺東市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(951,"臺東縣","綠島鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(952,"臺東縣","蘭嶼鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(953,"臺東縣","延平鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(954,"臺東縣","卑南鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(955,"臺東縣","鹿野鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(956,"臺東縣","關山鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(957,"臺東縣","海端鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(958,"臺東縣","池上鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(959,"臺東縣","東河鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(961,"臺東縣","成功鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(962,"臺東縣","長濱鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(963,"臺東縣","太麻里");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(964,"臺東縣","金峰鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(965,"臺東縣","大武鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(966,"臺東縣","達仁鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(970,"花蓮縣","花蓮市");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(971,"花蓮縣","新城鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(972,"花蓮縣","秀林鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(973,"花蓮縣","吉安鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(974,"花蓮縣","壽豐鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(975,"花蓮縣","鳳林鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(976,"花蓮縣","光復鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(977,"花蓮縣","豐濱鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(978,"花蓮縣","瑞穗鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(979,"花蓮縣","萬榮鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(981,"花蓮縣","玉里鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(982,"花蓮縣","卓溪鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(983,"花蓮縣","富里鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(890,"金門縣","金沙鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(891,"金門縣","金湖鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(892,"金門縣","金寧鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(893,"金門縣","金城鎮");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(894,"金門縣","烈嶼鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(896,"金門縣","烏坵鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(209,"連江縣","南竿鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(210,"連江縣","北竿鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(211,"連江縣","莒光鄉");
INSERT INTO `CFA104G5`.`SEC_POSTCODE` VALUES(212,"連江縣","東引鄉");






-- 4. 二手商品	
CREATE TABLE `CFA104G5`.`SEC_ITEMS` (
`SH_ID` INT NOT NULL AUTO_INCREMENT COMMENT '商品ID',
`SH_CATE_ID` INT NOT NULL COMMENT '商品分類ID',
`SH_SELLERID` INT NOT NULL COMMENT '賣家ID',
`SH_NAME` VARCHAR(100) NOT NULL COMMENT '商品名稱',
`SH_PRICE` INT NOT NULL COMMENT '商品價格',
`SH_QTY` INT NOT NULL COMMENT '商品數量',
`SH_SIZE` VARCHAR(500) COMMENT '商品尺寸',
`SH_DESCRIPTION` VARCHAR(500) COMMENT '商品介紹',
`SH_CONDITION` VARCHAR(100) COMMENT '商品新舊狀況',
`SH_TIME` VARCHAR(20) COMMENT '商品已使用時間',
`SH_GUARANTEE` VARCHAR(20) COMMENT '商品保固',
`SH_STATUS` TINYINT(1) NOT NULL COMMENT '商品狀態',
`SH_COUNTY` VARCHAR(20) COMMENT '商品所在縣市',
`SH_DIST` VARCHAR(20) COMMENT '商品所在鄉鎮區',
PRIMARY KEY (`SH_ID`),
INDEX `FK_SEC_ITEMS_SH_CATE_ID` (`SH_CATE_ID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_ITEMS_SH_CATE_ID` 
FOREIGN KEY (`SH_CATE_ID`) 
REFERENCES `SEC_CATEGORY` (`SH_CATE_ID`) 
ON DELETE RESTRICT 
ON UPDATE CASCADE,
INDEX `FK_SEC_ITEMS_SH_SELLERID` (`SH_SELLERID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_ITEMS_SH_SELLERID` 
FOREIGN KEY (`SH_SELLERID`) 
REFERENCES `MEMBER` (`MEM_ID`) 
ON DELETE RESTRICT 
ON UPDATE CASCADE
)
COMMENT = '二手商品';


INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (1,2,1,"電暖器",1100,1,"16吋",
"有正常使用痕跡但無掉漆或无外觀損傷，功能完全正常，所有配件齊全。可配送",
"九成新","使用2年以內","不提供",1,"新北市","三重區");


INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (2,2,2,"Dyson二合一空氣清淨扇TP07(銀白)",
9000,
1,
"重量4.65公斤 總高度1050mm 長度120mm 寬度204mm",
"有正常使用痕跡但無掉漆或无外觀損傷，功能完全正常，所有配件齊全。
1.根據HEPA標準完全密封
2.捕捉細菌、H1N1病毒與過敏原
3.可淨化99.95%小至PM0.1的污染物",
"九成新","使用1年以內","6個月",1,"新北市","板橋區");



INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (3,2,2,"【ECOVACS 科沃斯】DEEBOT T8超智能掃地機器人(掃拖一體/震動拖地/3D光學避障)",
7000,
1,
"路徑規劃模式：Smart Navi 3.0
弓字型導航：Y
地毯偵測：Y
吸力 Power (Pa)：600/1200/1500
集塵盒容量 (mL)：420
吸口型式：滾刷吸口
浮動滾刷：Y
滾刷規格：鬃刷+膠條
邊刷：雙邊刷
拖地功能：OZMO+OZMO Pro雙套件
水量調整功能：Y
水盒容量 (ml)：普通240/強拖180
App操作介面：Y
App環境建圖功能：多樓層：2+1張地圖
App 地圖互動功能：Y
APP虛擬牆功能：Y
指定清潔區域：Y
OTA線上軟體更新：Y
遙控器：N
語音提示：多國語音
工作排程規劃：Y
低電量自動回充：Y
接續清掃功能：Y
集塵袋：0
邊刷：4
高效濾網：2
可清洗高纖清潔布：1
一次性清潔布：11
產品尺寸 (φxH,mm)：350*93
電池 (Type, mAh)：Li-ion 5200mAH
工作時間(min)：普通180/強拖150
產品重量 (kg)：4.7",
"1.dTof導航，精準快速建圖
2.仿電動牙刷擦地模式，細緻而乾淨
3.微塵級清潔，吸塵率高達93%",
"八成新","使用5個月","無提供",1,"台北市","中正區");

INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (4,3,2,"大同11人份霹靂KITTY不鏽鋼電鍋 TAC-11R-MWKT",1000,2,"1.額定電源： 110V~60Hz 2.總額定消耗電功率： 700W ; 保溫功率：40W 3.11人份電鍋，最大煮飯量(生米)：1.98L 4.不鏽鋼外鍋",
"1.11人份電鍋，百合白色外殼。
2.大同X霹靂X三麗鷗聯名款。 
3.鍋蓋、內鍋、蒸盤均為SUS 304 不鏽鋼。
4.加熱均勻, 保溫開關。
5.雙重被覆電源線，雙重安全保護，接頭殼。
6.煮飯/粥、蒸、滷、燉多用途。
7.使用正常，鍋內有小黑點，消毒口罩請加水，不影響使用。",
"九成新","使用半個月","無保固",1,"桃園市","中壢區");


INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (5,3,2,"Bosch 12人份洗碗機 SMS2ITI06X SMS2ITI06X",10000,2,"1.5種洗程 2.洗滌溫度: 5種 3.加強烘乾 4.預約定時 3/6/9 小時",
"1.容量 1Set台。
2.商品來源國家 波蘭。 
3.功能正常，婆媳問題殺手。",
"八成新","使用半年","一年",1,"台北市","中正區");



INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (6,3,2,"【法國BubbleSoda】全自動氣泡水機-經典白 BS-909(內含機器+60L氣瓶x2+1L水瓶)",
1500,
1,
"商品尺寸：高410 x 寬130 x 深220 (mm)
◆淨重：1.58(±0.2) kg
◆主機產地：中國
◆鋼瓶產地：台灣
◆內容物：氣泡水機*1、專用瓶1L*1、食用級二氧化碳氣瓶*1、產品使用手冊與保證書
◆國際條碼：4710686989099",
"◆法國氣泡水機品牌，時尚外觀設計
◆環保節能、免插電、免電池，用愛守護地球
◆鋼瓶台灣製造，食用級二氧化碳，多國安全認證
◆專利渦流進氣設計(Turbo-Bubbler)，氣泡口感最佳化
◆多閥門設計，延長機器使用壽命，提高氣瓶使用效率
◆一支鋼瓶可打約40~50公升的氣泡水，可製作約120瓶市售汽水(以330ml計算)
◆創新設計，只需按壓一次，氣就會直接充飽，取下前只需把水瓶往外推，即會自動洩壓
◆水瓶重複使用，搭配超密封瓶蓋，氣泡口感更持久
◆健康新鮮又美味，秒變調飲師
◆全新三道洩壓，使用更安全
◆內附鋼瓶2支+專用水瓶1支",
"九成新","二手少用(約使用1個月)轉賣","一年",1,"台北市","信義區");


INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (7,1,2,
"3M 20公升雙效空氣清淨除濕機 FD-Y200L FD-Y200L",18000,1,
"適用空間	4~10.5坪空間
    除濕能力(日)	20公升/每日
    水箱容量	5.1L 大公升水箱,可連續排水
    年耗電量/消耗功率	一年電費259元(3小時/天,運轉180天/年,以1.63元/度 計算)
    能源分級	優於2018新制一級能效標準
    尺寸(寬*深*高)	38.4*65.9*28.3cm",
"除濕能力:20公升/日
2018年新制能源效率1級
智慧多工多樣模式設定
強效除濕高效清淨",
"九成新","使用半個月","一年",1,"新北市","板橋區");


INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (8,1,2,
"HONEYWELL 5250 智感空氣清淨機 HPA5250WTW",5000,1,
"型號 : HPA5250WTW


CADR : 235 CFM / 400 CMH


適用坪數: 10~20坪


額定電壓頻率 : 110V,60HZ


風速模式 : 4段 (低速、中速、高速、強力模式)


耗材: 前置濾網 HRF-APP1  (更換頻率:3個月)


強效淨味濾網 (另購)  : HRF-SS1(煙霧)、HRF-SC1(家居裝修)、HRF-SK1(廚房)、HRF-SP1(寵物)  (更換頻率:3個月)


H13醫療級HEPA濾網 : HRF-R1   (更換頻率:12個月)


定時 : 2、4、8時


空氣品質監測: 有、(紅黃綠3段)


濾網更換指示 : 有


分貝數 : 38-60 dBA


製造國 : 中國


保證期 : 馬達五年，其他零件一年


商品尺寸(mm) : 454x255x482mm


包裝尺寸(mm) : 536x333x576mm


商品淨重(g) : 7380g


商品毛重(g) : 10600g",
"◆ InSightTM智感透視面板科技 空氣資訊一目瞭然
智感透視面版科技，不僅能主動調整清淨強度，更以三色燈號快速反應即時空氣品質，讓你一眼掌握空氣資訊，使用更安心！
◆ 醫師最推薦 美國過敏專科醫生No.1推薦Honeywell累積25年研發及製造空氣清淨機的技術，在美國，近70%的過敏專科醫師推薦使用Honeywell空氣清淨機。
◆ 抗敏最有感Honeywell H13醫療等級HEPA濾網，針對塵蟎、灰塵、皮屑、毛髮、花粉等過敏原可99.97%淨化效果。HEPA濾材常用於醫院開刀房和實驗室等極須潔淨空氣之場所，亦可解決居家空氣汙染問題。
◆ 超高效能　1小時可淨化5次　CADR數值越高，代表每分鐘可釋出的潔淨空氣量越多。在最小建議使用坪數下，可達每小時換更新室內空氣5次。
◆ 淨化效能通過 Intertek 與 SGS測試，可濾除99.9%特定黴菌、真菌；95.6%特定細菌及PM2.5；99.0%甲醛及尼古丁。
◆ 4款客製濾網（另購）針對寵物、廚房、新居、煙霧四種特殊需求的強效淨味濾網。",
"八成新","使用3個月","一年",1,"台北市","信義區");


INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (9,1,2,
"伊萊克斯高效抗菌空氣清淨機 PA91-606DG",11000,1,
"型號:PA91-606DG
顏色:沈穩黑
CADR/煙霧(AHAM):620 m3/h
氣流量:80-601m3/h
適用空間:15-22坪
消耗功率:40W
過濾效能:前置濾網、抗菌層、HEPA 13級濾網、活性碳層、負離子
抗菌率)99.99%
空氣中細菌濃度去除率)99.9%:
懸浮微粒PM2.5去除率)99.9%
懸浮微粒PM10去除率:)99.9%
總揮發性有機化合物去除率)99.9%
甲醛去除率)99.9%
低噪音設計:16-49 dB(A)
淨重:8.9kg
產品尺寸(WXDXH):315X315X750mm",
"620CADR超高換氣效率
22坪空間12分鐘可完全淨化
360度HEPA13級抗菌濾網
5層過濾99.99%以上抗菌力
獨家五角設計
最低音量僅16分貝
APP掌控室內外空氣品質
SGS台灣權威機構認證
內建夜間睡眠模式",
"九成新","一年","無提供",1,"台北市","信義區");





INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (10,4,2,
"LG styler 蒸氣電子衣櫥 E523MR",30000,1,
"基本規格
顏色 : 鏡面
設計 : 奢華鏡面門
面板 : 觸控式
尺寸 (寬 x 高 x 深) (公分) : 44.5 x 185 x 58.5 cm
全機重量 (公斤) : 83kg
容量 : 衣物 x3、褲子x1 (衣架總承重 5.2kg)",
"清新除臭
蒸氣殺菌
溫和烘乾
褲線管理
室內除濕
WiFi遠控
護理衣物每日如新
難聞的氣味、有害污染物質、溼答答、皺褶、換季衣服以及很難清洗的衣物。在您家中迅速、輕鬆有效率地護理衣物。",
"九成新","使用半個月","一年",1,"新北市","樹林區");


INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (11,4,2,
"LG 2.5KG MINI變頻洗衣機-銀 WT-D250HV",9000,1,
"洗衣機類型
3 motion 直立式
洗衣容量2.5(公斤)
色彩
銀
電壓(V)110
頻率(Hz)60
可變轉速(PPM)
Yes
筒槽材質
一體成型不鏽鋼抗菌洗衣內槽
機體 (寬 x 高 x 深)
686 x 359 x 781mm",
"2.5公斤洗衣容量：60°加熱衛生洗
貼身衣物單獨洗：衛生、省水、省時
3 MOTION 模擬媽媽手洗動作：更潔淨、更護衣
直驅變頻馬達：強力洗淨10年保固
IOT手機遠端行程設定：監看洗衣時間
",
"八成新","使用一年","無提供",1,"新北市","樹林區");







INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (12,4,2,
"Whirlpool 16KG瓦斯型排風式滾筒乾衣機 8TWGD8620HW",30000,1,
"基本規格
容量	16kg
電源	120V/60Hz
額定消耗電功率	630W
尺寸 (寬x高x深)	686 x 968 x 787mm
重量 (kg)	69kg
產地	美國原裝進口",
"99.9%有效殺菌
排風式乾衣清除異味
**附贈烘鞋架**
",
"九成新","使用8個月","6個月",1,"新北市","板橋區");

INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (13,5,2,
"DA指南針28吋鋁框行李箱-拉絲紅 DA-A17041-28",3000,1,
"28吋 拉絲紅 ",
"◎美國Discovery Adventures原廠授權
◎兩段式鋁合金拉桿
◎360°大尺寸靜音飛機輪
◎海關密碼鎖
◎油壓把手
◎訂製裡布
◎優質五金配件
◎鋁框設計，時尚高雅
",
"八成新","使用半年","無提供",1,"新北市","樹林區");

INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (14,5,2,
"RC 水流護角26吋拉鏈行李箱-墨綠 RC-A28124-26",5000,1,
"26吋 360°大尺寸靜音飛機輪 ",
"◎兩段式鋁合金拉桿
◎360°大尺寸靜音飛機輪
◎海關密碼鎖
◎訂製裡布
◎優質五金配件
◎防爆拉鍊設計",
"九成新","尚未拆封，想轉售","無提供",1,"台北市","信義區");



INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES (15,5,2,
"FOODSAVER 真空保鮮機 FM2110",1000,1,
"◎商品尺寸(HxDxW)：L412.9 x W233.3 x H102.3mm ◎商品毛重(約)：3.0kg
◎電源：110V / 60Hz
◎消耗功率：120W
◎品牌國別：美國
◎製造國：中國 ",
"◎透過真空封存，能延長長達５倍的賞味期限，有效留住最佳口感、色澤和營養成份。
◎真空狀態下，食物表面氣孔擴張，可加速醬料吸收，不到20分鐘即充分入味。
◎善用FoodSaver真空保鮮機及全系列真空袋/盒/罐配件管理冷藏和冷凍食物，省空間、更節電",
"九成新","使用一年","無提供",1,"台北市","信義區");

INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(16,4, 2, 'TECO 東元101公升雙門冰箱R1011W', 5600, 1, '高835X寬470X深570(mm)', '■ 能源效率一級
■ 除霜溫控，可製冰
■ 三段式溫度調節
■ 蔬果保鮮抽屜
■ 隱藏式把手
■ 玻璃盤架
■ 置物門欄
■ 防火背材
■ 環保R600a冷媒
■ 機體尺寸：高835X寬470X深570(mm)
■ 全機1年保固；重要零件，壓縮機、冷媒系統3年保固', '二手', '一年', '零件，壓縮機、冷媒系統還剩2年保固', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(17,4, 2, 'LG 樂金630L敲敲看門中門冰箱GR-QL66MB', 65000, 1, '高1785X寬912X深747(mm)', '"超質感夜墨黑瞬間變豪宅
淺版設計, 完美搭配櫥櫃深度
業界首創敲敲看門中門, 節省41%冷流流失, 保鮮更省電
同級冰箱最大冷凍空間224L
空間完整, 無零碎隔間, 食材儲存不費力
領先業界, 直驅變頻壓縮機溫控更精準, 延長7天保鮮
創新魔術保鮮蓋, 晶格紋設計，鎖住蔬果水分, 保鮮不脫水
強化玻璃層架, 耐重150kg, 防刮耐用好清潔
壓縮機10年保固
"', '二手', '一年', '全機九年', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(18,4, 2, '【SANLUX 台灣三洋】87L 一級能效雙門小冰箱 （SR-C90B1）', 3000, 1, '寬520mm × 深485mm × 高850mm', '"能效一級。
四星級冷凍能力。
R600a環保新冷媒。
防火背板設計。
7段溫度調整。
保鮮果菜盒。"', '二手', '兩年', '重要零件一年', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(19,1, 2, 'TECO東元4-5坪《變頻冷專》一對一R32變頻分離式空調MS28IC-ZRS/MA28IC-ZRS', 13650, 1, '"室內機型號：MS28IC-ZRS
尺寸(高x寬x深)：292 x 792 x 201 mm
重量 8kg

室外機型號：MA28IC-ZRS
尺寸(高x寬x深)：545 x 730 x 285 mm
重量 27kg"', '"能源效率第1級
■ 適用坪數：4-5
■ 冷房能力：2.9kW
■ R32新式冷媒

■ 自清淨功能
■ 基板防潮防蟲防塵
■ 藍波防鏽
■ 關機防霉
■ 速冷/速暖
■ 靜音舒眠/除濕"', '二手', '1年', '全機7年保固，壓縮機10年保固', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(20,1, 2, 'LG樂金 經典系列 變頻冷暖分離式空調LSU36IHP/LSN36IHP', 27600, 1, '"尺寸：室內機998*345*210(mm)
尺寸：室外機863*545*353(mm)"', '"★適用坪數：6-7
★冷房能力：3.5kW
★暖房能力：3.9W
★CSPF能源效率第1級
■ 雙迴轉變頻壓縮機 節能省電高效率
■ 內建WiFi遠控
■ 強勁冷流
■ 智慧節能模式
■ 抗鏽蝕金散熱片
■ 低噪音"', '二手', '2年', '壓縮機10年，主機板7年，全機3年', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(21,1, 2, 'DAIKIN大金 12坪大關U系列變頻冷暖冷氣 RXV71UVLT/FTXV71UVLT', 55000, 1, '"室內機型號：FTXV71UVLT
室內機重量：13 ㎏
室內機尺寸：高295 × 寬990 × 深266 ㎜
室外機型號：RXV71UVLT
室外機重量：55 ㎏
室外機尺寸：高695 × 寬930 × 深350 ㎜"', '"◆  含運+標準安裝+舊機回收(偏遠地區另計)
◆ 標準適用12坪
◆ 冷氣能力：冷7.2kW、暖8.0kW
◆ 溫、濕智慧雙控技術
◆ 超廣角出風口
◆ 3D立體氣流"', '二手', '6個月', '全機保固7年，壓縮機保固10 年', 1,'新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(22,5, 2, 'DA工具箱28吋鋁框行李箱-磨砂黑 DA-A18046-28', 5000, 1, '78x52x32cm', '"◎美國Discovery Adventures原廠授權
◎兩段式鋁合金拉桿
◎360°大尺寸靜音飛機輪
◎海關密碼鎖
◎油壓把手
◎訂製裡布
◎優質五金配件，五年保固
◎鋁框設計，時尚高雅"', '二手', '2個月', '五年保固', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(23,5, 2, 'VERMICULAR石頭色琺瑯鑄鐵鍋22CM 0370122ST', 6000, 1, '22cm 4.2kg 3.5L', '"◎世界首屈一指密合度，鍋蓋與鍋身低於0.01mm完美接合
◎是一款能做完美無水料理的鍋
◎不挑熱源，可使用瓦斯、IH爐、電磁爐、黑晶爐與烤箱
◎琺瑯釋放遠紅外線
◎傳遞熱能使食材內外平均受熱，引出食材的美味
◎有效保留營養成分，營養素更有效的被攝取
◎日本匠心職人技術，貼心人體工學之雙手把設計
◎持食的安全與環境保護：無添加鎘、鉛與錳"', '二手', '半年', '無', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(24,5, 2, '大/吸水止滑【輕地墊】太空灰 M3236L-B', 350, 1, '60x120cm', '超細纖維面料', '全新', '無', '無', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(25,2, 2, 'dyson 清淨氣流倍增器白', 20000, 1, '1054x233mm', '"◎無懼PM2.5 淨化 99.95％ 小至 PM0.1 的有害細懸浮微粒
◎同時 Air Multiplier™ 氣流倍增技術有效循環室內空氣
◎多三倍活性碳以捕捉有害微粒"', '二手', '3個月', '一年', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(26,2, 2, 'Dyson V11 SV15 Fluffy Extra 無線吸塵器', 23000, 1, '1286x250x261mm', '"◎配備Dyson Hyperdymium™馬達，吸力強勁
◎LCD螢幕即時報告
◎可更換電池設計適合更長時間清潔74
◎適用於硬質地板，配備軟質碳纖維滾筒吸頭"', '全新', '無', '一年', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(27,2, 2, '北方恆溫電暖爐 11葉片', 4000, 1, '64×16×60cm', '"◆採用0.6mm厚度鋼板：
堅固耐用，保溫效果長，節能省電
◆葉片寬度16cm/高度60cm：
表面積越大，暖房速度越快
◆每葉片使用6條對流管，11葉片共66條：
對流數量越多，暖房速度更快
◆恆溫、舒適、無噪音
◆密閉式加熱管不耗氧、不乾燥
◆永遠不須更換或添加熱油
◆適合長時間及睡眠時使用
◆均勻提升整體室內溫度
◆附贈衣物烘乾架組可協助烘乾衣服、鞋襪
◆附贈平衡濕度水盒"', '全新', '無', '一年', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(28,3, 2, '422 AIR FRYER AF13L 氣炸烤箱(白色)', 7000, 1, '32.9x38x32.6cm', '"■機身、烤箱內部不鏽鋼
■360度旋轉功能
■13L超大容量
■超大顯示屏
■無鐵氟龍噴漆
■液晶顯示螢幕"', '全新', '無', '一年', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(29,3, 2, '晶工11.9L冰溫熱開飲機', 5000, 1, '395 x 390 x 575 mm', '"◎經濟部能源局，能源效率標示，本產品能源效率為第3級。
◎智慧型微電腦控制，光感應依照環境光源自動判斷進入休眠模式，節省能源。
◎高科技環保電子式製冷系統，每小時可製造１３℃以下冰水達１公升。
◎感應式，自動提醒更換濾心燈號顯示。
◎德國科技無鈉離子濾心，除氯、除重金屬、除水垢。
◎無水自動閃爍〝加生水警示燈〞、停止加熱，防止熱膽空燒。
◎全自動雙止水電磁閥專利設計，完全隔離生水。
◎無水自動斷電、有水自動復電。
◎五大安全保護裝置設計。主動提醒保養與安檢。"', '二手', '五個月', '一年', 1, '新北市', '板橋區');
INSERT INTO `CFA104G5`.`SEC_ITEMS` VALUES
(30,3, 2, '象印10人份IH厚釜電子',490, 1, '28x38x23.5cm', '"◎黑金剛內鍋1.7mm
◎內釜直接發熱的IH加熱方式
◎營養豐富的活性糙米炊煮功能
◎尺寸(CM):28x38x23.5
◎重量(KG):4.9
◎滿水量(容量):10人份
◎額定電量:1350W
◎保溫時平均耗電量:38W
◎請使用專用內鍋"', '全新', '無', '一年', 1, '新北市', '板橋區');




-- 5. 二手購物訂單
CREATE TABLE `CFA104G5`.`SEC_ORD` (
`SH_ORD_ID` INT NOT NULL AUTO_INCREMENT COMMENT '訂單ID',
`SH_BUYERID` INT NOT NULL COMMENT '買家ID',
`SH_SELLERID` INT NOT NULL COMMENT '賣家ID',
`SH_POSTCODE` INT NOT NULL COMMENT '收件地址郵遞區號',
`SH_COUNTY` VARCHAR(20) NOT NULL COMMENT '收件地址縣市',
`SH_DIST` VARCHAR(20) NOT NULL COMMENT '收件地址鄉鎮區',
`SH_ROAD` VARCHAR(100) NOT NULL COMMENT '收件地址路街弄等',
`SH_PAYMENT` TINYINT(2) NOT NULL COMMENT '付款方式',
`SH_ORD_STATUS` TINYINT(1) NOT NULL COMMENT '訂單狀態',
`SH_PRICE` DECIMAL NOT NULL COMMENT '訂單金額',
`SH_DATE` DATETIME NOT NULL COMMENT '訂單日期',
`SH_BUYER_SCORE` TINYINT(1) COMMENT '賣家評價買家星數',
`SH_BUYER_TXT` VARCHAR(200) COMMENT '賣家評價買家內容',
`SH_SELLER_SCORE` TINYINT(1) COMMENT '買家評價賣家星數',
`SH_SELLER_TXT` VARCHAR(200) COMMENT '買家評價賣家內容',
`SH_APPDATE` DATETIME COMMENT '撥款日期',
`SH_NOTES` VARCHAR(200) COMMENT '買家備註',
`SH_RECIP_NAME` VARCHAR(20) COMMENT '收件人姓名',
`SH_RECIP_PHONE` VARCHAR(10) COMMENT '收件人電話',

PRIMARY KEY (`SH_ORD_ID`),
INDEX `FK_SEC_ORD_SH_BUYERID` (`SH_BUYERID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_ORD_SH_BUYERID` 
FOREIGN KEY (`SH_BUYERID`) 
REFERENCES `MEMBER` (`MEM_ID`)
ON DELETE RESTRICT 
ON UPDATE CASCADE,
INDEX `FK_SEC_ORD_SH_SELLERID` (`SH_SELLERID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_ORD_SH_SELLERID` 
FOREIGN KEY (`SH_SELLERID`) 
REFERENCES `MEMBER` (`MEM_ID`) 
ON DELETE RESTRICT 
ON UPDATE CASCADE
)
COMMENT = '二手購物訂單';

INSERT INTO `CFA104G5`.`SEC_ORD` VALUES 
(1,1,2,320,"桃園市","中壢區","三芝里苗米路168號",
11,3,1100,'2022-01-01',null,null,null,null,null,null,"蔡殷文","0913456789");
INSERT INTO `CFA104G5`.`SEC_ORD` VALUES 
(2,2,1,220,"新北市","板橋區","伊比里椏芽路94號7樓1號",
12,3,1000,'2022-02-01',null,null,null,null,null,null,"誠實中","0987654321");
INSERT INTO `CFA104G5`.`SEC_ORD` VALUES 
(3,2,1,220,"新北市","板橋區","伊比里椏芽路94號7樓1號",
11,3,18000,'2022-03-01',null,null,null,null,null,null,"蘇蓁菖","0933456789");
INSERT INTO `CFA104G5`.`SEC_ORD` VALUES 
(4,2,1,220,"新北市","板橋區","伊比里椏芽路94號7樓1號",
12,7,11000,'2022-03-02',null,null,null,null,null,null,"柯聞懾","0976439160");



-- 6. 商品圖片
CREATE TABLE `CFA104G5`.`SEC_PICS` (
`SH_PIC_ID` INT NOT NULL AUTO_INCREMENT COMMENT '圖片編號',
`SH_ID` INT NOT NULL COMMENT '商品ID',
`SH_PIC` LONGBLOB COMMENT '商品圖片',
PRIMARY KEY (`SH_PIC_ID`),
INDEX `FK_SEC_PICS_SH_ID` (`SH_ID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_PICS_SH_ID` 
FOREIGN KEY (`SH_ID`) 
REFERENCES SEC_ITEMS (`SH_ID`) 
ON DELETE RESTRICT 
ON UPDATE CASCADE
)
COMMENT = '商品圖片';

INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(1,1,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(2,2,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(3,3,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(4,4,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(5,5,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(6,6,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(7,7,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(8,8,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(9,9,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(10,10,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(11,11,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(12,12,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(13,13,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(14,14,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(15,15,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(16,16,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(17,17,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(18,18,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(19,19,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(20,20,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(21,21,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(22,22,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(23,23,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(24,24,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(25,25,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(26,26,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(27,27,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(28,28,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(29,29,null);
INSERT INTO `CFA104G5`.`SEC_PICS` VALUES(30,30,null);







-- 7. 二手購物訂單明細
CREATE TABLE `CFA104G5`.`SEC_ORD_DETAILS` (
`SH_ORD_ID` INT NOT NULL COMMENT '訂單ID',
`SH_ID` INT NOT NULL COMMENT '商品ID',
`SH_NAME` VARCHAR(100) NOT NULL COMMENT '商品名稱',
`SH_PRICE` INT NOT NULL COMMENT '商品價格',
`SH_QTY` INT NOT NULL COMMENT '購買數量',
PRIMARY KEY (`SH_ORD_ID`,`SH_ID`),
INDEX `FK_SEC_ORD_DETAILS_SH_ORD_ID` (`SH_ORD_ID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_ORD_DETAILS_SH_ORD_ID` 
FOREIGN KEY (`SH_ORD_ID`) 
REFERENCES SEC_ORD (`SH_ORD_ID`) 
ON DELETE RESTRICT 
ON UPDATE CASCADE,
INDEX `FK_SEC_ORD_DETAILS_SH_ID` (`SH_ID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_ORD_DETAILS_SH_ID` 
FOREIGN KEY (`SH_ID`) 
REFERENCES SEC_ITEMS (`SH_ID`) 
ON DELETE RESTRICT 
ON UPDATE CASCADE
)
COMMENT = '二手購物訂單明細';

INSERT INTO `CFA104G5`.`SEC_ORD_DETAILS` VALUES
(1,1,"電暖器",1100,1);
INSERT INTO `CFA104G5`.`SEC_ORD_DETAILS` VALUES
(2,4,"大同11人份霹靂KITTY不鏽鋼電鍋 TAC-11R-MWKT",1000,1);
INSERT INTO `CFA104G5`.`SEC_ORD_DETAILS` VALUES
(3,7,"3M 20公升雙效空氣清淨除濕機 FD-Y200L FD-Y200L",18000,1);
INSERT INTO `CFA104G5`.`SEC_ORD_DETAILS` VALUES
(4,9,"伊萊克斯高效抗菌空氣清淨機 PA91-606DG",11000,1);





-- 8. 二手申請退款
CREATE TABLE `CFA104G5`.`SEC_REFUND` (
`SH_REF_ID` INT NOT NULL AUTO_INCREMENT COMMENT '退款單ID',
`SH_ORD_ID` INT NOT NULL COMMENT '訂單ID',
`SH_REF_CONTENT` VARCHAR(100) NOT NULL COMMENT '退款填寫內容',
`SH_REF_APPLYDATE` DATETIME NOT NULL COMMENT '申請日期',
`SH_REF_STATUS` TINYINT(1) NOT NULL COMMENT '退款狀態',
PRIMARY KEY (`SH_REF_ID`),
UNIQUE KEY UK_SEC_REFUND_SH_ORD_ID(SH_ORD_ID),
INDEX `FK_SEC_REFUND_SH_ORD_ID` (`SH_ORD_ID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_REFUND_SH_ORD_ID` 
FOREIGN KEY (`SH_ORD_ID`) 
REFERENCES `SEC_ORD` (`SH_ORD_ID`) 
ON DELETE RESTRICT 
ON UPDATE CASCADE
)
COMMENT = '二手申請退款';
INSERT INTO `CFA104G5`.`SEC_REFUND` VALUES(1,2,"壓縮機故障","2022-01-31",1);
INSERT INTO `CFA104G5`.`SEC_REFUND` VALUES(2,1,"電線外露","2022-02-01",2);
INSERT INTO `CFA104G5`.`SEC_REFUND` VALUES(3,3,"機體外箱破損","2022-03-01",0);


-- 9. 收藏商品
CREATE TABLE `CFA104G5`.`SEC_FAV` (
`SH_MEM_ID` INT NOT NULL COMMENT '會員ID',
`SH_ID` INT NOT NULL COMMENT '商品ID',
`SH_ADDFAVTIME` DATETIME NOT NULL COMMENT '加入收藏時間',
PRIMARY KEY (`SH_MEM_ID`,`SH_ID`),
INDEX `FK_SEC_FAV_SH_MEM_ID` (`SH_MEM_ID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_FAV_SH_MEM_ID` 
FOREIGN KEY (`SH_MEM_ID`) 
REFERENCES `MEMBER` (`MEM_ID`) 
ON DELETE RESTRICT 
ON UPDATE CASCADE,
INDEX `FK_SEC_FAV_SH_ID` (`SH_ID` ASC) VISIBLE,
CONSTRAINT `FK_SEC_FAV_SH_ID` 
FOREIGN KEY (`SH_ID`) 
REFERENCES SEC_ITEMS (`SH_ID`) 
ON DELETE RESTRICT 
ON UPDATE CASCADE
)
COMMENT = '收藏商品';

INSERT INTO `CFA104G5`.`SEC_FAV` VALUES(1,2,'2021-01-01');
INSERT INTO `CFA104G5`.`SEC_FAV` VALUES(2,1,'2020-12-25');
INSERT INTO `CFA104G5`.`SEC_FAV` VALUES(2,2,'2020-10-30');
-- 服務
-- 1. 服務類別
CREATE TABLE `SER_CLA` (
  `SER_CLA_ID` int NOT NULL AUTO_INCREMENT COMMENT '服務類別ID',
  `SER_CLA_NAME` varchar(20) NOT NULL COMMENT '類別名稱',
  PRIMARY KEY (`SER_CLA_ID`),
  KEY `IDX_SER_CLA_SER_CLA_ID` (`SER_CLA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='服務類別';


insert  into `SER_CLA`(`SER_CLA_ID`,`SER_CLA_NAME`) values 
(1,'搬家服務'),
(2,'衛浴修繕'),
(3,'油漆施工'),
(4,'水泥工程'),
(5,'木工施工');


-- 2. 廠商資料
CREATE TABLE `SER_VDR` (
  `VDR_ID` int NOT NULL COMMENT '廠商ID',
  `VDR_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '廠商狀態',
  `VDR_NAME` varchar(50)  COMMENT '廠商姓名',
  `VDR_TEL` varchar(20)  COMMENT '廠商電話',
  `VDR_VATNO` varchar(20)  COMMENT '廠商統一編號',
  `VDR_COUNTY` varchar(20)  COMMENT '縣市',
  `VDR_DIST` varchar(20)  COMMENT '地區',
  `VDR_ADDR` varchar(50)  COMMENT '詳細地址',
  `VDR_OPEN` varchar(50)  COMMENT '營業時間',
  `VDR_INTRO` varchar(1000)  COMMENT '廠商簡介',
  `VDR_PIC` longblob COMMENT '廠商圖片',
  `VDR_REV_COUNT` int DEFAULT NULL COMMENT '廠商評價總人數',
  `VDR_REV_SCORE` int DEFAULT NULL COMMENT '廠商評價總星數',
  PRIMARY KEY (`VDR_ID`),
   KEY `FK_VENDER_VDR_ID` (`VDR_ID`),
  CONSTRAINT `FK_SER_VDR_VDR_ID` FOREIGN KEY (`VDR_ID`) REFERENCES `MEMBER` (`MEM_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='廠商資料';

INSERT  INTO `SER_VDR`(`VDR_ID`,`VDR_STATUS`,`VDR_NAME`,`VDR_TEL`,`VDR_VATNO`,`VDR_COUNTY`,`VDR_DIST`,`VDR_ADDR`,`VDR_OPEN`,`VDR_INTRO`,`VDR_PIC`,`VDR_REV_COUNT`,`VDR_REV_SCORE`) values 
(1,1,'集多實業行','0955690342',44324587,'桃園市','龜山區','振興路1188號','8:00-17:00','家庭搬遷服務：套房、公寓、透天或大樓皆可為您進行搬遷服務。',NULL,14,4),
(2,1,'樂福搬家','0911231563',41411169,'新北市','板橋區','光武街110巷18弄32號','8:00-18:00','我們是專業的搬家公司，細心周到、配合度高全程依照客戶需求，以親民價格提供精緻服務。報價包含所有費用，不隨意加價，損壞有理賠，全心全意為您搬好家。',NULL,14,4),
(3,1,'明旺貨運全省回頭車','0911231544',NULL,'台中市','北屯區','北屯路56巷30號','8:00-18:00','在從事搬家業之前有做過職業軍人五年，健身教練，對自己要求很高、紀律嚴謹，喜歡在健身房作重量訓練，突破自己極限、降低身體受傷風險，以此來提高服務品質',NULL,0,0),
(4,1,'立德鑫業有限公司','0983998437',42739542,'新北市','八里區','新光路4樓之14號','9:00-20:00','本公司專業服務團隊，皆具有國家級技術士證，免費到府丈量估價，可開立發票非個人工作室',NULL,0,0),
(5,1,'安心水電宅修','0922349936',NULL,'台北市','北投區','致遠二路94號','9:00-18:00','安心水電宅修有居家修繕、店面維修、空調保養、水電室內裝潢、清洗水塔',NULL,0,0),
(6,1,'妝家工程行','095569034',48599832,'台南市','北區','成功路68巷78號1樓','9:00-18:00','我們擅長處理老屋裝修、新成屋裝潢，我們有自己的拆除工班、木工工班、水電工班、泥作工班、系統櫃工程直營。歡迎來電預約丈量',NULL,0,0),
(7,1,'榮鴻油漆工作室','0928976991',NULL,'台北市','文山區','興隆路二段1號','9:00-20:00','因爲現場施作場地面積大小不一定。所以免費現場幫您丈量估價滿意，再進行施工。如果想開更多作品可到粉絲團收尋榮鴻油漆工作室。',NULL,0,0),
(8,1,'泓懿油漆工程','0987998332',38479022,'新北市','板橋區','信義路110巷2弄3號','9:00-18:00','公司大多數師傅都有數十年的工作經驗當然也有幾位年輕有為的師傅，每位師傅都認真負責、注重品質，深受客戶的信任',NULL,0,0),
(9,1,'莊師傅最愛油漆','0958332660',48663922,'台中市','南屯區','大墩七街141號','9:00-19:00','先生莊進益本是台北油漆師傅，2021一月才開始在台中發展，曾在修繕公司工作 6-7年，特別是油漆這份工作',NULL,0,0),
(10,1,'榮泰工程有限公司','0933884961',43876922,'桃園市','楊梅區','中正路265號3樓','9:00-17:00','公司成立於1998年，秉持著專業、誠信、服務第一的工作態度，擁有工程業界20多年的經驗，可提供一棟房子從無到有一條龍服務。',NULL,0,0),
(11,1,'元貞工程行','0955340776',NULL,'高雄市','苓雅區','五福路一段23號','9:00-18:00','我們是已經成立了12年的工程行，在地高雄的泥做師傅經驗最少都有10年以上的工作經驗，如有房屋修繕，浴室修繕等其他工程我們都有承接唷!',NULL,0,0),
(12,1,'山丘泥作','0918590377',47789932,'台南市','麻豆區','民權路91巷16號之8','9:00-18:00','五十年泥作經驗，現場專業評估!房屋增建、老屋翻修',NULL,0,0),
(13,1,'晟鑫工程','0988450231',87397653,'桃園市','桃園區','三民路一段3號','8:00-18:00','提供室內設計、施工、丈量、估價、監工及諮詢等服務，中租無卡分期特約廠商，提供分期付款服務。',NULL,0,0),
(14,1,'三田木工室內裝修有限公司','0933760882',63228955,'苗栗縣','竹南鎮','科專五路347號','8:00-17:00','提供室內裝修、天花板、地板及牆壁木工整修服務。',NULL,0,0),
(15,1,'利發暉室內喔裝潢工程','0969235899',83402477,'新北市','板橋區','英士路68巷5號','8:00-17:00','利發暉裝潢工程從年輕人到老師傅都有，讓您安心交給我們，讓您的家煥然一新吧!室內裝潢及油漆粉刷，我們都有服務喲，免費到府估價 不收取估價費用，請給我一次為您服務的機會！也可以到粉專看一下我們施工完成的照片唷，謝謝!',NULL,0,0);




-- 3. 刊登服務
CREATE TABLE `SER_AD` (
  `AD_VDR_ID` int NOT NULL COMMENT '廠商ID',
  `AD_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '刊登狀態',
  `AD_SER_CLA_ID` int NOT NULL COMMENT '服務類別ID',
  `AD_DIST` varchar(20) NOT NULL COMMENT '服務地區',
  `AD_TXT` varchar(1000) NOT NULL COMMENT '服務內容',
  `AD_PIC` longblob COMMENT '服務案例圖片',
  PRIMARY KEY (`AD_VDR_ID`,`AD_SER_CLA_ID`),
  KEY `FK_SER_AD_AD_VDR_ID` (`AD_VDR_ID`),
  KEY `FK_SER_CLA_SER_CLA_ID` (`AD_SER_CLA_ID`),
  CONSTRAINT `FK_SER_AD_AD_VDR_ID` FOREIGN KEY (`AD_VDR_ID`) REFERENCES `SER_VDR` (`VDR_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_SER_CLA_SER_CLA_ID` FOREIGN KEY (`AD_SER_CLA_ID`) REFERENCES `SER_CLA` (`SER_CLA_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='刊登服務';


insert  into `SER_AD`(`AD_VDR_ID`,`AD_STATUS`,`AD_SER_CLA_ID`,`AD_DIST`,`AD_TXT`,`AD_PIC`) values 
(1,1,1,'北部','我們提供最貼心的搬家，依照個人需求，良心收費。',NULL),
(2,1,1,'北部','負責提供公司及個人搬家服務，以親民價格擄獲顧客的心。',NULL),
(3,1,1,'中南部','明旺貨運深耕在地數十年，自有貨車載運方便並配合客人需求，擁有專業的搬家工人，請放心交給我們。',NULL),
(4,1,2,'北部','本公司提供衛浴修繕、水電裝修等，歡迎來電洽詢，將有專員為您服務!',NULL),
(5,1,2,'北部','安心水電提供店面維修、空調保養及居家修繕等多項服務，深獲民眾好評，歡迎您來店比價。',NULL),
(6,1,2,'南部','妝家工程行擅長老屋處理、整修，依照需求量身訂做，提供最完善的服務。',NULL),
(7,1,3,'北部','本行專營油漆工程，多家油漆、顏色及材質任君挑選，並依現場施作坪數計價，收費公道，歡迎來電洽詢。',NULL),
(8,1,3,'北部','提供專業油漆工程，師傅皆有數十年老經驗，施作細心負責，有口皆碑。',NULL),
(9,1,3,'中部','本行為個人油漆工作室經營，提供事前專業評估及到府估價服務，待確認金額後才開始施工。',NULL),
(10,1,4,'北部','房屋整修、牆壁施工皆有數十年老經驗，秉持著誠信為顧客提供最好的服務，歡迎來店洽詢。',NULL),
(11,1,4,'中南部','高雄在地深耕數十年的泥作公司，房屋修繕、浴室修繕等，你想的到的水泥施工我們都有承接唷!',NULL),
(12,1,4,'南部','擁有五十年泥作經驗，專營水泥施工、修繕，請先來電預約洽詢後，將有師傅跟您聯繫。',NULL),
(13,1,5,'北部','提供木工施作及到府丈量，量身訂做符合您的需求，並提供分期付款，不用擔心施工到一半師傅跑掉。',NULL),
(14,1,5,'中部','本公司擁有專業天花板、地板及牆壁木工整修服務，歡迎來電將有專員為您服務。',NULL),
(15,1,5,'北部','本行專營土木施工、油漆粉刷、室內裝潢等，師傅皆是熟手，請您放心的將房屋問題交給我們處理吧!',NULL);



-- 4. 需求單
CREATE TABLE `SER_DMD` (
  `DMD_ID` int NOT NULL AUTO_INCREMENT COMMENT '需求單ID',
  `DMD_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '需求單狀態',
  `DMD_MEM_ID` int NOT NULL COMMENT '會員ID',
  `DMD_SER_CLA_ID` int NOT NULL COMMENT '服務類別ID',
  `DMD_NAME` varchar(50) NOT NULL COMMENT '需求人姓名',
  `DMD_TEL` varchar(20) NOT NULL COMMENT '需求人電話',
  `DMD_MAIL` varchar(50) NOT NULL COMMENT '需求人信箱',
  `DMD_COUNTY` varchar(20) NOT NULL COMMENT '案場縣市',
  `DMD_REGION` varchar(20) NOT NULL COMMENT '案場地區',
  `DMD_ADDRESS` varchar(50) NOT NULL COMMENT '案場詳細地址',
  `DMD_SPACE_CLASS` varchar(20) NOT NULL COMMENT '空間類別',
  `DMD_SQUARE` int NOT NULL COMMENT '坪數',
  `DMD_BUDGET` int DEFAULT NULL COMMENT '預算',
  `DMD_INTRO` varchar(500) NOT NULL COMMENT '需求簡介',
  `DMD_PIC` longblob COMMENT '照片',
  PRIMARY KEY (`DMD_ID`),
  KEY `FK_SER_DMD_MEM_ID` (`DMD_MEM_ID`),
  CONSTRAINT `FK_SER_DMD_MEM_ID` FOREIGN KEY (`DMD_MEM_ID`) REFERENCES `MEMBER` (`MEM_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='需求單';


insert  into `SER_DMD`(`DMD_ID`,`DMD_STATUS`,`DMD_MEM_ID`,`DMD_SER_CLA_ID`,`DMD_NAME`,`DMD_TEL`,`DMD_MAIL`,`DMD_COUNTY`,`DMD_REGION`,`DMD_ADDRESS`,`DMD_SPACE_CLASS`,`DMD_SQUARE`,`DMD_BUDGET`,`DMD_INTRO`,`DMD_PIC`) values 
(1,0,1,1,'李一萱','0956234720','minglovesservlet@gmail.com','桃園市','八德區','興豐路1906巷82弄1號','套房',20,NULL,'最近有搬家需求，東西大約有十一箱。',NULL),
(2,0,2,2,'吳育雲','0978098253','minglovesservlet123@gmail.com','桃園市','桃園區','陽明三街34號','透天',43,2000,'浴室漏水及牆壁剝落嚴重，希望能盡速處理。',NULL),
(3,0,3,3,'李忠桓','0960463264','anon567892@gmail.com','台北市','信義區','信義路五段5號','透天',35,NULL,'客廳及房間想重新粉刷成粉紅色，還有處理壁癌問題。',NULL);





-- 5. 估價單
CREATE TABLE `SER_QUO` (
  `QUO_ID` int NOT NULL AUTO_INCREMENT COMMENT '估價單ID',
  `QUO_STATUS` tinyint(1) NOT NULL COMMENT '估價單狀態',
  `QUO_DMD_ID` int NOT NULL COMMENT '需求單ID',
  `QUO_VDR_ID` int NOT NULL COMMENT '廠商ID',
  `QUO_DATE` datetime NOT NULL COMMENT '估價日期',
  `QUO_EXPIRYDATE` datetime NOT NULL COMMENT '有效限期',
  `QUO_ITEM` varchar(500) NOT NULL COMMENT '估價項目',
  `QUO_TOTALPRICE` decimal(10,0) NOT NULL COMMENT '估價總價',
  PRIMARY KEY (`QUO_ID`),
  KEY `FK_SER_QUO_QUO_DMD_ID` (`QUO_DMD_ID`),
  KEY `FK_SER_QUO_QUO_VDR_ID` (`QUO_VDR_ID`),
  CONSTRAINT `FK_SER_QUO_QUO_DMD_ID` FOREIGN KEY (`QUO_DMD_ID`) REFERENCES `SER_DMD` (`DMD_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_SER_QUO_QUO_VDR_ID` FOREIGN KEY (`QUO_VDR_ID`) REFERENCES `SER_VDR` (`VDR_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='估價單';


insert  into `SER_QUO`(`QUO_ID`,`QUO_STATUS`,`QUO_DMD_ID`,`QUO_VDR_ID`,`QUO_DATE`,`QUO_EXPIRYDATE`,`QUO_ITEM`,`QUO_TOTALPRICE`) values 
(1,1,1,7,'2022-02-15 00:00:00','2022-12-30 00:00:00','小貨車一台一千元，來回兩趟，共計兩千元整。',2000),
(2,1,2,10,'2022-01-03 00:00:00','2022-10-31 00:00:00','浴室防水膠八百元及施工費一千元，共計一千八百元。',1800),
(3,1,3,12,'2022-02-18 00:00:00','2022-10-31 00:00:00','客廳及房間共十五坪，一坪粉刷費為七百元，壁癌問題處理費加工具為三萬七千元，共計為四萬七千五百元',47500);




-- 6. 服務訂單

CREATE TABLE `SER_ORD` (
  `ORD_ID` int NOT NULL AUTO_INCREMENT COMMENT '訂單ID',
  `ORD_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '服務訂單狀態',
  `ORD_PAY_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '付款狀態',
  `ORD_DMD_ID` int NOT NULL COMMENT '需求單ID',
  `ORD_QUO_ID` int NOT NULL COMMENT '估價單ID',
  `ORD_MEM_ID` int NOT NULL COMMENT '會員ID',
  `ORD_VDR_ID` int NOT NULL COMMENT '廠商ID',
  `ORD_SER_CLA_ID` int NOT NULL COMMENT '服務類別ID',
  `ORD_MEM_VATNO` varchar(10) DEFAULT NULL COMMENT '會員統一編號',
  `ORD_VDR_VATNO` varchar(10) DEFAULT NULL COMMENT '廠商統一編號',
  `ORD_CLN_NAME` varchar(50) NOT NULL COMMENT '業主姓名',
  `ORD_CLN_TEL` varchar(20) NOT NULL COMMENT '業主電話',
  `ORD_WORK_DATE` datetime NOT NULL COMMENT '施作日期',
  `ORD_COUNTY` varchar(10) NOT NULL COMMENT '案場縣市',
  `ORD_DIST` varchar(10) NOT NULL COMMENT '案場地區',
  `ORD_ADDR` varchar(50) NOT NULL COMMENT '案場詳細地址',
  `ORD_ITEM` varchar(500) NOT NULL COMMENT '施工項目',
  `ORD_TOTALPRICE` decimal(10,0) NOT NULL COMMENT '總金額',
  `ORD_PREPAY` decimal(10,0) NOT NULL COMMENT '訂金',
  `ORD_PAYTYPE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '訂金付款方式',
  `ORD_PAY_DATE` datetime NOT NULL COMMENT '訂金付款日期',
  `ORD_FPAY` decimal(10,0) NOT NULL COMMENT '尾款',
  `ORD_FPAYTYPE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '尾款付款方式',
  `ORD_FPAY_DATE` datetime NOT NULL COMMENT '尾款付款日期',
  `ORD_BUYER_SCORE` int DEFAULT NULL COMMENT '廠商評價客戶星數',
  `ORD_BUYER_TXT` varchar(200) DEFAULT NULL COMMENT '廠商評價客戶留言',
  `ORD_VDR_SCORE` int DEFAULT NULL COMMENT '客戶評價廠商星數',
  `ORD_VDR_TXT` varchar(200) DEFAULT NULL COMMENT '客戶評價廠商留言',
  `ORD_NOTE` varchar(100) DEFAULT NULL COMMENT '備註',
  PRIMARY KEY (`ORD_ID`),
  KEY `FK_SER_ORD_ORD_DMD_ID` (`ORD_DMD_ID`),
  KEY `FK_SER_ORD_ORD_QUO_ID` (`ORD_QUO_ID`),
  KEY `FK_SER_ORD_ORD_MEM_ID` (`ORD_MEM_ID`),
  KEY `FK_SER_ORD_ORD_VDR_ID` (`ORD_VDR_ID`),
  KEY `FK_SER_ORD_ORD_SER_CLA_ID` (`ORD_SER_CLA_ID`),
  CONSTRAINT `FK_SER_ORD_ORD_DMD_ID` FOREIGN KEY (`ORD_DMD_ID`) REFERENCES `SER_DMD` (`DMD_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_SER_ORD_ORD_MEM_ID` FOREIGN KEY (`ORD_MEM_ID`) REFERENCES `MEMBER` (`MEM_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_SER_ORD_ORD_QUO_ID` FOREIGN KEY (`ORD_QUO_ID`) REFERENCES `SER_QUO` (`QUO_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_SER_ORD_ORD_SER_CLA_ID` FOREIGN KEY (`ORD_SER_CLA_ID`) REFERENCES `SER_CLA` (`SER_CLA_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_SER_ORD_ORD_VDR_ID` FOREIGN KEY (`ORD_VDR_ID`) REFERENCES `SER_VDR` (`VDR_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='訂單';


insert  into `SER_ORD`(`ORD_ID`,`ORD_STATUS`,`ORD_PAY_STATUS`,`ORD_DMD_ID`,`ORD_QUO_ID`,`ORD_MEM_ID`,`ORD_VDR_ID`,`ORD_SER_CLA_ID`,`ORD_MEM_VATNO`,`ORD_VDR_VATNO`,`ORD_CLN_NAME`,`ORD_CLN_TEL`,`ORD_WORK_DATE`,`ORD_COUNTY`,`ORD_DIST`,`ORD_ADDR`,`ORD_ITEM`,`ORD_TOTALPRICE`,`ORD_PREPAY`,`ORD_PAYTYPE`,`ORD_PAY_DATE`,`ORD_FPAY`,`ORD_FPAYTYPE`,`ORD_FPAY_DATE`,`ORD_BUYER_SCORE`,`ORD_BUYER_TXT`,`ORD_VDR_SCORE`,`ORD_VDR_TXT`,`ORD_NOTE`) values 
(1,0,0,1,1,1,7,1,NULL,'41411169','張建隆','0978983552','2022-02-14 00:00:00','新北市','三重區','長安東路一段3號','搬家',2000,1000,1,'2022-01-25 00:00:00',1000,1,'2022-02-28 00:00:00',NULL,NULL,NULL,NULL,NULL),
(2,0,0,2,2,2,10,2,NULL,NULL,'吳添偉','0911672895','2022-04-10 00:00:00','台北市','大安區','忠孝西路路二段9號','衛浴裝修',1800,800,2,'2022-01-28 00:00:00',1000,2,'2022-03-20 00:00:00',NULL,NULL,NULL,NULL,NULL),
(3,0,0,3,3,3,12,3,NULL,NULL,'陳均瑋','0989334702','2022-03-16 00:00:00','台北市','文山區','木柵路一段三巷20號','油漆工程',47500,20000,2,'2022-02-26 00:00:00',27500,2,'2022-03-20 00:00:00',NULL,NULL,NULL,NULL,NULL);



-- 7. 檢舉表

CREATE TABLE `SER_REPO` (
  `RP_ID` int NOT NULL AUTO_INCREMENT COMMENT '檢舉單ID',
  `RP_ORD_ID` int NOT NULL COMMENT '訂單ID',
  `RP_MEM_ID` int NOT NULL COMMENT '會員ID',
  `RP_TXT` varchar(100) NOT NULL COMMENT '檢舉內容',
  `RP_DATE` datetime NOT NULL COMMENT '檢舉時間',
  `RP_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '檢舉狀態',
  PRIMARY KEY (`RP_ID`),
  KEY `FK_SER_REPO_RP_ORD_ID` (`RP_ORD_ID`),
  KEY `FK_SER_REPO_RP_MEM_ID` (`RP_MEM_ID`),
  CONSTRAINT `FK_SER_REPO_RP_MEM_ID` FOREIGN KEY (`RP_MEM_ID`) REFERENCES `MEMBER` (`MEM_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_SER_REPO_RP_ORD_ID` FOREIGN KEY (`RP_ORD_ID`) REFERENCES `SER_ORD` (`ORD_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='檢舉表';


insert  into `SER_REPO`(`RP_ID`,`RP_ORD_ID`,`RP_MEM_ID`,`RP_TXT`,`RP_DATE`,`RP_STATUS`) values 
(1,1,1,'與施工工人溝通時態度惡劣請加強','2022-02-15 00:00:00',2),
(2,2,2,'施工效率很差，工人遲到早退','2022-04-12 00:00:00',2),
(3,3,3,'做工品質差','2022-03-17 00:00:00',2);



-- 後台
-- 1. 後台員工
CREATE TABLE `CFA104G5`.`ADMIN_EMP` (
  `ADM_ID` INT NOT NULL AUTO_INCREMENT,
  `ADM_USERNAME` VARCHAR(45) NOT NULL,
  `ADM_PASSWORD` VARCHAR(45) NOT NULL,
  `ADM_STATUS` TINYINT(1) NOT NULL DEFAULT 1,
 PRIMARY KEY (`ADM_ID`),
 UNIQUE KEY UK_ADMIN_EMP_ADM_ID(`ADM_ID`)
 )COMMENT = '管理員';


INSERT INTO `CFA104G5`.`ADMIN_EMP` VALUES (1,"boss","boss123",1);
INSERT INTO `CFA104G5`.`ADMIN_EMP` VALUES (2,"alex","alex123",1);
INSERT INTO `CFA104G5`.`ADMIN_EMP` VALUES (3,"member","member123",1);
INSERT INTO `CFA104G5`.`ADMIN_EMP` VALUES (4,"landlord","landlord",1);
INSERT INTO `CFA104G5`.`ADMIN_EMP` VALUES (5,"a100240033","a100240033",1);
INSERT INTO `CFA104G5`.`ADMIN_EMP` VALUES (6,"eric","123",1);
INSERT INTO `CFA104G5`.`ADMIN_EMP` VALUES (7,"jennie","123",1);
INSERT INTO `CFA104G5`.`ADMIN_EMP` VALUES (8,"adam","123",1);

-- 2. 後台功能
CREATE TABLE `CFA104G5`.`ADMIN_FUNC` (
  `FUN_ID` INT NOT NULL AUTO_INCREMENT,
  `FUN_NAME` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`FUN_ID`));

INSERT INTO `CFA104G5`.`ADMIN_FUNC` VALUES (1,"員工管理");
INSERT INTO `CFA104G5`.`ADMIN_FUNC` VALUES (2,"會員資料管理");
INSERT INTO `CFA104G5`.`ADMIN_FUNC` VALUES (3,"房東審查");
INSERT INTO `CFA104G5`.`ADMIN_FUNC` VALUES (4,"服務檢舉");
INSERT INTO `CFA104G5`.`ADMIN_FUNC` VALUES (5,"服務類別管理");
INSERT INTO `CFA104G5`.`ADMIN_FUNC` VALUES (6,"商品下架");
INSERT INTO `CFA104G5`.`ADMIN_FUNC` VALUES (7,"刊登服務管理");


-- 3. 後台管理員權限
CREATE TABLE `CFA104G5`.`ADMIN_PRIV` (
  `ADM_ID` INT NOT NULL,
  `FUN_ID` INT NOT NULL,
  PRIMARY KEY (`ADM_ID`, `FUN_ID`),
  INDEX `FK_ADM_ID` (`ADM_ID` ASC) VISIBLE,
  INDEX `FK_FUN_ID` (`FUN_ID` ASC) VISIBLE,
  CONSTRAINT `FK_ADMIN_PRIV_ADM_ID`
    FOREIGN KEY (`ADM_ID`)
    REFERENCES `CFA104G5`.`ADMIN_EMP` (`ADM_ID`)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE,
  CONSTRAINT `FK_ADMIN_PRIV_FUN_ID`
    FOREIGN KEY (`FUN_ID`)
    REFERENCES `CFA104G5`.`ADMIN_FUNC` (`FUN_ID`)
    ON DELETE RESTRICT  ON UPDATE CASCADE);

INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (1,1);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (1,2);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (1,3);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (1,4);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (1,5);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (1,6);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (1,7);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (2,2);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (2,3);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (2,4);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (2,5);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (3,2);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (3,3);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (3,4);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (3,5);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (3,6);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (3,7);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (4,2);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (4,3);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (4,4);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (4,5);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (4,6);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (4,7);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (5,2);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (5,3);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (5,4);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (5,5);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (5,6);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (5,7);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (6,2);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (6,3);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (6,4);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (6,5);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (6,6);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (6,7);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (7,2);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (7,3);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (7,4);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (7,5);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (7,6);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (7,7);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (8,2);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (8,3);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (8,4);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (8,5);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (8,6);
INSERT INTO `CFA104G5`.`ADMIN_PRIV` VALUES (8,7);
