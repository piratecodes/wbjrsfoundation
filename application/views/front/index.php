<?php
include 'include/header.php';
?>
<!--Main Slider Start-->

<!-- ********** POP-UP MODAL ************* -->

<div id="myModaloff" class="modal fade" role="dialog" style="padding-top:50px!important;">
    <div class="modal-dialog" style="max-width: 850px;">
        <!-- Modal content-->
        <div class="modal-content" >

            <div class="row">
                <div class="col-md-6">
                    <?php if (!empty($this->data['callback']['image1'])) { ?>
                        <img src="<?php echo base_url('uploads/pg/'.$this->data['callback']['image1'])?>" alt="eduact" style="width: 100%; height: 450px">
                    <?php } ?>
                </div>
                <div class="col-md-6">
                    <div class="modal-header">        
                        <h4 class="modal-title">
                            <?php if (!empty($this->data['callback']['title1'])) { echo $this->data['callback']['title1']; } ?>
                        </h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <form method="post" onsubmit="callback_form()" action="<?php echo base_url('request_callback_submit'); ?>">
                        <div class="modal-body">                            
                            <p><?php if (!empty($this->data['callback']['content1'])) { echo $this->data['callback']['content1']; } ?></p>
                            <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />

                            <?php 
                            if(!empty($this->session->flashdata('msg'))) :
                            $text =  $this->session->flashdata('msg');
                            ?>
                            <div class="alert alert-<?php echo $text['t']?> alert-dismissable">
                                <?php echo $text['mess']?>
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true" style="float: right;" >&times;</button>
                            </div>            
                            <?php endif; ?> 

                            <div class="row">
                                <div class="col-md-12">
                                    <input type="text" placeholder="Name" name="name" required="" class="form-control" required="">
                                </div>
                                <div class="col-md-12">
                                    <br>
                                    <input type="email" placeholder="Email Address" name="email" class="form-control">
                                </div>
                                <div class="col-md-12">
                                    <br>
                                    <input type="text" placeholder="Mobile Number" name="mobile" required="" pattern="[6-9]{1}[0-9]{9}" class="form-control" required="">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="submit" id="submit" class="btn btn-primary" value="Submit">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>    
        </div>
    </div>
</div>

<?php
include 'include/floating.php';
?>

<!-- ************ END OF POP-UP ********** -->

<section class="main-slider" title="wbjrs academic foundation">
    <div class="main-slider>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="2000">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                                <?php $c=0;  foreach ($this->data['slider'] as $key => $value) { $c++; ?>
                                    <div class="carousel-item <?php if ($c==1) { echo 'active'; } ?>" style='transition-duration:0.50s'>
                                        <img class="d-block w-100" src="<?php echo base_url('uploads/slider/'.$value['image']); ?>" alt="First slide" style="height: 526px !important;" >
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5> <?php if (!empty($value['title'])) { echo $value['title']; } ?> </h5>
                                            <p></p>
                                        </div>
                                    </div>
                            <?php } ?>                            
                        </div>
                    </div>
                    <a name="WBJRS Academic Foundation" class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span><span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div><br><br>
        <div align=center> 
            <!-- <button class="cta-button" onclick="location.href='https://wbjrsfoundation.org/pop_up_form'">Join Our Program</button> -->
        </div>       
    </div>
</section>
<!--Main Slider End-->

