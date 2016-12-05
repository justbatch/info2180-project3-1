<?php
session_start();
define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/");
function StartDB(){
	if($_SESSION['access'] === "true"){
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
			$_SESSION['access'] = "false";
			return $dbConnection;
		}
		catch (PDOException $e) {
			echo 'Connection failed: ' . $e->getMessage();
		}
	}
	else{
		$url=BASE_URL.'index.php';
		header("Location: $url");
	}
}


?>