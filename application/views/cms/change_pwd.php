<?php include "include/header.php";?>

       
                <!-- .row -->
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <div class="white-box">
                            <?php if(!empty($this->session->flashdata('msg'))){
                                $text =  $this->session->flashdata('msg');
                                ?>
                                <div class="alert alert-<?php echo $text['t']?> alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <?php echo $text['mess']?>
                                </div>
                            <?php } ?>
                            <form class="form" method="post" onsubmit="return form_validate();">
                                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />
                                <div class="form-group row">
                                    <?php $error = form_error("old_pwd", "<span class='text-danger'>","</span>");?>
                                    <label for="example-text-input" class="form-label">Old Password :</label>                                   
                                    <input type="text" class="form-control" id="old_pwd" name="old_pwd" placeholder="Old Password" required="required" value="<?php echo set_value("old_pwd");?>" >
                                    <?php echo $error;?>                                   
                                </div>

                                <div class="form-group row">
                                    <?php $error = form_error("new_pwd", "<span class='text-danger'>","</span>");?>
                                    <label for="example-text-input" class="form-label">New Password :</label>
                                    <input type="text" class="form-control" id="new_pwd" name="new_pwd" placeholder="New Password" required="required" value="<?php echo set_value("new_pwd");?>" >
                                    <?php echo $error;?>
                                </div>

                                <div class="form-group row">
                                    <?php $error = form_error("conf_pwd", "<span class='text-danger'>","</span>");?>
                                    <label for="example-text-input" class="form-label" id="example-text-input">Confirm Password :</label>
                                    <input type="text" class="form-control" id="conf_pwd" name="conf_pwd" placeholder="Confirm Password" required="required" value="<?php echo set_value("conf_pwd");?>" >
                                    <?php echo $error;?>
                                </div>
                                
                                <button type="submit" name="submit" id="submit" class="btn btn-success waves-effect waves-light m-r-10">Save</button>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.row --> 
            </div>
        <!-- /#page-wrapper -->
    </div>
<!-- /#wrapper -->
<script>  
  function form_validate() {
    $("#submit").html('Please wait...'); 
    $("#submit").attr('disabled', true); 

    return true;
  }
</script>
<?php include "include/footer.php";?>
