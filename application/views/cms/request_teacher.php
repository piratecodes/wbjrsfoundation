<?php include "include/header.php"; ?>
		
                <!-- .row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3>
                                <?php echo $this->title; ?>
                            </h3>
                            <?php if(!empty($this->session->flashdata('msg'))){
                                $text =  $this->session->flashdata('msg');
                                ?>
                                <div class="alert alert-<?php echo $text['t']?> alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <?php echo $text['mess']?>
                                </div>
                            <?php } ?>

                            <div>
                                <form class="form-horizontal form-label-left" method="post" enctype="multipart/form-data" >
                                    <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />
                                    <input type="hidden" name="data" value="ok_text">
                                    <div class="item form-group row">
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label  for="hod">From Date :</label>                                    
                                                    <input type="date" name="dt1" class="form-control" required="required" value="<?php if (isset($_SESSION['dt1'])) { echo $_SESSION['dt1']; } ?>"/>
                                                </div>
                                                <div class="col-md-5">
                                                    <label for="hod">Till Date :</label>                                    
                                                    <input type="date" name="dt2" class="form-control" required="required" value="<?php if (isset($_SESSION['dt2'])) { echo $_SESSION['dt2']; } ?>" />
                                                </div>
                                                <div class="col-md-1">
                                                    <label for="hod">&nbsp;</label>    <br>
                                                    <input type="submit" id="submit" name="submit" class="btn btn-success" value="Search">
                                                </div>
                                            </div>
                                        </div>                                                          
                                    </div>
                                </form>                  
                            </div>
                            <hr> 

                            <div class="table-responsive">
                                <table id="myTable" class="table table-striped">
                                    <thead>
                                        <tr>
                                        	<th>S.N.</th>
                                            <th>Date</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Subject</th>
                                            <th>Academic Background</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php 
                                    	$c=0; 
                                    	foreach ($this->data['details'] as $key => $value) : 
                                    		$c++; 
                                    		$id = base64_encode($value['id']); 
                                        ?>
                                        <tr>
                                        	<td > <?php echo $c; ?>. </td>
                                            <td> <?php echo date_format(date_create($value['dt1']),'d-m-Y'); ?> </td>
                                        	<td> <?php echo $value['name']; ?></td>
                                            <td> <?php echo $value['email']; ?></td>
                                            <td> <?php echo $value['mobile']; ?></td>   
                                            <td> <?php echo $value['subject']; ?></td>   
                                            <td> <?php echo $value['skill']; ?></td>
                                            <td>
                                                <?php if ($value['status'] == 'Pending') { ?>
                                                    <a href="<?php echo base_url($this->setting['cms'].'request_teacher_mark/'.$id); ?>" class="btn btn-xs btn-danger" > Read </a>
                                                <?php } ?>

                                                <a href="<?php echo base_url($this->setting['cms'].'request_teacher_delete/'.$id); ?>" class="btn btn-sm btn-danger" title="Delete" onclick="return confirm('Are you sure to delete it?');" > <i class="fa fa-trash"></i> Delete </a>
                                            </td>                                               
                                            <!-- <td > 
                                                <a href="#defaultModal" data-toggle="modal" data-target="#defaultModal-Edit<?php echo $id; ?>" class="btn btn-xs btn-warning" style="background-color:red;" title="Edit">
                                                    Edit </a>

                                                <div class="modal fade" id="defaultModal-Edit<?php echo $id; ?>" tabindex="-1" role="dialog">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <form method="post" onsubmit="return form_validate2(<?php echo $id; ?>);" enctype="multipart/form-data" action="<?php echo base_url($this->setting['cms'].'course_review_edit'); ?>" >
                                                                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />

                                                                <input type="hidden" name="id" value="<?php echo $id; ?>"> 

                                                                <input type="hidden" name="status" value="Success">

                                                                <div class="modal-header">
                                                                    <h4 class="title" id="defaultModalLabel"> Edit </h4>
                                                                </div>
                                                                <div class="modal-body"> 
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <label>Name : <span class="text-danger" >*</span> </label> <br>
                                                                            <input type="text" name="name" class="form-control" required="" placeholder="Name" value="<?php if (!empty($value['name'])) { echo $value['name']; } ?>" readonly="" >
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <label>Email : <span class="text-danger" ></span> </label> <br>
                                                                            <input type="email" name="email" class="form-control" placeholder="Email" value="<?php if (!empty($value['email'])) { echo $value['email']; } ?>" readonly="">
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label>Mobile : <span class="text-danger" ></span> </label> <br>
                                                                            <input type="text" name="mobile" class="form-control" placeholder="Mobile" value="<?php if (!empty($value['mobile'])) { echo $value['mobile']; } ?>" readonly="">
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <label>Remarks : <span class="text-danger" >*</span> </label> <br>
                                                                            <textarea class="form-control" required="" name="remarks" placeholder="Remarks" rows="5"><?php if (!empty($value['remarks'])) { echo $value['remarks']; } ?></textarea>
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
                                            </td> -->
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
function form_validate2(v) {
    var submit = '#submit_'+v;
    $(submit).html('Please wait...'); 
    $(submit).attr('disabled', true); 

    return true;
}
</script>          
<?php include "include/footer.php";?>