<!-- About Start -->
<section class="about-one">
    <div class="container">
        <div class="row">
            <div class="col-xl-6">
                <div class="about-one__thumb wow fadeInLeft" data-wow-delay="100ms"><!-- about thumb start -->
                    <div class="about-one__thumb__one eduact-tilt" data-tilt-options='{ "glare": false, "maxGlare": 0, "maxTilt": 2, "speed": 700, "scale": 1 }'>
                        <div height=500 width=350>
                            <?php if (!empty($this->data['section1']['image1'])) { ?>
                                <img src="<?php echo base_url('uploads/pg/'.$this->data['section1']['image1'])?>" alt="eduact">
                                <!-- style="width: 661px; height: 662px;" -->
                            <?php } ?>
                            <!-- <img src="<?php echo base_url()?>assets/front/images/resources/about-1-12.png" alt="eduact"> -->
                        </div>
                    </div>
                    <div class="about-one__thumb__shape1 wow zoomIn" data-wow-delay="300ms">
                        <img src="<?php echo base_url()?>assets/front/images/shapes/about-shape-1-1.png" alt="eduact">
                    </div>
                    <div class="about-one__thumb__shape2 wow zoomIn" data-wow-delay="400ms">
                        <img src="<?php echo base_url()?>assets/front/images/shapes/about-shape-1-2.png" alt="eduact">
                    </div>
                   
                   <br><br><br><br><br><br><br><br><br><br>
                   
                    <div class="about-one__thumb__box wow fadeInLeft" data-wow-delay="600ms">
                        <div class="about-one__thumb__box__icon"><span class="icon-Headphone-Women"></span></div>
                        <h4 class="about-one__thumb__box__title">Need to Know More Details?</h4>
                        <p class="about-one__thumb__box__text"><a href="tel:6845550102">(033) 7960-9224</a></p>
                    </div>
                </div><!-- about thumb end -->
            </div>
            <div class="col-xl-6">
                <div class="about-one__content"><!-- about content start-->
                    <div class="section-title">
                        <h5 class="section-title__tagline">
                            
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 133 13" fill="none">
                                <path d="M9.76794 0.395L0.391789 9.72833C-0.130596 10.2483 -0.130596 11.095 0.391789 11.615C0.914174 12.135 1.76472 12.135 2.28711 11.615L11.6633 2.28167C12.1856 1.76167 12.1856 0.915 11.6633 0.395C11.1342 -0.131667 10.2903 -0.131667 9.76794 0.395Z" fill="#F1F2FD" />
                                <path d="M23.1625 0.395L13.7863 9.72833C13.2639 10.2483 13.2639 11.095 13.7863 11.615C14.3087 12.135 15.1593 12.135 15.6816 11.615L25.0578 2.28167C25.5802 1.76167 25.5802 0.915 25.0578 0.395C24.5287 -0.131667 23.6849 -0.131667 23.1625 0.395Z" fill="#F1F2FD" />
                                <path d="M36.5569 0.395L27.1807 9.72833C26.6583 10.2483 26.6583 11.095 27.1807 11.615C27.7031 12.135 28.5537 12.135 29.076 11.615L38.4522 2.28167C38.9746 1.76167 38.9746 0.915 38.4522 0.395C37.9231 -0.131667 37.0793 -0.131667 36.5569 0.395Z" fill="#F1F2FD" />
                                <path d="M49.9514 0.395L40.5753 9.72833C40.0529 10.2483 40.0529 11.095 40.5753 11.615C41.0976 12.135 41.9482 12.135 42.4706 11.615L51.8467 2.28167C52.3691 1.76167 52.3691 0.915 51.8467 0.395C51.3176 -0.131667 50.4738 -0.131667 49.9514 0.395Z" fill="#F1F2FD" />
                                <path d="M63.3459 0.395L53.9698 9.72833C53.4474 10.2483 53.4474 11.095 53.9698 11.615C54.4922 12.135 55.3427 12.135 55.8651 11.615L65.2413 2.28167C65.7636 1.76167 65.7636 0.915 65.2413 0.395C64.7122 -0.131667 63.8683 -0.131667 63.3459 0.395Z" fill="#F1F2FD" />
                                <path d="M76.7405 0.395L67.3643 9.72833C66.8419 10.2483 66.8419 11.095 67.3643 11.615C67.8867 12.135 68.7373 12.135 69.2596 11.615L78.6358 2.28167C79.1582 1.76167 79.1582 0.915 78.6358 0.395C78.1067 -0.131667 77.2629 -0.131667 76.7405 0.395Z" fill="#F1F2FD" />
                                <path d="M90.1349 0.395L80.7587 9.72833C80.2363 10.2483 80.2363 11.095 80.7587 11.615C81.2811 12.135 82.1317 12.135 82.6541 11.615L92.0302 2.28167C92.5526 1.76167 92.5526 0.915 92.0302 0.395C91.5011 -0.131667 90.6573 -0.131667 90.1349 0.395Z" fill="#F1F2FD" />
                                <path d="M103.529 0.395L94.1533 9.72833C93.6309 10.2483 93.6309 11.095 94.1533 11.615C94.6756 12.135 95.5262 12.135 96.0486 11.615L105.425 2.28167C105.947 1.76167 105.947 0.915 105.425 0.395C104.896 -0.131667 104.052 -0.131667 103.529 0.395Z" fill="#F1F2FD" />
                                <path d="M116.924 0.395L107.548 9.72833C107.025 10.2483 107.025 11.095 107.548 11.615C108.07 12.135 108.921 12.135 109.443 11.615L118.819 2.28167C119.342 1.76167 119.342 0.915 118.819 0.395C118.29 -0.131667 117.446 -0.131667 116.924 0.395Z" fill="#F1F2FD" />
                                <path d="M130.318 0.395L120.942 9.72833C120.42 10.2483 120.42 11.095 120.942 11.615C121.465 12.135 122.315 12.135 122.838 11.615L132.214 2.28167C132.736 1.76167 132.736 0.915 132.214 0.395C131.685 -0.131667 130.841 -0.131667 130.318 0.395Z" fill="#F1F2FD" />
                            </svg>
                        </h5>
                        <h2 class="section-title__title"> 
                            <?php if (!empty($this->data['section1']['title1'])) { echo $this->data['section1']['title1']; } ?> 
                        </h2>
                    </div><!-- section-title -->
                    <p class="about-one__content__text" >
                        <?php if (!empty($this->data['section1']['content1'])) { echo $this->data['section1']['content1']; } ?>  
                    </p><br>
                    <div class="about-one__box">
                        <div class="about-one__box__wrapper">
                            <div class="about-one__box__icon">
                                <?php if (!empty($this->data['section1']['image2'])) { ?>
                                    <img src="<?php echo base_url('uploads/pg/'.$this->data['section1']['image2'])?>" alt="eduact" style="width: 40px; height: 40px;">
                                <?php } ?>
                                <!-- <span class="icon-Presentation"></span> -->
                            </div>
                            <h4 class="about-one__box__title">
                                <?php if (!empty($this->data['section1']['title2'])) { echo $this->data['section1']['title2']; } ?>
                            </h4>
                            <p class="about-one__box__text">
                                <?php if (!empty($this->data['section1']['content2'])) { echo $this->data['section1']['content2']; } ?>
                            </p>
                        </div>
                    </div><!-- /.icon-box -->
                    <div class="about-one__box">
                        <div class="about-one__box__wrapper">
                            <div class="about-one__box__icon">
                                <?php if (!empty($this->data['section1']['image3'])) { ?>
                                    <img src="<?php echo base_url('uploads/pg/'.$this->data['section1']['image3'])?>" alt="eduact" style="width: 40px; height: 40px;">
                                <?php } ?>
                                <!-- <span class="icon-Online-learning"></span> -->
                            </div>
                            <h4 class="about-one__box__title"> 
                                <?php if (!empty($this->data['section1']['title3'])) { echo $this->data['section1']['title3']; } ?>
                            </h4>
                            <p class="about-one__box__text">
                                <?php if (!empty($this->data['section1']['content3'])) { echo $this->data['section1']['content3']; } ?>
                            </p>
                        </div>
                    </div><!-- /.icon-box -->
                    <a name="Wbjrs academic foundation"></a><a href="<?php echo base_url('about')?>" class="eduact-btn"><span class="eduact-btn__curve"></span>Explore Our Courses<i class="icon-arrow"></i></a><!-- /.btn -->
                </div><!-- about content end-->
            </div>
        </div>
    </div>
