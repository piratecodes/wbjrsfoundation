<?php
include 'include/header_other.php';
?>

<section class="page-header page-header--bg-two" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title"><?php echo $this->data['cat_details']['cat_name']; ?></h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span><?php echo $this->data['cat_details']['cat_name']; ?></span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->
<!-- Course Start -->
<section class="course-two course-two--page">
    <div class="course-two__shape-top wow fadeInRight" data-wow-delay="300ms"><img src="<?php echo base_url()?>assets/front/images/shapes/course-shape-1.png" alt="eduact1"></div>
    <div class="container">
        <div class="row">
            <?php foreach ($this->data['details'] as $key => $value) { ?>
                <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="100ms">
                    <div class="course-two__item">
                        <div class="course-two__thumb">
                            <?php if (!empty($value['image'])) { ?>
                                <img src="<?php echo base_url('uploads/course/'.$value['image']);?>" alt="<?php echo $value['course_name'];?>" style="width: 303px; height: 201px !important;" />
                            <?php } else { ?>
                                <img src="<?php echo base_url('assets/front/images/course/course-2-1.png')?>" alt="<?php echo $value['course_name'];?>" style="width: 303px; height: 201px !important;" />
                            <?php } ?>

                            <a class="course-two__like" href="javascript:void(0);"><span class="icon-like"></span></a>
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 353 177">
                                <path d="M37 0C16.5655 0 0 16.5655 0 37V93.4816C0 103.547 4.00259 113.295 11.7361 119.737C54.2735 155.171 112.403 177 176.496 177C240.589 177 298.718 155.171 341.261 119.737C348.996 113.295 353 103.546 353 93.4795V37C353 16.5655 336.435 0 316 0H37Z" />
                            </svg>
                        </div><!-- /.course-thumb -->
                        <div class="course-two__content">
                            <div class="course-two__time"><?php echo $value['duration']; ?></div>
                            <div class="course-two__ratings">
                                <span class="icon-star"></span>
                                <span class="icon-star"></span>
                                <span class="icon-star"></span>
                                <span class="icon-star"></span>
                                <span class="icon-star"></span>
                                <!-- <div class="course-two__ratings__reviews">(25 Reviews)</div> -->
                            </div>
                            <h3 class="course-two__title">
                                <a href="<?php echo base_url('course_details/'.$value['search_name']);?>"><?php echo $value['course_name'];?></a>
                            </h3>
                            <div class="course-two__bottom">
                                <!-- <div class="course-two__author">
                                    <img src="<?php //echo base_url()?>assets/front/images/course/author-1.png" alt="eduact">
                                    <h5 class="course-two__author__name">Guy Hawkins</h5>
                                    <p class="course-two__author__designation">Project Manager</p>
                                </div> -->
                                <div class="course-two__meta">
                                   <!--  <h4 class="course-two__meta__price">
                                        <?php if (!empty($value['fees'])) {
                                            echo '<i class="fa fa-rupee"></i>INR '.number_format($value['fees']);
                                        } ?>
                                    </h4> -->
                                    <a href="" class="eduact-btn eduact-btn-second" data-toggle="modal" data-target="#myModal-enquire"><span class="eduact-btn__curve"></span>Book Free Demo Class<i class="icon-arrow"></i></a>
                                    <!-- <p class="course-two__meta__class">15 Lessons</p> -->
                                </div>
                            </div>
                        </div><!-- /.course-content -->
                    </div><!-- /.course-card-two -->
                </div>
            <?php } ?>
            <!-- <div class="col-xl-3 col-md-6 wow fadeInUp" data-wow-delay="200ms">
                <div class="course-two__item">
                    <div class="course-two__thumb">
                        <img src="<?php //echo base_url()?>assets/front/images/course/course-2-2.png" alt="eduact">
                        <a class="course-two__like" href="javascript:void(0);"><span class="icon-like"></span></a>
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 353 177">
                            <path d="M37 0C16.5655 0 0 16.5655 0 37V93.4816C0 103.547 4.00259 113.295 11.7361 119.737C54.2735 155.171 112.403 177 176.496 177C240.589 177 298.718 155.171 341.261 119.737C348.996 113.295 353 103.546 353 93.4795V37C353 16.5655 336.435 0 316 0H37Z" />
                        </svg>
                    </div>
                    <div class="course-two__content">
                        <div class="course-two__time">20 Hours</div>
                        <div class="course-two__ratings">
                            <span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span>
                            <div class="course-two__ratings__reviews">(25 Reviews)</div>
                        </div>
                        <h3 class="course-two__title">
                            <a href="#">The Ultimate Developer Course For Future Learner</a>
                        </h3>
                        <div class="course-two__bottom">
                            <div class="course-two__author">
                                <img src="<?php //echo base_url()?>assets/front/images/course/author-1.png" alt="eduact">
                                <h5 class="course-two__author__name">Guy Hawkins</h5>
                                <p class="course-two__author__designation">Project Manager</p>
                            </div>
                            <div class="course-two__meta">
                                <h4 class="course-two__meta__price">$473.00</h4>
                                <p class="course-two__meta__class">15 Lessons</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->            
        </div>
    </div>
    <div class="course-two__shape-bottom wow fadeInLeft" data-wow-delay="400ms"><img src="<?php echo base_url('assets/front/'); ?>assets/images/shapes/course_shape_2.png" alt="eduact"></div>
</section>
<!-- Course End -->

<?php
include 'include/footer.php';
?>