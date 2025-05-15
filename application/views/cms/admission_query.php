<?php include "include/header.php"; ?>
		
                <!-- .row -->
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
                                            <th>Q.No.</th>
                                            <th>Course</th>
                                            <th>Name</th>
                                            <th>Contact</th>
                                            <!-- <th>Subject</th> -->
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php 
                                    	$c=0; 
                                    	foreach ($this->data['details'] as $key => $value) : 
                                    		$c++; 
                                    		$id = base64_encode($value['aq_id']); 
                                        ?>
                                        <tr>
                                        	<td > <?php echo $c; ?>. </td>
                                        	<td> <?php echo date_format(date_create($value['date']),'d-m-Y'); ?> </td>
                                            <td > <?php echo $value['query_num']; ?> </td>
                                            <td>
                                                <?php
                                                if (!empty($value['course_id'])) {
                                                    $course = $this->Cms_model->course($value['course_id']);
                                                    echo $course['course_name'];                                                    
                                                } else {
                                                    echo '---';
                                                }
                                                ?>
                                            </td>                                            
                                            <td > <?php echo $value['name']; ?> </td>
                                            <td>
                                                <?php
                                                if (!empty($value['mobile'])) {
                                                    echo '<b>Mobile : </b>'.$value['mobile'];
                                                }
                                                 if (!empty($value['Resume'])) {
                                                    echo '<b>Resume : </b>'.$value['Resume'];
                                                }
                                                if (!empty($value['email'])) {
                                                    echo '<br><b>Email : </b>'.$value['email'];
                                                }
                                                ?>
                                            </td>
                                            <!-- <td > <?php echo $value['subject']; ?> </td> -->
                                            <td>
                                                <a class="btn btn-xs btn-info" data-toggle="modal" data-target="#myModal-view_<?php echo $value['aq_id']; ?>" style="color: white;" title="View"> View </a>    

                                                <div id="myModal-view_<?php echo $value['aq_id']; ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">                                              
                                                                <h4 class="modal-title" id="myModalLabel">Details</h4>
                                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                            </div>
                                                            <div class="modal-body">                                          
                                                                <div class="form-group row" >
                                                                    <div class="col-md-6">
                                                                        <label>Query No. : <span class="text-danger" ></span> </label>
                                                                        <?php echo $value['query_num']; ?>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label>Date : <span class="text-danger" ></span> </label>
                                                                        <?php echo date_format(date_create($value['date']),'d-m-Y'); ?>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row" >
                                                                    <div class="col-md-12">
                                                                        <label>Name : <span class="text-danger" ></span> </label>
                                                                        <?php echo $value['name']; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row" >
                                                                    <div class="col-md-6">
                                                                        <label>Mobile No. : <span class="text-danger" ></span> </label>
                                                                        <?php echo $value['mobile']; ?>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label>Email : <span class="text-danger" ></span> </label>
                                                                        <?php echo $value['email']; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row" >
                                                                    <div class="col-md-6">
                                                                        <label>Course : <span class="text-danger" ></span> </label>
                                                                        <?php 
                                                                        if (!empty($value['course_id'])) {
                                                                            echo $course['course_name'];
                                                                        } else { echo '---'; }
                                                                        ?>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label>Resume : <span class="text-danger" ></span> </label>
                                                                        <?php if (!empty($value['Resume'])) { ?>
                                                                            <a href="<?php echo base_url('uploads/Resume/'.$value['Resume']); ?>" class="badge badge-info" target="_blank" > View </a>
                                                                        <?php } else { echo '---'; } ?>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row" >
                                                                    <div class="col-md-12">
                                                                        <label>Subject : <span class="text-danger" ></span> </label>
                                                                        <?php echo $value['subject']; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row" >
                                                                    <div class="col-md-12">
                                                                        <label>Query : <span class="text-danger" ></span> </label>
                                                                        <?php echo $value['message']; ?>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Close</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>                                                
                                                <?php if ($value['status'] == 'Unseen') { ?>
                                                    <a href="<?php echo base_url($this->setting['cms'].'admission_query_mark/'.$id); ?>" class="btn btn-xs btn-success" > Read </a>
                                                <?php } ?>

                                                <a href="<?php echo base_url($this->setting['cms'].'admission_query_delete/'.$id); ?>" class="btn btn-sm btn-danger" title="Delete" onclick="return confirm('Are you sure to delete it?');" > <i class="fa fa-trash"></i> Delete </a>
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
            
<?php include "include/footer.php";?>