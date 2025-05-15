<div id="myModal-enquire" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="post" onsubmit="return enquire_form()" enctype="multipart/form-data" action="<?php echo base_url('request_enquire_submit'); ?>" >
                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />

                <div class="modal-header">                                              
                    <h4 class="modal-title" id="myModalLabel">Book Free Demo Class</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body"> 

                    <?php 
                    if(!empty($this->session->flashdata('msg3'))) :
                    $text =  $this->session->flashdata('msg3');
                    ?>
                    <div class="alert alert-<?php echo $text['t']?> alert-dismissable">
                        <?php echo $text['mess']?>
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true" style="float: right;" >&times;</button>
                    </div>            
                    <?php endif; ?>                                                          

                    <div class="row">
                        <div class="col-md-12">
                            <label>Name : <span class="text-danger" >*</span> </label> <br>
                            <input type="text" name="name" class="form-control" required="" placeholder="Name">
                        </div>
                    </div>
                    <br>                    
                    <div class="row">
                        <div class="col-md-6">
                            <label>Email : <span class="text-danger" ></span> </label> <br>
                            <input type="email" name="email" class="form-control" placeholder="Email">
                        </div>
                        <div class="col-md-6">
                            <label>Mobile Number : <span class="text-danger" >*</span> </label> <br>
                            <input type="text" placeholder="Mobile Number" name="mobile" required="" pattern="[6-9]{1}[0-9]{9}" class="form-control" required="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <label>Course : <span class="text-danger" >*</span> </label> <br>
                            <?php foreach($this->course as $key => $value) { ?>
                                <input type="checkbox" name="course[]" value="<?php echo $value['c_id']; ?>"> <?php echo $value['course_name']; ?><br>
                            <?php }?>
                        </div>
                    </div>
                    
                </div>
                <div class="modal-footer">
                    <input type="submit" name="submit" id="submit_enquire" class="btn btn-success" value="Submit" >
                    <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function enquire_form() {
        $("#submit_enquire").html('Please wait...'); 
        $("#submit_enquire").attr('disabled', true); 

        return true;
    }
</script>

