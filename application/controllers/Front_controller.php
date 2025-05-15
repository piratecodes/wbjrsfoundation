<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front_controller extends CI_Controller 
{	
	public function __construct()
	{
   		parent::__construct();

   		date_default_timezone_set('Asia/Kolkata'); 

   		$this->comp = $this->Other_model->get_company_details('1');

   	    $this->setting = $this->Other_model->setting_path();

        $this->data['cat_list'] = $this->Cms_model->course_category('', '', 'Active','', 'Main');  

        $this->data['olympiad'] = $this->Cms_model->pg_repeat('', 'Olympiad', 'Active'); 

        $this->cur_func = $this->uri->segment(2); 
		$this->cur_func2 = $this->uri->segment(3); 
		$this->cur_func3 = $this->uri->segment(4);

		$pg_url = "";

		if ($this->cur_func != '') {
			$pg_url = $this->cur_func;
		} else {
			$pg_url = 'index';
		}

		if ($this->cur_func2 != '') {
			$pg_url .= '/'.$this->cur_func2;
		}

		if ($this->cur_func3 != '') {
			$pg_url .= '/'.$this->cur_func3;
		}

		$seo = $this->Cms_model->seo('', $pg_url, 'Active');

		$this->meta = [
			'meta_title' => 'WBJRS',
			'meta_keyword' => '',
			'meta_description' => '',
		];		

		if (!empty($seo)) {
			if (!empty($seo['meta_title'])) {
				$this->meta['meta_title'] = $seo['meta_title'];
			}

			if (!empty($seo['meta_keyword'])) {
				$this->meta['meta_keyword'] = $seo['meta_keyword'];
			}

			if (!empty($seo['meta_description'])) {
				$this->meta['meta_description'] = $seo['meta_description'];
			}
		} 

		$this->course = $this->Cms_model->course('', '', '', 'Active');
	}

	public function index()
	{
		$this->data['course'] = $this->Cms_model->course('', '', '', 'Active', '4');
		$this->data['review'] = $this->Cms_model->course_review('', '', 'Approved', 'Active', '', '', '', '6', 'Yes');
		$this->data['slider'] = $this->Cms_model->hs('', 'Active');

		$this->data['section1'] = $this->Cms_model->pg_manage('', 'home');
		$this->data['callback'] = $this->Cms_model->pg_manage('', 'callback');

		$this->data['key_facilities'] = $this->Cms_model->pg_repeat('', 'Key_Facilities', 'Active');
		$this->data['why_choose'] = $this->Cms_model->pg_repeat('', 'Why_choose', 'Active');

		$this->data['gallery'] = $this->Cms_model->gallery('', 'Active', '', '', '10');
	
		$this->data['noticeboard'] = $this->Cms_model->nb('', 'Active');
		$this->load->view('front/index');
	
	}

	public function request_callback_submit($value='')
	{
		$this->result = $this->Cms_model->request_callback_submit();

		$this->session->set_flashdata('msg',$this->result);

		redirect(base_url());
	}

	public function request_teacher_submit($value='')
	{
		$this->result = $this->Cms_model->request_teacher_submit();

		$this->session->set_flashdata('msg2',$this->result);

		redirect(base_url());
	}

	public function request_career_submit($value='')
	{
		$this->result = $this->Cms_model->request_career_submit();

		$this->session->set_flashdata('msg3',$this->result);

		redirect(base_url());
	}

	public function request_enquire_submit($value='')
	{
		$this->result = $this->Cms_model->request_enquire_submit();

		$this->session->set_flashdata('msg3',$this->result);

		redirect(base_url());
	}

	// ********* certificate ************

	public function certificate($v='')
	{
		if ($v != '') {
			$this->data['details'] = $this->Cms_model->certificate('', $v);
		}

		if (empty($_POST)) {
			$this->load->view('front/certificate');
		} else {
			$certificate_num = trim(addslashes($_POST['certificate_num']));

			redirect(base_url('certificate/'.$certificate_num));
		}
	}

	// ********* about section ****************

	public function about()
	{	    
	    $this->data['section1'] = $this->Cms_model->pg_manage('', 'about');
	    $this->data['why_choose'] = $this->Cms_model->pg_repeat('', 'Why_choose', 'Active');
	    $this->data['review'] = $this->Cms_model->course_review('', '', 'Approved', 'Active', '', '', '', '6', 'Yes');

	    $this->load->view('front/about');
	}

	public function mission_vision()
	{
		$this->data['section1'] = $this->Cms_model->pg_manage('', 'mission_vision');
	    $this->load->view('front/mission_vision');
	}

	public function aim()
	{
		$this->data['section1'] = $this->Cms_model->pg_manage('', 'aim');
	    $this->load->view('front/aim');
	}

	public function accreditation()
	{
		$this->page_title = 'Accreditation';
		$this->data['details'] = $this->Cms_model->pg_repeat('', 'Accreditation', 'Active');
	    $this->load->view('front/about_pg');
	}

	public function appreciations()
	{
		$this->page_title = 'Appreciation';
		$this->data['details'] = $this->Cms_model->pg_repeat('', 'Appreciation', 'Active');
	    $this->load->view('front/about_pg');
	}

	public function authorization()
	{		
		$this->page_title = 'Authorization';
		$this->data['details'] = $this->Cms_model->pg_repeat('', 'Authorization', 'Active');
	    $this->load->view('front/about_pg');
	}

	public function our_govt_pledge()
	{
		$this->page_title = 'Our Govt Pledge';
		$this->data['details'] = $this->Cms_model->pg_repeat('', 'Govt_pledge', 'Active');
	    $this->load->view('front/about_pg');
	}
	
	public function banking_partner()
	{
		$this->data['section1'] = $this->Cms_model->pg_manage('', 'banking_partner');
	    $this->load->view('front/banking_partner');
	}

	public function media_partner()
	{
		$this->data['section1'] = $this->Cms_model->pg_manage('', 'media_partner');
	    $this->load->view('front/media_partner');
	}

	public function info_bro()
	{
	    $this->load->view('front/info_bro');
	}	

	// ********** end of about section **********

	// ********** Course section ************

	public function olympiad($v='')
	{
		$this->data['details'] = $this->Cms_model->pg_repeat('', 'Olympiad', 'Active', $v, 'Single');

		if (empty($this->data['details'])) {
			redirect(base_url());
		}

		$this->page_title = $this->data['details']['name'];

	    $this->load->view('front/olympiad');
	}

	// *********** end of course section **********

	public function bulletins()
	{
	    $this->data['list'] = $this->Cms_model->pg_bulletins_dt('Yes', '', 'Active');
	    $this->load->view('front/bulletins');
	}

	
	public function gov_body()
	{		
	    $this->data['details'] = $this->Cms_model->expert('', 'Active', 'Govbody');
	   	$this->load->view('front/gov_body'); 
	}
	public function advisory_members()
	{
	    $this->data['details'] = $this->Cms_model->expert('', 'Active', 'Advisory');
	    $this->load->view('front/advisory_members');
	}

	public function shree_gurukul()
	{
		$this->data['details'] = $this->Cms_model->expert('', 'Active', 'Global');
	    $this->load->view('front/shree_gurukul');
	}

	public function career()
	{
		if (empty($_POST)) {
			$this->data['course'] = $this->Cms_model->course('', '', '', 'Active');
			$this->load->view('front/career');
		} else {
			$this->result = $this->Cms_model->admission_query_add();

			$this->session->set_flashdata('msg',$this->result);

      		redirect(base_url('career'));
		}		
	}

	public function services_page()
	{
	    $this->load->view('front/services_page');
	}
	
	public function rnd_team()
	{
	   	$this->data['details'] = $this->Cms_model->expert('', 'Active', 'rnd');
	   	    $this->load->view('front/rnd_team'); 
	   
	}
	
	public function notice_board()
	{
	    	$this->data['noticeboard'] = $this->Cms_model->nb('', 'Active');
		    $this->load->view('front/notice_board');
	}
	
	public function thc_registration()
	{
	    $this->load->view('front/thc_registration');
	}
	
	public function terms_conditions()
	{
		$this->data['section1'] = $this->Cms_model->pg_manage('', 'terms_conditions');
	    $this->load->view('front/terms_conditions');
	}
	public function privacy_policy()
	{
		$this->data['section1'] = $this->Cms_model->pg_manage('', 'privacy_policy');
	    $this->load->view('front/privacy_policy');
	}
	public function grievances_cell()
	{
	    $this->load->view('front/grievances_cell');
	}	
	public function technical_courses()
	{
	    $this->load->view('front/technical_courses');
	}
	public function non_technical_courses()
	{
	    $this->load->view('front/non_technical_courses');
	}
	public function courses_for_schools()
	{
	    $this->load->view('front/courses_for_schools');
	}
	public function hotel_management()
	{
	    $this->load->view('front/hotel_management');
	}
	
	public function our_expert()
	{
		$this->data['details'] = $this->Cms_model->expert('', 'Active', 'Expert');
	    $this->load->view('front/our_expert');
	}		

	public function legal_documents()
	{
	    $this->load->view('front/legal_documents');
	}
	
	public function ug_pg_programe()
	{
	    $this->load->view('front/ug_pg_programe');
	}
	
	public function team()
	{
		$this->data['details'] = $this->Cms_model->expert('', 'Active', 'Team');
	
		$this->load->view('front/team');
		    }
	public function hippo_english_olympiad()
	{
	    $this->load->view('front/hippo_english_olympiad');
	}
	public function mathematical_kangaroo_competition()
	{
	    $this->load->view('front/mathematical_kangaroo_competition');
	}
	public function international_science_olympiad()
	{
	    $this->load->view('front/international_science_olympiad');
	}

	public function blogs($v='')
	{
		$this->data['blogs'] = $this->Cms_model->blogs($v);

		$this->load->view('front/blogs');
	}

	public function blog($b='')
	{
		// $blog_post = 1;
		
		if($b != ''){
			$this->data['blogs'] = $this->Cms_model->blogs('', $b);
			
		}

		$this->load->view('front/blog');
	}

	public function gallery_album($v='')
	{
		$this->data['album'] = $this->Cms_model->gallery_album('', $v);

		$this->load->view('front/gallery_album');
	}

	public function gallery($v='')
	{
		$album = "";
		
		if ($v != '') {

			$this->data['album'] = $this->Cms_model->gallery_album('', '', $v);
			$album = $this->data['album']['ga_id'];

			if (!empty($this->data['album']['meta_title'])) {
				$this->meta['meta_title'] = $this->data['album']['meta_title'];
			}

			if (!empty($this->data['album']['meta_keyword'])) {
				$this->meta['meta_keyword'] = $this->data['album']['meta_keyword'];
			}

			if (!empty($this->data['album']['meta_description'])) {
				$this->meta['meta_description'] = $this->data['album']['meta_description'];
			}
		}

		$this->data['gallery'] = $this->Cms_model->gallery('', 'Active', $album);
	    $this->load->view('front/gallery');
	}

	public function contact()
	{
		if (empty($_POST)) {
			$this->data['course'] = $this->Cms_model->course('', '', '', 'Active');
			$this->load->view('front/contact');
		} else {
			$this->result = $this->Cms_model->admission_query_add();

			$this->session->set_flashdata('msg',$this->result);

      		redirect(base_url('contact'));
		}		
	}
	
	public function pop_up_form()
	{
		if (empty($_POST)) {
			$this->data['course'] = $this->Cms_model->course('', '', '', 'Active');
			$this->load->view('front/pop_up_form');
		} else {
			$this->result = $this->Cms_model->admission_query_add();

			$this->session->set_flashdata('msg',$this->result);

      		redirect(base_url('pop_up_form'));
		}		
	}
	
	
	public function admissionform()
	{
		if (empty($_POST)) {
			$this->data['course'] = $this->Cms_model->course('', '', '', 'Active');

			$this->data['state'] = $this->Other_model->get_state('', 'Active');

			$this->load->view('front/admissionform');
		} else {
			$this->result = $this->Cms_model->admission_add();

			$this->session->set_flashdata('msg',$this->result);

      		redirect(base_url('admissionform'));
		}
	}

	public function course($v='')
	{
		$this->data['cat_details'] = $this->Cms_model->course_category('', $v);

		if (empty($this->data['cat_details'])) {
			redirect(base_url('category'));
		} else {

			if (!empty($this->data['cat_details']['meta_title'])) {
				$this->meta['meta_title'] = $this->data['cat_details']['meta_title'];
			}

			if (!empty($this->data['cat_details']['meta_keyword'])) {
				$this->meta['meta_keyword'] = $this->data['cat_details']['meta_keyword'];
			}

			if (!empty($this->data['cat_details']['meta_description'])) {
				$this->meta['meta_description'] = $this->data['cat_details']['meta_description'];
			}
		    
		    $this->data['subcat_list'] = $this->Cms_model->course_category('', '', 'Active', $this->data['cat_details']['cc_id']);
		    
		    if (empty($this->data['subcat_list'])) {
		        
		        $cat_id = $subcat_id = "";
		        
		        if (!empty($this->data['cat_details']['parent_id'])) {
		            $cat_id = $this->data['cat_details']['parent_id'];
		            $subcat_id = $this->data['cat_details']['cc_id'];
		        } else {
		    
    			    $cat_id = $this->data['cat_details']['cc_id'];
		        }
    
    			$this->data['details'] = $this->Cms_model->course('', '', $cat_id, 'Active', '', $subcat_id);
    
    			$this->load->view('front/course');
		    } else {
		        $this->load->view('front/category');
		    }
		}	    
	}

	public function course_details($v='')
	{
		$this->data['details'] = $this->Cms_model->course('', $v);

		if (empty($this->data['details'])) {
			redirect(base_url('category'));
		} else {

			if (!empty($this->data['details']['meta_title'])) {
				$this->meta['meta_title'] = $this->data['details']['meta_title'];
			}

			if (!empty($this->data['details']['meta_keyword'])) {
				$this->meta['meta_keyword'] = $this->data['details']['meta_keyword'];
			}

			if (!empty($this->data['details']['meta_description'])) {
				$this->meta['meta_description'] = $this->data['details']['meta_description'];
			}

			$cat_id = $this->data['details']['cat_id'];
			$subcat_id = $this->data['details']['subcat_id'];

			$this->data['courses'] = $this->Cms_model->course('', '', $cat_id, 'Active', '3',$subcat_id);

			$this->data['tot_review'] = COUNT($this->Cms_model->course_review('', $this->data['details']['c_id'], 'Approved'));

			$this->data['review'] = $this->Cms_model->course_review('', $this->data['details']['c_id'], 'Approved', 'Active', '', '', '', '2');

			$this->load->view('front/course_details');
		}
	}
}
?>