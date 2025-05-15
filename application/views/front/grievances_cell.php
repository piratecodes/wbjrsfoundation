<?php
include 'include/header_other.php';
?>
<section class="page-header @@extraClassName" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">Grievances Cell</h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Grievances Cell</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->






<!-- About Start -->
<section class="about-three">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 wow fadeInLeft" data-wow-delay="100ms">
                        <div class="about-three__content"><!-- about content start-->
                            <div class="section-title">
                                
                                <h2 class="section-title__title">Grievances Cell</h2>
                            </div><!-- section-title -->
                            <p class="about-three__content__text">
                           
                           
                           <!---- starting of grievances application Form ---->
                           
                           
                            <!-- .row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <?php if(!empty($this->session->flashdata('msg'))){
                                $text =  $this->session->flashdata('msg');
                                ?>
                                <div class="alert alert-<?php echo $text['t']?> alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <?php echo $text['mess']?>
                                </div>
                            <?php } ?>

                            <div>
                                
                    <!---------------------------form------------------------------>            
                                
                                
                               <!-- Contact Start -->
<section class="contact-one">
    <div class="container wow fadeInUp" data-wow-delay="300ms">
        <div class="section-title  text-center">
            <h5 class="section-title__tagline">
                Contact with Us
                <svg class="arrow-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 55 13">
                    <g clip-path="url(#clip0_324_36194)">
                        <path d="M10.5406 6.49995L0.700562 12.1799V8.56995L4.29056 6.49995L0.700562 4.42995V0.819946L10.5406 6.49995Z" />
                        <path d="M25.1706 6.49995L15.3306 12.1799V8.56995L18.9206 6.49995L15.3306 4.42995V0.819946L25.1706 6.49995Z" />
                        <path d="M39.7906 6.49995L29.9506 12.1799V8.56995L33.5406 6.49995L29.9506 4.42995V0.819946L39.7906 6.49995Z" />
                        <path d="M54.4206 6.49995L44.5806 12.1799V8.56995L48.1706 6.49995L44.5806 4.42995V0.819946L54.4206 6.49995Z" />
                    </g>
                </svg>
            </h5>
            <h2 class="section-title__title">Feel Free to Write us Anytime</h2>
        </div><!-- section-title -->
        <div class="contact-one__form-box  text-center">
            <form class="" method="post" onsubmit="form_validate()" enctype="multipart/form-data">
                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />
                <?php 
                if(!empty($this->session->flashdata('msg'))) :
                $text =  $this->session->flashdata('msg');
                ?>
                <div class="alert alert-<?php echo $text['t']?> alert-dismissable">
                    <?php echo $text['mess']?>
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true" style="float: right;" >&times;</button>
                </div>            
                <?php endif; ?>
                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-one__input-box">
                            <label class="mylabel">Course : <span class="text-danger">*</span> </label>
                            <select class="form-control" name="course_id" required="">
                                <option value=""> Please Select </option>
                                <?php foreach ($this->data['course'] as $key => $value) { ?>
                                    <option value="<?php echo $value['course_name']; ?>"> <?php echo $value['course_name']; ?> </option>
                                <?php } ?>
                                <option value="Hotel Management"> Hotel Management </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="contact-one__input-box">
                            <label class="mylabel">Name : <span class="text-danger">*</span> </label>
                            <input type="text" placeholder="Your Name" name="name" required="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="contact-one__input-box">
                            <label class="mylabel">Email : <span class="text-danger">*</span> </label>
                            <input type="email" placeholder="Email Address" name="email">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="contact-one__input-box">
                            <label class="mylabel">Mobile Number : <span class="text-danger">*</span> </label>
                            <input type="text" placeholder="Mobile Number" name="mobile" required="" pattern="[6-9]{1}[0-9]{9}">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="contact-one__input-box">
                            <label class="mylabel">Subject : <span class="text-danger">*</span> </label>
                            <input type="text" placeholder="Subject" name="subject" required="">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="contact-one__input-box text-message-box">
                            <label class="mylabel">Your Query : <span class="text-danger">*</span> </label>
                            <textarea name="message" placeholder="Write a Message" required=""></textarea>
                        </div>
                        <div class="contact-one__btn-box">
                            <button type="submit" id="submit" class="eduact-btn eduact-btn-second"><span class="eduact-btn__curve"></span>Send a Message<i class="icon-arrow"></i></button>
                        </div>
                    </div>
                </div>
            </form>
            <div class="result"></div>
        </div>
    </div>
