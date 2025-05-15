<?php include "include/header.php"; 

$add = 0;

$name = $title = $content = $image = $attachment = $date = $status = 0;

$type = $this->data['type'];

if ($type == 'Accreditation' || $type == 'Appreciation' || $type == 'Authorization' ||  $type == 'Govt_pledge' || $type == 'Bulletins') {
    $add = 1;
    $image = 1;
    $title = 1;
    $status = 1;

    if ($type == 'Bulletins') {
        $date = 1;
    }
}

if ($type == 'Key_Facilities' || $type == 'Why_choose') {
    $title = $image = 1;

    if ($type == 'Why_choose') {
        $content = 1;
    }
}

if ($type == 'Olympiad') {
    $name = $title = $content = $image = $attachment = 1;
}
?>
		
                <!-- .row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3>
                                <?php echo $this->title; ?>
                                <?php if ($add == 1) { ?>
                                    <span style="float: right;">
                                        <a href="<?php echo base_url($this->setting['cms'].'pg_manager_add/'.$type) ?>" class="btn btn-sm btn-success" style="color: white;" title="Add"> <i class="fa fa-plus"></i> Add  </a>
                                    </span>
                                <?php } ?>
                            </h3>

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
                                            <?php if ($date == 1) { ?>
                                                <th>Date</th>
                                            <?php } ?>
                                            <?php if ($name == 1) { ?>
                                                <th>Page Name</th>
                                            <?php } ?>
                                            <?php if ($title == 1) { ?>
                                                <th>Title</th>
                                            <?php } ?>
                                            <?php if ($image == 1) { ?>
                                                <th>Image</th>
                                            <?php } ?>
                                            <?php if ($status == 1) { ?>
                                                <th>Status</th>
                                            <?php } ?>
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
                                            <?php if ($date == 1) { ?>
                                                <td > 
                                                    <?php 
                                                    if (!empty($value['date'])) {
                                                        echo date_format(date_create($value['date']),'d-m-Y'); 
                                                    }                                                
                                                    ?> 
                                                </td>
                                            <?php } ?>
                                            <?php if ($name == 1) { ?>
                                                <td >
                                                    <?php
                                                    if (!empty($value['name'])) {
                                                        echo $value['name'];
                                                    }
                                                    ?>
                                                </td>
                                            <?php } ?>
                                            <?php if ($title == 1) { ?>
                                            	<td >
                                                    <?php
                                                    if (!empty($value['title'])) {
                                                        echo $value['title'];
                                                    }
                                                    ?>
                                                </td>
                                            <?php } ?>
                                            <?php if ($image == 1) { ?>
                                                <td >
                                                    <?php
                                                    if (!empty($value['image'])) {
                                                    ?>
                                                        <a href="<?php echo base_url('uploads/pg/'.$value['image']); ?>" target="_blank">
                                                            <img src="<?php echo base_url('uploads/pg/'.$value['image']); ?>" style="width: 100px; height: 100px;">
                                                        </a>
                                                    <?
                                                    }
                                                    ?>
                                                </td>
                                            <?php } ?>
                                            <?php if ($status == 1) { ?>
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
                                            <?php } ?>                                       
                                            <td > 
                                                <a href="<?php echo base_url($this->setting['cms'].'pg_manager_edit/'.$type.'/'.$id); ?>" class="btn btn-sm btn-warning" > <i class="fa fa-edit"></i> </a>
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