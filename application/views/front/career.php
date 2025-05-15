<?php
include 'include/header_other.php';
?>

<section class="page-header page-header--bg-two" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">Career</h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Contact</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->

<!-- Info Start -->
<section class="contact-info">
    <div class="container">


        <br>
        

    </div>
</section>
<!-- Info End -->

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
            <h2 class="section-title__title">Speak to Our Career Experts Anytime</h2>
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
                        <div class="contact-one__input-box">
                            <label class="mylabel">Upload Your Updated CV : <span class="text-danger">*</span> </label>
                            <input type="file" placeholder="cv" name="Resume" required="">
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

<?php
include 'include/footer.php';
?>