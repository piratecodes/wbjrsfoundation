<?php

class Cms_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    // ************ ADMIN DATA ******************

    public function admin_login($id='', $status='')
    {
        $this->db->select('*');
        $this->db->from('admin_login');

        if ($id != '') {
            $this->db->where('adm_id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    // ************ CHANGE PASSWORD ***************

    public function change_pwd($id)
    {
        $det = $this->admin_login($id);

        if ($_POST['new_pwd'] == $_POST['conf_pwd']) {
            $old_pwd = sha1(trim(addslashes($_POST['old_pwd'])));
            $new_pwd = sha1(trim(addslashes($_POST['new_pwd'])));

            if ($det['password'] == $old_pwd) {
                $this->db->set('password',$new_pwd)
                        ->where('adm_id',$id)
                        ->update('admin_login');

                if ($this->db->affected_rows() > '0') {
                    return $arr = [
                        't' => 'success',
                        'mess' => 'Successfully updated.'
                    ];
                } else {
                    return $arr = [
                        't' => 'warning',
                        'mess' => 'No changes made to be updated.'
                    ];
                }
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Incorrect old password.'
                ];
            }
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'New password and Confirm password does not match.'
            ];
        }
    } 

    // ************* COURSE CATEGORY *************

    public function course_category($id='', $sn='', $status='', $parent_id='', $type='')
    {
        $this->db->select('*');
        $this->db->from('course_category');

        if ($id != '') {
            $this->db->where('cc_id',$id);
        }
        if ($sn != '') {
            $this->db->where('search_name',$sn);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }
        
        if ($parent_id != '') {
            $this->db->where('parent_id',$parent_id);
        }

        if ($type != '') {
            $this->db->where('parent_id',NULL);
        }

        $query = $this->db->get();

        if ($id != '' || $sn != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    } 

    public function course_cat_update($id='')
    {
        $i_data = [
            'cat_name' => trim(addslashes($_POST['cat_name'])),
            'status' => $_POST['status'],
        ];
        
        if (!empty($_POST['parent_id'])) {
            $i_data['parent_id'] = $_POST['parent_id'];
        } else {
            $i_data['parent_id'] = NULL;
        }

        if (!empty($_POST['icon'])) {
            $i_data['icon'] = $_POST['icon'];
        } else {
            $i_data['icon'] = NULL;
        }

        $search_name = strtolower(preg_replace('/[^A-Za-z0-9\-]/', '', $i_data['cat_name']));

        $i_data['search_name'] = $search_name;

        if (!empty($_POST['meta_title'])) {
            $i_data['meta_title'] = $_POST['meta_title'];
        } else {
            $i_data['meta_title'] = NULL;
        }

        if (!empty($_POST['meta_keyword'])) {
            $i_data['meta_keyword'] = $_POST['meta_keyword'];
        } else {
            $i_data['meta_keyword'] = NULL;
        }

        if (!empty($_POST['meta_description'])) {
            $i_data['meta_description'] = $_POST['meta_description'];
        } else {
            $i_data['meta_description'] = NULL;
        }

        // $sn = explode(' ', $i_data['cat_name']);

        // //print_r($sn); exit();

        // $c = 0;
        // foreach ($sn as $k1 => $v1) {
        //     if ($v1 != '') {
        //         $c++;

        //         if ($v1 != '&' && $v1 != '-') {
        //             if ($c == COUNT($sn)) {
        //                 $search_name .= $v1;
        //             } else {
        //                 $search_name .= $v1.'_';
        //             }
        //         }
        //     }
        // }

        // $i_data['search_name'] = $search_name;

        if (isset($_FILES['image'])) {
            if(!empty($_FILES['image']['name']))
            {                
                $ct = 'F';
                $path = 'uploads/course/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '5024';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {
                            $det = $this->course_category($id);

                            if(!empty($det['image']))
                            {
                                if(file_exists(FCPATH ."uploads/course/".$det['image']))
                                {
                                    unlink( FCPATH ."uploads/course/".$det['image']);
                                }
                            }
                        } 

                        $i_data['image'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if ($id != '') {
            $this->db->where('cc_id',$id)
                    ->update('course_category',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('course_category',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }

    // ************* COURSE SECTION *************

    public function course($id='', $sn='', $cat_id='', $status='', $limit='', $subcat_id='')
    {
        $this->db->select('*');
        $this->db->from('course');

        if ($id != '') {
            $this->db->where('c_id',$id);
        }

        if ($sn != '') {
            $this->db->where('search_name',$sn);
        }

        if ($cat_id != '') {
            $this->db->where('cat_id',$cat_id);
        }
        
        if ($subcat_id != '') {
            $this->db->where('subcat_id',$subcat_id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($limit != '') {
            $this->db->limit($limit, 0);
            $this->db->order_by('c_id','RANDOM');
        }

        $query = $this->db->get();

        if ($id != '' || $sn != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    } 

    public function course_update($id='')
    {
        $i_data = [
            'cat_id' => $_POST['cat_id'],
            'course_name' => trim(addslashes($_POST['course_name'])),
            'status' => $_POST['status'],
        ];
        
        if (!empty($_POST['subcat_id'])) {
            $i_data['subcat_id'] = $_POST['subcat_id'];
        } else {
            $i_data['subcat_id'] = NULL;
        }

        $search_name = strtolower(preg_replace('/[^A-Za-z0-9\-]/', '', $i_data['course_name']));

        $i_data['search_name'] = $search_name;

        if (!empty($_POST['meta_title'])) {
            $i_data['meta_title'] = $_POST['meta_title'];
        } else {
            $i_data['meta_title'] = NULL;
        }

        if (!empty($_POST['meta_keyword'])) {
            $i_data['meta_keyword'] = $_POST['meta_keyword'];
        } else {
            $i_data['meta_keyword'] = NULL;
        }

        if (!empty($_POST['meta_description'])) {
            $i_data['meta_description'] = $_POST['meta_description'];
        } else {
            $i_data['meta_description'] = NULL;
        }

        if (!empty($_POST['duration'])) {
            $i_data['duration'] = trim(addslashes($_POST['duration']));
        } else {
            $i_data['duration'] = NULL;
        }

        if (!empty($_POST['fees'])) {
            $i_data['fees'] = trim(addslashes($_POST['fees']));
        } else {
            $i_data['fees'] = NULL;
        }

        if (!empty($_POST['eligibility'])) {
            $i_data['eligibility'] = trim(addslashes($_POST['eligibility']));
        } else {
            $i_data['eligibility'] = NULL;
        }

        if (!empty($_POST['lessons'])) {
            $i_data['lessons'] = trim(addslashes($_POST['lessons']));
        } else {
            $i_data['lessons'] = NULL;
        }

        if (!empty($_POST['topics'])) {
            $i_data['topics'] = trim(addslashes($_POST['topics']));
        } else {
            $i_data['topics'] = NULL;
        }

        if (!empty($_POST['skill_level'])) {
            $i_data['skill_level'] = trim(addslashes($_POST['skill_level']));
        } else {
            $i_data['skill_level'] = NULL;
        }

        if (!empty($_POST['language'])) {
            $i_data['language'] = trim(addslashes($_POST['language']));
        } else {
            $i_data['language'] = NULL;
        }

        if (!empty($_POST['overview'])) {
            $i_data['overview'] = $_POST['overview'];
        } else {
            $i_data['overview'] = NULL;
        }

        if (!empty($_POST['curriculam'])) {
            $i_data['curriculam'] = $_POST['curriculam'];
        } else {
            $i_data['curriculam'] = NULL;
        }        

        if (isset($_FILES['image'])) {
            if(!empty($_FILES['image']['name']))
            {                
                $ct = 'C';
                $path = 'uploads/course/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '5024';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {
                            $det = $this->course($id);

                            if(!empty($det['image']))
                            {
                                if(file_exists(FCPATH ."uploads/course/".$det['image']))
                                {
                                    unlink( FCPATH ."uploads/course/".$det['image']);
                                }
                            }
                        } 

                        $i_data['image'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if ($id != '') {
            $this->db->where('c_id',$id)
                    ->update('course',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('course',$i_data);

            if ($this->db->affected_rows() > '0') {

                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }

    // ************ COURSE REVIEW ***********

    public function course_review($id='', $course_id='', $admin_status='', $status='', $dt1='', $dt2='', $sm='', $limit='', $rand='')
    {
        if ($sm != '') {
            $this->db->select('SUM(rating) as sm');
        } else {
            $this->db->select('*');
        }

        $this->db->from('course_review');

        if ($id != '') {
            $this->db->where('cr_id',$id);
        }

        if ($course_id != '') {
            $this->db->where('course_id',$course_id);
        }

        if ($admin_status != '') {
            $this->db->where('admin_status',$admin_status);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($dt1 != '' && $dt2 != '') {
            $this->db->where('date BETWEEN "'. $dt1. '" and "'. $dt2.'"');
        }

        if ($limit != '') {
            $this->db->limit($limit, 0);
            if ($rand != '') {
                $this->db->order_by('cr_id','RANDOM');
            }
        }

        $this->db->order_by('cr_id','DESC');

        //echo $this->db->get_compiled_select(); exit();

        $query = $this->db->get();

        if ($id != '' || $sm != '') {
            return $query->row_array();
        } else {
             return $query->result_array();
        }
    }

    public function course_review_update($id='')
    {
        $i_data = [
            'date' => $_POST['date'],
            'admin_status' => $_POST['admin_status'],
            'status' => $_POST['status'],
        ];

        if (isset($_POST['course_id'])) {
            $i_data['course_id'] = $_POST['course_id'];
        } else {
            $i_data['course_id'] = 1;
        }

        if (!empty($_POST['rating'])) {
            $i_data['rating'] = $_POST['rating'];
        } else {
            $i_data['rating'] = 1;
        }

        if (!empty($_POST['name'])) {
            $i_data['name'] = trim(addslashes($_POST['name']));
        } else {
            $i_data['name'] = NULL;
        }

        if (!empty($_POST['designation'])) {
            $i_data['designation'] = trim(addslashes($_POST['designation']));
        } else {
            $i_data['designation'] = NULL;
        }

        if (!empty($_POST['email'])) {
            $i_data['email'] = trim(addslashes($_POST['email']));
        } else {
            $i_data['email'] = NULL;
        }

        if (!empty($_POST['review'])) {
            $i_data['review'] = trim(addslashes($_POST['review']));
        } else {
            $i_data['review'] = NULL;
        }

        if (!empty($_POST['remarks'])) {
            $i_data['remarks'] = trim(addslashes($_POST['remarks']));
        } else {
            $i_data['remarks'] = NULL;
        }

        if (isset($_FILES['image'])) {
            if(!empty($_FILES['image']['name']))
            {                
                $ct = 'F';
                $path = 'uploads/review/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '10240';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {
                            $det = $this->course_review($id);

                            if(!empty($det['image']))
                            {
                                if(file_exists(FCPATH ."uploads/review/".$det['image']))
                                {
                                    unlink( FCPATH ."uploads/review/".$det['image']);
                                }
                            }
                        } 

                        $i_data['image'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if ($id != '') {
            $this->db->where('cr_id',$id)
                    ->update('course_review',$i_data);
        } else {
            $this->db->insert('course_review',$i_data);
        }

        if ($this->db->affected_rows() > '0') {

            if (isset($_POST['course_id'])) {

                $count = COUNT($this->course_review('', $_POST['course_id'], 'Approved'));
                $sum = $this->course_review('', $_POST['course_id'], 'Approved', '', '', '', 'Yes');

                if (!empty($sum)) {
                    $tot = $sum['sm'];
                } else {
                    $tot = 0;
                }

                $avg = round(($tot/$count),1);

                $this->db->set('rating',$avg)
                        ->where('c_id',$_POST['course_id'])
                        ->update('course');
            }

            return $arr = [
                't' => 'success',
                'mess' => 'Successfully updated.'
            ];
        } else {
            if ($id != '') {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding reviews.'
                ];
            }
        }
    }
    
    // ************* HOME SLIDER SECTION *************

    public function hs($id='', $status='')
    {
        $this->db->select('*');
        $this->db->from('home_slider');

        if ($id != '') {
            $this->db->where('hs_id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    } 

    public function hs_update($id='')
    {
        $i_data = [
            'status' => $_POST['status'],
        ];

        if (!empty($_POST['title'])) {
            $i_data['title'] = trim(addslashes($_POST['title']));
        } else {
            $i_data['title'] = NULL;
        }

        if (isset($_FILES['image'])) {
            if(!empty($_FILES['image']['name']))
            {                
                $ct = 'S';
                $path = 'uploads/slider/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '5120';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {
                            $det = $this->hs($id);

                            if(!empty($det['image']))
                            {
                                if(file_exists(FCPATH ."uploads/slider/".$det['image']))
                                {
                                    unlink( FCPATH ."uploads/slider/".$det['image']);
                                }
                            }
                        } 

                        $i_data['image'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if ($id != '') {
            $this->db->where('hs_id',$id)
                    ->update('home_slider',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('home_slider',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }

    public function hs_delete($id='')
    {
        $det = $this->hs($id);

        if(!empty($det['image']))
        {
            if(file_exists(FCPATH ."uploads/slider/".$det['image']))
            {
                unlink( FCPATH ."uploads/slider/".$det['image']);
            }
        }

        $this->db->where('hs_id',$id)
                ->delete('home_slider');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.'
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting. Please try again later.'
            ];
        }
    }

    // ************** PAGE MANAGE ********************

    public function pg_manage($id='', $cms='', $url='', $ret='')
    {
        $this->db->select('*');
        $this->db->from('pg_manage');

        if ($id != '') {
            $this->db->where('id',$id);
        }

        if ($cms != '') {
            $this->db->where('cms',$cms);
        }

        if ($url != '') {
            $this->db->where('url',$url);
        }

        $query = $this->db->get();

        if ($id != '' || $cms != '' || $url != '' || $ret == 'Single') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function pg_manage_update($id='')
    {
        if ($id != '') {
            $det = $this->pg_manage($id);
        }

        $i_data = [
            'cms' => $_POST['cms'],
        ];

        if (isset($_POST['title1'])) {
            if (!empty($_POST['title1'])) {
                $i_data['title1'] = $_POST['title1'];
            } else {
                $i_data['title1'] = NULL;
            }
        }

        if (isset($_POST['content1'])) {
            if (!empty($_POST['content1'])) {
                $i_data['content1'] = $_POST['content1'];
            } else {
                $i_data['content1'] = NULL;
            }
        }

        if (isset($_FILES['image1'])) {
            if(!empty($_FILES['image1']['name']))
            {                
                $ct = '1';
                $path = 'uploads/pg/';
                $this->load->library('upload'); 

                $size =  $_FILES['image1']['size']/1024;

                $max_size = '2048';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image1')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {

                            if(!empty($det['image1']))
                            {
                                if(file_exists(FCPATH .$path.$det['image1']))
                                {
                                    unlink( FCPATH .$path.$det['image1']);
                                }
                            }
                        } 

                        $i_data['image1'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File-1 : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'Image 1 File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if (isset($_POST['title2'])) {
            if (!empty($_POST['title2'])) {
                $i_data['title2'] = $_POST['title2'];
            } else {
                $i_data['title2'] = NULL;
            }
        }

        if (isset($_POST['content2'])) {
            if (!empty($_POST['content2'])) {
                $i_data['content2'] = $_POST['content2'];
            } else {
                $i_data['content2'] = NULL;
            }
        }

        if (isset($_FILES['image2'])) {
            if(!empty($_FILES['image2']['name']))
            {                
                $ct = '2';
                $path = 'uploads/pg/';
                $this->load->library('upload'); 

                $size =  $_FILES['image2']['size']/1024;

                $max_size = '2048';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image2')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {

                            if(!empty($det['image2']))
                            {
                                if(file_exists(FCPATH .$path.$det['image2']))
                                {
                                    unlink( FCPATH .$path.$det['image2']);
                                }
                            }
                        } 

                        $i_data['image2'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File-2 : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'Image 2 File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if (isset($_POST['title3'])) {
            if (!empty($_POST['title3'])) {
                $i_data['title3'] = $_POST['title3'];
            } else {
                $i_data['title3'] = NULL;
            }
        }

        if (isset($_POST['content3'])) {
            if (!empty($_POST['content3'])) {
                $i_data['content3'] = $_POST['content3'];
            } else {
                $i_data['content3'] = NULL;
            }
        }

        if (isset($_FILES['image3'])) {
            if(!empty($_FILES['image3']['name']))
            {                
                $ct = '3';
                $path = 'uploads/pg/';
                $this->load->library('upload'); 

                $size =  $_FILES['image3']['size']/1024;

                $max_size = '2048';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image3')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {

                            if(!empty($det['image3']))
                            {
                                if(file_exists(FCPATH .$path.$det['image3']))
                                {
                                    unlink( FCPATH .$path.$det['image3']);
                                }
                            }
                        } 

                        $i_data['image3'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File-3 : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'Image 3 File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if ($id != '') {
            $this->db->where('id',$id)
                    ->update('pg_manage',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('pg_manage',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }

    // ************* PAGE REPEAT ***********************

    public function pg_repeat($id='', $type='', $status='', $url='', $ret='')
    {
        $this->db->select('*');
        $this->db->from('pg_repeat');

        if ($id != '') {
            $this->db->where('id',$id);
        }

        if ($type != '') {
            $this->db->where('type',$type);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($url != '') {
            $this->db->where('url',$url);
        }

        $this->db->order_by('id','DESC');

        $query = $this->db->get();

        if ($id != '' || $url != '' || $ret == 'Single') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function pg_repeat_update($id='')
    {
        if ($id != '') {
            $det = $this->pg_repeat($id);
        }

        $i_data = [
            'type' => $_POST['type'],
            'status' => $_POST['status'],
        ];

        if (isset($_POST['name'])) {
            if (!empty($_POST['name'])) {
                $i_data['name'] = $_POST['name'];             

                $i_data['url'] = strtolower(preg_replace('/[^A-Za-z0-9\-]/', '', $i_data['name']));
                
                $chq = 1;
                
                if ($id != '') {
                    
                    if ($det['url'] == $i_data['url']) {
                        $chq = 0;
                    }
                } 
                
                if ($chq == 1) {
                    $t_chq = $this->pg_repeat('', '', '', $i_data['url'], 'Single');
                    
                    if (!empty($t_chq)) {
                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'This Page Name has already been added once.'
                        ];
                    }
                }
            } else {
                $i_data['name'] = NULL;
                $i_data['url'] = NULL;
            }
        }

        if (isset($_POST['title'])) {
            if (!empty($_POST['title'])) {
                $i_data['title'] = $_POST['title'];
            } else {
                $i_data['title'] = NULL;
            }
        }

        if (isset($_POST['content'])) {
            if (!empty($_POST['content'])) {
                $i_data['content'] = $_POST['content'];
            } else {
                $i_data['content'] = NULL;
            }
        }

        if (isset($_POST['date'])) {
            if (!empty($_POST['date'])) {
                $i_data['date'] = $_POST['date'];
            } else {
                $i_data['date'] = NULL;
            }
        }

        if (isset($_FILES['image'])) {
            if(!empty($_FILES['image']['name']))
            {                
                $ct = '1';
                $path = 'uploads/pg/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '2048';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {

                            if(!empty($det['image']))
                            {
                                if(file_exists(FCPATH .$path.$det['image']))
                                {
                                    unlink( FCPATH .$path.$det['image']);
                                }
                            }
                        } 

                        $i_data['image'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File-1 : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'Image 1 File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if (isset($_FILES['attachment'])) {
            if(!empty($_FILES['attachment']['name']))
            {                
                $ct = '2';
                $path = 'uploads/pg/';
                $this->load->library('upload'); 

                $size =  $_FILES['attachment']['size']/1024;

                $max_size = '5120';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options_all($ct,$path));

                    if($this->upload->do_upload('attachment')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];

                        if ($id != '') {

                            if(!empty($det['attachment']))
                            {
                                if(file_exists(FCPATH .$path.$det['attachment']))
                                {
                                    unlink( FCPATH .$path.$det['attachment']);
                                }
                            }
                        } 

                        $i_data['attachment'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Attachment : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'Attachment File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }        

        if ($id != '') {
            $this->db->where('id',$id)
                    ->update('pg_repeat',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('pg_repeat',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }

    public function pg_bulletins_dt($g_date='', $date='', $status='')
    {
        if ($g_date != '') {
            $this->db->select('date');
        } else {
            $this->db->select('*');
        }

        $this->db->from('pg_repeat');

        $this->db->where('type','Bulletins');

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($date != '') {
            $this->db->where('date',$date);
        }
        if ($g_date != '') {
            $this->db->order_by('date','DESC');
            $this->db->group_by('date');
        }

        //echo $this->db->get_compiled_select(); exit();

        $query = $this->db->get();

        return $query->result_array();
    }

    // *************** SEO SECTION ***************

    public function seo($id='', $url='', $status='')
    {
        $this->db->select('*');
        $this->db->from('seo');

        if ($id != '') {
            $this->db->where('id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($url != '') {
            $this->db->where('url',$url);
        }

        //echo $this->db->get_compiled_select(); exit();

        $query = $this->db->get();

        if ($id != '' || $url != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    } 

    public function seo_update($id='')
    {
        $i_data = [
            'status' => 'Active',
        ];        

        if (!empty($_POST['meta_title'])) {
            $i_data['meta_title'] = $_POST['meta_title'];
        } else {
            $i_data['meta_title'] = NULL;
        }

        if (!empty($_POST['meta_keyword'])) {
            $i_data['meta_keyword'] = $_POST['meta_keyword'];
        } else {
            $i_data['meta_keyword'] = NULL;
        }

        if (!empty($_POST['meta_description'])) {
            $i_data['meta_description'] = $_POST['meta_description'];
        } else {
            $i_data['meta_description'] = NULL;
        }

        if ($id != '') {
            $this->db->where('id',$id)
                    ->update('seo',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('seo',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }

    // ************ CALLBACK SECTION **********************

    public function request_callback_submit($value='')
    {
        $i_data = [
            'name' => trim(addslashes($_POST['name'])),
            'mobile' => trim(addslashes($_POST['mobile'])),
            'dt1' => date('Y-m-d'),
        ];

        if (!empty($_POST['email'])) {
            $i_data['email'] = strtolower(trim(addslashes($_POST['email'])));
        }

        $this->db->insert('request_callback',$i_data);

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Request successfully sent.'
            ];
        } else {
            return $arr = [
                't' => 'warning',
                'mess' => 'Error in sending request.'
            ];
        }
    }

    public function request_callback($id='', $status='', $dt1='', $dt2='')
    {
        $this->db->select('*');
        $this->db->from('request_callback');

        if ($id != '') {
            $this->db->where('id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($dt1 != '' && $dt2 != '') {
            $this->db->where('dt1 BETWEEN "'. $dt1. '" and "'. $dt2.'"');          
        }

        $this->db->order_by('dt1','DESC');

        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function request_callback_mark($id='')
    {
        $this->db->set('status','Success')
                ->set('dt2',date('Y-m-d'))
                ->where('id',$id)
                ->update('request_callback');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully marked as read.'
            ];
        } else {
            return $arr = [
                't' => 'warning',
                'mess' => 'Error in updating status.'
            ];
        }
    }

    public function request_callback_delete($id='')
    {
        $this->db->where('id',$id)
                ->delete('request_callback');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.',
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting.',
            ];
        }
    }

    public function request_enquire_submit($value='')
    {
        $i_data = [
            'name' => trim(addslashes($_POST['name'])),
            'mobile' => trim(addslashes($_POST['mobile'])),
            'dt1' => date('Y-m-d'),
        ];

        if (!empty($_POST['email'])) {
            $i_data['email'] = strtolower(trim(addslashes($_POST['email'])));
        }

        $course = '';

        $ct = $_POST['course'];

        for ($i=0; $i<COUNT($ct); $i++){
            $c = $ct[$i];
            $course .= $c.'~';
        }

        if ($course!='') {
            $i_data['course'] = $course;
        }

        $this->db->insert('course_enquiry',$i_data);

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Request successfully sent.'
            ];
        } else {
            return $arr = [
                't' => 'warning',
                'mess' => 'Error in sending request.'
            ];
        }
    }    

    public function request_course_enquire($id='', $status='', $dt1='', $dt2='')
    {
        $this->db->select('*');
        $this->db->from('course_enquiry');

        if ($id != '') {
            $this->db->where('id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($dt1 != '' && $dt2 != '') {
            $this->db->where('dt1 BETWEEN "'. $dt1. '" and "'. $dt2.'"');          
        }

        $this->db->order_by('dt1','DESC');

        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function request_course_enquire_mark($id='')
    {
        $this->db->set('status','Success')
                ->set('dt2',date('Y-m-d'))
                ->where('id',$id)
                ->update('course_enquiry');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully marked as read.'
            ];
        } else {
            return $arr = [
                't' => 'warning',
                'mess' => 'Error in updating status.'
            ];
        }
    }

    public function request_course_enquire_delete($id='')
    {
        $this->db->where('id',$id)
                ->delete('course_enquiry');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.',
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting.',
            ];
        }
    }

    // ************ TEACHER SECTION **********************

    public function request_teacher_submit($value='')
    {
        $i_data = [
            'name' => trim(addslashes($_POST['name'])),
            'mobile' => trim(addslashes($_POST['mobile'])),
            'dt1' => date('Y-m-d'),
        ];

        if (!empty($_POST['email'])) {
            $i_data['email'] = strtolower(trim(addslashes($_POST['email'])));
        }

        if (!empty($_POST['subject'])) {
            $i_data['subject'] = trim(addslashes($_POST['subject']));
        }

        if (!empty($_POST['skill'])) {
            $i_data['skill'] = trim(addslashes($_POST['skill']));
        }

        $this->db->insert('request_teacher',$i_data);

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Request successfully sent.'
            ];
        } else {
            return $arr = [
                't' => 'warning',
                'mess' => 'Error in sending request.'
            ];
        }
    }

    public function request_teacher($id='', $status='', $dt1='', $dt2='')
    {
        $this->db->select('*');
        $this->db->from('request_teacher');

        if ($id != '') {
            $this->db->where('id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($dt1 != '' && $dt2 != '') {
            $this->db->where('dt1 BETWEEN "'. $dt1. '" and "'. $dt2.'"');          
        }

        $this->db->order_by('dt1','DESC');

        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function request_teacher_mark($id='')
    {
        $this->db->set('status','Success')
                ->set('dt2',date('Y-m-d'))
                ->where('id',$id)
                ->update('request_teacher');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully marked as read.'
            ];
        } else {
            return $arr = [
                't' => 'warning',
                'mess' => 'Error in updating status.'
            ];
        }
    }

    public function request_teacher_delete($id='')
    {
        $this->db->where('id',$id)
                ->delete('request_teacher');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.',
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting.',
            ];
        }
    }

    // ************ CALLBACK SECTION **********************

    public function request_career_submit($value='')
    {
        $i_data = [
            'name' => trim(addslashes($_POST['name'])),
            'mobile' => trim(addslashes($_POST['mobile'])),
            'dt1' => date('Y-m-d'),
        ];

        if (!empty($_POST['email'])) {
            $i_data['email'] = strtolower(trim(addslashes($_POST['email'])));
        }

        if (!empty($_POST['details'])) {
            $i_data['details'] = trim(addslashes($_POST['details']));
        }

        if (!empty($_POST['query'])) {
            $i_data['query'] = trim(addslashes($_POST['query']));
        }

        $this->db->insert('request_career',$i_data);

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Request successfully sent.'
            ];
        } else {
            return $arr = [
                't' => 'warning',
                'mess' => 'Error in sending request.'
            ];
        }
    }

    public function request_career($id='', $status='', $dt1='', $dt2='')
    {
        $this->db->select('*');
        $this->db->from('request_career');

        if ($id != '') {
            $this->db->where('id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($dt1 != '' && $dt2 != '') {
            $this->db->where('dt1 BETWEEN "'. $dt1. '" and "'. $dt2.'"');          
        }

        $this->db->order_by('dt1','DESC');

        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function request_career_mark($id='')
    {
        $this->db->set('status','Success')
                ->set('dt2',date('Y-m-d'))
                ->where('id',$id)
                ->update('request_career');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully marked as read.'
            ];
        } else {
            return $arr = [
                't' => 'warning',
                'mess' => 'Error in updating status.'
            ];
        }
    }

    public function request_career_delete($id='')
    {
        $this->db->where('id',$id)
                ->delete('request_career');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.',
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting.',
            ];
        }
    }

    // ************ CERTIFICATE SECTION ***************

    public function certificate($id='', $certificate_num='', $type='', $status='')
    {
        $this->db->select('*');
        $this->db->from('certificate');

        if ($id != '') {
            $this->db->where('id',$id);
        }

        if ($certificate_num != '') {
            $this->db->where('certificate_num',$certificate_num);
        }

        if ($type != '') {
            $this->db->where('type',$type);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        $query = $this->db->get();

        if ($id != '' || $certificate_num != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function certificate_update($id='')
    {
        if ($id != '') {
            $det = $this->certificate($id);
        }        

        $certificate_num = trim(addslashes($_POST['certificate_num']));

        $c = 1;

        if ($id != '') {
            if ($certificate_num == $det['certificate_num']) {
                $c = 0;
            }
        }

        if ($c == '1') {
            $chq = $this->certificate('', $certificate_num);

            if (!empty($chq)) {
                return $arr = [
                    'error' => 'Yes',
                    't' => 'warning',
                    'mess' => 'This Certificate Number is already registered.'
                ];
            }
        }

        $i_data = [
            'type' => $_POST['type'],
            'date' => $_POST['date'],
            'name' => trim(addslashes($_POST['name'])),
            'subject' => trim(addslashes($_POST['subject'])),
            'course_name' => trim(addslashes($_POST['course_name'])),
            'certificate_num' => $certificate_num
        ];

        if (isset($_POST['location'])) {
            if (!empty($_POST['location'])) {
                $i_data['location'] = $_POST['location'];
            } else {
                $i_data['location'] = NULL;
            }
        }

        if (isset($_POST['total_score'])) {
            if (!empty($_POST['total_score'])) {
                $i_data['total_score'] = $_POST['total_score'];
            } else {
                $i_data['total_score'] = NULL;
            }
        }

        if (isset($_POST['marks_obtained'])) {
            if (!empty($_POST['marks_obtained'])) {
                $i_data['marks_obtained'] = $_POST['marks_obtained'];
            } else {
                $i_data['marks_obtained'] = NULL;
            }
        }

        if ($id != '') {
            $this->db->where('id',$id)
                    ->update('certificate',$i_data);

            if ($this->db->affected_rows() > '0') {
                $this->db->set('updated_on',date('Y-m-d'))
                        ->where('id',$id)
                        ->update('certificate');

                return $arr = [
                    'error' => 'No',
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    'error' => 'Yes',
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $i_data['updated_on'] = date('Y-m-d');

            $this->db->insert('certificate',$i_data);

            if ($this->db->affected_rows() > '0') {

                $last = $this->db->insert_id();

                $res = $this->certificate_qrcode($last);

                return $arr = [
                    'error' => 'No',
                    't' => 'success',
                    'mess' => 'Certificate successfully added.'
                ];
            } else {
                return $arr = [
                    'error' => 'Yes',
                    't' => 'danger',
                    'mess' => 'Error in adding Certificate. Please try again later.'
                ];
            }
        }
    }

    public function certificate_upload($sheetData, $type, $date)
    {
        $cnt = 0;
        //print_r($sheetData); exit();
        foreach ($sheetData as $key => $value) {
            if($cnt > '0') {
                $certificate_num = $value['0'];
                $name = $value['1'];
                $course_name = $value['2'];
                $subject = $value['3'];

                if ($type == 'Participation') {
                    $location = $value['4'];
                }

                if ($type == 'Completion') {
                    $total_score = $value['4'];
                    $marks_obtained = $value['5'];
                }

                $chq = $this->certificate('', $certificate_num);

                if (!empty($chq)) {

                    $_SESSION['k_arr'][] = array("certificate_num" => $certificate_num, "name" => $name, "course_name" => $course_name, "subject" => $subject, "R Status" => "danger", "Remarks"=>"Certificate Number is already registered.");
                } else {
                    $i_data = [
                        'type' => $type,
                        'date' => $date,
                        'name' => trim(addslashes($name)),
                        'subject' => trim(addslashes($subject)),
                        'course_name' => trim(addslashes($course_name)),
                        'certificate_num' => $certificate_num,
                        'status' => 'Active',
                    ];

                    if ($type == 'Participation') {
                        if (!empty($location)) {
                            $i_data['location'] = $location;
                        } else {
                            $i_data['location'] = NULL;
                        }
                    }

                    if ($type == 'Completion') {
                        if (!empty($total_score)) {
                            $i_data['total_score'] = $total_score;
                        } else {
                            $i_data['total_score'] = NULL;
                        }

                        if (!empty($marks_obtained)) {
                            $i_data['marks_obtained'] = $marks_obtained;
                        } else {
                            $i_data['marks_obtained'] = NULL;
                        }
                    }

                    $i_data['updated_on'] = date('Y-m-d');

                    $this->db->insert('certificate',$i_data);

                    if ($this->db->affected_rows() > '0') {

                        $last = $this->db->insert_id();

                        $res = $this->certificate_qrcode($last);

                        $_SESSION['k_arr'][] = array("certificate_num" => $certificate_num, "name" => $name, "course_name" => $course_name, "subject" => $subject, "R Status" => "success", "Remarks"=>"Certificate successfully added.");
                    } else {                        

                        $_SESSION['k_arr'][] = array("certificate_num" => $certificate_num, "name" => $name, "course_name" => $course_name, "subject" => $subject, "R Status" => "danger", "Remarks"=>"Error in adding Certificate.");
                    }
                }
            } 
            $cnt++;
        }

        return $arr = [
            't' => 'success',
            'mess'=>'Successfully updated'
        ];
    }

    public function certificate_qrcode($id='')
    {
        $det = $this->certificate($id);

        if(strpos($_SERVER['SERVER_NAME'],"localhost")===false) {
            if (empty($det['qrcode'])) {
                $link1 = base_url('certificate/').$det['certificate_num'];

                $this->load->library('phpqrcode/Qrlib');

                $SERVERFILEPATH = FCPATH."uploads/certificate/";
                $text = $link1;
                $text1= substr($text, 0,9);    
                $folder = $SERVERFILEPATH;
                $file_name1 = "Qrcode".rand(2,999).$id.".png";
                $file_name = $folder.$file_name1;
                QRcode::png($text,$file_name); 

                $qrcode = $file_name1;

                $this->db->set('qrcode',$qrcode)
                        ->where('id',$id)
                        ->update('certificate');

                return 'ok';
            }           
        } else {
            return 'ok';
        }
    }

    public function certificate_delete($id='')
    {
        $det = $this->certificate($id);

        $type = $det['type'];

        $this->db->where('id',$id)
                ->delete('certificate');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.',
                'type' => $type,
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting.',
                'type' => $type,
            ];
        }
    }

    //*************************NOTICEBOARD******************************

    public function nb($id='', $status='')
    {
        $this->db->select('*');
        $this->db->from('notice_board');

        if ($id != '') {
            $this->db->where('nb_id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    } 

    public function nb_update($id='')
    {
        $i_data = [
            'status' => $_POST['status'],
        ];

        if (!empty($_POST['title'])) {
            $i_data['title'] = trim(addslashes($_POST['title']));
        } else {
            $i_data['title'] = NULL;
        }

        if (isset($_FILES['image'])) {
            if(!empty($_FILES['image']['name']))
            {                
                $ct = 'S';
                $path = 'uploads/noticeboard/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '5120';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {
                            $det = $this->nb($id);

                            if(!empty($det['image']))
                            {
                                if(file_exists(FCPATH ."uploads/noticeboard/".$det['image']))
                                {
                                    unlink( FCPATH ."uploads/noticeboard/".$det['image']);
                                }
                            }
                        } 

                        $i_data['image'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if ($id != '') {
            $this->db->where('nb_id',$id)
                    ->update('notice_board',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('notice_board',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }

    public function nb_delete($id='')
    {
        $det = $this->nb($id);

        if(!empty($det['image']))
        {
            if(file_exists(FCPATH ."uploads/noticeboard/".$det['image']))
            {
                unlink( FCPATH ."uploads/noticeboard/".$det['image']);
            }
        }

        $this->db->where('nb_id',$id)
                ->delete('notice_board');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.'
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting. Please try again later.'
            ];
        }
    }

    // ************* BLOG SECTION *************

    public function blogs($id='', $slug='')
    {
        $this->db->select('*');
        $this->db->from('blog');
        
        if ($id != '') {
            $this->db->where('blog_id',$id);
        }

        if ($slug != '') {
            $this->db->where('slug',$slug);
        }
        
        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    } 

    public function blog_update($id='')
    {

        if (!empty($_POST['title'])) {
            $i_data['title'] = trim(addslashes($_POST['title']));
        } else {
            $i_data['title'] = '';
        }

        if (!empty($_POST['description'])) {
            $i_data['description'] = $_POST['description'];
        } else {
            $i_data['description'] = '';
        }

        if (!empty($_POST['slug'])) {
            $i_data['slug'] = $_POST['slug'];
        } else {
            $i_data['slug'] = '';
        }

        if (!empty($_POST['meta_title'])) {
            $i_data['meta_title'] = $_POST['meta_title'];
        } else {
            $i_data['meta_title'] = '';
        }

        if (!empty($_POST['meta_description'])) {
            $i_data['meta_description'] = $_POST['meta_description'];
        } else {
            $i_data['meta_description'] = '';
        }

        if (isset($_FILES['image'])) {
            if(!empty($_FILES['image']['name']))
            {
                $ct = 'S';
                $path = 'uploads/blogs/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '5120';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        
                        if ($id != '') {
                            $det = $this->nb($id);

                            if(!empty($det['image']))
                            {
                                if(file_exists(FCPATH ."uploads/blogs/".$det['image']))
                                {
                                    unlink( FCPATH ."uploads/blogs/".$det['image']);
                                }
                            }
                        } 

                        $i_data['image'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if (!empty($_POST['created_at'])) {
            $i_data['created_at'] = time();
        } else {
            $i_data['created_at'] = '';
        }

        if (!empty($_POST['meta_keyword'])) {
            $i_data['meta_keyword'] = $_POST['meta_keyword'];
        } else {
            $i_data['meta_keyword'] = '';
        }

        if (!empty($_POST['canonical_url'])) {
            $i_data['canonical_url'] = $_POST['canonical_url'];
        } else {
            $i_data['canonical_url'] = '';
        }

        if ($id != '') {
            $this->db->where('blog_id',$id)
                    ->update('blog',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('blog',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }

    public function blog_delete($id='')
    {
        $det = $this->blogs($id);

        if(!empty($det['image']))
        {
            if(file_exists(FCPATH ."uploads/blogs/".$det['image']))
            {
                unlink( FCPATH ."uploads/blogs/".$det['image']);
            }
        }

        $this->db->where('blog_id',$id)
                ->delete('blog');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.'
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting. Please try again later.'
            ];
        }
    }
    
    // ************* GALLERY SECTION *************

    public function gallery_album($id='', $status='', $search_name='')
    {
        $this->db->select('*');
        $this->db->from('gallery_album');

        if ($id != '') {
            $this->db->where('ga_id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($search_name != '') {
            $this->db->where('search_name',$search_name);
        }

        $query = $this->db->get();

        if ($id != '' || $search_name != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    } 

    public function gallery_album_update($id='')
    {
        $i_data = [
            'status' => $_POST['status'],
        ];

        if (!empty($_POST['album_name'])) {
            $i_data['album_name'] = trim(addslashes($_POST['album_name']));
        } else {
            $i_data['album_name'] = NULL;
        }

        $search_name = "";

        $i_data['search_name'] = strtolower(preg_replace('/[^A-Za-z0-9\-]/', '', $i_data['album_name']));

        if (!empty($_POST['meta_title'])) {
            $i_data['meta_title'] = $_POST['meta_title'];
        } else {
            $i_data['meta_title'] = NULL;
        }

        if (!empty($_POST['meta_keyword'])) {
            $i_data['meta_keyword'] = $_POST['meta_keyword'];
        } else {
            $i_data['meta_keyword'] = NULL;
        }

        if (!empty($_POST['meta_description'])) {
            $i_data['meta_description'] = $_POST['meta_description'];
        } else {
            $i_data['meta_description'] = NULL;
        }

        if ($id != '') {
            $this->db->where('ga_id',$id)
                    ->update('gallery_album',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('gallery_album',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }

    public function gallery($id='', $status='', $album='', $front_img='', $limit='')
    {
        $this->db->select('*');
        $this->db->from('gallery');

        if ($id != '') {
            $this->db->where('g_id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($album != '') {
            $this->db->where('album',$album);
        }

        if ($front_img != '') {
            $this->db->where('front_img',$front_img);
        }

        if ($limit != '') {
            $this->db->limit($limit, 0);
            $this->db->order_by('rand()');
        }

        $query = $this->db->get();

        if ($id != '' || $front_img != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    } 

    public function gallery_update($id='')
    {
        $i_data = [
            'status' => $_POST['status'],
        ];

        if (!empty($_POST['album'])) {
            $i_data['album'] = trim(addslashes($_POST['album']));
        } else {
            $i_data['album'] = NULL;
        }

        if (isset($_FILES['image'])) {
            if(!empty($_FILES['image']['name']))
            {                
                $ct = 'F';
                $path = 'uploads/gallery/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '10240';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {
                            $det = $this->gallery($id);

                            if(!empty($det['image']))
                            {
                                if(file_exists(FCPATH ."uploads/gallery/".$det['image']))
                                {
                                    unlink( FCPATH ."uploads/gallery/".$det['image']);
                                }
                            }
                        } 

                        $i_data['image'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if ($id != '') {

            if ($_POST['front_img'] == 'Yes') {
                $this->db->set('front_img','No')
                        ->where('album',$_POST['album'])
                        ->update('gallery');

                $i_data['front_img'] = 'Yes';
            } else {
                $i_data['front_img'] = 'No';
            }

            $this->db->where('g_id',$id)
                    ->update('gallery',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('gallery',$i_data);

            $all = COUNT($this->gallery('', '', $_POST['album'], 'Yes'));

            if ($all == '0') {
                $i_data['front_img'] = 'Yes';
            } else {
                $i_data['front_img'] = 'No';
            }

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }

    public function gallery_delete($id='')
    {
        $det = $this->gallery($id);

        if(!empty($det['image']))
        {
            if(file_exists(FCPATH ."uploads/gallery/".$det['image']))
            {
                unlink( FCPATH ."uploads/gallery/".$det['image']);
            }
        }

        $this->db->where('g_id',$id)
                ->delete('gallery');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.'
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting. Please try again later.'
            ];
        }
    }

    // ************** EXPERT SECTION *************

    public function expert($id='', $status='', $type='')
    {
        $this->db->select('*');
        $this->db->from('expert');

        if ($id != '') {
            $this->db->where('e_id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        if ($type != '') {
            $this->db->like('type',$type);
        }

        $this->db->order_by('order_no','ASC');

        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    } 

    public function expert_update($id='')
    {
        $i_data = [
            'status' => $_POST['status'],
            'name' => trim(addslashes($_POST['name'])),
        ];

        if (!empty($_POST['designation'])) {
            $i_data['designation'] = trim(addslashes($_POST['designation']));
        } else {
            $i_data['designation'] = NULL;
        }

        if (!empty($_POST['order_no'])) {
            $i_data['order_no'] = trim(addslashes($_POST['order_no']));
        } else {
            $i_data['order_no'] = 1;
        }

        if (!empty($_POST['gender'])) {
            $i_data['gender'] = trim(addslashes($_POST['gender']));
        } else {
            $i_data['gender'] = NULL;
        }

        if (!empty($_POST['type'])) {
            $type = $_POST['type'];

            $t = "";

            for ($i=0; $i<COUNT($type); $i++) {
                $t .= $type[$i].'~';
            }

            $i_data['type'] = $t;
        } else {
            $i_data['type'] = NULL;
        }

        if (isset($_FILES['image'])) {
            if(!empty($_FILES['image']['name']))
            {                
                $ct = 'F';
                $path = 'uploads/expert/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '10240';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options($ct,$path));

                    if($this->upload->do_upload('image')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // }

                        if ($id != '') {
                            $det = $this->expert($id);

                            if(!empty($det['image']))
                            {
                                if(file_exists(FCPATH ."uploads/expert/".$det['image']))
                                {
                                    unlink( FCPATH ."uploads/expert/".$det['image']);
                                }
                            }
                        } 

                        $i_data['image'] = $img;
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Image File : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if ($id != '') {            

            $this->db->where('e_id',$id)
                    ->update('expert',$i_data);

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully updated.'
                ];
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'No changes made to be updated.'
                ];
            }
        } else {
            $this->db->insert('expert',$i_data);            

            if ($this->db->affected_rows() > '0') {
                return $arr = [
                    't' => 'success',
                    'mess' => 'Successfully added.'
                ];
            } else {
                return $arr = [
                    't' => 'danger',
                    'mess' => 'Error in adding. Please try again later.'
                ];
            }
        }
    }
    // ******** ADMISSION QUERY **********

    public function admission_query($id='', $query_num='', $course_id='', $status='', $dt1='', $dt2='')
    {
        $this->db->select('*');
        $this->db->from('admission_query');

        if ($id != '') {
            $this->db->where('aq_id',$id);
        }

        if ($query_num != '') {
            $this->db->where('query_num',$query_num);
        }

        if ($course_id != '') {
            $this->db->where('course_id',$course_id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }        

        if ($dt1 != '' && $dt2 != '') {
            $this->db->where('date BETWEEN "'. $dt1. '" and "'. $dt2.'"');
        }

        $query = $this->db->get();

        if ($id != '' || $query_num != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function admission_query_add()
    {
        $i_data = [
            'name' => trim(addslashes($_POST['name'])),
            'date' => date('Y-m-d'),
            'status' => 'Unseen',
        ];

        $course = "";

        if (!empty($_POST['course_id'])) {
            $i_data['course_id'] = $_POST['course_id'];

            $course_det = $this->course($i_data['course_id']);

            $course =  $course_det['course_name'];
        }

        if (!empty($_POST['email'])) {
            $i_data['email'] = $_POST['email'];
        }

        if (!empty($_POST['mobile'])) {
            $i_data['mobile'] = $_POST['mobile'];
        }

        if (!empty($_POST['subject'])) {
            $i_data['subject'] = $_POST['subject'];
        }

        if (!empty($_POST['message'])) {
            $i_data['message'] = $_POST['message'];
        }

        $resume = "";

        if (isset($_FILES['Resume'])) {
            if(!empty($_FILES['Resume']['name']))
            {                
                $ct = 'F';
                $path = 'uploads/Resume/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '2048';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options_all($ct,$path));

                    if($this->upload->do_upload('Resume')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // } 

                        $i_data['Resume'] = $img;

                        $resume = base_url('uploads/Resume/'.$img);
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Resume File : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'Resume File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        $this->db->insert('admission_query',$i_data);

        if ($this->db->affected_rows() > '0') {
            $last = $this->db->insert_id();

            $query_num = 'WQ'.date('y').$last.rand(10,99);

            $this->db->set('query_num',$query_num)
                    ->where('aq_id',$last)
                    ->update('admission_query');

            $email = 'enquiry@wbjrsfoundation.org';
            $subject = 'Query. Query Number : '.$query_num;

            $mailHtml = "<p>";

            $mailHtml .= "<b>QUERY NUMBER : </b>".$query_num;
            $mailHtml .= "<br><br><b>DATE : </b>".date('d-m-Y');

            if (!empty($_POST['subject'])) {
                $mailHtml .= "<br><br><b>SUBJECT : </b>".$i_data['subject'];
            }

            if (!empty($_POST['course_id'])) {
                //$course = $this->course($_POST['course_id']);

                $mailHtml .= "<br><br><b>COURSE : </b>".$course;
            }

            if (!empty($_POST['message'])) {
                $mailHtml .= "<br><br><b>QUERY : </b>".$i_data['message'];
            }

            if (!empty($_POST['name'])) {
                $mailHtml .= "<br><br><b>NAME : </b>".$i_data['name'];
            }

            if (!empty($_POST['mobile'])) {
                $mailHtml .= "<br><br><b>MOBILE : </b>".$i_data['mobile'];
            }
             if (!empty($_POST['Resume'])) {
                $mailHtml .= "<br><br><b>Resume : </b>".$resume;
            }

            if (!empty($_POST['email'])) {
                $mailHtml .= "<br><br><b>EMAIL : </b>".$i_data['email'];
            }

            $mailHtml .= "</p>";

            $mail_send = $this->Other_model->send_mail($email, $subject, $mailHtml, '1');

            return $arr = [
                't' => 'success',
                'mess' => 'Your Query has been sent Successfully. We will reach you soon.'
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in sending query. Please try again later.'
            ];
        }
    }

    public function admission_query_mark($id='')
    {
        $this->db->set('status','Seen')
                ->set('dt2',date('Y-m-d'))
                ->where('aq_id',$id)
                ->update('admission_query');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully marked as read.'
            ];
        } else {
            return $arr = [
                't' => 'warning',
                'mess' => 'Error in updating status.'
            ];
        }
    }

    public function admission_query_delete($id='')
    {
        $this->db->where('aq_id',$id)
                ->delete('admission_query');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.',
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting.',
            ];
        }
    }

    // ******** ADMISSION  **********

    public function admission($id='', $regn_no='', $course_id='', $status='', $dt1='', $dt2='')
    {
        $this->db->select('*');
        $this->db->from('admission');

        if ($id != '') {
            $this->db->where('a_id',$id);
        }

        if ($regn_no != '') {
            $this->db->where('regn_no',$regn_no);
        }

        if ($course_id != '') {
            $this->db->where('course_id',$course_id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }        

        if ($dt1 != '' && $dt2 != '') {
            $this->db->where('date BETWEEN "'. $dt1. '" and "'. $dt2.'"');
        }

        $query = $this->db->get();

        if ($id != '' || $regn_no != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function admission_add()
    {
        $i_data = [
            'name' => trim(addslashes($_POST['name'])),
            'date' => date('Y-m-d'),
            'status' => 'Pending',
        ];

        $course = "";

        if (!empty($_POST['course_id'])) {
            $i_data['course_id'] = $_POST['course_id'];

            $course_det = $this->course($i_data['course_id']);

            $course =  $course_det['course_name'];
        }

        if (!empty($_POST['email'])) {
            $i_data['email'] = $_POST['email'];
        }

        if (!empty($_POST['mobile'])) {
            $i_data['mobile'] = $_POST['mobile'];
        }

        $resume = "";

        if (isset($_FILES['Resume'])) {
            if(!empty($_FILES['Resume']['name']))
            {                
                $ct = 'F';
                $path = 'uploads/Resume/';
                $this->load->library('upload'); 

                $size =  $_FILES['image']['size']/1024;

                $max_size = '2048';

                if ($size <= $max_size) {
                    $this->upload->initialize($this->Other_model->set_upload_options_all($ct,$path));

                    if($this->upload->do_upload('Resume')) {

                        $uploaddata = $this->upload->data();

                        $img =  $uploaddata['file_name'];
                        // if (!empty($doc_det['d_width']) && !empty($doc_det['d_height'])) {
                        //     $quality = '80%';
                        //     $width = $doc_det['d_width'];
                        //     $height = $doc_det['d_height'];

                        //     $path2 = $path.$img;

                        //     $resize = $this->Other_model->resize_image($path2,$quality,$width,$height);
                        // } 

                        $i_data['Resume'] = $img;

                        $resume = base_url('uploads/Resume/'.$img);
                        
                    } else {
                        $error = $this->upload->display_errors();

                        return $arr = [
                            'error' => 'Yes',
                            't' => 'warning',
                            'mess' => 'Error for Resume File : '.$error
                        ];
                    }
                } else {
                    $fs = $max_size/1024;
                    return $arr = [
                        'error' => 'Yes',
                        't' => 'warning',
                        'mess' => 'Resume File size should be less than '.$fs.' Mb',
                    ]; exit();
                }
            }
        }

        if (!empty($_POST['dob'])) {
            $i_data['dob'] = $_POST['dob'];
        }

        if (!empty($_POST['address'])) {
            $i_data['address'] = $_POST['address'];
        }

        if (!empty($_POST['state'])) {
            $i_data['state'] = $_POST['state'];
        }

        if (!empty($_POST['district'])) {
            $i_data['district'] = $_POST['district'];
        }

        if (!empty($_POST['qualification'])) {
            $i_data['qualification'] = $_POST['qualification'];
        }

        if (!empty($_POST['job_status'])) {
            $i_data['job_status'] = $_POST['job_status'];
        }

        if (!empty($_POST['work_experience'])) {
            $i_data['work_experience'] = $_POST['work_experience'];
        }

        if (!empty($_POST['gender'])) {
            $i_data['gender'] = $_POST['gender'];
        }

        $this->db->insert('admission',$i_data);

        if ($this->db->affected_rows() > '0') {
            $last = $this->db->insert_id();

            $regn_no = 'WA'.date('y').$last.rand(10,99);

            $this->db->set('regn_no',$regn_no)
                    ->where('a_id',$last)
                    ->update('admission');

            $subject = 'Admission Request. Reference Number : '.$regn_no;

            $email = 'enquiry@wbjrsfoundation.org';

            $mailHtml = "<p>";

            $mailHtml .= "<b>REFERENCE NUMBER : </b>".$regn_no;
            $mailHtml .= "<br><br><b>DATE : </b>".date('d-m-Y');            

            if (!empty($_POST['course_id'])) {
                //$course = $this->course($_POST['course_id']);

                $mailHtml .= "<br><br><b>COURSE : </b>".$course;
            }

            if (!empty($_POST['name'])) {
                $mailHtml .= "<br><br><b>NAME : </b>".$i_data['name'];
            }

            if (!empty($_POST['mobile'])) {
                $mailHtml .= "<br><br><b>MOBILE : </b>".$i_data['mobile'];
            }
             if (!empty($_POST['Resume'])) {
                $mailHtml .= "<br><br><b>RESUME : </b>".$resume;
            }

            if (!empty($_POST['email'])) {
                $mailHtml .= "<br><br><b>EMAIL : </b>".$i_data['email'];
            }

            if (!empty($_POST['dob'])) {
                $date1=date_create($i_data['dob']);
                $date2=date_create(date('Y-m-d'));
                $diff=date_diff($date1,$date2);
                $age = $diff->y;

                $mailHtml .= "<br><br><b>DATE OF BIRTH : </b>".$i_data['dob'].' ('.$age.' years)';
            }

            if (!empty($_POST['gender'])) {
                $mailHtml .= "<br><br><b>GENDER : </b>".$i_data['gender'];
            }

            if (!empty($_POST['qualification'])) {
                $mailHtml .= "<br><br><b>QUALIFICATION : </b>".$i_data['qualification'];
            }

            if (!empty($_POST['job_status'])) {
                $mailHtml .= "<br><br><b>JOB-STATUS : </b>".$i_data['job_status'];
            }            

            if (!empty($_POST['work_experience'])) {
                $mailHtml .= "<br><br><b>WORK EXPERIENCE : </b>".$i_data['work_experience'];
            }

            if (!empty($_POST['address'])) {
                $mailHtml .= "<br><br><b>ADDRESS : </b>".$i_data['address'];
            }

            if (!empty($_POST['state'])) {
                $mailHtml .= "<br><br><b>STATE : </b>".$this->Other_model->get_state_name($i_data['state']);
            }

            if (!empty($_POST['district'])) {
                $mailHtml .= "<br><br><b>DISTRICT : </b>".$this->Other_model->get_district_name($i_data['district']);
            }

            $mailHtml .= "</p>";

            $mail_send = $this->Other_model->send_mail($email, $subject, $mailHtml, '1');

            return $arr = [
                't' => 'success',
                'mess' => 'Your Admission Request has been sent successfully. We will reach you soon.'
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in sending request. Please try again later.'
            ];
        }
    }

    public function admission_mark($id='')
    {
        $this->db->set('status','Approved')
                ->where('a_id',$id)
                ->update('admission');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully marked as read.'
            ];
        } else {
            return $arr = [
                't' => 'warning',
                'mess' => 'Error in updating status.'
            ];
        }
    }

    public function admission_delete($id='')
    {
        $this->db->where('a_id',$id)
                ->delete('admission');

        if ($this->db->affected_rows() > '0') {
            return $arr = [
                't' => 'success',
                'mess' => 'Successfully deleted.',
            ];
        } else {
            return $arr = [
                't' => 'danger',
                'mess' => 'Error in deleting.',
            ];
        }
    }
}
?>