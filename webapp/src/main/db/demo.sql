-- 图书
DROP TABLE IF EXISTS `demo_book`;
CREATE TABLE `demo_book` (
  `book_id` varchar(32) NOT NULL COMMENT '图书ID',
  `book_name` varchar(100) NOT NULL COMMENT '图书名称',
  `book_number` int(11) NOT NULL COMMENT '馆藏数量',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图书';

-- 初始化图书数据
INSERT INTO `demo_book` (`book_id`, `book_name`, `book_number`)
VALUES
	(REPLACE(UUID(),'-',''), 'Java程序设计', 10),
	(REPLACE(UUID(),'-',''), '数据结构', 10),
	(REPLACE(UUID(),'-',''), '设计模式', 10),
	(REPLACE(UUID(),'-',''), '编译原理', 10);

-- 预约图书
DROP TABLE IF EXISTS `demo_appointment`;
CREATE TABLE `demo_appointment` (
  `book_id` varchar(32) NOT NULL COMMENT '图书ID',
  `student_id` varchar(32) NOT NULL COMMENT '学号',
  `appoint_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间' ,
  PRIMARY KEY (`book_id`, `student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约图书';