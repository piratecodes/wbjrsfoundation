<?php 
ob_start();
defined('BASEPATH') OR exit('No direct script access allowed');

class Download_controller extends CI_Controller 
{	
	public function __construct()
	{
   	    parent::__construct();

   	    date_default_timezone_set('Asia/Kolkata');      

   		$this->load->library('Fpdf_gen');
   		
   		$this->setting = $this->Other_model->setting_path();

   		$this->comp = $this->Other_model->get_company_details('1');
	}

	public function certificate($v='')
	{
		$det = $this->Cms_model->certificate('', $v);

		if (empty($det)) {
			$arr = [
				't' => 'warning',
				'mess' => 'No such certificate found.'
			];

			$this->session->set_flashdata('msg',$arr);

      		redirect(base_url('certificate'));
		}

		if ($det['status'] != 'Active') {
			$arr = [
				't' => 'warning',
				'mess' => 'Error in showing certificate. Please contact with the administrator.'
			];

			$this->session->set_flashdata('msg',$arr);

      		redirect(base_url('certificate'));
		}

		ini_set('memory_limit', '-1');

        //$this->fpdf->AddPage('P','A4');
        //$this->fpdf->AddPage('L',array(88,54));
        $this->fpdf->AddPage('L','A4');

        if ($det['type'] == 'Completion') {
			$this->fpdf->Image('assets/all/certificate_completion.jpg', 0, 0,297,210);    	
        } else {
        	$this->fpdf->Image('assets/all/certificate_participation.jpg', 0, 0,297,210); 
        }

		$this->fpdf->AddFont('AlexBrush-Regular','','AlexBrush-Regular.php'); //Regular
		$this->fpdf->AddFont('AlexBrush-Regular','B','AlexBrush-Regular.php'); //Bold
		$this->fpdf->AddFont('AlexBrush-Regular','I','AlexBrush-Regular.php'); //Italic
		$this->fpdf->AddFont('AlexBrush-Regular','BI','AlexBrush-Regular.php'); //Bold_Italic		

		$name = ucwords(strtolower($det['name']));		
		$certificate_num = $det['certificate_num'];
		$date = date_format(date_create($det['date']),'d-m-Y');
		$course_name = strtoupper($det['course_name']);
		$subject = ucwords(strtolower($det['subject']));

		$total_score = $marks_obtained = $location = "";

		if (!empty($det['location'])) {
			$location = $det['location'];
		}

		if (!empty($det['total_score'])) {
			$total_score = $det['total_score'];
		}

		if (!empty($det['marks_obtained'])) {
			$marks_obtained = $det['marks_obtained'];
		}

		// certificate number & date

		$this->fpdf->SetTextColor(0,0,0);
		$this->fpdf->SetFont('Arial','','20');

		$this->fpdf->SetXY(25, 30);
		$this->fpdf->Cell(0,0,$certificate_num,0, 1);

		$this->fpdf->SetXY(210, 30);
		$this->fpdf->Cell(0,0,'Date : '.$date,0, 1);

		// course name

		$this->fpdf->SetTextColor(0,0,0);
		$this->fpdf->SetFont('Arial','','30');

		$this->fpdf->SetXY(0, 75);
		$this->fpdf->Cell(0,0,$course_name,0, 1, 'C');

		// name

		$this->fpdf->SetTextColor(0,89,183);
		$this->fpdf->SetFont('AlexBrush-Regular','','50');

		$this->fpdf->SetXY(0, 94);
		$this->fpdf->Cell(0,0,$name,0, 1, 'C');

		/*if ($det['type'] == 'Completion') {

			$txt1 = '<p align="center">
			It is with great pleasure that we certify this participant has successfully completed the <b>'.$subject.'</b>, demonstrating exceptional dedication and proficiency, and achieving a final score of <b>'.$marks_obtained.'</b> out of <b>'.$total_score.'</b>. We extend our best wishes for greater achievements in the future.
			</p>';
		}

		if ($det['type'] == 'Participation') {

			$txt1 = '<p align="center">
			Of '.$location.', is hereby certified that '.$name.' has successfully completed the <b>'.$subject.'</b> and met all the criteria with high dedication. We wish him/her all the very best in achieving greater accomplishments.
			</p>';
		}

		$this->fpdf->SetTextColor(0,0,0);
		$this->fpdf->SetFont('Arial','','14');
		$this->fpdf->SetXY(50, 100);

		$this->fpdf->WriteHTML($txt1);*/

		if ($det['type'] == 'Completion') {

			$n_txt = 'It is with great pleasure that we certify this participant has successfully completed the '.$subject.', demonstrating exceptional dedication and proficiency, and achieving a final score of '.$marks_obtained.' out of '.$total_score.'. We extend our best wishes for greater achievements in the future.';
		}

		if ($det['type'] == 'Participation') {
			$n_txt = 'Of '.$location.', is hereby certified that '.$name.' has successfully completed the '.$subject.' and met all the criteria with high dedication. We wish him/her all the very best in achieving greater accomplishments.';
		}

		$n_arr = explode(' ', $n_txt);

		$p1 = $p2 = $p3 = "";

		for ($i=0; $i<COUNT($n_arr); $i++) {

			$word = $n_arr[$i];

			if ($i < '15') {
				$p1 .= $word.' ';
			} elseif ($i >= '15' && $i < '30') {
				$p2 .= $word.' ';
			} else {
				$p3 .= $word.' ';
			}				
		}

		$this->fpdf->SetTextColor(0,0,0);
		$this->fpdf->SetFont('Arial','','14');

		if ($p1 != '') {
			$this->fpdf->SetXY(0, 110);
			$this->fpdf->Cell(0,0,$p1,0, 1, 'C');
		}

		if ($p2 != '') {
			$this->fpdf->SetXY(0, 117);
			$this->fpdf->Cell(0,0,$p2,0, 1, 'C');
		}

		if ($p3 != '') {
			$this->fpdf->SetXY(0, 124);
			$this->fpdf->Cell(0,0,$p3,0, 1, 'C');
		}

		//if(strpos($_SERVER['SERVER_NAME'],"localhost")===false) {
			if (!empty($det['qrcode'])) {
				$qr_code = base_url('uploads/certificate/'.$det['qrcode']);

				$this->fpdf->Image($qr_code, 135, 160,25,25);
			}		
		//}
			
		echo $this->fpdf->output();
	}
}
?>