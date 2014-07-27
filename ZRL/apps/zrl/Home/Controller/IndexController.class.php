<?php

namespace Home\Controller;

use Think\Controller;

class UrlEncoder {
	private static $IntCharMap = array (
			// Numbers
			0 => "0",
			1 => "1",
			2 => "2",
			3 => "3",
			4 => "4",
			5 => "5",
			6 => "6",
			7 => "7",
			8 => "8",
			9 => "9",
			// lower character
			10 => "a",
			11 => "b",
			12 => "c",
			13 => "d",
			14 => "e",
			15 => "f",
			16 => "g",
			17 => "h",
			18 => "i",
			19 => "j",
			20 => "k",
			21 => "l",
			22 => "m",
			23 => "n",
			24 => "o",
			25 => "p",
			26 => "q",
			27 => "r",
			28 => "s",
			29 => "t",
			30 => "u",
			31 => "v",
			32 => "w",
			33 => "x",
			34 => "y",
			35 => "z",
			36 => "A",
			37 => "B",
			38 => "C",
			39 => "D",
			// UPPER CHARACTER
			40 => "E",
			41 => "F",
			42 => "G",
			43 => "H",
			44 => "I",
			45 => "J",
			46 => "K",
			47 => "L",
			48 => "M",
			49 => "N",
			50 => "O",
			51 => "P",
			52 => "Q",
			53 => "R",
			54 => "S",
			55 => "T",
			56 => "U",
			57 => "V",
			58 => "W",
			59 => "X",
			60 => "Y",
			61 => "Z" 
	);
	private static $CharIntMap = array (
			// Numbers
			"0" => 0,
			"1" => 1,
			"2" => 2,
			"3" => 3,
			"4" => 4,
			"5" => 5,
			"6" => 6,
			"7" => 7,
			"8" => 8,
			"9" => 9,
			// lower character
			"a" => 10,
			"b" => 11,
			"c" => 12,
			"d" => 13,
			"e" => 14,
			"f" => 15,
			"g" => 16,
			"h" => 17,
			"i" => 18,
			"j" => 19,
			
			"k" => 20,
			"l" => 21,
			"m" => 22,
			"n" => 23,
			"o" => 24,
			"p" => 25,
			"q" => 26,
			"r" => 27,
			"s" => 28,
			"t" => 29,
			
			"u" => 30,
			"v" => 31,
			"w" => 32,
			"x" => 33,
			"y=>34",
			"z" => 35,
			"A" => 36,
			"B" => 37,
			"C" => 38,
			"D" => 39,
			// UPPER CHARACTER
			"E" => 40,
			"F" => 41,
			"G" => 42,
			"H" => 43,
			"I" => 44,
			"J" => 45,
			"K" => 46,
			"L" => 47,
			"M" => 48,
			"N" => 49,
			
			"O" => 50,
			"P" => 51,
			"Q" => 52,
			"R" => 53,
			"S" => 54,
			"T" => 55,
			"U" => 56,
			"V" => 57,
			"W" => 58,
			"X" => 59,
			
			"Y" => 60,
			"Z" => 61 
	);
	public static function Encode($urlId) {
		if ($urlId < 0) {
			return "";
		} elseif ($urlId == 0) {
			return "0";
		}
		
		$tp = $urlId;
		$result = "";
		
		while ( $tp > 0 ) {
			$tail = $tp % 62;
			$tp = intval ( $tp / 62 );
			$result = self::$IntCharMap [$tail] . $result;
		}
		return $result;
	}
}
class IndexController extends Controller {
	private function displayHistory($data) {
		if ($data == null) {
			return "";
		}
		$host = "http://" . $_SERVER ["HTTP_HOST"];
		$index = count ( $data );
		$tr = "";
		
		$result = array ();
		
		for($i = 0; $i < $index; $i ++) {
			
			$su = $host ."/". $data [$i] ["ShortUrl"];
			$visit = $data [$i] ["VisitCount"] == null ? 0 : $data [$i] ["VisitCount"];
			$orl = $data [$i] ["OriginalUrl"];
			
			array_push ( $result, "<tr " );
			
			$tr = $tr . "<tr ";
			if ($i % 2 == 0) {
				array_push ( $result, " class=\"active\" " );
			}
			array_push ( $result, ">" );
			
			array_push ( $result, "<td>" . ($i + 1) . "</td>" );
			array_push ( $result, "<td><a href=\"" . $su.".htm" . "\" target=\"_blank\">" . $su . "</a></td>" );
			
			array_push ( $result, "<td" );
			
			if (strlen ( $orl ) > 50) {
				$orl = substr ( $orl, 0, 50 ) . "...";
				array_push ( $result, " title=\"" . $data [$i] ["OriginalUrl"] . "\" " );
			}
			if (eregi("^https?://.+$",$orl)) {
				 $orl="<a href=\"" . $su.".htm" . "\" target=\"_blank\">" . $orl . "</a>";
			}
			array_push ( $result, ">" . $orl . "</td>" );
			
			array_push ( $result, "<td>" . $data [$i] ["CreateTime"] . "</td>" );
			array_push ( $result, "<td>" . $visit . "</td>" );
			
			array_push ( $result, "</tr>" );
		}
		return join ( "", $result );
	}
	protected function getrecent() {
		$url = M ( "Urls" );
		// $User->where('status=1')->order('create_time')->limit(10)->select();
		// order by CreateTime desc LIMIT 10
		// $data->table('user U')->join('news N on U.id=N.cid')->field('U.*,N.*')->order('id desc')->limit('8')->findall();
		$data = $url->table ( "urls" )->join ( "visit_statistics on urls.Id= visit_statistics.UrlId", "left" )->field ( " urls.*, visit_statistics.VisitCount" )->order ( 'CreateTime desc' )->limit ( 10 )->select ();
		
		if ($data) {
			return $data;
		}
		return null;
	}
	protected function getpopular() {
		$url = M ( "Urls" );
		// $User->where('status=1')->order('create_time')->limit(10)->select();
		// order by CreateTime desc LIMIT 10
		// $data->table('user U')->join('news N on U.id=N.cid')->field('U.*,N.*')->order('id desc')->limit('8')->findall();
		$data = $url->table ( "urls" )->join ( "visit_statistics on urls.Id= visit_statistics.UrlId", "right" )->field ( " urls.*, visit_statistics.VisitCount" )->order ( 'visit_statistics.VisitCount desc' )->limit ( 10 )->select ();
		
		if ($data) {
			return $data;
		}
		return null;
	}
	public function index() {
		// $this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p>欢迎使用 <b>ThinkPHP</b>！</p></div><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script>','utf-8');
		// echo ("hello world!");
		$this->activeName = "Home";
		$this->title = 'Home';
		$this->recentAdd = $this->displayHistory ( $this->getrecent () );
		$this->popular = $this->displayHistory ( $this->getpopular () );
		$this->display ();
	}
	private function verifyCode($param) {
		$Verify = new \Think\Verify ();
		return $Verify->check ( $param );
	}
	public function encodeTest() {
		$data = $_GET ['data'];
		if (eregi ( '^[0-9]+$', $data )) {
			$r = intval ( $data, 10 );
			$rr = UrlEncoder::Encode ( $r );
			echo $data . '=>' . $rr;
		} else {
			echo 'Invalid operation.';
		}
	}
	public function encode() {
		
		// data: surl,输入的URL
		// md5key: key,
		// validateKey: "验证码"
		$url = $_POST ['data'];
		$validateKey = $_POST ['validateKey'];
		$md5key = $_POST ['md5key'];
		
		$encodeResult = array (
				'data' => '',
				'result' => 'true',
				'md5key' => $md5key,
				'errorcode' => '0' 
		);
		/**
		 * *****errorcode**********
		 * 0 success
		 * 1 add new data failed
		 * 2 invalid data input
		 * 3 invalid verify code
		 * ************************
		 */
		if ($url == '') {
			$encodeResult ['result'] = 'false';
			$encodeResult ['errorcode'] = '2';
		} else {
			/*
			 * if(!$this->verifyCode($validateKey)) { $encodeResult['result']='false'; $encodeResult['errorcode']='3'; } else {
			 */
			$urlmode = M ( "Urls" );
			$md5 = md5 ( $url );
			
			$existdata = $urlmode->where ( 'md5=\'' . $md5 . '\'' )->find ();
			if ($existdata) {
				$encodeResult ['data'] = $existdata ['ShortUrl'];
			} else {
				$data = array (
						'RowOrdinal' => '0',
						'OriginalUrl' => $url,
						'CreateTime' => date ( DATE_ATOM, microtime ( true ) ),
						'Md5' => $md5 
				);
				$r = $urlmode->add ( $data );
				if ($r) {
					$shortendId = UrlEncoder::Encode ( $r );
					$urlmode->where ( 'id=' . $r )->save ( array (
							'ExId' => $r,
							'ShortUrl' => $shortendId 
					) );
					$encodeResult ['data'] = $shortendId;
				} else {
					$encodeResult ['result'] = 'false';
					$encodeResult ['errorcode'] = '1';
				}
			}
			/* } */
		}
		$this->ajaxReturn ( $encodeResult, 'json' );
	}
	private function getIpAddress() {
		$ip = explode ( '.', get_client_ip () );
		$result = '0x';
		foreach ( $ip as $value ) {
			$tpp = base_convert ( $value, 10, 16 );
			if (strlen ( $tpp ) == 1) {
				$tpp = '0' . $tpp;
			}
			$result = $result . $tpp;
		}
		return $result;
	}
	private function addVistRecord($urlId) {
		$records = M ( "VisitRecords" );
		$vistData = array (
				'UrlId' => $urlId,
				'AccessTime' => date ( DATE_ATOM, microtime ( true ) ),
				'Ipv4' => $this->getIpAddress () 
		);
		if ($_SERVER ['HTTP_REFER']) {
			$vistData ['ReferenceUrl'] = $_SERVER ['HTTP_REFER'];
		}
		$records->add ( $vistData );
		
		$sts = M ( 'VisitStatistics' );
		$data = $sts->where ( 'UrlId=' . $urlId )->find ();
		if ($data) {
			$data ['VisitCount'] = $data ['VisitCount'] + 1;
			$sts->save ( $data );
		} else {
			$data = array (
					'UrlId' => $urlId,
					'VisitCount' => '1' 
			);
			$sts->add ( $data );
		}
	}
	public function decode() {
		if ($_GET ["data"] == null) {
			$this->redirect ( '/' );
		} else {
			$key = $_GET ["data"];
			if (eregi ( '^[0-9a-zA-Z]+$', $key )) {
				$url = M ( "Urls" );
				$data = $url->where ( 'binary ShortUrl=\'' . $key . '\'' )->find ();
				
				if ($data) {
					$this->addVistRecord ( $data ['Id'] );
					$originalUrl = $data ['OriginalUrl'];
					if (eregi ( '^[a-zA-Z]+[:]//', $originalUrl ) == 0) {
						$originalUrl = 'http://' . $originalUrl;
					}
					echo "<META HTTP-EQUIV=\"Refresh\" CONTENT=\"0;URL='" . $originalUrl . "'\">";
				} else {
					$this->redirect ( '/' );
				}
			} else {
				$this->redirect ( '/' );
			}
		}
		;
	}
	public function about() {
		$this->activeName = "About";
		$this->title = "About zrl";
		$this->display ();
	}
	public function contact() {
		$this->activeName = "Contact";
		$this->title = "Contact us";
		$this->display ();
	}
}