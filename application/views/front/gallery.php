<?php
include 'include/header_other.php';
?>

<section class="page-header page-header--bg-two" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">
            <?php if (isset($this->data['album'])) {
                echo $this->data['album']['album_name'];
            } else {
                echo 'Gallery';
            } ?>
        </h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Gallery</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->
<!-- gallery-start -->
<section class="gallery-page">
    <div class="container">
        <div class="row">
            <?php foreach ($this->data['gallery'] as $key => $value) { ?>
                <div class="col-lg-3 col-md-6">
                    <div class="gallery-page__single">
                        <img src="<?php echo base_url('uploads/gallery/'.$value['image']); ?>" alt="eduact">
                        <div class="gallery-page__icon">
                            <a class="img-popup" href="<?php echo base_url('uploads/gallery/'.$value['image']); ?>"></a>
                        </div>
                    </div>
                </div>
            <?php } ?>            
        </div>
    </div>
</section>
<!-- gallery-end-->

<?php
include 'include/footer.php';
?>