<?php
include 'include/header_other.php';
?>

<section class="page-header @@extraClassName" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">About</h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>About</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->
<!-- About Start -->
<section class="about-two about-two--about" >
    <div class="container">
        <div class="row">
            <div class="col-xl-6">
                <div class="about-two__thumb wow fadeInLeft" data-wow-delay="100ms"><!-- about thumb start -->
                    <div class="about-two__thumb__one eduact-tilt" data-tilt-options='{ "glare": false, "maxGlare": 0, "maxTilt": 2, "speed": 700, "scale": 1 }'>
                        <?php if (!empty($this->data['section1']['image1'])) { ?>
                            <img src="<?php echo base_url('uploads/pg/'.$this->data['section1']['image1'])?>" alt="eduact"style="width: 669px; height: 662px;">
                            <!-- style="width: 661px; height: 662px;" -->
                        <?php } ?>
                        <!-- <img src="<?php echo base_url()?>assets/front/images/resources/about21.jpg" alt="eduact"> -->
                    </div><!-- /.about-thumb-one -->
                    <div class="about-two__thumb__two">
                        <!---<img src="<?php echo base_url()?>assets/front/images/resources/about-2-1-about.jpg" alt="eduact">--->
                        <div class="about-two__thumb__two-icon"><span class="icon-business"></span></div>
                    </div><!-- /.about-thumb-two -->
                    <div class="about-two__fact">
                        <div class="about-two__fact__icon"><span class="icon-trophy"></span></div>
                        <div class="about-two__fact__content">
                            <div class="about-two__fact__count">
                                +<span class="count-box">
                                    <span class="count-text" data-stop="5" data-speed="1500"></span>
                                </span>
                            </div><!-- /.fact-one__count -->
                            <h3 class="about-two__fact__title">Awesome Awards</h3><!-- /.fact-one__title -->
                        </div>
                    </div><!-- /.fact-item -->
                    <div class="about-two__thumb__shape1 wow zoomIn" data-wow-delay="300ms">
                        <img src="<?php echo base_url()?>assets/front/images/shapes/about-2-shape-1.png" alt="eduact">
                    </div><!-- /.about-shape-one -->
                    <div class="about-two__thumb__shape2 wow zoomIn" data-wow-delay="400ms">
                        <img src="<?php echo base_url()?>assets/front/images/shapes/about-2-shape-2.png" alt="eduact">
                    </div><!-- /.about-shape-two -->
                    <div class="about-two__thumb__shape3 wow zoomIn" data-wow-delay="400ms">
                        <img src="<?php echo base_url()?>assets/front/images/shapes/about-2-shape-3.png" alt="eduact">
                    </div><!-- /.about-shape-two -->
                    <div class="about-two__thumb__shape4 wow zoomIn" data-wow-delay="400ms">
                        <img src="<?php echo base_url()?>assets/front/images/shapes/about-2-shape-4.png" alt="eduact">
                    </div><!-- /.about-shape-two -->
                </div><!-- about thumb end -->
            </div>
            <div class="col-xl-6 wow fadeInRight" data-wow-delay="100ms">
                <div class="about-two__content"><!-- about content start-->
                    <div class="section-title">
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
                        <h2 class="section-title__title">
                            <?php if (!empty($this->data['section1']['title1'])) { echo $this->data['section1']['title1']; } ?>         
                        </h2>
                    </div><!-- section-title -->
                    <p class="about-two__content__text">
                        <?php if (!empty($this->data['section1']['content1'])) { echo $this->data['section1']['content1']; } ?> 
                    </p>
                    <div class="about-two__about-box">
                        <div class="about-two__about-box__top">
                            <div class="about-two__about-box__icon">
                                <?php if (!empty($this->data['section1']['image2'])) { ?>
                                    <img src="<?php echo base_url('uploads/pg/'.$this->data['section1']['image2'])?>" alt="eduact" style="width: 40px; height: 40px;">
                                <?php } ?>
                                <!-- <span class="icon-logical-thinking"></span> -->
                            </div>
                            <h4 class="about-two__about-box__title">
                                <?php if (!empty($this->data['section1']['title2'])) { echo $this->data['section1']['title2']; } ?>
                            </h4>
                        </div>
                        <p class="about-two__about-box__text">
                            <?php if (!empty($this->data['section1']['content2'])) { echo $this->data['section1']['content2']; } ?>
                        </p>
                    </div><!-- /.icon-box -->
                    <div class="about-two__about-box">
                        <div class="about-two__about-box__top">
                            <div class="about-two__about-box__icon">
                                <?php if (!empty($this->data['section1']['image3'])) { ?>
                                    <img src="<?php echo base_url('uploads/pg/'.$this->data['section1']['image3'])?>" alt="eduact" style="width: 40px; height: 40px;">
                                <?php } ?>
                                <!-- <span class="icon-vision"></span> -->
                            </div>
                            <h4 class="about-two__about-box__title">
                                <?php if (!empty($this->data['section1']['title3'])) { echo $this->data['section1']['title3']; } ?>
                            </h4>
                        </div>
                        <p class="about-two__about-box__text">
                            <?php if (!empty($this->data['section1']['content3'])) { echo $this->data['section1']['content3']; } ?>
                        </p>
                    </div><!-- /.icon-box -->
                </div><!-- about content end -->
            </div>
        </div>
    </div>
