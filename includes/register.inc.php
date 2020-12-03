<?php
	$fname = $_POST['firstname'];
	$lname = $_POST['lastname'];
	$mname = $_POST['middlename'];
	$email = $_POST['email'];
	$pword = $_POST['password'];
	$cpword = $_POST['conpassword'];
	$bday = $_POST['birthday'];
	$sex = $_POST['sex'];
	$address = $_POST['address'];
	$pnum = $_POST['phonenumber'];

	if( $pword == null || $cpword == null || $fname == null || $lname == null || $email == null)
	{
		header("Location: ../register/register.php?error=empty");
		exit();
	}else if ($pword != $cpword) {
		header("Location: ../register/register.php?error=passwordmatch");
		exit();
	} else {
		include 'dbConfig.inc.php';
		$sql = "SELECT email FROM user WHERE email = ?";
		$stmt = mysqli_stmt_init($conn);
		if (!mysqli_stmt_prepare($stmt,$sql)) {
			header("Location: ../register/register.php?error=sqlerror");
			exit();
		}else {
			mysqli_stmt_bind_param($stmt,"s",$email);
			mysqli_execute($stmt);
			mysqli_stmt_store_result($stmt);
			$resultCheck = mysqli_stmt_num_rows($stmt);
			if ($resultCheck > 0) {
				header("Location: ../register/register.php?error=emailexist");
				exit();
			}else {
				$sql = "INSERT INTO user (email,first_name,last_name,password,address,birthday,middle_name,phonenumber,sex) VALUES (?,?,?,?,?,?,?,?,?)";
				$stmt = mysqli_stmt_init($conn);
				if (!mysqli_stmt_prepare($stmt,$sql)) {
					header("Location: ../register/register.php?error=sqlerror1");
					exit();
				}else {
					$hashedPassword = password_hash($pword, PASSWORD_DEFAULT);
					mysqli_stmt_bind_param($stmt,'sssssssss',$email,$fname,$lname,$hashedPassword,$address,$bday,$mname,$pnum,$sex);
					mysqli_stmt_execute($stmt);
					header("Location: ../login.php?success");
				} 
			}
		}
	}
	mysqli_stmt_close($stmt);
	mysqli_close($conn);
	
?>