</section>
<!-- About End -->

<section class="category-two" style="background-image: url(assets/images/shapes/category-bg-2.png);">
    <div class="container wow fadeInUp" data-wow-delay="200ms">
        <div class="section-title text-center">
            <!-- <h2 class="section-title__title">Our Gallery</h2> -->
            <h2 class="section-title__tagline" >   
                <b class="section-title__title">Our Gallery</b>             
                <svg class="arrow-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 55 13">
                    <g clip-path="url(#clip0_324_36194)">
                        <path d="M10.5406 6.49995L0.700562 12.1799V8.56995L4.29056 6.49995L0.700562 4.42995V0.819946L10.5406 6.49995Z" />
                        <path d="M25.1706 6.49995L15.3306 12.1799V8.56995L18.9206 6.49995L15.3306 4.42995V0.819946L25.1706 6.49995Z" />
                        <path d="M39.7906 6.49995L29.9506 12.1799V8.56995L33.5406 6.49995L29.9506 4.42995V0.819946L39.7906 6.49995Z" />
                        <path d="M54.4206 6.49995L44.5806 12.1799V8.56995L48.1706 6.49995L44.5806 4.42995V0.819946L54.4206 6.49995Z" />
                    </g>
                </svg>
            </h2>
            
        </div><!-- section-title -->
        <div class="category-two__slider eduact-owl__carousel owl-theme owl-carousel" data-owl-options='{
            "items": 4,
            "margin": 1,
            "smartSpeed": 700,
            "loop":true,
            "autoplay": true,
            "nav":false,
            "dots":false,
            "navText": ["<span class=\"icon-arrow-left\"></span>","<span class=\"icon-arrow\"></span>"],
            "responsive":{
                "0":{
                    "items":1
                },
                "670":{
                    "items": 2
                },
                "992":{
                    "items": 3
                },
                "1200":{
                    "items": 4
                }
            }
            }'>

            <?php foreach ($this->data['gallery'] as $key => $value) { ?>
                <div class="item">
                    <div class="category-two__item">
                        <div class="category-two__icon">
                            <img src="<?php echo base_url('uploads/gallery/'.$value['image']); ?>" alt="eduact" style="height: 315px;">
                        </div><!-- /.category-icon -->
                      
                    </div><!-- /.category-card-one -->
                </div>
            <?php  } ?>  
        </div>
    </div>
</section>

 
 <!-- Category Start -->
<!-- <section class="category-two" style="background-image: url(assets/images/shapes/category-bg-2.png);">
           <div class="container wow fadeInUp" data-wow-delay="200ms">
                <div class="section-title text-center">
                    <h5 class="section-title__tagline">
                        Our Categories
                        <svg class="arrow-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 55 13">
                            <g clip-path="url(#clip0_324_36194)">
                                <path d="M10.5406 6.49995L0.700562 12.1799V8.56995L4.29056 6.49995L0.700562 4.42995V0.819946L10.5406 6.49995Z" />
                                <path d="M25.1706 6.49995L15.3306 12.1799V8.56995L18.9206 6.49995L15.3306 4.42995V0.819946L25.1706 6.49995Z" />
                                <path d="M39.7906 6.49995L29.9506 12.1799V8.56995L33.5406 6.49995L29.9506 4.42995V0.819946L39.7906 6.49995Z" />
                                <path d="M54.4206 6.49995L44.5806 12.1799V8.56995L48.1706 6.49995L44.5806 4.42995V0.819946L54.4206 6.49995Z" />
                            </g>
                        </svg>
                    </h5>
                    <h2 class="section-title__title">Favourite Topics To Learn</h2>
                </div><!-- section-title ->
                <marquee  scrollamount=30> <div class="category-two__slider eduact-owl__carousel owl-theme owl-carousel" data-owl-options='{
                    "items": 4,
                    "margin": 1,
                    "smartSpeed": 700,
                    "loop":true,
                    "autoplay": true,
                    "nav":false,
                    "dots":false,
                    "navText": ["<span class=\"icon-arrow-left\"></span>","<span class=\"icon-arrow\"></span>"],
                    "responsive":{
                        "0":{
                            "items":1
                        },
                        "670":{
                            "items": 2
                        },
                        "992":{
                            "items": 3
                        },
                        "1200":{
                            "items": 4
                        }
                    }
                    }'>
                    <?php foreach ($this->data['cat_list'] as $key => $value) { ?>
                        <div class="item">
                            <div class="category-two__item">
                                <div class="category-two__icon">
                                    <?php if (!empty($value['icon'])) { 
                                        echo '<i class="'.$value['icon'].'"></i>';
                                    } else { ?>
                                        <i class="fas fa-laptop-code"></i>
                                    <?php } ?>
                                </div><!-- /.category-icon ->
                              <h3 class="category-two__title"><a href="<?php echo base_url('course/'.$value['search_name']);?>"><?php echo $value['cat_name']; ?></a></h3><!-- /.category-title ->
                            </div><!-- /.category-card-one ->
                        </div>
                    <?php  } ?>                    
                    <div class="item">
                        <div class="category-two__item">
                            <div class="category-two__icon">
                            <i class="fas fa-utensils"></i>
                            </div><!-- /.category-icon ->
                            <h3 class="category-two__title"><a href="<?php echo base_url('hotel_management')?>">Hotel Management</a></h3><!-- /.category-title ->
                        </div> <!-- /.category-card-one ->
                    </div>
                </div>
            </div></marquee> 
