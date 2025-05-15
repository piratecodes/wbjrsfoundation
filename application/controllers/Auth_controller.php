<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth_controller extends CI_Controller 
{	
	public function __construct()
	{
   		parent::__construct();

   		date_default_timezone_set('Asia/Kolkata');      

   		$this->comp = $this->Other_model->get_company_details('1');

   	    $this->setting = $this->Other_model->setting_path();
	}

	// ******** CMS LOGIN ******	

	public function cms_login()
	{		
		$this->page_title = 'CMS LOGIN';
		if(isset($_COOKIE['admin_id']))
		{
			$this->Auth_model->cms_last_login($_COOKIE['admin_id']);
			redirect(base_url($this->setting['cms'].'dashboard'));
		}
		else
		{
			if(empty($_POST))
			{
				$this->load->view('cms/login');
			}
			else
			{
				$this->form_validation->set_rules("login_id","Login Id","trim|required");
	    		$this->form_validation->set_rules("login_password","Password","trim|required");

	    		if($this->form_validation->run() == false)
	    		{
	    			$this->load->view('cms/login');
	    		}
	    		else
	    		{
	    			$this->result = $this->Auth_model->cms_login();

	    			if($this->result['t'] != 'success')
	    			{
	    				$this->session->set_flashdata('msg', $this->result);
	    				redirect(base_url($this->setting['cms']));
	    			}
	    			else
	    			{
	    				$cookie = array(
			             	'name'   => 'admin_id',
			             	'value'  => $this->result['admin_id'],
			             	'expire' => time()+86500,
			            );
			             
			            set_cookie($cookie);

			            redirect(base_url($this->setting['cms'].'dashboard'));
	    			}
	    		}
			}
		}
	}

	public function cms_logout()
	{
		$cookie = array(
		    'name'   => 'admin_id',
		    'value'  => '',
		    'expire' => '0',
		);
		 
		delete_cookie($cookie);

		redirect(base_url($this->setting['cms']));
	}

	public function cms_reset_pwd()
	{
		$this->result = $this->Auth_model->cms_reset_pwd();

    	$this->session->set_flashdata('msg',$this->result);

    	redirect(base_url($this->setting['cms']).'login');
	}
}
?>