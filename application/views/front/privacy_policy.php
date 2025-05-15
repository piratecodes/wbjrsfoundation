<?php
include 'include/header_other.php';
?>

<section class="page-header @@extraClassName" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">Privacy Policy</h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Privacy Policy</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->
<!-- Course Start -->
<section class="course-three" style="background-image: url(assets/images/shapes/course-bg-3.png);">
    <div class="container">
        <div class="section-title wow fadeInUp text-center" data-wow-delay="100ms">

            <h2 class="section-title__title"><?php if (!empty($this->data['section1']['title1'])) { echo $this->data['section1']['title1']; } ?> </h2>
        </div><!-- section-title -->
        <div class="row">
            <div class="col-xl-12 wow fadeInUp" data-wow-delay="200ms">
                <div class="row" style="padding-bottom: 50px;">
                    <div class="col-lg-12">
                        <p>
                            <?php if (!empty($this->data['section1']['content1'])) { echo $this->data['section1']['content1']; } ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Course End -->


<?php
include 'include/footer.php';
?>