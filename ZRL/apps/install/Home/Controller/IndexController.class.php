<?php

// 本类由系统自动生成，仅供测试用途
namespace Home\Controller;
include 'Home\Common\SqlHelper.php';
use Think\Controller;

class IndexController extends Controller {

	public function index(){
		if(!$this->dbExist())
		{
			echo '<a href="/install.php/Home/Index/install">install</a>';

		}
		else
		{
			echo '<a href="/install.php/Home/Index/reinstall">reinstall</a>';
		}
	}

	private function dbExist() {
		$link = SqlHelper::connect();
		$dbexist=false;
		$dbname=SqlHelper::DBName;
		if ($link) {
			$db_list = mysql_list_dbs($link);
			$i = 0;
			$cnt = mysql_num_rows($db_list);
			while ($i < $cnt) {
				$key=mysql_db_name($db_list, $i);
				echo $key."</br>";
				if ($key==$dbname) {
					$dbexist=true;
					break;
				}
				$i++;
			}
			mysql_close($link);
		}
		return $dbexist;
	}

	public  function install()
	{
		if($this->dbExist())
		{
			echo '<a href="/install.php/Home/Index/reinstall">reinstall</a>';
		}
		else
		{
			if(IS_POST)
			{
				if(SqlHelper::initDataBase())
				{
					echo 'install success.</br>';
					echo '<a href="/install.php/Home/Index/reinstall">reinstall</a>';
				}
				else
				{
					echo 'install failed.</br>';
					$this->display();
				}
			}
			else
			{
				$this->display();
			}
		}
	}

	public  function reinstall()
	{
		if(IS_POST)
		{
			SqlHelper::initDataBase();
		}
		$this->display();
	}
}

class SqlHelper {
	const 	UserName="root";
	const	PWD="8ebdde85d2QWEASDZXC";
	const	HostName="localhost";
	const	DBName="zrl_so";

	private  static  function readSqlFile($filename) {
    
		 
			echo php_uname('s') ."<hr>";
		 
        if (!file_exists($filename)) {
        	E("file not exist:".$filename);
        }
		$lines=file($filename);
		$sqlstr="";
         
		foreach($lines as $line){
			$line=trim($line);
			if($line!=""){
				if(!($line{0}=="#" || $line{0}.$line{1}=="--")){
					$sqlstr.=$line;
				}
			}
		}
		$sqlstr=rtrim($sqlstr,";");
		$sqls=explode(";",$sqlstr);
		return  $sqls;
	}

	public static function connect()
	{
		$link =  mysql_connect(self::HostName, self::UserName, self::PWD);
		if (!$link) {
			E( "can't connect to database.");
		};
		return $link;
	}

	public static function  initDataBase()
	{
		$link =self::connect();
		$iniResult=false;
		if ($link) {
			$db_list = mysql_list_dbs($link);
			$i = 0;
			$cnt = mysql_num_rows($db_list);
			while ($i < $cnt) {
				$dname=mysql_db_name($db_list, $i);
				if ($dname==self::DBName) {
					mysql_query('DROP DATABASE `'.self::DBName.'`;',$link);
					break;
				}
				$i++;
			}
			//$script=file_get_contents("apps\install\Home\Controller\zrl.sql");
			 
			$lines=self::readSqlFile("apps/install/Home/Controller/zrl.sql");
			
			foreach ($lines as $value) {
                 echo $value."<br><hr><br>";
				 mysql_query($value,$link);
			}

			mysql_close($link);
		}
		return $iniResult;
	}
}