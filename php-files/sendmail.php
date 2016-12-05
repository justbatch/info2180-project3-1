<?php 
define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/"); 
session_start();
if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){

	
	$sender = $_SESSION['userID'];
	$recipients = $_POST['recipient'];
	$subject = filter_input(INPUT_POST, 'subject', FILTER_SANITIZE_SPECIAL_CHARS);
	$message = filter_input(INPUT_POST, 'message', FILTER_SANITIZE_SPECIAL_CHARS);
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
		date_default_timezone_set('America/Jamaica');
		$msgdate = date('Y') . '-' . date('m') . '-' . date('d');
		$recipients = explode(',',$recipients);
		foreach ($recipients as $recipient) {
			$stmt = $dbConnection -> prepare("SELECT user_id FROM mail_user WHERE u_name=:recipient");
			$stmt->bindParam("recipient", $recipient,PDO::PARAM_STR);
			$stmt->execute();
			$recipient_id = $stmt->fetch(PDO::FETCH_OBJ) -> user_id;
		
			$stmt = null;
			$stmt = $dbConnection -> prepare("INSERT INTO messages (recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES('$recipient_id','$sender','$subject','$message','$msgdate')");
			$stmt->execute();
		}
		echo 'true';
	}
	catch (PDOException $e) {
		echo 'Connection failed: ' . $e->getMessage();
	}
	
}
else{
	$url=BASE_URL.'index.php';
	header("Location: $url");
}



?>