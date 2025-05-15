<section class="become-team">
            <div class="container">
                <div class="row">
                    <!-- <div class="col-lg-12 wow fadeInUp animated" data-wow-delay="300ms"> -->
                    <div class="col-lg-12 wow fadeInUp animated">
                        <div class="become-team__content">
                            
                            <h3 class="become-team__title">Admission Form</h3>
                            <p class="become-team__text">
                                Contain
                            </p>
                            
                        </div>
                    </div>
                    <div class="col-lg-12 wow fadeInUp animated" data-wow-delay="400ms">
                    <!-- <div class="col-lg-12 wow fadeInUp animated" data-wow-delay="400ms"> -->
                        <div class="become-team__form-box">
                            <h3 class="become-team__form-box__title">Apply for Admission</h3>
                            <form class="" method="post" onsubmit="form_validate()" enctype="multipart/form-data">
                                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />
                                <?php 
                                if(!empty($this->session->flashdata('msg'))) :
                                $text =  $this->session->flashdata('msg');
                                ?>
                                <div class="alert alert-<?php echo $text['t']?> alert-dismissable">
                                    <?php echo $text['mess']?>
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true" style="float: right;" >&times;</button>
                                </div>            
                                <?php endif; ?>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">Course : <span class="text-danger">*</span> </label>
                                            <select class="form-control" name="course_id" required="">
                                                <option value=""> Please Select </option>
                                                <?php foreach ($this->data['course'] as $key => $value) { ?>
                                                    <option value="<?php echo $value['c_id']; ?>"> <?php echo $value['course_name']; ?> </option>
                                                <?php } ?>
                                                <option value="Hotel Management"> Hotel Management </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">Name : <span class="text-danger">*</span> </label>
                                            <input type="text" placeholder="Name" name="name" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">Date of Birth : <span class="text-danger">*</span> </label>
                                            <input type="date" name="dob" required="" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">Email : <span class="text-danger">*</span> </label>
                                            <input type="email" placeholder="Email Address" name="email">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">Mobile Number : <span class="text-danger">*</span> </label>
                                            <input type="text" placeholder="Mobile Number" name="mobile" required="" pattern="[6-9]{1}[0-9]{9}">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">Gender : <span class="text-danger">*</span> </label><br>
                                            <input type="radio" name="gender" required="" value="Male"> Male
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="gender" required="" value="Female"> Female
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="gender" required="" value="Others"> Others
                                        </div> 
                                    </div>
                                    <div class="col-md-6">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">Job Status : <span class="text-danger">*</span> </label><br>
                                            <input type="radio" name="job_status" required="" value="Employed"> Employed
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="job_status" required="" value="UnEmployed"> UnEmployed
                                        </div> 
                                    </div>                                    

                                    <div class="col-md-6">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">Last Qualification : <span class="text-danger">*</span> </label>
                                            <input type="text" placeholder="Last Qualification" name="qualification" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">Work Experience : <span class="text-danger"></span> </label>
                                            <input type="text" placeholder="Work Experience" name="work_experience">
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="contact-one__input-box text-message-box">
                                            <label class="mylabel">Address : <span class="text-danger">*</span> </label>
                                            <textarea name="address" placeholder="Address" required=""></textarea>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">State : <span class="text-danger">*</span></label>
                                            <select class="form-control" name="state" id="state" onchange="get_district();" required="">
                                                <option value="">Select State</option>
                                                <?php foreach($this->data['state'] as $key => $row){?>
                                                    <option value="<?php echo $row['id']?>" ><?php echo $row['state']?></option>
                                                <?php } ?>
                                            </select>
                                            <span class="text-danger" id="state_error"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="contact-one__input-box">
                                            <label class="mylabel">District : <span class="text-danger">*</span></label>
                                            <select name="district" id="district" class="form-control" required="">
                                                <option value=""> Select District </option>
                                            </select>
                                        </div>
                                    </div>

                                </div>

                                <div class="become-team__btn-box">
                                    <button type="submit" class="eduact-btn eduact-btn-second"><span class="eduact-btn__curve"></span>Submit Request<i class="icon-arrow"></i></button>
                                </div>
                            </form>
                            <div class="result"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
