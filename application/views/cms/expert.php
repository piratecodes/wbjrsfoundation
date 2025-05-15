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
                                            <th>Designation</th>
                                            <th>Image</th> 
                                            <th>Status</th>
                                            <th>Type</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php 
                                    	$c=0; 
                                    	foreach ($this->data['details'] as $key => $value) : 
                                    		$c++; 
                                    		$id = base64_encode($value['e_id']); 
                                        ?>
                                        <tr>
                                        	<td > <?php echo $c; ?>. </td>
                                        	<td> <?php echo $value['name']; ?> </td>
                                            <td> <?php echo $value['designation']; ?> </td>
                                            <td>
                                                <?php if (!empty($value['image'])) { ?>
                                                    <a href="<?php echo base_url('uploads/expert/'.$value['image']); ?>" target="_blank">
                                                        <img src="<?php echo base_url('uploads/expert/'.$value['image']); ?>" style="width: 100px; height: 80px;" >
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
                                            <td>
                                                <?php
                                                if (!empty($value['type'])) {
                                                    $a1 = explode('~', $value['type']);
                                                    foreach ($a1 as $k1 => $v1) {
                                                        if ($v1 != '') {
                                                            echo $v1.', ';                                                          
                                                        }                                                        
                                                    }
                                                }
                                                ?>
                                            </td>                                           
                                            <td > 
                                                <a href="<?php echo base_url($this->setting['cms'].'expert_edit/'.$id); ?>" class="btn btn-sm btn-warning" title="Edit" > <i class="fa fa-edit"></i> </a>
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