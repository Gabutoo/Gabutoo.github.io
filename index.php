<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Prime Systems</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Carousel_Image_Slider-1.css">
    <link rel="stylesheet" href="assets/css/Carousel_Image_Slider.css">
    <link rel="stylesheet" href="assets/css/Footer-with-social-media-icons.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar.css">
    <link rel="stylesheet" href="assets/css/NMDIGbanner.css">
    <link rel="stylesheet" href="assets/css/Parallax-Scroll-Effect.css">
    <link rel="stylesheet" href="assets/css/Search-Input-responsive.css">
    <link rel="stylesheet" href="assets/css/styles.css">
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
      session_start();
      if(isset($_SESSION["user"])){
      $user = $_SESSION["user"];
      $query = "SELECT * FROM user WHERE email='$user'";

      $result = mysqli_query($conn,$query);
      $row = mysqli_fetch_assoc($result);
    }
      if(isset($_SESSION["user"]))
  {

    ?>
<a class="nav-link" href="viewprofile/viewprofile.php?id=<?php echo $row['userID']; ?>"style="color:white;"><i class="fas fa-sign-in-alt"></i> <?php echo $row["first_name"]; ?></a>
</li>
          <li class="nav-item">
            <a class="nav-link" href="logout.php"style="color:white;"><i class="fas fa-user-circle"></i> Logout</a>
<?php } else{ ?>
            <a class="nav-link" href="login.php"style="color:white;"><i class="fas fa-sign-in-alt"></i> Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="register/register.php"style="color:white;"><i class="fas fa-user-circle"></i> Create Account</a>
          <?php } ?>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

  <nav class="navbar navbar-expand-lg navbar-light"style="background-color: white">
	<div class="container">
  <a class="navbar-brand" href="index.php"><img src="assets/img/PrimeSystems.jpg" height="64.5px" width="158.2px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown">
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
      </ul>
        </div>
    </div>
</nav>
     
<div style="background-color:#1c41ab; color: white;">
  <div class="container p-2">
    <div class="input-group ml-auto">
        <a href="shop.php"><button class="btn btn-outline-warning" type="button">Shop Now</button></a> &nbsp;&nbsp;&nbsp;
        <a href="brands.php"><button class="btn btn-outline-warning" type="button">Brands</button></a>
      </div>
    </div>
</div><div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
       <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
       <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
       <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
       <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="assets/img/banner.jpg" alt="First slide" style="height: auto; width: 100%;">
        <div class="carousel-caption d-none d-md-block">
        </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/banner2.jpg" alt="Second slide" style="height: auto; width: 100%;">        
        <div class="carousel-caption d-none d-md-block">
        </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/banner3.jpg" alt="Third slide" style="height: auto; width: 100%;">        
        <div class="carousel-caption d-none d-md-block">

        </div>
    </div>
      <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/banner4.jpg" alt="Fourth slide" style="height: auto; width: 100%;">        
        <div class="carousel-caption d-none d-md-block">
        </div>
    </div>
      <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/banner5.jpg" alt="Fifth slide" style="height: auto; width: 100%;">        
        <div class="carousel-caption d-none d-md-block">
        </div>
    </div>
      <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/banner6.jpg" alt="Sixth slide" style="height: auto; width: 100%;">        
        <div class="carousel-caption d-none d-md-block">
        </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/banner7.jpg" alt="Seventh slide" style="height: auto; width: 100%;">        
        <div class="carousel-caption d-none d-md-block">
        </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script><div class="container">
  <div class="row">
    <div class="col-md-12">
        <p style ="color:#1B0975; text-align: center; font-size: 50px;"><b>BEST SELLERS</b></p>
      </div>
    </div>
</div>
        <div class="container text-center my-3">
    <div id="recipeCarousel" class="carousel slide w-100" data-ride="carousel">
        <div class="carousel-inner w-100" role="listbox">
            <div class="carousel-item row no-gutters active">
                <a href="productdisplay/productdisplay.php?id=43"><div class="col-3 float-left"><img class="img-fluid" src="assets/img/hyperx.jpg" ><p style="color:black;">HyperX Fury 8GB DDR4</p></div></a>
                <a href="productdisplay/productdisplay.php?id=52"><div class="col-3 float-left"><img class="img-fluid" src="assets/img/motherboard.jpg"><p style="color:black;">MSI A320 A PRO</p></div></a>
                <a href="productdisplay/productdisplay.php?id=60"><div class="col-3 float-left"><img class="img-fluid" src="images/rakkaptas.jpg"><p style="color:black;">RAKK Aptas V2 Keyboard and Mouse Bundle</p></div></a>
                <a href="productdisplay/productdisplay.php?id=1"><div class="col-3 float-left"><img class="img-fluid" src="assets/img/ryzen52600.jpg">
                    <p style="color:black;">RYZEN 5 2600</p></div></a>
            </div>
            <div class="carousel-item row no-gutters">
                <a href="productdisplay/productdisplay.php?id=50"><div class="col-3 float-left"><img class="img-fluid" src="assets/img/Core%20i5-9400.jpg"><p style="color:black;">Core i5-9400 CoffeeLake</p></div></a>
                <a href="productdisplay/productdisplay.php?id=48"><div class="col-3 float-left"><img class="img-fluid" src="assets/img/CoreI3-9100FCLake.jpeg"><p style="color:black;">Core i3-9100f CoffeeLake</p></div></a>
                <a href="productdisplay/productdisplay.php?id=34"><div class="col-3 float-left"><img class="img-fluid" src="images/gigabytegtx1650super.jpg"><p style="color:black;">Gigabyte Gtx 1650 Super Windforce OC Gaming Videocard 4GB 128bit GDdr6</p></div></a>
                <a href="productdisplay/productdisplay.php?id=67"><div class="col-3 float-left"><img class="img-fluid" src="assets/img/SamsungEvo860.jpg"><p style="color:black;">SAMSUNG EVO 860</p></div></a>
            </div>
        </div>
        <a class="carousel-control-prev" href="#recipeCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#recipeCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
</div><div class="container"><br><br /><br><br /><br><br /></div><div>
    <div id="box-2">
        <h1 style="color:#e74c3c;">Prime Systems</h1>
        
        <br> <br />
        <br> <br />
        <br> <br />
         <br> <br />
        <br> <br />
    </div>
    <div id="box-3">
        <h1 style="color:#e74c3c;">Nobody Else</h1>
       <br> <br />
        <br> <br />
        <br> <br />
        <br> <br />
         <br> <br />
        <br> <br />
    </div>
    <div id="box-1">
        <h1 style="color:#e74c3c;">Like Us.</h1>
        <br> <br />
        <br> <br />
        <br> <br />
         <br> <br />
        <br> <br />
         <br> <br />
        <br> <br />
         <br> <br />
        <br> <br />
         <br> <br />
        <br> <br />
         <br> <br />
        <br> <br />
        
    </div>
</div><footer id="footerpad">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-8 mx-auto">
                <ul class="list-inline text-center">
                    <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-facebook fa-stack-1x fa-inverse"></i></span></a></li>
                    <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-twitter fa-stack-1x fa-inverse"></i></span></a></li>
                    <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-instagram fa-stack-1x fa-inverse"></i></span></a></li>
                    <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-linkedin fa-stack-1x fa-inverse"></i></span></a></li>
                </ul>
                <p class="copyright text-muted text-center">Copyright © Prime Systems 2020 | All Rights Reserved.</p>
            </div>
        </div>
    </div>
</footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/Media-Slider-Bootstrap-3.js"></script>
</body>

</html>