<?php
namespace Home\Controller;
use Think\Controller;
class EncoderController extends Controller {

	public  function encode(){
		$url=M('Urls');
		//CREATE TABLE `urls` (
		//  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
		//  `RowOrdinal` int(11) NOT NULL DEFAULT '0',
		//  `ShortUrl` varchar(64) NOT NULL DEFAULT '',
		//  `OriginalUrl` varchar(4098) NOT NULL,
		//  `CreateTime` datetime NOT NULL,
		//  `ExId` bigint(20) NOT NULL DEFAULT '0',
		//  `Md5` binary(16) DEFAULT NULL,
		//  `ExpireTime` datetime DEFAULT NULL,
		//  PRIMARY KEY (`Id`,`RowOrdinal`,`ExId`),
		//  KEY `ShortUrl` (`ShortUrl`) USING BTREE
		//) ENGINE=InnoDB DEFAULT CHARSET=utf8;


		$data['RowOrdinal'] = '0';
		$data['OriginalUrl'] = $_POST ['data'];
		$data['CreateTime']=time();
		$data['Md5']='';
 
		$url->add($data);
		$this->ajaxReturn($data,"json");
	}
}