<?php
include 'include/header.php';
?>
<!--Main Slider Start-->
<section class="main-slider" title="wbjrs academic foundation">
    <div class="main-slider >
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
   <?php $c=0;  foreach ($this->data['noticeboard'] as $key => $value) { $c++; ?>
        <div class="carousel-item <?php if ($c==1) { echo 'active'; } ?>">
            <img class="d-block w-100" src="<?php echo base_url('uploads/noticeboard/'.$value['image']); ?>" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
                <h5> <?php if (!empty($value['title'])) { echo $value['title']; } ?> </h5>
                <p></p>
            </div>
        </div>
    <?php } ?>
    
    
    </div>
  </div>
  <a name="WBJRS Academic Foundation" class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                    </div>
                </div>
            </div>

    </div>
</section>
<!--Main Slider End-->

<?php
include 'include/footer.php';
?>