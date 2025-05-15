<?php
include 'include/header_other.php';
?>
<!-- <?php print_r($this->data['blogs'][0]); ?> -->
<section class="page-header page-header--bg-two" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h1 class="page-header__title">
            
            <?php if (isset($this->data['blogs'])) {
                echo $this->data['blogs'][0]['title'];
            } else {
                echo 'Blog Post';
            } ?>
        </h1><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Blog Post</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section>
<section class="container" >
    <div class="m-5">
        <h2 class="my-3 text-center"><?php echo $this->data['blogs'][0]['title'] ?></h2>
        <img class="d-block m-auto" src="<?php echo base_url('uploads/blogs/'.$this->data['blogs'][0]['image']); ?>" height="auto" width='60%'>
        <article class="my-5"><?php echo $this->data['blogs'][0]['description']; ?></article>
    </div>
</div>
<?php
include 'include/footer.php';
?>