</section> -->
<!-- Category End -->


 <!-- Course Start -->
 <section class="course-three" style="background-image: url(assets/images/shapes/course-bg-3.png);">
    <div class="container">
        <div class="section-title wow fadeInUp text-center" data-wow-delay="100ms">
            <h5 class="section-title__tagline">
                
                <svg class="arrow-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 55 13">
                    <g clip-path="url(#clip0_324_36194)">
                        <path d="M10.5406 6.49995L0.700562 12.1799V8.56995L4.29056 6.49995L0.700562 4.42995V0.819946L10.5406 6.49995Z" />
                        <path d="M25.1706 6.49995L15.3306 12.1799V8.56995L18.9206 6.49995L15.3306 4.42995V0.819946L25.1706 6.49995Z" />
                        <path d="M39.7906 6.49995L29.9506 12.1799V8.56995L33.5406 6.49995L29.9506 4.42995V0.819946L39.7906 6.49995Z" />
                        <path d="M54.4206 6.49995L44.5806 12.1799V8.56995L48.1706 6.49995L44.5806 4.42995V0.819946L54.4206 6.49995Z" />
                    </g>
                </svg>
            </h5>
            <h2 class="section-title__title">Popular Picks for Learners</h2>
        </div><!-- section-title -->
        <div class="row">
            <?php foreach ($this->data['course'] as $key => $value) { ?>
                <div class="col-xl-6 wow fadeInUp" data-wow-delay="200ms"> 
                    <div class="course-three__item">
                        <div class="course-three__thumb">
                            <?php if (!empty($value['image'])) { ?>
                                <img src="<?php echo base_url('uploads/course/'.$value['image']);?>" alt="<?php echo $value['course_name'];?>" />
                            <?php } else { ?>
                                <img src="<?php echo base_url('assets/front/images/course/course-3-11.png')?>" alt="<?php echo $value['course_name'];?>" />
                            <?php } ?>                                    
                        </div><!-- /.course-thumb -->
                        <div class="course-three__content">
                            <div class="course-three__time"><?php echo $value['duration']; ?></div>
                            <div class="course-three__ratings">
                                <span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span>
                                <div class="course-three__ratings__reviews">(30 Reviews)</div>
                            </div>
                            <h3 class="course-three__title">
                                <a href="<?php echo base_url('course_details/'.$value['search_name']);?>"><?php echo $value['course_name'];?></a>
                            </h3>
                            <div class="course-three__bottom">
                                
                                <!-- <div class="course-three__meta"> -->
                                   <!--  <h4 class="course-three__meta__price">
                                        <?php if (!empty($value['fees'])) {
                                            echo '<i class="fa fa-rupee"></i>INR '.number_format($value['fees']);
                                        } ?>
                                    </h4> -->
                                    <h4>
                                     <a href="" class="eduact-btn eduact-btn-second" data-toggle="modal" data-target="#myModal-enquire" ><span class="eduact-btn__curve"></span>Book Free Demo Class<i class="icon-arrow"></i></a>
                                 </h4>
                                    <p class="course-three__meta__class"></p>
                                <!-- </div> -->
                            </div>
                        </div><!-- /.course-content -->
                    </div><!-- /.course-card-two -->
                </div>
            <?php } ?>                    
        </div>
    </div>
</section>
<!-- Course End -->



