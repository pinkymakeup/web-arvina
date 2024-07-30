<?php
session_start();
include 'component/koneksi.php'
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Pinky Make Up | Home</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font awesome -->
  <link href="assets/css/font-awesome.css" rel="stylesheet">
  <!-- Bootstrap -->
  <link href="assets/css/bootstrap.css" rel="stylesheet">
  <!-- SmartMenus jQuery Bootstrap Addon CSS -->
  <link href="assets/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
  <!-- Product view slider -->
  <link rel="stylesheet" type="text/css" href="assets/css/jquery.simpleLens.css">
  <!-- slick slider -->
  <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
  <!-- price picker slider -->
  <link rel="stylesheet" type="text/css" href="assets/css/nouislider.css">
  <!-- Theme color -->
  <link id="switcher" href="assets/css/theme-color/bridge-theme.css" rel="stylesheet">
  <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
  <!-- Top Slider CSS -->
  <link href="assets/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

  <!-- Main style sheet -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- Google Font -->
  <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>


  <!-- Owl Stylesheets -->
  <link rel="stylesheet" href="assets/carousel/owlcarousel/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="assets/carousel/owlcarousel/assets/owl.theme.default.min.css">

  <script src="assets/carousel/vendors/jquery.min.js"></script>
  <script src="assets/carousel/owlcarousel/owl.carousel.js"></script>



  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>

<body>

  <!-- coding tampilan loading -->

  <!-- coding scrool up -->
  <!-- location kanan bawah -->
  <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>



  <!-- coding judul besar atas  -->
  <?php include 'component/top-bar.php'  ?>

  <!-- coding tampilan menu atas -->
  <?php include 'component/menu.php' ?>


  <?php
  $halaman = "home.php"; // string
  // $umur = 432; // integer

  if (!empty($_GET['page'])) {
    $halaman = $_GET['page'] . ".php";
  }

  if (file_exists("pages/" . $halaman)) {
    include "pages/" . $halaman;
  } else {
    include "pages/404.php";
  }


  ?>

  <!-- coding judul bawah -->
  <?php include 'component/footer.php' ?>

  <!-- coding javascript -->
  <?php include 'component/script.php' ?>

</body>

</html>