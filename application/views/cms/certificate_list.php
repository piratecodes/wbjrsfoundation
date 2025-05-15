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

                            <div class="table-responsive">
                                <table id="myTable" class="table table-striped">
                                    <thead>
                                        <tr>
                                        	<th>S.N.</th>
                                        	<th>Date</th> 
                                            <th>Certificate No.</th>
                                            <th>Course</th>
                                            <th>Name</th>
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
                                        	<td> <?php echo date_format(date_create($value['date']),'d-m-Y'); ?> </td>
                                            <td > <?php echo $value['certificate_num']; ?> </td>                                           
                                            <td > <?php echo $value['course_name']; ?> </td>
                                            <td > <?php echo $value['name']; ?> </td>                                            
                                            <td > 
                                                <a href="<?php echo base_url($this->setting['cms'].'certificate_edit/'.$id); ?>" class="btn btn-sm btn-warning" title="Edit" > <i class="fa fa-edit"></i> Edit </a>

                                                <a href="<?php echo base_url($this->setting['cms'].'certificate_delete/'.$id); ?>" class="btn btn-sm btn-danger" title="Delete" onclick="return confirm('Are you sure to delete it?');" > <i class="fa fa-trash"></i> Delete </a>
                                              
                                                <a href="<?php echo base_url('downloads/certificate/'.$value['certificate_num']); ?>" class="btn btn-sm btn-info" title="View" target="_blank" > <i class="fa fa-eye"></i> View </a>
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