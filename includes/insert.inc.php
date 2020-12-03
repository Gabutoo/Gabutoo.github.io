<?php
	$Fpname = $_POST['pname'];
	$Fprice = $_POST['pc'];
	$Fbrand = $_POST['bd'];
	$Fpath = $_POST['img'];

	if (isset($_POST['submit'])) {
		include 'dbConfig.inc.php';
		$sql = "INSERT INTO product (product_name,price,brand,picture_path) VALUES (?,?,?,?)";
		$stmt = mysqli_stmt_init($conn);
		$prepstatement = mysqli_prepare($conn,$sql);
		mysqli_stmt_bind_param($prepstatement,'ssss',$Fpname,$Fprice,$Fbrand,$Fpath);
		mysqli_stmt_execute($prepstatement);
			echo "New Product Listed!!";
			header("Location: ../admin.php?addproduct=success");
		}else 
			echo "Error Listing Products. .".mysqli_error($conn);

?>