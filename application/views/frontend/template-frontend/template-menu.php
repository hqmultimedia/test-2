
<!-- 01.Menu -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="/TemplateAngularJS/">
    <title>Home Project</title>

    <!-- HQ template -->
    <!-- css -->
    <link rel="stylesheet " href="<?php echo base_url(); ?>frontend-panel/css/hq-theme.css ">
    <link rel="stylesheet " href="<?php echo base_url(); ?>frontend-panel/css/edit-hq-theme.css ">
    <!-- js -->
    <script src="<?php echo base_url(); ?>frontend-panel/js/js-theme.js "></script>
    <!-- icon -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <!-- fontawesome -->
    <!-- fontawesome 6.0 -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>library/fontawesome/css/all.min.css">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400&family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
    
    <!-- A.HQ-css-plugin -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>library/hq-multimedia-plugin/hq-css/hqcss-ver-1.9.css">
    
    <!-- B.Vendor-Library -->
    <!-- B1.W3-Css -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>library/w3css/w3.css">

    

    <!--B2.Bootstrap 5 W3School -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>library/bootstrap-w3schools.com/css/bootstrap-5.min.css">

    <script src="<?php echo base_url(); ?>library/bootstrap-w3schools.com/js/jquery.min.js"></script>


    <script src="<?php echo base_url(); ?>library/bootstrap-w3schools.com/js/popper.min.js"></script>

    <script src="<?php echo base_url(); ?>library/bootstrap-w3schools.com/js/bootstrap.min.js"></script>



    <!-- OWL Slider -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>vendor/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>vendor/owlcarousel/assets/owl.theme.default.min.css">
    <script src="<?php echo base_url(); ?>vendor/owlcarousel/owl.carousel.min.js"></script>
    <!-- video -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.6/mediaelementplayer.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>vendor/video-mediaelement-plugins-2.6.7/dist/playlist/playlist.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>vendor/video-mediaelement-plugins-2.6.7/dist/playlist/playlist-edit-by-user.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>vendor/video-mediaelement-plugins-2.6.7/dist/playlist/normalize.min.css">
    <!-- video -->
    <!-- Add mousewheel vendor (this is optional) -->
    <script type="text/javascript" src="<?php echo base_url(); ?>vendor/fancybox_3/lib/jquery.mousewheel.pack.js"></script>

    <!-- Add fancyBox main JS and CSS files -->
    <script type="text/javascript" src="<?php echo base_url(); ?>vendor/fancybox_3/source/jquery.fancybox.pack.js"></script>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>vendor/fancybox_3/source/jquery.fancybox.css" media="screen" />


    <!-- B3.AngularJS -->
    <script src="<?php echo base_url(); ?>library/angular-file-upload-master/js/angular1.5.5.min.js"></script>
    <script src="<?php echo base_url(); ?>library/angular-file-upload-master/js/angular-animate.min.js"></script>
    <script src="<?php echo base_url(); ?>library/angular-file-upload-master/js/angular-aria.min.js"></script>
    <script src="<?php echo base_url(); ?>library/angular-file-upload-master/js/angular-messages.min.js"></script>
    <script src="<?php echo base_url(); ?>library/angular-file-upload-master/js/angular-material.min.js"></script>
    <script src="<?php echo base_url(); ?>library/angular-file-upload-master/js/angular-route-1.5.5.js"></script>
    <script src="<?php echo base_url(); ?>library/angular-file-upload-master/js/dirPagination.js"></script>

    
    <!-- Angular tự code theo project -->
    <script src="<?php echo base_url(); ?>frontend-panel/js-angularJs/general-ingredients/banner.js "></script>
    <script src="<?php echo base_url(); ?>frontend-panel/js-angularJs/page/posts.js "></script>
    
    <script src="<?php echo base_url(); ?>frontend-panel/js-angularJs/page/list-data-by-category.js "></script>

    <script src="<?php echo base_url(); ?>frontend-panel/js-angularJs/PostsController.js "></script>


</head>
<body style="font-size: 15px !important;" ng-app="myApp">



<!-- menu -->
<?php 
$path_dir=__DIR__;
?>
<?php require($path_dir.'/../general-ingredients/menu/menu.php'); ?>
<!-- end menu -->