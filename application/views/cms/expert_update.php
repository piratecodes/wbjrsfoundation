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
                                            <label for="exampleInputEmail1">Name : <span class="text-danger">*</span></label>
                                            <input type="text" name="name" class="form-control" required="" placeholder="Name" value="<?php if (isset($this->data['details'])) { echo $this->data['details']['name']; }?>">
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Designation : <span class="text-danger">*</span></label>
                                            <input type="text" name="designation" class="form-control" required="" placeholder="Designation" value="<?php if (isset($this->data['details'])) { echo $this->data['details']['designation']; }?>">
                                        </div>
                                    </div>
                                </div>                               

                                <div class="row">                                    
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Gender : <span class="text-danger">*</span></label>
                                            <br>
                                            <input type="radio" name="gender" value="Male" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['gender'] == 'Male') { echo 'checked'; } } else { echo 'checked'; } ?> > Male 
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="gender" value="Female" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['gender'] == 'Female') { echo 'checked'; } } ?> > Female 
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Status : <span class="text-danger">*</span></label>
                                            <br>
                                            <input type="radio" name="status" value="Active" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['status'] == 'Active') { echo 'checked'; } } else { echo 'checked'; } ?> > Active 
                                            <?php if (isset($this->data['details'])) { ?>
                                                &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="status" value="Inactive" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['status'] == 'Inactive') { echo 'checked'; } } ?> > Inactive 
                                            <?php } ?>
                                        </div>
                                    </div>                                    
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Display Order : <span class="text-danger">*</span></label>
                                            <input type="number" name="order_no" class="form-control" required="" placeholder="Display Order" value="<?php if (isset($this->data['details'])) { echo $this->data['details']['order_no']; }?>" min="1">
                                        </div>
                                    </div>
                                </div>
                                <div class="row"> 
                                    <?php
                                    $arr = array();

                                    if (isset($this->data['details'])) {
                                        if (!empty($this->data['details']['type'])) {
                                            $arr = explode('~', $this->data['details']['type']);
                                        }
                                    }
                                    ?>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Type : <span class="text-danger">*</span></label>
                                            <br>
                                            <input type="checkbox" name="type[]" value="Expert" <?php if (in_array("Expert", $arr)) { echo 'checked'; } ?> >
                                            Expert
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="checkbox" name="type[]" value="Team" <?php if (in_array("Team", $arr)) { echo 'checked'; } ?> >
                                            Team
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="checkbox" name="type[]" value="rnd" <?php if (in_array("rnd", $arr)) { echo 'checked'; } ?> >
                                            Rnd
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="checkbox" name="type[]" value="GovBody" <?php if (in_array("GovBody", $arr)) { echo 'checked'; } ?> >
                                            Govbody
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="checkbox" name="type[]" value="Advisory" <?php if (in_array("Advisory", $arr)) { echo 'checked'; } ?> >
                                            Advisory Body
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="checkbox" name="type[]" value="Global" <?php if (in_array("Global", $arr)) { echo 'checked'; } ?> >
                                            Global Partners
                                        </div>
                                    </div>   
                                </div>
                                <div class="row">      
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Image : <span class="text-danger"></span> </label>
                                            <?php if (isset($this->data['details']) && !empty($this->data['details']['image'])) { ?>
                                                <a href="<?php echo base_url('uploads/expert/'.$this->data['details']['image']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
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