<footer class="main-footer-two">
    <div class="main-footer-two__bg" style="background-image: url(<?php echo base_url()?>assets/front/images/shapes/footer-bg-2.png);"></div>
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-md-5 wow fadeInUp" data-wow-delay="100ms">
                <div class="main-footer__about">
                    <a href="<?php echo base_url()?>" class="main-footer__logo">
                        <img src="<?php echo base_url()?>assets/logo/footerlogo.png" alt="logo" width="100%">
                    </a><!-- /.footer-logo -->
                    <p class="main-footer__about__text">An Academy Dedicated to Job Oriented Courses & Development of Essential Skills.</p>
                    <div class="main-footer__social">
                        <a href="https://www.facebook.com/wbjrs.academicfoundation"><i class="fab fa-facebook-f"></i></a>
                        <a href="https://www.linkedin.com/company/wbjrs"><i class="fab fa-linkedin-in"></i></a>
                        <a href="https://twitter.com/wbjrsgroup"><i class="fab fa-twitter"></i></a>
                        <a href="http://www.youtube.com/@WBJRS"><i class="fab fa-youtube"></i></a>
                        <a href="https://www.instagram.com/wbjrs/"><i class="fab fa-instagram"></i></a>
                        <a href="http://g.page/r/CYDn4Wqg16bdEBM/review"><i class="fab fa-google"></i></a>
                    </div><!-- /.footer-social -->
                </div><!-- footer-top -->
            </div>
            <div class="col-xl-3 col-md-4 wow fadeInUp" data-wow-delay="200ms">
                <div class="main-footer-two__navmenu main-footer-two__widget01">
                    <h3 class="main-footer-two__title">Quick Links</h3>
                    <ul>
                        <li><a href="<?php echo base_url()?>">Home</a></li>
                        <li><a href="<?php echo base_url('about')?>">About</a></li>
                        <li><a href="<?php echo base_url('admissionform')?>">Admission Form</a></li>
                        <!-- <li><a href="<?php echo base_url('legal_documents')?>">Our Legal Documents</a></li> -->
                        <li><a href="<?php echo base_url('our_govt_pledge')?>">Our Govt Pledge</a></li>
                        <li><a href="<?php echo base_url('services_page')?>">Our Services</a></li>
                        <li><a href="<?php echo base_url('privacy_policy')?>">Privacy Ploicy</a></li>
                        <li><a href="<?php echo base_url('terms_conditions')?>">Terms & Conditions</a></li>
                        <li><a href="<?php echo base_url('contact')?>">Contact</a></li>
                    </ul><!-- /.list-unstyled -->
                </div><!-- /.footer-menu -->
            </div>
            <div class="col-xl-2 col-md-3 wow fadeInUp" data-wow-delay="300ms">
                <div class="main-footer-two__navmenu main-footer-two__widget02">
                    <h3 class="main-footer-two__title">Courses</h3>
                    <ul>
                        <?php foreach ($this->data['cat_list'] as $key => $value) { ?>
                            <li><a href="<?php echo base_url('course/'.$value['search_name']);?>"><?php echo $value['cat_name']; ?></a></li>
                        <?php } ?>
                        <li> <a href="<?php echo base_url('hotel_management'); ?>"> Hotel Management </a></li>
                        <li><a href="<?php echo base_url('ug_pg_programe')?>">UG/PG Programe</a></li>

                    </ul><!-- /.list-unstyled -->
                </div><!-- /.footer-menu -->
            </div>
            <div class="col-xl-4 col-md-12 wow fadeInUp" data-wow-delay="400ms">
                <div class="main-footer__newsletter">
                    <h3 class="main-footer__title">Contact Us</h3>
                    <ul class="main-footer__info-list">
                        <li><span class="icon-Location"></span>Puspa Apartment 2, Chakraborty Para, Nona Chandanpukur, Barrackpore, Kolkata - 122</li>
                        <li><span class="icon-Telephone"></span><a href="tel:+033 79609224">033 79609224</a><br><a href="tel:+919007607002">+91 90076 07002</a></li>
                        <li><span class="icon-Email"></span><a href="mailto:support@wbjrsfoundation.org">support@wbjrsfoundation.org</a></li>
                    </ul>
                    <div class="mc-form__response"></div>
                </div><!-- /.footer-mailchimp -->
            </div>
        </div><!-- /.row -->
    </div><!-- /.container -->
</footer><!-- /.main-footer-two -->

<section class="copyright">
    <div class="row">
        <div class="col-lg-6">
            <div class="container wow fadeInUp" data-wow-delay="400ms">
                <p class="copyright__text">Copyright &copy; <span class="dynamic-year"></span><!-- /.dynamic-year -->  <?php echo $comp_name;?>. All Rights Reserved.</p>
                <p class="copyright__text">Developed By <a href="https://www.wbjrsfoundation.org">WBJRS Academic Foundation</a></p>            
            </div>
        </div>
        <div class="col-lg-6">
            <div class="container wow fadeInUp" data-wow-delay="400ms">
                
            </div>
        </div>
    </div>
</section>

</div><!-- /.page-wrapper -->


<div class="mobile-nav__wrapper">
<div class="mobile-nav__overlay mobile-nav__toggler"></div>
<!-- /.mobile-nav__overlay -->
<div class="mobile-nav__content">
    <span class="mobile-nav__close mobile-nav__toggler"><i class="fa fa-times"></i></span>
    <div class="logo-box">
        <a href="<?php echo base_url()?>" aria-label="logo image"><img src="<?php echo base_url()?>assets/logo/logo_sm111.png" width="250" height="90" alt="WBJRS" /></a>
    </div>
    <!-- /.logo-box -->
    <div class="mobile-nav__container"></div>
    <!-- /.mobile-nav__container -->
    <ul class="mobile-nav__contact list-unstyled">
        <li>
            <i class="fas fa-envelope"></i>
            <a href="mailto:support@wbjrsfoundation.org">support@wbjrsfoundation.org</a>
        </li>
        <li>
            <i class="fa fa-phone-alt"></i>
            <a href="tel:+03379609224">033 79609224&nbsp; / &nbsp;&nbsp;</a>
            <a href="tel:++919007607002">+91 90076 07002</a>
        </li>
    </ul><!-- /.mobile-nav__contact -->
    <div class="mobile-nav__social">
        <a href="https://www.facebook.com/wbjrs"><i class="fab fa-facebook-f"></i></a>
        <a href="https://www.linkedin.com/company/wbjrs"><i class="fab fa-linkedin-in"></i></a>
        <a href="https://twitter.com/wbjrsgroup"><i class="fab fa-twitter"></i></a>
        <a href="http://www.youtube.com/@WBJRS"><i class="fab fa-youtube"></i></a>
        <a href="https://www.instagram.com/wbjrs_academicfoundation"><i class="fab fa-instagram"></i></a>
        <a href="http://g.page/r/CYDn4Wqg16bdEBM/review"><i class="fab fa-google"></i></a>
    </div><!-- /.mobile-nav__social -->
