/*
 Navicat Premium Data Transfer

 Source Server         : Webserver
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : 192.168.201.225:3306
 Source Schema         : salary_slip

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 11/07/2022 14:47:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member`  (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` int NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`m_id`) USING BTREE,
  INDEX `type_id`(`type_id`) USING BTREE,
  CONSTRAINT `reramember` FOREIGN KEY (`type_id`) REFERENCES `tb_member_type` (`t_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_member
-- ----------------------------
INSERT INTO `tb_member` VALUES (1, 'นายกิติภูมิ  จุฑาสมิต', '3102200068852', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (2, 'นายส.เรืองฤทธิ์  สินธู', '3819900128921', 1, '4f4adcbf8c6f66dcfc8a3282ac2bf10a', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (3, 'นางชิรากร  บุญลี', '3330500271340', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (4, 'นางบุษบา  พิมาย', '3330100569180', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (5, 'นางกันทิมา ทาหอม', '3330700482247', 1, '274ad4786c3abca69fa097b85867d9a4', '7d6a6217e02b2cfdff36dff06c8978e0.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (6, 'นางสาวพัสสมน  รัชต์สุพลโชค', '3330501277121', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (7, 'นางปิยะดา  พรหมศรี', '3330500895301', 1, '352fe25daf686bdb4edca223c921acea', 'db53653d948012cbe58c8dd432e11d04.jpg', 'dd644506f0a5e2e6822baf0f79819f74.jpg');
INSERT INTO `tb_member` VALUES (8, 'น.ส.ธัญญารัตน์  บุตะเคียน', '3330500085244', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (9, 'นางพรหมศร   บุญศิริ', '3330501333535', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (10, 'นางสาวธิดาพร  สีหะวงษ์', '3330200022140', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'd0961e216dce4d32fbd64898cfa1b969.jpg', '2eace890f3eae82de76c0e798c692f07.jpg');
INSERT INTO `tb_member` VALUES (11, 'นางสาวตรีรัตน์  โทบุดดี', '1341600242290', 1, '979d472a84804b9f647bc185a877a8b5', 'ea19d953713d5a4e50a899fed98f2a42.jpeg', '35a51619afcd2a6e0a0fed88b321972e.jpeg');
INSERT INTO `tb_member` VALUES (12, 'นางจุฑาภรณ์  ธรรมวงค์', '3330500273571', 1, 'b1a59b315fc9a3002ce38bbe070ec3f5', 'e824d1aeef0727d63a95e2297fa1eb26.jpg', 'ca6154df16def2c565c61bfc7f3ab845.jpg');
INSERT INTO `tb_member` VALUES (13, 'นางสาวพิสมัย  ยืนสุข', '3341800378451', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (14, 'นางพิกุล  นิยม', '3330300774445', 1, '06eb61b839a0cefee4967c67ccb099dc', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (15, 'นางสาวพรพันธ์  เฉลิมรัมย์', '3319900109076', 1, 'd1f255a373a3cef72e03aa9d980c7eca', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (16, 'นางสาวรติรมย์  บุญมา', '1339900409626', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (17, 'นางน้ำฝน  บัวศิริ', '3411900506760', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (18, 'นางมีนา  ชาวเวียง', '3330500494276', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (19, 'นางรัตนาภรณ์  สรรพศรี', '3330700013387', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (20, 'นายนิกร  เภาแก้ว', '3330100851764', 1, '577bcc914f9e55d5e4e4f82f9f00e7d4', 'ce3d3bacc267fa334026d7c641c74799.jpg', 'a04830637fa230b96c25a19f40b181c7.png');
INSERT INTO `tb_member` VALUES (21, 'นายศิริ  ศิรินัย', '3330300478242', 1, '69cb3ea317a32c4e6143e665fdb20b14', '9fdbde8409cadf54c1abfd13bb8cc40d.jpg', '9e3914b98d84e5c5b72ccc4aa098fafb.jpg');
INSERT INTO `tb_member` VALUES (22, 'นางสมไสว  ศิริปี', '5330100022128', 1, 'b7b16ecf8ca53723593894116071700c', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (23, 'นางสมคิด  สุภาพันธ์', '3330100472186', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (24, 'นายบุญรอบ  แก้วดี', '3330400988218', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (25, 'นายธนวรรธน์  ไกรวิเศษ', '3330700205936', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (26, 'นายสมคิด  สีหะบุตร', '3330800573830', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (27, 'นางสาวพรรณปพร  ไพรบึง', '3330501079779', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (28, 'นางพัชญา  ไชยคุณ', '3330400723885', 1, 'bbcbff5c1f1ded46c25d28119a85c6c2', '8de13a8b82989453df1bff798670c83f.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (29, 'น.ส.จำลองลักษณ์  ซาสังข์', '5330100039497', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (30, 'นางวันเพ็ญ  สินธู', '3330501156731', 1, '22ac3c5a5bf0b520d281c122d1490650', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (31, 'นางสาวกนกวรรณ เนียมจิตร', '2330500028170', 1, '9fd81843ad7f202f26c1a174c7357585', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (32, 'นางน้ำทิพย์  สีหะบุตร', '3330401198792', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (33, 'นายทวีพันธ์  ติงชาติ', '3330400442240', 1, '34ed066df378efacc9b924ec161e7639', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (34, 'นางจุรารัตน์  รัตนสัตยา', '3330401633308', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (35, 'นายเสฎฐิวุฒิ  นิตนอก', '3440800390017', 1, '9c01802ddb981e6bcfbec0f0516b8e35', '5fb7052d2088ede7409a600ce7b65f4b.jpg', '6988b221386ed7059b649a9026263de1.jpg');
INSERT INTO `tb_member` VALUES (36, 'นางสาวสุติมาศ  สุกวัน', '3330500871452', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (37, 'นางสาวอัญญาณี  อสิพงษ์', '3330700002440', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (38, 'นางลัดดาวัลย์  บังเอิญ', '3320900924804', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (39, 'นางสาววรุณี  ศรีไสย์', '3330900835585', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (40, 'นายธงชัย  ไชยโชติ', '3330500949362', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (41, 'นางอ่อนวิภา  ลาคำ', '3330800668041', 1, 'd1f255a373a3cef72e03aa9d980c7eca', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (42, 'นางสาวกนกวรรณ  ศรีบำรุง', '1319900016276', 1, 'b83aac23b9528732c23cc7352950e880', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (43, 'นายแดนชัย  บริสัย', '3460300758074', 1, '577bcc914f9e55d5e4e4f82f9f00e7d4', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (44, 'นายเฉลิมพล  แซ่โล้ว', '1339900016527', 1, 'e5841df2166dd424a57127423d276bbe', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (45, 'นางสาวกิ่งแก้ว มารมย์', '1330500115261', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (46, 'นางยุพิน   ระงับภัย', '3330900782031', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (47, 'นางวราลี  บัวเขียว', '1330500119151', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (48, 'นางสาวรุ่งนภา  ปรือปรัก', '3330500356540', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (49, 'นางพรรวินท์  สุขศิริยศสกุล', '3309901525278', 6, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (50, 'นส.กติกา  สำโรงแสง', '1103700309756', 1, '9c82c7143c102b71c593d98d96093fde', '4524a8431ffad6a59a6799e060702e30.jpg', '731f7893dd45289f95211c1d5fe887fb.jpg');
INSERT INTO `tb_member` VALUES (51, 'นางสมนต์  กุมรีจิตร', '3330501156382', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (52, 'นางสาวแสงดาว  ไชยโพธิ์', '5331700001858', 6, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (53, 'นางชนิดา  ธรรมพร', '3330500877442', 1, '42e7aaa88b48137a16a1acd04ed91125', '672207b73a8cd97f565e2a6ecfd9029e.jpeg', 'd32141cffb0124529b1778af3e1cf7ca.jpeg');
INSERT INTO `tb_member` VALUES (54, 'นางอาภา  แก้วดี', '3320100022911', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (55, 'นางวันทนีย์  สันดอน', '3209800053690', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (56, 'นางสาวสุกันยา  ธรรมพร', '1330500019369', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (57, 'นางสาวอรวิกา  บุญมี', '1330500003322', 1, '11b9842e0a271ff252c1903e7132cd68', 'bf71aa964ad9c01a0da2ad30618fc7f9.jpeg', 'c38c882dddfc0766546c9d6644be056f.jpeg');
INSERT INTO `tb_member` VALUES (58, 'นางสาวภาวิดา  ศรีแก้ว', '1330500073037', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (59, 'นายประสิทธิ์  ไสว', '2331400005144', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (60, 'นางสาวรัชนีกร  สุภาพ', '1330900066518', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (61, 'นางสาวชไมพร  อัตถากร', '2459900025507', 1, '5c572eca050594c7bc3c36e7e8ab9550', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (62, 'นางสาวพรสุดา  ขวัญนู', '1340700378656', 6, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (63, 'นางกัญญา  ดวงใจ', '3330501431260', 1, '979d472a84804b9f647bc185a877a8b5', '511b18b44e5676147f66085a2db0e311.jpeg', 'b311bd38a469b1468953126c17f82354.jpeg');
INSERT INTO `tb_member` VALUES (64, 'นางอุษา  จันทรสาขา', '1199900004679', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (65, 'นางสาวจิราพร  มาศกุล', '1331000157089', 1, '0d0871f0806eae32d30983b62252da50', '70f40ae4fbeb02dd2cea2cb384d01361.jpeg', '159f99c24ebe32803bab679cd70cac90.jpeg');
INSERT INTO `tb_member` VALUES (66, 'นายอภิรักษ์  ศรีโบราณ', '1219900379612', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (67, 'นายโกญจนาท  อุ่นแก้ว', '1330800186180', 1, '021bbc7ee20b71134d53e20206bd6feb', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (68, 'นายวีระยุทธ   แก้วโมกข์', '3330800549530', 1, '3b8a614226a953a8cd9526fca6fe9ba5', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (69, 'นางสาวขนิษฐา  พันธ์แก่น', '1331700004790', 1, 'f29c21d4897f78948b91f03172341b7b', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (70, 'นางสาววิชุดา นันทา', '1330300164501', 1, '8cb22bdd0b7ba1ab13d742e22eed8da2', '9d59e46575b0f082191e950e7c2b2f36.jpeg', 'admin1.png');
INSERT INTO `tb_member` VALUES (71, 'นายเอกชัย  สุภาพันธ์', '3330600176144', 1, '3871bd64012152bfb53fdf04b401193f', 'b17d9fec3c75a2f6ec63536efbc9bc36.jpg', '5b3aef13b7cf33ec8c8a77fa32d3f3fd.jpg');
INSERT INTO `tb_member` VALUES (72, 'นางสาวอุมาพร สอนดอนไพร', '1331000130563', 1, '577bcc914f9e55d5e4e4f82f9f00e7d4', 'a791a95dd3ed048ef84b8a683139b651.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (73, 'นางสาวปิยะนุช  ภูทิพย์', '1103700632107', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (74, 'นางสาวธนาภรณ์  คำมา', '1331400048023', 1, 'f718499c1c8cef6730f9fd03c8125cab', '2c22f9132b3d9f3dad22aac4372a5013.jpeg', 'e79974d6257fd2a50330f6ef4ae2bdec.jpeg');
INSERT INTO `tb_member` VALUES (75, 'นางสาวศิริพรรณ พิชัย', '1349900572608', 1, '9cf81d8026a9018052c429cc4e56739b', 'f13d703630a2a735d842f687e56855f5.jpeg', 'admin1.png');
INSERT INTO `tb_member` VALUES (76, 'นายปรุฬห์ฤทธิ์  ธนัตถ์กิตติ์', '1330500119291', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (77, 'นางสาวกาญจนา เทพแสง', '1330500275608', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (78, 'นางสาวศิริวรรณ  วงษ์ป้อง', '1330500287436', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (79, 'นางสาวเทวรัตน์ รุ่งแสง', '3330100762931', 2, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (80, 'นางสาวณหทัย  สมบัติมาก', '1330500043154', 2, 'ad13a2a07ca4b7642959dc0c4c740ab6', 'b469b527636d7327fd0ee8c18bbac5a6.jpg', '752b452e547f986332ed595fc7b8c41f.jpg');
INSERT INTO `tb_member` VALUES (81, 'นายณัฐวุฒิ  ปัญญาบุตร', '3330501295650', 3, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (82, 'นางฉลวย  ตั้งตระกูล', '3330501431090', 3, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (83, 'นางสำรวย  สุนิพัฒน์', '3330501431138', 3, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (84, 'นางปราณี  ทองอาสน์', '3330500784878', 3, '432aca3a1e345e339f35a30c8f65edce', 'cac6e6cfc72970bd9b9651f897ce2336.jpg', '162430eb882faf33ec56bf44526267e2.jpg');
INSERT INTO `tb_member` VALUES (85, 'นายภัทรธร  ร่วมทรัพย์', '3330800657111', 3, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (86, 'นางฐิติพร  ทรัพย์บวร', '3341500396461', 4, '9dfcd5e558dfa04aaf37f137a1d9d3e5', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (87, 'นางธัญรดี  ปรารถนา', '3330501054342', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (88, 'นางสัจจพร  ดวงตา', '3330100474464', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (89, 'นางสาวสุรางค์  แก้วอาษา', '3340701080916', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (90, 'นางสาววาสนา  บุตะเคียน', '3330500231437', 4, '17d63b1625c816c22647a73e1482372b', 'bc9eef40e58d19dfd764323c25f3e2a7.jpg', '59b0f0341e459aa8a53244ac7bb31f20.jpg');
INSERT INTO `tb_member` VALUES (91, 'นางสาวบัวคำ  ศรีสิงห์', '3330500354512', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (92, 'นางสิริกร  อินธิสุทธิ์', '3330500277577', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (93, 'นางสาวกฤตพร  ใยทอน', '3330400472459', 4, '8d3bba7425e7c98c50f52ca1b52d3735', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (94, 'นางบังอร  หงส์ทอง', '3340701454719', 4, '274ad4786c3abca69fa097b85867d9a4', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (95, 'นายประยูร  บุตะเคียน', '3330500231887', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (96, 'นางสาวดารกา  สุขกรมใส', '3330501312597', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (97, 'น.ส.วิรากานต์  ตะเคียนเกลี้ยง', '3330500355551', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'cf7a0b5477545bd910f023e8794a3c15.jpg', 'cea8cdd4e37297a516ffa566e0b1569b.jpg');
INSERT INTO `tb_member` VALUES (98, 'นายประเสียน  งามสม', '3330501254457', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (99, 'นางสาวมยุรีย์  เคนคุณ', '5330400191090', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (100, 'นางสาวชมพูนุช  อินทร์งาม', '1349900121444', 4, 'e46de7e1bcaaced9a54f1e9d0d2f800d', 'cb93b2035e78237a55f3b0a87b6dab41.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (101, 'นางหทัยกาญจน์  แพงสุดใจ', '3330500885143', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (102, 'นางสาวกิตนภา ใจอ่อน', '1330500162005', 4, '26e359e83860db1d11b6acca57d8ea88', 'c96fe269c0bd7ac30a10c57c79867fcb.jpeg', '721ed2e3947042f3eedabdc2c3183920.jpeg');
INSERT INTO `tb_member` VALUES (103, 'นางบุณยภัสร์  จันทร์เปรียง', '3330501296371', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (104, 'นายเตชสิทธิ์  กำเนิด', '3330500872815', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (105, 'นางสาวประกาย   ยืนยาว', '3330300692368', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (106, 'นายสุรสิทธิ์ ตะเคียนเกลี้ยง', '1330500170342', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (107, 'นางสาวทัศวรรณ  คำตัน', '3330300100045', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (108, 'นางสาวปวีนุช  รัตนพันธ์', '1330500082061', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (109, 'นายทนงศักดิ์ บุตะเคียน', '1330500020383', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (110, 'นายอัมรินทร์ ชะเนติยัง', '1330800117064', 4, '04025959b191f8f9de3f924f0940515f', '8e48441e877cb954c3bcdf9968449664.jpg', '237ef94faa0ab01ea7ad574da40ffa4b.jpg');
INSERT INTO `tb_member` VALUES (111, 'นายนิติวัฒน์  พงษ์สุวรรณ์', '1330500159284', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (112, 'นายชัยสิทธิ์  ศรีมุม', '1330500094221', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (113, 'นางสาวสุปรียา  ประชาราษฎร์', '1349900409561', 4, '7eabe3a1649ffa2b3ff8c02ebfd5659f', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (114, 'นส.สุชาดา  จันทะเสน', '1331600039273', 4, 'd64a340bcb633f536d56e51874281454', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (115, 'นายสง่า  ตะเคียนเกลี้ยง', '1331700003963', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (116, 'นายสมชาย  บุตะเคียน', '3330500232638', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (117, 'นางสาวสงวน นามโคตร', '3330501053630', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (118, 'นางสาวธัญญารัตน์ บุญสอน', '1330700171083', 4, '11b9842e0a271ff252c1903e7132cd68', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (119, 'นางสุพัตรา  บุญเกิ่ง', '3340701454743', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (120, 'นายสมนึก  ไตรรัตน์', '2330500024085', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (121, 'นส.กาญจนา  ประชาราฎร์', '1330900249671', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (122, 'นส.จรีรัตน์  อสิพงษ์', '1330500185901', 4, 'e2c0be24560d78c5e599c2a9c9d0bbd2', '3c0822674b5e43873146876e3de7ced4.jpg', 'b8584f2ac8ef6371a5220333fa4209f6.jpg');
INSERT INTO `tb_member` VALUES (123, 'นายธวัชชัย  อรัญกุล', '1331000136588', 4, '37bc2f75bf1bcfe8450a1a41c200364c', 'ccd2a85ad7ba1898813cd3f7624a3538.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (124, 'นายไพฑูรย์  ทิพย์บำรุง', '1331700031002', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (125, 'นส.ศิริวรรณ ตะเคียนเกลี้ยง', '1331700004153', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (126, 'นส.ธนาภรณ์  โคตชัย', '1331700046883', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (127, 'นายวิทิต  บุตะเคียน', '1330500349423', 4, 'f2fc990265c712c49d51a18a32b39f0c', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (128, 'นางสาวทัศนีย์  ทิพบำรุง', '1330500212801', 4, '758874998f5bd0c393da094e1967a72b', '165b75995efd58aca1c090c5acec76b6.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (129, 'นายวีรชัย  อ่อนมณี', '1341500202156', 4, '17d63b1625c816c22647a73e1482372b', 'ab2aca43c65ebec6a87a25fbff631a7e.jpg', '9d5360b04b8abfd76fbb45cc6710a136.jpeg');
INSERT INTO `tb_member` VALUES (130, 'นางสาวอริษา  นางวงค์', '5331400074647', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (131, 'นายไกรศรี  อุ่นหล้า', '3340701727049', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (132, 'นายธีระศักดิ์  หนองเหล็ก', '3331001392207', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (133, 'นางอัมพร  ชินวงค์', '1330500197488', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (134, 'นายนิวัฒน์  สุกวัน', '1331700054002', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (135, 'นางสาวนริศรา  สะอาด', '1330600092301', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'dcbebf5fb331ee59c96570434419dfb1.jpeg', 'admin1.png');
INSERT INTO `tb_member` VALUES (136, 'นางสาวอำภาพร  อุ่นหล้า', '3340701727065', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (137, 'นายนรชัย  แก้วสาลี', '1330500098871', 4, '28f0b864598a1291557bed248a998d4e', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (138, 'นายรัตนะชัย  สูงสุด', '3330501055080', 4, 'f718499c1c8cef6730f9fd03c8125cab', '5028464f69e130207f4cb00c2e0e6711.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (139, 'นส.จันทร์เพ็ญ จินดาวงษ์', '1330500150821', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (140, 'นางรัชนี  ศรีปัตเนตร', '1339900238953', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (141, 'นางสาวเกตุน์สิริ  อาจหาญ', '1330500044975', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (142, 'นางสาวปิยรัตน์  ชาวนา', '1490500121243', 4, '496e05e1aea0a9c4655800e8a7b9ea28', '49fb10739061ff175bc77d9c9596e106.jpg', '2273531ef4d20d32c99e969b626989d2.jpg');
INSERT INTO `tb_member` VALUES (143, 'นายจำนงค์  คำศรี', '1330500157729', 6, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (144, 'นางสาวอัมพิกา พวงพันธ์', '3330400429103', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (145, 'นายสมภพ  งามสม', '1330500357515', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (146, 'นส.พัชรินทร์  สุคนธจินดา', '1339900393843', 6, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (147, 'นายถาวร  บุญทง', '1331700001502', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (148, 'นายประสิทธิ์  อิ่มบุญสุ', '3470200183371', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (149, 'นายทองคำ  จารุนัย', '3330100606328', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (150, 'ผู้ดูแลละบบ', '1094210942', 5, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (162, 'นายวิทยา   เย็นสำราญ', '1329900364860', 1, 'f718499c1c8cef6730f9fd03c8125cab', '79e021f8d2ce8d02697e1938afbe6699.jpg', '27197d7b3888d850faa7872957540847.jpg');
INSERT INTO `tb_member` VALUES (163, 'นางสาวพุทธิชาติ ทับทิมไสย์', '1340900259171', 2, '9cb67ffb59554ab1dabb65bcb370ddd9', 'dba981d8ce7bfc7866a6938d02d92610.jpeg', '0d75ece295a628f4e1da83cee624bbbc.jpeg');
INSERT INTO `tb_member` VALUES (164, 'นางสาวกาญจนา พละศักดิ์', '1330500373677', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (165, 'นางสาวมณี ปรือปรัก', '1330500233492', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (166, 'นายอดิศร  คำขาว', '1331700060967', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (167, 'นางสาววิชุดา  ศรีนวล', '1331700056081', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'ce73c3f181932ede3371bb5ba45eff7d.jpg', '5c1b01efac3d1403297b44caf404d406.jpeg');
INSERT INTO `tb_member` VALUES (168, 'น.ส.พัชราภรณ์ พรมลัทธิ์', '1330500358988', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (169, 'นายเจตุพล กลางมณี', '1330501417589', 4, '1efa39bcaec6f3900149160693694536', 'dac21ea819257b3f6aa17ce05f13eb6b.jpeg', 'admin1.png');
INSERT INTO `tb_member` VALUES (170, 'นายวสันต์   แดงขาว', '3819900101984', 1, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (171, 'นายวชิรวิทย์  บัวศิริ', '1339900217425', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (172, 'นางสาวคณามาศ  พ่อมี', '1331700010919', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (173, 'นายวีระชัย  เสาร์ไสย์', '1111111111111', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (174, 'นส.นภฉัตร  กาบบัวศรี', '1331700048240', 4, 'f718499c1c8cef6730f9fd03c8125cab', '1dca3ee9d7e89f905ca436dbc1e94073.jpeg', '3c8d416ce366a7193b7cd578fd5727d4.jpeg');
INSERT INTO `tb_member` VALUES (175, 'นส.รัชนีกร  ศรชัย', '1331700015261', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (176, 'นส.สุชาดา  นะรินทร์', '1331700027943', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (177, 'นส.น้อย  สายทอง', '1111111111111', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (178, 'นส.ชลิตา  ผลสีทอง', '1330500359119', 4, 'f718499c1c8cef6730f9fd03c8125cab', 'admin2.jpg', 'admin1.png');
INSERT INTO `tb_member` VALUES (179, 'นาย ธนากร เทาศิริ', '1330800230707', 1, '6883966fd8f918a4aa29be29d2c386fb', 'eb707f1c3ba035836036325d4d303d1b.jpeg', 'admin1.png');

-- ----------------------------
-- Table structure for tb_member_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_member_type`;
CREATE TABLE `tb_member_type`  (
  `t_id` int NOT NULL,
  `t_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_member_type
-- ----------------------------
INSERT INTO `tb_member_type` VALUES (1, 'ข้าราชการ');
INSERT INTO `tb_member_type` VALUES (2, 'พนักงานราชการ');
INSERT INTO `tb_member_type` VALUES (3, 'ลูกจ้างประจำ');
INSERT INTO `tb_member_type` VALUES (4, 'ลูกจ้างชั่วคราว/ พกส. /รายวัน');
INSERT INTO `tb_member_type` VALUES (5, 'Admin');
INSERT INTO `tb_member_type` VALUES (6, 'ลบ');

-- ----------------------------
-- Table structure for tb_official
-- ----------------------------
DROP TABLE IF EXISTS `tb_official`;
CREATE TABLE `tb_official`  (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `o_allowance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_pts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_not_practice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_ot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_revenue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_sum_revenue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_nks_sk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_nks_ministry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_shop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_electricity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_ktb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_baac` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_gsb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_lend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_donate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_food` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_sum_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_get_real` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_date_get` date NULL DEFAULT NULL,
  `o_date` date NULL DEFAULT NULL,
  `o_m_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`o_id`) USING BTREE,
  INDEX `index`(`o_m_id`) USING BTREE,
  CONSTRAINT `fk_o` FOREIGN KEY (`o_m_id`) REFERENCES `tb_member` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 702 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ข้าราชการ' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_official
-- ----------------------------
INSERT INTO `tb_official` VALUES (158, '150000', '10000', '10000', '0', '', '170000', '230', '', '', '24', '', '', '  ', '  ', '  ', '1000', '', '1254', '168746', 'มกราคม 2565', '2022-01-28', '2022-01-31', 1);
INSERT INTO `tb_official` VALUES (159, '33000', '3000', '5000', '10800', '9600', '61400', '', '', '', '', '', '16500', '', '', '', '', '', '16500', '44900', 'มกราคม 2565', '2022-01-28', '2022-01-31', 2);
INSERT INTO `tb_official` VALUES (160, '11100', '2000', '', '0', '18200', '31300', '', NULL, '', '', '18200', '', '', '', '', '', '', '18200', '13100', 'มกราคม 2565', '2022-01-28', '2022-01-31', 3);
INSERT INTO `tb_official` VALUES (161, '11100', '1500', '', '10940', '', '23540', '230', NULL, '388', '', '18500', '', '', '', '', '', '', '19118', '4422', 'มกราคม 2565', '2022-01-28', '2022-01-31', 4);
INSERT INTO `tb_official` VALUES (162, '11100', '1500', '', '4950', '', '17550', '', NULL, '392', '', '', '3800', '', '', '', '', '', '4192', '13358', 'มกราคม 2565', '2022-01-28', '2022-01-31', 5);
INSERT INTO `tb_official` VALUES (163, '7400', '1500', '', '0', '', '8900', '460', NULL, '208', '67', '', '', '', '2000', '', '600', '1719', '5054', '3846', 'มกราคม 2565', '2022-01-28', '2022-01-31', 6);
INSERT INTO `tb_official` VALUES (164, '11100', '2000', '', '3750', '', '16850', '920', NULL, '60', '', '', '6400', '', '', '', '', '', '7380', '9470', 'มกราคม 2565', '2022-01-28', '2022-01-31', 7);
INSERT INTO `tb_official` VALUES (165, '11100', '1500', '', '12480', '', '25080', '', NULL, '608', '221', '', '6800', '', '', '', '', '', '7629', '17451', 'มกราคม 2565', '2022-01-28', '2022-01-31', 8);
INSERT INTO `tb_official` VALUES (166, '11100', '1500', '', '4800', '9600', '27000', '', NULL, '177', '', '', '', '', '', '', '', '', '177', '26823', 'มกราคม 2565', '2022-01-28', '2022-01-31', 9);
INSERT INTO `tb_official` VALUES (167, '11100', '1500', '', '11040', '', '23640', '', NULL, '', '93', '', '', '', '', '', '', '', '93', '23547', 'มกราคม 2565', '2022-01-28', '2022-01-31', 10);
INSERT INTO `tb_official` VALUES (168, '4500', '', '', '11160', '', '15660', '0', NULL, '', '29', '', '', '', '', '', '', '', '29', '15631', 'มกราคม 2565', '2022-01-28', '2022-01-31', 11);
INSERT INTO `tb_official` VALUES (169, '11100', '1500', '', '11400', '', '24000', '230', NULL, '300', '', '', '', '', '', '', '', '', '530', '23470', 'มกราคม 2565', '2022-01-28', '2022-01-31', 12);
INSERT INTO `tb_official` VALUES (170, '5400', '', '', '1440', '11250', '18090', '230', NULL, '612', '200', '', '7100', '', '', '', '400', '', '8542', '9548', 'มกราคม 2565', '2022-01-28', '2022-01-31', 13);
INSERT INTO `tb_official` VALUES (171, '11100', '1500', '', '7740', '', '20340', '', NULL, '', '', '', '', '', '', '', '', '', '0', '20340', 'มกราคม 2565', '2022-01-28', '2022-01-31', 14);
INSERT INTO `tb_official` VALUES (172, '33000', '3000', '5000', '9090', '', '50090', '0', NULL, '124', '283', '', '', '', '', '', '', '', '407', '49683', 'มกราคม 2565', '2022-01-28', '2022-01-31', 15);
INSERT INTO `tb_official` VALUES (173, '60000', '5000', '', '4000', '', '69000', '', NULL, '', '47', '', '', '', '', '', '', '', '47', '68953', 'มกราคม 2565', '2022-01-28', '2022-01-31', 16);
INSERT INTO `tb_official` VALUES (174, '11100', '1500', '', '0', '', '12600', '230', NULL, '', '', '', '', '', '', '', '', '', '230', '12370', 'มกราคม 2565', '2022-01-28', '2022-01-31', 17);
INSERT INTO `tb_official` VALUES (175, '11100', '1500', '', '13980', '', '26580', '', NULL, '6', '9', '', '', '', '', '', '', '', '15', '26565', 'มกราคม 2565', '2022-01-28', '2022-01-31', 18);
INSERT INTO `tb_official` VALUES (176, '11100', '1500', '', '1200', '', '13800', '', NULL, '', '', '', '6000', '', '', '', '', '', '6000', '7800', 'มกราคม 2565', '2022-01-28', '2022-01-31', 19);
INSERT INTO `tb_official` VALUES (177, '9000', '', '', '0', '1450', '10450', '230', NULL, '', '90', '', '', '', '', '50', '', '', '370', '10080', 'มกราคม 2565', '2022-01-28', '2022-01-31', 20);
INSERT INTO `tb_official` VALUES (178, '11100', '1500', '', '9780', '', '22380', '230', NULL, '', '', '', '', '', '2000', '', '', '', '2230', '20150', 'มกราคม 2565', '2022-01-28', '2022-01-31', 21);
INSERT INTO `tb_official` VALUES (179, '11100', '1500', '', '2100', '', '14700', '230', NULL, '24', '128', '', '', '', '', '', '', '', '382', '14318', 'มกราคม 2565', '2022-01-28', '2022-01-31', 22);
INSERT INTO `tb_official` VALUES (180, '11100', '1500', '', '9900', '', '22500', '230', NULL, '121', '', '', '9700', '', '', '', '', '', '10051', '12449', 'มกราคม 2565', '2022-01-28', '2022-01-31', 23);
INSERT INTO `tb_official` VALUES (181, '11100', '1500', '', '9320', '', '21920', '', NULL, '', '', '', '', '', '', '', '', '', '0', '21920', 'มกราคม 2565', '2022-01-28', '2022-01-31', 24);
INSERT INTO `tb_official` VALUES (182, '11100', '1500', '', '0', '10000', '22600', '230', NULL, '', '', '12900', '8600', '', '', '', '', '', '21730', '870', 'มกราคม 2565', '2022-01-28', '2022-01-31', 25);
INSERT INTO `tb_official` VALUES (183, '11100', '1500', '', '15440', '', '28040', '0', NULL, '223', '', '', '', '', '', '', '', '', '223', '27817', 'มกราคม 2565', '2022-01-28', '2022-01-31', 26);
INSERT INTO `tb_official` VALUES (184, '11100', '1500', '', '17760', '', '30360', '', NULL, '2552', '', '', '5500', '8700', '', '', '', '', '16752', '13608', 'มกราคม 2565', '2022-01-28', '2022-01-31', 27);
INSERT INTO `tb_official` VALUES (185, '11100', '2000', '', '0', '', '13100', '', NULL, '', '', '', '6800', '', '', '', '', '', '6800', '6300', 'มกราคม 2565', '2022-01-28', '2022-01-31', 28);
INSERT INTO `tb_official` VALUES (186, '11100', '1500', '', '8560', '', '21160', '', NULL, '612', '93', '', '6800', '', '', '', '', '', '7505', '13655', 'มกราคม 2565', '2022-01-28', '2022-01-31', 29);
INSERT INTO `tb_official` VALUES (187, '11100', '1500', '', '0', '', '12600', '', NULL, '', '', '', '', '', '', '', '', '', '0', '12600', 'มกราคม 2565', '2022-01-28', '2022-01-31', 30);
INSERT INTO `tb_official` VALUES (188, '120000', '10000', '10000', '14500', '', '154500', '', NULL, '', '', '', '', '', '', '', '300', '', '300', '154200', 'มกราคม 2565', '2022-01-28', '2022-01-31', 31);
INSERT INTO `tb_official` VALUES (189, '5400', '', '', '0', '', '5400', '', NULL, '', '', '', '', '', '', '', '', '', '0', '5400', 'มกราคม 2565', '2022-01-28', '2022-01-31', 32);
INSERT INTO `tb_official` VALUES (190, '5400', '', '', '1680', '', '7080', '', NULL, '418', '263', '', '', '', '', '', '', '', '681', '6399', 'มกราคม 2565', '2022-01-28', '2022-01-31', 33);
INSERT INTO `tb_official` VALUES (191, '10500', '1000', '', '23880', '', '35380', '', NULL, '5', '71', '', '', '', '', '', '', '', '76', '35304', 'มกราคม 2565', '2022-01-28', '2022-01-31', 34);
INSERT INTO `tb_official` VALUES (192, '10500', '1000', '', '0', '', '11500', '', NULL, '', '277', '', '', '', '', '', '', '', '277', '11223', 'มกราคม 2565', '2022-01-28', '2022-01-31', 35);
INSERT INTO `tb_official` VALUES (193, '11100', '1500', '', '10440', '', '23040', '', NULL, '', '82', '', '', '', '', '', '', '', '82', '22958', 'มกราคม 2565', '2022-01-28', '2022-01-31', 36);
INSERT INTO `tb_official` VALUES (194, '5400', '', '', '2040', '', '7440', '', NULL, '', '230', '', '3100', '', '', '', '', '', '3330', '4110', 'มกราคม 2565', '2022-01-28', '2022-01-31', 37);
INSERT INTO `tb_official` VALUES (195, '11100', '1500', '', '1650', '', '14250', '', NULL, '', '', '', '6800', '', '', '', '', '', '6800', '7450', 'มกราคม 2565', '2022-01-28', '2022-01-31', 38);
INSERT INTO `tb_official` VALUES (196, '5400', '', '', '0', '322087', '327487', '230', NULL, '204', '32', '', '8000', '', '', '50', '', '33700', '42216', '285271', 'มกราคม 2565', '2022-01-28', '2022-01-31', 39);
INSERT INTO `tb_official` VALUES (197, '5400', '', '', '7800', '', '13200', '230', NULL, '', '9', '', '', '', '', '', '', '', '239', '12961', 'มกราคม 2565', '2022-01-28', '2022-01-31', 40);
INSERT INTO `tb_official` VALUES (198, '11100', '1500', '', '5700', '', '18300', '920', NULL, '144', '40', '', '6800', '', '', '', '', '', '7904', '10396', 'มกราคม 2565', '2022-01-28', '2022-01-31', 41);
INSERT INTO `tb_official` VALUES (199, '10500', '1000', '', '19280', '', '30780', '298', NULL, '', '175', '', '', '', '', '', '', '', '473', '30307', 'มกราคม 2565', '2022-01-28', '2022-01-31', 42);
INSERT INTO `tb_official` VALUES (200, '11100', '1500', '0', '10200', '', '22800', '', NULL, '', '71', '11100', '5000', '4900', '', '', '', '', '21071', '1729', 'มกราคม 2565', '2022-01-28', '2022-01-31', 43);
INSERT INTO `tb_official` VALUES (201, '150000', '10000', '10000', '37050', '', '207050', '', NULL, '', '688', '', '', '', '', '', '300', '', '988', '206062', 'มกราคม 2565', '2022-01-28', '2022-01-31', 44);
INSERT INTO `tb_official` VALUES (202, '11100', '1500', '', '10960', '', '23560', '298', NULL, '162', '482', '', '7600', '', '', '', '', '', '8542', '15018', 'มกราคม 2565', '2022-01-28', '2022-01-31', 45);
INSERT INTO `tb_official` VALUES (203, '11100', '1500', '', '2400', '', '15000', '460', NULL, '', '', '', '', '5100', '', '', '300', '', '5860', '9140', 'มกราคม 2565', '2022-01-28', '2022-01-31', 46);
INSERT INTO `tb_official` VALUES (204, '11100', '1500', '', '6720', '', '19320', '298', NULL, '82', '499', '', '6800', '4200', '', '', '', '', '11879', '7441', 'มกราคม 2565', '2022-01-28', '2022-01-31', 47);
INSERT INTO `tb_official` VALUES (205, '5400', '', '', '2360', '', '7760', '', NULL, '162', '', '', '', '', '', '', '300', '', '462', '7298', 'มกราคม 2565', '2022-01-28', '2022-01-31', 48);
INSERT INTO `tb_official` VALUES (206, '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', 'มกราคม 2565', '2022-01-28', '2022-01-31', 49);
INSERT INTO `tb_official` VALUES (207, '30000', '3000', '5000', '7920', '', '45920', '230', NULL, '12', '', '', '', '', '', '', '', '', '242', '45678', 'มกราคม 2565', '2022-01-28', '2022-01-31', 50);
INSERT INTO `tb_official` VALUES (208, '9600', '1500', '', '9060', '', '20160', '', NULL, '', '9', '', '', '', '', '', '300', '', '309', '19851', 'มกราคม 2565', '2022-01-28', '2022-01-31', 51);
INSERT INTO `tb_official` VALUES (209, '7400', '1500', '', '0', '', '8900', '', NULL, '', '', '0', '', '', '', '', '', '', '0', '8900', 'มกราคม 2565', '2022-01-28', '2022-01-31', 52);
INSERT INTO `tb_official` VALUES (210, '11100', '1500', '', '3360', '', '15960', '230', NULL, '', '', '', '', '', '', '', '', '', '230', '15730', 'มกราคม 2565', '2022-01-28', '2022-01-31', 53);
INSERT INTO `tb_official` VALUES (211, '11100', '1500', '', '9140', '', '21740', '230', NULL, '', '', '', '', '', '', '', '', '', '230', '21510', 'มกราคม 2565', '2022-01-28', '2022-01-31', 54);
INSERT INTO `tb_official` VALUES (212, '11100', '1500', '', '5700', '', '18300', '', NULL, '340', '', '', '5800', '', '', '', '', '', '6140', '12160', 'มกราคม 2565', '2022-01-28', '2022-01-31', 55);
INSERT INTO `tb_official` VALUES (213, '11100', '1500', '', '13500', '', '26100', '', NULL, '55', '210', '9200', '4200', '', '', '', '', '', '13665', '12435', 'มกราคม 2565', '2022-01-28', '2022-01-31', 56);
INSERT INTO `tb_official` VALUES (214, '11100', '1500', '', '9240', '', '21840', '', NULL, '', '76', '9200', '', '', '', '', '', '', '9276', '12564', 'มกราคม 2565', '2022-01-28', '2022-01-31', 57);
INSERT INTO `tb_official` VALUES (215, '5400', '', '', '3360', '500', '9260', '', NULL, '147', '', '6100', '2900', '', '', '', '', '', '9147', '113', 'มกราคม 2565', '2022-01-28', '2022-01-31', 58);
INSERT INTO `tb_official` VALUES (216, '11100', '1500', '', '13980', '', '26580', '230', NULL, '1000', '76', '', '6100', '', '', '', '', '', '7406', '19174', 'มกราคม 2565', '2022-01-28', '2022-01-31', 59);
INSERT INTO `tb_official` VALUES (217, '11100', '1500', '', '18940', '', '31540', '', NULL, '', '', '5800', '', '', '', '', '', '', '5800', '25740', 'มกราคม 2565', '2022-01-28', '2022-01-31', 60);
INSERT INTO `tb_official` VALUES (218, '120000', '5000', '10000', '26650', '', '161650', '', NULL, '', '120', '', '', '', '', '', '', '', '120', '161530', 'มกราคม 2565', '2022-01-28', '2022-01-31', 61);
INSERT INTO `tb_official` VALUES (219, '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', 'มกราคม 2565', '2022-01-28', '2022-01-31', 62);
INSERT INTO `tb_official` VALUES (220, '9600', '1500', '', '11060', '', '22160', '', NULL, '128', '28', '', '6800', '', '', '', '', '', '6956', '15204', 'มกราคม 2565', '2022-01-28', '2022-01-31', 63);
INSERT INTO `tb_official` VALUES (221, '3600', '', '', '1770', '', '5370', '528', NULL, '', '', '', '', '', '', '50', '', '', '578', '4792', 'มกราคม 2565', '2022-01-28', '2022-01-31', 64);
INSERT INTO `tb_official` VALUES (222, '5400', '', '', '9540', '', '14940', '', NULL, '', '', '', '', '', '', '', '', '2340', '2340', '12600', 'มกราคม 2565', '2022-01-28', '2022-01-31', 65);
INSERT INTO `tb_official` VALUES (223, '120000', '5000', '', '0', '', '125000', '', NULL, '', '451', '', '', '', '', '', '', '', '451', '124549', 'มกราคม 2565', '2022-01-28', '2022-01-31', 66);
INSERT INTO `tb_official` VALUES (224, '120000', '5000', '', '4800', '', '129800', '', NULL, '', '450', '', '', '', '', '', '', '', '450', '129350', 'มกราคม 2565', '2022-01-28', '2022-01-31', 67);
INSERT INTO `tb_official` VALUES (225, '120000', '10000', '10000', '41250', '', '181250', '', NULL, '', '9', '', '', '', '', '', '400', '', '409', '180841', 'มกราคม 2565', '2022-01-28', '2022-01-31', 68);
INSERT INTO `tb_official` VALUES (226, '9600', '1500', '', '12600', '', '23700', '', NULL, '', '24', '', '', '', '', '', '', '', '24', '23676', 'มกราคม 2565', '2022-01-28', '2022-01-31', 69);
INSERT INTO `tb_official` VALUES (227, '4500', '', '', '13140', '', '17640', '', NULL, '36', '29', '', '', '', '', '', '', '', '65', '17575', 'มกราคม 2565', '2022-01-28', '2022-01-31', 70);
INSERT INTO `tb_official` VALUES (228, '6000', '', '', '5290', '', '11290', '298', NULL, '', '', '', '', '', '', '', '', '', '298', '10992', 'มกราคม 2565', '2022-01-28', '2022-01-31', 71);
INSERT INTO `tb_official` VALUES (229, '4500', '', '', '5220', '', '9720', '', NULL, '', '29', '', '', '', '', '', '', '', '29', '9691', 'มกราคม 2565', '2022-01-28', '2022-01-31', 72);
INSERT INTO `tb_official` VALUES (230, '4500', '', '', '0', '', '4500', '', NULL, '', '20', '', '', '', '', '', '', '', '20', '4480', 'มกราคม 2565', '2022-01-28', '2022-01-31', 73);
INSERT INTO `tb_official` VALUES (231, '30000', '3000', '', '', '', '33000', '230', NULL, '73', '294', '', '', '', '', '', '', '', '597', '32403', 'มกราคม 2565', '2022-01-28', '2022-01-31', 74);
INSERT INTO `tb_official` VALUES (232, '9600', '1500', '', '13740', '', '24840', '', NULL, '', '', '', '', '', '', '', '', '1647', '1647', '23193', 'มกราคม 2565', '2022-01-28', '2022-01-31', 75);
INSERT INTO `tb_official` VALUES (233, '4500', '', '', '5520', '', '10020', '', NULL, '40', '', '', '', '', '', '', '300', '', '340', '9680', 'มกราคม 2565', '2022-01-28', '2022-01-31', 76);
INSERT INTO `tb_official` VALUES (234, '9600', '1500', '', '14480', '', '25580', '', NULL, '', '42', '', '', '', '', '', '', '', '42', '25538', 'มกราคม 2565', '2022-01-28', '2022-01-31', 77);
INSERT INTO `tb_official` VALUES (235, '9600', '1500', '', '16140', '', '27240', '', NULL, '', '128', '', '', '', '', '', '', '1819', '1947', '25293', 'มกราคม 2565', '2022-01-28', '2022-01-31', 78);
INSERT INTO `tb_official` VALUES (236, '60000', '5000', '10000', '23600', '', '98600', '', NULL, '', '641', '', '', '', '', '', '', '', '641', '97959', 'มกราคม 2565', '2022-01-28', '2022-01-31', 162);
INSERT INTO `tb_official` VALUES (237, '50000', '10000', '10000', '0', '', '70000', '210', NULL, '', '26', '', '', '', '', '', '1000', '', '1236', '68764', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 1);
INSERT INTO `tb_official` VALUES (238, '11000', '3000', '5000', '9180', '', '28180', '', NULL, '', '', '', '16500', '', '', '', '', '', '16500', '11680', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 2);
INSERT INTO `tb_official` VALUES (239, '3700', '2000', '', '0', '18200', '23900', '', NULL, '', '', '18200', '', '', '', '', '', '300', '18500', '5400', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 3);
INSERT INTO `tb_official` VALUES (240, '3700', '1500', '', '10140', '4000', '19340', '210', NULL, '169', '', '18500', '', '', '', '', '', '100', '18979', '361', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 4);
INSERT INTO `tb_official` VALUES (241, '3700', '1500', '', '4500', '4000', '13700', '', NULL, '', '', '', '3800', '', '', '', '', '100', '3900', '9800', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 5);
INSERT INTO `tb_official` VALUES (242, '3700', '0', '', '0', '', '3700', '420', NULL, '358', '62', '', '', '', '2000', '', '600', '200', '3640', '60', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 6);
INSERT INTO `tb_official` VALUES (243, '3700', '2000', '', '600', '1000', '7300', '840', NULL, '', '', '', '6400', '', '', '', '', '', '7240', '60', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 7);
INSERT INTO `tb_official` VALUES (244, '3700', '1500', '', '9320', '', '14520', '', NULL, '184', '230', '', '6800', '', '', '', '', '', '7214', '7306', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 8);
INSERT INTO `tb_official` VALUES (245, '3700', '1500', '', '4200', '', '9400', '', NULL, '382', '', '', '', '', '', '', '', '200', '582', '8818', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 9);
INSERT INTO `tb_official` VALUES (246, '3700', '1500', '', '11120', '', '16320', '', NULL, '210', '112', '', '', '', '', '', '', '', '322', '15998', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 10);
INSERT INTO `tb_official` VALUES (247, '1500', '', '', '8580', '', '10080', '0', NULL, '', '38', '', '', '', '', '', '', '', '38', '10042', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 11);
INSERT INTO `tb_official` VALUES (248, '3700', '1500', '', '3600', '', '8800', '210', NULL, '', '', '', '', '', '', '', '', '', '210', '8590', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 12);
INSERT INTO `tb_official` VALUES (249, '1800', '', '', '240', '11250', '13290', '210', NULL, '618', '260', '', '7100', '', '', '', '400', '100', '8688', '4602', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 13);
INSERT INTO `tb_official` VALUES (250, '3700', '1500', '', '7800', '', '13000', '', NULL, '', '', '', '', '', '', '', '', '', '0', '13000', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 14);
INSERT INTO `tb_official` VALUES (251, '11000', '3000', '5000', '7020', '', '26020', '0', NULL, '171', '368', '', '', '', '', '', '', '', '539', '25481', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 15);
INSERT INTO `tb_official` VALUES (252, '20000', '5000', '', '0', '', '25000', '', NULL, '', '50', '', '', '', '', '', '', '', '50', '24950', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 16);
INSERT INTO `tb_official` VALUES (253, '3700', '1500', '', '0', '', '5200', '210', NULL, '', '', '', '', '', '', '', '', '', '210', '4990', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 17);
INSERT INTO `tb_official` VALUES (254, '3700', '1500', '', '9540', '12000', '26740', '', NULL, '20', '', '', '', '', '', '', '', '', '20', '26720', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 18);
INSERT INTO `tb_official` VALUES (255, '3700', '1500', '', '1800', '', '7000', '', NULL, '', '', '', '6000', '', '', '', '', '', '6000', '1000', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 19);
INSERT INTO `tb_official` VALUES (256, '3000', '', '', '840', '1450', '5290', '210', NULL, '', '93', '', '', '', '', '50', '', '', '353', '4937', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 20);
INSERT INTO `tb_official` VALUES (257, '3700', '1500', '', '10500', '', '15700', '210', NULL, '', '', '', '', '', '2000', '', '', '', '2210', '13490', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 21);
INSERT INTO `tb_official` VALUES (258, '3700', '1500', '', '3300', '', '8500', '210', NULL, '', '16', '', '', '', '', '', '', '', '226', '8274', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 22);
INSERT INTO `tb_official` VALUES (259, '3700', '1500', '', '7800', '', '13000', '210', NULL, '46', '', '', '9700', '', '', '', '', '', '9956', '3044', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 23);
INSERT INTO `tb_official` VALUES (260, '3700', '1500', '', '10320', '', '15520', '', NULL, '', '', '', '', '', '', '', '', '', '0', '15520', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 24);
INSERT INTO `tb_official` VALUES (261, '3700', '1500', '', '600', '17000', '22800', '210', NULL, '', '', '12900', '8600', '', '', '', '', '100', '21810', '990', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 25);
INSERT INTO `tb_official` VALUES (262, '3700', '1500', '', '13860', '', '19060', '0', NULL, '563', '', '', '', '', '', '', '', '', '563', '18497', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 26);
INSERT INTO `tb_official` VALUES (263, '3700', '1500', '', '15640', '', '20840', '', NULL, '2673', '', '', '5500', '8700', '', '', '', '100', '16973', '3867', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 27);
INSERT INTO `tb_official` VALUES (264, '0', '2000', '', '600', '5000', '7600', '', NULL, '724', '', '', '6800', '', '', '', '', '', '7524', '76', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 28);
INSERT INTO `tb_official` VALUES (265, '3700', '1500', '', '5800', '', '11000', '', NULL, '102', '79', '', '6800', '', '', '', '', '', '6981', '4019', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 29);
INSERT INTO `tb_official` VALUES (266, '3700', '1500', '', '0', '', '5200', '', NULL, '', '', '', '', '', '', '', '', '', '0', '5200', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 30);
INSERT INTO `tb_official` VALUES (267, '40000', '10000', '10000', '25100', '', '85100', '', NULL, '', '', '', '', '', '', '', '300', '340', '640', '84460', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 31);
INSERT INTO `tb_official` VALUES (268, '1800', '', '', '0', '', '1800', '', NULL, '', '', '', '', '', '', '', '', '100', '100', '1700', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 32);
INSERT INTO `tb_official` VALUES (269, '1800', '', '', '3840', '', '5640', '', NULL, '20', '314', '', '', '', '', '', '', '', '334', '5306', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 33);
INSERT INTO `tb_official` VALUES (270, '3500', '1000', '', '17640', '', '22140', '', NULL, '84', '90', '', '', '', '', '', '', '', '174', '21966', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 34);
INSERT INTO `tb_official` VALUES (271, '3500', '1000', '', '0', '', '4500', '', NULL, '', '351', '', '', '', '', '', '', '', '351', '4149', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 35);
INSERT INTO `tb_official` VALUES (272, '3700', '1500', '', '11100', '', '16300', '', NULL, '88', '9', '', '', '', '', '', '', '100', '197', '16103', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 36);
INSERT INTO `tb_official` VALUES (273, '1800', '', '', '3600', '', '5400', '', NULL, '', '250', '', '3100', '', '', '', '', '', '3350', '2050', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 37);
INSERT INTO `tb_official` VALUES (274, '3700', '1500', '', '1500', '200', '6900', '', NULL, '', '', '', '6800', '', '', '', '', '100', '6900', '0', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 38);
INSERT INTO `tb_official` VALUES (275, '', '', '', '0', '309985', '309985', '210', NULL, '', '38', '', '8000', '', '', '50', '', '60400', '68698', '241287', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 39);
INSERT INTO `tb_official` VALUES (276, '1800', '', '', '4320', '', '6120', '210', NULL, '', '9', '', '', '', '', '', '', '200', '419', '5701', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 40);
INSERT INTO `tb_official` VALUES (277, '3700', '1500', '', '5400', '', '10600', '840', NULL, '264', '42', '', '6800', '', '', '', '', '100', '8046', '2554', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 41);
INSERT INTO `tb_official` VALUES (278, '3500', '1000', '', '23580', '', '28080', '', NULL, '', '286', '', '', '', '', '', '', '340', '626', '27454', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 42);
INSERT INTO `tb_official` VALUES (279, '3700', '1500', '0', '7880', '10000', '23080', '', NULL, '', '161', '11100', '5000', '4900', '', '', '', '', '21161', '1919', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 43);
INSERT INTO `tb_official` VALUES (280, '50000', '10000', '10000', '30600', '', '100600', '', NULL, '', '1057', '', '', '', '', '', '300', '', '1357', '99243', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 44);
INSERT INTO `tb_official` VALUES (281, '3700', '1500', '', '8760', '', '13960', '', NULL, '220', '444', '', '7600', '', '', '', '', '100', '8704', '5256', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 45);
INSERT INTO `tb_official` VALUES (282, '3700', '1500', '', '2400', '', '7600', '420', NULL, '', '', '', '', '5100', '', '', '300', '', '5820', '1780', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 46);
INSERT INTO `tb_official` VALUES (283, '3700', '1500', '', '8640', '', '13840', '', NULL, '752', '1030', '', '6800', '4200', '', '', '', '340', '13122', '718', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 47);
INSERT INTO `tb_official` VALUES (284, '1800', '', '', '3940', '', '5740', '', NULL, '', '', '', '', '', '', '', '300', '', '300', '5440', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 48);
INSERT INTO `tb_official` VALUES (285, '10000', '3000', '5000', '7920', '', '25920', '210', NULL, '30', '', '', '', '', '', '', '', '440', '680', '25240', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 50);
INSERT INTO `tb_official` VALUES (286, '3200', '1500', '', '8720', '', '13420', '', NULL, '224', '9', '', '', '', '', '', '300', '', '533', '12887', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 51);
INSERT INTO `tb_official` VALUES (287, '0', '0', '', '0', '', '0', '', NULL, '', '', '0', '', '', '', '', '', '', '0', '0', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 52);
INSERT INTO `tb_official` VALUES (288, '3700', '1500', '', '4640', '', '9840', '210', NULL, '', '', '', '', '', '', '', '', '100', '310', '9530', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 53);
INSERT INTO `tb_official` VALUES (289, '3700', '1500', '', '11280', '', '16480', '210', NULL, '', '', '', '', '', '', '', '', '100', '310', '16170', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 54);
INSERT INTO `tb_official` VALUES (290, '3700', '1500', '', '5400', '', '10600', '', NULL, '259', '', '', '5800', '', '', '', '', '', '6059', '4541', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 55);
INSERT INTO `tb_official` VALUES (291, '3700', '1500', '', '12460', '', '17660', '', NULL, '', '202', '9200', '4200', '', '', '', '', '', '13602', '4058', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 56);
INSERT INTO `tb_official` VALUES (292, '3700', '1500', '', '10980', '', '16180', '', NULL, '', '69', '9200', '', '', '', '', '', '', '9269', '6911', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 57);
INSERT INTO `tb_official` VALUES (293, '1800', '', '', '3060', '', '4860', '', NULL, '239', '', '', '', '', '', '', '', '100', '339', '4521', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 58);
INSERT INTO `tb_official` VALUES (294, '3700', '1500', '', '11320', '', '16520', '210', NULL, '1020', '106', '', '6100', '', '', '', '', '', '7436', '9084', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 59);
INSERT INTO `tb_official` VALUES (295, '3700', '1500', '', '12600', '', '17800', '', NULL, '', '', '5800', '', '', '', '', '', '100', '5900', '11900', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 60);
INSERT INTO `tb_official` VALUES (296, '40000', '5000', '10000', '32850', '', '87850', '', NULL, '10', '238', '', '', '', '', '', '', '', '248', '87602', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 61);
INSERT INTO `tb_official` VALUES (297, '3200', '1500', '', '13840', '', '18540', '', NULL, '', '40', '', '6800', '', '', '', '', '100', '6940', '11600', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 63);
INSERT INTO `tb_official` VALUES (298, '1200', '', '', '1440', '', '2640', '210', NULL, '', '', '', '', '', '', '50', '', '340', '600', '2040', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 64);
INSERT INTO `tb_official` VALUES (299, '1800', '', '', '9420', '', '11220', '', NULL, '', '', '', '', '', '', '', '', '2300', '2300', '8920', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 65);
INSERT INTO `tb_official` VALUES (300, '40000', '5000', '', '0', '', '45000', '', NULL, '', '528', '', '', '', '', '', '', '', '528', '44472', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 66);
INSERT INTO `tb_official` VALUES (301, '40000', '5000', '', '5600', '', '50600', '', NULL, '', '528', '', '', '', '', '', '', '', '528', '50072', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 67);
INSERT INTO `tb_official` VALUES (302, '40000', '10000', '10000', '16000', '', '76000', '', NULL, '', '40', '', '', '', '', '', '400', '', '440', '75560', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 68);
INSERT INTO `tb_official` VALUES (303, '3200', '1500', '', '9360', '', '14060', '', NULL, '', '34', '', '', '', '', '', '', '', '34', '14026', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 69);
INSERT INTO `tb_official` VALUES (304, '1500', '', '', '10560', '', '12060', '', NULL, '6', '44', '', '', '', '', '', '', '', '50', '12010', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 70);
INSERT INTO `tb_official` VALUES (305, '2000', '', '', '3160', '', '5160', '0', NULL, '', '', '', '', '', '', '', '', '340', '340', '4820', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 71);
INSERT INTO `tb_official` VALUES (306, '1500', '', '', '4920', '', '6420', '', NULL, '', '136', '', '', '', '', '', '', '340', '476', '5944', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 72);
INSERT INTO `tb_official` VALUES (307, '1500', '', '', '0', '', '1500', '', NULL, '', '128', '', '', '', '', '', '', '', '128', '1372', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 73);
INSERT INTO `tb_official` VALUES (308, '10000', '3000', '', '', '', '13000', '210', NULL, '', '532', '', '', '', '', '', '', '340', '1082', '11918', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 74);
INSERT INTO `tb_official` VALUES (309, '3200', '1500', '', '11800', '', '16500', '', NULL, '', '', '', '', '', '', '', '', '1647', '1647', '14853', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 75);
INSERT INTO `tb_official` VALUES (310, '1500', '', '', '2940', '', '4440', '', NULL, '', '', '', '', '', '', '', '300', '', '300', '4140', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 76);
INSERT INTO `tb_official` VALUES (311, '3200', '1500', '', '10080', '', '14780', '', NULL, '', '55', '', '', '', '', '', '', '', '55', '14725', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 77);
INSERT INTO `tb_official` VALUES (312, '3200', '1500', '', '1680', '', '6380', '', NULL, '', '93', '', '', '', '', '', '', '1819', '1912', '4468', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 78);
INSERT INTO `tb_official` VALUES (313, '20000', '5000', '10000', '28800', '', '63800', '', NULL, '', '719', '', '', '', '', '', '', '', '719', '63081', 'กุมภาพันธ์ 2565', '2022-02-24', '2022-02-23', 162);
INSERT INTO `tb_official` VALUES (314, '50000', '20000', '10000', '0', '', '80000', '210', '', '', '26', '', '', '', '', '', '1000', '', '1236', '78764', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 1);
INSERT INTO `tb_official` VALUES (315, '11000', '6000', '5000', '7200', '', '29200', '', NULL, '', '', '', '16500', '', '', '', '', '', '16500', '12700', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 2);
INSERT INTO `tb_official` VALUES (316, '3700', '4000', '', '0', '', '7700', '', NULL, '', '', '', '', '', '', '', '', '', '0', '7700', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 3);
INSERT INTO `tb_official` VALUES (317, '3700', '3000', '', '10520', '2000', '19220', '210', NULL, '452', '', '18500', '', '', '', '', '', '', '19162', '58', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 4);
INSERT INTO `tb_official` VALUES (318, '3700', '3000', '', '3000', '', '9700', '', NULL, '453', '', '', '3800', '', '', '', '', '', '4253', '5447', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 5);
INSERT INTO `tb_official` VALUES (319, '3700', '3000', '', '0', '', '6700', '420', NULL, '1781', '291', '', '', '', '2000', '', '600', '', '5092', '1608', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 6);
INSERT INTO `tb_official` VALUES (320, '3700', '4000', '', '3300', '1000', '12000', '840', NULL, '112', '', '', '6400', '', '', '', '', '', '7352', '4648', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 7);
INSERT INTO `tb_official` VALUES (321, '3700', '3000', '', '13320', '', '20020', '', NULL, '120', '248', '', '6800', '', '', '', '', '', '7168', '12852', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 8);
INSERT INTO `tb_official` VALUES (322, '3700', '3000', '', '2400', '', '9100', '', NULL, '310', '', '', '', '', '', '', '', '', '310', '8790', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 9);
INSERT INTO `tb_official` VALUES (323, '3700', '3000', '', '11340', '', '18040', '', NULL, '252', '82', '', '', '', '', '', '', '', '334', '17706', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 10);
INSERT INTO `tb_official` VALUES (324, '1500', '', '', '10080', '', '11580', '0', NULL, '', '18', '', '', '', '', '', '', '', '18', '11562', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 11);
INSERT INTO `tb_official` VALUES (325, '3700', '3000', '', '3600', '', '10300', '210', NULL, '', '', '', '', '', '', '', '', '', '210', '10090', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 12);
INSERT INTO `tb_official` VALUES (326, '1800', '', '', '0', '11250', '13050', '210', NULL, '295', '227', '', '7100', '', '', '', '400', '', '8232', '4818', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 13);
INSERT INTO `tb_official` VALUES (327, '3700', '3000', '', '6160', '', '12860', '', NULL, '', '', '', '', '', '', '', '', '', '0', '12860', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 14);
INSERT INTO `tb_official` VALUES (328, '11000', '6000', '5000', '5850', '', '27850', '0', NULL, '30', '320', '', '', '', '', '', '', '', '350', '27500', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 15);
INSERT INTO `tb_official` VALUES (329, '20000', '10000', '', '0', '', '30000', '', NULL, '', '38', '', '', '', '', '', '', '', '38', '29962', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 16);
INSERT INTO `tb_official` VALUES (330, '3700', '3000', '', '0', '', '6700', '210', NULL, '', '', '', '', '', '', '', '', '', '210', '6490', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 17);
INSERT INTO `tb_official` VALUES (331, '3700', '3000', '', '9240', '', '15940', '', NULL, '30', '', '', '', '', '', '', '', '', '30', '15910', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 18);
INSERT INTO `tb_official` VALUES (332, '3700', '3000', '', '0', '', '6700', '', NULL, '', '', '', '6000', '', '', '', '', '', '6000', '700', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 19);
INSERT INTO `tb_official` VALUES (333, '3000', '', '', '0', '1450', '4450', '210', NULL, '', '69', '', '', '', '', '50', '', '', '329', '4121', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 20);
INSERT INTO `tb_official` VALUES (334, '3700', '3000', '', '10560', '', '17260', '210', NULL, '', '', '', '', '', '2000', '', '', '', '2210', '15050', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 21);
INSERT INTO `tb_official` VALUES (335, '3700', '3000', '', '4500', '', '11200', '210', NULL, '253', '248', '', '', '', '', '', '', '', '711', '10489', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 22);
INSERT INTO `tb_official` VALUES (336, '3700', '3000', '', '7800', '', '14500', '210', NULL, '50', '', '', '9700', '', '', '', '', '', '9960', '4540', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 23);
INSERT INTO `tb_official` VALUES (337, '3700', '3000', '', '9820', '', '16520', '', NULL, '12', '', '', '', '', '', '', '', '', '12', '16508', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 24);
INSERT INTO `tb_official` VALUES (338, '3700', '3000', '', '0', '16000', '22700', '210', NULL, '', '', '12900', '8600', '', '', '', '', '', '21710', '990', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 25);
INSERT INTO `tb_official` VALUES (339, '3700', '3000', '', '11920', '', '18620', '0', NULL, '105', '', '', '', '', '', '', '', '', '105', '18515', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 26);
INSERT INTO `tb_official` VALUES (340, '3700', '3000', '', '16260', '', '22960', '', NULL, '2012', '', '', '5500', '8700', '', '', '', '', '16212', '6748', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 27);
INSERT INTO `tb_official` VALUES (341, '0', '2000', '', '1800', '4000', '7800', '', NULL, '361', '', '', '6800', '', '', '', '', '', '7161', '639', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 28);
INSERT INTO `tb_official` VALUES (342, '3700', '3000', '', '8840', '', '15540', '', NULL, '391', '59', '', '6800', '', '', '', '', '', '7250', '8290', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 29);
INSERT INTO `tb_official` VALUES (343, '3700', '3000', '', '0', '', '6700', '', NULL, '', '', '', '', '', '', '', '', '', '0', '6700', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 30);
INSERT INTO `tb_official` VALUES (344, '40000', '20000', '10000', '21950', '', '91950', '', NULL, '', '', '', '', '', '', '', '300', '340', '640', '91310', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 31);
INSERT INTO `tb_official` VALUES (345, '1800', '', '', '0', '', '1800', '', NULL, '', '', '', '', '', '', '', '', '', '0', '1800', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 32);
INSERT INTO `tb_official` VALUES (346, '1800', '', '', '2880', '', '4680', '', NULL, '496', '563', '', '', '', '', '', '', '', '1059', '3621', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 33);
INSERT INTO `tb_official` VALUES (347, '3500', '2000', '', '22640', '', '28140', '', NULL, '', '90', '', '', '', '', '', '', '', '90', '28050', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 34);
INSERT INTO `tb_official` VALUES (348, '3500', '2000', '', '0', '', '5500', '', NULL, '', '345', '', '', '', '', '', '', '', '345', '5155', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 35);
INSERT INTO `tb_official` VALUES (349, '3700', '3000', '', '8160', '', '14860', '', NULL, '56', '216', '', '', '', '', '', '', '', '272', '14588', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 36);
INSERT INTO `tb_official` VALUES (350, '1800', '', '', '3120', '', '4920', '', NULL, '', '221', '', '3100', '', '', '', '', '', '3321', '1599', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 37);
INSERT INTO `tb_official` VALUES (351, '3700', '3000', '', '1500', '', '8200', '', NULL, '', '', '', '6800', '', '', '', '', '', '6800', '1400', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 38);
INSERT INTO `tb_official` VALUES (352, '', '', '', '0', '292777.75', '292777.75', '210', NULL, '', '32', '', '8000', '', '', '50', '', '36000', '44292', '248485.75', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 39);
INSERT INTO `tb_official` VALUES (353, '1800', '', '', '2810', '', '4610', '210', NULL, '', '9', '', '', '', '', '', '', '', '219', '4391', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 40);
INSERT INTO `tb_official` VALUES (354, '3700', '3000', '', '6180', '', '12880', '840', NULL, '304', '48', '', '6800', '', '', '', '', '', '7992', '4888', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 41);
INSERT INTO `tb_official` VALUES (355, '3500', '2000', '', '23910', '', '29410', '', NULL, '250', '291', '', '', '', '', '', '', '340', '881', '28529', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 42);
INSERT INTO `tb_official` VALUES (356, '3700', '3000', '0', '6600', '9000', '22300', '', NULL, '', '79', '11100', '5000', '4900', '', '', '', '', '21079', '1221', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 43);
INSERT INTO `tb_official` VALUES (357, '50000', '20000', '10000', '22400', '', '102400', '', NULL, '', '945', '', '', '', '', '', '300', '', '1245', '101155', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 44);
INSERT INTO `tb_official` VALUES (358, '3700', '3000', '', '7800', '', '14500', '', NULL, '', '371', '', '7600', '', '', '', '', '340', '8311', '6189', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 45);
INSERT INTO `tb_official` VALUES (359, '3700', '3000', '', '1800', '', '8500', '420', NULL, '294', '', '', '', '5100', '', '', '300', '', '6114', '2386', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 46);
INSERT INTO `tb_official` VALUES (360, '3700', '3000', '', '9960', '', '16660', '', NULL, '', '830', '', '6800', '4200', '', '', '', '340', '12170', '4490', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 47);
INSERT INTO `tb_official` VALUES (361, '1800', '', '', '2660', '', '4460', '', NULL, '24', '', '', '', '', '', '', '300', '', '324', '4136', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 48);
INSERT INTO `tb_official` VALUES (362, '10000', '6000', '5000', '7830', '', '28830', '210', NULL, '', '', '', '', '', '', '', '', '340', '550', '28280', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 50);
INSERT INTO `tb_official` VALUES (363, '3200', '3000', '', '6260', '', '12460', '', NULL, '318', '9', '', '', '', '', '', '300', '', '627', '11833', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 51);
INSERT INTO `tb_official` VALUES (364, '0', '0', '', '0', '', '0', '', NULL, '', '', '0', '', '', '', '', '', '', '0', '0', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 52);
INSERT INTO `tb_official` VALUES (365, '3700', '3000', '', '2400', '', '9100', '210', NULL, '', '', '', '', '', '', '', '', '', '210', '8890', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 53);
INSERT INTO `tb_official` VALUES (366, '3700', '3000', '', '10460', '', '17160', '210', NULL, '', '', '', '', '', '', '', '', '', '210', '16950', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 54);
INSERT INTO `tb_official` VALUES (367, '3700', '3000', '', '5100', '', '11800', '', NULL, '305', '', '', '5800', '', '', '', '', '', '6105', '5695', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 55);
INSERT INTO `tb_official` VALUES (368, '3700', '3000', '', '11380', '', '18080', '', NULL, '', '147', '9200', '4200', '', '', '', '', '', '13547', '4533', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 56);
INSERT INTO `tb_official` VALUES (369, '3700', '3000', '', '7860', '', '14560', '', NULL, '', '76', '9200', '', '', '', '', '', '', '9276', '5284', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 57);
INSERT INTO `tb_official` VALUES (370, '1800', '', '', '2990', '', '4790', '', NULL, '697', '', '', '2900', '', '', '', '', '', '3597', '1193', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 58);
INSERT INTO `tb_official` VALUES (371, '3700', '3000', '', '9700', '', '16400', '210', NULL, '1041', '84', '', '6100', '', '', '', '', '', '7435', '8965', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 59);
INSERT INTO `tb_official` VALUES (372, '3700', '3000', '', '15440', '', '22140', '', NULL, '', '', '5800', '', '', '', '', '', '', '5800', '16340', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 60);
INSERT INTO `tb_official` VALUES (373, '40000', '10000', '10000', '25550', '', '85550', '', NULL, '20', '238', '', '', '', '', '', '', '', '258', '85292', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 61);
INSERT INTO `tb_official` VALUES (374, '3200', '3000', '', '10260', '', '16460', '', NULL, '', '34', '', '6800', '', '', '', '', '', '6834', '9626', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 63);
INSERT INTO `tb_official` VALUES (375, '1200', '', '', '2940', '', '4140', '210', NULL, '', '', '', '', '', '', '50', '', '340', '600', '3540', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 64);
INSERT INTO `tb_official` VALUES (376, '1800', '', '', '8280', '', '10080', '', NULL, '', '', '', '', '', '', '', '', '2300', '2300', '7780', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 65);
INSERT INTO `tb_official` VALUES (377, '40000', '10000', '', '0', '', '50000', '', NULL, '', '466', '', '', '', '', '', '', '', '466', '49534', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 66);
INSERT INTO `tb_official` VALUES (378, '40000', '10000', '', '5600', '', '55600', '', NULL, '', '466', '', '', '', '', '', '', '', '466', '55134', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 67);
INSERT INTO `tb_official` VALUES (379, '40000', '20000', '10000', '28050', '', '98050', '', NULL, '', '87', '', '', '', '', '', '400', '', '487', '97563', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 68);
INSERT INTO `tb_official` VALUES (380, '3200', '3000', '', '7440', '', '13640', '', NULL, '', '28', '', '', '', '', '', '', '', '28', '13612', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 69);
INSERT INTO `tb_official` VALUES (381, '1500', '', '', '10020', '', '11520', '', NULL, '127', '42', '', '', '', '', '', '', '', '169', '11351', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 70);
INSERT INTO `tb_official` VALUES (382, '2000', '', '', '4440', '', '6440', '0', NULL, '24', '', '', '', '', '', '', '', '340', '364', '6076', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 71);
INSERT INTO `tb_official` VALUES (383, '1500', '', '', '3960', '', '5460', '', NULL, '', '24', '', '', '', '', '', '', '340', '364', '5096', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 72);
INSERT INTO `tb_official` VALUES (384, '1500', '', '', '0', '', '1500', '', NULL, '', '145', '', '', '', '', '', '', '', '145', '1355', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 73);
INSERT INTO `tb_official` VALUES (385, '10000', '6000', '', '', '', '16000', '210', NULL, '164', '556', '', '', '', '', '', '', '340', '1270', '14730', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 74);
INSERT INTO `tb_official` VALUES (386, '3200', '3000', '', '9980', '', '16180', '', NULL, '', '', '', '', '', '', '', '', '1647', '1647', '14533', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 75);
INSERT INTO `tb_official` VALUES (387, '1500', '', '', '4260', '', '5760', '', NULL, '42', '', '', '', '', '', '', '300', '', '342', '5418', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 76);
INSERT INTO `tb_official` VALUES (388, '3200', '3000', '', '14920', '', '21120', '', NULL, '', '87', '', '', '', '', '', '', '', '87', '21033', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 77);
INSERT INTO `tb_official` VALUES (389, '3200', '3000', '', '0', '', '6200', '', NULL, '', '68', '', '', '', '', '', '', '1819', '1887', '4313', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 78);
INSERT INTO `tb_official` VALUES (390, '20000', '10000', '10000', '19200', '', '59200', '', NULL, '', '627', '', '', '', '', '', '', '', '627', '58573', 'มีนาคม 2565', '2022-03-29', '2022-03-28', 162);
INSERT INTO `tb_official` VALUES (391, '50000', '10000', '10000', '0', '', '70000', '210', NULL, '', '29', '', '', '', '', '', '1000', '', '1239', '68761', 'เมษายน 2565', '2022-04-27', '2022-04-26', 1);
INSERT INTO `tb_official` VALUES (392, '11000', '3000', '5000', '10215', '', '29215', '', NULL, '', '', '', '16500', '', '', '', '', '', '16500', '12715', 'เมษายน 2565', '2022-04-27', '2022-04-26', 2);
INSERT INTO `tb_official` VALUES (393, '3700', '2000', '', '0', '18200', '23900', '', NULL, '', '', '18200', '', '', '', '', '', '', '18200', '5700', 'เมษายน 2565', '2022-04-27', '2022-04-26', 3);
INSERT INTO `tb_official` VALUES (394, '3700', '1500', '', '13980', '', '19180', '210', NULL, '58', '', '18500', '', '', '', '', '', '', '18768', '412', 'เมษายน 2565', '2022-04-27', '2022-04-26', 4);
INSERT INTO `tb_official` VALUES (395, '3700', '1500', '', '2250', '', '7450', '', NULL, '86', '', '', '3800', '', '', '', '', '', '3886', '3564', 'เมษายน 2565', '2022-04-27', '2022-04-26', 5);
INSERT INTO `tb_official` VALUES (396, '3700', '1500', '', '0', '', '5200', '420', NULL, '105', '583', '', '', '', '2000', '', '800', '1292', '5200', '0', 'เมษายน 2565', '2022-04-27', '2022-04-26', 6);
INSERT INTO `tb_official` VALUES (397, '3700', '2000', '', '6560', '', '12260', '840', NULL, '', '', '', '6400', '', '', '', '', '', '7240', '5020', 'เมษายน 2565', '2022-04-27', '2022-04-26', 7);
INSERT INTO `tb_official` VALUES (398, '3700', '1500', '', '11740', '', '16940', '', NULL, '', '156', '', '6800', '', '', '', '', '', '6956', '9984', 'เมษายน 2565', '2022-04-27', '2022-04-26', 8);
INSERT INTO `tb_official` VALUES (399, '3700', '1500', '', '6900', '', '12100', '', NULL, '30', '', '', '', '', '', '', '', '', '30', '12070', 'เมษายน 2565', '2022-04-27', '2022-04-26', 9);
INSERT INTO `tb_official` VALUES (400, '3700', '1500', '', '14560', '', '19760', '', NULL, '211', '98', '', '', '', '', '', '', '', '309', '19451', 'เมษายน 2565', '2022-04-27', '2022-04-26', 10);
INSERT INTO `tb_official` VALUES (401, '1500', '', '', '8640', '', '10140', '0', NULL, '', '26', '', '', '', '', '', '', '', '26', '10114', 'เมษายน 2565', '2022-04-27', '2022-04-26', 11);
INSERT INTO `tb_official` VALUES (402, '3700', '1500', '', '8100', '', '13300', '210', NULL, '315', '', '', '', '', '', '', '', '', '525', '12775', 'เมษายน 2565', '2022-04-27', '2022-04-26', 12);
INSERT INTO `tb_official` VALUES (403, '1800', '', '', '0', '11250', '13050', '210', NULL, '276', '291', '', '7100', '', '', '', '0', '', '7877', '5173', 'เมษายน 2565', '2022-04-27', '2022-04-26', 13);
INSERT INTO `tb_official` VALUES (404, '3700', '1500', '', '11160', '', '16360', '', NULL, '', '', '', '', '', '', '', '', '', '0', '16360', 'เมษายน 2565', '2022-04-27', '2022-04-26', 14);
INSERT INTO `tb_official` VALUES (405, '11000', '3000', '5000', '9495', '', '28495', '0', NULL, '42', '326', '', '', '', '', '', '', '', '368', '28127', 'เมษายน 2565', '2022-04-27', '2022-04-26', 15);
INSERT INTO `tb_official` VALUES (406, '20000', '5000', '', '0', '', '25000', '', NULL, '', '38', '', '', '', '', '', '', '', '38', '24962', 'เมษายน 2565', '2022-04-27', '2022-04-26', 16);
INSERT INTO `tb_official` VALUES (407, '3700', '1500', '', '0', '', '5200', '210', NULL, '', '', '', '', '', '', '', '', '', '210', '4990', 'เมษายน 2565', '2022-04-27', '2022-04-26', 17);
INSERT INTO `tb_official` VALUES (408, '3700', '1500', '', '12400', '', '17600', '', NULL, '164', '9', '', '', '', '', '', '', '', '173', '17427', 'เมษายน 2565', '2022-04-27', '2022-04-26', 18);
INSERT INTO `tb_official` VALUES (409, '3700', '1500', '', '3900', '', '9100', '', NULL, '', '', '', '6000', '', '', '', '', '', '6000', '3100', 'เมษายน 2565', '2022-04-27', '2022-04-26', 19);
INSERT INTO `tb_official` VALUES (410, '3000', '', '', '0', '1450', '4450', '210', NULL, '', '69', '', '', '', '', '50', '', '', '329', '4121', 'เมษายน 2565', '2022-04-27', '2022-04-26', 20);
INSERT INTO `tb_official` VALUES (411, '3700', '1500', '', '16720', '', '21920', '210', NULL, '', '', '', '', '', '2000', '', '', '', '2210', '19710', 'เมษายน 2565', '2022-04-27', '2022-04-26', 21);
INSERT INTO `tb_official` VALUES (412, '3700', '1500', '', '6600', '3000', '14800', '210', NULL, '', '311', '', '', '', '', '', '', '', '521', '14279', 'เมษายน 2565', '2022-04-27', '2022-04-26', 22);
INSERT INTO `tb_official` VALUES (413, '3700', '1500', '', '12300', '', '17500', '210', NULL, '72', '', '', '9700', '', '', '', '', '', '9982', '7518', 'เมษายน 2565', '2022-04-27', '2022-04-26', 23);
INSERT INTO `tb_official` VALUES (414, '3700', '1500', '', '8140', '', '13340', '', NULL, '', '', '', '', '', '', '', '', '', '0', '13340', 'เมษายน 2565', '2022-04-27', '2022-04-26', 24);
INSERT INTO `tb_official` VALUES (415, '3700', '1500', '', '600', '17000', '22800', '210', NULL, '', '', '12900', '8600', '', '', '', '', '', '21710', '1090', 'เมษายน 2565', '2022-04-27', '2022-04-26', 25);
INSERT INTO `tb_official` VALUES (416, '3700', '1500', '', '15200', '', '20400', '0', NULL, '', '', '', '', '', '', '', '', '', '0', '20400', 'เมษายน 2565', '2022-04-27', '2022-04-26', 26);
INSERT INTO `tb_official` VALUES (417, '3700', '1500', '', '13480', '', '18680', '', NULL, '1000', '', '', '5500', '8700', '', '', '', '', '15200', '3480', 'เมษายน 2565', '2022-04-27', '2022-04-26', 27);
INSERT INTO `tb_official` VALUES (418, '3700', '2000', '', '0', '2000', '7700', '', NULL, '360', '', '', '6800', '', '', '', '', '', '7160', '540', 'เมษายน 2565', '2022-04-27', '2022-04-26', 28);
INSERT INTO `tb_official` VALUES (419, '3700', '1500', '', '10360', '', '15560', '', NULL, '632', '48', '', '6800', '', '', '', '', '', '7480', '8080', 'เมษายน 2565', '2022-04-27', '2022-04-26', 29);
INSERT INTO `tb_official` VALUES (420, '3700', '1500', '', '3900', '', '9100', '', NULL, '', '', '', '', '', '', '', '', '', '0', '9100', 'เมษายน 2565', '2022-04-27', '2022-04-26', 30);
INSERT INTO `tb_official` VALUES (421, '40000', '10000', '10000', '31650', '', '91650', '', NULL, '', '', '', '', '', '', '', '300', '340', '640', '91010', 'เมษายน 2565', '2022-04-27', '2022-04-26', 31);
INSERT INTO `tb_official` VALUES (422, '1800', '', '', '0', '', '1800', '', NULL, '', '', '', '', '', '', '', '', '340', '340', '1460', 'เมษายน 2565', '2022-04-27', '2022-04-26', 32);
INSERT INTO `tb_official` VALUES (423, '1800', '', '', '5640', '', '7440', '', NULL, '587', '689', '', '', '', '', '', '', '340', '1616', '5824', 'เมษายน 2565', '2022-04-27', '2022-04-26', 33);
INSERT INTO `tb_official` VALUES (424, '3500', '1000', '', '27340', '', '31840', '', NULL, '', '128', '', '', '', '', '', '', '340', '468', '31372', 'เมษายน 2565', '2022-04-27', '2022-04-26', 34);
INSERT INTO `tb_official` VALUES (425, '3500', '1000', '', '0', '', '4500', '', NULL, '', '334', '', '', '', '', '', '', '340', '674', '3826', 'เมษายน 2565', '2022-04-27', '2022-04-26', 35);
INSERT INTO `tb_official` VALUES (426, '3700', '1500', '', '13240', '', '18440', '', NULL, '169', '153', '', '', '', '', '', '', '340', '662', '17778', 'เมษายน 2565', '2022-04-27', '2022-04-26', 36);
INSERT INTO `tb_official` VALUES (427, '1800', '', '', '5160', '', '6960', '', NULL, '', '243', '', '3100', '', '', '', '', '340', '3683', '3277', 'เมษายน 2565', '2022-04-27', '2022-04-26', 37);
INSERT INTO `tb_official` VALUES (428, '3700', '1500', '', '2100', '2450', '9750', '', NULL, '', '', '', '6800', '', '', '', '', '340', '7140', '2610', 'เมษายน 2565', '2022-04-27', '2022-04-26', 38);
INSERT INTO `tb_official` VALUES (429, '1800', '', '', '1320', '311299.25', '314419.25', '210', NULL, '140', '52', '', '8000', '', '', '50', '', '340', '8792', '305627.25', 'เมษายน 2565', '2022-04-27', '2022-04-26', 39);
INSERT INTO `tb_official` VALUES (430, '1800', '', '', '6180', '', '7980', '210', NULL, '', '9', '', '', '', '', '', '', '', '219', '7761', 'เมษายน 2565', '2022-04-27', '2022-04-26', 40);
INSERT INTO `tb_official` VALUES (431, '3700', '1500', '', '6600', '', '11800', '840', NULL, '135', '205', '', '6800', '', '', '', '', '', '7980', '3820', 'เมษายน 2565', '2022-04-27', '2022-04-26', 41);
INSERT INTO `tb_official` VALUES (432, '3500', '1000', '', '29340', '', '33840', '', NULL, '40', '323', '', '', '', '', '', '', '340', '703', '33137', 'เมษายน 2565', '2022-04-27', '2022-04-26', 42);
INSERT INTO `tb_official` VALUES (433, '3700', '1500', '0', '10440', '6000', '21640', '', NULL, '', '152', '11100', '5000', '4900', '', '', '', '', '21152', '488', 'เมษายน 2565', '2022-04-27', '2022-04-26', 43);
INSERT INTO `tb_official` VALUES (434, '50000', '10000', '10000', '27250', '', '97250', '', NULL, '', '1043', '', '', '', '', '', '300', '', '1343', '95907', 'เมษายน 2565', '2022-04-27', '2022-04-26', 44);
INSERT INTO `tb_official` VALUES (435, '3700', '1500', '', '4700', '', '9900', '', NULL, '', '377', '', '7600', '', '', '', '', '340', '8317', '1583', 'เมษายน 2565', '2022-04-27', '2022-04-26', 45);
INSERT INTO `tb_official` VALUES (436, '3700', '1500', '', '6000', '', '11200', '420', NULL, '', '', '', '', '5100', '', '', '300', '', '5820', '5380', 'เมษายน 2565', '2022-04-27', '2022-04-26', 46);
INSERT INTO `tb_official` VALUES (437, '3700', '1500', '', '6040', '2000', '13240', '', NULL, '', '1013', '', '6800', '4200', '', '', '', '340', '12353', '887', 'เมษายน 2565', '2022-04-27', '2022-04-26', 47);
INSERT INTO `tb_official` VALUES (438, '1800', '', '', '4750', '', '6550', '', NULL, '276', '', '', '', '', '', '', '300', '', '576', '5974', 'เมษายน 2565', '2022-04-27', '2022-04-26', 48);
INSERT INTO `tb_official` VALUES (439, '10000', '3000', '5000', '9630', '', '27630', '210', NULL, '', '', '', '', '', '', '', '', '340', '550', '27080', 'เมษายน 2565', '2022-04-27', '2022-04-26', 50);
INSERT INTO `tb_official` VALUES (440, '3200', '1500', '', '4640', '', '9340', '', NULL, '', '9', '', '', '', '', '', '300', '', '309', '9031', 'เมษายน 2565', '2022-04-27', '2022-04-26', 51);
INSERT INTO `tb_official` VALUES (441, '0', '', '', '0', '', '0', '', NULL, '', '', '0', '', '', '', '', '', '', '0', '0', 'เมษายน 2565', '2022-04-27', '2022-04-26', 52);
INSERT INTO `tb_official` VALUES (442, '3700', '1500', '', '9060', '', '14260', '210', NULL, '', '', '', '', '', '', '', '', '', '210', '14050', 'เมษายน 2565', '2022-04-27', '2022-04-26', 53);
INSERT INTO `tb_official` VALUES (443, '3700', '1500', '', '12900', '', '18100', '210', NULL, '', '', '', '', '', '', '', '', '', '210', '17890', 'เมษายน 2565', '2022-04-27', '2022-04-26', 54);
INSERT INTO `tb_official` VALUES (444, '3700', '1500', '', '9300', '', '14500', '', NULL, '275', '29', '', '5800', '', '', '', '', '', '6104', '8396', 'เมษายน 2565', '2022-04-27', '2022-04-26', 55);
INSERT INTO `tb_official` VALUES (445, '3700', '1500', '', '9300', '', '14500', '', NULL, '', '161', '9200', '4200', '', '', '', '', '', '13561', '939', 'เมษายน 2565', '2022-04-27', '2022-04-26', 56);
INSERT INTO `tb_official` VALUES (446, '3700', '1500', '', '12940', '', '18140', '', NULL, '', '95', '9200', '', '', '', '', '', '', '9295', '8845', 'เมษายน 2565', '2022-04-27', '2022-04-26', 57);
INSERT INTO `tb_official` VALUES (447, '1800', '', '', '2510', '', '4310', '', NULL, '56', '20', '', '2900', '', '', '', '', '', '2976', '1334', 'เมษายน 2565', '2022-04-27', '2022-04-26', 58);
INSERT INTO `tb_official` VALUES (448, '3700', '1500', '', '14480', '', '19680', '210', NULL, '1000', '84', '', '6100', '', '', '', '', '', '7394', '12286', 'เมษายน 2565', '2022-04-27', '2022-04-26', 59);
INSERT INTO `tb_official` VALUES (449, '3700', '1500', '', '23500', '', '28700', '', NULL, '', '', '5800', '', '', '', '', '', '', '5800', '22900', 'เมษายน 2565', '2022-04-27', '2022-04-26', 60);
INSERT INTO `tb_official` VALUES (450, '40000', '5000', '10000', '40250', '', '95250', '', NULL, '', '227', '', '', '', '', '', '', '', '227', '95023', 'เมษายน 2565', '2022-04-27', '2022-04-26', 61);
INSERT INTO `tb_official` VALUES (451, '3200', '1500', '', '6420', '', '11120', '', NULL, '', '34', '', '6800', '', '', '', '', '', '6834', '4286', 'เมษายน 2565', '2022-04-27', '2022-04-26', 63);
INSERT INTO `tb_official` VALUES (452, '1200', '', '', '3960', '', '5160', '210', NULL, '', '', '', '', '', '', '50', '', '340', '600', '4560', 'เมษายน 2565', '2022-04-27', '2022-04-26', 64);
INSERT INTO `tb_official` VALUES (453, '1800', '', '', '12120', '', '13920', '', NULL, '', '', '', '', '', '', '', '', '2300', '2300', '11620', 'เมษายน 2565', '2022-04-27', '2022-04-26', 65);
INSERT INTO `tb_official` VALUES (454, '40000', '5000', '', '0', '', '45000', '', NULL, '', '547', '', '', '', '', '', '', '', '547', '44453', 'เมษายน 2565', '2022-04-27', '2022-04-26', 66);
INSERT INTO `tb_official` VALUES (455, '40000', '5000', '', '9600', '', '54600', '', NULL, '', '547', '', '', '', '', '', '', '', '547', '54053', 'เมษายน 2565', '2022-04-27', '2022-04-26', 67);
INSERT INTO `tb_official` VALUES (456, '40000', '10000', '10000', '24500', '', '84500', '', NULL, '', '76', '', '', '', '', '', '400', '', '476', '84024', 'เมษายน 2565', '2022-04-27', '2022-04-26', 68);
INSERT INTO `tb_official` VALUES (457, '3200', '1500', '', '13000', '', '17700', '', NULL, '', '34', '', '', '', '', '', '', '', '34', '17666', 'เมษายน 2565', '2022-04-27', '2022-04-26', 69);
INSERT INTO `tb_official` VALUES (458, '1500', '', '', '7260', '', '8760', '', NULL, '', '42', '', '', '', '', '', '', '', '42', '8718', 'เมษายน 2565', '2022-04-27', '2022-04-26', 70);
INSERT INTO `tb_official` VALUES (459, '2000', '', '', '5630', '', '7630', '0', NULL, '', '', '', '', ' ', ' ', ' ', '', '340', '340', '7290', 'เมษายน 2565', '2022-04-27', '2022-04-26', 71);
INSERT INTO `tb_official` VALUES (460, '1500', '', '', '4940', '', '6440', '', NULL, '', '175', '', '', '', '', '', '', '340', '515', '5925', 'เมษายน 2565', '2022-04-27', '2022-04-26', 72);
INSERT INTO `tb_official` VALUES (461, '1500', '', '', '600', '', '2100', '', NULL, '', '213', '', '', '', '', '', '', '', '213', '1887', 'เมษายน 2565', '2022-04-27', '2022-04-26', 73);
INSERT INTO `tb_official` VALUES (462, '10000', '3000', '', '', '', '13000', '210', NULL, '184', '678', '', '', '', '', '', '', '340', '1412', '11588', 'เมษายน 2565', '2022-04-27', '2022-04-26', 74);
INSERT INTO `tb_official` VALUES (463, '3200', '1500', '', '17320', '', '22020', '', NULL, '', '', '', '', '', '', '', '', '1647', '1647', '20373', 'เมษายน 2565', '2022-04-27', '2022-04-26', 75);
INSERT INTO `tb_official` VALUES (464, '1500', '', '', '4710', '', '6210', '', NULL, '36', '', '', '', '', '', '', '300', '', '336', '5874', 'เมษายน 2565', '2022-04-27', '2022-04-26', 76);
INSERT INTO `tb_official` VALUES (465, '3200', '1500', '', '14600', '', '19300', '', NULL, '', '115', '', '', '', '', '', '', '', '115', '19185', 'เมษายน 2565', '2022-04-27', '2022-04-26', 77);
INSERT INTO `tb_official` VALUES (466, '0', '1500', '', '0', '500', '2000', '', NULL, '', '76', '', '', '', '', '', '', '1819', '1895', '105', 'เมษายน 2565', '2022-04-27', '2022-04-26', 78);
INSERT INTO `tb_official` VALUES (467, '20000', '5000', '10000', '35400', '', '70400', '', NULL, '', '986', '', '', '', '', '', '', '', '986', '69414', 'เมษายน 2565', '2022-04-27', '2022-04-26', 162);
INSERT INTO `tb_official` VALUES (546, '50000', '10000', '10000', '0', '', '70000', '210', '', '', '29', '', '', '', '', '', '1000', '', '1239', '68761', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 1);
INSERT INTO `tb_official` VALUES (547, '11000', '3000', '5000', '6210', '', '25210', '', '', '', '', '', '16500', '', '', '', '', '', '16500', '8710', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 2);
INSERT INTO `tb_official` VALUES (548, '3700', '2000', '', '600', '18200', '24500', '', '', '', '', '18200', '', '', '', '', '', '', '18200', '6300', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 3);
INSERT INTO `tb_official` VALUES (549, '3700', '1500', '', '13500', '500', '19200', '210', '', '124', '', '18500', '', '', '', '', '', '', '18834', '366', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 4);
INSERT INTO `tb_official` VALUES (550, '3700', '1500', '', '4800', '', '10000', '', '', '236', '', '', '3800', '', '', '', '', '', '4036', '5964', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 5);
INSERT INTO `tb_official` VALUES (551, '3700', '1500', '', '0', '', '5200', '420', '', '174', '431', '', '', '', '2000', '', '800', '', '3825', '1375', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 6);
INSERT INTO `tb_official` VALUES (552, '3700', '2000', '', '2100', '', '7800', '840', '', '10', '', '', '6400', '', '', '', '', '', '7250', '550', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 7);
INSERT INTO `tb_official` VALUES (553, '3700', '1500', '', '10040', '', '15240', '', '', '304', '205', '', '6800', '', '', '', '', '', '7309', '7931', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 8);
INSERT INTO `tb_official` VALUES (554, '3700', '1500', '', '6000', '', '11200', '', '', '533', '', '', '', '', '', '', '', '', '533', '10667', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 9);
INSERT INTO `tb_official` VALUES (555, '3700', '1500', '', '11380', '', '16580', '', '', '60', '66', '', '', '', '', '', '', '', '126', '16454', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 10);
INSERT INTO `tb_official` VALUES (556, '1500', '', '', '13500', '', '15000', '0', '', '', '24', '', '', '', '', '', '', '', '24', '14976', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 11);
INSERT INTO `tb_official` VALUES (557, '3700', '1500', '', '8360', '', '13560', '210', '', '244', '', '', '', '', '', '', '', '', '454', '13106', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 12);
INSERT INTO `tb_official` VALUES (558, '1800', '', '', '0', '11250', '13050', '210', '', '421', '303', '', '7100', '', '', '', '0', '', '8034', '5016', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 13);
INSERT INTO `tb_official` VALUES (559, '3700', '1500', '', '8120', '', '13320', '', '', '', '', '', '', '', '', '', '', '', '0', '13320', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 14);
INSERT INTO `tb_official` VALUES (560, '11000', '3000', '5000', '7920', '', '26920', '0', '', '71', '274', '', '', '', '', '', '', '', '345', '26575', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 15);
INSERT INTO `tb_official` VALUES (561, '20000', '5000', '', '0', '', '25000', '', '', '', '76', '', '', '', '', '', '', '', '76', '24924', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 16);
INSERT INTO `tb_official` VALUES (562, '3700', '1500', '', '0', '', '5200', '210', '', '', '', '', '', '', '', '', '', '', '210', '4990', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 17);
INSERT INTO `tb_official` VALUES (563, '3700', '1500', '', '17460', '', '22660', '', '', '', '9', '', '', '', '', '', '', '', '9', '22651', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 18);
INSERT INTO `tb_official` VALUES (564, '3700', '1500', '', '1200', '', '6400', '', '', '', '', '', '6000', '', '', '', '', '', '6000', '400', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 19);
INSERT INTO `tb_official` VALUES (565, '3000', '', '', '420', '1450', '4870', '210', '', '', '167', '', '', '', '', '50', '', '', '427', '4443', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 20);
INSERT INTO `tb_official` VALUES (566, '3700', '1500', '', '11700', '', '16900', '210', '', '', '', '', '', '', '2000', '', '', '1000', '3210', '13690', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 21);
INSERT INTO `tb_official` VALUES (567, '3700', '1500', '', '10960', '', '16160', '210', '', '168', '260', '', '', '', '', '', '', '', '638', '15522', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 22);
INSERT INTO `tb_official` VALUES (568, '3700', '1500', '', '11040', '', '16240', '210', '', '39', '', '', '9700', '', '', '', '', '', '9949', '6291', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 23);
INSERT INTO `tb_official` VALUES (569, '3700', '1500', '', '15720', '', '20920', '', '', '30', '', '', '', '', '', '', '', '', '30', '20890', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 24);
INSERT INTO `tb_official` VALUES (570, '3700', '1500', '', '0', '17000', '22200', '210', '', '', '', '12900', '8600', '', '', '', '', '', '21710', '490', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 25);
INSERT INTO `tb_official` VALUES (571, '3700', '1500', '', '15620', '', '20820', '0', '', '149', '', '', '', '', '', '', '', '', '149', '20671', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 26);
INSERT INTO `tb_official` VALUES (572, '3700', '1500', '', '20680', '', '25880', '', '', '3246', '', '', '5500', '8700', '', '', '', '', '17446', '8434', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 27);
INSERT INTO `tb_official` VALUES (573, '3700', '2000', '', '1280', '', '6980', '', '', '', '', '', '6800', '', '', '', '', '', '6800', '180', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 28);
INSERT INTO `tb_official` VALUES (574, '3700', '1500', '', '4040', '', '9240', '', '', '', '47', '', '6800', '', '', '', '', '', '6847', '2393', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 29);
INSERT INTO `tb_official` VALUES (575, '3700', '1500', '', '6600', '', '11800', '', '', '', '', '', '', '', '', '', '', '', '0', '11800', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 30);
INSERT INTO `tb_official` VALUES (576, '40000', '10000', '10000', '34550', '', '94550', '', '340', '', '', '', '', '', '', '', '300', '', '640', '93910', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 31);
INSERT INTO `tb_official` VALUES (577, '1800', '', '', '600', '', '2400', '', '', '', '', '', '', '', '', '', '', '', '0', '2400', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 32);
INSERT INTO `tb_official` VALUES (578, '1800', '', '', '3360', '', '5160', '', '', '138', '664', '', '', '', '', '', '', '', '802', '4358', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 33);
INSERT INTO `tb_official` VALUES (579, '3500', '1000', '', '34450', '', '38950', '', '', '56', '120', '', '', '', '', '', '', '', '176', '38774', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 34);
INSERT INTO `tb_official` VALUES (580, '3500', '1000', '', '0', '', '4500', '', '', '', '380', '', '', '', '', '', '', '', '380', '4120', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 35);
INSERT INTO `tb_official` VALUES (581, '3700', '1500', '', '18260', '', '23460', '', '', '60', '73', '', '', '', '', '', '', '', '133', '23327', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 36);
INSERT INTO `tb_official` VALUES (582, '1800', '', '', '4080', '', '5880', '', '', '', '297', '', '3100', '', '', '', '', '', '3397', '2483', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 37);
INSERT INTO `tb_official` VALUES (583, '3700', '1500', '', '4800', '', '10000', '', '', '', '', '', '6800', '', '', '', '', '', '6800', '3200', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 38);
INSERT INTO `tb_official` VALUES (584, '1800', '', '', '1920', '313834.5', '317554.5', '210', '', '182', '59', '', '8000', '', '', '2070', '', '52588', '63109', '254445.5', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 39);
INSERT INTO `tb_official` VALUES (585, '1800', '', '', '4920', '', '6720', '210', '', '', '9', '', '', '', '', '', '', '', '219', '6501', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 40);
INSERT INTO `tb_official` VALUES (586, '3700', '1500', '', '6020', '', '11220', '840', '', '69', '161', '', '6800', '', '', '', '', '', '7870', '3350', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 41);
INSERT INTO `tb_official` VALUES (587, '3500', '1000', '', '15380', '', '19880', '', '340', '20', '505', '', '', '', '', '', '', '', '865', '19015', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 42);
INSERT INTO `tb_official` VALUES (588, '3700', '1500', '0', '7800', '10000', '23000', '', '', '', '158', '11100', '5000', '4900', '', '', '', '', '21158', '1842', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 43);
INSERT INTO `tb_official` VALUES (589, '50000', '10000', '10000', '22300', '', '92300', '', '', '', '850', '', '', '', '', '', '300', '', '1150', '91150', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 44);
INSERT INTO `tb_official` VALUES (590, '3700', '1500', '', '9020', '', '14220', '', '340', '152', '478', '', '7600', '', '', '', '', '', '8570', '5650', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 45);
INSERT INTO `tb_official` VALUES (591, '3700', '1500', '', '1800', '', '7000', '420', '', '', '', '', '', '5100', '', '', '300', '', '5820', '1180', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 46);
INSERT INTO `tb_official` VALUES (592, '3700', '1500', '', '9560', '', '14760', '', '340', '', '1141', '', '6800', '4200', '', '', '', '', '12481', '2279', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 47);
INSERT INTO `tb_official` VALUES (593, '1800', '', '', '1460', '', '3260', '', '', '', '', '', '', '', '', '', '300', '', '300', '2960', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 48);
INSERT INTO `tb_official` VALUES (594, '10000', '3000', '5000', '10440', '', '28440', '210', '340', '54', '', '', '', '', '', '', '', '', '604', '27836', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 50);
INSERT INTO `tb_official` VALUES (595, '3200', '1500', '', '9360', '', '14060', '', '', '56', '9', '', '', '', '', '', '300', '', '365', '13695', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 51);
INSERT INTO `tb_official` VALUES (596, '0', '', '', '0', '', '0', '', '', '', '', '0', '', '', '', '', '', '', '0', '0', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 52);
INSERT INTO `tb_official` VALUES (597, '3700', '1500', '', '5840', '', '11040', '210', '', '', '', '', '', '', '', '', '', '', '210', '10830', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 53);
INSERT INTO `tb_official` VALUES (598, '3700', '1500', '', '11720', '', '16920', '210', '', '', '', '', '', '', '', '', '', '', '210', '16710', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 54);
INSERT INTO `tb_official` VALUES (599, '3700', '1500', '', '7280', '', '12480', '', '', '563', '', '', '5800', '', '', '', '', '', '6363', '6117', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 55);
INSERT INTO `tb_official` VALUES (600, '3700', '1500', '', '15160', '', '20360', '', '', '', '147', '9200', '4200', '', '', '', '', '', '13547', '6813', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 56);
INSERT INTO `tb_official` VALUES (601, '3700', '1500', '', '13740', '', '18940', '', '', '', '84', '9200', '', '', '', '', '', '', '9284', '9656', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 57);
INSERT INTO `tb_official` VALUES (602, '1800', '', '', '6120', '', '7920', '', '', '246', '', '', '3500', '', '', '', '', '', '3746', '4174', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 58);
INSERT INTO `tb_official` VALUES (603, '3700', '1500', '', '11160', '', '16360', '210', '', '1000', '50', '', '6100', '', '', '', '', '', '7360', '9000', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 59);
INSERT INTO `tb_official` VALUES (604, '3700', '1500', '', '16580', '', '21780', '', '', '', '', '5800', '', '', '', '', '', '', '5800', '15980', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 60);
INSERT INTO `tb_official` VALUES (605, '40000', '5000', '10000', '43150', '', '98150', '', '', '', '337', '', '', '', '', '', '', '', '337', '97813', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 61);
INSERT INTO `tb_official` VALUES (606, '3200', '1500', '', '15140', '', '19840', '', '', '40', '55', '', '6800', '', '', '', '', '', '6895', '12945', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 63);
INSERT INTO `tb_official` VALUES (607, '1200', '', '', '3960', '', '5160', '210', '340', '', '', '', '', '', '', '50', '', '', '600', '4560', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 64);
INSERT INTO `tb_official` VALUES (608, '1800', '', '', '10080', '', '11880', '', '', '', '', '', '', '', '', '', '', '2300', '2300', '9580', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 65);
INSERT INTO `tb_official` VALUES (609, '40000', '5000', '', '0', '', '45000', '', '', '', '891', '', '', '', '', '', '', '', '891', '44109', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 66);
INSERT INTO `tb_official` VALUES (610, '40000', '5000', '', '4800', '', '49800', '', '', '', '891', '', '', '', '', '', '', '', '891', '48909', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 67);
INSERT INTO `tb_official` VALUES (611, '40000', '10000', '10000', '27200', '', '87200', '', '', '', '87', '', '', '', '', '', '400', '', '487', '86713', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 68);
INSERT INTO `tb_official` VALUES (612, '3200', '1500', '', '12740', '', '17440', '', '', '', '34', '', '', '', '', '', '', '', '34', '17406', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 69);
INSERT INTO `tb_official` VALUES (613, '1500', '', '', '9840', '', '11340', '', '', '20', '32', '', '', '', '', '', '', '', '52', '11288', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 70);
INSERT INTO `tb_official` VALUES (614, '2000', '', '', '4800', '', '6800', '0', '340', '', '', '', '', '', '', '', '', '', '340', '6460', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 71);
INSERT INTO `tb_official` VALUES (615, '1500', '', '', '2830', '', '4330', '', '340', '', '186', '', '', '', '', '', '', '', '526', '3804', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 72);
INSERT INTO `tb_official` VALUES (616, '1500', '', '', '960', '', '2460', '', '', '', '172', '', '', '', '', '', '', '', '172', '2288', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 73);
INSERT INTO `tb_official` VALUES (617, '10000', '3000', '', '', '', '13000', '210', '340', '', '617', '', '', '', '', '', '', '', '1167', '11833', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 74);
INSERT INTO `tb_official` VALUES (618, '3200', '1500', '', '13460', '', '18160', '', '', '', '', '', '', '', '', '', '', '1647', '1647', '16513', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 75);
INSERT INTO `tb_official` VALUES (619, '1500', '', '', '2340', '', '3840', '', '', '56', '', '', '', '', '', '', '300', '', '356', '3484', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 76);
INSERT INTO `tb_official` VALUES (620, '3200', '1500', '', '18940', '', '23640', '', '', '', '131', '', '', '', '', '', '', '', '131', '23509', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 77);
INSERT INTO `tb_official` VALUES (621, '0', '0', '', '0', '1888', '1888', '', '', '', '69', '', '', '', '', '', '', '1819', '1888', '0', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 78);
INSERT INTO `tb_official` VALUES (622, '20000', '5000', '10000', '12800', '', '47800', '', '', '', '979', '', '', '', '', '', '', '', '979', '46821', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 162);
INSERT INTO `tb_official` VALUES (623, '', '', '', '560', '', '560', '', '', '', '', '', '', '', '', '', '', '', '0', '560', 'พฤษภาคม 2565', '2022-05-27', '2022-06-09', 170);
INSERT INTO `tb_official` VALUES (624, '50000', '10000', '10000', '0', '', '70000', '210', '', '', '34', '', '', '', '', '', '1000', '', '1244', '68756', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 1);
INSERT INTO `tb_official` VALUES (625, '11000', '3000', '5000', '11250', '', '30250', '', '', '', '', '', '16500', '', '', '', '', '', '16500', '13750', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 2);
INSERT INTO `tb_official` VALUES (626, '3700', '2000', '0', '0', '18200', '23900', '', '', '', '', '18200', '', '', '', '', '', '', '18200', '5700', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 3);
INSERT INTO `tb_official` VALUES (627, '3700', '1500', '0', '11080', '3000', '19280', '210', '', '135', '', '18500', '', '', '', '', '', '', '18845', '435', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 4);
INSERT INTO `tb_official` VALUES (628, '3700', '1500', '', '3600', '', '8800', '', '', '50', '', '', '3800', '', '', '', '', '', '3850', '4950', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 5);
INSERT INTO `tb_official` VALUES (629, '3700', '1500', '', '2100', '', '7300', '420', '', '420', '509', '', '', '', '2000', '', '800', '3151', '7300', '0', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 6);
INSERT INTO `tb_official` VALUES (630, '3700', '2000', '', '2700', '', '8400', '840', '', '35', '', '', '6400', '', '', '', '', '', '7275', '1125', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 7);
INSERT INTO `tb_official` VALUES (631, '3700', '1500', '', '13560', '', '18760', '', '', '', '283', '', '6800', '', '', '', '', '', '7083', '11677', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 8);
INSERT INTO `tb_official` VALUES (632, '3700', '1500', '', '6000', '', '11200', '', '', '111', '', '', '', '', '', '', '', '', '111', '11089', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 9);
INSERT INTO `tb_official` VALUES (633, '3700', '1500', '', '11780', '', '16980', '', '', '139', '117', '', '', '', '', '', '', '', '256', '16724', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 10);
INSERT INTO `tb_official` VALUES (634, '1500', '', '', '11880', '', '13380', '0', '', '', '36', '', '', '', '', '', '', '', '36', '13344', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 11);
INSERT INTO `tb_official` VALUES (635, '3700', '1500', '', '7800', '4800', '17800', '210', '', '369', '', '', '', '', '', '', '', '', '579', '17221', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 12);
INSERT INTO `tb_official` VALUES (636, '1800', '', '', '120', '11250', '13170', '210', '', '803', '391', '', '7100', '', '', '', '', '', '8504', '4666', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 13);
INSERT INTO `tb_official` VALUES (637, '3700', '1500', '', '14200', '', '19400', '', '', '', '', '', '', '', '', '', '', '', '0', '19400', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 14);
INSERT INTO `tb_official` VALUES (638, '11000', '3000', '5000', '6660', '', '25660', '0', '', '73', '348', '', '', '', '', '', '', '', '421', '25239', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 15);
INSERT INTO `tb_official` VALUES (639, '20000', '5000', '', '0', '', '25000', '', '', '', '109', '', '', '', '', '', '', '', '109', '24891', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 16);
INSERT INTO `tb_official` VALUES (640, '3700', '1500', '', '0', '', '5200', '210', '', '', '', '', '', '', '', '', '', '', '210', '4990', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 17);
INSERT INTO `tb_official` VALUES (641, '3700', '1500', '', '12960', '', '18160', '', '', '', '9', '', '', '', '', '', '', '', '9', '18151', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 18);
INSERT INTO `tb_official` VALUES (642, '3700', '1500', '', '1200', '', '6400', '', '', '', '', '', '6000', '', '', '', '', '', '6000', '400', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 19);
INSERT INTO `tb_official` VALUES (643, '3000', '', '', '420', '1450', '4870', '210', '', '', '123', '', '', '', '', '50', '', '', '383', '4487', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 20);
INSERT INTO `tb_official` VALUES (644, '3700', '1500', '', '10120', '', '15320', '210', '', '', '', '', '', '', '2000', '', '', '', '2210', '13110', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 21);
INSERT INTO `tb_official` VALUES (645, '3700', '1500', '', '6300', '', '11500', '210', '', '', '128', '', '', '', '', '', '', '', '338', '11162', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 22);
INSERT INTO `tb_official` VALUES (646, '3700', '1500', '', '8400', '', '13600', '210', '', '70', '', '', '9700', '', '', '', '', '', '9980', '3620', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 23);
INSERT INTO `tb_official` VALUES (647, '3700', '1500', '', '11920', '4000', '21120', '', '', '', '', '', '', '', '', '', '', '', '0', '21120', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 24);
INSERT INTO `tb_official` VALUES (648, '3700', '1500', '', '0', '17000', '22200', '210', '', '', '', '12900', '8600', '', '', '', '', '', '21710', '490', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 25);
INSERT INTO `tb_official` VALUES (649, '3700', '1500', '', '18840', '', '24040', '0', '', '78', '', '', '', '', '', '', '', '', '78', '23962', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 26);
INSERT INTO `tb_official` VALUES (650, '3700', '1500', '', '17900', '', '23100', '', '', '4318', '', '', '5500', '8700', '', '', '', '', '18518', '4582', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 27);
INSERT INTO `tb_official` VALUES (651, '3700', '2000', '', '1200', '1000', '7900', '', '', '724', '34', '', '6800', '', '', '', '', '', '7558', '342', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 28);
INSERT INTO `tb_official` VALUES (652, '3700', '1500', '', '8420', '', '13620', '', '', '', '42', '', '6800', '', '', '', '', '', '6842', '6778', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 29);
INSERT INTO `tb_official` VALUES (653, '3700', '1500', '', '0', '', '5200', '', '', '', '', '', '', '', '', '', '', '', '0', '5200', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 30);
INSERT INTO `tb_official` VALUES (654, '40000', '10000', '10000', '22450', '', '82450', '', '340', '', '', '', '', '', '', '', '300', '', '640', '81810', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 31);
INSERT INTO `tb_official` VALUES (655, '1800', '', '', '200', '', '2000', '', '', '', '', '', '', '', '', '', '', '', '0', '2000', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 32);
INSERT INTO `tb_official` VALUES (656, '1800', '', '', '3600', '', '5400', '', '', '311', '820', '', '', '', '', '', '', '', '1131', '4269', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 33);
INSERT INTO `tb_official` VALUES (657, '3500', '1000', '', '17340', '', '21840', '', '', '', '98', '', '', '', '', '', '', '', '98', '21742', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 34);
INSERT INTO `tb_official` VALUES (658, '3500', '1000', '', '0', '', '4500', '', '', '', '563', '', '', '', '', '', '', '', '563', '3937', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 35);
INSERT INTO `tb_official` VALUES (659, '3700', '1500', '', '11300', '', '16500', '', '', '', '112', '', '', '', '', '', '', '', '112', '16388', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 36);
INSERT INTO `tb_official` VALUES (660, '1800', '', '', '4560', '', '6360', '', '', '', '360', '', '3100', '', '', '', '', '', '3460', '2900', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 37);
INSERT INTO `tb_official` VALUES (661, '3700', '1500', '', '4800', '', '10000', '', '', '', '', '', '6800', '', '', '', '', '', '6800', '3200', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 38);
INSERT INTO `tb_official` VALUES (662, '1800', '', '', '1440', '320436.25', '323676.25', '210', '', '542', '50', '', '8000', '', '', '50', '', '49700', '58552', '265124.25', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 39);
INSERT INTO `tb_official` VALUES (663, '1800', '', '', '3840', '', '5640', '210', '', '', '18', '', '', '', '', '', '', '', '228', '5412', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 40);
INSERT INTO `tb_official` VALUES (664, '3700', '1500', '', '8820', '', '14020', '840', '', '128', '64', '', '6800', '', '', '', '', '', '7832', '6188', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 41);
INSERT INTO `tb_official` VALUES (665, '3500', '1000', '', '20630', '2100', '27230', '', '340', '20', '434', '', '', '', '', '', '', '', '794', '26436', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 42);
INSERT INTO `tb_official` VALUES (666, '3700', '1500', '0', '7200', '10000', '22400', '', '', '', '238', '11100', '5000', '4900', '', '', '', '', '21238', '1162', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 43);
INSERT INTO `tb_official` VALUES (667, '50000', '10000', '10000', '25600', '', '95600', '', '', '', '1218', '', '', '', '', '', '300', '', '1518', '94082', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 44);
INSERT INTO `tb_official` VALUES (668, '3700', '1500', '', '14300', '', '19500', '', '340', '55', '509', '', '7600', '', '', '', '', '', '8504', '10996', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 45);
INSERT INTO `tb_official` VALUES (669, '3700', '1500', '', '600', '500', '6300', '420', '', '359', '', '', '', '5100', '', '', '300', '', '6179', '121', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 46);
INSERT INTO `tb_official` VALUES (670, '3700', '1500', '', '11640', '', '16840', '', '340', '42', '1403', '', '6800', '4200', '', '', '', '', '12785', '4055', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 47);
INSERT INTO `tb_official` VALUES (671, '1800', '', '', '3900', '', '5700', '', '', '432', '', '', '', '', '', '', '300', '', '732', '4968', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 48);
INSERT INTO `tb_official` VALUES (672, '10000', '3000', '5000', '9990', '', '27990', '210', '340', '', '', '', '', '', '', '', '', '', '550', '27440', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 50);
INSERT INTO `tb_official` VALUES (673, '3200', '1500', '', '7560', '', '12260', '', '', '75', '9', '', '', '', '', '', '300', '', '384', '11876', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 51);
INSERT INTO `tb_official` VALUES (674, '0', '', '', '9600', '', '9600', '', '', '', '', '0', '', '', '', '', '', '', '0', '9600', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 52);
INSERT INTO `tb_official` VALUES (675, '3700', '1500', '', '5600', '', '10800', '210', '', '', '', '', '', '', '', '', '', '', '210', '10590', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 53);
INSERT INTO `tb_official` VALUES (676, '3700', '1500', '', '9700', '', '14900', '210', '', '', '', '', '', '', '', '', '', '', '210', '14690', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 54);
INSERT INTO `tb_official` VALUES (677, '3700', '1500', '', '8700', '', '13900', '', '', '254', '', '', '5800', '', '', '', '', '', '6054', '7846', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 55);
INSERT INTO `tb_official` VALUES (678, '3700', '1500', '', '14820', '', '20020', '', '', '', '210', '9200', '4200', '', '', '', '', '', '13610', '6410', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 56);
INSERT INTO `tb_official` VALUES (679, '3700', '1500', '', '12760', '', '17960', '', '', '', '', '9200', '', '', '', '', '', '', '9200', '8760', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 57);
INSERT INTO `tb_official` VALUES (680, '1800', '', '', '3420', '', '5220', '', '', '603', '', '', '3500', '', '', '', '', '', '4103', '1117', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 58);
INSERT INTO `tb_official` VALUES (681, '3700', '1500', '', '14360', '', '19560', '210', '', '1045', '79', '', '6100', '', '', '', '', '', '7434', '12126', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 59);
INSERT INTO `tb_official` VALUES (682, '3700', '1500', '', '19340', '', '24540', '', '', '', '', '5800', '', '', '', '', '', '', '5800', '18740', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 60);
INSERT INTO `tb_official` VALUES (683, '40000', '5000', '10000', '14400', '', '69400', '', '', '', '434', '', '', '', '', '', '', '', '434', '68966', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 61);
INSERT INTO `tb_official` VALUES (684, '3200', '1500', '', '15520', '', '20220', '', '', '48', '57', '', '6800', '', '', '', '', '', '6905', '13315', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 63);
INSERT INTO `tb_official` VALUES (685, '1200', '', '', '2670', '', '3870', '210', '340', '', '', '', '', '', '', '50', '', '', '600', '3270', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 64);
INSERT INTO `tb_official` VALUES (686, '1800', '', '', '9120', '', '10920', '', '', '', '', '', '', '', '', '', '', '2300', '2300', '8620', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 65);
INSERT INTO `tb_official` VALUES (687, '40000', '5000', '', '0', '', '45000', '', '', '', '1235', '', '', '', '', '', '', '', '1235', '43765', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 66);
INSERT INTO `tb_official` VALUES (688, '40000', '5000', '', '5600', '', '50600', '', '', '', '1236', '', '', '', '', '', '', '', '1236', '49364', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 67);
INSERT INTO `tb_official` VALUES (689, '40000', '10000', '10000', '25900', '', '85900', '', '', '', '93', '', '', '', '', '', '400', '', '493', '85407', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 68);
INSERT INTO `tb_official` VALUES (690, '3200', '1500', '', '15200', '', '19900', '', '', '', '29', '', '', '', '', '', '', '', '29', '19871', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 69);
INSERT INTO `tb_official` VALUES (691, '1500', '', '', '12060', '', '13560', '', '', '26', '44', '', '', '', '', '', '', '', '70', '13490', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 70);
INSERT INTO `tb_official` VALUES (692, '2000', '', '', '6260', '', '8260', '0', '340', '', '', '', '', '', '', '', '', '', '340', '7920', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 71);
INSERT INTO `tb_official` VALUES (693, '1500', '', '', '4780', '', '6280', '', '340', '', '109', '', '', '', '', '', '', '', '449', '5831', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 72);
INSERT INTO `tb_official` VALUES (694, '1500', '', '', '720', '', '2220', '', '', '', '', '', '', '', '', '', '', '', '0', '2220', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 73);
INSERT INTO `tb_official` VALUES (695, '10000', '3000', '', '', '', '13000', '210', '340', '', '850', '', '', '', '', '', '', '', '1400', '11600', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 74);
INSERT INTO `tb_official` VALUES (696, '3200', '1500', '', '11320', '', '16020', '', '', '30', '', '', '', '', '', '', '', '1647', '1677', '14343', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 75);
INSERT INTO `tb_official` VALUES (697, '1500', '', '', '3590', '', '5090', '', '', '78', '', '', '', '', '', '', '300', '', '378', '4712', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 76);
INSERT INTO `tb_official` VALUES (698, '3200', '1500', '', '14640', '', '19340', '', '', '', '208', '', '', '', '', '', '', '', '208', '19132', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 77);
INSERT INTO `tb_official` VALUES (699, '0', '0', '', '9560', '', '9560', '', '', '', '73', '', '', '', '', '', '', '1819', '1892', '7668', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 78);
INSERT INTO `tb_official` VALUES (700, '20000', '5000', '10000', '38200', '', '73200', '', '', '', '1400', '', '', '', '', '', '', '', '1400', '71800', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 162);
INSERT INTO `tb_official` VALUES (701, '3500', '1000', '', '640', '4000', '9140', '', '', '105', '', '', '', '', '', '', '', '', '105', '9035', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 170);

-- ----------------------------
-- Table structure for tb_pofficial
-- ----------------------------
DROP TABLE IF EXISTS `tb_pofficial`;
CREATE TABLE `tb_pofficial`  (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_sts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_back_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_nowas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_ot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_revenue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_sum_revenue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_nsk_sk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_nsk_sk3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_shop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_sss_back_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_sss` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_fund` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_cooperative` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_electricity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_baac` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_gsb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_lend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_manage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_food` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_sum_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_get_real` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_date` date NULL DEFAULT NULL,
  `p_date_get` date NULL DEFAULT NULL,
  `p_m_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`p_id`) USING BTREE,
  INDEX `index_pof`(`p_m_id`) USING BTREE,
  CONSTRAINT `fk` FOREIGN KEY (`p_m_id`) REFERENCES `tb_member` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'พนักงานราชการ' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_pofficial
-- ----------------------------
INSERT INTO `tb_pofficial` VALUES (3, '20850', '', '', NULL, '5120', '7000', '32970', '0', '', '', '', '750', '0', '1000', '36', '', '', '', '50', '', '', '1836', '31134', 'มกราคม 2565', '2022-02-01', '2022-02-28', 79);
INSERT INTO `tb_pofficial` VALUES (4, '19710', '', '', NULL, '0', '6000', '25710', '', '230', '268', '', '750', '', '1000', '', '', '', '', '50', '', '', '2298', '23412', 'มกราคม 2565', '2022-02-01', '2022-02-28', 80);
INSERT INTO `tb_pofficial` VALUES (5, '22750', '3000', '', NULL, '13725', '37000', '71475', '', '', '20', '', '750', '', '', '', '', '', '', '', '', '', '770', '70705', 'มกราคม 2565', '2022-02-01', '2022-02-28', 163);
INSERT INTO `tb_pofficial` VALUES (6, '20850', '', '2000', NULL, '1500', '', '24350', '0', '', '', '', '750', '0', '1000', '109', '', '', '', '50', '', '', '1909', '22441', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 79);
INSERT INTO `tb_pofficial` VALUES (7, '19710', '', '2000', NULL, '840', '', '22550', '210', '', '228', '', '750', '', '1000', '', '', '', '', '2070', '', '100', '4358', '18192', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 80);
INSERT INTO `tb_pofficial` VALUES (8, '22750', '1500', '9000', NULL, '11430', '5000', '49680', '', '', '20', '', '750', '', '', '', '', '', '', '', '', '', '770', '48910', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 163);
INSERT INTO `tb_pofficial` VALUES (9, '20850', '', '', NULL, '3020', '3000', '26870', '0', '0', '', '', '750', '0', '1000', '101', '', '', '', '50', '', '', '1901', '24969', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 79);
INSERT INTO `tb_pofficial` VALUES (10, '19710', '', '', NULL, '0', '2000', '21710', '210', '', '', '', '750', '', '1000', '', '', '', '', '2070', '', '', '4030', '17680', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 80);
INSERT INTO `tb_pofficial` VALUES (11, '22750', '0', '5000', NULL, '9360', '9000', '46110', '', '', '', '', '750', '', '', '', '', '', '', '', '', '', '750', '45360', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 163);
INSERT INTO `tb_pofficial` VALUES (12, '20850', '', '2500', NULL, '2040', '', '25390', '0', '0', '', '', '750', '0', '1000', '128', '', '', '', '50', '', '', '1928', '23462', 'เมษายน 2565', '2022-04-26', '2022-04-27', 79);
INSERT INTO `tb_pofficial` VALUES (13, '19710', '', '2000', NULL, '420', '', '22130', '210', '', '286', '', '750', '', '1000', '', '', '', '', '50', '', '', '2296', '19834', 'เมษายน 2565', '2022-04-26', '2022-04-27', 80);
INSERT INTO `tb_pofficial` VALUES (14, '22750', '0', '9000', NULL, '10815', '5000', '47565', '', '', '', '', '750', '', '', '', '', '', '', '', '', '', '750', '46815', 'เมษายน 2565', '2022-04-26', '2022-04-27', 163);
INSERT INTO `tb_pofficial` VALUES (18, '20850', '', '2500', '', '3420', '', '26770', '0', '0', '', '', '150', '0', '1000', '153', '', '', '', '50', '', '', '1353', '25417', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 79);
INSERT INTO `tb_pofficial` VALUES (19, '19710', '', '2000', '', '840', '', '22550', '210', '', '278', '', '150', '', '1000', '', '', '', '', '50', '', '', '1688', '20862', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 80);
INSERT INTO `tb_pofficial` VALUES (20, '22750', '4500', '9000', '5000', '10350', '', '51600', '', '', '', '', '150', '', '', '', '', '', '', '', '', '', '150', '51450', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 163);
INSERT INTO `tb_pofficial` VALUES (21, '20850', '', '2500', '', '4100', '', '27450', '0', '', '', '', '150', '0', '1000', '272', '', '', '', '50', '', '', '1472', '25978', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 79);
INSERT INTO `tb_pofficial` VALUES (22, '19710', '', '', '', '420', '', '20130', '210', '', '75', '', '150', '', '1000', '', '', '', '', '50', '', '', '1485', '18645', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 80);
INSERT INTO `tb_pofficial` VALUES (23, '22750', '1500', '9000', '5000', '8370', '', '46620', '', '', '', '', '150', '', '', '', '', '', '', '', '', '', '150', '46470', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 163);

-- ----------------------------
-- Table structure for tb_regular
-- ----------------------------
DROP TABLE IF EXISTS `tb_regular`;
CREATE TABLE `tb_regular`  (
  `r_id` int NOT NULL AUTO_INCREMENT,
  `r_ot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_revcnue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_sum_revcnue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_c11` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_nks_sk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_shop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_electricity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_nks_os` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_baac` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_gsb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_lend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_manage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_food` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_sum_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_get_real` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_date_get` date NULL DEFAULT NULL,
  `r_m_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`r_id`) USING BTREE,
  INDEX `index`(`r_m_id`) USING BTREE,
  CONSTRAINT `fk_re` FOREIGN KEY (`r_m_id`) REFERENCES `tb_member` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ลูกจ้างประจำ' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_regular
-- ----------------------------
INSERT INTO `tb_regular` VALUES (6, '3600', '3000', '6600', NULL, '460', '', '', '', '4600', '', '', '', '', '', '5060', '1540', 'มกราคม 2565', '2022-02-01', '2022-02-28', 81);
INSERT INTO `tb_regular` VALUES (7, '2700', '3000', '5700', NULL, '230', '', '', '', '', '', '', '', '', '0', '230', '5470', 'มกราคม 2565', '2022-02-01', '2022-02-28', 82);
INSERT INTO `tb_regular` VALUES (8, '1650', '3000', '4650', NULL, '460', '170', '', '', '', '', '', '', '', '', '630', '4020', 'มกราคม 2565', '2022-02-01', '2022-02-28', 83);
INSERT INTO `tb_regular` VALUES (9, '0', '2000', '2000', NULL, '460', '320', '', '', '', '', '', '', '', '', '780', '1220', 'มกราคม 2565', '2022-02-01', '2022-02-28', 84);
INSERT INTO `tb_regular` VALUES (10, '9040', '3000', '12040', NULL, '', '', '58', '', '', '', '2000', '50', '', '', '2108', '9932', 'มกราคม 2565', '2022-02-01', '2022-02-28', 85);
INSERT INTO `tb_regular` VALUES (11, '2400', '1000', '3400', NULL, '420', '', '', '', '', '', '', '', '', '', '420', '2980', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 81);
INSERT INTO `tb_regular` VALUES (12, '1200', '1000', '2200', NULL, '210', '', '', '', '', '', '', '', '', '0', '210', '1990', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 82);
INSERT INTO `tb_regular` VALUES (13, '900', '1000', '1900', NULL, '420', '96', '', '', '', '', '', '', '', '', '516', '1384', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 83);
INSERT INTO `tb_regular` VALUES (14, '1725', '1000', '2725', NULL, '420', '408', '', '', '', '', '', '', '', '100', '928', '1797', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 84);
INSERT INTO `tb_regular` VALUES (15, '8745', '1000', '9745', NULL, '', '', '100', '', '', '', '2000', '2070', '', '100', '4270', '5475', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 85);
INSERT INTO `tb_regular` VALUES (16, '1500', '1000', '2500', NULL, '420', '244', '', '', '', '', '', '', '', '', '664', '1836', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 81);
INSERT INTO `tb_regular` VALUES (17, '1200', '0', '1200', NULL, '210', '', '', '', '', '', '', '', '', '0', '210', '990', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 82);
INSERT INTO `tb_regular` VALUES (18, '1200', '1000', '2200', NULL, '420', '319', '', '', '', '', '', '', '', '', '739', '1461', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 83);
INSERT INTO `tb_regular` VALUES (19, '1275', '1000', '2275', NULL, '420', '348', '', '', '', '', '', '', '', '', '768', '1507', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 84);
INSERT INTO `tb_regular` VALUES (20, '11202.5', '1000', '12202.5', NULL, '', '', '84', '', '', '', '2000', '2070', '', '', '4154', '8048.5', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 85);
INSERT INTO `tb_regular` VALUES (21, '5550', '1000', '6550', NULL, '420', '', '', '', '', '', '', '', '', '', '420', '6130', 'เมษายน 2565', '2022-04-26', '2022-04-27', 81);
INSERT INTO `tb_regular` VALUES (22, '3300', '1000', '4300', NULL, '210', '', '', '', '', '', '', '', '', '0', '210', '4090', 'เมษายน 2565', '2022-04-26', '2022-04-27', 82);
INSERT INTO `tb_regular` VALUES (23, '1050', '1000', '2050', NULL, '420', '145', '', '', '', '', '', '', '', '', '565', '1485', 'เมษายน 2565', '2022-04-26', '2022-04-27', 83);
INSERT INTO `tb_regular` VALUES (24, '2737.5', '1000', '3737.5', NULL, '420', '156', '', '', '', '', '', '', '', '', '576', '3161.5', 'เมษายน 2565', '2022-04-26', '2022-04-27', 84);
INSERT INTO `tb_regular` VALUES (25, '10910', '1000', '11910', NULL, '', '', '74', '', '', '', '2000', '50', '', '', '2124', '9786', 'เมษายน 2565', '2022-04-26', '2022-04-27', 85);
INSERT INTO `tb_regular` VALUES (31, '4450', '', '5450', '1000', '420', '', '', '', '', '', '', '', '', '', '420', '5030', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 81);
INSERT INTO `tb_regular` VALUES (32, '2100', '', '3100', '1000', '210', '', '', '', '', '', '', '', '', '0', '210', '2890', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 82);
INSERT INTO `tb_regular` VALUES (33, '1500', '', '2500', '1000', '420', '225', '', '', '', '', '', '', '', '', '645', '1855', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 83);
INSERT INTO `tb_regular` VALUES (34, '1500', '', '2500', '1000', '420', '149', '', '', '', '', '', '', '', '', '569', '1931', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 84);
INSERT INTO `tb_regular` VALUES (35, '4690', '', '5690', '1000', '', '', '90', '', '', '', '0', '50', '', '', '140', '5550', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 85);
INSERT INTO `tb_regular` VALUES (36, '4200', '', '5200', '1000', '420', '', '', '', '', '', '', '', '', '', '420', '4780', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 81);
INSERT INTO `tb_regular` VALUES (37, '1500', '', '2500', '1000', '210', '', '', '', '', '', '', '', '', '0', '210', '2290', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 82);
INSERT INTO `tb_regular` VALUES (38, '1200', '', '2200', '1000', '420', '225', '', '', '', '', '', '', '', '', '645', '1555', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 83);
INSERT INTO `tb_regular` VALUES (39, '2025', '', '3025', '1000', '420', '188', '', '', '', '', '', '', '', '', '608', '2417', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 84);
INSERT INTO `tb_regular` VALUES (40, '7580', '', '8580', '1000', '', '', '100', '', '', '', '0', '50', '', '', '150', '8430', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 85);

-- ----------------------------
-- Table structure for tb_temporary
-- ----------------------------
DROP TABLE IF EXISTS `tb_temporary`;
CREATE TABLE `tb_temporary`  (
  `e_id` int NOT NULL AUTO_INCREMENT,
  `e_salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_pts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_back_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_for_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_ot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_revcnue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_sum_revenue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_nks_ministry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_nks_sk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_nks_sk1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_shop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_sss_back_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_sss` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_fund` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_cooperative` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_electricity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_baac` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_gsb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_lend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_manage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_food` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_sum_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_get_real` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_date` date NULL DEFAULT NULL,
  `e_date_get` date NULL DEFAULT NULL,
  `e_m_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`e_id`) USING BTREE,
  INDEX `index`(`e_m_id`) USING BTREE,
  CONSTRAINT `fk_te` FOREIGN KEY (`e_m_id`) REFERENCES `tb_member` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 551 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ชั่วคราว/ พกส. /รายวัน' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_temporary
-- ----------------------------
INSERT INTO `tb_temporary` VALUES (1, '13640', '', '', NULL, '2850', '', '16490', '0', '230', '', '', '', '682', '272.8', '', '', '3000', '', '', '', '', '', '4184.8', '12305.2', 'มกราคม 2565', '2022-01-31', '2022-01-28', 86);
INSERT INTO `tb_temporary` VALUES (2, '13570', '', '', NULL, '2250', '', '15820', '0', '230', '', '', '', '679', '271.4', '4020', '', '', '', '', '', '', '1000', '6200.4', '9619.6', 'มกราคม 2565', '2022-01-31', '2022-01-28', 87);
INSERT INTO `tb_temporary` VALUES (3, '12660', '', '', NULL, '4640', '', '17300', '596', '460', '', '', '', '633', '253.2', '', '', '1500', '', '', '50', '', '', '3492.2', '13807.8', 'มกราคม 2565', '2022-01-31', '2022-01-28', 88);
INSERT INTO `tb_temporary` VALUES (4, '12410', '', '', NULL, '4200', '', '16610', '298', '', '', '195', '', '621', '', '', '', '3100', '3546', '', '', '', '', '7760', '8850', 'มกราคม 2565', '2022-01-31', '2022-01-28', 89);
INSERT INTO `tb_temporary` VALUES (5, '10940', '', '', NULL, '1800', '', '12740', '0', '230', '', '412', '', '547', '218.8', '1000', '', '', '', '', '50', '', '1300', '3757.8', '8982.2', 'มกราคม 2565', '2022-01-31', '2022-01-28', 90);
INSERT INTO `tb_temporary` VALUES (6, '12070', '', '', NULL, '1500', '', '13570', '298', '230', '', '856', '', '604', '', '', '', '4200', '2130', '', '', '300', '227', '8845', '4725', 'มกราคม 2565', '2022-01-31', '2022-01-28', 91);
INSERT INTO `tb_temporary` VALUES (7, '11610', '', '', NULL, '4150.5', '', '15760.5', '298', '230', '', '791', '', '581', '', '', '', '2400', '2973', '', '50', '', '', '7323', '8437.5', 'มกราคม 2565', '2022-01-31', '2022-01-28', 92);
INSERT INTO `tb_temporary` VALUES (8, '13640', '', '', NULL, '2025', '6405', '22070', '298', '230', '', '1598', '', '682', '272.8', '2949.75', '', '4527', '', '2000', '50', '', '', '12607.55', '9462.45', 'มกราคม 2565', '2022-01-31', '2022-01-28', 93);
INSERT INTO `tb_temporary` VALUES (9, '11990', '', '', NULL, '6157.5', '', '18147.5', '0', '', '', '', '', '600', '239.8', '', '', '', '', '', '50', '', '', '889.8', '17257.7', 'มกราคม 2565', '2022-01-31', '2022-01-28', 94);
INSERT INTO `tb_temporary` VALUES (10, '11550', '', '', NULL, '4550', '', '16100', '298', '230', '', '348', '', '578', '231', '', '', '', '', '', '', '', '20', '1705', '14395', 'มกราคม 2565', '2022-01-31', '2022-01-28', 95);
INSERT INTO `tb_temporary` VALUES (11, '11150', '', '', NULL, '4800', '', '15950', '0', '', '', '585', '', '558', '223', '1723', '69', '', '', '', '', '300', '', '3458', '12492', 'มกราคม 2565', '2022-01-31', '2022-01-28', 96);
INSERT INTO `tb_temporary` VALUES (12, '10950', '', '', NULL, '6375', '', '17325', '298', '230', '', '', '', '548', '219', '1856.75', '', '3500', '', '', '', '', '2446', '9097.75', '8227.25', 'มกราคม 2565', '2022-01-31', '2022-01-28', 97);
INSERT INTO `tb_temporary` VALUES (13, '10940', '', '', NULL, '1053.5', '', '11993.5', '', '', '', '', '', '547', '218.8', '', '', '', '', '', '50', '300', '', '1115.8', '10877.7', 'มกราคม 2565', '2022-01-31', '2022-01-28', 98);
INSERT INTO `tb_temporary` VALUES (14, '14240', '', '', NULL, '2475', '7090', '23805', '298', '', '', '152', '', '712', '284.8', '1731.5', '', '4200', '1600', '2000', '50', '', '1032', '12060.3', '11744.7', 'มกราคม 2565', '2022-01-31', '2022-01-28', 99);
INSERT INTO `tb_temporary` VALUES (15, '10480', '', '', NULL, '5250', '', '15730', '298', '', '', '311', '', '524', '209.6', '', '', '2000', '', '', '', '', '679', '4021.6', '11708.4', 'มกราคม 2565', '2022-01-31', '2022-01-28', 100);
INSERT INTO `tb_temporary` VALUES (16, '10090', '', '', NULL, '4680', '', '14770', '596', '', '', '100', '', '505', '201.8', '', '', '4000', '', '', '', '', '', '5402.8', '9367.2', 'มกราคม 2565', '2022-01-31', '2022-01-28', 101);
INSERT INTO `tb_temporary` VALUES (17, '9710', '', '', NULL, '5400', '', '15110', '0', '', '', '', '', '486', '194.2', '1000', '', '', '1700', '', '', '', '863', '4243.2', '10866.8', 'มกราคม 2565', '2022-01-31', '2022-01-28', 102);
INSERT INTO `tb_temporary` VALUES (18, '9420', '', '', NULL, '1612', '', '11032', '298', '', '', '', '', '471', '188.4', '', '', '', '', '', '', '', '', '957.4', '10074.6', 'มกราคม 2565', '2022-01-31', '2022-01-28', 103);
INSERT INTO `tb_temporary` VALUES (19, '12010', '', '', NULL, '0', '', '12010', '-', '230', '', '', '', '601', '240.2', '500', '', '', '', '', '50', '', '', '1621.2', '10388.8', 'มกราคม 2565', '2022-01-31', '2022-01-28', 104);
INSERT INTO `tb_temporary` VALUES (20, '9450', '', '', NULL, '3750', '', '13200', '-', '', '', '327', '', '473', '189', '', '', '', '', '', '', '', '', '989', '12211', 'มกราคม 2565', '2022-01-31', '2022-01-28', 105);
INSERT INTO `tb_temporary` VALUES (21, '9160', '', '', NULL, '1275', '', '10435', '-', '', '', '', '', '458', '183.2', '', '', '', '4288', '', '', '', '333', '5262.2', '5172.8', 'มกราคม 2565', '2022-01-31', '2022-01-28', 106);
INSERT INTO `tb_temporary` VALUES (22, '8900', '', '', NULL, '4200', '', '13100', '-', '', '', '449', '', '445', '178', '', '', '4030', '', '2000', '', '', '2400', '9502', '3598', 'มกราคม 2565', '2022-01-31', '2022-01-28', 107);
INSERT INTO `tb_temporary` VALUES (23, '10160', '', '', NULL, '1275', '20000', '31435', '', '', '', '198', '', '508', '', '', '', '', '', '2000', '50', '', '3332', '6088', '25347', 'มกราคม 2565', '2022-01-31', '2022-01-28', 108);
INSERT INTO `tb_temporary` VALUES (24, '9180', '', '', NULL, '10612.5', '', '19792.5', '', '', '', '', '', '459', '183.6', '', '29', '', '', '', '50', '', '', '721.6', '19070.9', 'มกราคม 2565', '2022-01-31', '2022-01-28', 109);
INSERT INTO `tb_temporary` VALUES (25, '14460', '', '4500', NULL, '1440', '', '20400', '', '', '', '', '', '723', '289.2', '', '', '', '', '', '', '', '', '1012.2', '19387.8', 'มกราคม 2565', '2022-01-31', '2022-01-28', 110);
INSERT INTO `tb_temporary` VALUES (26, '8850', '', '', NULL, '5572.5', '', '14422.5', '298', '', '', '249', '', '443', '177', '', '', '', '', '', '50', '', '', '1217', '13205.5', 'มกราคม 2565', '2022-01-31', '2022-01-28', 111);
INSERT INTO `tb_temporary` VALUES (27, '8770', '', '', NULL, '8895', '', '17665', '', '', '', '', '', '439', '175.4', '', '', '', '', '', '50', '', '', '664.4', '17000.6', 'มกราคม 2565', '2022-01-31', '2022-01-28', 112);
INSERT INTO `tb_temporary` VALUES (28, '8830', '', '', NULL, '1837.5', '', '10667.5', '', '', '', '', '', '442', '176.6', '', '', '', '', '', '', '', '', '618.6', '10048.9', 'มกราคม 2565', '2022-01-31', '2022-01-28', 113);
INSERT INTO `tb_temporary` VALUES (29, '14280', '1000', '8100', NULL, '15500', '', '38880', '', '', '', '', '', '714', '', '3000', '', '', '', '', '', '', '', '3714', '35166', 'มกราคม 2565', '2022-01-31', '2022-01-28', 114);
INSERT INTO `tb_temporary` VALUES (30, '8280', '', '', NULL, '2700', '', '10980', '', '', '', '', '', '414', '165.6', '', '', '', '', '', '', '', '', '579.6', '10400.4', 'มกราคม 2565', '2022-01-31', '2022-01-28', 115);
INSERT INTO `tb_temporary` VALUES (31, '8280', '', '', NULL, '1125', '', '9405', '', '', '', '', '', '414', '165.6', '', '', '', '', '', '', '300', '', '879.6', '8525.4', 'มกราคม 2565', '2022-01-31', '2022-01-28', 116);
INSERT INTO `tb_temporary` VALUES (32, '8240', '', '', NULL, '5925', '', '14165', '', '', '', '', '', '412', '164.8', '', '', '', '', '2000', '50', '300', '', '2926.8', '11238.2', 'มกราคม 2565', '2022-01-31', '2022-01-28', 117);
INSERT INTO `tb_temporary` VALUES (33, '16520', '', '7500', NULL, '1800', '', '25820', '', '', '', '', '', '750', '', '', '', '', '', '', '', '', '', '750', '25070', 'มกราคม 2565', '2022-01-31', '2022-01-28', 118);
INSERT INTO `tb_temporary` VALUES (34, '13760', '1000', '8100', NULL, '15940', '', '38800', '', '', '', '', '', '688', '', '', '', '', '', '', '', '', '', '688', '38112', 'มกราคม 2565', '2022-01-31', '2022-01-28', 167);
INSERT INTO `tb_temporary` VALUES (35, '12240', '', '3600', NULL, '2680', '', '18520', '', '', '', '', '', '612', '', '', '104', '', '', '', '', '', '', '716', '17804', 'มกราคม 2565', '2022-01-31', '2022-01-28', 164);
INSERT INTO `tb_temporary` VALUES (36, '6560', '', '', NULL, '4350', '', '10910', '', '', '', '38', '', '328', '', '', '', '', '', '', '', '', '', '366', '10544', 'มกราคม 2565', '2022-01-31', '2022-01-28', 121);
INSERT INTO `tb_temporary` VALUES (37, '9530', '', '', NULL, '5495', '', '15025', '', '', '', '', '', '477', '', '', '', '', '', '', '', '', '', '477', '14548', 'มกราคม 2565', '2022-01-31', '2022-01-28', 129);
INSERT INTO `tb_temporary` VALUES (38, '11340', '', '6000', NULL, '3300', '', '20640', '', '', '', '40', '', '567', '', '', '', '', '', '', '', '', '', '607', '20033', 'มกราคม 2565', '2022-01-31', '2022-01-28', 141);
INSERT INTO `tb_temporary` VALUES (39, '11340', '', '6000', NULL, '2400', '', '19740', '', '', '', '', '', '567', '', '', '22', '', '', '', '', '', '781', '1370', '18370', 'มกราคม 2565', '2022-01-31', '2022-01-28', 142);
INSERT INTO `tb_temporary` VALUES (40, '6300', '', '', NULL, '3300', '', '9600', '', '', '', '', '', '315', '', '', '', '', '', '', '', '', '', '315', '9285', 'มกราคม 2565', '2022-01-31', '2022-01-28', 119);
INSERT INTO `tb_temporary` VALUES (41, '6300', '', '', NULL, '10980', '', '17280', '', '', '', '', '', '315', '', '', '', '', '', '', '50', '', '', '365', '16915', 'มกราคม 2565', '2022-01-31', '2022-01-28', 120);
INSERT INTO `tb_temporary` VALUES (42, '6200', '', '', NULL, '3720', '', '9920', '', '', '', '708', '', '310', '', '', '', '', '', '', '', '', '', '1018', '8902', 'มกราคม 2565', '2022-01-31', '2022-01-28', 122);
INSERT INTO `tb_temporary` VALUES (43, '6300', '', '', NULL, '4725', '', '11025', '', '', '', '70', '', '315', '', '', '', '', '', '', '', '', '', '385', '10640', 'มกราคม 2565', '2022-01-31', '2022-01-28', 123);
INSERT INTO `tb_temporary` VALUES (44, '6300', '', '', NULL, '5350', '', '11650', '', '', '', '132', '', '315', '', '', '', '', '', '', '', '', '', '447', '11203', 'มกราคม 2565', '2022-01-31', '2022-01-28', 124);
INSERT INTO `tb_temporary` VALUES (45, '6300', '', '', NULL, '600', '', '6900', '', '', '', '', '', '315', '', '', '', '', '', '', '', '', '', '315', '6585', 'มกราคม 2565', '2022-01-31', '2022-01-28', 125);
INSERT INTO `tb_temporary` VALUES (46, '6200', '', '', NULL, '5270', '', '11470', '', '', '', '', '', '310', '', '', '', '', '', '', '', '', '', '310', '11160', 'มกราคม 2565', '2022-01-31', '2022-01-28', 126);
INSERT INTO `tb_temporary` VALUES (47, '6200', '', '', NULL, '5580', '', '11780', '', '', '', '', '', '310', '', '', '', '', '', '', '', '', '', '310', '11470', 'มกราคม 2565', '2022-01-31', '2022-01-28', 127);
INSERT INTO `tb_temporary` VALUES (48, '6300', '', '', NULL, '2752.5', '', '9052.5', '', '', '', '', '', '315', '', '', '', '', '', '', '', '', '', '315', '8737.5', 'มกราคม 2565', '2022-01-31', '2022-01-28', 128);
INSERT INTO `tb_temporary` VALUES (49, '6140', '', '', NULL, '2851', '', '8991', '', '', '', '964', '', '307', '', '', '', '', '', '2000', '50', '', '', '3321', '5670', 'มกราคม 2565', '2022-01-31', '2022-01-28', 130);
INSERT INTO `tb_temporary` VALUES (50, '5833', '', '', NULL, '614', '', '6447', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '50', '6397', 'มกราคม 2565', '2022-01-31', '2022-01-28', 131);
INSERT INTO `tb_temporary` VALUES (51, '6200', '', '', NULL, '4960', '', '11160', '', '', '', '', '', '310', '', '', '', '', '', '', '', '', '0', '310', '10850', 'มกราคม 2565', '2022-01-31', '2022-01-28', 132);
INSERT INTO `tb_temporary` VALUES (52, '6200', '', '', NULL, '4960', '', '11160', '', '', '', '', '', '310', '', '', '', '', '', '', '', '', '', '310', '10850', 'มกราคม 2565', '2022-01-31', '2022-01-28', 133);
INSERT INTO `tb_temporary` VALUES (53, '6140', '', '', NULL, '1074.5', '', '7214.5', '', '', '', '', '', '307', '', '', '', '', '', '', '50', '', '', '357', '6857.5', 'มกราคม 2565', '2022-01-31', '2022-01-28', 134);
INSERT INTO `tb_temporary` VALUES (54, '5526', '', '', NULL, '2325', '', '7851', '', '', '', '', '', '276', '', '', '', '', '', '', '', '', '', '276', '7575', 'มกราคม 2565', '2022-01-31', '2022-01-28', 135);
INSERT INTO `tb_temporary` VALUES (55, '5526', '', '', NULL, '3445', '', '8971', '', '', '', '465', '', '276', '', '', '', '', '', '', '50', '', '', '791', '8180', 'มกราคม 2565', '2022-01-31', '2022-01-28', 136);
INSERT INTO `tb_temporary` VALUES (56, '6140', '', '', NULL, '3344.5', '', '9484.5', '', '', '', '124', '', '307', '', '', '', '', '', '', '', '', '', '431', '9053.5', 'มกราคม 2565', '2022-01-31', '2022-01-28', 137);
INSERT INTO `tb_temporary` VALUES (57, '6200', '', '', NULL, '5270', '', '11470', '', '', '', '', '', '310', '', '', '', '', '', '', '', '', '', '310', '11160', 'มกราคม 2565', '2022-01-31', '2022-01-28', 138);
INSERT INTO `tb_temporary` VALUES (58, '6200', '', '', NULL, '4340', '', '10540', '', '', '', '', '', '310', '', '', '', '', '', '', '', '', '353', '663', '9877', 'มกราคม 2565', '2022-01-31', '2022-01-28', 139);
INSERT INTO `tb_temporary` VALUES (59, '6200', '', '', NULL, '4650', '', '10850', '', '', '', '207', '', '310', '', '', '', '', '', '', '', '', '', '517', '10333', 'มกราคม 2565', '2022-01-31', '2022-01-28', 140);
INSERT INTO `tb_temporary` VALUES (60, '6140', '', '', NULL, '3663', '', '9803', '', '', '', '233', '', '307', '', '', '', '', '', '2000', '50', '', '', '2590', '7213', 'มกราคม 2565', '2022-01-31', '2022-01-28', 144);
INSERT INTO `tb_temporary` VALUES (61, '6140', '', '', NULL, '1995.5', '', '8135.5', '', '', '', '', '', '307', '', '', '', '', '', '', '50', '', '', '357', '7778.5', 'มกราคม 2565', '2022-01-31', '2022-01-28', 145);
INSERT INTO `tb_temporary` VALUES (62, '6140', '', '', NULL, '3991', '', '10131', '', '', '', '', '', '307', '', '', '', '', '', '', '50', '', '', '357', '9774', 'มกราคม 2565', '2022-01-31', '2022-01-28', 147);
INSERT INTO `tb_temporary` VALUES (63, '6140', '', '', NULL, '4758.5', '', '10898.5', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '50', '10848.5', 'มกราคม 2565', '2022-01-31', '2022-01-28', 148);
INSERT INTO `tb_temporary` VALUES (64, '6140', '', '', NULL, '4605', '', '10745', '', '', '', '', '', '307', '', '', '', '', '', '', '50', '', '', '357', '10388', 'มกราคม 2565', '2022-01-31', '2022-01-28', 149);
INSERT INTO `tb_temporary` VALUES (65, '6140', '', '', NULL, '4912', '', '11052', '', '', '', '', '', '307', '', '', '', '', '', '', '', '', '', '307', '10745', 'มกราคม 2565', '2022-01-31', '2022-01-28', 165);
INSERT INTO `tb_temporary` VALUES (66, '3900', '0', '', NULL, '', '', '3900', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '3900', 'มกราคม 2565', '2022-01-31', '2022-01-28', 166);
INSERT INTO `tb_temporary` VALUES (67, '13640', '', '', NULL, '1200', '', '14840', '0', '210', '', '', '', '682', '272.8', '', '', '3000', '', '', '', '', '', '4164.8', '10675.2', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 86);
INSERT INTO `tb_temporary` VALUES (68, '13570', '', '', NULL, '1800', '', '15370', '0', '210', '', '', '', '679', '271.4', '3900', '', '', '', '', '', '', '1000', '6060.4', '9309.6', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 87);
INSERT INTO `tb_temporary` VALUES (69, '12660', '', '', NULL, '3131.25', '', '15791.25', '680', '420', '', '', '', '633', '253.2', '', '', '2380', '', '', '50', '', '100', '4516.2', '11275.05', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 88);
INSERT INTO `tb_temporary` VALUES (70, '12410', '', '', NULL, '3300', '', '15710', '340', '', '', '124', '', '621', '', '', '18', '3100', '3546', '', '', '', '', '7749', '7961', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 89);
INSERT INTO `tb_temporary` VALUES (71, '10940', '', '', NULL, '1050', '', '11990', '0', '210', '', '277', '', '547', '218.8', '1000', '', '', '', '', '50', '', '1400', '3702.8', '8287.2', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 90);
INSERT INTO `tb_temporary` VALUES (72, '12070', '', '', NULL, '900', '', '12970', '340', '210', '', '367', '', '604', '', '', '', '4200', '2130', '', '', '300', '227', '8378', '4592', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 91);
INSERT INTO `tb_temporary` VALUES (73, '11610', '', '', NULL, '3975', '', '15585', '340', '210', '', '706', '', '581', '', '', '', '2400', '2973', '', '50', '', '100', '7360', '8225', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 92);
INSERT INTO `tb_temporary` VALUES (74, '13640', '', '', NULL, '2400', '5926', '21966', '340', '210', '', '1406', '', '682', '272.8', '2901.75', '', '4527', '', '2000', '50', '', '', '12389.55', '9576.45', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 93);
INSERT INTO `tb_temporary` VALUES (75, '11990', '', '', NULL, '3750', '', '15740', '0', '', '', '', '', '600', '239.8', '', '', '', '', '', '50', '', '', '889.8', '14850.2', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 94);
INSERT INTO `tb_temporary` VALUES (76, '11550', '', '', NULL, '3300', '', '14850', '340', '210', '', '247', '', '578', '231', '', '', '', '', '', '', '', '', '1606', '13244', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 95);
INSERT INTO `tb_temporary` VALUES (77, '11150', '', '', NULL, '3900', '', '15050', '0', '', '', '1134', '', '558', '223', '1636.75', '59', '', '', '1000', '', '300', '', '4910.75', '10139.25', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 96);
INSERT INTO `tb_temporary` VALUES (78, '10950', '', '', NULL, '6000', '', '16950', '340', '210', '', '', '', '548', '219', '1839.25', '', '3500', '', '', '', '', '2446', '9102.25', '7847.75', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 97);
INSERT INTO `tb_temporary` VALUES (79, '10940', '', '', NULL, '300', '', '11240', '', '', '', '', '', '547', '218.8', '', '', '', '', '', '50', '300', '', '1115.8', '10124.2', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 98);
INSERT INTO `tb_temporary` VALUES (80, '14240', '', '', NULL, '1950', '7000', '23190', '340', '', '', '', '', '712', '284.8', '1860.25', '', '4200', '1600', '2000', '2070', '', '1132', '14199.05', '8990.95', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 99);
INSERT INTO `tb_temporary` VALUES (81, '10480', '', '', NULL, '3900', '', '14380', '340', '', '', '270', '', '524', '209.6', '', '', '2000', '', '', '', '', '679', '4022.6', '10357.4', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 100);
INSERT INTO `tb_temporary` VALUES (82, '10090', '', '', NULL, '2850', '', '12940', '680', '', '', '189', '', '505', '201.8', '', '', '4000', '', '', '', '', '100', '5675.8', '7264.2', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 101);
INSERT INTO `tb_temporary` VALUES (83, '9710', '', '', NULL, '3600', '', '13310', '0', '', '', '220', '', '486', '194.2', '1000', '', '', '1700', '', '', '', '863', '4463.2', '8846.8', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 102);
INSERT INTO `tb_temporary` VALUES (84, '9420', '', '', NULL, '1725', '', '11145', '340', '', '', '141', '', '471', '188.4', '', '', '', '', '', '', '', '', '1140.4', '10004.6', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 103);
INSERT INTO `tb_temporary` VALUES (85, '12010', '', '', NULL, '300', '', '12310', '-', '210', '', '', '', '601', '240.2', '500', '', '', '', '', '50', '', '20', '1621.2', '10688.8', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 104);
INSERT INTO `tb_temporary` VALUES (86, '9450', '', '', NULL, '4200', '', '13650', '-', '', '', '328', '', '473', '189', '', '', '', '', '', '', '', '', '990', '12660', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 105);
INSERT INTO `tb_temporary` VALUES (87, '9160', '', '', NULL, '1350', '', '10510', '-', '', '', '', '', '458', '183.2', '', '', '', '4288', '', '', '', '333', '5262.2', '5247.8', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 106);
INSERT INTO `tb_temporary` VALUES (88, '8900', '', '', NULL, '3600', '', '12500', '-', '', '', '333', '', '445', '178', '', '', '4030', '', '2000', '', '', '2400', '9386', '3114', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 107);
INSERT INTO `tb_temporary` VALUES (89, '10160', '', '', NULL, '3900', '39180', '53240', '', '', '', '188', '', '508', '', '', '', '', '', '2000', '2070', '', '3432', '8198', '45042', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 108);
INSERT INTO `tb_temporary` VALUES (90, '9180', '', '', NULL, '7785', '', '16965', '', '', '', '', '', '459', '183.6', '', '50', '', '', '', '50', '', '', '742.6', '16222.4', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 109);
INSERT INTO `tb_temporary` VALUES (91, '14460', '', '1500', NULL, '1920', '', '17880', '', '', '', '', '', '723', '289.2', '', '', '', '', '', '', '', '', '1012.2', '16867.8', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 110);
INSERT INTO `tb_temporary` VALUES (92, '8850', '', '', NULL, '6030', '', '14880', '340', '', '', '92', '', '443', '177', '', '', '', '', '', '2070', '', '', '3122', '11758', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 111);
INSERT INTO `tb_temporary` VALUES (93, '8770', '', '', NULL, '8495', '', '17265', '', '', '', '', '', '439', '175.4', '', '', '', '', '', '50', '', '', '664.4', '16600.6', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 112);
INSERT INTO `tb_temporary` VALUES (94, '8830', '', '', NULL, '2325', '', '11155', '', '', '', '', '', '442', '176.6', '', '', '', '', '', '', '', '', '618.6', '10536.4', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 113);
INSERT INTO `tb_temporary` VALUES (95, '14280', '1000', '2700', NULL, '10760', '', '28740', '', '', '', '', '', '714', '', '3000', '9', '', '', '', '', '', '', '3723', '25017', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 114);
INSERT INTO `tb_temporary` VALUES (96, '8280', '', '', NULL, '3600', '', '11880', '', '', '', '', '', '414', '165.6', '', '', '', '', '', '', '', '', '579.6', '11300.4', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 115);
INSERT INTO `tb_temporary` VALUES (97, '8280', '', '', NULL, '1575', '', '9855', '', '', '', '', '', '414', '165.6', '', '', '', '', '', '', '300', '', '879.6', '8975.4', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 116);
INSERT INTO `tb_temporary` VALUES (98, '8240', '', '', NULL, '3300', '', '11540', '', '', '', '', '', '412', '164.8', '', '', '', '', '2000', '50', '300', '', '2926.8', '8613.2', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 117);
INSERT INTO `tb_temporary` VALUES (99, '16520', '', '2500', NULL, '2400', '', '21420', '', '', '', '', '', '750', '', '', '64', '', '', '', '', '', '', '814', '20606', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 118);
INSERT INTO `tb_temporary` VALUES (100, '13760', '1000', '2700', NULL, '15080', '', '32540', '', '', '', '', '', '688', '', '', '', '', '', '', '', '', '', '688', '31852', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 167);
INSERT INTO `tb_temporary` VALUES (101, '12240', '', '1200', NULL, '4680', '', '18120', '', '', '', '', '', '612', '', '', '87', '', '', '', '', '', '', '699', '17421', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 164);
INSERT INTO `tb_temporary` VALUES (102, '6560', '', '', NULL, '3600', '', '10160', '', '', '', '122', '', '328', '', '', '', '', '', '', '', '', '100', '550', '9610', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 121);
INSERT INTO `tb_temporary` VALUES (103, '9530', '', '', NULL, '6280', '', '15810', '', '', '', '', '', '477', '', '', '', '', '', '', '', '', '', '477', '15333', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 129);
INSERT INTO `tb_temporary` VALUES (104, '11340', '', '2000', NULL, '2400', '', '15740', '', '', '', '52', '', '567', '', '', '', '', '', '', '', '', '600', '1219', '14521', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 141);
INSERT INTO `tb_temporary` VALUES (105, '11340', '', '2000', NULL, '2400', '', '15740', '', '', '', '', '', '567', '', '', '32', '', '', '', '', '', '781', '1380', '14360', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 142);
INSERT INTO `tb_temporary` VALUES (106, '5985', '', '', NULL, '3538', '', '9523', '', '', '', '', '', '299', '', '', '', '', '', '', '', '', '', '299', '9224', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 119);
INSERT INTO `tb_temporary` VALUES (107, '5985', '', '', NULL, '8792.5', '', '14777.5', '', '', '', '188', '', '299', '', '', '', '', '', '', '50', '', '', '537', '14240.5', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 120);
INSERT INTO `tb_temporary` VALUES (108, '5890', '', '', NULL, '4960', '', '10850', '', '', '', '149', '', '295', '', '', '', '', '', '', '', '', '100', '544', '10306', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 122);
INSERT INTO `tb_temporary` VALUES (109, '5985', '', '', NULL, '4725', '', '10710', '', '', '', '30', '', '299', '', '', '', '', '', '', '', '', '', '329', '10381', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 123);
INSERT INTO `tb_temporary` VALUES (110, '5985', '', '', NULL, '4725', '', '10710', '', '', '', '50', '', '299', '', '', '', '', '', '', '', '', '', '349', '10361', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 124);
INSERT INTO `tb_temporary` VALUES (111, '5985', '', '', NULL, '2208.75', '', '8193.75', '', '', '', '', '', '299', '', '', '', '', '', '', '', '', '', '299', '7894.75', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 125);
INSERT INTO `tb_temporary` VALUES (112, '5890', '', '', NULL, '4650', '', '10540', '', '', '', '', '', '295', '', '', '', '', '', '', '', '', '', '295', '10245', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 126);
INSERT INTO `tb_temporary` VALUES (113, '5890', '', '', NULL, '4030', '', '9920', '', '', '', '', '', '295', '', '', '', '', '', '', '', '', '', '295', '9625', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 127);
INSERT INTO `tb_temporary` VALUES (114, '5670', '', '', NULL, '2253.75', '', '7923.75', '', '', '', '', '', '284', '', '', '', '', '', '', '', '', '', '284', '7639.75', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 128);
INSERT INTO `tb_temporary` VALUES (115, '5833', '', '', NULL, '4099', '', '9932', '', '', '', '1316', '', '292', '', '', '', '', '', '2000', '2070', '', '200', '5878', '4054', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 130);
INSERT INTO `tb_temporary` VALUES (116, '5833', '', '', NULL, '1842', '', '7675', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '50', '7625', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 131);
INSERT INTO `tb_temporary` VALUES (117, '5890', '', '', NULL, '3410', '', '9300', '', '', '', '', '', '295', '', '', '', '', '', '', '', '', '0', '295', '9005', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 132);
INSERT INTO `tb_temporary` VALUES (118, '5890', '', '', NULL, '3100', '', '8990', '', '', '', '', '', '295', '', '', '', '', '', '', '', '', '100', '395', '8595', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 133);
INSERT INTO `tb_temporary` VALUES (119, '5833', '', '', NULL, '614', '', '6447', '', '', '', '', '', '292', '', '', '', '', '', '', '2070', '', '', '2362', '4085', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 134);
INSERT INTO `tb_temporary` VALUES (120, '5526', '', '', NULL, '2250', '', '7776', '', '', '', '', '', '276', '', '', '', '', '', '', '', '', '', '276', '7500', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 135);
INSERT INTO `tb_temporary` VALUES (121, '5833', '', '', NULL, '3611.5', '', '9444.5', '', '', '', '280', '', '292', '', '', '', '', '', '', '2070', '', '', '2642', '6802.5', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 136);
INSERT INTO `tb_temporary` VALUES (122, '5833', '', '', NULL, '2618.96', '', '8451.96', '', '', '', '88', '', '292', '', '', '', '', '', '', '', '', '', '380', '8071.96', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 137);
INSERT INTO `tb_temporary` VALUES (123, '5890', '', '', NULL, '4650', '', '10540', '', '', '', '', '', '295', '', '', '', '', '', '', '', '', '', '295', '10245', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 138);
INSERT INTO `tb_temporary` VALUES (124, '5890', '', '', NULL, '4030', '', '9920', '', '', '', '', '', '295', '', '', '', '', '', '', '', '', '353', '648', '9272', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 139);
INSERT INTO `tb_temporary` VALUES (125, '5890', '', '', NULL, '4650', '', '10540', '', '', '', '197', '', '295', '', '', '', '', '', '', '', '', '', '492', '10048', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 140);
INSERT INTO `tb_temporary` VALUES (126, '5833', '', '', NULL, '4099', '', '9932', '', '', '', '494', '', '292', '', '', '', '', '', '2000', '50', '', '', '2836', '7096', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 144);
INSERT INTO `tb_temporary` VALUES (127, '5833', '', '', NULL, '921', '', '6754', '', '', '', '', '', '292', '', '', '', '', '', '', '50', '', '', '342', '6412', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 145);
INSERT INTO `tb_temporary` VALUES (128, '5833', '', '', NULL, '3684', '', '9517', '', '', '', '', '', '292', '', '', '', '', '', '', '50', '', '', '342', '9175', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 147);
INSERT INTO `tb_temporary` VALUES (129, '5833', '', '', NULL, '3684', '', '9517', '', '', '', '', '', '', '', '', '', '', '', '', '1060', '', '', '1060', '8457', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 148);
INSERT INTO `tb_temporary` VALUES (130, '5833', '', '', NULL, '3984', '', '9817', '', '', '', '', '', '292', '', '', '', '', '', '', '1060', '', '', '1352', '8465', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 149);
INSERT INTO `tb_temporary` VALUES (131, '5833', '', '', NULL, '4298', '', '10131', '', '', '', '', '', '292', '', '', '', '', '', '', '', '', '', '292', '9839', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 165);
INSERT INTO `tb_temporary` VALUES (132, '5700', '0', '', NULL, '3300', '', '9000', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '9000', 'กุมภาพันธ์ 2565', '2022-02-23', '2022-02-24', 166);
INSERT INTO `tb_temporary` VALUES (200, '13640', '', '', NULL, '1200', '', '14840', '0', '210', '', '', '', '682', '272.8', '', '', '3000', '', '', '', '', '', '4164.8', '10675.2', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 86);
INSERT INTO `tb_temporary` VALUES (201, '13570', '', '', NULL, '900', '', '14470', '0', '210', '', '', '', '679', '271.4', '3900', '', '', '', '', '', '', '1000', '6060.4', '8409.6', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 87);
INSERT INTO `tb_temporary` VALUES (202, '12660', '', '', NULL, '3300', '', '15960', '680', '420', '', '', '', '633', '253.2', '', '', '1500', '', '', '50', '', '', '3536.2', '12423.8', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 88);
INSERT INTO `tb_temporary` VALUES (203, '12410', '', '', NULL, '2700', '', '15110', '340', '', '', '360', '', '621', '', '', '28', '3100', '3546', '2000', '', '', '', '9995', '5115', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 89);
INSERT INTO `tb_temporary` VALUES (204, '10940', '', '', NULL, '2100', '', '13040', '0', '210', '', '667', '', '547', '218.8', '1000', '', '', '', '', '50', '', '1300', '3992.8', '9047.2', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 90);
INSERT INTO `tb_temporary` VALUES (205, '12070', '', '', NULL, '900', '', '12970', '340', '210', '', '273', '', '604', '', '', '', '4200', '2130', '', '', '300', '227', '8284', '4686', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 91);
INSERT INTO `tb_temporary` VALUES (206, '11610', '', '', NULL, '2456.25', '', '14066.25', '340', '210', '', '362', '', '581', '', '', '', '2400', '2973', '', '50', '', '', '6916', '7150.25', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 92);
INSERT INTO `tb_temporary` VALUES (207, '13640', '', '', NULL, '1800', '9237', '24677', '340', '210', '', '2037', '', '682', '272.8', '3238', '', '4527', '', '', '2070', '', '', '13376.8', '11300.2', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 93);
INSERT INTO `tb_temporary` VALUES (208, '11990', '', '', NULL, '3000', '', '14990', '0', '', '', '', '', '600', '239.8', '', '', '', '', '', '50', '', '0', '889.8', '14100.2', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 94);
INSERT INTO `tb_temporary` VALUES (209, '11550', '', '', NULL, '1200', '', '12750', '340', '210', '', '284', '', '578', '231', '', '', '', '', '', '', '', '500', '2143', '10607', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 95);
INSERT INTO `tb_temporary` VALUES (210, '11150', '', '', NULL, '2700', '', '13850', '0', '', '', '882', '', '558', '223', '1638', '48', '', '', '1000', '', '300', '', '4649', '9201', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 96);
INSERT INTO `tb_temporary` VALUES (211, '10950', '', '', NULL, '4800', '', '15750', '340', '210', '', '', '', '548', '219', '1851.75', '', '3500', '', '', '', '', '2446', '9114.75', '6635.25', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 97);
INSERT INTO `tb_temporary` VALUES (212, '10940', '', '', NULL, '600', '', '11540', '', '', '', '', '', '547', '218.8', '', '', '', '', '', '50', '300', '', '1115.8', '10424.2', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 98);
INSERT INTO `tb_temporary` VALUES (213, '14240', '', '', NULL, '1350', '7000', '22590', '340', '', '', '50', '', '712', '284.8', '1883', '', '4200', '1600', '2000', '2070', '', '1032', '14171.8', '8418.2', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 99);
INSERT INTO `tb_temporary` VALUES (214, '10480', '', '', NULL, '2100', '', '12580', '340', '', '', '415', '', '524', '209.6', '', '', '2000', '', '', '', '', '679', '4167.6', '8412.4', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 100);
INSERT INTO `tb_temporary` VALUES (215, '10090', '', '', NULL, '2830', '', '12920', '680', '', '', '568', '', '505', '201.8', '', '', '4000', '', '', '', '', '', '5954.8', '6965.2', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 101);
INSERT INTO `tb_temporary` VALUES (216, '9710', '', '', NULL, '3050', '', '12760', '0', '', '', '150', '', '486', '194.2', '1000', '', '', '1700', '', '', '', '863', '4393.2', '8366.8', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 102);
INSERT INTO `tb_temporary` VALUES (217, '9420', '', '', NULL, '1050', '', '10470', '340', '', '', '36', '', '471', '188.4', '550', '', '', '', '', '', '', '', '1585.4', '8884.6', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 103);
INSERT INTO `tb_temporary` VALUES (218, '12010', '', '', NULL, '300', '', '12310', '-', '210', '', '', '', '601', '240.2', '500', '', '', '', '', '50', '', '', '1601.2', '10708.8', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 104);
INSERT INTO `tb_temporary` VALUES (219, '9450', '', '', NULL, '2700', '', '12150', '-', '', '', '450', '', '473', '189', '', '', '', '', '', '', '', '20', '1132', '11018', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 105);
INSERT INTO `tb_temporary` VALUES (220, '9160', '', '', NULL, '1350', '', '10510', '-', '', '', '', '', '458', '183.2', '', '', '', '4288', '', '', '', '333', '5262.2', '5247.8', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 106);
INSERT INTO `tb_temporary` VALUES (221, '8900', '', '', NULL, '2400', '', '11300', '-', '', '', '412', '', '445', '178', '', '', '4030', '', '2000', '', '', '2400', '9465', '1835', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 107);
INSERT INTO `tb_temporary` VALUES (222, '10160', '', '', NULL, '1650', '41200', '53010', '', '', '', '235', '', '508', '', '', '', '', '', '2000', '2070', '', '3332', '8145', '44865', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 108);
INSERT INTO `tb_temporary` VALUES (223, '9180', '', '', NULL, '23412.5', '', '32592.5', '', '', '', '', '', '459', '183.6', '', '42', '', '', '', '50', '', '', '734.6', '31857.9', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 109);
INSERT INTO `tb_temporary` VALUES (224, '14460', '', '', NULL, '2040', '1500', '18000', '', '', '', '', '', '723', '289.2', '', '', '', '', '', '', '', '', '1012.2', '16987.8', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 110);
INSERT INTO `tb_temporary` VALUES (225, '8850', '', '', NULL, '8280', '', '17130', '340', '', '', '192', '', '443', '177', '', '', '', '', '', '2070', '', '', '3222', '13908', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 111);
INSERT INTO `tb_temporary` VALUES (226, '8770', '', '', NULL, '15225', '', '23995', '', '', '', '', '', '439', '175.4', '', '', '', '', '', '50', '', '', '664.4', '23330.6', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 112);
INSERT INTO `tb_temporary` VALUES (227, '8830', '', '', NULL, '1425', '', '10255', '', '', '', '', '', '442', '176.6', '', '', '', '', '', '', '', '', '618.6', '9636.4', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 113);
INSERT INTO `tb_temporary` VALUES (228, '14280', '1000', '', NULL, '9660', '2700', '27640', '', '', '', '', '', '714', '', '3000', '9', '', '', '', '', '', '', '3723', '23917', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 114);
INSERT INTO `tb_temporary` VALUES (229, '8280', '', '', NULL, '2150', '', '10430', '', '', '', '', '', '414', '165.6', '', '', '', '', '', '', '', '', '579.6', '9850.4', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 115);
INSERT INTO `tb_temporary` VALUES (230, '8280', '', '', NULL, '2025', '', '10305', '', '', '', '', '', '414', '165.6', '', '', '', '', '', '', '300', '', '879.6', '9425.4', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 116);
INSERT INTO `tb_temporary` VALUES (231, '8240', '', '', NULL, '3000', '', '11240', '', '', '', '', '', '412', '164.8', '', '', '', '', '2000', '50', '300', '', '2926.8', '8313.2', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 117);
INSERT INTO `tb_temporary` VALUES (232, '16520', '', '', NULL, '2400', '2500', '21420', '', '', '', '', '', '750', '', '', '26', '', '', '', '', '', '', '776', '20644', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 118);
INSERT INTO `tb_temporary` VALUES (233, '13760', '1000', '', NULL, '14360', '2700', '31820', '', '', '', '', '', '688', '', '', '', '', '', '', '', '', '', '688', '31132', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 167);
INSERT INTO `tb_temporary` VALUES (234, '12240', '', '', NULL, '2220', '1200', '15660', '', '', '', '', '', '612', '', '', '82', '', '', '', '', '', '', '694', '14966', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 164);
INSERT INTO `tb_temporary` VALUES (235, '6560', '', '', NULL, '3000', '', '9560', '', '', '', '306', '', '328', '', '', '', '', '', '', '', '', '', '634', '8926', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 121);
INSERT INTO `tb_temporary` VALUES (236, '9530', '', '', NULL, '4860', '', '14390', '', '', '', '', '', '477', '', '', '', '', '', '', '', '', '', '477', '13913', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 129);
INSERT INTO `tb_temporary` VALUES (237, '11340', '', '', NULL, '2400', '2000', '15740', '', '', '', '22', '', '567', '', '', '', '', '', '', '', '', '', '589', '15151', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 141);
INSERT INTO `tb_temporary` VALUES (238, '11340', '', '', NULL, '2400', '2000', '15740', '', '', '', '128', '', '567', '', '1050', '32', '', '', '', '', '', '781', '2558', '13182', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 142);
INSERT INTO `tb_temporary` VALUES (239, '6300', '', '', NULL, '1884', '', '8184', '', '', '', '', '', '315', '', '', '', '', '', '', '', '', '', '315', '7869', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 119);
INSERT INTO `tb_temporary` VALUES (240, '6615', '', '', NULL, '13050', '', '19665', '', '', '', '70', '', '331', '', '', '', '', '', '', '50', '', '', '451', '19214', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 120);
INSERT INTO `tb_temporary` VALUES (241, '7130', '', '', NULL, '2170', '', '9300', '', '', '', '', '', '357', '', '', '', '', '', '', '', '', '', '357', '8943', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 122);
INSERT INTO `tb_temporary` VALUES (242, '7245', '', '', NULL, '1260', '', '8505', '', '', '', '', '', '362', '', '', '', '', '', '', '', '', '', '362', '8143', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 123);
INSERT INTO `tb_temporary` VALUES (243, '7245', '', '', NULL, '2835', '', '10080', '', '', '', '108', '', '362', '', '', '', '', '', '', '', '', '500', '970', '9110', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 124);
INSERT INTO `tb_temporary` VALUES (244, '6300', '', '', NULL, '1102.5', '', '7402.5', '', '', '', '', '', '315', '', '', '', '', '', '', '', '', '', '315', '7087.5', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 125);
INSERT INTO `tb_temporary` VALUES (245, '7130', '', '', NULL, '2480', '', '9610', '', '', '', '', '', '357', '', '', '', '', '', '', '', '', '', '357', '9253', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 126);
INSERT INTO `tb_temporary` VALUES (246, '7130', '', '', NULL, '1550', '', '8680', '', '', '', '', '', '357', '', '', '', '', '', '', '', '', '', '357', '8323', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 127);
INSERT INTO `tb_temporary` VALUES (247, '6300', '', '', NULL, '2205', '', '8505', '', '', '', '', '', '315', '', '', '', '', '', '', '', '', '', '315', '8190', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 128);
INSERT INTO `tb_temporary` VALUES (248, '7061', '', '', NULL, '1753', '', '8814', '', '', '', '1731', '', '353', '', '', '', '', '', '2000', '2070', '', '', '6154', '2660', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 130);
INSERT INTO `tb_temporary` VALUES (249, '6754', '', '', NULL, '0', '', '6754', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '500', '550', '6204', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 131);
INSERT INTO `tb_temporary` VALUES (250, '7130', '', '', NULL, '2480', '', '9610', '', '', '', '', '', '357', '', '', '', '', '', '', '', '', '', '357', '9253', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 132);
INSERT INTO `tb_temporary` VALUES (251, '7130', '', '', NULL, '1550', '', '8680', '', '', '', '', '', '357', '', '', '', '', '', '', '', '', '', '357', '8323', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 133);
INSERT INTO `tb_temporary` VALUES (252, '6447', '', '', NULL, '1878', '', '8325', '', '', '', '', '', '322', '', '', '', '', '', '', '2070', '', '', '2392', '5933', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 134);
INSERT INTO `tb_temporary` VALUES (253, '6140', '', '', NULL, '2250', '', '8390', '', '', '', '', '', '307', '', '', '', '', '', '', '', '', '', '307', '8083', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 135);
INSERT INTO `tb_temporary` VALUES (254, '6140', '', '', NULL, '2847.5', '', '8987.5', '', '', '', '170', '', '307', '', '', '', '', '', '', '2070', '', '500', '3047', '5940.5', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 136);
INSERT INTO `tb_temporary` VALUES (255, '6140', '', '', NULL, '1458.4', '', '7598.4', '', '', '', '130', '', '307', '', '', '', '', '', '', '', '', '', '437', '7161.4', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 137);
INSERT INTO `tb_temporary` VALUES (256, '7130', '', '', NULL, '1860', '', '8990', '', '', '', '', '', '357', '', '', '', '', '', '', '', '', '', '357', '8633', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 138);
INSERT INTO `tb_temporary` VALUES (257, '7130', '', '', NULL, '2170', '', '9300', '', '', '', '', '', '357', '', '', '', '', '', '', '', '', '353', '710', '8590', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 139);
INSERT INTO `tb_temporary` VALUES (258, '7130', '', '', NULL, '1860', '', '8990', '', '', '', '263', '', '357', '', '', '', '', '', '', '', '', '', '620', '8370', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 140);
INSERT INTO `tb_temporary` VALUES (259, '7061', '', '', NULL, '2138.5', '', '9199.5', '', '', '', '94', '', '353', '', '', '', '', '', '2000', '2070', '', '', '4517', '4682.5', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 144);
INSERT INTO `tb_temporary` VALUES (260, '7061', '', '', NULL, '0', '', '7061', '', '', '', '', '', '353', '', '', '', '', '', '', '50', '', '', '403', '6658', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 145);
INSERT INTO `tb_temporary` VALUES (261, '12000', '', '', NULL, '0', '', '12000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '12000', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 168);
INSERT INTO `tb_temporary` VALUES (262, '7061', '', '', NULL, '1812', '', '8873', '', '', '', '', '', '353', '', '', '', '', '', '', '50', '', '500', '903', '7970', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 147);
INSERT INTO `tb_temporary` VALUES (263, '7061', '', '', NULL, '1535', '', '8596', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '50', '8546', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 148);
INSERT INTO `tb_temporary` VALUES (264, '7061', '', '', NULL, '1228', '', '8289', '', '', '', '', '', '353', '', '', '', '', '', '', '50', '', '', '403', '7886', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 149);
INSERT INTO `tb_temporary` VALUES (265, '7061', '', '', NULL, '2149', '', '9210', '', '', '', '', '', '353', '', '', '', '', '', '', '', '', '', '353', '8857', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 165);
INSERT INTO `tb_temporary` VALUES (266, '6900', '0', '', NULL, '1200', '', '8100', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '0', '8100', 'มีนาคม 2565', '2022-03-28', '2022-03-29', 166);
INSERT INTO `tb_temporary` VALUES (267, '13640', '', '', NULL, '3000', '', '16640', '0', '210', '', '', '', '682', '272.8', '', '', '3000', '', '', '', '', '', '4164.8', '12475.2', 'เมษายน 2565', '2022-04-26', '2022-04-27', 86);
INSERT INTO `tb_temporary` VALUES (268, '13570', '', '', NULL, '1650', '', '15220', '0', '210', '', '', '', '679', '271.4', '3900', '', '', '', '', '', '', '1000', '6060.4', '9159.6', 'เมษายน 2565', '2022-04-26', '2022-04-27', 87);
INSERT INTO `tb_temporary` VALUES (269, '12660', '', '', NULL, '5539.75', '', '18199.75', '680', '420', '', '', '', '633', '253.2', '', '', '1500', '', '', '50', '', '', '3536.2', '14663.55', 'เมษายน 2565', '2022-04-26', '2022-04-27', 88);
INSERT INTO `tb_temporary` VALUES (270, '12410', '', '', NULL, '4600', '', '17010', '340', '', '', '238', '', '621', '', '', '31', '3100', '3546', '2000', '', '', '', '9876', '7134', 'เมษายน 2565', '2022-04-26', '2022-04-27', 89);
INSERT INTO `tb_temporary` VALUES (271, '10940', '', '', NULL, '2850', '', '13790', '0', '210', '', '273', '', '547', '218.8', '1000', '', '', '', '', '2070', '', '1300', '5618.8', '8171.2', 'เมษายน 2565', '2022-04-26', '2022-04-27', 90);
INSERT INTO `tb_temporary` VALUES (272, '12070', '', '', NULL, '2625', '', '14695', '340', '210', '', '843', '', '604', '', '', '', '4200', '2130', '', '', '300', '227', '8854', '5841', 'เมษายน 2565', '2022-04-26', '2022-04-27', 91);
INSERT INTO `tb_temporary` VALUES (273, '11610', '', '', NULL, '5681.25', '', '17291.25', '340', '210', '', '686', '', '581', '', '', '', '2400', '2973', '', '50', '', '', '7240', '10051.25', 'เมษายน 2565', '2022-04-26', '2022-04-27', 92);
INSERT INTO `tb_temporary` VALUES (274, '13640', '', '', NULL, '3000', '2784', '19424', '340', '210', '', '1023', '', '682', '272.8', '3209.25', '', '4527', '', '', '50', '', '', '10314.05', '9109.95', 'เมษายน 2565', '2022-04-26', '2022-04-27', 93);
INSERT INTO `tb_temporary` VALUES (275, '11990', '', '', NULL, '5738', '', '17728', '0', '', '', '', '', '600', '239.8', '', '', '', '', '', '50', '', '', '889.8', '16838.2', 'เมษายน 2565', '2022-04-26', '2022-04-27', 94);
INSERT INTO `tb_temporary` VALUES (276, '11550', '', '', NULL, '6125', '', '17675', '340', '210', '', '285', '', '578', '231', '', '', '', '', '', '', '', '', '1644', '16031', 'เมษายน 2565', '2022-04-26', '2022-04-27', 95);
INSERT INTO `tb_temporary` VALUES (277, '11150', '', '', NULL, '4600', '', '15750', '0', '', '', '1160', '', '558', '223', '1634.25', '55', '', '', '1000', '', '300', '', '4930.25', '10819.75', 'เมษายน 2565', '2022-04-26', '2022-04-27', 96);
INSERT INTO `tb_temporary` VALUES (278, '10950', '', '', NULL, '7125', '', '18075', '340', '210', '', '', '', '548', '219', '2527.75', '', '3500', '', '', '', '', '2446', '9790.75', '8284.25', 'เมษายน 2565', '2022-04-26', '2022-04-27', 97);
INSERT INTO `tb_temporary` VALUES (279, '10940', '', '', NULL, '2250', '', '13190', '', '', '', '', '', '547', '218.8', '', '', '', '', '', '50', '300', '', '1115.8', '12074.2', 'เมษายน 2565', '2022-04-26', '2022-04-27', 98);
INSERT INTO `tb_temporary` VALUES (280, '14240', '', '', NULL, '300', '6000', '20540', '340', '', '', '', '', '712', '284.8', '1869', '', '4200', '1600', '2000', '2070', '', '1032', '14107.8', '6432.2', 'เมษายน 2565', '2022-04-26', '2022-04-27', 99);
INSERT INTO `tb_temporary` VALUES (281, '10480', '', '', NULL, '4400', '', '14880', '340', '', '', '24', '', '524', '209.6', '', '', '2000', '', '', '', '', '679', '3776.6', '11103.4', 'เมษายน 2565', '2022-04-26', '2022-04-27', 100);
INSERT INTO `tb_temporary` VALUES (282, '10090', '', '', NULL, '4205', '', '14295', '680', '', '', '601', '', '505', '201.8', '', '', '4000', '', '', '', '', '', '5987.8', '8307.2', 'เมษายน 2565', '2022-04-26', '2022-04-27', 101);
INSERT INTO `tb_temporary` VALUES (283, '9710', '', '', NULL, '7500', '', '17210', '0', '', '', '', '', '486', '194.2', '1000', '', '', '1700', '', '', '', '863', '4243.2', '12966.8', 'เมษายน 2565', '2022-04-26', '2022-04-27', 102);
INSERT INTO `tb_temporary` VALUES (284, '9420', '', '', NULL, '1050', '', '10470', '340', '', '', '40', '', '471', '188.4', '500', '', '', '', '', '', '', '', '1539.4', '8930.6', 'เมษายน 2565', '2022-04-26', '2022-04-27', 103);
INSERT INTO `tb_temporary` VALUES (285, '12010', '', '', NULL, '420', '', '12430', '-', '210', '', '', '', '601', '240.2', '500', '', '', '', '', '50', '', '', '1601.2', '10828.8', 'เมษายน 2565', '2022-04-26', '2022-04-27', 104);
INSERT INTO `tb_temporary` VALUES (286, '9450', '', '', NULL, '2050', '', '11500', '-', '', '', '255', '', '473', '189', '', '', '', '', '', '', '', '', '917', '10583', 'เมษายน 2565', '2022-04-26', '2022-04-27', 105);
INSERT INTO `tb_temporary` VALUES (287, '9160', '', '', NULL, '1425', '', '10585', '-', '', '', '', '', '458', '183.2', '', '', '', '4288', '', '', '', '333', '5262.2', '5322.8', 'เมษายน 2565', '2022-04-26', '2022-04-27', 106);
INSERT INTO `tb_temporary` VALUES (288, '8900', '', '', NULL, '5500', '', '14400', '-', '', '', '565', '', '445', '178', '', '', '4030', '', '2000', '', '', '2420', '9638', '4762', 'เมษายน 2565', '2022-04-26', '2022-04-27', 107);
INSERT INTO `tb_temporary` VALUES (289, '10160', '', '', NULL, '4650', '37160', '51970', '', '', '', '191', '', '508', '', '', '', '', '', '2000', '2070', '', '3332', '8101', '43869', 'เมษายน 2565', '2022-04-26', '2022-04-27', 108);
INSERT INTO `tb_temporary` VALUES (290, '9180', '', '', NULL, '14930', '', '24110', '', '', '', '', '', '459', '183.6', '', '37', '', '', '', '50', '', '', '729.6', '23380.4', 'เมษายน 2565', '2022-04-26', '2022-04-27', 109);
INSERT INTO `tb_temporary` VALUES (291, '14460', '', '1500', NULL, '2780', '', '18740', '', '', '', '', '', '723', '289.2', '', '', '', '', '', '', '', '', '1012.2', '17727.8', 'เมษายน 2565', '2022-04-26', '2022-04-27', 110);
INSERT INTO `tb_temporary` VALUES (292, '8850', '', '', NULL, '11950', '', '20800', '340', '', '', '96', '', '443', '177', '', '', '', '', '', '2070', '', '', '3126', '17674', 'เมษายน 2565', '2022-04-26', '2022-04-27', 111);
INSERT INTO `tb_temporary` VALUES (293, '8770', '', '', NULL, '16655', '', '25425', '', '', '', '', '', '439', '175.4', '', '', '', '', '', '50', '', '', '664.4', '24760.6', 'เมษายน 2565', '2022-04-26', '2022-04-27', 112);
INSERT INTO `tb_temporary` VALUES (294, '8830', '', '', NULL, '3450', '', '12280', '', '', '', '', '', '442', '176.6', '', '', '', '', '', '', '', '', '618.6', '11661.4', 'เมษายน 2565', '2022-04-26', '2022-04-27', 113);
INSERT INTO `tb_temporary` VALUES (295, '14280', '1000', '2700', NULL, '13480', '', '31460', '', '', '', '', '', '714', '', '3000', '9', '', '', '', '', '', '', '3723', '27737', 'เมษายน 2565', '2022-04-26', '2022-04-27', 114);
INSERT INTO `tb_temporary` VALUES (296, '8280', '', '', NULL, '2075', '', '10355', '', '', '', '', '', '414', '165.6', '', '', '', '', '', '', '', '', '579.6', '9775.4', 'เมษายน 2565', '2022-04-26', '2022-04-27', 115);
INSERT INTO `tb_temporary` VALUES (297, '8280', '', '', NULL, '2625', '', '10905', '', '', '', '', '', '414', '165.6', '', '', '', '', '', '', '300', '', '879.6', '10025.4', 'เมษายน 2565', '2022-04-26', '2022-04-27', 116);
INSERT INTO `tb_temporary` VALUES (298, '8240', '', '', NULL, '1050', '', '9290', '', '', '', '', '', '412', '164.8', '', '', '', '', '2000', '50', '300', '', '2926.8', '6363.2', 'เมษายน 2565', '2022-04-26', '2022-04-27', 117);
INSERT INTO `tb_temporary` VALUES (299, '16520', '', '2500', NULL, '3000', '', '22020', '', '', '', '', '', '750', '', '', '28', '', '', '', '', '', '', '778', '21242', 'เมษายน 2565', '2022-04-26', '2022-04-27', 118);
INSERT INTO `tb_temporary` VALUES (300, '13760', '1000', '2700', NULL, '19740', '', '37200', '', '', '', '', '', '688', '', '', '', '', '', '', '', '', '', '688', '36512', 'เมษายน 2565', '2022-04-26', '2022-04-27', 167);
INSERT INTO `tb_temporary` VALUES (301, '12240', '', '1200', NULL, '5280', '', '18720', '', '', '', '', '', '612', '', '', '90', '', '', '', '', '', '', '702', '18018', 'เมษายน 2565', '2022-04-26', '2022-04-27', 164);
INSERT INTO `tb_temporary` VALUES (302, '6560', '', '', NULL, '4950', '', '11510', '', '', '', '', '', '328', '', '', '', '', '', '', '', '', '', '328', '11182', 'เมษายน 2565', '2022-04-26', '2022-04-27', 121);
INSERT INTO `tb_temporary` VALUES (303, '9530', '', '', NULL, '6380 ', '', '15910', '', '', '', '', '', '477', '  ', '', '  ', '', '', '', '  ', '  ', '  ', '477', '15443 ', 'เมษายน 2565  ', '2022-04-26', '2022-04-27', 129);
INSERT INTO `tb_temporary` VALUES (304, '11340', '', '2000', NULL, '6150', '', '19490', '', '', '', '179', '', '567', '', '', '', '', '', '', '', '', '', '746', '18744', 'เมษายน 2565', '2022-04-26', '2022-04-27', 141);
INSERT INTO `tb_temporary` VALUES (305, '11340', '', '2000', NULL, '6300', '', '19640', '', '', '', '', '', '567', '', '1000', '36', '', '', '', '', '', '781', '2384', '17256', 'เมษายน 2565', '2022-04-26', '2022-04-27', 142);
INSERT INTO `tb_temporary` VALUES (306, '18000', '', '', NULL, '4500', '', '22500', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '0', '22500', 'เมษายน 2565', '2022-04-26', '2022-04-27', 169);
INSERT INTO `tb_temporary` VALUES (307, '5040', '', '', NULL, '3849', '', '8889', '', '', '', '', '', '252', '', '', '', '', '', '', '', '', '', '252', '8637', 'เมษายน 2565', '2022-04-26', '2022-04-27', 119);
INSERT INTO `tb_temporary` VALUES (308, '5355', '', '', NULL, '10782.5', '', '16137.5', '', '', '', '', '', '268', '', '', '', '', '', '', '50', '', '', '318', '15819.5', 'เมษายน 2565', '2022-04-26', '2022-04-27', 120);
INSERT INTO `tb_temporary` VALUES (309, '5270', '', '', NULL, '7455', '', '12725', '', '', '', '140', '', '264', '', '', '', '', '', '', '', '', '', '404', '12321', 'เมษายน 2565', '2022-04-26', '2022-04-27', 122);
INSERT INTO `tb_temporary` VALUES (310, '5355', '', '', NULL, '7050', '', '12405', '', '', '', '16', '', '268', '', '', '', '', '', '', '', '', '', '284', '12121', 'เมษายน 2565', '2022-04-26', '2022-04-27', 123);
INSERT INTO `tb_temporary` VALUES (311, '5355', '', '', NULL, '6460', '', '11815', '', '', '', '', '', '268', '', '', '', '', '', '', '', '', '', '268', '11547', 'เมษายน 2565', '2022-04-26', '2022-04-27', 124);
INSERT INTO `tb_temporary` VALUES (312, '5355', '', '', NULL, '4410', '', '9765', '', '', '', '', '', '268', '', '', '', '', '', '', '', '', '', '268', '9497', 'เมษายน 2565', '2022-04-26', '2022-04-27', 125);
INSERT INTO `tb_temporary` VALUES (313, '5270', '', '', NULL, '7765', '', '13035', '', '', '', '', '', '264', '', '', '', '', '', '', '', '', '', '264', '12771', 'เมษายน 2565', '2022-04-26', '2022-04-27', 126);
INSERT INTO `tb_temporary` VALUES (314, '5270', '', '', NULL, '5320', '', '10590', '', '', '', '', '', '264', '', '', '', '', '', '', '', '', '', '264', '10326', 'เมษายน 2565', '2022-04-26', '2022-04-27', 127);
INSERT INTO `tb_temporary` VALUES (315, '5355', '', '', NULL, '1181.75', '', '6536.75', '', '', '', '', '', '268', '', '', '', '', '', '', '', '', '', '268', '6268.75', 'เมษายน 2565', '2022-04-26', '2022-04-27', 128);
INSERT INTO `tb_temporary` VALUES (316, '5219', '', '', NULL, '3348.5', '', '8567.5', '', '', '', '1183', '', '261', '', '', '', '', '', '2000', '2070', '', '', '5514', '3053.5', 'เมษายน 2565', '2022-04-26', '2022-04-27', 130);
INSERT INTO `tb_temporary` VALUES (317, '6664', '', '', NULL, '768', '', '7432', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '50', '7382', 'เมษายน 2565', '2022-04-26', '2022-04-27', 131);
INSERT INTO `tb_temporary` VALUES (318, '5270', '', '', NULL, '7275', '', '12545', '', '', '', '', '', '264', '', '', '', '', '', '', '', '', '', '264', '12281', 'เมษายน 2565', '2022-04-26', '2022-04-27', 132);
INSERT INTO `tb_temporary` VALUES (319, '5270', '', '', NULL, '4355', '', '9625', '', '', '', '', '', '264', '', '', '', '', '', '', '', '', '', '264', '9361', 'เมษายน 2565', '2022-04-26', '2022-04-27', 133);
INSERT INTO `tb_temporary` VALUES (320, '5219', '', '', NULL, '3684', '', '8903', '', '', '', '', '', '261', '', '', '', '', '', '', '2070', '', '', '2331', '6572', 'เมษายน 2565', '2022-04-26', '2022-04-27', 134);
INSERT INTO `tb_temporary` VALUES (321, '5219', '', '', NULL, '4357', '', '9576', '', '', '', '', '', '261', '', '', '', '', '', '', '', '', '', '261', '9315', 'เมษายน 2565', '2022-04-26', '2022-04-27', 135);
INSERT INTO `tb_temporary` VALUES (322, '4605', '', '', NULL, '2678.75', '', '7283.75', '', '', '', '', '', '230', '', '', '', '', '', '', '2070', '', '', '2300', '4983.75', 'เมษายน 2565', '2022-04-26', '2022-04-27', 136);
INSERT INTO `tb_temporary` VALUES (323, '5219', '', '', NULL, '2490.04', '', '7709.04', '', '', '', '135', '', '261', '', '', '', '', '', '', '', '', '', '396', '7313.04', 'เมษายน 2565', '2022-04-26', '2022-04-27', 137);
INSERT INTO `tb_temporary` VALUES (324, '5270', '', '', NULL, '7575', '', '12845', '', '', '', '', '', '264', '', '', '', '', '', '', '', '', '', '264', '12581', 'เมษายน 2565', '2022-04-26', '2022-04-27', 138);
INSERT INTO `tb_temporary` VALUES (325, '5270', '', '', NULL, '3312.5', '', '8582.5', '', '', '', '', '', '264', '', '', '', '', '', '', '', '', '353', '617', '7965.5', 'เมษายน 2565', '2022-04-26', '2022-04-27', 139);
INSERT INTO `tb_temporary` VALUES (326, '5270', '', '', NULL, '2787.5', '', '8057.5', '', '', '', '', '', '264', '', '', '', '', '', '', '', '', '', '264', '7793.5', 'เมษายน 2565', '2022-04-26', '2022-04-27', 140);
INSERT INTO `tb_temporary` VALUES (327, '5219', '', '', NULL, '7247.25', '', '12466.25', '', '', '', '265', '', '261', '', '', '', '', '', '2000', '2070', '', '', '4596', '7870.25', 'เมษายน 2565', '2022-04-26', '2022-04-27', 144);
INSERT INTO `tb_temporary` VALUES (328, '5219', '', '', NULL, '2303', '', '7522', '', '', '', '', '', '261', '', '', '', '', '', '', '50', '', '', '311', '7211', 'เมษายน 2565', '2022-04-26', '2022-04-27', 145);
INSERT INTO `tb_temporary` VALUES (329, '12750', '', '', NULL, '23635', '', '36385', '', '', '', '', '', '', '', '', '22', '', '', '', '', '', '', '22', '36363', 'เมษายน 2565', '2022-04-26', '2022-04-27', 168);
INSERT INTO `tb_temporary` VALUES (330, '5219', '', '', NULL, '5066', '', '10285', '', '', '', '', '', '261', '', '', '', '', '', '', '50', '', '', '311', '9974', 'เมษายน 2565', '2022-04-26', '2022-04-27', 147);
INSERT INTO `tb_temporary` VALUES (331, '5219', '', '', NULL, '5987', '', '11206', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '50', '11156', 'เมษายน 2565', '2022-04-26', '2022-04-27', 148);
INSERT INTO `tb_temporary` VALUES (332, '5219', '', '', NULL, '5066', '', '10285', '', '', '', '', '', '261', '', '', '', '', '', '', '50', '', '', '311', '9974', 'เมษายน 2565', '2022-04-26', '2022-04-27', 149);
INSERT INTO `tb_temporary` VALUES (333, '5219', '', '', NULL, '5063.75', '', '10282.75', '', '', '', '', '', '261', '', '', '', '', '', '', '', '', '', '261', '10021.75', 'เมษายน 2565', '2022-04-26', '2022-04-27', 165);
INSERT INTO `tb_temporary` VALUES (334, '5100', '0', '', NULL, '3800', '', '8900', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '0', '8900', 'เมษายน 2565', '2022-04-26', '2022-04-27', 166);
INSERT INTO `tb_temporary` VALUES (405, '13640', '', '', '', '2100', '', '15740', '0', '210', '', '', '', '136', '272.8', '', '', '3000', '', '', '', '', '', '3618.8', '12121.2', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 86);
INSERT INTO `tb_temporary` VALUES (406, '13570', '', '', '', '1200', '', '14770', '0', '210', '', '', '', '136', '271.4', '3900', '', '', '', '', '', '', '1000', '5517.4', '9252.6', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 87);
INSERT INTO `tb_temporary` VALUES (407, '12660', '', '', '', '4125', '', '16785', '680', '420', '', '', '', '127', '253.2', '', '', '1500', '', '', '50', '', '', '3030.2', '13754.8', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 88);
INSERT INTO `tb_temporary` VALUES (408, '12410', '', '', '', '6500', '', '18910', '340', '', '', '612', '', '124', '', '', '29', '3100', '3546', '2000', '', '', '', '9751', '9159', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 89);
INSERT INTO `tb_temporary` VALUES (409, '10940', '', '', '', '2400', '', '13340', '0', '210', '', '190', '', '109', '218.8', '1000', '', '', '', '', '50', '', '1300', '3077.8', '10262.2', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 90);
INSERT INTO `tb_temporary` VALUES (410, '12070', '', '', '', '1350', '', '13420', '340', '210', '', '382', '', '121', '', '', '', '5400', '2130', '', '', '300', '227', '9110', '4310', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 91);
INSERT INTO `tb_temporary` VALUES (411, '11610', '', '', '', '2812.5', '', '14422.5', '340', '210', '', '300', '', '116', '', '', '', '2400', '3500', '', '50', '', '', '6916', '7506.5', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 92);
INSERT INTO `tb_temporary` VALUES (412, '13640', '', '', '', '3750', '4933', '22323', '340', '210', '', '2056', '', '136', '272.8', '3227.75', '', '4527', '', '2000', '50', '', '', '12819.55', '9503.45', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 93);
INSERT INTO `tb_temporary` VALUES (413, '11990', '', '', '', '3750', '', '15740', '0', '', '', '', '', '120', '239.8', '', '', '', '', '', '50', '', '', '409.8', '15330.2', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 94);
INSERT INTO `tb_temporary` VALUES (414, '11550', '', '', '', '6600', '', '18150', '340', '210', '', '501', '', '116', '231', '', '', '', '', '', '', '', '', '1398', '16752', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 95);
INSERT INTO `tb_temporary` VALUES (415, '11150', '', '', '', '5750', '', '16900', '0', '', '', '1013', '', '112', '223', '1633', '61', '', '', '2000', '', '300', '', '5342', '11558', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 96);
INSERT INTO `tb_temporary` VALUES (416, '10950', '', '', '', '5700', '', '16650', '340', '210', '', '40', '', '110', '219', '2533.75', '', '3500', '', '', '', '', '2446', '9398.75', '7251.25', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 97);
INSERT INTO `tb_temporary` VALUES (417, '10940', '', '', '', '1200', '', '12140', '', '', '', '', '', '109', '218.8', '', '', '', '', '', '50', '300', '', '677.8', '11462.2', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 98);
INSERT INTO `tb_temporary` VALUES (418, '14240', '', '', '', '0', '9000', '23240', '340', '', '', '', '', '142', '284.8', '1873', '', '4200', '1600', '2000', '2070', '', '1032', '13541.8', '9698.2', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 99);
INSERT INTO `tb_temporary` VALUES (419, '10480', '', '', '', '5850', '', '16330', '340', '', '', '366', '', '105', '209.6', '', '', '4000', '', '', '', '', '699', '5719.6', '10610.4', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 100);
INSERT INTO `tb_temporary` VALUES (420, '10090', '', '', '', '2850', '', '12940', '680', '', '', '181', '', '101', '201.8', '', '', '4000', '', '', '', '', '', '5163.8', '7776.2', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 101);
INSERT INTO `tb_temporary` VALUES (421, '9710', '', '', '', '6300', '', '16010', '0', '', '', '', '', '97', '194.2', '1000', '', '', '1700', '', '', '', '863', '3854.2', '12155.8', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 102);
INSERT INTO `tb_temporary` VALUES (422, '9420', '', '', '', '2025', '', '11445', '340', '', '', '75', '', '94', '188.4', '500', '', '', '', '', '', '', '', '1197.4', '10247.6', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 103);
INSERT INTO `tb_temporary` VALUES (423, '12010', '', '', '', '420', '', '12430', '-', '210', '', '', '', '120', '240.2', '500', '', '', '', '', '50', '', '', '1120.2', '11309.8', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 104);
INSERT INTO `tb_temporary` VALUES (424, '9450', '', '', '', '6050', '', '15500', '-', '', '', '277', '', '95', '189', '', '', '', '', '', '', '', '', '561', '14939', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 105);
INSERT INTO `tb_temporary` VALUES (425, '9160', '', '', '', '2625', '', '11785', '-', '', '', '', '', '92', '183.2', '', '', '', '4288', '', '', '', '333', '4896.2', '6888.8', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 106);
INSERT INTO `tb_temporary` VALUES (426, '8900', '', '', '', '5150', '', '14050', '-', '', '', '283', '', '89', '178', '', '', '4030', '', '2000', '', '', '2400', '8980', '5070', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 107);
INSERT INTO `tb_temporary` VALUES (427, '10160', '', '', '', '2850', '39180', '52190', '', '', '', '175', '', '102', '', '', '', '', '', '1000', '2070', '', '3332', '6679', '45511', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 108);
INSERT INTO `tb_temporary` VALUES (428, '9180', '', '', '', '12122.5', '', '21302.5', '', '', '', '', '', '92', '183.6', '', '', '', '', '', '50', '', '', '325.6', '20976.9', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 109);
INSERT INTO `tb_temporary` VALUES (429, '14460', '', '', '1500', '3460', '', '19420', '', '', '', '', '', '145', '289.2', '', '', '', '', '', '', '', '', '434.2', '18985.8', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 110);
INSERT INTO `tb_temporary` VALUES (430, '8850', '', '', '', '10232.5', '', '19082.5', '340', '', '', '140', '', '89', '177', '', '', '', '', '', '4090', '', '', '4836', '14246.5', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 111);
INSERT INTO `tb_temporary` VALUES (431, '8770', '', '', '', '11412.5', '', '20182.5', '', '', '', '', '', '88', '175.4', '', '45', '', '', '', '50', '', '', '358.4', '19824.1', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 112);
INSERT INTO `tb_temporary` VALUES (432, '8830', '', '', '', '2100', '', '10930', '', '', '', '', '', '88', '176.6', '', '', '', '', '', '', '', '', '264.6', '10665.4', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 113);
INSERT INTO `tb_temporary` VALUES (433, '14280', '1000', '', '2700', '17700', '', '35680', '', '', '', '', '', '143', '', '3000', '9', '', '', '', '', '', '', '3152', '32528', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 114);
INSERT INTO `tb_temporary` VALUES (434, '8280', '', '', '', '5350', '', '13630', '', '', '', '', '', '83', '165.6', '', '', '', '', '', '', '', '', '248.6', '13381.4', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 115);
INSERT INTO `tb_temporary` VALUES (435, '8280', '', '', '', '1575', '', '9855', '', '', '', '', '', '83', '165.6', '', '', '', '', '', '', '300', '', '548.6', '9306.4', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 116);
INSERT INTO `tb_temporary` VALUES (436, '8240', '', '', '', '4125', '', '12365', '', '', '', '', '', '82', '164.8', '', '', '', '', '2000', '50', '300', '', '2596.8', '9768.2', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 117);
INSERT INTO `tb_temporary` VALUES (437, '16520', '', '', '2500', '4200', '', '23220', '', '', '', '', '', '150', '', '', '20', '', '', '', '', '', '', '170', '23050', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 118);
INSERT INTO `tb_temporary` VALUES (438, '13760', '1000', '', '2700', '17700', '', '35160', '', '', '', '6', '', '138', '', '', '', '', '', '', '', '', '', '144', '35016', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 167);
INSERT INTO `tb_temporary` VALUES (439, '12240', '', '', '1200', '5040', '', '18480', '', '', '', '', '', '122', '', '', '74', '', '', '', '', '', '', '196', '18284', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 164);
INSERT INTO `tb_temporary` VALUES (440, '6560', '', '', '', '5350', '', '11910', '', '', '', '186', '', '66', '', '', '', '', '', '', '', '', '', '252', '11658', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 121);
INSERT INTO `tb_temporary` VALUES (441, '9530', '', '', '', '5720', '', '15250', '', '', '', '', '', '95', '', '', '', '', '', '', '', '', '', '95', '15155', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 129);
INSERT INTO `tb_temporary` VALUES (442, '11340', '', '', '2000', '3600', '', '16940', '', '', '', '204', '', '113', '', '', '', '', '', '', '', '', '', '317', '16623', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 141);
INSERT INTO `tb_temporary` VALUES (443, '11340', '', '', '2000', '4820', '', '18160', '', '', '', '12', '', '113', '', '1000', '36', '', '', '', '', '', '781', '1942', '16218', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 142);
INSERT INTO `tb_temporary` VALUES (444, '18000', '', '', '', '3200', '', '21200', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '0', '21200', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 169);
INSERT INTO `tb_temporary` VALUES (445, '5355', '', '', '', '2121', '', '7476', '', '', '', '', '', '54', '', '', '', '', '', '', '', '', '', '54', '7422', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 119);
INSERT INTO `tb_temporary` VALUES (446, '5985', '', '', '', '14090', '', '20075', '', '', '', '200', '', '60', '', '', '', '', '', '', '50', '', '', '310', '19765', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 120);
INSERT INTO `tb_temporary` VALUES (447, '5890', '', '', '', '6045', '', '11935', '', '', '', '448', '', '59', '', '', '', '', '', '', '', '', '', '507', '11428', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 122);
INSERT INTO `tb_temporary` VALUES (448, '5985', '', '', '', '2090', '', '8075', '', '', '', '124', '', '60', '', '', '', '', '', '', '', '', '', '184', '7891', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 123);
INSERT INTO `tb_temporary` VALUES (449, '5985', '', '', '', '6410', '', '12395', '', '', '', '', '', '60', '', '', '', '', '', '', '', '', '', '60', '12335', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 124);
INSERT INTO `tb_temporary` VALUES (450, '5040', '', '', '', '1875.5', '', '6915.5', '', '', '', '', '', '50', '', '', '', '', '', '', '', '', '', '50', '6865.5', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 125);
INSERT INTO `tb_temporary` VALUES (451, '5890', '', '', '', '4340', '', '10230', '', '', '', '', '', '59', '', '', '', '', '', '', '', '', '', '59', '10171', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 126);
INSERT INTO `tb_temporary` VALUES (452, '5890', '', '', '', '6810', '', '12700', '', '', '', '', '', '59', '', '', '', '', '', '', '', '', '', '59', '12641', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 127);
INSERT INTO `tb_temporary` VALUES (453, '5985', '', '', '', '3607.5', '', '9592.5', '', '', '', '', '', '60', '', '', '', '', '', '', '', '', '', '60', '9532.5', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 128);
INSERT INTO `tb_temporary` VALUES (454, '5833', '', '', '', '3377', '', '9210', '', '', '', '1322', '', '58', '', '', '', '', '', '2000', '2070', '', '', '5450', '3760', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 130);
INSERT INTO `tb_temporary` VALUES (455, '5833', '', '', '', '1228', '', '7061', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '50', '7011', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 131);
INSERT INTO `tb_temporary` VALUES (456, '5890', '', '', '', '3970', '', '9860', '', '', '', '', '', '59', '', '', '', '', '', '', '', '', '', '59', '9801', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 132);
INSERT INTO `tb_temporary` VALUES (457, '5890', '', '', '', '4915', '', '10805', '', '', '', '20', '', '59', '', '', '', '', '', '', '', '', '', '79', '10726', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 133);
INSERT INTO `tb_temporary` VALUES (458, '4298', '', '', '', '1535', '', '5833', '', '', '', '40', '', '43', '', '', '', '', '', '', '50', '', '', '133', '5700', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 134);
INSERT INTO `tb_temporary` VALUES (459, '', '', '', '', '0', '', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '0', '0', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 135);
INSERT INTO `tb_temporary` VALUES (460, '5526', '', '', '', '3843.5', '', '9369.5', '', '', '', '340', '', '55', '', '', '', '', '', '', '2070', '', '', '2465', '6904.5', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 136);
INSERT INTO `tb_temporary` VALUES (461, '4605', '', '', '', '2225.84', '', '6830.84', '', '', '', '113', '', '46', '', '', '', '', '', '', '', '', '', '159', '6671.84', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 137);
INSERT INTO `tb_temporary` VALUES (462, '5890', '', '', '', '4330', '', '10220', '', '', '', '', '', '59', '', '', '', '', '', '', '', '', '', '59', '10161', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 138);
INSERT INTO `tb_temporary` VALUES (463, '5890', '', '', '', '4700', '', '10590', '', '', '', '', '', '59', '', '', '', '', '', '', '', '', '353', '412', '10178', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 139);
INSERT INTO `tb_temporary` VALUES (464, '5890', '', '', '', '4960', '', '10850', '', '', '', '234', '', '59', '', '', '', '', '', '', '', '', '', '293', '10557', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 140);
INSERT INTO `tb_temporary` VALUES (465, '5833', '', '', '', '2609.5', '', '8442.5', '', '', '', '30', '', '58', '', '', '', '', '', '2000', '2070', '', '', '4158', '4284.5', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 144);
INSERT INTO `tb_temporary` VALUES (466, '5833', '', '', '', '1528', '', '7361', '', '', '', '', '', '58', '', '', '', '', '', '', '50', '', '', '108', '7253', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 145);
INSERT INTO `tb_temporary` VALUES (467, '13500', '', '', '', '12850', '', '26350', '', '', '', '', '', '', '', '', '59', '', '', '', '', '', '', '59', '26291', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 168);
INSERT INTO `tb_temporary` VALUES (468, '5833', '', '', '', '3070', '', '8903', '', '', '', '', '', '58', '', '', '', '', '', '', '50', '', '', '108', '8795', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 147);
INSERT INTO `tb_temporary` VALUES (469, '5833', '', '', '', '3684', '', '9517', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '50', '9467', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 148);
INSERT INTO `tb_temporary` VALUES (470, '5833', '', '', '', '3377', '', '9210', '', '', '', '', '', '58', '', '', '', '', '', '', '2070', '', '', '2128', '7082', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 149);
INSERT INTO `tb_temporary` VALUES (471, '5833', '', '', '', '4398', '', '10231', '', '', '', '140', '', '58', '', '', '', '', '', '', '', '', '', '198', '10033', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 165);
INSERT INTO `tb_temporary` VALUES (472, '5700', '0', '', '', '4500', '', '10200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '10200', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 166);
INSERT INTO `tb_temporary` VALUES (473, '2400', '', '', '', '', '', '2400', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '2400', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 171);
INSERT INTO `tb_temporary` VALUES (474, '900', '', '', '', '', '', '900', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '900', 'พฤษภาคม 2565', '2022-06-09', '2022-05-27', 172);
INSERT INTO `tb_temporary` VALUES (475, '14330', '', '1380', '', '1800', '', '17510', '0', '210', '', '', '', '143', '286.6', '', '', '3000', '', '', '', '', '', '3639.6', '13870.4', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 86);
INSERT INTO `tb_temporary` VALUES (476, '14250', '', '1360', '', '1200', '', '16810', '0', '210', '', '', '', '143', '285', '3900', '', '', '', '', '', '', '1000', '5538', '11272', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 87);
INSERT INTO `tb_temporary` VALUES (477, '13300', '', '1280', '', '3956.25', '', '18536.25', '680', '420', '', '', '', '133', '266', '', '', '1500', '', '', '50', '', '', '3049', '15487.25', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 88);
INSERT INTO `tb_temporary` VALUES (478, '13040', '', '1260', '', '4800', '', '19100', '340', '', '', '635', '', '130', '', '', '28', '3100', '3546', '', '', '', '', '7779', '11321', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 89);
INSERT INTO `tb_temporary` VALUES (479, '11490', '', '1100', '', '2100', '', '14690', '0', '210', '', '146', '', '115', '229.8', '1000', '', '', '', '', '50', '', '1300', '3050.8', '11639.2', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 90);
INSERT INTO `tb_temporary` VALUES (480, '12680', '', '1220', '', '300', '', '14200', '340', '210', '', '732', '', '127', '', '', '', '5400', '2130', '', '', '300', '287', '9526', '4674', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 91);
INSERT INTO `tb_temporary` VALUES (481, '12200', '', '1180', '', '3750', '', '17130', '340', '210', '', '356', '', '122', '', '', '', '2400', '3000', '', '50', '', '', '6478', '10652', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 92);
INSERT INTO `tb_temporary` VALUES (482, '14330', '', '1380', '', '1800', '5169', '22679', '340', '210', '', '1210', '', '143', '286.6', '3199.5', '', '4527', '', '2000', '50', '', '', '11966.1', '10712.9', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 93);
INSERT INTO `tb_temporary` VALUES (483, '12590', '', '1200', '', '4275', '', '18065', '0', '', '', '', '', '126', '251.8', '', '', '', '', '', '50', '', '', '427.8', '17637.2', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 94);
INSERT INTO `tb_temporary` VALUES (484, '12130', '', '1160', '', '5850', '', '19140', '340', '210', '', '515', '', '121', '242.6', '', '', '', '', '', '', '', '', '1428.6', '17711.4', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 95);
INSERT INTO `tb_temporary` VALUES (485, '11710', '', '1120', '', '4200', '', '17030', '0', '', '', '944', '', '117', '234.2', '1629.5', '69', '', '', '2000', '', '300', '20', '5313.7', '11716.3', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 96);
INSERT INTO `tb_temporary` VALUES (486, '11500', '', '1100', '', '6000', '', '18600', '340', '210', '', '40', '', '115', '230', '2518', '', '3500', '', '', '', '', '2446', '9399', '9201', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 97);
INSERT INTO `tb_temporary` VALUES (487, '11490', '', '1100', '', '900', '', '13490', '', '', '', '', '', '115', '229.8', '', '', '', '', '', '50', '300', '', '694.8', '12795.2', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 98);
INSERT INTO `tb_temporary` VALUES (488, '14960', '', '1440', '', '1650', '4270', '22320', '340', '', '', '130', '', '150', '299.2', '1859.25', '', '4200', '1600', '2000', '2070', '', '1032', '13680.45', '8639.55', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 99);
INSERT INTO `tb_temporary` VALUES (489, '11010', '', '1060', '', '4550', '', '16620', '340', '', '', '103', '', '110', '220.2', '', '', '2000', '500', '', '', '', '679', '3952.2', '12667.8', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 100);
INSERT INTO `tb_temporary` VALUES (490, '10600', '', '1100', '', '2400', '', '14100', '680', '', '', '162', '', '106', '212', '', '', '4000', '', '', '', '', '', '5160', '8940', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 101);
INSERT INTO `tb_temporary` VALUES (491, '10200', '', '980', '', '5850', '', '17030', '0', '', '', '', '', '102', '204', '1000', '', '', '1700', '', '', '', '863', '3869', '13161', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 102);
INSERT INTO `tb_temporary` VALUES (492, '9900', '', '960', '', '1125', '', '11985', '340', '', '', '180', '', '99', '198', '500', '', '', '', '', '', '', '', '1317', '10668', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 103);
INSERT INTO `tb_temporary` VALUES (493, '12620', '', '1220', '', '1680', '', '15520', '-', '210', '', '', '', '126', '252.4', '500', '', '', '', '', '50', '', '', '1138.4', '14381.6', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 104);
INSERT INTO `tb_temporary` VALUES (494, '9930', '', '960', '', '5100', '', '15990', '-', '', '', '575', '', '99', '198.6', '', '', '', '', '', '', '', '', '872.6', '15117.4', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 105);
INSERT INTO `tb_temporary` VALUES (495, '9620', '', '920', '', '1275', '', '11815', '-', '', '', '', '', '96', '192.4', '', '', '', '4288', '', '', '', '333', '4909.4', '6905.6', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 106);
INSERT INTO `tb_temporary` VALUES (496, '9350', '', '900', '', '4800', '', '15050', '-', '', '', '393', '', '94', '187', '', '', '4030', '', '2000', '', '', '2400', '9104', '5946', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 107);
INSERT INTO `tb_temporary` VALUES (497, '10670', '', '1020', '', '2400', '37160', '51250', '', '', '', '85', '', '107', '', '', '', '', '', '1000', '2070', '', '3332', '6594', '44656', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 108);
INSERT INTO `tb_temporary` VALUES (498, '9640', '', '920', '', '10260', '', '20820', '', '', '', '', '', '96', '192.8', '', '50', '', '', '', '50', '', '', '388.8', '20431.2', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 109);
INSERT INTO `tb_temporary` VALUES (499, '15190', '', '1460', '1500', '4320', '', '22470', '', '', '', '', '', '150', '303.8', '', '', '', '', '', '', '', '', '453.8', '22016.2', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 110);
INSERT INTO `tb_temporary` VALUES (500, '9300', '', '900', '', '7505', '', '17705', '340', '', '', '190', '', '93', '186', '', '', '', '', '', '4090', '', '', '4899', '12806', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 111);
INSERT INTO `tb_temporary` VALUES (501, '9210', '', '880', '', '7010', '', '17100', '', '', '', '', '', '92', '184.2', '', '', '', '', '', '50', '', '', '326.2', '16773.8', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 112);
INSERT INTO `tb_temporary` VALUES (502, '9280', '', '900', '', '2400', '', '12580', '', '', '', '', '', '93', '185.6', '', '', '', '', '', '', '', '', '278.6', '12301.4', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 113);
INSERT INTO `tb_temporary` VALUES (503, '15000', '1000', '1440', '2700', '12160', '', '32300', '', '', '', '', '', '150', '', '3000', '9', '', '', '', '', '', '', '3159', '29141', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 114);
INSERT INTO `tb_temporary` VALUES (504, '8700', '', '840', '', '5250', '', '14790', '', '', '', '', '', '87', '174', '', '', '', '', '', '', '', '', '261', '14529', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 115);
INSERT INTO `tb_temporary` VALUES (505, '8700', '', '840', '', '1725', '', '11265', '', '', '', '', '', '87', '174', '', '', '', '', '', '', '300', '', '561', '10704', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 116);
INSERT INTO `tb_temporary` VALUES (506, '8660', '', '840', '', '3750', '', '13250', '', '', '', '', '', '87', '173.2', '', '', '', '', '2000', '50', '300', '', '2610.2', '10639.8', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 117);
INSERT INTO `tb_temporary` VALUES (507, '17350', '', '1660', '2500', '4500', '', '26010', '', '', '', '', '', '150', '', '', '42', '', '', '', '', '', '', '192', '25818', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 118);
INSERT INTO `tb_temporary` VALUES (508, '14450', '1000', '1380', '2700', '18760', '', '38290', '', '', '', '40', '', '145', '', '', '', '', '', '', '', '', '', '185', '38105', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 167);
INSERT INTO `tb_temporary` VALUES (509, '12240', '', '', '1200', '5240', '', '18680', '', '', '', '', '', '122', '', '', '62', '', '', '', '', '', '', '184', '18496', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 164);
INSERT INTO `tb_temporary` VALUES (510, '0', '', '660', '', '2550', '', '3210', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '0', '3210', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 121);
INSERT INTO `tb_temporary` VALUES (511, '10010', '', '960', '', '5000', '', '15970', '', '', '', '', '', '100', '', '', '', '', '', '', '', '', '', '100', '15870', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 129);
INSERT INTO `tb_temporary` VALUES (512, '11910', '', '1140', '6000', '3400', '', '22450', '', '', '', '357', '', '119', '', '', '', '', '', '', '', '', '1500', '1976', '20474', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 141);
INSERT INTO `tb_temporary` VALUES (513, '11910', '', '1140', '6000', '3000', '', '22050', '', '', '', '', '', '119', '', '1000', '34', '', '', '', '', '', '781', '1934', '20116', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 142);
INSERT INTO `tb_temporary` VALUES (514, '18000', '', '', '5000', '2400', '', '25400', '', '', '', '', '', '0', '', '', '90', '', '', '', '', '', '', '90', '25310', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 169);
INSERT INTO `tb_temporary` VALUES (515, '5985', '', '', '', '2514', '', '8499', '', '', '', '', '', '60', '', '', '', '', '', '', '', '', '', '60', '8439', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 119);
INSERT INTO `tb_temporary` VALUES (516, '6615', '', '', '', '8460', '', '15075', '', '', '', '', '', '66', '', '', '', '', '', '', '50', '', '', '116', '14959', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 120);
INSERT INTO `tb_temporary` VALUES (517, '6510', '', '', '', '1240', '', '7750', '', '', '', '122', '', '65', '', '', '', '', '', '', '', '', '', '187', '7563', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 122);
INSERT INTO `tb_temporary` VALUES (518, '6615', '', '', '', '4445', '', '11060', '', '', '', '24', '', '66', '', '', '', '', '', '', '', '', '', '90', '10970', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 123);
INSERT INTO `tb_temporary` VALUES (519, '6615', '', '', '', '6810', '', '13425', '', '', '', '65', '', '66', '', '', '', '', '', '', '', '', '', '131', '13294', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 124);
INSERT INTO `tb_temporary` VALUES (520, '4410', '', '', '', '1654', '', '6064', '', '', '', '', '', '44', '', '', '', '', '', '', '', '', '', '44', '6020', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 125);
INSERT INTO `tb_temporary` VALUES (521, '6510', '', '', '', '6510', '', '13020', '', '', '', '', '', '65', '', '', '', '', '', '', '', '', '', '65', '12955', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 126);
INSERT INTO `tb_temporary` VALUES (522, '6510', '', '', '', '4280', '', '10790', '', '', '', '65', '', '65', '', '', '', '', '', '', '', '', '', '130', '10660', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 127);
INSERT INTO `tb_temporary` VALUES (523, '6300', '', '', '', '2520', '', '8820', '', '', '', '', '', '63', '', '', '', '', '', '', '', '', '', '63', '8757', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 128);
INSERT INTO `tb_temporary` VALUES (524, '6447', '', '', '', '3914.25', '', '10361.25', '', '', '', '1150', '', '64', '', '', '', '', '', '2000', '2070', '', '', '5284', '5077.25', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 130);
INSERT INTO `tb_temporary` VALUES (525, '6447', '', '', '', '307', '', '6754', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '50', '6704', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 131);
INSERT INTO `tb_temporary` VALUES (526, '6510', '', '', '', '6295', '', '12805', '', '', '', '', '', '65', '', '', '', '', '', '', '', '', '', '65', '12740', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 132);
INSERT INTO `tb_temporary` VALUES (527, '6510', '', '', '', '4650', '', '11160', '', '', '', '28', '', '65', '', '', '', '', '', '', '', '', '', '93', '11067', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 133);
INSERT INTO `tb_temporary` VALUES (528, '6140', '', '', '', '1842', '', '7982', '', '', '', '', '', '61', '', '', '', '', '', '', '2070', '', '', '2131', '5851', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 134);
INSERT INTO `tb_temporary` VALUES (529, '', '', '', '', '614', '', '614', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '0', '614', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 135);
INSERT INTO `tb_temporary` VALUES (530, '5833', '', '', '', '3480.25', '', '9313.25', '', '', '', '', '', '58', '', '', '', '', '', '2000', '2070', '', '', '4128', '5185.25', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 136);
INSERT INTO `tb_temporary` VALUES (531, '6140', '', '', '', '1304.84', '', '7444.84', '', '', '', '108', '', '61', '', '', '', '', '', '', '', '', '', '169', '7275.84', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 137);
INSERT INTO `tb_temporary` VALUES (532, '6510', '', '', '', '3140', '', '9650', '', '', '', '', '', '65', '', '', '', '', '', '', '', '', '', '65', '9585', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 138);
INSERT INTO `tb_temporary` VALUES (533, '6510', '', '', '', '6665', '', '13175', '', '', '', '', '', '65', '', '', '', '', '', '', '', '', '353', '418', '12757', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 139);
INSERT INTO `tb_temporary` VALUES (534, '6510', '', '', '', '4960', '', '11470', '', '', '', '181', '', '65', '', '', '', '', '', '', '', '', '', '246', '11224', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 140);
INSERT INTO `tb_temporary` VALUES (535, '6447', '', '', '', '3146.75', '', '9593.75', '', '', '', '187', '', '64', '', '', '', '', '', '2000', '2070', '', '', '4321', '5272.75', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 144);
INSERT INTO `tb_temporary` VALUES (536, '6447', '', '', '', '1535', '', '7982', '', '', '', '', '', '64', '', '', '', '', '', '', '50', '', '', '114', '7868', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 145);
INSERT INTO `tb_temporary` VALUES (537, '15750', '', '', '', '19840', '', '35590', '', '', '', '', '', '', '', '', '42', '', '', '', '', '', '', '42', '35548', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 168);
INSERT INTO `tb_temporary` VALUES (538, '6447', '', '', '', '3070', '', '9517', '', '', '', '', '', '64', '', '', '', '', '', '', '50', '', '', '114', '9403', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 147);
INSERT INTO `tb_temporary` VALUES (539, '6447', '', '', '', '3070', '', '9517', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '50', '9467', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 148);
INSERT INTO `tb_temporary` VALUES (540, '6447', '', '', '', '3070', '', '9517', '', '', '', '', '', '64', '', '', '', '', '', '', '50', '', '', '114', '9403', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 149);
INSERT INTO `tb_temporary` VALUES (541, '6447', '', '', '', '5833', '', '12280', '', '', '', '', '', '64', '', '', '', '', '', '', '', '', '', '64', '12216', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 165);
INSERT INTO `tb_temporary` VALUES (542, '6300', '0', '', '', '2650', '', '8950', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '8950', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 166);
INSERT INTO `tb_temporary` VALUES (543, '6300', '', '', '', '5250', '', '11550', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '11550', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 171);
INSERT INTO `tb_temporary` VALUES (544, '6300', '', '', '', '1650', '', '7950', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '7950', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 172);
INSERT INTO `tb_temporary` VALUES (545, '4800', '', '', '', '0', '', '4800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '4800', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 173);
INSERT INTO `tb_temporary` VALUES (546, '6000', '', '', '', '0', '', '6000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '6000', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 174);
INSERT INTO `tb_temporary` VALUES (547, '3900', '', '', '', '0', '', '3900', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '3900', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 175);
INSERT INTO `tb_temporary` VALUES (548, '1800', '', '', '', '0', '', '1800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '1800', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 176);
INSERT INTO `tb_temporary` VALUES (549, '5100', '', '', '', '1200', '', '6300', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '6300', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 177);
INSERT INTO `tb_temporary` VALUES (550, '4800', '', '', '', '450', '', '5250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '5250', 'มิถุนายน 2565', '2022-06-28', '2022-06-28', 178);

SET FOREIGN_KEY_CHECKS = 1;
