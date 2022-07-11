<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Setting extends CI_Controller{
    public function __construct()
    {
        parent::__construct();
    }
    public function index()
    {


        $data = [
            'view_list' => 'admin/setting',
            'title' => 'ตั้งค่าระบบ',
            'menu' => 'setting',
            'types' => 'admin'
        ];
        $data['list'] = $this->Setting_model->showall();
        $data['option'] = $this->Setting_model->option();
        $data['img'] = $this->Setting_model->showimg($this->session->id);
        $this->load->view('/layout/template', $data);
    }

    public function add_user(){
           $name = $this->input->post("myname");
           $cid = $this->input->post("cid");
           $t_id = $this->input->post("t_name");
           $password = $this->input->post("password");
           $intpass=0;
           $chars = str_split($password);
           foreach($chars as $char){
             
               $intpass = $intpass + ord($char);
           }
            $passhas = md5($intpass);

            echo $passhas;
           $data = array(
             "m_name" => $name,
             "m_cid" => $cid,
             "type_id" =>$t_id,
             "password" => $passhas,


           );
           
         $this->Setting_model->add($data);
        $this->session->set_flashdata("msg","บันทึกข้อมูลเรียบร้อย");
         redirect("setting");
    
           
    }

public function edit_user(){
    $id = $this->input->post('userid');
    $data = $this->Setting_model->edit($id);

    echo json_encode($data);

}

function update_user(){
    $id = $this->input->post('id');
    $name = $this->input->post('name');
    $cid = $this->input->post('cid');

    $type = $this->input->post('type');
    $pass = $this->input->post('pass');
    $pass_con = $this->input->post('pass_con');
    if($pass != "" && $pass_con != "" ){
      if($pass == $pass_con){
            $intpass=0;
            $chars = str_split($pass);
            foreach($chars as $char){
               $intpass = $intpass + ord($char);
            }
             $passhas = md5($intpass);
                $data = array(
                    "m_name" => $name,
                    "m_cid" => $cid,
                    "type_id" =>$type,
                    "password" => $passhas,
                );
                $this->Setting_model->update($data,$id);
                echo "OK1";
        }
    }else{
                $data = array(
                    "m_name" => $name,
                    "m_cid" => $cid,
                    "type_id" =>$type,
                );

                $this->Setting_model->update($data,$id);
                echo "OK";
    }

    



}

    

public function del(){
    $this->Setting_model->delete($_POST["userid"]);
    echo "ok";
}

}

?>