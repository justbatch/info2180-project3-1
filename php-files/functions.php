<?php
session_start();
define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/"); 
if($_SESSION['access'] === "false"){
	$url=BASE_URL.'index.php';
	header("Location: $url");
}

$_SESSION['access'] = "true";
require "db-connect.php";
class Users{
	public function userLogin($username,$password){
		try{
			$database = StartDB();
			$stmt = $database->prepare("SELECT user_id FROM mail_user WHERE u_name=:username AND u_pword=:password"); 
			$stmt->bindParam("username", $username,PDO::PARAM_STR) ;
			$stmt->bindParam("password", $password,PDO::PARAM_STR) ;
			$stmt->execute();
			$count=$stmt->rowCount();
			$data=$stmt->fetch(PDO::FETCH_OBJ);
			$database = null;
			if($count){
				$_SESSION['userID'] = $data->user_id; 
				return true;
			}
			else{
				return false;
			} 
		}
		catch(PDOException $e) {
			echo '{"error":{"text":'. $e->getMessage() .'}}';
			return null;
		}

	}

	public function userDetails($uid){
		try{

			$database = StartDB();
			$stmt = $database->prepare("SELECT u_name, f_name, l_name FROM mail_user WHERE user_id=:uid"); 
			$stmt->bindParam("uid", $uid,PDO::PARAM_INT);
			$stmt->execute();
			$data = $stmt->fetch(PDO::FETCH_OBJ); 
			$database = null;
			return $data;
		}
		catch(PDOException $e) {
			echo '{"error":{"text":'. $e->getMessage() .'}}';
			return null;
		}
	}
	
	public function userMessages($uid){
		try{
			$database = StartDB();
			$stmt = $database->prepare("SELECT msg_id FROM messages WHERE recipient_id=:uid ORDER BY msg_date DESC LIMIT 10"); 
			$stmt->bindParam("uid", $uid,PDO::PARAM_INT);
			$stmt->execute();
			$data = $stmt->fetchAll(PDO::FETCH_ASSOC);
			$database = null;
			return $data;
		}
		catch(PDOException $e) {
			echo '{"error":{"text":'. $e->getMessage() .'}}';
			return null;
		}
	}
	
	public function getUserIDByUserName($username){
		try{
			$database = StartDB();
			$stmt = $database->prepare("SELECT user_id FROM mail_user WHERE u_name=:username");
			$stmt->bindParam("username", $username,PDO::PARAM_STR);
			$stmt->execute();
			$data = $stmt->fetch(PDO::FETCH_OBJ);
			$database = null;
			return $data -> user_id;
		}
		catch(PDOException $e) {
			echo '{"error":{"text":'. $e->getMessage() .'}}';
			return null;
		}
	}
} 

class Messages{
	public function getMessage($msgid){
		try {
			$database = StartDB();
			$stmt = $database->prepare("SELECT msg_subject, msg_body, msg_date, sender_id FROM messages WHERE msg_id=:msgid"); 
			$stmt->bindParam("msgid", $msgid,PDO::PARAM_INT);
			$stmt->execute();
			$data = $stmt->fetch(PDO::FETCH_OBJ); //will return only one message
			$database = null;
			return $data;
		}
		catch(PDOException $e) {
			echo '{"error":{"text":'. $e->getMessage() .'}}';
			return null;
		}
	}
	public function msgStatus($msgid){
		try {
			$database = StartDB();
			$stmt = $database->prepare("SELECT msg_id FROM message_read WHERE msg_id=:msgid"); 
			$stmt->bindParam("msgid", $msgid, PDO::PARAM_INT);
			$stmt->execute();
			$data = $stmt->fetchAll(PDO::FETCH_OBJ); //will return only one message
			$database = null;
			if(count($data) === 0){
				return true; //message not read
			}
			else{
				return false;
			}
		}
		catch(PDOException $e) {
			echo '{"error":{"text":'. $e->getMessage() .'}}';
			return null;
		}
	}
}

?>