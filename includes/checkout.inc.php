<?php
	$data = $_POST['shopping_cart'];

	if (isset($_POST['Checkout'])) {
		include 'dbConfig.inc.php';
		$sql = "INSERT INTO order_tbl (order_data) VALUES (?)";
		$stmt = mysqli_stmt_init($conn);
		$prepstatement = mysqli_prepare($conn,$sql);
		mysqli_stmt_bind_param($prepstatement,'s',$data);
		mysqli_stmt_execute($prepstatement);
			echo "New Product Listed!!";
			header("Location: ../checkout.php?addproduct=success");
		}else 
			echo "Error Listing Products. .";

?>