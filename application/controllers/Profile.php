<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profile extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();


    }

	public function index()
	{
		if($this->session->t_name  == 'admin'){
			redirect('admin');
	   }
		if($this->session->id  == ""){
			
            redirect('logout');
		}
		 
	  
		$data = [
			'view_list' => 'profile',
			 'title' => 'ข้อมูลส่วนตัว',
			 'menu' => 'profile',
			 'types' => 'user'
	      ];
		  $data['img'] = $this->Setting_model->showimg($this->session->id); 
                
		$this->load->view('layout/template',$data);
		
       
	}

	public function upload_img(){
		 if ($this->input->post('submit')){ 
   
		
			$config['upload_path'] = './assets/uploads/';
			$config['allowed_types'] = 'jpg|png|jpeg|gif|svg|raw';
			$config['max_size'] = 0;
			$config['encrypt_name'] = true;

			$this->load->library('upload', $config);
			$data = $this->Setting_model->showimg($this->session->id);
			
			//img1
			if($_FILES['p_img1'] != ''){
				if (!$this->upload->do_upload('p_img1')) {
					$p_img1 = $data[0]['img_1'];
				} else {
					$fileData1 = $this->upload->data();
					$p_img1 = $data['p_img1'] = $fileData1['file_name'];
				}
			}
			 
		
			//img2
			if($_FILES['p_img2'] != ''){
			if (!$this->upload->do_upload('p_img2')) {
				$p_img2 = $data[0]['img_2'];
			 }
			 else {
				$fileData2 = $this->upload->data();
				$p_img2 = $data['p_img2'] = $fileData2['file_name'];
			}
		}
            
				$datatotable = array(
					'img_1' => $p_img1,
					'img_2' => $p_img2
				 );
			
           
			$this->Setting_model->update_img($datatotable, $this->session->id);
			 $this->session->set_flashdata("msg","บันทึกข้อมูลเรียบร้อย");
			redirect('profile');
		
	}
	}
	public function change_pass(){
	$password = $this->input->post("password");
	$intpass=0;
	$chars = str_split($password);
	foreach($chars as $char){
	  
		$intpass = $intpass + ord($char);
	}
	 $passhas = md5($intpass);

	 echo $passhas;
	$data = array(
	  "password" => $passhas,

	);
	
  $this->Setting_model->update_pass($data,$this->session->id);
 
 $this->session->set_flashdata("msg","บันทึกข้อมูลเรียบร้อย");
 	$data = [
			'view_list' => 'profile',
			 'title' => 'ข้อมูลส่วนตัว',
			 'menu' => 'profile',
			 'types' => 'user'
	      ];
		  $data['img'] = $this->Setting_model->showimg($this->session->id); 

		$this->load->view('layout/template',$data);
		//redirect('profile','refresh');
}
	
	
}