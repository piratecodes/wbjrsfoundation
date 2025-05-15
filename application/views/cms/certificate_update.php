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
                                            <label for="exampleInputEmail1">Type : <span class="text-danger">*</span></label>
                                            <br>
                                            <input type="radio" name="type" value="Participation" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['type'] == 'Participation') { echo 'checked'; } } ?> onclick="handleClick(this)" > Participation Certificate
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="type" value="Completion" required="" <?php if (isset($this->data['details'])) { if ($this->data['details']['type'] == 'Completion') { echo 'checked'; } } ?> onclick="handleClick(this)" > Completion Certificate
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
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Date : <span class="text-danger">*</span></label>
                                            <input type="date" class="form-control" name="date" required="" id="date" value="<?php if (isset($this->data['details'])) { if (!empty($this->data['details']['date'])) { echo $this->data['details']['date']; } } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Certificate Number : <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="certificate_num" required="" id="certificate_num" placeholder="Certificate Number" value="<?php if (isset($this->data['details'])) { if (!empty($this->data['details']['certificate_num'])) { echo $this->data['details']['certificate_num']; } } ?>" onblur="certificate_chq()" <?php if (isset($this->data['details'])) { if (!empty($this->data['details']['certificate_num'])) { echo 'readonly'; } } ?> >

                                            <input type="hidden" name="old_certificate" id="old_certificate" value="<?php if (isset($this->data['details']) && !empty($this->data['details']['certificate_num'])) { echo $this->data['details']['certificate_num']; } ?>" >

                                            <span class="text-danger" id="certificate_error"></span>

                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Name : <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="name" required="" id="name" placeholder="Name" value="<?php if (isset($this->data['details'])) { if (!empty($this->data['details']['name'])) { echo $this->data['details']['name']; } } ?>" >
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Certificate Name : <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="course_name" required="" id="course_name" placeholder="Certificate Name" value="<?php if (isset($this->data['details'])) { if (!empty($this->data['details']['course_name'])) { echo $this->data['details']['course_name']; } } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Subject : <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="subject" required="" id="subject" placeholder="Subject" value="<?php if (isset($this->data['details'])) { if (!empty($this->data['details']['subject'])) { echo $this->data['details']['subject']; } } ?>" >
                                        </div>
                                    </div>
                                </div>

                                <?php 
                                $display = $display1 = 0;

                                if (isset($this->data['details'])) { if ($this->data['details']['type'] == 'Completion') { $display = 1; } }
                                if (isset($this->data['details'])) { if ($this->data['details']['type'] == 'Participation') { $display1 = 1; } }
                                ?>

                                <div class="row" id="marks_div" <?php if ($display == 0) { ?> style="display: none;" <?php } ?>  >
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Total Score : <span class="text-danger">*</span></label>
                                            <input type="number" step="0.01" class="form-control" name="total_score" <?php if (isset($this->data['details'])) { if ($this->data['details']['type'] == 'Completion') { echo 'required'; } } ?> id="total_score" placeholder="Total Score" value="<?php if (isset($this->data['details'])) { if (!empty($this->data['details']['total_score'])) { echo $this->data['details']['total_score']; } } ?>" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Marks Obtained : <span class="text-danger">*</span></label>
                                            <input type="number" step="0.01" class="form-control" name="marks_obtained" <?php if (isset($this->data['details'])) { if ($this->data['details']['type'] == 'Completion') { echo 'required'; } } ?> id="marks_obtained" placeholder="Marks Obtained" value="<?php if (isset($this->data['details'])) { if (!empty($this->data['details']['marks_obtained'])) { echo $this->data['details']['marks_obtained']; } } ?>" >
                                        </div>
                                    </div>
                                </div>     

                                <div class="row" id="loc_div" <?php if ($display1 == 0) { ?> style="display: none;" <?php } ?>  >
                                    <div class="col-md-12">                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Location : <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="location" <?php if (isset($this->data['details'])) { if ($this->data['details']['type'] == 'Completion') { echo 'required'; } } ?> id="location" placeholder="Location" value="<?php if (isset($this->data['details'])) { if (!empty($this->data['details']['location'])) { echo $this->data['details']['location']; } } ?>" >
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
function handleClick(option) 
{
    var currentValue = option.value;

    if (currentValue == 'Participation') {
        $('#marks_div').hide();
        $('#total_score').prop('required',false);
        $('#marks_obtained').prop('required',false);
        $('#total_score').val('');
        $('#marks_obtained').val('');

        $('#loc_div').show();
        $('#location').prop('required',true);
    }

    if (currentValue == 'Completion') {
        $('#marks_div').show();
        $('#total_score').prop('required',true);
        $('#marks_obtained').prop('required',true);

        $('#loc_div').hide();
        $('#location').prop('required',false);
        $('#location').val('');
    }
}
function form_validate() {

    $("#submit").html('Please wait...'); 
    $("#submit").attr('disabled', true); 

    return true;
}

function certificate_chq() {
    var certificate_num = $('#certificate_num').val();
    var old_certificate = $('#old_certificate').val();

    if (certificate_num != '') {
        if (certificate_num != old_certificate) {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                url:  "<?php echo base_url('Other_controller/certificate_chq/');?>"+certificate_num,
                type: 'GET',
                dataType: 'json',
                success: function (json) {
                    if(json.error == 'Yes')
                    {
                        $('#certificate_num').focus();
                        $('#certificate_error').html(json.mess);
                        $('#certificate_error').fadeIn();

                        return false;
                    }
                    else
                    {
                        $('#certificate_error').fadeOut();
                        return true;
                    }
                }
            });
        } else {
            return true;
        }
    }
}
</script>
<?php include "include/footer.php";?>
