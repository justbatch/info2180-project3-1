<?php
session_start();
$_SESSION['access'] = "true";
require 'functions.php';
define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/"); 
if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$userID = new Users();
	$user = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_SPECIAL_CHARS);
	$password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_SPECIAL_CHARS);
	$valid_pass = '/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/';
	$valid_username = '/^[^\\s\\-0-9][A-Za-z\\-]+$/';
	if(preg_match_all($valid_pass,$password) && preg_match_all($valid_username, $user)){
		if(strlen($user) > 1 && strlen($password) > 1 ){
			$_SESSION['access'] = "true";
			$uid = $userID->userLogin($user,md5($password));
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
		echo 'false';
	}
	
	
}
else{
	$url=BASE_URL.'index.php';
	header("Location: $url");
}

?>