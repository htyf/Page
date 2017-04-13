CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `num` double DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='商品类'$$



/*
-- Query: select * from test.tb_product
LIMIT 0, 1000

-- Date: 2017-04-13 14:33
*/
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (1,'苹果',12,5,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (2,'梨',12,2,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (3,'柑橘',12,1,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (4,'荔枝',12,5,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (5,'香蕉',12,3,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (6,'柚子',23,10,'个');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (7,'山竹',12,12,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (8,'火龙果',34,6,'个');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (9,'菠萝',23,13,'个');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (10,'西瓜',34,3,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (11,'哈密瓜',23,4,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (12,'葡萄',23,7,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (13,'红枣',12,14,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (14,'红提',434,12,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (15,'杨桃',32,4,'个');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (16,'猕猴桃',67,7,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (17,'甘蔗',45,10,'根');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (18,'菠萝蜜',65,20,'个');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (19,'圣女果',33,9,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (20,'桂圆',44,15,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (21,'李子',34,5,'斤');
INSERT INTO `tb_product` (`id`,`name`,`num`,`price`,`unit`) VALUES (22,'椰子',75,20,'个');
