<?php
include 'include/header_other.php';
?>
<?php print_r($this->data['blogs'][0]); ?>
<section class="page-header page-header--bg-two" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">
            
            <?php if (isset($this->data['blogs'])) {
                echo $this->data['blogs'][0]['title'];
            } else {
                echo 'Blog Post';
            } ?>
        </h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Blog Post</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->
<!-- blog-start -->
    <div class="container" style="">
        <div class="m-5">
            <h1 style="display: block;"><?php echo $this->data['blogs'][0]['title'] ?></h1>
            <?php echo $this->data['blogs']['description'] ?>
        </div>
    </div>
<!-- blog-end-->

<?php
include 'include/footer.php';
?>