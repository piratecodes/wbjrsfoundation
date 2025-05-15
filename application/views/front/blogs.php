<?php
include 'include/header_other.php';
?>
<section class="page-header page-header--bg-two" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">Blogs</h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Blogs</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->

<!-- Course Start -->
<section class="category-three" style="background-image: url(<?php echo base_url()?>assets/front/images/shapes/category-bg-3.jpg);">
    <div class="container wow fadeInUp" data-wow-delay="200ms">
        <div class="section-title text-center">

            <h2 class="section-title__title">Our Blogs</h2>
        </div><!-- section-title -->
        <div class="row">
            <?php foreach ($this->data['blogs'] as $key => $value) { ?>
                <div class="col-lg-3 col-md-6">
                    <div class="category-three__item category-three__item-two">
                        <div class="category-three__thumb">
                            
                        </div><!-- /.category-thumb -->
                        <div class="category-three__icon">
                            
                        </div><!-- /.category-icon -->
                        <h3 class="category-three__title"><a href="<?php echo base_url('blog/'.$value['slug']);?>"> <?php echo $value['title']; ?> </a></h3><!-- /.category-title -->
                    </div><!-- /.category-card-one -->
                </div>
            <?php } ?>               
        </div>
    </div>
</section>

<?php
include 'include/footer.php';
?>