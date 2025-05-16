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
<!-- gallery-start -->
<section class="gallery-page">
    <div class="container">
        <div class="row">
            <?php foreach ($this->data['details'] as $key => $value) { ?>
                <!-- gallery-item-start -->
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <?php if (!empty($value['image'])) { ?>
                            <img src="<?php echo base_url('uploads/pg/'.$value['image'])?>" alt="eduact" >
                        <?php } ?>
                        <!-- <img src="<?php echo base_url()?>assets/front/images/certificate/C1.jpg" alt="eduact"> -->
                        <div class="gallery-page__icon">
                            <?php if (!empty($value['image'])) { ?>
                                <a class="img-popup" href="<?php echo base_url('uploads/pg/'.$value['image'])?>"></a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <!-- gallery-item-end -->
            <?php } ?>
            <!-- <span>
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <img src="<?php echo base_url()?>assets/front/images/certificate/C1.jpg" alt="eduact">
                        <div class="gallery-page__icon">
                            <a class="img-popup" href="<?php echo base_url()?>assets/front/images/certificate/C1.jpg"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <img src="<?php echo base_url()?>assets/front/images/certificate/C2.jpg" alt="eduact">
                        <div class="gallery-page__icon">
                            <a class="img-popup" href="<?php echo base_url()?>assets/front/images/certificate/C2.jpg"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <img src="<?php echo base_url()?>assets/front/images/certificate/C3.jpg" alt="eduact">
                        <div class="gallery-page__icon">
                            <a class="img-popup" href="<?php echo base_url()?>assets/front/images/certificate/C3.jpg"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <img src="<?php echo base_url()?>assets/front/images/certificate/C4.jpg" alt="eduact">
                        <div class="gallery-page__icon">
                            <a class="img-popup" href="<?php echo base_url()?>assets/front/images/certificate/C4.jpg"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <img src="<?php echo base_url()?>assets/front/images/certificate/C5.jpg" alt="eduact">
                        <div class="gallery-page__icon">
                            <a class="img-popup" href="<?php echo base_url()?>assets/front/images/certificate/C5.jpg"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <img src="<?php echo base_url()?>assets/front/images/certificate/C6.jpg" alt="eduact">
                        <div class="gallery-page__icon">
                            <a class="img-popup" href="<?php echo base_url()?>assets/front/images/certificate/C6.jpg"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <img src="<?php echo base_url()?>assets/front/images/certificate/C7.jpg" alt="eduact">
                        <div class="gallery-page__icon">
                            <a class="img-popup" href="<?php echo base_url()?>assets/front/images/certificate/C7.jpg"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <img src="<?php echo base_url()?>assets/front/images/certificate/C8.jpg" alt="eduact">
                        <div class="gallery-page__icon">
                            <a class="img-popup" href="<?php echo base_url()?>assets/front/images/certificate/C8.jpg"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <img src="<?php echo base_url()?>assets/front/images/certificate/C9.png" alt="eduact">
                        <div class="gallery-page__icon">
                            <a class="img-popup" href="<?php echo base_url()?>assets/front/images/certificate/C9.png"></a>
                        </div>
                    </div>
                </div>
            </span> -->                 
        </div>
    </div>
</section>
<!-- gallery-end-->     


<?php
include 'include/footer.php';
?>