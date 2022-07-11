<?php
//require_once __DIR__ . '/vendor/autoload.php';

if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Officlal extends CI_Controller
{


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


        $data = [
            'view_list' => 'admin/officlal',
            'title' => 'ข้าราชการ',
            'menu' => 'officlal',
            'types' => 'admin'
        ];
        $data['list'] = $this->csv_import_model->select();
        $data['img'] = $this->Setting_model->showimg($this->session->id);
         
        $this->load->view('/layout/template', $data);
    }


    public function add_date()
    {

        $file_data = $this->csvimport->get_array($_FILES["csv_file"]["tmp_name"]);
        $month = $this->input->post('month') .' '. $this->input->post('year'); 
        $insertArray = array();
       // echo json_encode($file_data);
        foreach ($file_data as $row) {
            $data[] = array(
                "o_allowance" => $row["o_allowance"],
                "o_pts" => $row["o_pts"],
                "o_not_practice" => $row["o_not_practice"],
                "o_ot" => $row["OT"],
                "o_revenue"    => $row["o_revenue"],
                "o_sum_revenue"    => $row["o_sum_revenue"],
                "o_nks_sk"    => $row["o_nks_sk"],
                "o_nks_ministry" => $row['o_nks_ministry'],
                "o_shop"    => $row["o_shop"],
                "o_electricity" => $row["o_electricity"],
                "o_ktb" => $row["o_ktb"],
                "o_baac"    => $row["o_baac"],
                "o_gsb"    => $row["o_gsb"],
                "o_lend"    => $row["o_lend"],
                "o_donate"    => $row["o_donate"],
                "o_food"   => $row["o_food"],
                "o_pay"   => $row["o_pay"],
                "o_sum_pay"   => $row["o_sum_pay"],
                "o_get_real"    => $row["o_get_real"],
                "o_month" => $month,
                "o_date_get" => $this->input->post("date_get"),
                "o_date"    => $this->input->post("_date"),
                "o_m_id" => $row["m_id"],


            );
        }
       
         $this->csv_import_model->add($data);
         $this->session->set_flashdata("msg","บันทึกข้อมูลเรียบร้อย");
         redirect("officlal");
    }
    public function shows($id){
        $data = [
            'view_list' => 'admin/officlal_deail',
            'title' => 'ข้าราชการ | รายละเอียด',
            'menu' => 'officlal',
            'types' => 'admin'
        ];
        $data['y'] = $this->csv_import_model->get_datas($id);
        $data['list'] = $this->csv_import_model->show($id);
        $data['getdetail'] = $this->csv_import_model->getdetail($id);
        $data['img'] = $this->Setting_model->showimg($id);
        $this->load->view('/layout/template', $data);
    }
    public function userinfo(){
          $id = $this->input->post('userid');
          $data = $this->csv_import_model->userinfo($id);
          $response = "<table class='table table-bordered'>";

          foreach ($data as $row) {

            $response .= "<tbody>";
            $response .= "<tr>";
            $response .= "<td colspan='2' align='center'> ประจำเดือน ".$row['o_month'] ."</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td colspan='3' ><b>ชื่อ-สกุล : </b>".$row['m_name']."</br><b>ค่าตอบแทนของ : </b>".$row['t_name']."</br><b>วันที่โอนเงิน : </b>".$this->changeDate($row['o_date_get'])."</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td align='center'><b> รายรับ </b></td>";
            $response .= " <td align='center'><b>รายจ่าย </b></td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>1. เบี้ยเลี้ยง เหมาจ่าย : ". $row['o_allowance'] . " บาท </td>";
            $response .= " <td>1. ฌกส.ศก. : " . $row['o_nks_sk'] ." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td >2. พตส : ". $row['o_pts'] . " บาท </td>";
            $response .= " <td >2. ฌกส.กระทรวง : " . $row['o_nks_ministry']." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>3. ไม่ทำเวชปฏิบัติ : ". $row['o_not_practice'] . " บาท </td>";
            $response .= " <td >3. ร้านค้า : " . $row['o_shop']." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>4. ค่าเวร+OT : ". $row['o_ot'] . " บาท </td>";
            $response .= " <td>4. ค่าไฟฟ้า : " . $row['o_electricity'] ." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>5. รายรับอื่นๆ : ". $row['o_revenue'] . " บาท </td>";
            $response .= " <td>5. ธ.กรุงไทย : " . $row['o_ktb']." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td rowspan='6'> </td>";
            $response .= " <td>6. ธกส. : " . $row['o_baac'] ." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            
            $response .= " <td>7. ออมสิน : " . $row['o_gsb'] ." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
           // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>8. เงินยืม : " . $row['o_lend']." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
           // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>9. บริจาค/บริหาร : " . $row['o_donate'] ." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>10. ค่าอาหาร : " . $row['o_food'] ." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>11. รายจ่ายอื่น ๆ : " . $row['o_pay'] ." บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td align='center'> <b>รวมรับทั้งหมด</b> ". $row['o_sum_revenue'] . " บาท </td>";
            $response .= " <td align='center'><b> รวมหักทั้งหมด </b>" . $row['o_sum_pay'] ." บาท </td>";
            $response .= "</tr>";

            $response .= "<tr class='table-active'>";
            $response .= "<td colspan='2' align='center'> รับสุทธิ ".$row['o_get_real'] ." บาท <br> (".$this->Convert(floatval(str_replace(",","",$row['o_get_real']))).")</td>";
            $response .= "</tr>";

            $response .= "</tbody>";
          }
          $response .= "</table>";

          $response .= "</div>";
          $response .= "<div class='modal-footer justify-content-between'>";
          $response .= "<button type='button' class='btn btn-default' data-dismiss='modal'>ยกเลิก</button>";
          $response .= "<a type='button' href='".base_url()."print/".$row['o_id']."/".floatval(str_replace(",","",$row['o_get_real']))."/".$row['o_date_get']."' id='print' target='_blank' class='btn btn-primary print'> <i class='fas fa-print'></i>  พิมพ์</a>";
          $response .= "</div>";
          echo $response;
    }

   public function print($id,$num,$date1){
        $data['list'] = $this->csv_import_model->userinfo($id);
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
        $html=$this->load->view('admin/mpdf',$data,true);
        $mpdf->WriteHTML($stylesheet, 1);
		$mpdf->WriteHTML($html);
		$mpdf->Output();
   }
   public function edit(){
    $id = $this->input->post('userid');
    $data = $this->csv_import_model->userinfo($id);
    $response = "<table class='table table-bordered'>";

    foreach ($data as $row) {

      $response .= "<tbody>";
      $response .= "<tr>";
      $response .= "<td colspan='2' align='center'> ประจำเดือน <input type='text'  id='o_month'  name='o_month' value='".$row['o_month'] ."' ></td>";
      $response .= "</tr>";

      $response .= "<tr>";
      $response .= " <td colspan='3' ><b>ชื่อ-สกุล : </b>".$row['m_name']."</br><b>ค่าตอบแทนของ : </b>".$row['t_name']."</br><b>วันที่โอนเงิน : </b>".$this->changeDate($row['o_date_get'])."</td>";
      $response .= "</tr>";

      $response .= "<tr>";
      $response .= " <td align='center'><b> รายรับ </b></td>";
      $response .= " <td align='center'><b>รายจ่าย </b></td>";
      $response .= "</tr>";

      $response .= "<tr>";
      $response .= " <td>1. เบี้ยเลี้ยง เหมาจ่าย : <input type='text'  id='o_allowance'  name='o_allowance'value='". $row['o_allowance'] . "' > บาท </td>";
      $response .= " <td>1. ฌกส.ศก. : <input type='text'  id='o_nks_sk'  name='o_nks_sk'value='" . $row['o_nks_sk'] ."' > บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
      $response .= " <td >2. พตส : <input type='text'  id='o_pts'  name='o_pts' value='". $row['o_pts']. "'> บาท </td>";
      $response .= " <td>2. ฌกส.กระทรวง : <input type='text'  id='o_nks_ministry''  name='o_nks_ministry' value='" . $row['o_nks_ministry'] ."'> บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
      $response .= " <td>3. ไม่ทำเวชปฏิบัติ : <input type='text'  id='o_not_practice'  name='o_not_practice' value='". $row['o_not_practice'] . "'> บาท </td>";
      $response .= " <td >. ร้านค้า : <input type='text'  id='o_shop'  name='o_shop' value='" . $row['o_shop'] ."'> บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
      $response .= " <td>4. ค่าเวร+OT : <input type='text'  id='o_ot'  name='o_ot'value='". $row['o_ot'] . "'> บาท </td>";
      $response .= " <td>4. ค่าไฟฟ้า : <input type='text'  id='o_electricity''  name='o_electricity' value='" . $row['o_electricity'] ."'> บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
      $response .= " <td>5. รายรับอื่นๆ : <input type='text'  id='o_revenue'  name='o_revenue'value='". $row['o_revenue']. "'> บาท </td>";
      $response .= " <td>5. ธ.กรุงไทย : <input type='text'  id='o_ktb'  name='o_ktb'value='" . $row['o_ktb'] ."'> บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
      $response .= " <td rowspan='6'> </td>";
      $response .= " <td>6. ธกส. : <input type='text'  id='o_baac'  name='o_baac'value='" . $row['o_baac'] ."'> บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
    
      $response .= " <td>7. ออมสิน : <input type='text'  id='o_gsb'  name='o_gsb' value='" . $row['o_gsb']." '>บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
     // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
      $response .= " <td>8. เงินยืม : <input type='text'  id='o_lend'  name='o_lend' value='" . $row['o_lend']." '>บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
     // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
      $response .= " <td>9. บริจาค/บริหาร : <input type='text'  id='o_donate'  name='o_donate' value='" . $row['o_donate'] ." '>บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
      //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
      $response .= " <td>10. ค่าอาหาร : <input type='text'  id='o_food'  name='o_food' value='" . $row['o_food'] ."'> บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
      //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
      $response .= " <td>11. รายจ่ายอื่น ๆ : <input type='text'  id='o_pay'  name='o_pay'value='" . $row['o_pay'] ."'> บาท</td>";
      $response .= "</tr>";

      $response .= "<tr>";
      $response .= " <td align='center'> <b>รวมรับทั้งหมด</b> <input type='text'  id='o_sum_revenue'  name='o_sum_revenue' value='". $row['o_sum_revenue'] . "'> บาท </td>";
      $response .= " <td align='center'><b> รวมหักทั้งหมด </b><input type='text'  id='o_sum_pay'  name='o_sum_pay' value='" . $row['o_sum_pay']."'> บาท </td>";
      $response .= "</tr>";

      $response .= "<tr class='table-active'>";
      $response .= "<td colspan='2' align='center'> รับสุทธิ <input type='text'  id='o_get_real'  name='o_get_real' value='".$row['o_get_real'] ."'> บาท <br> (".$this->Convert(floatval(str_replace(",","",$row['o_get_real'])) ).")</td>";
      $response .= "</tr>";

      $response .= "</tbody>";
    }
    $response .= "</table>";
    $response .= "</div>";
    $response .= "<input type='hidden'  id='edit_id'  name='edit_id' value='".$row['o_id'] ."'>";
    echo $response;
   }
  
   public function update(){
    $data = array(
                "o_allowance" => $this->input->post("o_allowance"),
                "o_pts" => $this->input->post("o_pts"),
                "o_not_practice" => $this->input->post("o_not_practice"),
                "o_ot" => $this->input->post("o_ot"),
                "o_revenue"    => $this->input->post("o_revenue"),
                "o_sum_revenue"    => $this->input->post("o_sum_revenue"),
                "o_nks_sk"    => $this->input->post("o_nks_sk"),
                "o_nks_ministry"    => $this->input->post("o_nks_ministry"),
                "o_shop"    => $this->input->post("o_shop"),
                "o_electricity" => $this->input->post("o_electricity"),
                "o_ktb" => $this->input->post("o_ktb"),
                "o_baac"    => $this->input->post("o_baac"),
                "o_gsb"    => $this->input->post("o_gsb"),
                "o_lend"    => $this->input->post("o_lend"),
                "o_donate"    => $this->input->post("o_donate"),
                "o_food"   => $this->input->post("o_food"),
                "o_pay"   => $this->input->post("o_pay"),
                "o_sum_pay"   => $this->input->post("o_sum_pay"),
                "o_get_real"    => $this->input->post("o_get_real"),
                "o_month" => $this->input->post("o_month")
    );
    $id = $this->input->post("edit_id");
    $this->csv_import_model->update($id, $data);
 
      echo "ok";
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
        public function del_office(){
            $this->csv_import_model->delete($_POST["userid"]);
            echo "ok";
        }
        
        
}
?>