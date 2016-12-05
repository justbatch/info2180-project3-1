<?php
session_start();
if( !isset($_SESSION["login"]) ){
	$_SESSION["login"] = "false";
}
else if( isset($_SESSION["login"]) && $_SESSION["login"] === "true" ){
	// define("BASE_URL", "http://localhost/info2180-final-project/"); 
	//uncomment line below when in C9
	define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/"); 
	$url=BASE_URL.'home.php';
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
		<script src="js/login.js"></script>

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
						<input type="text" class="form-control" placeholder="Username" name="username" id="username" autocomplete="off" value="EriKl">
						<input type="password" class="form-control" placeholder="Password" name="password" id="password" autocomplete="off" value="_h#Y7Xds8A">
						<button type="submit" class="btn btn-success" name="loginsubmit" id="submit">Sign in</button>
					</form>
				</div>
			</div>
		</nav>
		<div class="alert alert-danger">
			<strong>Oops!</strong> Incorrect username or password. Contact your administrator for login credentials.
		</div>
		<div class="alert alert-warning">
			<strong>Notice!</strong> All fields required.
		</div>
		<h1 class="page-header">Welcome to CheapoMail Web System (V 1.0.91)</h1>
		<div class="jumbotron">
			<div class="container">
				<h1>Hi</h1>
				<p>CheapoMail provides a simple emailing system that allows users to send secure mail to other Cheapo users.<br />
					Upon request, users get a login name and password and will be able to send messages and keep in touch with friends, family and colleagues</p>
				<p><a id = "btn" class="btn btn-primary btn-lg pull-left tooltip-bottom" href="#" role="button" title="Feature disabled at the moment. Coming soon...!" id="tool">Request an Account &raquo;</a></p>
			</div>
		</div>

		<!--				<php require "php-files/register-form.php"; >-->

		<footer class="footer">
			<div class="container">
				<p class="text-muted">Site design / logo &#169; <?php 
					date_default_timezone_set('America/New_York');
					echo date('Y');
					?> 
					CheapoMail; Developers <a href="#" rel="author">Milton</a> | <a href="#" rel="author">Alafia</a> | <a href="#" rel="author">Kevaughn</a>
				</p>
			</div>
		</footer>
	</body>
</html>