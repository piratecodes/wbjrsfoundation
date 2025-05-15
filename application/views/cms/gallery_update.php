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
                                            <label for="exampleInputEmail1">Album : <span class="text-danger"></span></label>
                                            <select class="form-control" required="" name="album">
                                                <option value=""> Please select </option>
                                                <?php foreach ($this->data['album'] as $key => $value) { ?>
                                                    <option value="<?php echo $value['ga_id']; ?>" <?php if (isset($this->data['details'])) { if ($this->data['details']['album'] == $value['ga_id']) { echo 'checked'; } } ?> > <?php echo $value['album_name']; ?> </option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
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
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Front Image : <span class="text-danger">*</span></label>
                                            <br>
                                            <input type="radio" name="front_img" value="Yes" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['front_img'] == 'Yes') { echo 'checked'; } } else { echo 'checked'; } ?> > Yes 
                                            <?php if (isset($this->data['details'])) { ?>
                                                &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="front_img" value="No" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['front_img'] == 'No') { echo 'checked'; } } else { echo 'checked'; } ?> > No 
                                            <?php } ?>
                                        </div>
                                    </div> 
                                </div>

                                            
                                <div class="row">                                                   
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Image : <span class="text-danger"></span> </label>
                                            <?php if (isset($this->data['details']) && !empty($this->data['details']['image'])) { ?>
                                                <a href="<?php echo base_url('uploads/gallery/'.$this->data['details']['image']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
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