</section>
<!-- About End -->
<!-- Counter Start -->
<section class="fact-one" style="background-image: url(assets/images/shapes/fact-bg-1.png); padding-top: 20px";>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="100ms">
                <div class="fact-one__item text-center">
                    <svg viewBox="0 0 303 181" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect x="1.5" y="2.00049" width="300" height="177" rx="7" stroke="#4F5DE4" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" stroke-dasharray="20 20" />
                    </svg>
                    <div class="fact-one__count">
                        <span class="count-box">
                            <span class="count-text" data-stop="1200" data-speed="1500">1200</span>
                        </span>
                    </div><!-- /.fact-one__count -->
                    <h3 class="fact-one__title">Student Enrolled</h3><!-- /.fact-one__title -->
                </div><!-- /.fact-item -->
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="200ms">
                <div class="fact-one__item text-center">
                    <svg viewBox="0 0 303 181" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect x="1.5" y="2.00049" width="300" height="177" rx="7" stroke="#4F5DE4" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" stroke-dasharray="20 20" />
                    </svg>
                    <div class="fact-one__count">
                        <span class="count-box">
                            <span class="count-text" data-stop="2000" data-speed="1500">2000</span>
                        </span>
                    </div><!-- /.fact-one__count -->
                    <h3 class="fact-one__title">Class Completed</h3><!-- /.fact-one__title -->
                </div><!-- /.fact-item -->
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="300ms">
                <div class="fact-one__item text-center">
                    <svg viewBox="0 0 303 181" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect x="1.5" y="2.00049" width="300" height="177" rx="7" stroke="#4F5DE4" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" stroke-dasharray="20 20" />
                    </svg>
                    <div class="fact-one__count">
                        <span class="count-box">
                            <span class="count-text" data-stop="95" data-speed="1500">95</span>
                        </span>%
                    </div><!-- /.fact-one__count -->
                    <h3 class="fact-one__title">Satisfaction Rate</h3><!-- /.fact-one__title -->
                </div><!-- /.fact-item -->
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                <div class="fact-one__item text-center">
                    <svg viewBox="0 0 303 181" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect x="1.5" y="2.00049" width="300" height="177" rx="7" stroke="#4F5DE4" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" stroke-dasharray="20 20" />
                    </svg>
                    <div class="fact-one__count">
                        <span class="count-box">
                            <span class="count-text" data-stop="25" data-speed="1500">25</span>
                        </span>+
                    </div><!-- /.fact-one__count -->
                    <h3 class="fact-one__title">Top Instructors</h3><!-- /.fact-one__title -->
                </div><!-- /.fact-item -->
            </div>
        </div>
    </div>
</section>
<!-- Counter End -->
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
                            <p class="service-two__text">
                                <?php if (!empty($value['content'])) { echo $value['content']; } ?>
                            </p>
                        </div>
                    </div>
                </div>
            <?php } ?>
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
            </span> -->                        
        </div>
    </div>
