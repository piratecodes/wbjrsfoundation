<?php 
include "include/header.php";

$title1 = $title2 = $title3 = $content1 = $content2 = $content3 = $image1 = $image2 = $image3 = 0;

$path = 'uploads/pg/';

if (isset($this->data['details'])) {
    if ($this->data['details']['type'] == 'TI1') {
        $title1 = $image1 = 1;
    }
    if ($this->data['details']['type'] == 'TC1') {
        $title1 = $content1 = 1;
    }
    if ($this->data['details']['type'] == 'TC2') {
        $title1 = $content1 = 1;
        $title2 = $content2 = 1;
    }
    if ($this->data['details']['type'] == 'TC3') {
        $title1 = $content1 = 1;
        $title2 = $content2 = 1;
        $title3 = $content3 = 1;
    }

    if ($this->data['details']['type'] == 'TCI1') {
        $title1 = $content1 = $image1 = 1;
    }
    if ($this->data['details']['type'] == 'TCI2') {
        $title1 = $content1 = $image1 = 1;
        $title2 = $content2 = $image2 = 1;
    }
    if ($this->data['details']['type'] == 'TCI3') {
        $title1 = $content1 = $image1 = 1;
        $title2 = $content2 = $image2 = 1;
        $title3 = $content3 = $image3 = 1;
    }
}
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

                                <input type="hidden" name="cms" value="<?php if (isset($this->data['details'])) { echo $this->data['details']['cms']; } ?>">                             

                                <div class="row" <?php if ($title1 == 0) { ?> style="display: none;" <?php } ?> >
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Title-1 : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="title1" placeholder="Title-1" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['title1'])) { echo $this->data['details']['title1']; } ?>" >
                                        </div>
                                    </div>
                                </div>
                                            
                                <div class="row" <?php if ($image1 == 0) { ?> style="display: none;" <?php } ?>>                         
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Image-1 : <span class="text-danger"></span> </label>
                                            <?php if (isset($this->data['details']) && !empty($this->data['details']['image1'])) { ?>
                                                <a href="<?php echo base_url($path.$this->data['details']['image1']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
                                            <?php } ?>
                                            <input type="file" name="image1" class="form-control" accept="*/image" >                                            
                                        </div>
                                    </div>
                                </div>  

                                <div class="row" <?php if ($content1 == 0) { ?> style="display: none;" <?php } ?>>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="projectinput1">Content-1 : <span class="text-danger">*</span></label>
                                            <textarea name="content1" id="content1" class="form-control" placeholder="Content-1" ><?php if (isset($this->data['details']) && !empty($this->data['details']['content1'])) { echo $this->data['details']['content1']; } ?></textarea>
                                        </div>
                                    </div>
                                </div>    

                                <!-- 2 -->   

                                <div class="row" <?php if ($title2 == 0) { ?> style="display: none;" <?php } ?> >
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Title-2 : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="title2" placeholder="Title-2" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['title2'])) { echo $this->data['details']['title2']; } ?>" >
                                        </div>
                                    </div>
                                </div>
                                            
                                <div class="row" <?php if ($image2 == 0) { ?> style="display: none;" <?php } ?>>                         
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Image-2 : <span class="text-danger"></span> </label>
                                            <?php if (isset($this->data['details']) && !empty($this->data['details']['image2'])) { ?>
                                                <a href="<?php echo base_url($path.$this->data['details']['image2']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
                                            <?php } ?>
                                            <input type="file" name="image2" class="form-control" accept="*/image" >                                            
                                        </div>
                                    </div>
                                </div>  

                                <div class="row" <?php if ($content2 == 0) { ?> style="display: none;" <?php } ?>>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="projectinput1">Content-2 : <span class="text-danger">*</span></label>
                                            <textarea name="content2" id="content2" class="form-control" placeholder="Content-2" ><?php if (isset($this->data['details']) && !empty($this->data['details']['content2'])) { echo $this->data['details']['content2']; } ?></textarea>
                                        </div>
                                    </div>
                                </div>    

                                <!-- 3 -->

                                <div class="row" <?php if ($title3 == 0) { ?> style="display: none;" <?php } ?> >
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Title-3 : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="title3" placeholder="Title-3" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['title3'])) { echo $this->data['details']['title3']; } ?>" >
                                        </div>
                                    </div>
                                </div>
                                            
                                <div class="row" <?php if ($image3 == 0) { ?> style="display: none;" <?php } ?>>                         
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Image-3 : <span class="text-danger"></span> </label>
                                            <?php if (isset($this->data['details']) && !empty($this->data['details']['image3'])) { ?>
                                                <a href="<?php echo base_url($path.$this->data['details']['image3']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
                                            <?php } ?>
                                            <input type="file" name="image3" class="form-control" accept="*/image" >                                            
                                        </div>
                                    </div>
                                </div>  

                                <div class="row" <?php if ($content3 == 0) { ?> style="display: none;" <?php } ?>>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="projectinput1">Content-3 : <span class="text-danger">*</span></label>
                                            <textarea name="content3" id="content3" class="form-control" placeholder="Content-3" ><?php if (isset($this->data['details']) && !empty($this->data['details']['content3'])) { echo $this->data['details']['content3']; } ?></textarea>
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
    CKEDITOR.replace( 'content1' );
    CKEDITOR.replace( 'content2' );
    CKEDITOR.replace( 'content3' );
</script>
<script> 
function form_validate() {

    $("#submit").html('Please wait...'); 
    $("#submit").attr('disabled', true); 

    return true;
}
</script>
<?php include "include/footer.php";?>
