<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('csv_import_model'); 	
			$this->load->library('csvimport');
			$this->load->helper('file');
			
			header("content-type: text/html; charset=utf-8");

	}
	public function index()
	{
		if($this->session->t_name  == 'admin'){
			redirect('admin');
	   }else{
		if($this->session->id  == ""){
			
            redirect('logout');
		}
		  redirect("shows_user/".$this->session->userdata('id'));
	  }
           
        

		
	}
	public function shows_user($id = ""){
		if($this->session->t_name == "Admin"){
             redirect('admin');
		}
		if($id != $this->session->userdata('id') ){
			
            redirect('logout');
		}
		if(empty($id)){
			redirect('logout');
		}else{
		
		
		$tb_temporary ='tb_temporary'; // ลูกจ้างชั่วคราว/ พกส. /รายวัน
		$tb_official = 'tb_official'; //ข้าราชการ
		$tb_pofficial = 'tb_pofficial'; //พนักงานราชการ
		$tb_regular = 'tb_regular';//ลูกจ้างประจำ
        
		if($this->session->t_id == 1){
          $table = 'tb_official';
		  $column = 'o_m_id';
		  $order = 'o_date';
		  $pages = 'user_detail';
		 
		}
		if($this->session->t_id == 2){
			$table = 'tb_pofficial';
			$column = 'p_m_id';
			$order = 'p_date';
			$pages = 'pofficial_detail';
		}
		if($this->session->t_id == 3){
			$table = 'tb_regular';
			$column = 'r_m_id';
			$order = 'r_date';
			$pages = 'regular_detail';
		}
		if($this->session->t_id == 4){
			$table = 'tb_temporary';
			$column = 'e_m_id';
			$order = 'e_date';
			$pages = 'temporary_detail';
		}
		$data = [
			 'view_list' => $pages,
			 'title' => 'Dashboard',
			 'menu' => 'Dashboard',
			 'types' => 'user',
			 'user_type' => $this->session->t_id ,
			 'username'=> $this->session->username
		  ];
        $data['y'] = $this->User_model->get_datas($id,$table,$column);
         $data['list'] = $this->User_model->show($id,$table,$column,$order);
         $data['getdetail'] = $this->User_model->getdetail($id,$table,$column,$order);
		 $data['img'] = $this->Setting_model->showimg($this->session->id);   
		 
        $this->load->view('/layout/template', $data);
		}
	}

	public function e_info(){
		$id = $this->input->post('userid');
		$data = $this->User_model->e_info($id);
		$response = "<table class='table table-bordered'>";

		foreach ($data as $row) {

		  $response .= "<tbody>";
		  $response .= "<tr>";
		  $response .= "<td colspan='2' align='center'> ประจำเดือน ".$row['e_month'] ."</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  $response .= " <td colspan='3' ><b>ชื่อ-สกุล : </b>".$row['m_name']."</br><b>ค่าตอบแทนของ : </b>".$row['t_name']."</br><b>วันที่โอนเงิน : </b>".$this->changeDate($row['e_date_get'])."</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  $response .= " <td align='center'><b> รายรับ </b></td>";
		  $response .= " <td align='center'><b>รายจ่าย </b></td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  $response .= " <td>1. เงินเดือน : ". $row['e_salary'] . " บาท </td>";
		  $response .= " <td>1. ฌกส.กระทรวง. : " . $row['e_nks_ministry'] ." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  $response .= " <td >2. พตส : ". $row['e_pts'] . " บาท </td>";
		  $response .= " <td >2. ฌกส.ศก. : " . $row['e_nks_sk']." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  $response .= " <td>3. ค่าจ้างตกเบิกเหมาจ่าย : ". $row['e_back_pay'] . " บาท </td>";
		  $response .= " <td>3. ฌกส.สหกรณ์ : " . $row['e_nks_sk1'] ." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  $response .= " <td>4. ค่าล่วงเวลา : ". $row['e_ot'] . " บาท </td>";
		  $response .= " <td>4. ร้านค้า : " . $row['e_shop']." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  $response .= " <td>5. รายรับอื่นๆ : ". $row['e_revcnue'] . " บาท </td>";
		  $response .= " <td>5. ประกันสังคมส่วนที่ตกเบิก : " . $row['e_sss_back_pay'] ." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  $response .= " <td rowspan='10'> </td>";
		  $response .= " <td>6. ประกันสังคม : " . $row['e_sss'] ." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		 // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
		  $response .= " <td>7. กองทุนลูกจ้าง 2% : " . $row['e_fund']." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		 // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
		  $response .= " <td>8. สหกรณ์ ออมทรัพย์ : " . $row['e_cooperative'] ." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
		  $response .= " <td>9. ค่าไฟฟ้า : " . $row['e_electricity'] ." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
		  $response .= " <td>10. ธกส. : " . $row['e_baac'] ." บาท</td>";
		  $response .= "</tr>";
		  $response .= "<tr>";
		  //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
		  $response .= " <td>11. ออมสิน : " . $row['e_gsb'] ." บาท</td>";
		  $response .= "</tr>";
		  $response .= "<tr>";
		  //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
		  $response .= " <td>12. เงินยืม : " . $row['e_lend'] ." บาท</td>";
		  $response .= "</tr>";
		  $response .= "<tr>";
		  //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
		  $response .= " <td>13. กลุ่มการบริหาร : " . $row['e_manage'] ." บาท</td>";
		  $response .= "</tr>";
		  $response .= "<tr>";
		  //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
		  $response .= " <td>14. อาหาร : " . $row['e_food'] ." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
		  $response .= " <td>15. รายจ่ายอื่น ๆ : " . $row['e_pay'] ." บาท</td>";
		  $response .= "</tr>";

		  $response .= "<tr>";
		  $response .= " <td align='center'> <b>รวมรับทั้งหมด</b> ". $row['e_sum_revenue'] . " บาท </td>";
		  $response .= " <td align='center'><b> รวมหักทั้งหมด </b>" . $row['e_sum_pay'] ." บาท </td>";
		  $response .= "</tr>";

		  $response .= "<tr class='table-active'>";
		  $response .= "<td colspan='2' align='center'> รับสุทธิ ".$row['e_get_real'] ." บาท <br> (".$this->Convert(floatval(str_replace(",","",$row['e_get_real']))).")</td>";
		  $response .= "</tr>";

		  $response .= "</tbody>";
		}
		$response .= "</table>";

		$response .= "</div>";
		$response .= "<div class='modal-footer justify-content-between'>";
		$response .= "<button type='button' class='btn btn-default' data-dismiss='modal'>ยกเลิก</button>";
		$response .= "<a type='button' href='".base_url()."print_e/".$row['e_id']."/".floatval(str_replace(",","",$row['e_get_real']))."/".$row['e_date_get']."' id='print' target='_blank' class='btn btn-primary print'> <i class='fas fa-print'></i>  พิมพ์</a>";
		$response .= "</div>";
		echo $response;
  }
  public function print_e($id,$num,$date1){
	
	$data['list'] = $this->User_model->e_info($id);
	$data['bat'] = $this->Convert(floatval(str_replace(",","",$num)));
	$data['date_get'] = $this->changeDate($date1);
	$defaultConfig = (new Mpdf\Config\ConfigVariables())->getDefaults();
	$fontDirs = $defaultConfig['fontDir'];
	$defaultFontConfig = (new Mpdf\Config\FontVariables())->getDefaults();
	$fontData = $defaultFontConfig['fontdata'];

	$mpdf = new \Mpdf\Mpdf([
		'fontDir' => array_merge($fontDirs, [
			__DIR__ . '/tmp',
		]),
		'fontdata' => $fontData + [
			'sarabun' => [
				'R' => 'THSarabunNew.ttf',
				'I' => 'HSarabunNew Italic.ttf',
				'B' => 'THSarabunNew Bold.ttf',
				'BI' => 'THSarabunNew BoldItalic.ttf'
			]
		],
		
		'default_font' => 'sarabun'
	]);
	$stylesheet = file_get_contents(base_url().'assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css');
	$html=$this->load->view('./e_mpdf',$data,true);
	$mpdf->WriteHTML($stylesheet, 1);
	$mpdf->WriteHTML($html);
	$mpdf->Output();
}

  function changeDate($date){
	//ใช้ Function explode ในการแยกไฟล์ ออกเป็น  Array
	$get_date = explode("-",$date);
	//กำหนดชื่อเดือนใส่ตัวแปร $month
		$month = array("01"=>"ม.ค.","02"=>"ก.พ","03"=>"มี.ค.","04"=>"เม.ย.","05"=>"พ.ค.","06"=>"มิ.ย.","07"=>"ก.ค.","08"=>"ส.ค.","09"=>"ก.ย.","10"=>"ต.ค.","11"=>"พ.ย.","12"=>"ธ.ค.");
	//month
	$get_month = $get_date["1"];
	 
	//year    
	$year = $get_date["0"]+543;
	 
	return $get_date["2"]." ".$month[$get_month]." ".$year;
}  

