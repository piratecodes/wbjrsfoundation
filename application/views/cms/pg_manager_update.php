<?php 
include "include/header.php";

$path = 'uploads/pg/';

$name = $title = $content = $image = $attachment = $date = $status = 0;

$type = $this->data['type'];

if ($type == 'Accreditation' || $type == 'Appreciation' || $type == 'Authorization' ||  $type == 'Govt_pledge' || $type == 'Bulletins') {
    $image = 1;
    $title = 1;
    $status = 1;

    if ($type == 'Bulletins') {
        $date = 1;
    }
}

if ($type == 'Key_Facilities' || $type == 'Why_choose') {
    $title = $image = 1;

    if ($type == 'Why_choose') {
        $content = 1;
    }
}

if ($type == 'Olympiad') {
    $name = $title = $content = $image = $attachment = 1;
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

                                <input type="hidden" name="type" value="<?php echo $type; ?>">  
                                <input type="hidden" name="status" value="Active">                           

                                <div class="row" <?php if ($name == 0) { ?> style="display: none;" <? } ?> >
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Page Name : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="name" placeholder="Page Name" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['name'])) { echo $this->data['details']['name']; } ?>" >
                                        </div>
                                    </div>
                                </div>

                                <div class="row" <?php if ($status == 0) { ?> style="display: none;" <? } ?> >
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Status : <span class="text-danger"></span></label>
                                            <br>
                                            <input type="radio" name="status" value="Active" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['status'] == 'Active') { echo 'checked'; } } else { echo 'checked'; } ?> > Active 
                                            <?php if (isset($this->data['details'])) { ?>
                                                &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="status" value="Inactive" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['status'] == 'Inactive') { echo 'checked'; } } else { echo 'checked'; } ?> > Inactive 
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" <?php if ($title == 0) { ?> style="display: none;" <? } ?> >
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Title : <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="title" placeholder="Title" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['title'])) { echo $this->data['details']['title']; } ?>" >
                                        </div>
                                    </div>
                                </div>

                                <div class="row" <?php if ($date == 0) { ?> style="display: none;" <? } ?> >
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Title : <span class="text-danger"></span></label>
                                            <input type="date" class="form-control" name="date" placeholder="Date" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['date'])) { echo $this->data['details']['date']; } ?>" >
                                        </div>
                                    </div>
                                </div>
                                            
                                <div class="row" <?php if ($image == 0) { ?> style="display: none;" <? } ?>>                         
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Image : <span class="text-danger"></span> </label>
                                            <?php if (isset($this->data['details']) && !empty($this->data['details']['image'])) { ?>
                                                <a href="<?php echo base_url($path.$this->data['details']['image']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
                                            <?php } ?>
                                            <input type="file" name="image" class="form-control" accept="*/image" >              
                                        </div>
                                    </div>
                                </div>

                                <div class="row" <?php if ($attachment == 0) { ?> style="display: none;" <? } ?>>                         
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Attachment : <span class="text-danger"></span> </label>
                                            <?php if (isset($this->data['details']) && !empty($this->data['details']['attachment'])) { ?>
                                                <a href="<?php echo base_url($path.$this->data['details']['attachment']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
                                            <?php } ?>
                                            <input type="file" name="attachment" class="form-control" accept="application/pdf" >              
                                        </div>
                                    </div>
                                </div>  

                                <div class="row" <?php if ($content == 0) { ?> style="display: none;" <? } ?>>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="projectinput1">Content : <span class="text-danger">*</span></label>
                                            <textarea name="content" id="content" class="form-control" placeholder="Content" ><?php if (isset($this->data['details']) && !empty($this->data['details']['content'])) { echo $this->data['details']['content']; } ?></textarea>
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
    CKEDITOR.replace( 'content' );
</script>
<script> 
function form_validate() {

    $("#submit").html('Please wait...'); 
    $("#submit").attr('disabled', true); 

    return true;
}
</script>
<?php include "include/footer.php";?>
