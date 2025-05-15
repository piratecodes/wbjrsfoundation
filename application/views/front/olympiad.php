<?php
include 'include/header_other.php';
?>
<section class="page-header @@extraClassName" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title"> <?php echo $this->page_title; ?> </h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span> <?php echo $this->page_title; ?> </span></li>
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
                                <h2 class="section-title__title"> <?php if (!empty($this->data['details']['title'])) { echo $this->data['details']['title']; } ?> </h2>
                            </div><!-- section-title -->
                            <p class="about-three__content__text">
                            	<?php 
                            	if (!empty($this->data['details']['content'])) { echo $this->data['details']['content']; } 
                            	if (!empty($this->data['details']['attachment'])) {
                            	?>
									<br><br>
									<a href="<?php echo base_url('uploads/pg/'.$this->data['details']['attachment']); ?>" download="" >
										<img src="<?php echo base_url()?>assets/front/images/resources/download.png" alt="eduact" height="80">
									</a>
								<?php } ?>
							</p>                            
                        </div><!-- about content end -->
                    </div>
                    <div class="col-xl-6 wow fadeInRight" data-wow-delay="100ms">
                        <div class="about-three__thumb"><!-- about thumb start -->
                            <div class="about-three__thumb__one eduact-tilt" data-tilt-options='{ "glare": false, "maxGlare": 0, "maxTilt": 2, "speed": 700, "scale": 1 }'>
                            	<?php if (!empty($this->data['details']['image'])) { ?>
		                            <img src="<?php echo base_url('uploads/pg/'.$this->data['details']['image'])?>" alt="eduact">
		                            <!-- style="width: 661px; height: 662px;" -->
		                        <?php } ?>
                                <!-- <img src="<?php echo base_url()?>assets/front/images/resources/Hippo-english-vector.png" alt="eduact"> -->
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