<?php

class Home_admin extends CI_Controller
{
      public function index()
        {

          if($this->session->t_name != 'Admin'){
            redirect('login');
          }
          else{
            $data = [
                'view_list' => 'admin/home_admin',
                 'title' => 'Dashboard | Admin',
                 'menu' => 'Dashboard',
                 'types' => 'admin',
                 'username'=> $this->session->username
              ];
              $data['img'] = $this->Setting_model->showimg($this->session->id);
              $data['c1']= count($this->Setting_model->count_1());
              $data['c2']= count($this->Setting_model->count_2());
              $data['c3']= count($this->Setting_model->count_3());
              $data['c4']= count($this->Setting_model->count_4());
              


            $this->load->view('/layout/template',$data);
            
           
        }
      }
    
}