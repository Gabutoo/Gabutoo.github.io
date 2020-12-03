<?php
	$servername = "localhost";
	$dbUsername = "root";
	$dbPassword = "";
	$dbName = "primesystems";

	$conn = mysqli_connect($servername, $dbUsername, $dbPassword, $dbName);

	if(!$conn){
		die("cant connect to database!");
	}
?>