<?php
session_start();
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

	define('DB_SERVER', 'IP');
	define('DB_USERNAME', 'C9_USER');
	define('DB_PASSWORD', '');
	define('DB_DATABASE', 'cheapomail');
	$dbhost = getenv(DB_SERVER);
	$dbuser = getenv(DB_USERNAME);
	$dbpass = DB_PASSWORD;
	$dbname = DB_DATABASE;
	try {
		$dbConnection = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass); 
		$dbConnection->exec("set names utf8");
		$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		
		$qryStr = "SELECT msg_id FROM message_read WHERE msg_id = $message_id";
		$stmt = $dbConnection -> prepare($qryStr);
		$stmt->execute();
		$count=$stmt->rowCount();
		if($count === 0){
			date_default_timezone_set('America/Jamaica');
			$readDate = date('Y') . '-' . date('m') . '-' . date('d');
			$reader_id = $_SESSION['userID'];
			$qryStr = "INSERT INTO message_read (msg_id,reader_id,date_read) VALUES($message_id,$reader_id,'$readDate')";
			$stmt = $dbConnection -> prepare($qryStr);
			$stmt->execute();
		}
		
	}
	catch (PDOException $e) {
		echo 'Connection failed: ' . $e->getMessage();
	}
}
else{
	$url=BASE_URL.'index.php';
	header("Location: $url");
}