<!-- Facilities Start -->
<section class="service-three" style="background-image: url(<?php echo base_url()?>assets/front/images/shapes/service-bg-3.png);">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title wow fadeInLeft" data-wow-delay="100ms">
                    <h5 class="section-title__tagline">
                 
                        <svg class="arrow-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 55 13">
                            <g clip-path="url(#clip0_324_36194)">
                                <path d="M10.5406 6.49995L0.700562 12.1799V8.56995L4.29056 6.49995L0.700562 4.42995V0.819946L10.5406 6.49995Z" />
                                <path d="M25.1706 6.49995L15.3306 12.1799V8.56995L18.9206 6.49995L15.3306 4.42995V0.819946L25.1706 6.49995Z" />
                                <path d="M39.7906 6.49995L29.9506 12.1799V8.56995L33.5406 6.49995L29.9506 4.42995V0.819946L39.7906 6.49995Z" />
                                <path d="M54.4206 6.49995L44.5806 12.1799V8.56995L48.1706 6.49995L44.5806 4.42995V0.819946L54.4206 6.49995Z" />
                            </g>
                        </svg>
                    </h5>
                    <h2 class="section-title__title">Our Key Facilities</h2>
                </div><!-- section-title -->
            </div>
        </div>
        <div class="row">
            <?php foreach ($this->data['key_facilities'] as $key => $value) { ?>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="200ms">
                    <div class="service-three__item text-center">
                        <div class="service-three__wrapper">
                            <div class="service-three__hover" style="background-image: url(<?php echo base_url()?>assets/front/images/service/1.jpg);"></div><!-- /.service-icon -->
                            <div class="service-three__icon">
                                <?php if (!empty($value['image'])) { ?>
                                    <img src="<?php echo base_url('uploads/pg/'.$value['image'])?>" alt="eduact" style="width: 50px; height: 50px;">
                                <?php } ?>
                                <!-- <i class="fas fa-user-graduate"></i> -->
                            </div><!-- /.service-icon -->
                            <h3 class="service-three__title">
                                <?php if (!empty($value['title'])) { echo $value['title']; } ?>
                            </h3><!-- /.service-title -->
                        </div>
                    </div><!-- /.service-card-three -->
                </div>
            <?php } ?>
            <!-- 
            <span>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="200ms">
                    <div class="service-three__item text-center">
                        <div class="service-three__wrapper">
                            <div class="service-three__hover" style="background-image: url(<?php echo base_url()?>assets/front/images/service/1.jpg);"></div>
                            <div class="service-three__icon">
                                <i class="fas fa-user-graduate"></i>
                            </div>
                            <h3 class="service-three__title">
                                Scholarship Available
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="300ms">
                    <div class="service-three__item text-center">
                        <div class="service-three__wrapper">
                            <div class="service-three__hover" style="background-image: url(<?php echo base_url()?>assets/front/images/service/2.jpg);"></div>
                            <div class="service-three__icon">
                            <i class="far fa-sun"></i> 
                            </div>
                            <h3 class="service-three__title">
                                Expert Faculty
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <div class="service-three__item text-center">
                        <div class="service-three__wrapper">
                            <div class="service-three__hover" style="background-image: url(<?php echo base_url()?>assets/front/images/service/3.jpg);"></div>
                            <div class="service-three__icon">
                            <i class="fas fa-chalkboard-teacher"></i>
                            </div>
                            <h3 class="service-three__title">
                                Cutting-Edge Curriculum
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <div class="service-three__item text-center">
                        <div class="service-three__wrapper">
                            <div class="service-three__hover" style="background-image: url(<?php echo base_url()?>assets/front/images/service/4.jpg);"></div>
                            <div class="service-three__icon">
                            <i class="fas fa-book-reader"></i>
                            </div>
                            <h3 class="service-three__title">
                                State of the Art Facilities
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <div class="service-three__item text-center">
                        <div class="service-three__wrapper">
                            <div class="service-three__hover" style="background-image: url(<?php echo base_url()?>assets/front/images/service/4.jpg);"></div>
                            <div class="service-three__icon">
                            <i class="fas fa-atom"></i>
                            </div>
                            <h3 class="service-three__title">
                                Holistic Learning Environment
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <div class="service-three__item text-center">
                        <div class="service-three__wrapper">
                            <div class="service-three__hover" style="background-image: url(<?php echo base_url()?>assets/front/images/service/4.jpg);"></div>
                            <div class="service-three__icon">
                            <i class='fas fa-school'></i>
                            </div>
                            <h3 class="service-three__title">
                                Smart Class Room
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <div class="service-three__item text-center">
                        <div class="service-three__wrapper">
                            <div class="service-three__hover" style="background-image: url(<?php echo base_url()?>assets/front/images/service/4.jpg);"></div>
                            <div class="service-three__icon">
                            <i class="fas fa-wifi"></i>
                            </div>
                            <h3 class="service-three__title">
                                HighSpeed Wifi Internet
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <div class="service-three__item text-center">
                        <div class="service-three__wrapper">
                            <div class="service-three__hover" style="background-image: url(<?php echo base_url()?>assets/front/images/service/4.jpg);"></div>
                            <div class="service-three__icon">
                            <i class="fas fa-video"></i>
                                                </div>
                            <h3 class="service-three__title">
                                CCTV Enabled
                            </h3>
                        </div>
                    </div>
                </div>
            </span>
             -->
        </div>
    </div>
</section>
<!-- Facilities End -->

