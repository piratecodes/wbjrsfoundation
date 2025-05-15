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
                                            <th>Ref. No.</th>
                                            <th>Course</th>
                                            <th>Name</th>
                                            <th>Contact</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php 
                                    	$c=0; 
                                    	foreach ($this->data['details'] as $key => $value) : 
                                    		$c++; 
                                    		$id = base64_encode($value['a_id']); 
                                        ?>
                                        <tr>
                                        	<td > <?php echo $c; ?>. </td>
                                        	<td> <?php echo date_format(date_create($value['date']),'d-m-Y'); ?> </td>
                                            <td > <?php echo $value['regn_no']; ?> </td>
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
                                                if (!empty($value['email'])) {
                                                    echo '<br><b>Email : </b>'.$value['email'];
                                                }
                                                ?>
                                            </td>
                                            <td > 
                                                <a href="<?php echo base_url($this->setting['cms'].'admission_details/'.$id); ?>" class="btn btn-sm btn-info" title="View" > <i class="fa fa-eye"></i> View </a>
                                              
                                                <?php if ($value['status'] == 'Pending') { ?>
                                                    <a href="<?php echo base_url($this->setting['cms'].'admission_mark/'.$id); ?>" class="btn btn-xs btn-success" > Read </a>
                                                <?php } ?>

                                                <a href="<?php echo base_url($this->setting['cms'].'admission_delete/'.$id); ?>" class="btn btn-sm btn-danger" title="Delete" onclick="return confirm('Are you sure to delete it?');" > <i class="fa fa-trash"></i> Delete </a>
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