</div>
<!-- /.mobile-nav__content -->
</div>
<!-- /.mobile-nav__wrapper -->

<div class="search-popup">
<div class="search-popup__overlay search-toggler"></div>
<!-- /.search-popup__overlay -->
<div class="search-popup__content">
    <form role="search" method="get" class="search-popup__form" action="#">
        <input type="text" id="search" placeholder="Search Here..." />
        <button type="submit" class="eduact-btn"><span class="eduact-btn__curve"></span><i class="icon-Search"></i></button>
    </form>
</div>
<!-- /.search-popup__content -->
</div>
<!-- /.search-popup -->

<!-- back-to-top-start -->
<a href="#" class="scroll-top">
<svg class="scroll-top__circle" width="100%" height="100%" viewBox="-1 -1 102 102">
    <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
</svg>
</a>
<!-- back-to-top-end -->

<script src="<?php echo base_url()?>assets/front/vendors/jquery/jquery-3.5.1.min.js"></script> 
<script src="<?php echo base_url()?>assets/front/vendors/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/jquery-ui/jquery-ui.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/jarallax/jarallax.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/jquery-ajaxchimp/jquery.ajaxchimp.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/jquery-appear/jquery.appear.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/jquery-circle-progress/jquery.circle-progress.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/jquery-magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/jquery-validate/jquery.validate.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/nouislider/nouislider.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/odometer/odometer.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/tiny-slider/tiny-slider.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/wnumb/wNumb.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/jquery-circleType/jquery.circleType.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/jquery-lettering/jquery.lettering.min.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/tilt/tilt.jquery.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/wow/wow.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/isotope/isotope.js"></script>
<script src="<?php echo base_url()?>assets/front/vendors/countdown/countdown.min.js"></script>
<!-- template js -->
<script src="<?php echo base_url()?>assets/front/js/eduact.js"></script>
<style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: none;
   color: white;
   text-align: right;
   z-index: 2 !important;
   margin-bottom:30px;
   margin-left:-90px;
}
</style>
<!---
<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="green" class="bi bi-whatsapp" viewBox="0 0 16 16">
  <path d="M13.601 2.326A7.85 7.85 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.9 7.9 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.9 7.9 0 0 0 13.6 2.326zM7.994 14.521a6.6 6.6 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.56 6.56 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592m3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.73.73 0 0 0-.529.247c-.182.198-.691.677-.691 1.654s.71 1.916.81 2.049c.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232"/>
</svg>
--->

<div class="footer" >
<!--<a href="tel:9007607002"><img src="<?php //echo base_url('assets/front/images/resources/call_us.png')?>" height="50"></a> -->
<!-- <a href="<?php echo base_url('admissionform')?>"><img src="<?php echo base_url('assets/front/images/resources/admission_open.png')?>" height="50"></a> -->
<!-- <a href="<?php echo base_url('contact')?>"><img src="<?php //echo base_url('assets/front/images/resources/Enquiry.png')?>" height="50"></a>
<a href="<?php echo base_url()?>assets/front/images/resources/Brochure_WBJRS.pdf"><img src="<?php //echo base_url('assets/front/images/resources/download_b.png')?>" height="50"></a>-->
<a href="https://wa.me/+919007607002?text=We are interested to connect you" ><img src="<?php echo base_url('assets/front/images/resources/whatapp.png')?>" height="50"  style="border-radius: 50% !important;"></a>
</div>
</body>
</html>