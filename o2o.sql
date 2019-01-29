#生活服务分类表
CREATE TABLE `o2o_category` (
    `id` INT(11) unsigned NOT NULL auto_increment,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
    `listorder` int(9)  unsigned NOT NULL DEFAULT 0,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `create_time` INT(11) unsigned NOT NULL DEFAULT 0, 
    `update_time` INT(11) unsigned NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    KEY parent_id(`parent_id`)  
)ENGINE=InnoDB auto_increment=1 DEFAULT CHARSET=utf8;

#城市表
CREATE TABLE `o2o_city` (
    `id` INT(11) unsigned NOT NULL auto_increment,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `uname` VARCHAR(50) NOT NULL DEFAULT '',
    `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
    `listorder` int(9)  unsigned NOT NULL DEFAULT 0,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `create_time` INT(11) unsigned NOT NULL DEFAULT 0, 
    `update_time` INT(11) unsigned NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    KEY parent_id(`parent_id`),
    UNIQUE KEY uname(`uname`)
)ENGINE=InnoDB auto_increment=1 DEFAULT CHARSET=utf8;


#商品表
