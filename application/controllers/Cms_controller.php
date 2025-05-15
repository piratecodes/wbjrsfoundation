<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Cms_controller extends CI_Controller 
{	
	public function __construct()
	{
		parent::__construct();

		date_default_timezone_set('Asia/Kolkata');  

		$this->comp = $this->Other_model->get_company_details('1');

	    $this->setting = $this->Other_model->setting_path(); 

	    if(!isset($_COOKIE['admin_id'])) {

      	$err_arr = [
            't' => 'danger',
            'mess' => 'Login is required.'
      	];

      	$this->session->set_flashdata('msg',$err_arr);

      	redirect(base_url($this->setting['cms']));
   	}        

   	$this->admin_data = $this->Cms_model->admin_login($_COOKIE['admin_id']);

   	if (isset($this->admin_data)) {
      	if ($this->admin_data['status'] != 'Active') {
         	$cookie = array(
               	'name'   => 'admin_id',
               	'value'  => '',
               	'expire' => '0',
         	);
          
         	delete_cookie($cookie);

         	$err_arr = [
               	't' => 'danger',
               	'mess' => 'Your Id is inactive.'
         	];

         	$this->session->set_flashdata('msg',$err_arr);

         	redirect(base_url($this->setting['cms']));
      	}
   	} else {
      	$cookie = array(
            'name'   => 'admin_id',
            'value'  => '',
            'expire' => '0',
        );
       
      	delete_cookie($cookie);

      	$err_arr = [
            't' => 'danger',
            'mess' => 'Login is required.'
      	];

      	$this->session->set_flashdata('msg',$err_arr);

      	redirect(base_url($this->setting['cms']));
   	} 

   	$this->page_title = strtoupper($this->comp['company_name']).' | '; 

		$this->cur_func = $this->uri->segment(2); 
		$this->cur_func2 = $this->uri->segment(3); 
		$this->cur_func3 = $this->uri->segment(4);   
	}

	public function dashboard()
	{
      $this->title = 'DASHBOARD';
      $this->page_title.= $this->title; 

      if (isset($_SESSION['dt1'])) {
         $_SESSION['dt1'] = "";
      }
      if (isset($_SESSION['dt2'])) {
         $_SESSION['dt2'] = "";
      } 

      $this->data['a_query'] = COUNT($this->Cms_model->admission_query('', '', '', 'Unseen'));
      $this->data['admission'] = COUNT($this->Cms_model->admission('', '', '', 'Pending'));

      $this->data['callback'] = COUNT($this->Cms_model->request_callback('', 'Pending'));
      $this->data['teacher'] = COUNT($this->Cms_model->request_teacher('', 'Pending'));
      $this->data['career'] = COUNT($this->Cms_model->request_career('', 'Pending'));

       $this->data['enquire'] = COUNT($this->Cms_model->request_course_enquire('', 'Pending'));


   	$this->load->view('cms/dashboard');
	}

	// *************** PROFILE *********************

	public function change_pwd()
	{
   	$this->title = "CHANGE PASSWORD";

   	$this->page_title.= $this->title;

   	if (empty($_POST)) {
      	$this->load->view('cms/change_pwd');
   	} else {
      	$this->result = $this->Cms_model->change_pwd($_COOKIE['admin_id']);

      	$this->session->set_flashdata('msg',$this->result);

      	redirect(base_url($this->setting['cms'].'change_pwd'));
   	}
	}

	// ************* COURSE CATEGORY *************

	public function course_cat_update($v='')
	{
		$id = "";

		if ($v != '') {
			$id = base64_decode($v);
			$this->title = 'EDIT COURSE CATEGORY';

			$this->data['details'] = $this->Cms_model->course_category($id);
		} else {
			$this->title = 'ADD COURSE CATEGORY';
		}

		$this->page_title .= $this->title;

		if (empty($_POST)) {
		    
		    $this->data['category'] = $this->Cms_model->course_category('', '', 'Active', '', 'Main');
		    
			$this->load->view('cms/course_cat_update');
		} else {
			$this->result = $this->Cms_model->course_cat_update($id);

			$this->session->set_flashdata('msg',$this->result);

			if ($v != '') {
				redirect(base_url($this->setting['cms'].'course_cat'));
			} else {
				redirect(base_url($this->setting['cms'].'course_cat_add'));
			}
		}
	}

	public function course_cat($v='')
	{
		$this->title = 'COURSE CATEGORY';

		$this->page_title .= $this->title;
		
		$id = "";

        if ($v != '') {
            $id = base64_decode($v);

            $this->data['cat_details'] = $this->Cms_model->course_category($id);

            $this->data['details'] = $this->Cms_model->course_category('', '', '', $id);

        } else {
            $this->data['details'] = $this->Cms_model->course_category('', '', '', '', 'Main');
        }      

		$this->load->view('cms/course_cat');
	}

	// ************* COURSE SECTION *************

	public function course_update($v='')
	{
		$id = "";

		if ($v != '') {
			$id = base64_decode($v);
			$this->title = 'EDIT COURSE';

			$this->data['details'] = $this->Cms_model->course($id);
		} else {
			$this->title = 'ADD COURSE';
		}

		$this->page_title .= $this->title;

		if (empty($_POST)) {
		    
		    $this->data['cat_list'] = $this->Cms_model->course_category('', '', '', '', 'Main');

			$this->load->view('cms/course_update');
		} else {
			$this->result = $this->Cms_model->course_update($id);

			$this->session->set_flashdata('msg',$this->result);

			if ($v != '') {
				redirect(base_url($this->setting['cms'].'course'));
			} else {
				redirect(base_url($this->setting['cms'].'course_add'));
			}
		}
	}

	public function course($v='')
	{
		if ($v != '') {
			$this->title = strtoupper($v).' COURSE';
		} else {
			$this->title = 'COURSE';
		}

		$this->page_title .= $this->title;

		$this->data['details'] = $this->Cms_model->course('', '', '', $v);

		$this->load->view('cms/course');
	}

   // ************ COURSE REVIEW ****************

   public function course_review($v='')
   {
      $course_id = "";
      if ($v != '') {
         $course_id = base64_decode($v);

         $this->data['course_details'] = $this->Cms_model->course($course_id);
      } 
      $this->title = 'COURSE REVIEWS';
      $this->page_title .= $this->title;

      if(empty($_POST))
      {
         if (!isset($_SESSION['dt1'])) {
            $_SESSION['dt1'] = "";
         }
         if (!isset($_SESSION['dt2'])) {
            $_SESSION['dt2'] = "";
         }
      }
      else
      {
         if (!empty($_POST['dt1'])) {
            $_SESSION['dt1'] = $_POST['dt1'];
         } else {
            $_SESSION['dt1'] = "";
         }
         if (!empty($_POST['dt2'])) {
            $_SESSION['dt2'] = $_POST['dt2'];
         } else {
            $_SESSION['dt2'] = "";
         }
      }

      $this->data['details'] = $this->Cms_model->course_review('', $course_id, '', '', $_SESSION['dt1'], $_SESSION['dt2']);

      $this->load->view('cms/course_review');
   }

   public function course_review_update()
   {
      $id = "";      

      if (isset($_POST['cr_id'])) {
         $id = $_POST['cr_id'];
      }

      $this->result = $this->Cms_model->course_review_update($id);

      $this->session->set_flashdata('msg',$this->result);

      if (isset($_POST['course_id'])) {
         $course_id = base64_encode($_POST['course_id']);

         redirect(base_url($this->setting['cms'].'course_review/'.$course_id));

      } else {
         redirect(base_url($this->setting['cms'].'course_review'));
      }      
   }

   // ************* REQUEST CALLBACK SECTION ***************

   public function request_callback($v='')
   {
      if ($v != '') {
         $this->title = strtoupper($v).' CALLBACK REQUEST';
      } else {
         $this->title = 'CALLBACK REQUEST';
      }

      $this->page_title .= $this->title;

      if(empty($_POST))
      {
         if (!isset($_SESSION['dt1'])) {
            $_SESSION['dt1'] = "";
         }
         if (!isset($_SESSION['dt2'])) {
            $_SESSION['dt2'] = "";
         }
      }
      else
      {
         if (!empty($_POST['dt1'])) {
            $_SESSION['dt1'] = $_POST['dt1'];
         } else {
            $_SESSION['dt1'] = "";
         }
         if (!empty($_POST['dt2'])) {
            $_SESSION['dt2'] = $_POST['dt2'];
         } else {
            $_SESSION['dt2'] = "";
         }
      }

      $this->data['details'] = $this->Cms_model->request_callback('', $v, $_SESSION['dt1'], $_SESSION['dt2']);

      $this->load->view('cms/request_callback');
   }

   public function request_callback_mark($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->request_callback_mark($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'request_callback/Pending'));
   }

   public function request_callback_delete($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->request_callback_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'request_callback/Pending'));
   }

   // ************* REQUEST TEACHER SECTION ***************

   public function request_teacher($v='')
   {
      if ($v != '') {
         $this->title = strtoupper($v).' TEACHER REQUEST';
      } else {
         $this->title = 'TEACHER REQUEST';
      }

      $this->page_title .= $this->title;

      if(empty($_POST))
      {
         if (!isset($_SESSION['dt1'])) {
            $_SESSION['dt1'] = "";
         }
         if (!isset($_SESSION['dt2'])) {
            $_SESSION['dt2'] = "";
         }
      }
      else
      {
         if (!empty($_POST['dt1'])) {
            $_SESSION['dt1'] = $_POST['dt1'];
         } else {
            $_SESSION['dt1'] = "";
         }
         if (!empty($_POST['dt2'])) {
            $_SESSION['dt2'] = $_POST['dt2'];
         } else {
            $_SESSION['dt2'] = "";
         }
      }

      $this->data['details'] = $this->Cms_model->request_teacher('', $v, $_SESSION['dt1'], $_SESSION['dt2']);

      $this->load->view('cms/request_teacher');
   }

   public function request_teacher_mark($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->request_teacher_mark($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'request_teacher/Pending'));
   }

   public function request_teacher_delete($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->request_teacher_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'request_teacher/Pending'));
   }

   // ************* REQUEST CAREER SECTION ***************

   public function request_career($v='')
   {
      if ($v != '') {
         $this->title = strtoupper($v).' CAREER COUNSELLING REQUEST';
      } else {
         $this->title = 'CAREER COUNSELLING REQUEST';
      }

      $this->page_title .= $this->title;

      if(empty($_POST))
      {
         if (!isset($_SESSION['dt1'])) {
            $_SESSION['dt1'] = "";
         }
         if (!isset($_SESSION['dt2'])) {
            $_SESSION['dt2'] = "";
         }
      }
      else
      {
         if (!empty($_POST['dt1'])) {
            $_SESSION['dt1'] = $_POST['dt1'];
         } else {
            $_SESSION['dt1'] = "";
         }
         if (!empty($_POST['dt2'])) {
            $_SESSION['dt2'] = $_POST['dt2'];
         } else {
            $_SESSION['dt2'] = "";
         }
      }

      $this->data['details'] = $this->Cms_model->request_career('', $v, $_SESSION['dt1'], $_SESSION['dt2']);

      $this->load->view('cms/request_career');
   }

   public function request_career_mark($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->request_career_mark($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'request_career/Pending'));
   }

   public function request_career_delete($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->request_career_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'request_career/Pending'));
   }

   public function request_course_enquire($v='')
   {
      if ($v != '') {
         $this->title = strtoupper($v).' COURSE BOOKING';
      } else {
         $this->title = 'COURSE BOOKING';
      }

      $this->page_title .= $this->title;

      if(empty($_POST))
      {
         if (!isset($_SESSION['dt1'])) {
            $_SESSION['dt1'] = "";
         }
         if (!isset($_SESSION['dt2'])) {
            $_SESSION['dt2'] = "";
         }
      }
      else
      {
         if (!empty($_POST['dt1'])) {
            $_SESSION['dt1'] = $_POST['dt1'];
         } else {
            $_SESSION['dt1'] = "";
         }
         if (!empty($_POST['dt2'])) {
            $_SESSION['dt2'] = $_POST['dt2'];
         } else {
            $_SESSION['dt2'] = "";
         }
      }

      $this->data['details'] = $this->Cms_model->request_course_enquire('', $v, $_SESSION['dt1'], $_SESSION['dt2']);

      $this->load->view('cms/request_course_enquire');
   }
   
   public function request_course_enquire_mark($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->request_course_enquire_mark($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'request_course_enquire/Pending'));
   }

   public function request_course_enquire_delete($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->request_course_enquire_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'request_course_enquire/Pending'));
   }
   
   // ************* HOME SLIDER SECTION *************

   public function hs_update($v='')
   {
      $id = "";

      if ($v != '') {
         $id = base64_decode($v);
         $this->title = 'EDIT HOME SLIDER';

         $this->data['details'] = $this->Cms_model->hs($id);
      } else {
         $this->title = 'ADD HOME SLIDER';
      }

      $this->page_title .= $this->title;

      if (empty($_POST)) {
         $this->load->view('cms/hs_update');
      } else {
         $this->result = $this->Cms_model->hs_update($id);

         $this->session->set_flashdata('msg',$this->result);

         if ($v != '') {
            redirect(base_url($this->setting['cms'].'hs'));
         } else {
            redirect(base_url($this->setting['cms'].'hs_add'));
         }
      }
   }

   public function hs($v='')
   {
      if ($v != '') {
         $this->title = strtoupper($v).' HOME SLIDER';
      } else {
         $this->title = 'HOME SLIDER';
      }

      $this->page_title .= $this->title;

      $this->data['details'] = $this->Cms_model->hs('', $v);

      $this->load->view('cms/hs');
   }

   public function hs_delete($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->hs_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'hs'));
   }

   // *************** PAGE MANAGE *************************

   public function pg_manage($v='')
   {
      $id = "";

      if ($v != '') {
         $this->data['details'] = $this->Cms_model->pg_manage('', $v);

         $id = $this->data['details']['id'];

         $this->title = 'PAGE MANAGE : '.strtoupper($this->data['details']['name']);
      } else {
         redirect(base_url($this->setting['cms'].'dashboard'));
      }

      $this->page_title .= $this->title;

      if (empty($_POST)) {
         $this->load->view('cms/pg_manage');
      } else {
         $this->result = $this->Cms_model->pg_manage_update($id);

         $this->session->set_flashdata('msg',$this->result);

         redirect(base_url($this->setting['cms'].'pg_manage/'.$v));
      }
   }

   // *************** PAGE MANAGE REPEAT ******************

   public function pg_manager($v='')
   {
      if ($v != '') {
         $this->data['details'] = $this->Cms_model->pg_repeat('', $v);

         $this->data['type'] = $v;

         if ($v == 'Key_Facilities') {
            $name = 'Key Facilities';
         } elseif ($v == 'Why_choose') {
            $name = 'Why Choose Us';
         } elseif ($v == 'Govt_pledge') {
            $name = 'Government Pledge';
         } else {
            $name = $v;
         }

         $this->title = 'PAGE MANAGE : '.strtoupper($name);
      } else {
         redirect(base_url($this->setting['cms'].'dashboard'));
      }

      $this->page_title .= $this->title;

      $this->load->view('cms/pg_manager');
   }

   public function pg_manager_update($type='', $v='')
   {
      $id = "";

      if ($v != '') {
         $id = base64_decode($v);

         $this->data['details'] = $this->Cms_model->pg_repeat($id);

         $this->title = 'EDIT ';
      } else {
         $this->title = 'ADD ';
      }

      $this->data['type'] = $type;

      if ($type == 'Key_Facilities') {
         $name = 'Key Facilities';
      } elseif ($type == 'Why_choose') {
         $name = 'Why Choose Us';
      } elseif ($type == 'Govt_pledge') {
         $name = 'Government Pledge';
      } else {
         $name = $type;
      }

      $this->title .= strtoupper($name);

      if (empty($_POST)) {
         $this->load->view('cms/pg_manager_update');
      } else {
         $this->result = $this->Cms_model->pg_repeat_update($id);

         $this->session->set_flashdata('msg',$this->result);

         redirect(base_url($this->setting['cms'].'pg_manager/'.$type));
      }         
   }

   // *************** PAGE SEO ******************

   public function seo_list($v='')
   {
      $this->title = 'PAGE SEO';

      $this->page_title .= $this->title;

      $this->data['details'] = $this->Cms_model->seo('', '', 'Active');

      $this->load->view('cms/seo_list');
   }

   public function seo_update($v='')
   {
      $id = "";

      if ($v != '') {
         $id = base64_decode($v);

         $this->data['details'] = $this->Cms_model->seo($id);

         $this->title = 'EDIT SEO';
      } else {
         $this->title = 'ADD SEO';
      }

      if (empty($_POST)) {
         $this->load->view('cms/seo_update');
      } else {
         $this->result = $this->Cms_model->seo_update($id);

         $this->session->set_flashdata('msg',$this->result);

         redirect(base_url($this->setting['cms'].'seo_list'));
      }         
   }

   //**********************NBSECTION***********************
      
   public function nb_update($v='')
   {
      $id = "";

      if ($v != '') {
         $id = base64_decode($v);
         $this->title = 'EDIT NOTICE BOARD';

         $this->data['details'] = $this->Cms_model->nb($id);
      } else {
         $this->title = 'ADD NOTICE';
      }

      $this->page_title .= $this->title;

      if (empty($_POST)) {
         $this->load->view('cms/nb_update');
      } else {
         $this->result = $this->Cms_model->nb_update($id);

         $this->session->set_flashdata('msg',$this->result);

         if ($v != '') {
            redirect(base_url($this->setting['cms'].'nb'));
         } else {
            redirect(base_url($this->setting['cms'].'nb_add'));
         }
      }
   }

   public function nb($v='')
   {
      if ($v != '') {
         $this->title = strtoupper($v).' NOTICE BOARD';
      } else {
         $this->title = 'NOTICE BOARD';
      }

      $this->page_title .= $this->title;

      $this->data['details'] = $this->Cms_model->nb('', $v);

      $this->load->view('cms/nb');
   }

   public function nb_delete($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->nb_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'nb'));
   }

    // ************* BLOG SECTION *************

    public function blog_update($v='')
   {
      $id = "";

      if ($v != '') {
         $id = base64_decode($v);
         $this->title = 'EDIT Blog';

         $this->data['details'] = $this->Cms_model->blogs($id);
      } else {
         $this->title = 'ADD Blog';
      }

      $this->page_title .= $this->title;

      if (empty($_POST)) {
         $this->load->view('cms/blog_update');
      } else {
         $this->result = $this->Cms_model->blog_update($id);

         $this->session->set_flashdata('msg',$this->result);

         if ($v != '') {
            redirect(base_url($this->setting['cms'].'blogs'));
         } else {
            redirect(base_url($this->setting['cms'].'blog_add'));
         }
      }
   }

   public function blogs($v='')
   {
      if ($v != '') {
         $this->title = strtoupper($v).' Blogs';
      } else {
         $this->title = 'Blogs';
      }

      $this->page_title .= $this->title;

      $this->data['details'] = $this->Cms_model->blogs('', $v);

      $this->load->view('cms/blogs');
   }

   public function blog_delete($v='')
   {
      $id = base64_decode($v);
      
      $this->result = $this->Cms_model->blog_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'blogs'));
   }
    
   // ************* GALLERY SECTION *************

   public function gallery_album_update($v='')
   {
      $id = "";

      if ($v != '') {
         $id = base64_decode($v);
         $this->title = 'EDIT GALLERY ALBUM';

         $this->data['details'] = $this->Cms_model->gallery_album($id);
      } else {
         $this->title = 'ADD GALLERY ALBUM';
      }

      $this->page_title .= $this->title;

      if (empty($_POST)) {
         $this->load->view('cms/gallery_album_update');
      } else {
         $this->result = $this->Cms_model->gallery_album_update($id);

         $this->session->set_flashdata('msg',$this->result);

         if ($v != '') {
            redirect(base_url($this->setting['cms'].'gallery_album'));
         } else {
            redirect(base_url($this->setting['cms'].'gallery_album_add'));
         }
      }
   }

   public function gallery_album($v='')
   {
      $album = "";

      if ($v != '') {
         $this->title = strtoupper($v).' GALLERY ALBUM';
      } else {
         $this->title = 'GALLERY ALBUM';
      }

      $this->page_title .= $this->title;

      $this->data['details'] = $this->Cms_model->gallery_album('', $v);

      $this->load->view('cms/gallery_album');
   }

   public function gallery_update($v='')
   {
      $id = "";

      if ($v != '') {
         $id = base64_decode($v);
         $this->title = 'EDIT GALLERY';

         $this->data['details'] = $this->Cms_model->gallery($id);
      } else {
         $this->title = 'ADD GALLERY';
      }

      $this->page_title .= $this->title;

      if (empty($_POST)) {

         $this->data['album'] = $this->Cms_model->gallery_album();

         $this->load->view('cms/gallery_update');
      } else {
         $this->result = $this->Cms_model->gallery_update($id);

         $this->session->set_flashdata('msg',$this->result);

         if ($v != '') {
            redirect(base_url($this->setting['cms'].'gallery'));
         } else {
            redirect(base_url($this->setting['cms'].'gallery_add'));
         }
      }
   }

   public function gallery($v='')
   {      
      $album = "";
      if ($v != '') {

         $album = base64_decode($v);
         $this->data['album'] = $this->Cms_model->gallery_album($album);

         $this->title = 'GALLERY : '.strtoupper($this->data['album']['album_name']);
      } else {
         $this->title = 'GALLERY';
      }

      $this->page_title .= $this->title;

      $this->data['details'] = $this->Cms_model->gallery('', '', $album);

      $this->load->view('cms/gallery');
   }

   public function gallery_delete($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->gallery_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'gallery'));
   }

   // ************** CERTIFICATE SECTION **************

   public function certificate_csv($value='')
   {
      $filename = 'certificate_upload'.date('Ymd').'.csv'; 
      header("Content-Description: File Transfer"); 
      header("Content-Disposition: attachment; filename=$filename"); 
      header("Content-Type: application/csv; ");
      
      $file = fopen('php://output','w');
      if ($value == 'Participation') {
         $header = array("Certificate Number, Name, Certificate Name, Subject, Location"); 
      }
      if ($value == 'Completion') {
         $header = array("Certificate Number, Name, Certificate Name, Subject, Total Score, Marks Obtained"); 
      }
      
      foreach ( $header as $line ) 
      {
          $val = explode(",", $line);
          fputcsv($file, $val);
      }
      fclose($file); 
      exit; 
   }

   public function certificate_csv_delete($value='')
   {
      unset($_SESSION['k_arr']);

      $res = [
         't' => 'success',
         'mess' => 'Successfully deleted'
      ];

      $this->session->set_flashdata('msg',$res);
            
      redirect(base_url($this->setting['cms'].'certificate_upload'));
   }

   public function certificate_update($v='')
   {
      $id = "";

      if ($v != '') {
         $id = base64_decode($v);
         $this->title = 'EDIT CERTIFICATE';

         $this->data['details'] = $this->Cms_model->certificate($id);
      } else {
         $this->title = 'ADD CERTIFICATE';
      }

      $this->page_title .= $this->title;

      if (empty($_POST)) {
         $this->load->view('cms/certificate_update');
      } else {
         $this->result = $this->Cms_model->certificate_update($id);

         $this->session->set_flashdata('msg',$this->result);

         if ($v != '') {
            redirect(base_url($this->setting['cms'].'certificate_list/'.$this->data['details']['type']));
         } else {
            redirect(base_url($this->setting['cms'].'certificate_add'));
         }
      }
   }

   public function certificate_upload($value='')
   {
      $this->title = $this->page_title = 'UPLOAD CERTIFICATE';

      if (empty($_POST)) {
         $this->load->view('cms/certificate_upload');
      } else {
         if(isset($_SESSION['k_arr'])){
            unset($_SESSION['k_arr']);
         }

         $file_mimes = array('text/x-comma-separated-values', 'text/comma-separated-values', 'application/octet-stream', 'application/vnd.ms-excel', 'application/x-csv', 'text/x-csv', 'text/csv', 'application/csv', 'application/excel', 'application/vnd.msexcel', 'text/plain', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
         if(isset($_FILES['upload_file']['name']) && in_array($_FILES['upload_file']['type'], $file_mimes)) 
         {
            $arr_file = explode('.', $_FILES['upload_file']['name']);
            $extension = end($arr_file);
            if('csv' == $extension)
            {
               $reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();

               $spreadsheet = $reader->load($_FILES['upload_file']['tmp_name']);
               $sheetData = $spreadsheet->getActiveSheet()->toArray();

               $this->result = $this->Cms_model->certificate_upload($sheetData, $_POST['type'], $_POST['date']);

               $this->session->set_flashdata('msg',$this->result);
               
               redirect(base_url($this->setting['cms'].'certificate_upload'));
            } else {
               $arr = [
                  't' => 'warning',
                  'mess' => 'Please upload only .csv files.',
               ];
               $this->session->set_flashdata('msg',$arr);
            
               redirect(base_url($this->setting['cms'].'certificate_upload'));
            }                          
         } else {
            $arr = [
               't' => 'warning',
               'mess' => 'Please upload only .csv files.',
            ];
            $this->session->set_flashdata('msg',$arr);
            
            redirect(base_url($this->setting['cms'].'certificate_upload'));
         }
      }
   }

   public function certificate_list($v='')
   {
      $album = "";

      if ($v != '') {
         $this->title = strtoupper($v).' CERTIFICATE';
      } else {
         $this->title = 'CERTIFICATE';
      }

      $this->page_title .= $this->title;

      $this->data['details'] = $this->Cms_model->certificate('', '', $v);

      $this->load->view('cms/certificate_list');
   }

   public function certificate_delete($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->certificate_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'certificate_list/'.$this->result['type']));
   }
   
   //-----------expert section--------------
   
    public function expert_update($v='')
   {
      $id = "";

      if ($v != '') {
         $id = base64_decode($v);
         $this->title = 'EDIT EXPERT';

         $this->data['details'] = $this->Cms_model->expert($id);
      } else {
         $this->title = 'ADD EXPERT/ TEAM/ RND/ GOVBODY';
      }

      $this->page_title .= $this->title;

      if (empty($_POST)) {

         $this->load->view('cms/expert_update');
      } else {
         $this->result = $this->Cms_model->expert_update($id);

         $this->session->set_flashdata('msg',$this->result);

         if ($v != '') {
            redirect(base_url($this->setting['cms'].'expert'));
         } else {
            redirect(base_url($this->setting['cms'].'expert_add'));
         }
      }
   }

   public function expert($v='')
   {      
      if ($v != '') {
         $this->title = strtoupper($v).' EXPERT/ TEAM/ RND/ GOVBODY';
      } else {
         $this->title = 'EXPERT/ TEAM/ RND/ GOVBODY';
      }

      $this->page_title .= $this->title;

      $this->data['details'] = $this->Cms_model->expert('', $v);

      $this->load->view('cms/expert');
   }
   
   // *********** ADMISSION QUERY ***********

   public function admission_query($v='')
   {
      if ($v != '') {
         $this->title = strtoupper($v).' ADMISSION QUERY';
      } else {
         $this->title = 'ADMISSION QUERY';
      }

      $this->page_title .= $this->title;

      if(empty($_POST))
      {
         if (!isset($_SESSION['dt1'])) {
            $_SESSION['dt1'] = "";
         }
         if (!isset($_SESSION['dt2'])) {
            $_SESSION['dt2'] = "";
         }
      }
      else
      {
         if (!empty($_POST['dt1'])) {
            $_SESSION['dt1'] = $_POST['dt1'];
         } else {
            $_SESSION['dt1'] = "";
         }
         if (!empty($_POST['dt2'])) {
            $_SESSION['dt2'] = $_POST['dt2'];
         } else {
            $_SESSION['dt2'] = "";
         }
      }

      $this->data['details'] = $this->Cms_model->admission_query('', '', '', $v, $_SESSION['dt1'], $_SESSION['dt2']);

      $this->load->view('cms/admission_query');
   }

   public function admission_query_mark($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->admission_query_mark($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'admission_query/Unseen'));
   }

   public function admission_query_delete($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->admission_query_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'admission_query/Unseen'));
   }

   // *********** ADMISSION ***********

   public function admission($v='')
   {
      if ($v != '') {
         $this->title = strtoupper($v).' ADMISSION';
      } else {
         $this->title = 'ADMISSION';
      }

      $this->page_title .= $this->title;

      if(empty($_POST))
      {
         if (!isset($_SESSION['dt1'])) {
            $_SESSION['dt1'] = "";
         }
         if (!isset($_SESSION['dt2'])) {
            $_SESSION['dt2'] = "";
         }
      }
      else
      {
         if (!empty($_POST['dt1'])) {
            $_SESSION['dt1'] = $_POST['dt1'];
         } else {
            $_SESSION['dt1'] = "";
         }
         if (!empty($_POST['dt2'])) {
            $_SESSION['dt2'] = $_POST['dt2'];
         } else {
            $_SESSION['dt2'] = "";
         }
      }

      $this->data['details'] = $this->Cms_model->admission('', '', '', $v, $_SESSION['dt1'], $_SESSION['dt2']);

      $this->load->view('cms/admission');
   }

   public function admission_details($v='')
   {
      $id = base64_decode($v);

      $this->data['details'] = $this->Cms_model->admission($id);

      $this->title = 'ADMISSION DETAILS : '.$this->data['details']['regn_no'];

      $this->page_title .= $this->title;

      $this->load->view('cms/admission_details');
   }

   public function admission_mark($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->admission_mark($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'admission/Pending'));
   }

   public function admission_delete($v='')
   {
      $id = base64_decode($v);

      $this->result = $this->Cms_model->admission_delete($id);

      $this->session->set_flashdata('msg',$this->result);

      redirect(base_url($this->setting['cms'].'admission/Pending'));
   }
}
?>