<?php
session_start();
$_SESSION['access'] = "true";
require 'functions.php';
// define("BASE_URL", "http://localhost/info2180-final-project/"); 
//uncomment line below when in C9
define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/"); 
if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$userID = new Users();
	$user = strip_tags($_POST['username']);
	$password = strip_tags($_POST['password']);
	
	if(strlen(trim($user)) > 1 && strlen(trim($password)) > 1 ){
		$_SESSION['access'] = "true";
		$uid = $userID->userLogin($user,$password);
		if($uid){
			$_SESSION["login"] = "true";
			echo "true";
			//login success
		}
		else{
			echo "false";
			// user invalid
		}
	}
	else{
		echo "error";
		// empty password and/or username field
	}
}
else{
	$url=BASE_URL.'index.php';
	header("Location: $url");
}










?>