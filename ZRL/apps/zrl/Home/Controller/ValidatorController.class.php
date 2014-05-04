<?php
namespace Home\Controller;
use Think\Controller;
class ValidatorController extends Controller {
	public  function newentry()
	{
		$Verify = new \Think\Verify();
		$Verify->fontSize = 30;
		$Verify->length   = 4;
		$Verify->useNoise = false;
		$Verify->entry();
	}
}