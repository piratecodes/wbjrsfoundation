<?php include "include/header.php";?>
        <!-- Page Content -->
                <!-- .row -->
                <div class="row">
                    <?php if(!empty($this->session->flashdata('msg'))){
                        $text =  $this->session->flashdata('msg');
                        ?>
                        <div class="col-lg-12 col-sm-12 col-xs-12">
                            <div class="alert alert-<?php echo $text['t']?> alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <?php echo $text['mess']?>
                            </div>
                        </div>
                    <?php } ?>                      

                    <div class="col-lg-3 col-sm-6 col-xs-12">
                        <a href="<?php echo base_url($this->setting['cms'].'admission_query/Unseen'); ?>">
                            <div class="white-box analytics-info">
                                <h3 class="box-title">Admission Query</h3>
                                <ul class="list-inline two-part">
                                    <li class="text-right"><span class="counter text-success"><?php echo $this->data['a_query']; ?></span></li>
                                </ul>
                            </div>
                        </a>
                    </div>   

                    <div class="col-lg-3 col-sm-6 col-xs-12">
                        <a href="<?php echo base_url($this->setting['cms'].'admission/Pending'); ?>">
                            <div class="white-box analytics-info">
                                <h3 class="box-title">Admission Request</h3>
                                <ul class="list-inline two-part">
                                    <li class="text-right"><span class="counter text-success"><?php echo $this->data['admission']; ?></span></li>
                                </ul>
                            </div>
                        </a>
                    </div>                          

                </div>
                <!--/.row -->
            </div>
            <!-- /.container-fluid -->
            
<?php include "include/footer.php";?>