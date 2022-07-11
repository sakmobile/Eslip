<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller
{
   
   public function __construct()
   {
       parent::__construct();
       $this->load->model('Signin_model');
  
       
       
   }
      public function index()
        {
            $data = [
                 'title' => 'Login',
                 'menu' => 'Login'
                
              ];
           $this->load->view('login',$data);
            
           
        }
      public function check_login(){
         
         if($this->input->server('REQUEST_METHOD') == TRUE){
            $user = $this->input->post('user');
            $pass = $this->input->post('pass');
            $intpass=0;
            $chars = str_split($pass);
            foreach($chars as $char){
              
                $intpass = $intpass + ord($char);
            }
             $passhas = md5($intpass);
             
              $result = $this->Signin_model->user_login($user,$passhas);
             
          if ($result) {
            foreach ($result as $row) {
            $sess_data = array(
               'id'=> $row['m_id'],
               'username'=> $row['m_name'],
               't_id' => $row['t_id'],
               't_name' => $row['t_name'],
               'img1' => $row['img_1'],
               'img2' => $row['img_2'],
            );

         }
               $this->session->set_userdata($sess_data);
              // $this->session->t_name;
             //  print_r($this->session->all_userdata());
           
              if($this->session->t_name == "Admin"){
                   redirect('admin','refresh');
               }else{
                  
                  redirect('shows_user/'.$this->session->userdata('id'),'refresh');;
            }
               
             // $this->load->view('home');
                

           } else {

            $data['error'] ='<script>toastr["warning"]("ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง");</script>';
            $this->load->view('login',$data);
            
           }
			 
			 
         }
       
      }
   
      public function logout()
      {
         $this->session->unset_userdata(array('id','username','t_id','t_name','img1','img2'));
         redirect('login', 'refresh');
      }
  
    
}