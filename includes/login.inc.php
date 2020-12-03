<?php
	if (isset($_POST["btnLogin"])) {
		require 'dbConfig.inc.php';
		$password = $_POST['password'];
		$email = $_POST['email'];

		if (isset($email)) {
		$query = "SELECT * FROM user WHERE email ='$email'";
		$res = mysqli_query($conn,$query);
		$rww = mysqli_fetch_assoc($res);
		$emailCheck = $rww['email'];
		if ($emailCheck != $email ) {
			header("Location: ../login.php?error=invalidemail");
			exit();
		}
		}		
		if (empty($email) || empty($password)) {
			header("Location: ../login.php?error=emptyfield");
			exit();
		}else {
			$sql = "SELECT * FROM user WHERE email=?;";
			$stmt = mysqli_stmt_init($conn);
			if (!mysqli_stmt_prepare($stmt,$sql)) {
				header("Location: ../login.php?error=erroremail");
				exit();
			}else {
				mysqli_stmt_bind_param($stmt,"s",$email);
				mysqli_stmt_execute($stmt);
				$result = mysqli_stmt_get_result($stmt);
				if ($row = mysqli_fetch_assoc($result)) {
					//$pwdCheck = password_verify($password, $row['password']);
					$pwdCheck = $row['password'];
					if ($pwdCheck == false) {
						header("Location: ../login.php?error=invaliduser");
						exit();
					}elseif ($pwdCheck == true) {
						session_start();
						$_SESSION["user"] = $email;
						header("Location: ../index.php?login=success");
						
					}else {
						header("Location: ../login.php?error=invalidaccount");
						exit();
					}
				}
			}
		}
	}else {
		header("Location: ../index.php");
		exit();
	}
?>