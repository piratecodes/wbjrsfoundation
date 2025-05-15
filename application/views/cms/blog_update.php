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
                                            <label for="exampleInputEmail1">Title : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="title" placeholder="Title" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['title'])) { echo $this->data['details']['title']; } ?>" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Image : <span class="text-danger"></span> </label>
                                            <?php if (isset($this->data['details']) && !empty($this->data['details']['image'])) { ?>
                                                <a href="<?php echo base_url('uploads/blogs/'.$this->data['details']['image']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
                                            <?php } ?>
                                            <input type="file" name="image" class="form-control" accept="*/image" >                                            
                                        </div>
                                    </div>
                                </div>

                                            
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="projectinput1">Description : <span class="text-danger">*</span></label>
                                            <textarea name="description" id="description" class="form-control" placeholder="Overview" ><?php if (isset($this->data['details']) && !empty($this->data['details']['description'])) { echo $this->data['details']['description']; } ?></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label>Url Slug : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="slug" placeholder="Slug" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['slug'])) { echo $this->data['details']['slug']; } ?>" />
                                        </div>
                                    </div>
                                </div>
                                
                                <p class="mt-5 mb-3 font-weight-bold text-center">Seo Entity</p>
                                <div class="row">
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label>Meta Title : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="meta_title" placeholder="Meta Title" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['meta_title'])) { echo $this->data['details']['meta_title']; } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label>Meta Keyword : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="meta_keyword" placeholder="Meta Keyword" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['meta_keyword'])) { echo $this->data['details']['meta_keyword']; } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label>Meta Description : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="meta_description" placeholder="Meta Description" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['meta_description'])) { echo $this->data['details']['meta_description']; } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label>Canonical Url : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="canonical_url" placeholder="Canonical Url" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['canonical_url'])) { echo $this->data['details']['canonical_url']; } ?>" >
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

    CKEDITOR.replace('description' );

// function form_validate() {

//     $("#submit").html('Please wait...'); 
//     $("#submit").attr('disabled', true); 

//     return true;
// }
</script>
<?php include "include/footer.php";?>
