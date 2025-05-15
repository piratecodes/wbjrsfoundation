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
                                        	<th>Title</th>
                                            <th>Image</th> 
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php
                                    	$c=0;
                                    	foreach ($this->data['details'] as $key => $value) : 
                                    		$c++; 
                                    		$id = base64_encode($value['nb_id']); 
                                        ?>
                                        <tr>
                                        	<td > <?php echo $c; ?>. </td>
                                        	<td>
                                        		<?php 
                                                if (!empty($value['title'])) {
                                                    echo $value['title'];
                                                } else { echo '---'; }
                                                ?>
                                        	</td>
                                            <td>
                                                <?php if (!empty($value['image'])) { ?>
                                                    <a href="<?php echo base_url('uploads/noticeboard/'.$value['image']); ?>" target="_blank">
                                                        <img src="<?php echo base_url('uploads/noticeboard/'.$value['image']); ?>" style="width: 100px; height: 80px;" >
                                                    </a>
                                                <?php } ?>
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
                                                <a href="<?php echo base_url($this->setting['cms'].'nb_edit/'.$id); ?>" class="btn btn-sm btn-warning" title="Edit" > <i class="fa fa-edit"></i> </a>
                                                <a href="<?php echo base_url($this->setting['cms'].'nb_delete/'.$id); ?>" class="btn btn-sm btn-danger" title="Delete" onclick="return confirm('Are you sure to delete it?');" > <i class="fa fa-trash"></i> </a>
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