<?php 
include "include/header.php";
?>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3>
                                Upload Certificate Excel
                                <span style="float: right;">
                                    <a href="<?php echo base_url($this->setting['cms'].'certificate_csv/Participation'); ?>" class="btn btn-sm btn-info"> <i class="fa fa-download"></i> Participation Excel Format </a>
                                    <a href="<?php echo base_url($this->setting['cms'].'certificate_csv/Completion'); ?>" class="btn btn-sm btn-success"> <i class="fa fa-download"></i> Completion Excel Format </a>
                                </span>
                            </h3>
                            
                            <hr>
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
                                            <input type="radio" name="type" value="Participation" required="" > Participation Certificate
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="type" value="Completion" required="" > Completion Certificate
                                        </div>
                                    </div>
                                    <div class="col-md-6">                                          
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Date : <span class="text-danger">*</span></label>
                                            <input type="date" class="form-control" name="date" required="" id="date" >
                                        </div>
                                    </div>
                                </div>

                                <input type="hidden" name="ok" value="ok">

                                <div class="row">
                                    <div class="col-md-12">                  
                                        <div class="form-group">
                                            <label class="control-label " for="name">File : <small>(Please upload only .csv file)</small> : <span class="text-danger">*</span></label>
                                            <input type="file" name="upload_file" id="upload_file" class="form-control"/>
                                            <span id="file_error" class="text-danger"></span>
                                        </div>
                                    </div>                        
                                </div>                                               
                                
                                <button type="submit" name="submit" id="submit" class="btn btn-success waves-effect waves-light m-r-10">Update</button>
                            </form>

                            <?php if(isset($_SESSION['k_arr'])) { ?>
                                <hr>
                            <div class="card-header">
                                <h3 class="card-title">
                                    UPLOAD RESULT
                                    <a href="<?php echo base_url($this->setting['cms'].'certificate_csv_delete'); ?>" style="float: right;" class="btn btn-sm btn-danger"> <i class="fa fa-trash"></i>  Delete Result </a>
                                </h3>
                            </div>

                            <div class="card-body">
                              <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                  <tr>
                                    <th>Sr.No.</th>
                                    <th>Certificate No.</th>
                                    <th>Name</th>                                        
                                    <th>Certifcate Name</th>
                                    <th>Subject</th>                              
                                    <th>Result</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <?php
                                  $c = 0;
                                  foreach ($_SESSION['k_arr'] as $key1 => $value1) 
                                  {
                                    if($value1 != '')
                                    {
                                      $c++;
                                  ?>
                                    <tr>
                                      <td><?=$c?></td>
                                      <td><?=$value1['certificate_num']?></td>
                                      <td><?=$value1['name']?></td>
                                      <td><?=$value1['course_name']?></td>
                                      <td><?=$value1['subject']?></td>
                                      <td>
                                        <?
                                        if ($value1['R Status'] == 'success') {
                                          echo '<span class="badge badge-success">'.$value1['Remarks'].'</span>';
                                        } elseif ($value1['R Status'] == 'warning') {
                                          echo '<span class="badge badge-warning">'.$value1['Remarks'].'</span>';
                                        } elseif ($value1['R Status'] == 'danger') {
                                          echo '<span class="badge badge-danger">'.$value1['Remarks'].'</span>';
                                        } ?>                                                
                                      </td>
                                    </tr>
                                  <?php } } ?>
                                </tbody>
                              </table>
                            </div>
                          <?php } ?>
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
