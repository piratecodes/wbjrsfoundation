<?php
include 'include/header_other.php';
?>
<section class="page-header @@extraClassName" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">Banking Partner</h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Banking Partner</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->
 <!-- About Start -->
 <section class="about-three">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 wow fadeInLeft" data-wow-delay="100ms">
                        <div class="about-three__content"><!-- about content start-->
                            <div class="section-title">
                                <h5 class="section-title__tagline">
                                    <?php if (!empty($this->data['section1']['title1'])) { echo $this->data['section1']['title1']; } ?> 
                                    <svg class="arrow-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 55 13">
                                        <g clip-path="url(#clip0_324_36194)">
                                            <path d="M10.5406 6.49995L0.700562 12.1799V8.56995L4.29056 6.49995L0.700562 4.42995V0.819946L10.5406 6.49995Z" />
                                            <path d="M25.1706 6.49995L15.3306 12.1799V8.56995L18.9206 6.49995L15.3306 4.42995V0.819946L25.1706 6.49995Z" />
                                            <path d="M39.7906 6.49995L29.9506 12.1799V8.56995L33.5406 6.49995L29.9506 4.42995V0.819946L39.7906 6.49995Z" />
                                            <path d="M54.4206 6.49995L44.5806 12.1799V8.56995L48.1706 6.49995L44.5806 4.42995V0.819946L54.4206 6.49995Z" />
                                        </g>
                                    </svg>
                                </h5>
                                <h2 class="section-title__title"></h2>
                            </div><!-- section-title -->
                            <p class="about-three__content__text">
                                <?php if (!empty($this->data['section1']['content1'])) { echo $this->data['section1']['content1']; } ?>  
                            </p>                                                    
                        </div><!-- about content end -->
                    </div>
                    <div class="col-xl-6 wow fadeInRight" data-wow-delay="100ms">
                        <div class="about-three__thumb"><!-- about thumb start -->
                            <div class="about-three__thumb__one eduact-tilt" data-tilt-options='{ "glare": false, "maxGlare": 0, "maxTilt": 2, "speed": 700, "scale": 1 }'>
                                <!-- <img src="<?php echo base_url()?>assets/front/images/resources/axis-bank.jpg" alt="eduact"> -->
                                <?php if (!empty($this->data['section1']['image1'])) { ?>
                                    <img src="<?php echo base_url('uploads/pg/'.$this->data['section1']['image1'])?>" alt="eduact">
                                    <!-- style="width: 661px; height: 662px;" -->
                                <?php } ?>
                            </div><!-- /.about-thumb-one -->
                            <div class="about-three__thumb__shape-one"></div><!-- /.about-shape-one -->
                            <div class="about-three__thumb__shape-two"></div><!-- /.about-shape-two -->
                            <div class="about-three__thumb__shape-three"><span></span><span></span><span></span><span></span><span></span></div><!-- /.about-shape-three -->
                            <div class="about-three__thumb__shape-four"><img src="<?php echo base_url()?>assets/front/images/shapes/about-3-shape-1.png" alt="eduact" /></div><!-- /.about-shape-four -->
                            <div class="about-three__thumb__shape-five"><span></span><span></span><span></span><span></span><span></span></div><!-- /.about-shape-five -->
                            <div class="about-three__thumb__shape-six"><span></span><span></span><span></span><span></span><span></span></div><!-- /.about-shape-six -->
                            <div class="about-three__thumb__shape-seven"></div><!-- /.about-shape-seven -->
                        </div><!-- about thumb end -->
                    </div>
                </div>
            </div>
        </section>
        <!-- About End -->


<?php
include 'include/footer.php';
?>