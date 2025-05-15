<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo base_url('assets/logo/');?>fav.jpeg">
    <title><?php echo $this->comp['company_name']; ?> | CMS | LOGIN </title>    
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url('assets/cms/');?>bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url('assets/cms/');?>plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="<?php echo base_url('assets/cms/');?>css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url('assets/cms/');?>css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="<?php echo base_url('assets/cms/');?>css/colors/default-dark.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
   <!-- <script>
    (function(i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function() {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-19175540-9', 'auto');
    ga('send', 'pageview');
    </script>-->
</head>

<style>
.login-register {
    background: url(<?php echo base_url('assets/all/login_bg.jpg'); ?>) center center/cover no-repeat!important;
    height: 100%
}
</style>

<body>
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <section id="wrapper" class="login-register">
        <div class="login-box">
            <div class="white-box">
                <form class="form-horizontal form-material" id="loginform" method="post" onsubmit="return form_validate();" action="<?php echo base_url($this->setting['cms'].'login'); ?>" >
                    <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />
                    <h3 class="box-title m-b-20">
                        <center>
                            <img src="<?php echo base_url('assets/logo/');?>logo.png" alt="" height="100">
                        </center>                            
                    </h3>
                    <div class="form-group ">
                        <div class="col-xs-12">
                            <h3 align="center">Sign In</h3>
                            <?php if(!empty($this->session->flashdata('msg'))){
                                $text =  $this->session->flashdata('msg');
                                ?>
                                <div class="alert alert-<?php echo $text['t']?> alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <?php echo $text['mess']?>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
                            <?php $error = form_error("login_id", "<span class='text-danger'>","</span>");?>
                            <input type="text" class="form-control" placeholder="Login Id" name="login_id" autocomplete="off" value="<?php echo set_value("login_id");?>" required="" />
                            <?php echo $error;?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <?php $error = form_error("login_password", "<span class='text-danger'>","</span>");?>
                            <input type="password" class="form-control" placeholder="Password" name="login_password" required="" />
                            <?php echo $error;?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">                            
                            <a href="javascript:void(0)" id="to-recover" class="text-dark pull-right"><i class="fa fa-lock m-r-5"></i> Forgot pwd?</a> 
                        </div>
                    </div>
                    <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                            <button class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" type="submit" name="submit" id="submit">Sign In</button>
                        </div>
                    </div>
                </form>
                <form class="form-horizontal" id="recoverform" action="<?php echo base_url($this->setting['cms'].'reset_pwd'); ?>" method="post" onsubmit="return form_validate1();">
                    <div class="form-group ">
                        <div class="col-xs-12">
                            <h3>Recover Password</h3>
                        </div>
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
                            <?php $error = form_error("login_id", "<span class='text-danger'>","</span>");?>
                            <input type="text" class="form-control" placeholder="Login Id" name="login_id" autocomplete="off" value="<?php echo set_value("login_id");?>" required="" />
                            <?php echo $error;?>
                        </div>
                    </div>
                    <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                            <button class="btn btn-primary btn-lg btn-block text-uppercase waves-effect waves-light" type="submit" name="reset" id="reset" >Reset</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
<script>
  function form_validate() {
    $("#submit").html('Please wait...'); 
    $("#submit").attr('disabled', true); 

    return true;
  }
  function form_validate1() {
    $("#reset").html('Please wait...'); 
    $("#reset").attr('disabled', true); 

    return true;
  }
</script>
    <!-- jQuery -->
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url('assets/cms/');?>bootstrap/dist/js/tether.min.js"></script>
    <script src="<?php echo base_url('assets/cms/');?>bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="<?php echo base_url('assets/cms/');?>js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="<?php echo base_url('assets/cms/');?>js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url('assets/cms/');?>js/custom.min.js"></script>
    <!--Style Switcher -->
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>
