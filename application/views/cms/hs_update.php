<?php 
include "include/header.php";
?>
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
                            <form class="form" method="post" onsubmit="return form_validate();" enctype="multipart/form-data">
                                <input type="hidden" class="txt_csrfname" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />                               

                                <div class="row">
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Title : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="title" placeholder="Title" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['title'])) { echo $this->data['details']['title']; } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Status : <span class="text-danger">*</span></label>
                                            <br>
                                            <input type="radio" name="status" value="Active" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['status'] == 'Active') { echo 'checked'; } } else { echo 'checked'; } ?> > Active 
                                            <?php if (isset($this->data['details'])) { ?>
                                                &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="status" value="Inactive" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['status'] == 'Inactive') { echo 'checked'; } } else { echo 'checked'; } ?> > Inactive 
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>

                                            
                                <div class="row">                                                   
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Image : <span class="text-danger"></span> </label>
                                            <?php if (isset($this->data['details']) && !empty($this->data['details']['image'])) { ?>
                                                <a href="<?php echo base_url('uploads/slider/'.$this->data['details']['image']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
                                            <?php } ?>
                                            <input type="file" name="image" class="form-control" accept="*/image" >                                            
                                        </div>
                                    </div>
                                </div>         
                                
                                <button type="submit" name="submit" id="submit" class="btn btn-success waves-effect waves-light m-r-10">Update</button>
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
