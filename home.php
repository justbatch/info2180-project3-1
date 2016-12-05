<?php
session_start();
if( !isset($_SESSION["login"]) || $_SESSION["login"] === 'false'){
	define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/"); 
	$url=BASE_URL.'index.php';
	header("Location: $url");
}
?>
<!Doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>CheapoMail</title>

		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/stylesheet.css">

		<link rel="icon" href="imgs/favicon.ico">

		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/javascript.js"></script>
		<script src="js/handlehash.js"></script>

	</head>
	<body>
		
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">CheapoMail</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<form class="navbar-form navbar-right" action="./" method="POST" name="login" id="login">
						<button type="submit" class="btn btn-success" name="logout" id="logout">Logout</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="php-files/newmail.php" class="link nav-link">New Mail</a></li>
						<?php
						if(isset($_SESSION['userID']) && $_SESSION['userID'] === "6999"){
							
							echo '<li><a href="php-files/newuser.php" class="link nav-link">Create User</a></li>';
						}
						?>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3 col-md-2 sidebar" id="sidebar">
					<h4>My Mail<span class="badge">1</span></h4>
					<?php $_SESSION['access'] = 'true'; require 'php-files/messages.php'; ?>
				</div>
				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
					<div class="jumbotron">
						<div class="container" id="container">
							<div class="messages content">
								<p id="msg-body"></p>
							</div>
							<div class="mailform content">
							</div>
							<div class="newuser content">
							</div>
							<div class="profile content">

							</div>
							<div class="settings content">
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<footer class="footer">
			<div class="container">
				<p class="text-muted">Site design / logo &#169; <?php 
					date_default_timezone_set('America/Jamaica');
					echo date('Y');
					?> 
					CheapoMail (INFO2180 - Web Dev Final Project); Developers <a href="https://github.com/Damain-Russel" rel="author">Milton</a> | <a href="https://github.com/alafiab" rel="author">Alafia</a> | <a href="https://github.com/kev1876resume" rel="author">Kevaughn</a>
				</p>
			</div>
		</footer>
	</body>
</html>