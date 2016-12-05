<?php
session_start();
define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/"); 
if($_SESSION['access'] === "false"){
	$url=BASE_URL.'index.php';
	header("Location: $url");
}
$_SESSION['access'] = "true";
require 'functions.php';
$messages = new Messages();
$user = new Users();
$data = $user -> userMessages($_SESSION['userID']);


$str = '<ul class="nav nav-sidebar" id="nav-bar">';
foreach($data as $msg){
	//getting the recipient messages
	$_SESSION['access'] = "true";
	$message = $messages -> getMessage( $msg['msg_id'] ); 
	
	//Getting status of message (true for not read and false for read)
	$_SESSION['access'] = "true";
	$status = $messages -> msgStatus( $msg['msg_id'] ); 
	
	//getting the sender of the message
	$_SESSION['access'] = "true";
	$sender = $user -> userDetails($message -> sender_id) -> u_name;
	
	//getting sender name
	$_SESSION['access'] = "true";
	
	$total = 0;
	if($status){
		$str = $str . '<li><a href="#" id ="'.$msg['msg_id'].'"><blockquote class="blockquote unread"><p class="mb-0">' . $message -> msg_subject . '</p><footer class="blockquote-footer">From: '.$sender.'</footer></blockquote></a></li>';
	}
	else{
		$str = $str . '<li><a href="#" id ="'.$msg['msg_id'].'"><blockquote class="blockquote"><p class="mb-0">' . $message -> msg_subject . '</p><footer class="blockquote-footer">From: '.$sender.'</footer></blockquote></a></li>';
	}
	
}
$str = $str.'</ul>';
echo $str;

?>