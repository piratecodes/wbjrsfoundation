<?php include "include/header.php"; ?>
		
                <!-- .row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3>
                                <?php echo $this->title; ?> <?php if (isset($this->data['course_details'])) { echo $this->data['course_details']['course_name']; } ?>
                                <span style="float: right;">
                                    <a class="btn btn-xs btn-success" data-toggle="modal" data-target="#myModal-add" style="color: white;" title="Upload"> Add  </a>
                                </span>
                            </h3>

                            <div id="myModal-add" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form method="post" onsubmit="return form_validate1()" enctype="multipart/form-data" action="<?php echo base_url($this->setting['cms'].'course_review_add'); ?>" >
                                            <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />

                                            <div class="modal-header">                                              
                                                <h4 class="modal-title" id="myModalLabel">Add</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            </div>
                                            <div class="modal-body">  
                                                <input type="hidden" name="course_id" value="<?php if (isset($this->data['course_details'])) { echo $this->data['course_details']['c_id']; } ?>"> 

                                                <input type="hidden" name="admin_status" value="Approved">
                                                <input type="hidden" name="status" value="Active">                                       

                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <label>Name : <span class="text-danger" >*</span> </label> <br>
                                                        <input type="text" name="name" class="form-control" required="" placeholder="Name">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <label>Designation : <span class="text-danger" ></span> </label> <br>
                                                        <input type="text" name="designation" class="form-control" placeholder="Designation">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label>Email : <span class="text-danger" ></span> </label> <br>
                                                        <input type="email" name="email" class="form-control" placeholder="Email">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label>Date : <span class="text-danger" >*</span> </label> <br>
                                                        <input type="date" name="date" class="form-control" required="" value="<?php echo date('Y-m-d'); ?>">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label>Rating : <span class="text-danger" ></span> </label> <br>
                                                        <input type="number" name="rating" class="form-control" placeholder="Rating" min="1" max="5">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label>Image : <span class="text-danger" ></span> </label> <br>
                                                        <input type="file" name="image" class="form-control">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <label>Review : <span class="text-danger" >*</span> </label> <br>
                                                        <textarea class="form-control" required="" name="review" placeholder="Review" rows="5"></textarea>
                                                    </div>
                                                </div>
                                                <br>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="submit" name="submit" id="add" class="btn btn-success" value="Add" >
                                                <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Close</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <?php if(!empty($this->session->flashdata('msg'))){
                                $text =  $this->session->flashdata('msg');
                                ?>
                                <div class="alert alert-<?php echo $text['t']?> alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <?php echo $text['mess']?>
                                </div>
                            <?php } ?>

                            <div class="table-responsive">
                                <table id="myTable" class="table table-striped">
                                    <thead>
                                        <tr>
                                        	<th>S.N.</th>
                                            <th>Date</th>
                                            <th>Course</th>
                                        	<th>Name</th> 
                                            <th>Email</th>
                                            <th>Rating</th>
                                            <th>Review</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php 
                                    	$c=0; 
                                    	foreach ($this->data['details'] as $key => $value) : 
                                    		$c++; 
                                    		$id = $value['cr_id']; 
                                        ?>
                                        <tr>
                                        	<td > <?php echo $c; ?>. </td>
                                            <td> <?php echo date_format(date_create($value['date']),'d-m-Y'); ?> </td>
                                            <td>
                                                <?php
                                                if (!empty($value['course_id'])) {
                                                    $course = $this->Cms_model->course($value['course_id']);
                                                    echo $course['course_name'];
                                                }
                                                ?>
                                            </td>
                                        	<td> <?php echo $value['name']; ?></td>
                                            <td> <?php echo $value['email']; ?></td>
                                            <td> <?php echo $value['rating']; ?></td>
                                            <td> <?php echo $value['review']; ?></td>
                                            <td>
                                                <?php
                                                if ($value['status'] == 'Inactive') {
                                                    echo '<span class="badge badge-danger">Inactive</span>';
                                                }
                                                if ($value['status'] == 'Active') {
                                                    echo '<span class="badge badge-success">Active</span>';
                                                }                                                
                                                ?>
                                            </td>                                            
                                            <td > 
                                                <a href="#defaultModal" data-toggle="modal" data-target="#defaultModal-Edit<?php echo $id; ?>" class="btn btn-xs btn-warning" style="background-color:red;" title="Edit">
                                                    Edit </a>

                                                <div class="modal fade" id="defaultModal-Edit<?php echo $id; ?>" tabindex="-1" role="dialog">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <form method="post" onsubmit="return form_validate2(<?php echo $id; ?>);" enctype="multipart/form-data" action="<?php echo base_url($this->setting['cms'].'course_review_edit'); ?>" >
                                                                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />

                                                                <input type="hidden" name="course_id" value="<?php if (!empty($value['course_id'])) { echo $value['course_id']; } ?>">

                                                                <input type="hidden" name="cr_id" value="<?php echo $id; ?>"> 

                                                                <input type="hidden" name="admin_status" value="Approved">

                                                                <div class="modal-header">
                                                                    <h4 class="title" id="defaultModalLabel"> Edit </h4>
                                                                </div>
                                                                <div class="modal-body"> 
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <label>Name : <span class="text-danger" >*</span> </label> <br>
                                                                            <input type="text" name="name" class="form-control" required="" placeholder="Name" value="<?php if (!empty($value['name'])) { echo $value['name']; } ?>" >
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label>Status : <span class="text-danger" >*</span> </label> <br>
                                                                            <input type="radio" name="status" value="Active" required="" <?php if ($value['status'] == 'Active') { echo 'checked'; } ?> > Active 
                                                                            &nbsp;&nbsp;&nbsp;
                                                                            <input type="radio" name="status" value="Inactive" required="" <?php if ($value['status'] == 'Inactive') { echo 'checked'; } ?> > Inactive 
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <label>Designation : <span class="text-danger" ></span> </label> <br>
                                                                            <input type="text" name="designation" class="form-control" placeholder="Designation" value="<?php if (!empty($value['designation'])) { echo $value['designation']; } ?>" >
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <label>Email : <span class="text-danger" ></span> </label> <br>
                                                                            <input type="email" name="email" class="form-control" placeholder="Email" value="<?php if (!empty($value['email'])) { echo $value['email']; } ?>">
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label>Date : <span class="text-danger" >*</span> </label> <br>
                                                                            <input type="date" name="date" class="form-control" required="" value="<?php if (!empty($value['date'])) { echo $value['date']; } ?>">
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <label>Rating : <span class="text-danger" ></span> </label> <br>
                                                                            <input type="number" name="rating" class="form-control" placeholder="Rating" min="1" max="5" value="<?php if (!empty($value['rating'])) { echo $value['rating']; } ?>">
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label>Image : <span class="text-danger" ></span> </label> 
                                                                            <?php if (!empty($value['image'])) { ?>
                                                                                <a href="<?php echo base_url('uploads/review/'.$value['image']); ?>" target="_blank" class="badge badge-info" style="float: right;" > View </a>
                                                                            <?php } ?>
                                                                            <br>
                                                                            <input type="file" name="image" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <label>Review : <span class="text-danger" >*</span> </label> <br>
                                                                            <textarea class="form-control" required="" name="review" placeholder="Review" rows="5"><?php if (!empty($value['review'])) { echo $value['review']; } ?></textarea>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <input type="submit" name="submit" id="submit_<?php echo $id; ?>" value="Save" class="btn btn-success">
                                                                    <button type="button" class="btn btn-danger btn-simple waves-effect" data-dismiss="modal">CLOSE</button>
                                                                </div>
                                                            </form>                                                              
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    	<?php endforeach; ?>                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                                        
                </div>
                <!-- /.row -->
                
            </div>
<script>

function form_validate1() {
    var submit = '#add';
    $(submit).html('Please wait...'); 
    $(submit).attr('disabled', true); 

    return true;
}

function form_validate2(v) {
    var submit = '#submit_'+v;
    $(submit).html('Please wait...'); 
    $(submit).attr('disabled', true); 

    return true;
}
</script>          
<?php include "include/footer.php";?>