<?php
$navibar=array(
	"Home"=>"/",
	"About"=>"/index.php/Index/about.html",
	"Contact"=>"mailto:zrl_so@126.com?subject=zrl"
);
$ackey="Home";

foreach ($navibar as $key => $value) {
	if ($this->activeName==$key) {
		 $ackey=$key;
		 break;
	}
}

foreach ($navibar as $key => $value) {
	if ($key==$ackey) {
		 echo ' <li class="active"><a href="'.$value.'">'.$key.'</a></li>';
	}
	else {
		echo ' <li><a href="'.$value.'">'.$key.'</a></li>';
	}
}