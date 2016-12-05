<?php

session_start();
session_destroy();
// define("BASE_URL", "http://localhost/info2180-final-project/"); 
//uncomment line below when in C9
define("BASE_URL", "https://info2180-project3-damainrussel.c9users.io/"); 
$url=BASE_URL.'index.php';
header("Location: $url");
?>