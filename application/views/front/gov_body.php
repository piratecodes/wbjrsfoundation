<?php
include 'include/header_other.php';
?>
<section class="page-header @@extraClassName" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">Our Governing Body</h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Our Governing Body</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->

<!-- Blog Start -->
<section class="team-page">
            <div class="container">
                <div class="row">
                    <?php foreach ($this->data['details'] as $key => $value) { ?>
                        <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="100ms">
                            <div class="team-two__item">
                                <div class="team-two__image">
                                    <?php if (!empty($value['image'])) { ?>
                                        <img src="<?php echo base_url('uploads/expert/'.$value['image']); ?>" alt="" style="height:250px !important;">
                                    <?php } else { if ($value['gender'] == 'Female') { ?>
                                        <img src="<?php echo base_url('assets/all/blankwomen.jpg'); ?>" alt="">
                                    <?php } else { ?>
                                        <img src="<?php echo base_url('assets/all/blankmen.jpg'); ?>" alt="">
                                    <?php } } ?>
                                </div><!-- /.team-image -->
                                <div class="team-two__content">
                                    <h3 class="team-two__title">
                                        <a href="#"> <?php echo ucwords(strtolower($value['name'])); ?> </a>
                                    </h3><!-- /.team-name -->
                                    <span class="team-two__designation"><?php echo ucwords(strtolower($value['designation'])); ?></span><!-- /.team-designation -->
                                    <!-- <div class="team-two__social">
                                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                                        <a href="#"><i class="fab fa-youtube"></i></a>
                                    </div> --><!-- /.team-social -->
                                </div><!-- /.team-content -->
                            </div><!-- /.team-two -->
                        </div>
                    <?php } ?>                                        
                </div>
            </div>
        </section>
        <!-- Blog End -->

<?php
include 'include/footer.php';
?>