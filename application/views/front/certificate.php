<?
include 'include/header_other.php';
?>

<section class="page-header page-header--bg-two" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">Certificate</h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Certificate</span></li>
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
                Certificate
                <svg class="arrow-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 55 13">
                    <g clip-path="url(#clip0_324_36194)">
                        <path d="M10.5406 6.49995L0.700562 12.1799V8.56995L4.29056 6.49995L0.700562 4.42995V0.819946L10.5406 6.49995Z" />
                        <path d="M25.1706 6.49995L15.3306 12.1799V8.56995L18.9206 6.49995L15.3306 4.42995V0.819946L25.1706 6.49995Z" />
                        <path d="M39.7906 6.49995L29.9506 12.1799V8.56995L33.5406 6.49995L29.9506 4.42995V0.819946L39.7906 6.49995Z" />
                        <path d="M54.4206 6.49995L44.5806 12.1799V8.56995L48.1706 6.49995L44.5806 4.42995V0.819946L54.4206 6.49995Z" />
                    </g>
                </svg>
            </h5>
            <h2 class="section-title__title">Find your certificate here</h2> 
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
                    <div class="col-md-8">
                        <div class="contact-one__input-box">
                            <input type="text" placeholder="Certificate Number" name="certificate_num" required="" value="<?php if (isset($this->data['details'])) { if (!empty($this->data['details']['certificate_num'])) { echo $this->data['details']['certificate_num']; } } ?>" >
                        </div>
                    </div>                    
                    
                    <div class="col-md-2">
                        <div class="contact-one__btn-box">
                            <button type="submit" id="submit" class="eduact-btn eduact-btn-second"><span class="eduact-btn__curve"></span>Search</button>
                        </div>
                    </div>
                </div>
            </form>
            <div class="result">
                <?php
                $pg = $this->uri->segment(2); 

                if ($pg != '') {
                    if (empty($this->data['details'])) {
                    ?>
                        <div class="alert alert-danger alert-dismissable">
                            No such certificate found.
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true" style="float: right;" >&times;</button>
                        </div>   
                    <?php
                    } else {
                    ?>
                        <div class="row" style="border: 1px solid black; padding: 10px;" >
                            <div class="col-md-12">
                                <h4>
                                    CERTIFICATE DETAILS
                                    <a href="<?php echo base_url('downloads/certificate/'.$this->data['details']['certificate_num']); ?>" style="float: right;" target="_blank" class="btn btn-xs btn-primary"> View Certificate </a>
                                </h4>
                            </div>

                            <div class="col-md-12">&nbsp;</div>

                            <div class="col-md-6">
                                <label class="mylabel">Certificate Number : </label>
                                <span class="myspan">
                                    <?php if (isset($this->data['details'])) { if (!empty($this->data['details']['certificate_num'])) { echo $this->data['details']['certificate_num']; } } ?>
                                </span>
                                
                            </div>
                            <div class="col-md-6">
                                <label class="mylabel">Date : </label>
                                <span class="myspan">
                                    <?php if (isset($this->data['details'])) { if (!empty($this->data['details']['date'])) { echo date_format(date_create($this->data['details']['date']),'d-m-Y'); } } ?>
                                </span>
                            </div>

                            <div class="col-md-12">&nbsp;</div>

                            <div class="col-md-6">
                                <label class="mylabel">Name : </label>
                                <span class="myspan">
                                    <?php if (isset($this->data['details'])) { if (!empty($this->data['details']['name'])) { echo $this->data['details']['name']; } } ?>
                                </span>
                            </div>

                            <div class="col-md-6">
                                <label class="mylabel">Course : </label>
                                <span class="myspan">
                                    <?php if (isset($this->data['details'])) { if (!empty($this->data['details']['course_name'])) { echo $this->data['details']['course_name']; } } ?>
                                </span>
                            </div>
                        </div>
                    <?php
                    }
                }
                ?>
            </div>
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
    .myspan {
        padding-left: 5px;
        float: left;        
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

<?
include 'include/footer.php';
?>