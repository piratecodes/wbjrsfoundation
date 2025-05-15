<?php
include 'include/header_other.php';
?>

<section class="page-header @@extraClassName" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title"><?php echo $this->data['details']['course_name']; ?></h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><a href="<?php echo base_url('course')?>">Course</a></li>
            <li><span><?php echo $this->data['details']['course_name']; ?></span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->

<section class="course-details">
    <div class="container">
        <div class="row">
            <div class="col-xl-8">
                <div class="course-details__thumb">
                    <?php if (!empty($this->data['details']['image'])) { ?>
                        <img src="<?php echo base_url('uploads/course/'.$this->data['details']['image'])?>" alt="<?php echo $this->data['details']['course_name']; ?>" />
                    <?php } else { ?>
                        <img src="<?php echo base_url()?>assets/front/images/course/ds1.png" alt="<?php echo $this->data['details']['course_name']; ?>" />
                    <?php } ?>
                </div><!-- details-thumb -->
                <div class="course-details__meta">
                    <!-- <div class="course-details__meta__author">
                        <img src="<?php echo base_url()?>assets/front/images/course/author-7.png" alt="eduact">
                        <h5 class="course-details__meta__name">Instructor Name</h5>
                        <p class="course-details__meta__designation">Instructor Designation</p>
                    </div> -->
                    <div class="course-details__meta__ratings">
                        <?php for ($i=0; $i<$this->data['details']['rating']; $i++){ ?>
                            <span class="fa fa-star"></span>
                        <?php } ?>
                        <div class="course-details__meta__ratings__reviews">(<?php echo $this->data['tot_review']; ?> Reviews)</div>
                    </div>
                    <div class="course-details__meta__price">
                        <?php if (!empty($this->data['details']['fees'])) {
                            echo '<i class="fa fa-rupee"></i>INR '.number_format($this->data['details']['fees']);
                        } ?>
                    </div>
                </div><!-- details-meta -->
                <h3 class="course-details__title"><?php echo $this->data['details']['course_name']; ?></h3><!-- details-title -->
                <div class="course-details__tabs tabs-box">
                    <ul class="course-details__tabs__lists tab-buttons list-unstyled">
                        <li data-tab="#overview" class="tab-btn active-btn"><span>Overview</span></li>
                        <li data-tab="#curriculum" class="tab-btn"><span>Curriculum</span></li>
                        <li data-tab="#reviews" class="tab-btn"><span>Reviews</span></li>
                        <!-- <li data-tab="#instructor" class="tab-btn"><span>Instructor</span></li> -->
                    </ul><!-- tab-title -->
                    <div class="tabs-content">
                        <div class="tab active-tab fadeInUp animated" id="overview">
                            <div class="course-details__overview">
                                <p class="course-details__overview__text">
                                    <?php echo $this->data['details']['overview']; ?>
                                </p>
                            </div>
                        </div><!-- tab-content-overview -->
                        <div class="tab fadeInUp animated" id="curriculum">
                            <div class="course-details__curriculum">
                                <?php echo $this->data['details']['curriculam']; ?>
                                <!-- <h4 class="course-details__curriculum__title">Week 1-2: Introduction to Banking</h4>
                                <ul class="list-unstyled course-details__curriculum__lists">
                                    <li>
                                        <i class="icon-play-border"></i>
                                        <span class="course-details__curriculum__lists__title">Overview of the Banking Industry</span>
                                    </li>
                                    <li>
                                        <i class="icon-play-border"></i>
                                        <span class="course-details__curriculum__lists__title">Historical Evolution of Banking</span>
                                    </li>
                                    <li>
                                        <i class="icon-file"></i>
                                        <span class="course-details__curriculum__lists__title">Regulatory Framework and Compliance</span>
                                    </li>
                                    <li>
                                        <i class="icon-logical-thinking"></i>
                                        <span class="course-details__curriculum__lists__title">Introduction to Central Banking</span>
                                    </li>
                                </ul>

                                <h4 class="course-details__curriculum__title">Week 3-4: Banking Operations</h4>
                                <ul class="list-unstyled course-details__curriculum__lists">
                                    <li>
                                        <i class="icon-play-border"></i>
                                        <span class="course-details__curriculum__lists__title">Core Banking Functions</span>
                                    </li>
                                    <li>
                                        <i class="icon-play-border"></i>
                                        <span class="course-details__curriculum__lists__title">Account Opening and Closure Procedures</span>
                                    </li>
                                    <li>
                                        <i class="icon-file"></i>
                                        <span class="course-details__curriculum__lists__title">Payment Systems (RTGS, NEFT, IMPS)</span>
                                    </li>
                                    <li>
                                        <i class="icon-logical-thinking"></i>
                                        <span class="course-details__curriculum__lists__title">Cash Management and Handling</span>
                                    </li>
                                </ul> -->
                            </div>
                        </div><!-- tab-content-curriculum -->
                        <div class="tab fadeInUp animated" id="reviews">
                            <div class="course-details__comment">
                                <h3 class="course-details__review-title"><?php echo $this->data['tot_review']; ?> Reviews</h3>
                                <!--Start Comment Box-->
                                <?php foreach ($this->data['review'] as $key => $value ) { ?>
                                    <div class="course-details__comment-box">
                                        <figure class="course-details__comment-box__thumb">
                                            <?php if (!empty($value['image'])) { ?>
                                                <img src="<?php echo base_url('uploads/review/'.$value['image']); ?>" alt="" style="width :145px; height: 145px;">
                                            <?php } else { ?>
                                                <img src="<?php echo base_url('assets/all/blankmen.jpg'); ?>" alt="" style="width :145px; height: 145px;">
                                            <?php } ?>
                                        </figure><!-- comment-image -->
                                        <h4 class="course-details__comment-box__meta"><?php echo $value['name']; ?></h4><!-- comment-meta -->
                                        <div class="course-details__comment-box__ratings">
                                            <?php for ($i=0; $i<$value['rating']; $i++){ ?>
                                                <span class="fa fa-star"></span>
                                            <?php } ?>
                                        </div><!-- comment-ratings -->
                                        <p class="course-details__comment-box__text">
                                           <?php echo $value['review']; ?>
                                        </p><!-- comment-text -->
                                    </div>
                                <?php } ?>
                                <!--End Comment Box-->
                            </div><!-- /.review-comment -->
                            <!--<div class="course-details__form">
                                <h3 class="course-details__form-title">Add a Review</h3>
                                <div class="course-details__form-ratings">
                                    <p class="course-details__form-ratings__label">Rate this Product</p>
                                    <span class="far fa-star"></span><span class="far fa-star"></span><span class="far fa-star"></span><span class="far fa-star"></span><span class="far fa-star"></span>
                                </div>
                                <form action="https://bracketweb.com/eduact-html/assets/inc/sendemail.php" class="review-form contact-form-validated" novalidate="novalidate">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="review-form__input-box">
                                                <input type="text" placeholder="Your Name" name="name">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="review-form__input-box">
                                                <input type="email" placeholder="Email Address" name="email">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="review-form__input-box">
                                                <textarea name="message" placeholder="Write a Message"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <button type="submit" class="eduact-btn eduact-btn-second"><span class="eduact-btn__curve"></span>Leave a Review<i class="icon-arrow"></i></button>
                                        </div>
                                    </div>
                                </form>
                                <div class="result"></div>
                            </div>-->
                        </div><!-- tab-content-reviews -->
                        <div class="tab fadeInUp animated" id="instructor">
                            <div class="course-details__instructor">
                                <figure class="course-details__instructor__thumb"><img src="<?php echo base_url()?>assets/front/images/resources/instructor-1.jpg" alt="eduact"></figure><!-- instructor-image -->
                                <h4 class="course-details__instructor__name">Guy Hawkins</h4><!-- instructor-name -->
                                <span class="course-details__instructor__designation">Project Manager</span><!-- instructor-designation -->
                                <p class="course-details__instructor__text">
                                    Nam vel lacus eu nisl bibendum accumsan vitae vitae nibh. Nam nec eros id magna hendrerit sagittis.
                                    Nullam sed mi non odio feugiat volutpat sit amet nec elit. Maecenas id hendrerit ipsum. Sed eget
                                    auctor metus, ac dapibus dolor.
                                </p><!-- instructor-text -->
                            </div>
                        </div><!-- tab-content-instructor -->
                    </div><!-- tab-content -->
                </div><!-- tabs -->
            </div>
            <div class="col-xl-4 wow fadeInRight" data-wow-delay="300ms">
                <div class="course-details__sidebar">
                    <div class="course-details__sidebar__item">
                        <h3 class="course-details__sidebar__title">Course Features</h3>
                        <ul class="course-details__sidebar__lists clerfix">
                            <li><i class="icon-history"></i>Duration:<span><?php echo $this->data['details']['duration']; ?></span></li>
                            <li><i class="icon-book"></i>Lessons:<span><?php echo $this->data['details']['lessons']; ?></span></li>
                            <li><i class="icon-play-border"></i>Topics<span><?php echo $this->data['details']['topics']; ?></span></li>
                            <li><i class="icon-logical-thinking"></i>Skill Level<span><?php echo $this->data['details']['skill_level']; ?></span></li>
                            <li><i class="icon-Digital-marketing"></i>Language:<span><?php echo $this->data['details']['language']; ?></span></li>
                        </ul>
                        <a href="" class="eduact-btn eduact-btn-second" data-toggle="modal" data-target="#myModal-enquire"><span class="eduact-btn__curve"></span>Book Free Demo Class<i class="icon-arrow"></i></a>
                    </div>
                    <div class="course-details__sidebar__item">
                        <h3 class="course-details__sidebar__title">Latest Course</h3>
                        <ul class="course-details__sidebar__post">
                            <?php foreach ($this->data['courses'] as $key => $value) { 
                                if ($value['c_id'] != $this->data['details']['c_id']) {
                                    $rev = COUNT($this->Cms_model->course_review('', $value['c_id'], 'Approved'));
                            ?>
                                <li>
                                    <div class="course-details__sidebar__post__image">
                                        <?php if (!empty($value['image'])) { ?>
                                            <img src="<?php echo base_url('uploads/course/'.$value['image']);?>" alt="<?php echo $value['course_name'];?>" />
                                        <?php } else { ?>
                                            <img src="<?php echo base_url('assets/front/images/course/course-2-1.png')?>" alt="<?php echo $value['course_name'];?>"  />
                                        <?php } ?>
                                        <!-- <img src="<?php echo base_url()?>assets/front/images/course/lc-1.jpg" alt="eduact"> -->
                                    </div>
                                    <div class="course-details__sidebar__post__content">
                                        <!-- <span class="course-details__sidebar__post__meta">By <a href="course.html">Robert Fox</a></span> -->
                                        <h3 class="course-details__sidebar__post__title"><a href="<?php echo base_url('course_details/'.$value['search_name']);?>"><?php echo $value['course_name'];?></a></h3>
                                        <div class="course-details__sidebar__post__ratings">
                                            <?php for ($i=0; $i<$value['rating']; $i++){ ?>
                                                <span class="fa fa-star"></span>
                                            <?php } ?>
                                            <div class="course-details__sidebar__post__ratings__reviews">(<?php echo $rev; ?>)</div>
                                        </div>
                                    </div>
                                </li>
                            <?php } } ?>                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- course-details-end -->

<?
include 'include/footer.php';
?>