</section>
<!-- Why Us End -->
 <!-- Testimonial Start -->
<section class="testimonial-two" style="background-image: url(assets/images/shapes/testimonial-bg-2.png);">
    <div class="container">
        <div class="section-title text-center">
            <h5 class="section-title__tagline">
               <!--- Testimonial---->
                <svg class="arrow-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 55 13">
                    <g clip-path="url(#clip0_324_36194)">
                        <path d="M10.5406 6.49995L0.700562 12.1799V8.56995L4.29056 6.49995L0.700562 4.42995V0.819946L10.5406 6.49995Z" />
                        <path d="M25.1706 6.49995L15.3306 12.1799V8.56995L18.9206 6.49995L15.3306 4.42995V0.819946L25.1706 6.49995Z" />
                        <path d="M39.7906 6.49995L29.9506 12.1799V8.56995L33.5406 6.49995L29.9506 4.42995V0.819946L39.7906 6.49995Z" />
                        <path d="M54.4206 6.49995L44.5806 12.1799V8.56995L48.1706 6.49995L44.5806 4.42995V0.819946L54.4206 6.49995Z" />
                    </g>
                </svg>
            </h5>
            <h2 class="section-title__title">What Our Student Feedback</h2>
        </div><!-- section-title -->
        <div class="testimonial-two__carousel eduact-owl__carousel owl-with-shadow owl-theme owl-carousel" data-owl-options='{
            "items": 3,
            "margin": 30,
            "smartSpeed": 700,
            "loop":true,
            "autoplay": true,
            "center": true,
            "nav":true,
            "dots":false,
            "navText": ["<span class=\"icon-arrow-left\"></span>","<span class=\"icon-arrow\"></span>"],
            "responsive":{
                "0":{
                    "items":1,
                    "margin": 0
                },
                "700":{
                    "items": 1
                },
                "992":{
                    "items": 3
                },
                "1200":{
                    "margin": 36,
                    "items": 3
                }
            }
            }'>
            <?php foreach ($this->data['review'] as $key => $value) { ?>
            <!-- Testimonial Item -->
            <div class="item">
                <div class="testimonial-two__item">
                    <div class="testimonial-two__item-inner" style="background-image: url(<?php echo base_url()?>assets/front/images/shapes/testimonial-shape-2.png);">
                        <div class="testimonial-two__ratings">
                            <?php for ($i=0; $i<$value['rating']; $i++) { ?>
                                <span class="fa fa-star"></span>
                            <?php } ?>
                        </div>
                        <div class="testimonial-two__quote">
                            <?php echo $value['review']; ?>
                        </div><!-- testimonial-quote -->
                        <div class="testimonial-two__meta">
                            <?php if (!empty($value['image'])) { ?>
                                <img src="<?php echo base_url('uploads/review/'.$value['image']); ?>" alt="" width="50">
                            <?php } else { ?>
                                <img src="<?php echo base_url('assets/all/blankmen.jpg'); ?>" alt="" width="50">
                            <?php } ?>
                            <h5 class="testimonial-two__title"><?php echo $value['name']; ?></h5>
                            <span class="testimonial-two__designation"><?php echo $value['designation']; ?></span>
                        </div><!-- testimonial-meta -->
                        <svg viewBox="0 0 416 249" xmlns="http://www.w3.org/2000/svg">
                            <g filter="url(#filter0_d_324_36064)">
                                <path d="M296.443 526.351C291.626 517.219 286.22 508.4 280.351 499.907C274.064 490.803 267.257 482.07 260.072 473.662C252.166 464.412 243.802 455.551 235.132 447.015C225.525 437.563 215.537 428.493 205.305 419.728C193.907 409.977 182.21 400.591 170.293 391.477C157.025 381.325 143.506 371.508 129.809 361.934C114.574 351.278 99.1373 340.919 83.5681 330.773C66.2815 319.506 48.8344 308.493 31.2774 297.659C11.8453 285.67 -7.71089 273.899 -27.3627 262.269C-49.0253 249.452 -70.8004 236.801 -92.632 224.268C-112.751 212.719 -132.553 200.599 -151.773 187.605C-167.672 176.859 -183.186 165.529 -198.079 153.411C-210.223 143.528 -221.954 133.126 -233.015 122.043C-242.024 113.01 -250.588 103.518 -258.425 93.4561C-264.651 85.4701 -270.424 77.1028 -275.483 68.3262C-279.503 61.3457 -283.079 54.0865 -285.969 46.5676C-288.192 40.7857 -290.021 34.8356 -291.27 28.7606C-292.209 24.2029 -292.822 19.5763 -292.986 14.9289C-293.101 11.7908 -293.016 8.64358 -292.628 5.53246C-292.424 3.91736 -292.165 2.29171 -291.728 0.72597C-291.679 0.529505 -291.617 0.330416 -291.559 0.139576C-291.56 1.6512 -291.422 3.17245 -291.258 4.67452C-290.799 8.90587 -289.976 13.0825 -288.939 17.2111C-287.309 23.703 -285.103 30.0422 -282.479 36.194C-278.927 44.5375 -274.604 52.5471 -269.706 60.1738C-263.507 69.8349 -256.393 78.8972 -248.649 87.3719C-238.942 97.9926 -228.245 107.691 -216.918 116.571C-203.009 127.487 -188.159 137.18 -172.79 145.896C-153.752 156.686 -133.883 165.972 -113.594 174.141C-88.9088 184.08 -63.5671 192.361 -37.9282 199.441C-11.3405 206.779 15.589 212.887 42.7613 217.66C67.4471 221.999 92.326 225.272 117.29 227.514C141.053 229.653 164.9 230.869 188.764 231.226C211.313 231.559 233.873 231.113 256.392 229.925C277.174 228.838 297.929 227.116 318.614 224.801C337.536 222.679 356.4 220.056 375.184 216.945C391.68 214.211 408.11 211.094 424.452 207.59C438.374 204.605 452.242 201.341 466.025 197.777C476.913 194.966 487.745 191.97 498.512 188.749C506.072 186.491 513.591 184.133 521.068 181.624C524.972 180.313 528.87 178.974 532.737 177.541C533.207 177.365 533.677 177.189 534.148 177.014L296.443 526.351Z" />
                            </g>
                        </svg>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</section>
<!-- Testimonial End -->
<!-- <div class='sk-ww-youtube-channel-videos' data-embed-id='25417527'></div>
<script src='https://widgets.sociablekit.com/youtube-channel-videos/widget.js' async defer></script> -->        
<?php
include 'include/footer.php';
?>


<!----------

<!----- Deleted CCTV SEction------>
 <!---------<div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                <div class="service-two__item text-center">
                    <div class="service-two__wrapper">
                        <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="151" cy="-129" r="246" />
                        </svg>
                                                <div class="service-two__icon">
                            <span class="icon-neural"></span>
                        </div><!-- /.service-icon -->
                      <!----  <h3 class="service-two__title">
                            Safety Monitoring by CCTV Surveillance
                        </h3><!-- /.service-title -->
                       <!---- <p class="service-two__text">Ensuring a secure learning environment through constant CCTV surveillance.</p>
                    </div>
                </div><!-- /.service-card-one -->
           <!--- </div>--->
            


<!------
<!-------- Deleted Free Virtual Classes by Motivators...----->
 <!---------<div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                <div class="service-two__item text-center">
                    <div class="service-two__wrapper">
                        <svg viewBox="0 0 303 117" fill="#F6F6F6" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="151" cy="-129" r="246" />
                        </svg>
                        <div class="service-two__icon">
                            <span class="icon-neural"></span>
                        </div><!-- /.service-icon -->
                      <!-----  <h3 class="service-two__title">
                            Free Virtual Classes by Leading Motivators and Mentors
                        </h3><!-- /.service-title -->
                      <!---  <p class="service-two__text">Engage with industry leaders through exclusive virtual sessions.</p>
                    </div>
                </div><!-- /.service-card-one -->
            <!--</div>


------->







