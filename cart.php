<?php 
session_start();
include('includes/dbConfig.inc.php');

if(isset($_POST["add_to_cart"]))
{
	if(isset($_SESSION["shopping_cart"]))
	{
		$product_array_id = array_column($_SESSION["shopping_cart"], "productID");
		if(!in_array($_GET["id"], $product_array_id))
		{
			$count = count($_SESSION["shopping_cart"]);
			$product_array = array(
				'productID'	=> $_GET["id"],
				'product_name' => $_POST["hidden_name"],
				'price' => $_POST["hidden_price"],
				'products_quantity' => $_POST["quantity"]
			);
			$_SESSION["shopping_cart"][$count] = $product_array;

		}
		else
		{
			echo '<script>alert("Product Already Added")</script>';
		}
	}
	else
	{
		$product_array = array(
			'productID' => $_GET["id"],
			'product_name' => $_POST["hidden_name"],
			'price'	=> $_POST["hidden_price"],
			'products_quantity' => $_POST["quantity"]
		);
		$_SESSION["shopping_cart"][0] = $product_array;
	}
}

if(isset($_GET["action"]))
{
	if($_GET["action"] == "delete")
	{
		foreach($_SESSION["shopping_cart"] as $keys => $values)
		{
			if($values["productID"] == $_GET["id"])
			{
				unset($_SESSION["shopping_cart"][$keys]);
				echo '<script>window.location="cart.php"</script>';
			}
		}
	}
}

?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<title>Cart</title>
</head>
<body>
<div style="background-color: #1c41ab; color: white;">
	<div class="container"> 
		<div class="row">
			<div class="col-md">
				<div class="pb-2 pt-2">	
					<i class="far fa-bell"></i> Get minimum 30-70% off on all items this Holiday! 
				</div>
			</div>
			<div class="col-md">
				<ul class="nav justify-content-end">
				  <li class="nav-item">
				                <?php
      include('includes/dbConfig.inc.php');
      if(isset($_SESSION["user"])){
      $user = $_SESSION["user"];
      $query = "SELECT * FROM user WHERE email='$user'";

      $result = mysqli_query($conn,$query);
      $row = mysqli_fetch_assoc($result);
    }
      if(isset($_SESSION["user"]))
  {

    ?>
<a class="nav-link" href="profile.php"style="color:white;"><i class="fas fa-sign-in-alt"></i> <?php echo $row["first_name"]; ?></a>
</li>
          <li class="nav-item">
            <a class="nav-link" href="logout.php"style="color:white;"><i class="fas fa-user-circle"></i> Logout</a>
<?php } else{ ?>
            <a class="nav-link" href="login.php"style="color:white;"><i class="fas fa-sign-in-alt"></i> Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="register/register.php"style="color:white;"><i class="fas fa-user-circle"></i> Create Account</a>
          <?php } ?>
				</ul>
			</div>
		</div>
	</div>
</div>

<nav class="navbar navbar-expand-lg navbar-light"style="background-color: white">
	<div class="container">
  <a class="navbar-brand" href="index.php"><img src="images/PrimeSystems.jpg" height="64.5px" width="158.2px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown">
        </a>
        <li class="nav-item active">
        <form method="POST" action="search.php">
        <div class="input-group ml-auto">
      <input type="text" class="form-control" placeholder="Search for products . . ." aria-label="Title Name" aria-describedby="basic-addon2" name="tosearch">
      <div class="input-group-append">
        <input class="btn btn-outline-warning" type="submit" value="Search">
      </div>
    </div>
  </form>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="cart.php"><i class="fas fa-cart-arrow-down"></i> Cart <?php if(isset($_POST["add_to_cart"])) echo "(".count($_SESSION["shopping_cart"]).")"; else echo ""; ?></a>
      </li>
      </li>
    </ul>
  </div>
</div>
</nav>
<div style="background-color: #1c41ab; color: white;">
  <div class="container p-2">
    <div class="input-group ml-auto">
        <a href="shop.php"><button class="btn btn-outline-warning" type="button">Shop Now</button></a> &nbsp;&nbsp;&nbsp;
        <button class="btn btn-outline-warning" type="button">Brands</button>
      </div>
    </div>
</div>
<br />
<center>
<?php if(isset($_SESSION["user"])){ ?>
					    <form method="POST" action="checkout.php">
					<?php } else { ?>
						<form method="POST" action="cart.php"> <?php } ?>