<!-- Why Us Start -->
<section class="service-two">
    <div class="container">
        <div class="section-title text-center wow fadeInUp" data-wow-delay="100ms">
            <h5 class="section-title__tagline">
               <!---- Why Us?----->
                <svg class="arrow-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 55 13">
                    <g clip-path="url(#clip0_324_36194)">
                        <path d="M10.5406 6.49995L0.700562 12.1799V8.56995L4.29056 6.49995L0.700562 4.42995V0.819946L10.5406 6.49995Z" />
                        <path d="M25.1706 6.49995L15.3306 12.1799V8.56995L18.9206 6.49995L15.3306 4.42995V0.819946L25.1706 6.49995Z" />
                        <path d="M39.7906 6.49995L29.9506 12.1799V8.56995L33.5406 6.49995L29.9506 4.42995V0.819946L39.7906 6.49995Z" />
                        <path d="M54.4206 6.49995L44.5806 12.1799V8.56995L48.1706 6.49995L44.5806 4.42995V0.819946L54.4206 6.49995Z" />
                    </g>
                </svg>
            </h5>
            <h2 class="section-title__title">Why Choose <?php echo $comp_name;?></h2>
        </div><!-- section-title -->
        <div class="row">
            <?php foreach ($this->data['why_choose'] as $key => $value) { ?>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="200ms">
                    <div class="service-two__item text-center">
                        <div class="service-two__wrapper">
                           <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                              <circle cx="151" cy="-129" r="246" />
                            </svg>
                            <div class="service-two__icon">
                                <?php if (!empty($value['image'])) { ?>
                                    <img src="<?php echo base_url('uploads/pg/'.$value['image'])?>" alt="eduact" >
                                <?php } ?>
                                <!-- <img src="<?php echo base_url()?>assets/icons/icon1.png" alt="eduact">  -->   
                            </div>
                            <h3 class="service-two__title">
                                <?php if (!empty($value['title'])) { echo $value['title']; } ?>
                            </h3>
                            <p class="service-two__text" style="text-align: left !important;">
                                <?php if (!empty($value['content'])) { echo $value['content']; } ?>
                            </p>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <style>
                .service-two__wrapper p {
                    text-align: left !important;
                    padding-left: 10%;
                }
            </style>
            <!-- <span>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="200ms">
                    <div class="service-two__item text-center">
                        <div class="service-two__wrapper">
                           <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                              <circle cx="151" cy="-129" r="246" />
                            </svg>
                            <div class="service-two__icon">
                            <img src="<?php echo base_url()?>assets/icons/icon1.png" alt="eduact">    
                            </div>
                            <h3 class="service-two__title">
                                Experienced Instructors
                            </h3>
                            <p class="service-two__text">Learn from industry experts and experienced professionals who bring real-world insights to the classroom.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="300ms">
                    <div class="service-two__item text-center">
                        <div class="service-two__wrapper">
                            <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                                <circle cx="151" cy="-129" r="246" />
                            </svg>
                            <div class="service-two__icon">
                            <img src="<?php echo base_url()?>assets/icons/sotaf.png" alt="eduact">   
                            </div>
                            <h3 class="service-two__title">
                                State-of-the-Art Facilities
                            </h3>
                            <p class="service-two__text">Our institute is equipped with modern facilities, providing an optimal environment for learning and collaboration.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <div class="service-two__item text-center">
                        <div class="service-two__wrapper">
                            <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                                <circle cx="151" cy="-129" r="246" />
                            </svg>
                            <div class="service-two__icon">
                            <img src="<?php echo base_url()?>assets/icons/cs4.png" alt="eduact">  
                            </div>
                            <h3 class="service-two__title">
                                Career Support
                            </h3>
                            <p class="service-two__text">Benefit from our career services, including resume building, interview preparation, and job placement assistance for 01 year.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <div class="service-two__item tex2-center">
                        <div class="service-two__wrapper">
                            <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                                <circle cx="151" cy="-129" r="246" />
                            </svg>
                            <div class="service-two__icon">
                            <img src="<?php echo base_url()?>assets/icons/DC2.png" alt="eduact">                                     
                            </div>
                            <h3 class="service-two__title">
                                Free Digital Classes and Wi-Fi Enabled Classes
                            </h3>
                            <p class="service-two__text">Access cutting-edge education technology with our free digital classes and Wi-Fi-enabled classrooms.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <div class="service-two__item text-center">
                        <div class="service-two__wrapper">
                            <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                                <circle cx="151" cy="-129" r="246" />
                            </svg>
                            <div class="service-two__icon">
                            <IMG SRC="<?php echo base_url()?>assets/icons/OTO2.png" alt="wbjrs">    
                            </div>
                            <h3 class="service-two__title">
                                One-to-One Training Sessions and Extra Classes
                            </h3>
                            <p class="service-two__text">Tailored support for individual needs, including extra classes for students seeking additional assistance.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <div class="service-two__item text-center">
                        <div class="service-two__wrapper">
                            <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                                <circle cx="151" cy="-129" r="246" />
                            </svg>
                            <div class="service-two__icon">
                           <IMG SRC="<?php echo base_url()?>assets/icons/GC.png" alt="wbjrs">   
                            </div>
                            <h3 class="service-two__title">
                                Worldwide Certification
                            </h3>
                            <p class="service-two__text">Receive a globally recognized certificate upon successful completion of your chosen course.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <div class="service-two__item text-center">
                        <div class="service-two__wrapper">
                            <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                                <circle cx="151" cy="-129" r="246" />
                            </svg>
                            <div class="service-two__icon">
                             <IMG SRC="<?php echo base_url()?>assets/icons/CFA3.png" alt="wbjrs">
                            </div>
                            <h3 class="service-two__title">
                                Freelance Campus for All Students and Others
                            </h3>
                            <p class="service-two__text">Explore freelance opportunities through our dedicated campus initiatives.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <div class="service-two__item text-center">
                        <div class="service-two__wrapper">
                            <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                                <circle cx="151" cy="-129" r="246" />
                            </svg>
                            <div class="service-two__icon">
                            <IMG SRC="<?php echo base_url()?>assets/icons/SC.png" alt="wbjrs">    
                            </div>
                            <h3 class="service-two__title">
                                Smart Classes by Retired and Regular Employees
                            </h3>
                            <p class="service-two__text">Learn from experienced professionals in interactive and engaging smart classes.</p>
                        </div>
                    </div>
                </div>
            </span>       -->                  
        </div>
    </div>
</section>

<!-- Why Us End -->
 
<!-- Testimonial Start -->
<section class="testimonial-one">
    <div class="container">
        <div class="section-title text-center">
            <h5 class="section-title__tagline">
                
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 133 13" fill="none">
                    <path d="M9.76794 0.395L0.391789 9.72833C-0.130596 10.2483 -0.130596 11.095 0.391789 11.615C0.914174 12.135 1.76472 12.135 2.28711 11.615L11.6633 2.28167C12.1856 1.76167 12.1856 0.915 11.6633 0.395C11.1342 -0.131667 10.2903 -0.131667 9.76794 0.395Z" fill="#F1F2FD" />
                    <path d="M23.1625 0.395L13.7863 9.72833C13.2639 10.2483 13.2639 11.095 13.7863 11.615C14.3087 12.135 15.1593 12.135 15.6816 11.615L25.0578 2.28167C25.5802 1.76167 25.5802 0.915 25.0578 0.395C24.5287 -0.131667 23.6849 -0.131667 23.1625 0.395Z" fill="#F1F2FD" />
                    <path d="M36.5569 0.395L27.1807 9.72833C26.6583 10.2483 26.6583 11.095 27.1807 11.615C27.7031 12.135 28.5537 12.135 29.076 11.615L38.4522 2.28167C38.9746 1.76167 38.9746 0.915 38.4522 0.395C37.9231 -0.131667 37.0793 -0.131667 36.5569 0.395Z" fill="#F1F2FD" />
                    <path d="M49.9514 0.395L40.5753 9.72833C40.0529 10.2483 40.0529 11.095 40.5753 11.615C41.0976 12.135 41.9482 12.135 42.4706 11.615L51.8467 2.28167C52.3691 1.76167 52.3691 0.915 51.8467 0.395C51.3176 -0.131667 50.4738 -0.131667 49.9514 0.395Z" fill="#F1F2FD" />
                    <path d="M63.3459 0.395L53.9698 9.72833C53.4474 10.2483 53.4474 11.095 53.9698 11.615C54.4922 12.135 55.3427 12.135 55.8651 11.615L65.2413 2.28167C65.7636 1.76167 65.7636 0.915 65.2413 0.395C64.7122 -0.131667 63.8683 -0.131667 63.3459 0.395Z" fill="#F1F2FD" />
                    <path d="M76.7405 0.395L67.3643 9.72833C66.8419 10.2483 66.8419 11.095 67.3643 11.615C67.8867 12.135 68.7373 12.135 69.2596 11.615L78.6358 2.28167C79.1582 1.76167 79.1582 0.915 78.6358 0.395C78.1067 -0.131667 77.2629 -0.131667 76.7405 0.395Z" fill="#F1F2FD" />
                    <path d="M90.1349 0.395L80.7587 9.72833C80.2363 10.2483 80.2363 11.095 80.7587 11.615C81.2811 12.135 82.1317 12.135 82.6541 11.615L92.0302 2.28167C92.5526 1.76167 92.5526 0.915 92.0302 0.395C91.5011 -0.131667 90.6573 -0.131667 90.1349 0.395Z" fill="#F1F2FD" />
                    <path d="M103.529 0.395L94.1533 9.72833C93.6309 10.2483 93.6309 11.095 94.1533 11.615C94.6756 12.135 95.5262 12.135 96.0486 11.615L105.425 2.28167C105.947 1.76167 105.947 0.915 105.425 0.395C104.896 -0.131667 104.052 -0.131667 103.529 0.395Z" fill="#F1F2FD" />
                    <path d="M116.924 0.395L107.548 9.72833C107.025 10.2483 107.025 11.095 107.548 11.615C108.07 12.135 108.921 12.135 109.443 11.615L118.819 2.28167C119.342 1.76167 119.342 0.915 118.819 0.395C118.29 -0.131667 117.446 -0.131667 116.924 0.395Z" fill="#F1F2FD" />
                    <path d="M130.318 0.395L120.942 9.72833C120.42 10.2483 120.42 11.095 120.942 11.615C121.465 12.135 122.315 12.135 122.838 11.615L132.214 2.28167C132.736 1.76167 132.736 0.915 132.214 0.395C131.685 -0.131667 130.841 -0.131667 130.318 0.395Z" fill="#F1F2FD" />
                </svg>
            </h5>
            <h2 class="section-title__title">What Our Student Says</h2>
        </div><!-- section-title -->
        
        <div class="testimonial-one__area">
            
            <div class="testimonial-one__carousel eduact-owl__carousel owl-with-shadow owl-theme owl-carousel" data-owl-options='{
        "items": 1,
        "margin-top": 10,
        "smartSpeed": 700,
        "loop":true,
        "autoplay": true,
        "nav":true,
        "dots":false,
        "navText": ["<span class=\"icon-arrow-left\"></span>","<span class=\"icon-arrow\"></span>"]
        }'>
                <!-- Testimonial Item -->
                <?php foreach ($this->data['review'] as $key => $value) { ?>
                    <div class="item">
                        <div class="testimonial-one__item">
                            <div class="testimonial-one__author">
                                <?php if (!empty($value['image'])) { ?>
                                <img src="<?php echo base_url('uploads/review/'.$value['image']); ?>" alt="" width="90">
                                <?php } else { ?>
                                    <img src="<?php echo base_url('assets/all/blankmen.jpg'); ?>" alt="" width="90">
                                <?php } ?>
                            
                            </div><!-- testimonial-author -->
                            <div class="testimonial-one__content">
                                <div class="testimonial-one__quote">
                                    <?php echo $value['review']; ?>
                                </div><!-- testimonial-quote -->
                                <div class="testimonial-one__meta">
                                    <h5 class="testimonial-one__title"><?php echo $value['name']; ?></h5>
                                    <span class="testimonial-one__designation"><?php echo $value['designation']; ?></span>
                                </div><!-- testimonial-meta -->
                            </div>
                        </div>
                    </div>
                <?php } ?>                        
            </div>
           
           <div  class="testimonial-one__thumb wow fadeInUp" data-wow-delay="200ms">
                
                 
               <!-- <svg viewBox="0 0 612 563" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M595.211 330.916C584.04 315.536 581.185 295.533 588.393 277.948C591.708 269.857 593.359 260.893 592.899 251.505C591.377 220.18 566.027 194.704 534.708 192.994C534.495 192.982 534.283 192.971 534.071 192.959C520.328 192.346 507.517 185.776 499.106 174.89C498.458 174.053 497.809 173.215 497.148 172.39C485.069 157.234 481.695 137.196 487.463 118.703C489.268 112.9 490.07 106.661 489.634 100.174C487.923 74.7337 467.02 54.3769 441.54 53.2801C426.665 52.6432 413.147 58.4459 403.521 68.129C386.44 85.3367 363.449 95.4207 339.207 95.1495C338.429 95.1377 337.638 95.1377 336.86 95.1377C332.79 95.1377 328.803 95.2674 321.631 94.4418C300.244 91.9768 280.473 82.2348 264.76 67.5039C244.483 48.4916 216.997 37.063 186.846 37.7471C129.15 39.0563 80.9264 88.6391 79.2159 146.325C77.9301 189.774 109.827 226.101 118.757 239.239C145.441 278.431 123.193 329.536 93.867 364.199C75.677 385.7 64.8598 413.652 65.3434 444.14C66.3697 509.161 119.548 562.153 184.581 562.99C207.784 563.285 229.501 557.046 248.021 545.995C285.428 523.668 327.033 509.161 370.031 502.167C393.635 498.323 415.883 490.456 436.043 479.275C458.739 466.69 485.128 461.914 510.702 466.337C516.117 467.268 521.708 467.705 527.429 467.575C573.659 466.537 611.16 428.513 611.584 382.279C611.773 363.067 605.663 345.316 595.211 330.916Z" fill="#4F5DE4" />
                    <path d="M103.524 314.265C122.402 295.39 122.402 264.788 103.524 245.913C84.6458 227.038 54.038 227.038 35.1597 245.913C16.2814 264.788 16.2814 295.39 35.1597 314.265C54.038 333.14 84.6458 333.14 103.524 314.265Z" fill="#4F5DE4" />
                    <path d="M519.408 173.899C529.715 173.899 538.07 165.546 538.07 155.241C538.07 144.936 529.715 136.582 519.408 136.582C509.101 136.582 500.746 144.936 500.746 155.241C500.746 165.546 509.101 173.899 519.408 173.899Z" fill="#4F5DE4" />
                    <path d="M404.941 42.6715C408.221 39.3921 408.221 34.0752 404.941 30.7958C401.661 27.5164 396.343 27.5164 393.063 30.7958C389.783 34.0752 389.783 39.3921 393.063 42.6715C396.343 45.9509 401.661 45.9509 404.941 42.6715Z" fill="#4F5DE4" />
                    <path d="M450.459 39.6567C457.747 32.3702 457.747 20.5565 450.459 13.27C443.171 5.98349 431.355 5.9835 424.067 13.27C416.78 20.5565 416.78 32.3703 424.067 39.6568C431.355 46.9433 443.171 46.9432 450.459 39.6567Z" fill="#4F5DE4" />
                    <path d="M469.475 508.914C476.947 508.914 483.005 502.857 483.005 495.386C483.005 487.914 476.947 481.858 469.475 481.858C462.002 481.858 455.944 487.914 455.944 495.386C455.944 502.857 462.002 508.914 469.475 508.914Z" fill="#4F5DE4" />
                    <path d="M341.696 525.638C343.481 525.638 344.929 524.191 344.929 522.406C344.929 520.621 343.481 519.175 341.696 519.175C339.911 519.175 338.464 520.621 338.464 522.406C338.464 524.191 339.911 525.638 341.696 525.638Z" fill="url(#paint0_linear_187_13357)" />
                </svg>  -->
              
                <div class="testimonial-one__thumb-pen wow fadeInUp" data-wow-delay="400ms">  
                    
                 
                </div>
                   
            </div>
        </div>
    </div>
</section> 
   
<style>
    .cta-button {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        padding: 10px 20px;
        font-size: 16px;
        color: #fff;
        background-color: #007BFF;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .cta-button:hover {
        background-color: #0056b3;
    }
</style>
<!-- Testimonial End -->
        
<!---- <script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=7a31a06e-c013-45e9-9180-9e76e362c354"> </script>---->
        
  
<style>  
.chatbot {
    position: fixed;
    left: 0;
    top: 50%;
    transform: translateY(-50%);
    width: 300px; /* Adjust width as needed */
    height: 500px; /* Adjust height as needed */
    border: 1px solid #ccc;
    background-color: #f9f9f9;
    box-shadow: 2px 2px 5px rgba(0,0,0,0.2);
}
</style>
 
<?php
include 'include/footer.php';
?>

<!--Start of Tawk.to Script-->

<!-- <script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/674856094304e3196ae9d507/1idp905uh';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script> -->

<!--End of Tawk.to Script-->