<?php 
include "include/header.php";
?>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
                                            <label for="exampleInputEmail1">Category : <span class="text-danger">*</span> </label>
                                            <select class="form-control" name="cat_id" id="cat_id" onchange="get_subcat();">
                                                <option value=""> Please choose </option>
                                                <?php foreach ($this->data['cat_list'] as $key => $value) { ?>
                                                    <option value="<?php echo $value['cc_id']; ?>" <?php if (isset($this->data['details'])) { if ($this->data['details']['cat_id'] == $value['cc_id']) { echo 'selected'; } } ?> > <?php echo $value['cat_name']; ?> </option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">                  
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Sub-Category : <span class="text-danger"></span> </label>
                                            <select class="form-control" name="subcat_id" id="subcat_id">
                                                <option value=""> Please choose </option>
                                                <?php 
                                                if (isset($this->data['details'])) {
                                                    $subcat = $this->Cms_model->course_category('', '', '', $this->data['details']['cat_id']);

                                                    if (!empty($subcat)) {
                                                foreach ($subcat as $key => $value) { ?>
                                                    <option value="<?php echo $value['cc_id']; ?>" <?php if (isset($this->data['details'])) { if ($this->data['details']['subcat_id'] == $value['cc_id']) { echo 'selected'; } } ?> > <?php echo $value['cat_name']; ?> </option>
                                                <?php } } }  ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Name : <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="course_name" placeholder="Name" required="" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['course_name'])) { echo $this->data['details']['course_name']; } ?>" >
                                        </div>
                                    </div>                                    
                                </div>

                                            
                                <div class="row"> 
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
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Image : <span class="text-danger"></span> </label>
                                            <?php if (isset($this->data['details']) && !empty($this->data['details']['image'])) { ?>
                                                <a href="<?php echo base_url('uploads/course/'.$this->data['details']['image']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
                                            <?php } ?>
                                            <input type="file" name="image" class="form-control" accept="*/image" >                                            
                                        </div>
                                    </div>
                                </div> 

                                <div class="row">
                                    <div class="col-md-4">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Duration : <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="duration" placeholder="Duration" required="" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['duration'])) { echo $this->data['details']['duration']; } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-4">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Fees : <span class="text-danger">*</span></label>
                                            <input type="number" class="form-control" name="fees" placeholder="Fees" required="" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['fees'])) { echo $this->data['details']['fees']; } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-4">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Eligibility : <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="eligibility" placeholder="Eligibility" required="" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['eligibility'])) { echo $this->data['details']['eligibility']; } ?>" >
                                        </div>
                                    </div>
                                </div> 

                                <div class="row">
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Lessons : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="lessons" placeholder="Lessons" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['lessons'])) { echo $this->data['details']['lessons']; } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Topics : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="topics" placeholder="Topics" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['topics'])) { echo $this->data['details']['topics']; } ?>" >
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Skill Level : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="skill_level" placeholder="Skill Level" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['skill_level'])) { echo $this->data['details']['skill_level']; } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Language : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="language" placeholder="Language" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['language'])) { echo $this->data['details']['language']; } ?>" >
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="projectinput1">Overview : <span class="text-danger">*</span></label>
                                            <textarea name="overview" id="overview" class="form-control" placeholder="Overview" ><?php if (isset($this->data['details']) && !empty($this->data['details']['overview'])) { echo $this->data['details']['overview']; } ?></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="projectinput1">Curriculam : <span class="text-danger">*</span></label>
                                            <textarea name="curriculam" id="curriculam" class="form-control" placeholder="Curriculam" ><?php if (isset($this->data['details']) && !empty($this->data['details']['curriculam'])) { echo $this->data['details']['curriculam']; } ?></textarea>
                                        </div>
                                    </div>
                                </div> 

                                <div class="row">
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Meta Title : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="meta_title" placeholder="Meta Title" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['meta_title'])) { echo $this->data['details']['meta_title']; } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Meta Keywords : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="meta_keyword" placeholder="Meta Keywords" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['meta_keyword'])) { echo $this->data['details']['meta_keyword']; } ?>" >
                                        </div>
                                    </div>
                                </div> 

                                <div class="row">
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Meta Description : <span class="text-danger"></span></label>
                                            <textarea class="form-control" name="meta_description" placeholder="Meta Description"><?php if (isset($this->data['details']) && !empty($this->data['details']['meta_description'])) { echo $this->data['details']['meta_description']; } ?></textarea>
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
    CKEDITOR.replace( 'overview' );
    CKEDITOR.replace( 'curriculam' );
</script>
<script> 
function form_validate() {

    $("#submit").html('Please wait...'); 
    $("#submit").attr('disabled', true); 

    return true;
}

function get_subcat() {
    var cat_id = $('#cat_id').val();

    if (cat_id != '') {        

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            url: "<?php echo base_url('Other_controller/get_subcat/')?>"+cat_id,
            type: "GET",
            dataType: "json",
            success: function(json)
            {               
                var options = '';
                options +='<option value="">Select Sub-Category</option>';
                for (var i = 0; i < json.length; i++) {
                    options += '<option value="' + json[i].cc_id + '">' + json[i].cat_name + '</option>';
                }
                $("#subcat_id").html(options);

                return true;
            }
        }); 
    }
}
</script>
<?php include "include/footer.php";?>
