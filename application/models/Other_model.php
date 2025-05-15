<?php

class Other_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    public function setting_path()
    {
      	$arr = [
	        'cms' => 'cms/',
      	];

      return $arr;
    }

    public function get_company_details($id='')
    {
        $this->db->select('*');
        $this->db->from('company_details');

        if ($id != '') {
          $this->db->where('cd_id',$id);
        }

        $query = $this->db->get();

        if ($id != '') {
          	return $query->row_array();
        } else {
          	return $query->result_array();
        }
    }

    // **************** SMS EMAIL TEMPLATE *************

    public function template($id='')
    {
        $this->db->select('*');
        $this->db->from('template');

        if ($id != '') {
          $this->db->where('mt_id',$id);
        }

        $query = $this->db->get();

        if ($id != '') {
          return $query->row_array();
        } else {
          return $query->result_array();
        }
    }

    // *********** EMPLOYEE *************

    public function employee_mobile($v)
    {
        $q1 = $this->db->select('*')
                  ->from('employee')
                  ->where('mobile',$v)->get();

        if ($q1->num_rows() > '0') {
            return $arr = [
                'error' => 'Yes',
                't' => 'warning',
                'mess' => 'This Mobile Number is already registered.',
            ];
        } else {
            return $arr = [
                'error' => 'No',
            ];
        }
    }

    public function employee_email($v)
    {
        $q1 = $this->db->select('*')
                  ->from('employee')
                  ->where('email',$v)->get();

        if ($q1->num_rows() > '0') {
            return $arr = [
                'error' => 'Yes',
                't' => 'warning',
                'mess' => 'This Email Id is already registered.',
            ];
        } else {
            return $arr = [
                'error' => 'No',
            ];
        }
    }

    // *********** NUMBER TO WORDS ************

    public function num_to_wrds($number)
    {
        $no = floor($number);
        $point = round($number - $no) * 100;
        $hundred = null;
        $digits_1 = strlen($no);
        $i = 0;
        $str = array();
        $words = array('0' => '', '1' => 'one', '2' => 'two',
            '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six',
            '7' => 'seven', '8' => 'eight', '9' => 'nine',
            '10' => 'ten', '11' => 'eleven', '12' => 'twelve',
            '13' => 'thirteen', '14' => 'fourteen',
            '15' => 'fifteen', '16' => 'sixteen', '17' => 'seventeen',
            '18' => 'eighteen', '19' =>'nineteen', '20' => 'twenty',
            '30' => 'thirty', '40' => 'forty', '50' => 'fifty',
            '60' => 'sixty', '70' => 'seventy',
            '80' => 'eighty', '90' => 'ninety');
        $digits = array('', 'hundred', 'thousand', 'lakh', 'crore');
        while ($i < $digits_1) {
            $divider = ($i == 2) ? 10 : 100;
            $number = floor($no % $divider);
            $no = floor($no / $divider);
            $i += ($divider == 10) ? 1 : 2;
            if ($number) {
                $plural = (($counter = count($str)) && $number > 9) ? 's' : null;
                $hundred = ($counter == 1 && $str[0]) ? ' and ' : null;
                $str [] = ($number < 21) ? $words[$number] .
                        " " . $digits[$counter] . $plural . " " . $hundred
                        :
                        $words[floor($number / 10) * 10]
                        . " " . $words[$number % 10] . " "
                        . $digits[$counter] . $plural . " " . $hundred;
            } else $str[] = null;
        }
        $str = array_reverse($str);
        $result = implode('', $str);
        $points = ($point) ?
                "." . $words[$point / 10] . " " . 
                $words[$point = $point % 10] : '';
        $final_result =  $result . "Rupees  only.";

        return ucfirst(strtolower($final_result));
    }

    // *********** SMS *********

    function Sms_Sender($mobile_number,$message)
    {
        $res = $this->Whatsapp($mobile_number,$message);

        return $res;
        exit();

        if(strlen($mobile_number)<9)
            return 0;
        $message = substr($message,0,160);
        $message2 = $message ;
        $message = urlencode($message);

        if(strpos($_SERVER['SERVER_NAME'],"localhost")===false)
        {      
            $url = "http://bulksmsplans.com/api/send_sms?api_id=*********&api_password=*********&sms_type=Transactional&sms_encoding=text&sender=SRSATI&number=91".$mobile_number."&message=".$message;

            $handle = @fopen($url, "rb") ;
            if($handle)
            {
                $contents = '';
                while (!feof($handle)) 
                {
                    $contents .= @fread($handle, 8192);
                }

                @fclose($handle);
            }
        } else {
            return 0;
        }
    }

    function Whatsapp($mobile_number,$message)
    {
        if(strlen($mobile_number)<9)
        {
            return 0;
        } else {
            $message = urlencode($message);

            $img = base_url('assets/logo/logo.png');
            $url = 'http://148.251.129.118/wapp/api/send?apikey=xxxxxxxxxxx&mobile='.$mobile_number.'&msg='.$message;

            if(strpos($_SERVER['SERVER_NAME'],"localhost")===false)
            {
                try {

                    $fh = fopen($url, "r");
                    if (! $fh) {
                        throw new Exception("Could not open the file!");
                    } else {
                        return 'ok';
                    }
                }
                catch (Exception $e) {
                    $err = "Error (File: ".$e->getFile().", line ".
                    $e->getLine()."): ".$e->getMessage();
                    return $err;
                }
            } else {
                return '0';
            } 
        }      
    }    

    public function send_mail($to_mail='', $subject='', $mail_body='', $company='', $cc='', $attachment='')
    {
        $to_mail = strtolower($to_mail);

        if ($company != '') {
            $comp = $this->get_company_details($company);
        }

        $this->load->library('phpmailer_lib');

        // PHPMailer object
        $mail = $this->phpmailer_lib->load();

        $mail->isSMTP();
        $mail->Host     = $comp['mail_hostname'];
        $mail->SMTPAuth = true;
        $mail->Username = $comp['mail_username'];
        $mail->Password = $comp['mail_password'];
        $mail->SMTPSecure = 'ssl';
        $mail->Port     = 465;

        $mail->setFrom($comp['mail_username'], $comp['company_name']);
        $mail->addReplyTo($comp['mail_username'], $comp['company_name']);    

        // Add a recipient
        $mail->addAddress(strtolower($to_mail));

        if ($cc != '') {      
          $mail->AddCC($cc);
        }     

        $mail->Subject = $subject;
        $mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test

        // Set email format to HTML
        $mail->isHTML(true);
        $mailHtml = "";

        $mailHtml .= $comp['mail_header'];
        $mailHtml .= $mail_body;
        $mailHtml .= $comp['mail_footer'];

        $mail->Body = $mailHtml;

        if ($attachment != '') {
          if(file_exists(FCPATH .$attachment)) {
            $mail->AddAttachment($attachment);
          }
        }

        if(strpos($_SERVER['SERVER_NAME'],"localhost")===false)
        {
          if(!$mail->Send()) {
            return $arr = [
              'error' => 'Yes',
              't' => 'danger',
              'mess' => 'Mail could not be send. Mailer Error: ' . $mail->ErrorInfo,
            ];
          } else {
            return $arr = [
              'error' => 'No',
              't' => 'success',
              'mess' => 'Mail sent successfully.'
            ];
          }
        } else {
          return $arr = [
            'error' => 'Yes',
            't' => 'warning',
            'mess' => 'Mail cannot be sent as you are in localhost.'
          ];
        }
    }

    // ******** LOCATION ************

    public function get_state($id='', $status='')
    {
        $this->db->select('*');
        $this->db->from('loc_state');

        if ($id != '') {
            $this->db->where('id',$id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        $this->db->order_by('state','ASC');    

        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }      
    }

    public function get_district($id='', $state_id='', $status='')
    {
        $this->db->select('*');
        $this->db->from('loc_district');

        if ($id != '') {
            $this->db->where('id',$id);
        }

        if ($state_id != '') {
            $this->db->where('state_id',$state_id);
        }

        if ($status != '') {
            $this->db->where('status',$status);
        }

        $this->db->order_by('district','ASC');

        $query = $this->db->get();

        if ($id != '') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }         
    }

    public function get_state_name($v)
    {
        $q1 = $this->db->select('state')
                      ->from('loc_state')
                      ->where('id',$v)->get()->row();

         return $q1->state;
    }

    public function get_district_name($v)
    {
        $q1 = $this->db->select('district')
                          ->from('loc_district')
                          ->where('id',$v)->get()->row();

        return $q1->district;
    }

    // ******** IMAGE ***********

    public function set_upload_options($i,$path)
    {   
        $config = array();
        $config['file_name'] = $i.time();
        $config['upload_path'] = $path;
        $config['allowed_types'] = 'jpg|png|jpeg|JPG|JPEG|PNG';

        return $config;
    }

    public function set_upload_options_all($i,$path)
    {   
        $config = array();
        $config['file_name'] = $i.time();
        $config['upload_path'] = $path;
        $config['allowed_types'] = 'jpg|png|jpeg|JPG|JPEG|PNG|gif|GIF|pdf|PDF|docx|DOCX|doc|DOC|xlsx|XLSX|mp3|MP3|mp4|MP4|wma|WMA';

        return $config;
    }

    public function resize_image($img,$quality,$width,$height)
    {
        $this->load->library('image_lib');

        $config['image_library'] = 'gd2';  
        $config['source_image'] = $img;  
        $config['create_thumb'] = FALSE;  
        $config['maintain_ratio'] = FALSE;  
        $config['quality'] = $quality;  
        $config['width'] = $width;  
        $config['height'] = $height;  
        $config['new_image'] = $img;  

        $this->image_lib->clear();
        $this->image_lib->initialize($config);
        $this->image_lib->resize();

        return $config;
    }  
}
?>