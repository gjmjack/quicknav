Drop database if exists zrl_so;

create database zrl_so;

use zrl_so;

DROP TABLE IF EXISTS `zrl_so`.`database_information`;

CREATE TABLE `zrl_so`.`database_information` (
    `KeyName` varchar(48) NOT NULL,
    `KeyValue` varchar(1024) NOT NULL,
    PRIMARY KEY (`KeyName`),
    UNIQUE KEY `Id_UNIQUE` (`KeyName`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `zrl_so`.`database_information`
(`KeyName`,
`KeyValue`)
VALUES
('Id',uuid()),
('Version','1.0.0.0'),
('CreateTime',SYSDATE()),
('LastUpdate',SYSDATE());
 
DROP TABLE IF EXISTS  `zrl_so`.`urls`;

CREATE TABLE `zrl_so`.`urls` (
    `Id` bigint(20) NOT NULL AUTO_INCREMENT,
    `RowOrdinal` int(11) NOT NULL DEFAULT '0',
    `ShortUrl` varchar(64) NOT NULL DEFAULT '',
    `OriginalUrl` varchar(4098) NOT NULL,
    `CreateTime` datetime NOT NULL,
    `ExId` bigint(20) NOT NULL DEFAULT '0',
    `Md5` char(32) DEFAULT NULL,
    `ExpireTime` datetime DEFAULT NULL,
    PRIMARY KEY (`Id` , `RowOrdinal` , `ExId`),
    KEY `ShortUrl` (`ShortUrl`) USING BTREE
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS  `zrl_so`.`user_info`;

CREATE TABLE `zrl_so`.`user_info` (
    `Id` bigint(20) NOT NULL AUTO_INCREMENT,
    `Login` varchar(96) NOT NULL,
    `ExId` bigint(20) NOT NULL,
    `Token` varchar(512) NOT NULL COMMENT 'password',
    `Country` int(11) NOT NULL,
    `EmainlAddress` varchar(512) DEFAULT NULL,
    `NickName` varchar(512) DEFAULT NULL,
    `Properties` varchar(2048) DEFAULT NULL,
    `CellPhone` varchar(16) DEFAULT NULL,
    PRIMARY KEY (`Id` , `Login` , `ExId`),
    UNIQUE KEY `Login_UNIQUE` (`Login`),
    UNIQUE KEY `Id_UNIQUE` (`Id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `zrl_so`.`user_info`
(
`Login`,
`ExId`,
`Token`,
`Country`,
`EmainlAddress`,
`NickName`)
VALUES
('gjmjack@126.com',
0,
password('1qaz2wsxZRL'),
86,
'gjmjack@126.com',
'Jacob');

DROP TABLE IF EXISTS  `zrl_so`.`user_url_map`;

CREATE TABLE `zrl_so`.`user_url_map` (
    `UserId` bigint(20) NOT NULL,
    `UrlId` bigint(20) NOT NULL,
    PRIMARY KEY (`UserId` , `UrlId`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `zrl_so`.`visit_records`;
CREATE TABLE `zrl_so`.`visit_records` (
    `Id` bigint(20) NOT NULL AUTO_INCREMENT,
    `UrlId` bigint(20) NOT NULL,
    `AccessTime` datetime NOT NULL,
    `Ipv4` binary(4) DEFAULT NULL,
    `Ipv6` binary(16) DEFAULT NULL,
    `ReferenceUrl` varchar(4096) DEFAULT NULL,
    PRIMARY KEY (`Id`),
    KEY `UrlId` (`UrlId` , `AccessTime`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS  `zrl_so`.`visit_statistics`;

CREATE TABLE `visit_statistics` (
  `UrlId` bigint(20) NOT NULL,
  `VisitCount` bigint(20) NOT NULL,
  PRIMARY KEY (`UrlId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


