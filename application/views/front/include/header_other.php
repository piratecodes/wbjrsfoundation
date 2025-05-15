<!DOCTYPE html>
<html lang="en">
<head>
    <?php $comp_name = "WBJRS Academic Foundation"; ?>
    <meta charset="UTF-8" />
     <meta property="og:site_name" content="WBJRS Academic Foundation" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <meta name="keywords" content="<?php if (isset($this->meta['meta_keyword'])) { if (!empty($this->meta['meta_keyword'])) { echo $this->meta['meta_keyword']; } } ?>">
    <meta name="description" content="<?php if (isset($this->meta['meta_description'])) { if (!empty($this->meta['meta_description'])) { echo $this->meta['meta_description']; } } ?>">
    <title> <?php if (isset($this->meta['meta_title'])) { if (!empty($this->meta['meta_title'])) { echo $this->meta['meta_title']; } else { echo $comp_name; } } else { echo $comp_name; } ?></title>
    
    <!-- favicons Icons -->
    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo base_url()?>assets/logo/fav.jpeg" />
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo base_url()?>assets/logo/fav.jpeg" />
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo base_url()?>assets/logo/fav.jpeg" />
    <link rel="manifest" href="<?php echo base_url()?>assets/front/images/favicons/site.webmanifest" />
    <meta name="description" content="Eduact HTML Template For Educaton & LMS" />

    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;family=Water+Brush&amp;display=swap" rel="stylesheet">

    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/bootstrap-select/bootstrap-select.min.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/jquery-ui/jquery-ui.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/animate/animate.min.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/fontawesome/css/all.min.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/eduact-icons/style.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/jarallax/jarallax.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/jquery-magnific-popup/jquery.magnific-popup.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/nouislider/nouislider.min.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/nouislider/nouislider.pips.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/odometer/odometer.min.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/tiny-slider/tiny-slider.min.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/owl-carousel/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/vendors/owl-carousel/assets/owl.theme.default.min.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!-- template styles -->
    <link rel="stylesheet" href="<?php echo base_url()?>assets/front/css/eduact.css" />
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-Z17R8ZR985">
</script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-Z17R8ZR985');
</script>
</head>

<body class="custom-cursor">

    <div class="page-wrapper">
<?php
include 'menu.php';
?>

<div class="stricky-header stricked-menu main-menu main-header-two">
    <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
</div><!-- /.stricky-header -->

<?php
include 'floating.php';
?>