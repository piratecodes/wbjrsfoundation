<?php
include 'include/header_other.php';
?>
<section class="page-header @@extraClassName" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">Media Partner</h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Media Partner</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->

<!-- Counter Start -->
<section class="counter-one" style="background-image: url(<?php echo base_url()?>assets/front/images/shapes/counter-bg-1.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 wow fadeInLeft" data-wow-delay="200ms">
                        <div class="counter-one__left">
                            <h4 class="counter-one__left__title">
                                <?php if (!empty($this->data['section1']['title1'])) { echo $this->data['section1']['title1']; } ?> 
                            </h4>
                            <div class="counter-one__left__content">
                                <p>
                                    <?php if (!empty($this->data['section1']['content1'])) { echo $this->data['section1']['content1']; } ?>  
                                </p>
                            </div>
                            <img src="<?php echo base_url()?>assets/front/images/shapes/counter-dot.png" alt="eduact">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="counter-one__shapes wow fadeInUp" data-wow-delay="200ms">
                            <svg viewBox="0 0 581 596" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M161.37 12.301C221.003 -53.0048 563.794 156.411 579.671 299.209C595.548 442.007 237.88 668.171 135.305 571.868C46.2938 488.252 -0.524429 189.658 161.37 12.301Z" fill="url(#paint0_linear_227_946)" />
                                <path d="M289.511 579.243C203.626 594.241 -34.778 302.771 4.28926 182.908C43.3565 63.0458 313.639 12.301 483.973 114.853C666.745 224.904 435.092 553.933 289.511 579.243Z" fill="url(#paint1_linear_227_946)" />
                                <defs>
                                    <linearGradient id="paint0_linear_227_946" x1="172.303" y1="27.9012" x2="521.418" y2="508.929" gradientUnits="userSpaceOnUse">
                                        <stop offset="0" stop-color="#4F5DE4" stop-opacity="0" />
                                        <stop offset="0.269374" stop-color="#9EA6F0" stop-opacity="0.550859" />
                                        <stop offset="1" stop-color="white" stop-opacity="0" />
                                    </linearGradient>
                                    <linearGradient id="paint1_linear_227_946" x1="123.876" y1="84.092" x2="408.261" y2="553.853" gradientUnits="userSpaceOnUse">
                                        <stop offset="0" stop-color="#FF7200" />
                                        <stop offset="1" stop-color="white" stop-opacity="0" />
                                    </linearGradient>
                                </defs>
                            </svg>
                        </div>
                        <div class="counter-one__area wow zoomIn" data-wow-delay="400ms">
                            <!-- <img src="<?php echo base_url()?>assets/front/images/resources/Times_Bangla.png" alt="eduact" width="100%"> -->
                            <?php if (!empty($this->data['section1']['image1'])) { ?>
                                <img src="<?php echo base_url('uploads/pg/'.$this->data['section1']['image1'])?>" style="width: 390px !important;" alt="eduact">
                                <!-- style="width: 661px; height: 662px;" -->
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Counter End -->

<?php
include 'include/footer.php';
?>