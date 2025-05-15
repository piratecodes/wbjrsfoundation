<?php 
include "include/header.php";

$value = $this->data['details']; 
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

                            <div class="row">
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">REFERENCE NO. : <span class="text-danger"></span></label>
                                        <?php echo $value['regn_no']; ?>
                                    </div>
                                </div>  
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">DATE : <span class="text-danger"></span></label>
                                        <?php echo date_format(date_create($value['date']),'d-m-Y'); ?>
                                    </div>
                                </div>                                    
                            </div>

                                        
                            <div class="row"> 
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">COURSE : <span class="text-danger"></span></label>
                                        <?php
                                        if (!empty($value['course_id'])) {
                                            //$course = $this->Cms_model->course($value['course_id']);

                                            //echo $course['course_name'];
                                            
                                            echo $value['course_id'];
                                        } 
                                        ?>
                                    </div>
                                </div>                                                   
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">STATUS : <span class="text-danger"></span> </label>
                                        <?php
                                        if ($value['status'] == 'Rejected') {
                                            echo '<span class="badge badge-danger">Rejected</span>';
                                        }
                                        if ($value['status'] == 'Approved') {
                                            echo '<span class="badge badge-success">Approved</span>';
                                        } 
                                        if ($value['status'] == 'Pending') {
                                            echo '<span class="badge badge-warning">Pending</span>';
                                        }                                                
                                        ?>                                     
                                    </div>
                                </div>
                            </div> 

                            <div class="row">
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">NAME : <span class="text-danger"></span></label>
                                        <?php echo $value['name']; ?>
                                    </div>
                                </div>
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">DATE OF BIRTH : <span class="text-danger"></span></label>
                                        <?php 
                                        if (!empty($value['dob'])) { 
                                            echo $value['dob']; 

                                            $date1=date_create($value['dob']);
                                            $date2=date_create(date('Y-m-d'));
                                            $diff=date_diff($date1,$date2);
                                            $age = $diff->y;

                                            echo ' ('.$age.' years)';
                                        }
                                        ?>
                                    </div>
                                </div>
                            </div> 

                            <div class="row">
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">MOBILE NUMBER : <span class="text-danger"></span></label>
                                        <?php if (!empty($value['mobile'])) { echo $value['mobile']; } ?>
                                    </div>
                                </div>
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Resume : <span class="text-danger"></span></label>
                                        <?php if (!empty($value['Resume'])) { ?>
                                            <a href="<?php echo base_url('uploads/Resume/'.$value['Resume']); ?>" class="badge badge-info" target="_blank" > View </a>
                                        <?php } else { echo '---'; } ?>
                                    </div>
                                </div>
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">EMAIL : <span class="text-danger"></span></label>
                                        <?php if (!empty($value['email'])) { echo $value['email']; } ?>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">GENDER : <span class="text-danger"></span></label>
                                        <?php if (!empty($value['gender'])) { echo $value['gender']; } ?>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="projectinput1">QUALIFICATION : <span class="text-danger"></span></label>
                                        <?php if (!empty($value['qualification'])) { echo $value['qualification']; } ?>
                                    </div>
                                </div>                                
                            </div>

                            <div class="row">
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">JOB STATUS : <span class="text-danger"></span></label>
                                        <?php if (!empty($value['job_status'])) { echo $value['job_status']; } ?>
                                    </div>
                                </div>
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">WORK EXPERIENCE : <span class="text-danger"></span></label>
                                        <?php if (!empty($value['work_experience'])) { echo $value['work_experience']; } ?>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="projectinput1">ADDRESS : <span class="text-danger"></span></label>
                                        <?php if (!empty($value['address'])) { echo $value['address']; } ?>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="projectinput1">STATE-DISTRICT : <span class="text-danger"></span></label>
                                        <?php 
                                        if (!empty($value['state'])) { echo $this->Other_model->get_state_name($value['state']).' - '; } 
                                        if (!empty($value['district'])) { echo $this->Other_model->get_district_name($value['district']); } 
                                        ?>
                                    </div>
                                </div>
                            </div>       
                                                        
                        </div>
                    </div>
                </div>
                <!-- /.row --> 
            </div>
        <!-- /#page-wrapper -->
    </div>
<!-- /#wrapper -->
<?php include "include/footer.php";?>