</section>
<!-- Contact End -->
<script>
    function form_validate() {

  $("#submit").html('Please wait...'); 
  $("#submit").attr('disabled', true); 

  return true;
}
</script>
<style>
    .mylabel {
        float: left;
        font-weight: bold;
        font-size: 18px;
    }
    .form-control {
        height: 60px;
        width: 100%;
        border: none;
        background-color: var(--eduact-soft5);
        padding-left: 30px;
        padding-right: 30px;
        outline: none;
        font-size: 16px;
        color: var(--eduact-text);
        font-family: var(--eduact-font);
        display: block;
        font-weight: 600;
        border-radius: 4px;
    }
</style>
                                
                    <!---------------------------form------------------------->
                                
                                
                                
                           
                           <!---- ending of grievances application Form ---->
                           
                           
                           
                           
                           
                           
                           <!-------------- <h3>Overview</h3>
GLOBAL HIPPO ASSOCIATION is organising 11th International English Language Olympiad. The Hippo International English Language Olympiad is available to students in grades 2 to 12. Students can register for this exam either as an individual or through their school.</p>
<p class="about-three__content__text">
<h3>Objectives</h3>
The Grievances Cell is an international competition that motivates teachers to cooperate, promotes the English language, and challenges students all around the world to demonstrate their proficiency in the language. The Olympiad promotes the growth of a common sense of identity and integration and acts as a role model for young people living in together as one community. The main goal is to create goodwill, global awareness, and a healthy sense of rivalry among young people from around the world who are interested in learning the English language. In addition, by competing in such an Olympiad, students get the opportunity to compare their English proficiency to international practices and become familiar with the concept of examinations.
<br><br>
<a href="<?php echo base_url()?>assets/front/images/resources/InfopackDHippo-2023-24.pdf"><img src="<?php echo base_url()?>assets/front/images/resources/download.png" alt="eduact" height="80"></a>


</p>                            
                        </div><!-- about content end -->
                    </div>
                    <div class="col-xl-6 wow fadeInRight" data-wow-delay="100ms">
                        <div class="about-three__thumb"><!-- about thumb start -->
                            <div class="about-three__thumb__one eduact-tilt" data-tilt-options='{ "glare": false, "maxGlare": 0, "maxTilt": 2, "speed": 700, "scale": 1 }'>
                                <img src="<?php echo base_url()?>assets/front/images/resources/Hippo-english-vector.png" alt="eduact">
                            </div><!-- /.about-thumb-one -->
                            <div class="about-three__thumb__shape-one"></div><!-- /.about-shape-one -->
                            <div class="about-three__thumb__shape-two"></div><!-- /.about-shape-two -->
                            <div class="about-three__thumb__shape-three"><span></span><span></span><span></span><span></span><span></span></div><!-- /.about-shape-three -->
                            <div class="about-three__thumb__shape-four"><img src="<?php echo base_url()?>assets/front/images/shapes/about-3-shape-1.png" alt="eduact" /></div><!-- /.about-shape-four -->
                            <div class="about-three__thumb__shape-five"><span></span><span></span><span></span><span></span><span></span></div><!-- /.about-shape-five -->
                            <div class="about-three__thumb__shape-six"><span></span><span></span><span></span><span></span><span></span></div><!-- /.about-shape-six -->
                            <div class="about-three__thumb__shape-seven"></div><!-- /.about-shape-seven -->
                        </div><!-- about thumb end -->
                    </div>
                </div>
            </div>
        </section>
        <!-- About End -->



<?php
include 'include/footer.php';
?>