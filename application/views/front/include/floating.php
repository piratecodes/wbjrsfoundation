<!-- float buttons -->

<a class="btn book-now desktop open-datepicker-popup" title="Teach With Us" data-toggle="modal" data-target="#myModal-teacher">Teach With Us</a>

<div id="myModal-teacher" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="post" onsubmit="return teacher_form()" enctype="multipart/form-data" action="<?php echo base_url('request_teacher_submit'); ?>" >
                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />

                <div class="modal-header">                                              
                    <h4 class="modal-title" id="myModalLabel">Teach With Us</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body"> 

                    <?php 
                    if(!empty($this->session->flashdata('msg2'))) :
                    $text =  $this->session->flashdata('msg2');
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
                            <label>Subject : <span class="text-danger" >*</span> </label> <br>
                            <input type="text" name="subject" class="form-control" placeholder="Subject" required="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <label>Academic Background Details : <span class="text-danger" >*</span> </label> <br>
                            <textarea class="form-control" required="" name="skill" placeholder="Academic Background Details"></textarea>
                        </div>
                    </div>
                    <br>
                </div>
                <div class="modal-footer">
                    <input type="submit" name="submit" id="submit_teacher" class="btn btn-success" value="Submit" >
                    <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<a class="btn book-now2 desktop open-datepicker-popup" title="Career Counselling" data-toggle="modal" data-target="#myModal-career">Career Counselling</a>

<div id="myModal-career" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="post" onsubmit="return teacher_form()" enctype="multipart/form-data" action="<?php echo base_url('request_career_submit'); ?>" >
                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />

                <div class="modal-header">                                              
                    <h4 class="modal-title" id="myModalLabel">Career Counselling</h4>
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
                            <label>Academic Details : <span class="text-danger" >*</span> </label> <br>
                            <input type="text" name="details" class="form-control" placeholder="Academic Details" required="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <label>Any Special Query : <span class="text-danger" ></span> </label> <br>
                            <input type="text" name="query" class="form-control" placeholder="Any Special Query">
                        </div>
                    </div>
                    <br>
                </div>
                <div class="modal-footer">
                    <input type="submit" name="submit" id="submit_career" class="btn btn-success" value="Submit" >
                    <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>


<div class="scroll"></div>

<script>
    $(window).on('load', function() {
        $('#myModal').modal('show');
    });

    function callback_form() {
        $("#submit").html('Please wait...'); 
        $("#submit").attr('disabled', true); 

        return true;
    }

    function teacher_form() {
        $("#submit_teacher").html('Please wait...'); 
        $("#submit_teacher").attr('disabled', true); 

        return true;
    }

    function career_form() {
        $("#submit_career").html('Please wait...'); 
        $("#submit_career").attr('disabled', true); 

        return true;
    }
</script>

<style>
.scroll {
  p {
    color: #fff;
    font-size: 1.5rem;
  }
}

.btn.book-now {
  background: #305199;
  border-radius: 0;
  color: white;
  display:inline-block;
  font-size: 1rem;
  height: 30px;
  line-height: 20px;
  position: fixed;
  right: 0;
  text-align: center;
  text-decoration: none;
  text-transform: uppercase;
  -moz-transform:rotate(-90deg);
  -ms-transform:rotate(-90deg);
  -o-transform:rotate(-90deg);
  -webkit-transform:rotate(-90deg);
  transform-origin: bottom right;
  width: 150px;
  z-index: 2;
  /* Hover styles, 
  media queries */
}

.btn.book-now2 {
  background: green;
  border-radius: 0;
  color: white;
  display:inline-block;
  font-size: 1rem;
  height: 30px;
  line-height: 20px;
  position: fixed;
  right: 0;
  text-align: center;
  text-decoration: none;
  text-transform: uppercase;
  -moz-transform:rotate(-90deg);
  -ms-transform:rotate(-90deg);
  -o-transform:rotate(-90deg);
  -webkit-transform:rotate(-90deg);
  transform-origin: bottom right;
  width: 200px;
  z-index: 2;
  margin-top: 200px;
  /* Hover styles, 
  media queries */
}
</style>