<?php 
define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/"); 
session_start();
if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
	$firstname = filter_input(INPUT_POST, 'firstname', FILTER_SANITIZE_SPECIAL_CHARS);
	$lastname = filter_input(INPUT_POST, 'lastname', FILTER_SANITIZE_SPECIAL_CHARS);
	$username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_SPECIAL_CHARS);
	$password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_SPECIAL_CHARS);
	$confirmpwd = filter_input(INPUT_POST, 'confirmpwd', FILTER_SANITIZE_SPECIAL_CHARS);
	$password_match = '/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/';
	$username_match = '/^[^\\s\\-0-9][A-Za-z]+$/';
	$name_match = '/^[^\\s\\-0-9][A-Za-z\\s\\-]+$/';
	define('DB_SERVER', 'IP');
	define('DB_USERNAME', 'C9_USER');
	define('DB_PASSWORD', '');
	define('DB_DATABASE', 'cheapomail');
	$dbhost = getenv(DB_SERVER);
	$dbuser = getenv(DB_USERNAME);
	$dbpass = DB_PASSWORD;
	$dbname = DB_DATABASE;
	if(preg_match_all($password_match,$password) && preg_match_all($username_match,$username) && preg_match_all($name_match,$firstname) && preg_match_all($name_match,$lastname) &&  $password === $confirmpwd){
		try {
			$dbConnection = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass); 
			$dbConnection->exec("set names utf8");
			$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$password_hash = md5($password);
			$qryStr = "SELECT u_name FROM mail_user WHERE u_name = '$username'";
			$stmt = $dbConnection -> prepare($qryStr);
			$stmt->execute();
			$count=$stmt->rowCount();
			if($count > 0){
				echo 'username';
			}
			else{
				$qryStr = "INSERT INTO mail_user(u_name,f_name,l_name,u_pword) VALUES('$username','$firstname','$lastname','$password_hash')";
				$stmt = $dbConnection -> prepare($qryStr);
				$stmt->execute();
				echo 'true';
			}
		}
		catch (PDOException $e) {
			echo 'Connection failed: ' . $e->getMessage();
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