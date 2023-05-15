<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!doctype html>
<html>
<head>
<title>YNJGY ENGLISH WEBSITE</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--bootstrap-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!--coustom css-->
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<!--script-->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- js -->
<script src="js/bootstrap.js"></script>
<!-- /js -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300,300italic,400italic,400,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--/fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--script-->

<!--/script-->
</head>
	<body>
<!--header-->
<?php include_once('includes/header.php');?>

<section class="gallery" id="gallery">

<h1 class="heading"> <span> Research </span> </h1>


<div class="image-container">

    <div class="box phone">
        <div class="image">
            <img src="images/research3.jpg" alt="">
        </div>
        <div class="info">
            <h3>School of Intelligent Manufacturing</h3>
            <div class="subInfo">
                <p>School of Intelligent Manufacturing is the secondary school of intelligent manufacturing industry jointly established by Yunnan College of Business Management and Beijing Huasheng Jingshi Information Technology Co., Ltd. (hereinafter referred to as "Huasheng Jingshi"), which is committed to cultivating "Made in China 2025" in line with China's industrial upgrading needs Of full-time undergraduate management, research and development of high-quality application-oriented talents.</p>
               
           
            </div>
        </div>
    </div>

    <div class="box phone">
        <div class="image">
            <img src="images/research1.jpg" alt="">
        </div>
        <div class="info">
            <h3>School of Big Data</h3>
            <div class="subInfo">
                
                <p>School of Big Data is jointly established by Yunnan College of Business Management, the one of World Top 500 Enterprise HPE (China) Co., Ltd. and Hubei Meiheyisi Education Technology Co., Ltd. At present, there are 2 undergraduate majors in software engineering and big data management and application and 1 major for junior college in computer application technology for the purposes of training high-quality application-oriented innovative talents with technical capabilities such as software development..</p>
     
            
            </div>
        </div>
    </div>

    <!--  -->

</div>

</section>
<?php include_once('includes/footer.php');?>
<!--/copy-rights-->
	</body>
</html>
