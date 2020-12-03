<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Log-In</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/-Login-form-Page-BS4-.css">
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
<center>
<h3><font color="red">
                    <?php
                    if (isset($_GET['error'])) {
                        if ($_GET['error'] == "emptyfield")  {
                            echo "SOME FIELDS ARE EMPTY";
                        }
                        if ($_GET['error'] == "invalidemail")  {
                            echo "INVALID EMAIL";
                        }
                    }
                    ?>
</font></h3>
</center>

    <div class="container-fluid">
        <div class="row mh-100vh">
            <div class="col-10 col-sm-8 col-md-6 col-lg-6 offset-1 offset-sm-2 offset-md-3 offset-lg-0 align-self-center d-lg-flex align-items-lg-center align-self-lg-stretch bg-white p-5 rounded rounded-lg-0 my-5 my-lg-0" id="login-block">
                <div class="m-auto w-lg-75 w-xl-50"><a href="index.php"><img src="images/PrimeSystems.jpg"></a><h2 class="text-info font-weight-light mb-5"><br>&nbsp;Login</h2>
                    <form method="post" action="includes/login.inc.php">
                        <div class="form-group"><label class="text-secondary"><i class="far fa-envelope"></i> Email</label><input class="form-control" type="text" name="email" id="email" required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,15}$" inputmode="email"></div>
                        <div class="form-group"><label class="text-secondary"><i class="fas fa-user-lock"></i> Password</label><input class="form-control" type="password" name="password" id="password" required=""></div><button class="btn btn-info mt-2" type="submit" value="Login" name="btnLogin">Log In</button></form>
                    <p class="mt-3 mb-0"><a class="text-info small" href="#">Forgot your email or password?</a></p>
                </div>
            </div><div class="col-lg-6 d-flex align-items-end" id="bg-block" style="background-image:url('assets/img/background.png');background-size:cover;background-position:center center;">
    <p class="ml-auto small text-dark mb-2"><a class="text-dark" href="https://unsplash.com/photos/v0zVmWULYTg?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText" target="_blank"></a><br /></p>
</div></div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/Media-Slider-Bootstrap-3.js"></script>
</body>

</html>