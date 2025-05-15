<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo base_url('assets/logo/');?>fav.jpeg">
    <title> <?php echo strtoupper($this->comp['company_name']); ?> | CMS | <?php echo $this->page_title; ?> </title>
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url('assets/cms/');?>bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url('assets/cms/');?>plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css" rel="stylesheet">

    <link href="<?php echo base_url('assets/cms/');?>plugins/bower_components/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
    <!-- Menu CSS -->
    <link href="<?php echo base_url('assets/cms/');?>plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- toast CSS -->
    <link href="<?php echo base_url('assets/cms/');?>plugins/bower_components/toast-cms/css/jquery.toast.css" rel="stylesheet">
    <!-- morris CSS -->
    <link href="<?php echo base_url('assets/cms/');?>plugins/bower_components/morrisjs/morris.css" rel="stylesheet">
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
    <script>
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
    </script>

    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/ckeditor/4.18.0/ckeditor.js" integrity="sha512-woYV6V3QV/oH8txWu19WqPPEtGu+dXM87N9YXP6ocsbCAH1Au9WDZ15cnk62n6/tVOmOo0rIYwx05raKdA4qyQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>

<body>
    <!-- Preloader -->
<!--     <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div> -->
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header" style="background-color: #292929 !important" > <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
                <div class="top-left-part" style="background-color: white !important;" >
                    <a class="logo" href="<?php echo base_url(); ?>" >
                        <center><!--This is dark logo icon-->
                            <img src="<?php echo base_url('assets/logo/');?>logo.png" alt="home" class="dark-logo" style="width : 98%; height: 60px;" />
                        </center>
                    </a>
                </div>
                <ul class="nav navbar-top-links navbar-left hidden-xs">
                    <li><a href="javascript:void(0)" class="open-close hidden-xs waves-effect waves-light"><i class="icon-arrow-left-circle ti-menu"></i></a></li>
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- Left navbar-header -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse slimscrollsidebar">
                <div class="user-profile">
                    <div class="dropdown user-pro-body">
                        <div><img src="<?php echo base_url('assets/cms/');?>plugins/images/users/admin_img.png" alt="user-img" class="img-circle"></div>
                        <a href="#" class="dropdown-toggle u-dropdown" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <?php echo $this->admin_data['name']; ?> <span class="caret"></span></a>
                        <ul class="dropdown-menu animated flipInY">
                            <li><a href="<?php echo base_url($this->setting['cms'].'change_pwd'); ?>"><i class="ti-settings"></i> Change Password</a></li>
                            <li><a href="<?php echo base_url($this->setting['cms'].'logout'); ?>"><i class="fa fa-power-off"></i> Logout</a></li>
                        </ul>
                    </div>
                </div>
                <ul class="nav" id="side-menu">

                    <li> 
                        <a href="<?php echo base_url($this->setting['cms']).'dashboard';?>" class="waves-effect <?php if ($this->cur_func == 'dashboard') { echo 'active'; } ?> ">
                            <i class="fa fa-home"></i> 
                            <span class="hide-menu"> Dashboard </span>
                        </a>                       
                    </li>                     

                    <!-- <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'employee_add' || $this->cur_func == 'employee' || $this->cur_func == 'employee_edit') { echo 'active'; } ?>">
                            <i class="fa fa-user"></i> 
                            <span class="hide-menu"> Employee <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'employee_add';?>" class="<?php if ($this->cur_func == 'employee_add') { echo 'active'; } ?>" > 
                                    Add Employee
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'employee';?>" class="<?php if ($this->cur_func == 'employee') { echo 'active'; } ?>" > 
                                    Employee List
                                </a>
                            </li>                                                            
                        </ul>
                    </li>  --> 

                    <li> 
                        <a href="<?php echo base_url($this->setting['cms']).'course_review';?>" class="waves-effect <?php if ($this->cur_func == 'course_review') { echo 'active'; } ?> ">
                            <i class="fa fa-comment-o"></i> 
                            <span class="hide-menu"> Reviews </span>
                        </a>                       
                    </li>                   

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'course_cat_add' || $this->cur_func == 'course_cat' || $this->cur_func == 'course_cat_edit') { echo 'active'; } ?>">
                            <i class="fa fa-list"></i> 
                            <span class="hide-menu"> Course Category <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'course_cat_add';?>" class="<?php if ($this->cur_func == 'course_cat_add') { echo 'active'; } ?>" > 
                                    Add
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'course_cat';?>" class="<?php if ($this->cur_func == 'course_cat') { echo 'active'; } ?>" > 
                                    List
                                </a>
                            </li>                                        
                        </ul>
                    </li>

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'course_add' || $this->cur_func == 'course' || $this->cur_func == 'course_edit' || $this->cur_func == 'course_review' || $this->cur_func == 'course_instructor') { echo 'active'; } ?>">
                            <i class="fa fa-book"></i> 
                            <span class="hide-menu"> Course <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'course_add';?>" class="<?php if ($this->cur_func == 'course_add') { echo 'active'; } ?>" > 
                                    Add
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'course';?>" class="<?php if ($this->cur_func == 'course') { echo 'active'; } ?>" > 
                                    List
                                </a>
                            </li>                                        
                        </ul>
                    </li>

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'certificate_add' || $this->cur_func == 'certificate_list' || $this->cur_func == 'certificate_edit') { echo 'active'; } ?>">
                            <i class="fa fa-gift"></i> 
                            <span class="hide-menu"> Certificate <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'certificate_add';?>" class="<?php if ($this->cur_func == 'certificate_add') { echo 'active'; } ?>" > 
                                    Add
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'certificate_upload';?>" class="<?php if ($this->cur_func == 'certificate_upload') { echo 'active'; } ?>" > 
                                    Upload Excel
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'certificate_list/Participation';?>" class="<?php if ($this->cur_func == 'certificate_list' && $this->cur_func2 == 'Participation') { echo 'active'; } ?>" > 
                                    Participation Certificate
                                </a>
                            </li>  
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'certificate_list/Completion';?>" class="<?php if ($this->cur_func == 'certificate_list' && $this->cur_func2 == 'Completion') { echo 'active'; } ?>" > 
                                    Completion Certificate
                                </a>
                            </li>                                        
                        </ul>
                    </li>

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'request_course_enquire') { echo 'active'; } ?>">
                            <i class="fa fa-comment-o"></i> 
                            <span class="hide-menu"> Course Booking <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <!-- <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_course_enquire';?>" class="<?php if ($this->cur_func == 'request_course_enquire') { echo 'active'; } ?>" > 
                                     List
                                </a>
                            </li>  -->
                            
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_course_enquire/Pending';?>" class="<?php if ($this->cur_func == 'request_course_enquire' && $this->cur_func2 == 'Pending') { echo 'active'; } ?>" > 
                                     List
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_course_enquire/Success';?>" class="<?php if ($this->cur_func == 'request_course_enquire' && $this->cur_func2 == 'Success') { echo 'active'; } ?>" > 
                                    Success List
                                </a>
                            </li>                                    
                        </ul>
                    </li>

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'request_callback') { echo 'active'; } ?>">
                            <i class="fa fa-comment-o"></i> 
                            <span class="hide-menu"> Callback Request <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <!-- <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_callback';?>" class="<?php if ($this->cur_func == 'request_callback') { echo 'active'; } ?>" > 
                                     List
                                </a>
                            </li> --> 
                            
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_callback/Pending';?>" class="<?php if ($this->cur_func == 'request_callback' && $this->cur_func2 == 'Pending') { echo 'active'; } ?>" > 
                                     List
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_callback/Success';?>" class="<?php if ($this->cur_func == 'request_callback' && $this->cur_func2 == 'Success') { echo 'active'; } ?>" > 
                                    Success List
                                </a>
                            </li>                                      
                        </ul>
                    </li>

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'request_teacher') { echo 'active'; } ?>">
                            <i class="fa fa-comment-o"></i> 
                            <span class="hide-menu"> Teacher Request <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <!-- <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_teacher';?>" class="<?php if ($this->cur_func == 'request_teacher') { echo 'active'; } ?>" > 
                                     List
                                </a>
                            </li>  -->
                            
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_teacher/Pending';?>" class="<?php if ($this->cur_func == 'request_teacher' && $this->cur_func2 == 'Pending') { echo 'active'; } ?>" > 
                                     List
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_teacher/Success';?>" class="<?php if ($this->cur_func == 'request_teacher' && $this->cur_func2 == 'Success') { echo 'active'; } ?>" > 
                                    Success List
                                </a>
                            </li>                                     
                        </ul>
                    </li>

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'request_career') { echo 'active'; } ?>">
                            <i class="fa fa-comment-o"></i> 
                            <span class="hide-menu"> Career Counselling Request <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <!-- <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_career';?>" class="<?php if ($this->cur_func == 'request_career') { echo 'active'; } ?>" > 
                                     List
                                </a>
                            </li>  -->
                            
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_career/Pending';?>" class="<?php if ($this->cur_func == 'request_career' && $this->cur_func2 == 'Pending') { echo 'active'; } ?>" > 
                                     List
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'request_career/Success';?>" class="<?php if ($this->cur_func == 'request_career' && $this->cur_func2 == 'Success') { echo 'active'; } ?>" > 
                                    Success List
                                </a>
                            </li>                                        
                        </ul>
                    </li>   

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'admission_query') { echo 'active'; } ?>">
                            <i class="fa fa-comment-o"></i> 
                            <span class="hide-menu"> Admission Query <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'admission_query/Unseen';?>" class="<?php if ($this->cur_func == 'admission_query' && $this->cur_func2 == 'Unseen') { echo 'active'; } ?>" > 
                                    Unseen List
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'admission_query/Seen';?>" class="<?php if ($this->cur_func == 'admission_query' && $this->cur_func2 == 'Seen') { echo 'active'; } ?>" > 
                                    Seen List
                                </a>
                            </li>                                      
                        </ul>
                    </li>   

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'admission' || $this->cur_func == 'admission_details') { echo 'active'; } ?>">
                            <i class="fa fa-file-o"></i> 
                            <span class="hide-menu"> Admission Request <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'admission/Pending';?>" class="<?php if ($this->cur_func == 'admission' && $this->cur_func2 == 'Pending') { echo 'active'; } ?>" > 
                                    Unssen List
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'admission/Approved';?>" class="<?php if ($this->cur_func == 'admission' && $this->cur_func2 == 'Approved') { echo 'active'; } ?>" > 
                                    Seen List
                                </a>
                            </li> 
                            <!-- <li>
                                <a href="<?php echo base_url($this->setting['cms']).'admission/Rejected';?>" class="<?php if ($this->cur_func == 'admission' && $this->cur_func2 == 'Rejected') { echo 'active'; } ?>" > 
                                    Rejected List
                                </a>
                            </li>  -->                                        
                        </ul>
                    </li>                                 

                    
                    
                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'nb_add' || $this->cur_func == 'nb' || $this->cur_func == 'nb_edit') { echo 'active'; } ?>">
                            <i class="fa fa-image"></i> 
                            <span class="hide-menu"> Notice Board <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">    
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'nb_add';?>" class="<?php if ($this->cur_func == 'nb_add') { echo 'active'; } ?>" > 
                                    Add Notice
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'nb';?>" class="<?php if ($this->cur_func == 'nb') { echo 'active'; } ?>" > 
                                    Notice List
                                </a>
                            </li>                                        
                        </ul>
                    </li>


                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'expert_add' || $this->cur_func == 'expert' || $this->cur_func == 'expert_edit') { echo 'active'; } ?>">
                            <i class="fa fa-user"></i> 
                            <span class="hide-menu"> Teams & Experts <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">                              
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'expert_add';?>" class="<?php if ($this->cur_func == 'expert_add') { echo 'active'; } ?>" > 
                                    Add Expert
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'expert';?>" class="<?php if ($this->cur_func == 'expert') { echo 'active'; } ?>" > 
                                    Expert List
                                </a>
                            </li>                                        
                        </ul>
                    </li>

                    <li>
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'blog_add' || $this->cur_func == 'blog' || $this->cur_func == 'blog_edit') { echo 'active'; } ?>">
                            <i class="fa fa-rss"></i>
                            <span class="hide-menu"> Blogs <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'blog_add';?>" class="<?php if ($this->cur_func == 'blog_add') { echo 'active'; } ?>" >
                                    Add Blog
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'blogs';?>" class="<?php if ($this->cur_func == 'blogs') { echo 'active'; } ?>" >
                                    Blog List
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'gallery_album_add' || $this->cur_func == 'gallery_album' || $this->cur_func == 'gallery_album_edit' || $this->cur_func == 'gallery_add' || $this->cur_func == 'gallery' || $this->cur_func == 'gallery_edit') { echo 'active'; } ?>">
                            <i class="fa fa-image"></i> 
                            <span class="hide-menu"> Gallery <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">  
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'gallery_album_add';?>" class="<?php if ($this->cur_func == 'gallery_album_add') { echo 'active'; } ?>" > 
                                    Add Album
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'gallery_album';?>" class="<?php if ($this->cur_func == 'gallery_album') { echo 'active'; } ?>" > 
                                    Album List
                                </a>
                            </li>   
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'gallery_add';?>" class="<?php if ($this->cur_func == 'gallery_add') { echo 'active'; } ?>" > 
                                    Add Gallery
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'gallery';?>" class="<?php if ($this->cur_func == 'gallery') { echo 'active'; } ?>" > 
                                    Gallery List
                                </a>
                            </li>                                        
                        </ul>
                    </li>
                   

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'hs_add' || $this->cur_func == 'hs' || $this->cur_func == 'hs_edit') { echo 'active'; } ?>">
                            <i class="fa fa-image"></i> 
                            <span class="hide-menu"> Home Slider <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">    
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'hs_add';?>" class="<?php if ($this->cur_func == 'hs_add') { echo 'active'; } ?>" > 
                                    Add Slider
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'hs';?>" class="<?php if ($this->cur_func == 'hs') { echo 'active'; } ?>" > 
                                    Slider List
                                </a>
                            </li>                                        
                        </ul>
                    </li>

                    <li> 
                        <a href="#" class="waves-effect <?php if ($this->cur_func == 'pg_manage') { echo 'active'; } ?>">
                            <i class="fa fa-image"></i> 
                            <span class="hide-menu"> Page Manage <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level">    
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manage/home';?>" class="<?php if ($this->cur_func == 'pg_manage' && $this->cur_func2 == 'home') { echo 'active'; } ?>" > 
                                    Home
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manage/about';?>" class="<?php if ($this->cur_func == 'pg_manage' && $this->cur_func2 == 'about') { echo 'active'; } ?>" > 
                                    About
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manage/mission_vision';?>" class="<?php if ($this->cur_func == 'pg_manage' && $this->cur_func2 == 'mission_vision') { echo 'active'; } ?>" > 
                                    Mission & Vision
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manage/aim';?>" class="<?php if ($this->cur_func == 'pg_manage' && $this->cur_func2 == 'aim') { echo 'active'; } ?>" > 
                                    Aim
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manage/banking_partner';?>" class="<?php if ($this->cur_func == 'pg_manage' && $this->cur_func2 == 'banking_partner') { echo 'active'; } ?>" > 
                                    Banking Partner
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manage/media_partner';?>" class="<?php if ($this->cur_func == 'pg_manage' && $this->cur_func2 == 'media_partner') { echo 'active'; } ?>" > 
                                    Media Partner
                                </a>
                            </li>  
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manage/privacy_policy';?>" class="<?php if ($this->cur_func == 'pg_manage' && $this->cur_func2 == 'privacy_policy') { echo 'active'; } ?>" > 
                                    Privacy Policy
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manage/terms_conditions';?>" class="<?php if ($this->cur_func == 'pg_manage' && $this->cur_func2 == 'terms_conditions') { echo 'active'; } ?>" > 
                                    Terms & Conditions
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manage/callback';?>" class="<?php if ($this->cur_func == 'pg_manage' && $this->cur_func2 == 'callback') { echo 'active'; } ?>" > 
                                    Callback Form
                                </a>
                            </li>                                         
                            <!-- ********** REPEAT ************ -->
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manager/Key_Facilities';?>" class="<?php if ($this->cur_func == 'pg_manager' && $this->cur_func2 == 'Key_Facilities') { echo 'active'; } ?>" > 
                                    Key Facilities
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manager/Why_choose';?>" class="<?php if ($this->cur_func == 'pg_manager' && $this->cur_func2 == 'Why_choose') { echo 'active'; } ?>" > 
                                    Why Choose Us
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manager/Accreditation';?>" class="<?php if ($this->cur_func == 'pg_manager' && $this->cur_func2 == 'Accreditation') { echo 'active'; } ?>" > 
                                    Accreditation
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manager/Appreciation';?>" class="<?php if ($this->cur_func == 'pg_manager' && $this->cur_func2 == 'Appreciation') { echo 'active'; } ?>" > 
                                    Appreciation
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manager/Authorization';?>" class="<?php if ($this->cur_func == 'pg_manager' && $this->cur_func2 == 'Authorization') { echo 'active'; } ?>" > 
                                    Authorization
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manager/Govt_pledge';?>" class="<?php if ($this->cur_func == 'pg_manager' && $this->cur_func2 == 'Govt_pledge') { echo 'active'; } ?>" > 
                                    Government Pledge
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manager/Olympiad';?>" class="<?php if ($this->cur_func == 'pg_manager' && $this->cur_func2 == 'Olympiad') { echo 'active'; } ?>" > 
                                    Olympiad
                                </a>
                            </li> 
                            <li>
                                <a href="<?php echo base_url($this->setting['cms']).'pg_manager/Bulletins';?>" class="<?php if ($this->cur_func == 'pg_manager' && $this->cur_func2 == 'Bulletins') { echo 'active'; } ?>" > 
                                    Bulletins
                                </a>
                            </li>                                         
                        </ul>
                    </li>

                    <li> 
                        <a href="<?php echo base_url($this->setting['cms']).'seo_list';?>" class="waves-effect <?php if ($this->cur_func == 'seo_list') { echo 'active'; } ?> ">
                            <i class="fa fa-list"></i> 
                            <span class="hide-menu"> Page SEO </span>
                        </a>                       
                    </li>                                         
                                        
                </ul>
            </div>
        </div>
        <!-- Left navbar-header end -->

         <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title"><?php echo $this->title; ?></h4> 
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                        <ol class="breadcrumb">
                            <li><a href="<?php echo base_url($this->setting['cms'].'dashboard'); ?>">DASHBOARD</a></li>
                            <li class="active"><?php echo $this->title; ?></li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
<style>
.top-left-part {
    background: #EFEB15;
}
</style>     