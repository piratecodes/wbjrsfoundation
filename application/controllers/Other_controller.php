<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Other_controller extends CI_Controller 
{	
	public function __construct()
	{
   		parent::__construct();

   		date_default_timezone_set('Asia/Kolkata');    

   		$this->comp = $this->Other_model->get_company_details('1');

   	    $this->setting = $this->Other_model->setting_path();  
	}
	
	// ************ COURSE **************
	
	public function get_subcat($v)
	{
		$this->result = $this->Cms_model->course_category('', '', 'Active', $v);

		echo json_encode($this->result);
	}

	public function get_course_cat($v)
	{
		$this->result = $this->Cms_model->course('', '', $v, 'Active');

		echo json_encode($this->result);
	}

	public function get_course_subcat($v)
	{
		$this->result = $this->Cms_model->course('', '', '', 'Active', '', $v);

		echo json_encode($this->result);
	}

	public function certificate_chq($v='')
	{
		$result = $this->Cms_model->certificate('', $v);

		if (empty($result)) {
			$arr = [
				'error' => 'No',
			];
		} else {
			$arr = [
				'error' => 'Yes',
				't' => 'warning',
				'mess' => 'This Certificate Number is already registered.'
			];
		}
		echo json_encode($arr);
	}

	// ************* LOCATION ***********

	public function get_district($v)
	{
		$this->result = $this->Other_model->get_district('', $v, 'Active');

		echo json_encode($this->result);
	}
}
?>