<h3>Order Details</h3>			
			<div class="table-responsive">
				<table class="table table-bordered" style="width: 90%"">
					<tr>
						<th width="40%">Product Name</th>
						<th width="5%">Quantity</th>
						<th width="20%">Price</th>
						<th width="5%">Action</th>
					</tr>
					<?php
					if(!empty($_SESSION["shopping_cart"]))
					{
						$total = 0;
						foreach($_SESSION["shopping_cart"] as $keys => $values)
						{
					?>
					<tr>
						<td><?php echo $values["product_name"]; ?></td>
						<td><?php echo $values["products_quantity"]; ?></td>
						<td>Php <?php echo number_format($values["products_quantity"] * $values["price"], 2);?></td>
						<td><a href="cart.php?action=delete&id=<?php echo $values["productID"]; ?>"><span class="text-danger">Remove</span></a></td>
					</tr>
					<?php
							$total = $total + ($values["products_quantity"] * $values["price"]);
						}
					?>
					<tr>
						<td colspan="3" align="right">Total Php <?php echo number_format($total, 2); ?> &nbsp; 
					    <input type="radio" id="Visa" name="Payment" value="Visa">
					    <label for="Visa">Visa</label>
					    <input type="radio" id="Mastercard" name="Payment" value="Mastercard">
					    <label for="Maastercard">Mastercard</label>
					    <input type="radio" id="Gcash" name="Payment" value="Gcash">
					    <label for="Gcash">Gcash</label>
					    &nbsp;
					    <?php if(isset($_SESSION["user"])){ ?>
					    <input type="submit" value="Checkout" name="Checkout">
					<?php } else { ?>
							<button type="submit" onclick="myFunction()">Checkout</button>

							<script>
							function myFunction() {
							  alert("You must login first to continue!");
							}
							</script>
					<?php } ?>
					</td>
					</tr>
					<?php
					}
					?>
						
				</table>
			</div>
			</center>
			<br>
<div style="background-color:#c0392b">
  <div class="container">
  	<div class="row">
     <div class="col-md">
     	<div class="pt-2 pb-2">
    		<h2 style="color: white">SIGN UP TO RECEIVE OUR NEWSLETTER!</h2>
		  <div class="form-group">
		    <label for="exampleFormControlInput1"style="color: white;"><i class="fas fa-envelope-open-text"style="color: white"></i> Email address</label>
		    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
		    <br>
		     <button type="submit" class="btn btn-warning">Sign Up!</button>
		  </div>
    	</div>
    </div>
  </div>
</div>
</div>

<div class="jumbotron-fluid">
	<div class="container">
		<div class="row">
		<div class="col">
			<img src="images/gcashlogo.png" style="width: 250px; height: 150px">
		</div>
		<div class="col">
			<img src="images/mastercardlogo.png" style="width: 200px; height: 150px">
		</div>
		<div class="col">
			<img src="images/visalogo.png" style="width: 200px; height: 150px">
		</div>
	</div>
	</div>
	</div>

	<div class="jumbotron-fluid" style="background-color:#2c3e50">
		<!-- Footer -->
<footer class="page-footer font-small blue pt-4">

  <!-- Footer Links -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
<div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
        <h5 class="text-uppercase" style="color:white">Prime Systems</h5>
        <p  style="color:white">We are PRIME Systems Inc. A group of businessmen who wanted to become the best reseller's in town. Hassle-free services, Cashless payments and approachable agents awaits for you our dear customer. Shop Now!
NOBODY.ELSE.LIKE US.</p>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase" style="color:white">Policies</h5>

        <ul class="list-unstyled">
          <li>
            <a href="#!" style="color:white">Terms of Use</a>
          </li>
          <li>
            <a href="#!" style="color:white">Privacy Policy</a>
          </li>
          <li>
            <a href="#!" style="color:white">Refund Policy</a>
          </li>
          <li>
            <a href="#!" style="color:white">Link 4</a>
          </li>
        </ul>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase" style="color:white">Service</h5>

        <ul class="list-unstyled">
          <li>
            <a href="#!" style="color:white">Contact Us</a>
          </li>
          <li>
            <a href="#!" style="color:white">Online Help</a>
          </li>
          <li>
            <a href="#!" style="color:white">Link 3</a>
          </li>
          <li>
            <a href="#!" style="color:white">Link 4</a>
          </li>
        </ul>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3" style="color: white">© Gabrielle Sayago 2020. Made with a ♥
    
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
	</div>












<script src="https://kit.fontawesome.com/d9ef94e891.js" crossorigin="anonymous"></script>




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>