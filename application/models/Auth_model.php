<?php

class Auth_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    // ******************* CMS LOGIN ********************

    public function cms_login()
    {
        $login_id = trim(addslashes($_POST['login_id']));
        $pass = trim(addslashes($_POST['login_password']));

        $q = $this->db->select('*')
                      ->from('admin_login')
                      ->where('login_id', $login_id)
                      ->get();

        if($q->num_rows() > 0)
        {
            $q2 = $q->row_array();

            if ($q2['status'] == 'Active') {  
                if($q2['password'] == sha1($pass))
                {
                    $this->cms_last_login($q2['adm_id']);

                    return $mssg = [
                        't' => 'success',
                        'mess' => '',
                        'admin_id' => $q2['adm_id']
                    ];
                } else {
                    return $mssg = [
                        't' => 'warning',
                        'mess' => 'Incorrect Password.'
                    ];
                }
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'This Id is not Active.'
                ];
            }                                            
        }
        else
        {
            return $mssg = [
                't' => 'warning',
                'mess' => 'Invalid Login Id.'
            ];           
        }
    }

    public function cms_last_login($id)
    {
        $this->db->set('last_login',date('Y-m-d H:i:s'))
                ->where('adm_id',$id)
                ->update('admin_login');

        return 'ok';
    }

    public function cms_reset_pwd()
    {
        $mobile = trim(addslashes($_POST['login_id']));

        $q = $this->db->select('*')
                      ->from('admin_login')
                      ->where('login_id', $mobile)
                      ->get();

        if($q->num_rows() > 0)
        {
            $q2 = $q->row_array();
            
            if ($q2['status'] == 'Active') {
                $pass = rand(111111,999999);
                $pass1 = sha1($pass);

                $this->db->set('password',$pass1)
                        ->where('adm_id',$q2['adm_id'])
                        ->update('admin_login');

                if ($this->db->affected_rows() > '0') {

                    $this->setting = $this->Other_model->setting_path();

                    $link = base_url($this->setting['cms']);

                    $comp = $this->Other_model->get_company_details('1'); 

                    $template = $this->Other_model->template('1');

                    $name = ucwords(strtolower($q2['name']));

                    if ($q2['mobile'] != '') {                                                        

                        $array1 = array('{#name#}', '{#login_id#}', '{#password#}', '{#login_link#}', '{#company_name#}');
                        $array2 = array($name, $q2['mobile'], $pass, $link, $comp['company_name']);                            

                        $sms = str_replace($array1, $array2, $template['whatsapp']);

                        if ($template['msg_status'] == 'On') {
                            $this->Other_model->Sms_Sender($q2['mobile'],$sms);
                        }
                    }

                    if (!empty($q2['email'])) {

                        $array3 = array('{#name#}', '{#login_id#}', '{#password#}', '{#login_link#}');
                        $array4 = array($name, $q2['mobile'], $pass, $link);

                        $mailHtml = str_replace($array3, $array4, $template['mail_body']);

                        if ($template['mail_status'] == 'On') {
                            $mail_send = $this->Other_model->send_mail($q2['email'], $template['subject'], $mailHtml, '1');
                        }
                    }

                    return $arr = [
                        't' => 'success',
                        'mess' => 'Password successfully reset and sent to your contact details.'
                    ];
                        
                } else {
                    return $arr = [
                        't' => 'danger',
                        'mess' => 'Error in resetting password.'
                    ];
                }
            } else {
                return $arr = [
                    't' => 'warning',
                    'mess' => 'This Id is Active.'
                ];
            }                    
        }
        else
        {
            return $mssg = [
                't' => 'warning',
                'mess' => 'This Login Id is not registered with us.'
            ];          
        }
    }
}
?>