<?php
session_start();

// define("BASE_URL", "http://localhost/info2180-final-project/"); 
//uncomment line below when in C9
define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/"); 
if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$_SESSION['access'] = "true";
	require 'functions.php';
	$_SESSION['access'] = "true";
	$messages = new Messages();
	$message_id = strip_tags($_POST['message_id']);
	$_SESSION['access'] = "true";
	$msg = $messages -> getMessage($message_id);
	echo $msg -> msg_body;
	
	
}
else{
	$url=BASE_URL.'index.php';
	header("Location: $url");
}
