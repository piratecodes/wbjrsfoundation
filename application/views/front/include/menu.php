<header class="main-header-two">
            <nav class="main-menu">
            <div class="container" style="max-width:100% !important;">
                    <div class="main-menu__logo">
                        <a href="<?php echo base_url()?>">
                       <img src="<?php echo base_url()?>assets/logo/logo_sm1111.png" width="260" alt="Logo">
                        </a>
                    </div><!-- /.main-menu__logo -->             
                    <div class="main-menu__nav">
                        <ul class="main-menu__list">
                        <li><a href="<?php echo base_url()?>">Home</a></li>
                           
                            <li class="dropdown">
                                <a href="#">Company</a>
                                <ul>
                                    <li><a href="<?php echo base_url('about')?>">About</a></li>
                                    <li><a href="<?php echo base_url('notice_board')?>">Notice Board</a></li>
                                    <li><a href="<?php echo base_url('mission_vision')?>">Mission & Vision</a></li>
                                    <li><a href="<?php echo base_url('gallery_album')?>">Gallary</a></li> 
                                    <li><a href="<?php echo base_url('bulletins')?>">News Blog</a></li>
                                    <li><a href="<?php echo base_url('aim')?>">Aim</a></li>
                                    <li><a href="<?php echo base_url('services_page')?>">Our Services</a></li>
                                    <li><a href="<?php echo base_url('accreditation')?>">Accreditation</a></li>
                                    <li><a href="<?php echo base_url('appreciations')?>">Appreciations</a></li>
                                    <li><a href="<?php echo base_url('authorization')?>">Authorization</a></li>
                                    <li><a href="<?php echo base_url('our_govt_pledge')?>">Our Govt Pledge</a></li>
                                    <li><a href="<?php echo base_url('banking_partner')?>">Banking Partner</a></li>
                                    <li><a href="<?php echo base_url('media_partner')?>">Media Partner</a></li>
                                   <li><a href="<?php echo base_url('info_bro')?>">Brochure</a></li>
                                </ul>
                            </li>
                           
                            <li class="dropdown">
                                <a href="#">Courses</a>
                                <ul>  
                                    <?php if (!empty($this->data['olympiad'])) { ?>                                  
                                        <li  class="dropdown"><a href="#">Olympiad</a>
                                            <ul>    
                                                <?php foreach ($this->data['olympiad'] as $key => $value) { ?>
                                                    <li><a href="<?php echo base_url('olympiad/'.$value['url']); ?>"> <?php echo $value['name']; ?> </a></li>
                                                <?php } ?>
                                                <!-- <li><a href="<?php echo base_url('hippo_english_olympiad')?>">Hippo English Olympiad</a></li>
                                                <li><a href="<?php echo base_url('mathematical_kangaroo_competition')?>">Mathematical Kangaroo Competition</a></li>
                                                <li><a href="<?php echo base_url('international_science_olympiad')?>">ISO (International Science Olympiad)</a></li>  -->
                                            </ul>                        
                                        </li>
                                    <?php } ?>
                                    <?php foreach ($this->data['cat_list'] as $key => $value) { ?>
                                        <li><a href="<?php echo base_url('course/'.$value['search_name']);?>"><?php echo $value['cat_name']; ?></a></li>
                                    <?php } ?>                                    
                                    <li><a href="<?php echo base_url('hotel_management')?>">Hotel Management</a></li>
                                    <li><a href="<?php echo base_url('ug_pg_programe')?>">UG/PG Programme</a></li>
                                    </ul>
                            </li>
                            <li class="dropdown"><a href="#">Mentors</a>
                            <ul>                                  
                                    <li><a href="<?php echo base_url('gov_body')?>">Governing Body</a></li>
                                    <li><a href="<?php echo base_url('advisory_members')?>">Academic Advisory Body</a></li>
                                    <!---<li><a href="<?php echo base_url('team')?>">Office Team</a></li>---->
                                    <li><a href="<?php echo base_url('our_expert')?>">Our Experts</a></li>
                                    <li><a href="<?php echo base_url('rnd_team')?>">R & D Team</a></li>
                                    <li><a href="<?php echo base_url('shree_gurukul')?>">Global Partners</a></li> 
                                </ul>
                                </li>
                            <li><a href="<?php echo base_url('blogs')?>">Blog</a></li> 
                            <li><a href="<?php echo base_url('career')?>">Career</a></li>
                            <li><a href="<?php echo base_url('certificate')?>">Certificate</a></li>
                             <!---<li><a href="<?php echo base_url('terms_conditions')?>">T&C</a></li>--->
                            <li><a href="<?php echo base_url('contact')?>">Contact</a></li>
                        </ul>
                    </div>
                    <!-- /.main-menu__nav --><!---<li><a href="<?php echo base_url('contact')?>">Contact</a></li>--->
                    
                    <div class="main-menu__right"> 
                    
                       <a href="#" class="main-menu__toggler mobile-nav__toggler">
                           <i class="fa fa-bars"></i>
                           
                        </a><!-- /.mobile menu btn -->
                        <div class="main-menu__info">
                            
                            
                            
                          <span> <!--class="icon-Call"--><img height=50 width=75 src=/assets/newgif.gif></img></span>
                            <!-- For More Information <font size=6pt>Call</font>
                            <a href="tel:+03379609224">033 79609224</a>--> 
                             <!--<span class="fa fa-archive"></span>--->
                             <font color=orange size=4><b><a href="" data-toggle="modal" data-target="#myModal-enquire">Book Demo Class</a></b></font><a href="<?php echo base_url('grievances_cell')?>"><font color=cyan size=-1>Grievances Cell</font></a>
                        </div>
                        <!-- /.info --> 
                    </div><!-- /.main-menu__right -->
                </div><!-- /.container -->
            </nav>
            <!-- /.main-menu -->
        </header><!-- /.main-header-two -->