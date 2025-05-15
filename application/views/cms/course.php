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
                                            <th>Category</th>
                                        	<th>Course</th> 
                                            <th>Duration</th>
                                            <th>Fees</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php 
                                    	$c=0; 
                                    	foreach ($this->data['details'] as $key => $value) : 
                                    		$c++; 
                                    		$id = base64_encode($value['c_id']); 

                                            $reviews = COUNT($this->Cms_model->course_review('', $value['c_id'], 'Approved'));
                                        ?>
                                        <tr>
                                        	<td > <?php echo $c; ?>. </td>
                                            <td>
                                                <?php
                                                if (!empty($value['cat_id'])) {
                                                    $cat = $this->Cms_model->course_category($value['cat_id']);

                                                    echo $cat['cat_name'];
                                                    
                                                    if (!empty($value['subcat_id'])) {
                                                        $subcat = $this->Cms_model->course_category($value['subcat_id']);
    
                                                        echo '<br>'.$subcat['cat_name'];
                                                    }
                                                }
                                                ?>
                                            </td>
                                        	<td> <?php echo $value['course_name']; ?> <br>[<?php echo $value['rating']; ?> star (<?php echo $reviews; ?> reviews)]</td>
                                            <td> <?php echo $value['duration']; ?></td>
                                            <td> <?php echo '<i class="fa fa-rupee"></i> '.$value['fees']; ?></td>
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
                                                <a href="<?php echo base_url($this->setting['cms'].'course_edit/'.$id); ?>" class="btn btn-xs btn-warning" title="Edit" > <i class="fa fa-edit"></i> </a>
                                                <a href="<?php echo base_url($this->setting['cms'].'course_review/'.$id); ?>" class="btn btn-xs btn-info" title="Reviews" > <i class="fa fa-comment"></i> </a>
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