function Convert($amount_number){
		$amount_number = number_format($amount_number, 2, ".","");
		$pt = strpos($amount_number , ".");
		$number = $fraction = "";
		if ($pt === false) 
			$number = $amount_number;
		else
		{
			$number = substr($amount_number, 0, $pt);
			$fraction = substr($amount_number, $pt + 1);
		}
		
		$ret = "";
		$baht = $this->ReadNumber ($number);
		if ($baht != "")
			$ret .= $baht . "บาท";
		
		$satang = $this->ReadNumber($fraction);
		if ($satang != "")
			$ret .=  $satang . "สตางค์";
		else 
			$ret .= "ถ้วน";
		return $ret;
  }
  function ReadNumber($number){
	$position_call = array("แสน", "หมื่น", "พัน", "ร้อย", "สิบ", "");
	$number_call = array("", "หนึ่ง", "สอง", "สาม", "สี่", "ห้า", "หก", "เจ็ด", "แปด", "เก้า");
	$number = $number + 0;
	$ret = "";
	if ($number == 0) return $ret;
	if ($number > 1000000)
	{
		$ret .= $this->ReadNumber(intval($number / 1000000)) . "ล้าน";
		$number = intval(fmod($number, 1000000));
	}
	
	$divider = 100000;
	$pos = 0;
	while($number > 0)
	{
		$d = intval($number / $divider);
		$ret .= (($divider == 10) && ($d == 2)) ? "ยี่" : 
			((($divider == 10) && ($d == 1)) ? "" :
			((($divider == 1) && ($d == 1) && ($ret != "")) ? "เอ็ด" : $number_call[$d]));
		$ret .= ($d ? $position_call[$pos] : "");
		$number = $number % $divider;
		$divider = $divider / 10;
		$pos++;
	}
	return $ret;
}
}
