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
                                        	<th>Name</th> 
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php 
                                    	$c=0; 
                                    	foreach ($this->data['details'] as $key => $value) : 
                                    		$c++; 
                                    		$id = base64_encode($value['cc_id']); 
                                        ?>
                                        <tr>
                                        	<td > <?php echo $c; ?>. </td>
                                        	<td>
                                        		<?php echo $value['cat_name']; ?>
                                        	</td>
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
                                                <?php if (empty($value['parent_id'])) { 
                                                    $sub = COUNT($this->Cms_model->course_category('', '', '', $value['cc_id']));

                                                    if ($sub > '0') {
                                                ?> 
                                                    <a href="<?php echo base_url($this->setting['cms'].'course_cat/'.$id); ?>" class="btn btn-sm btn-info" > <i class="fa fa-list"></i> Sub-Category </a>
                                                <?php } } ?>
                                                <a href="<?php echo base_url($this->setting['cms'].'course_cat_edit/'.$id); ?>" class="btn btn-sm btn-warning" title="Edit" > <i class="fa fa-edit"></i> </a>
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