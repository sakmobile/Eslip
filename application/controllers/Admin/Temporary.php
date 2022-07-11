<?php 


class Temporary extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model('csv_import_model');
        $this->load->library('csvimport');
        $this->load->helper('file');
        
        header("content-type: text/html; charset=utf-8");
    }

    public function index(){
        $data = [
            'view_list' => 'admin/temporary',
             'title' => 'ชั่วคราว/ พกส. /รายวัน',
             'menu' => 'temporary',
             'types' => 'admin'
          ];
          $id=4;
          $data['list'] = $this->csv_import_model->select_p($id);
          $data['img'] = $this->Setting_model->showimg($this->session->id);
        $this->load->view('/layout/template',$data);
    }

    function show_t($id){
        $data = [
            'view_list' => 'admin/temporary_deail',
            'title' => 'ชั่วคราว/ พกส. /รายวัน',
            'menu' => 'temporary',
            'types' => 'admin'
        ];
        $data['y'] = $this->Temporary_model->get_datas($id);
        $data['list'] = $this->Temporary_model->show($id);
        $data['getdetail'] = $this->Temporary_model->getdetail($id);
        $data['img'] = $this->Setting_model->showimg($id);
        $this->load->view('/layout/template', $data);
    }

    function te_info()
    {
        $id = $this->input->post('userid');
        $data = $this->Temporary_model->userinfo($id);
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
            $response .= " <td>4. เหมาจ่าย : ". $row['e_for_pay'] . " บาท </td>";
            $response .= " <td>4. ร้านค้า : " . $row['e_shop']." บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td>5. ค่าล่วงเวลา : ". $row['e_ot'] . " บาท </td>";
            $response .= " <td>5. ประกันสังคมส่วนที่ตกเบิก : " . $row['e_sss_back_pay'] ." บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td>6. รายรับอื่นๆ : ". $row['e_revcnue'] . " บาท </td>";
            $response .= " <td>6. ประกันสังคม : " . $row['e_sss'] ." บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td rowspan='9'> </td>";
            $response .= " <td>7. กองทุนลูกจ้าง 2% : " . $row['e_fund']." บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
           // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
           $response .= " <td>8. สหกรณ์ ออมทรัพย์ : " . $row['e_cooperative'] ." บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
           // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
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
	
        $data['list'] = $this->Temporary_model->userinfo($id);
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

   function edit_te(){
    $id = $this->input->post('userid');
        $data = $this->Temporary_model->userinfo($id);
        $response = "<table class='table table-bordered'>";
        foreach ($data as $row) {

            $response .= "<tbody>";
            $response .= "<tr>";
            $response .= "<td colspan='2' align='center'> ประจำเดือน <input type='text id='e_month'  name='e_month' value='".$row['e_month'] ." '></td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td colspan='3' ><b>ชื่อ-สกุล : </b>".$row['m_name']."</br><b>ค่าตอบแทนของ : </b>".$row['t_name']."</br><b>วันที่โอนเงิน : </b>".$this->changeDate($row['e_date_get'])."</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td align='center'><b> รายรับ </b></td>";
            $response .= " <td align='center'><b>รายจ่าย </b></td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td>1. เงินเดือน : <input type='text id='e_salary'  name='e_salary' value='". $row['e_salary'] . "'> บาท </td>";
            $response .= " <td>1. ฌกส.กระทรวง. : <input type='text id='e_nks_ministry'  name='e_nks_ministry' value='" . $row['e_nks_ministry'] ."'> บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td >2. พตส : <input type='text id='e_pts'  name='e_pts' value='". $row['e_pts'] . "'> บาท </td>";
            $response .= " <td >2. ฌกส.ศก. : <input type='text id='e_nks_sk'  name='e_nks_sk' value='" . $row['e_nks_sk']."'> บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td>3. ค่าจ้างตกเบิกเหมาจ่าย : <input type='text id='e_back_pay'   size='10' name='e_back_pay' value='". $row['e_back_pay'] . "'> บาท </td>";
            $response .= " <td>3. ฌกส.สหกรณ์ : <input type='text id='e_nks_sk1'  name='e_nks_sk1' value='" . $row['e_nks_sk1'] ."'> บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>4. เหมาจ่าย : <input type='text id='e_for_pay'  name='e_for_pay' value='". $row['e_for_pay'] . " '>บาท </td>";
            $response .= " <td>4. ร้านค้า : <input type='text id='e_shop'  name='e_shop' value='" . $row['e_shop']."'> บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td>5. ค่าล่วงเวลา : <input type='text id='e_ot'  name='e_ot' value='". $row['e_ot'] . " '>บาท </td>";
            $response .= " <td>5. ประกันสังคมส่วนที่ตกเบิก : <input type='text id='e_sss_back_pay' size='10'  name='e_sss_back_pay' value='" . $row['e_sss_back_pay'] ."'> บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td>6. รายรับอื่นๆ : <input type='text id='e_revcnue'  name='e_revcnue' value='". $row['e_revcnue'] . "'> บาท </td>";
            $response .= " <td>6. ประกันสังคม : <input type='text id='e_sss'  name='e_sss' value='" . $row['e_sss'] ."'> บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            $response .= " <td rowspan='9'> </td>";
            $response .= " <td>7. กองทุนลูกจ้าง 2% : <input type='text id='e_fund'  name='e_fund' value='" . $row['e_fund']." '>บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
           // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
           $response .= " <td>8. สหกรณ์ ออมทรัพย์ : <input type='text id='e_cooperative'  name='e_cooperative' value='" . $row['e_cooperative'] ."'> บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
           // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
           $response .= " <td>9. ค่าไฟฟ้า : <input type='text id='e_electricity'  name='e_electricity' value='" . $row['e_electricity'] ." '>บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>10. ธกส. : <input type='text id='e_baac'  name='e_baac' value='" . $row['e_baac'] ."'> บาท</td>";
            $response .= "</tr>";
  
            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>11. ออมสิน : <input type='text id='e_gsb'  name='e_gsb' value='" . $row['e_gsb'] ."'> บาท</td>";
            $response .= "</tr>";
            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>12. เงินยืม : <input type='text id='e_lend'  name='e_lend' value='" . $row['e_lend'] ."'> บาท</td>";
            $response .= "</tr>";
            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>13. กลุ่มการบริหาร : <input type='text id='e_manage'  name='e_manage' value='" . $row['e_manage'] ." '>บาท</td>";
            $response .= "</tr>";
            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>14. อาหาร : <input type='text id='e_food'  name='e_food' value='" . $row['e_food'] ." '>บาท</td>";
            $response .= "</tr>";
            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>15. รายจ่ายอื่น ๆ : <input type='text id='e_pay'  name='e_pay' value='" . $row['e_pay'] ." '>บาท</td>";
            $response .= "</tr>";
  
  
            $response .= "<tr>";
            $response .= " <td align='center'> <b>รวมรับทั้งหมด</b> <input type='text id='e_sum_revenue'  name='e_sum_revenue' value='". $row['e_sum_revenue'] . "'> บาท </td>";
            $response .= " <td align='center'><b> รวมหักทั้งหมด </b><input type='text id='e_sum_pay'  name='e_sum_pay' value='" . $row['e_sum_pay'] ."'> บาท </td>";
            $response .= "</tr>";
  
            $response .= "<tr class='table-active'>";
            $response .= "<td colspan='2' align='center'> รับสุทธิ <input type='text id='e_get_real'  name='e_get_real' value='".$row['e_get_real'] ." '>บาท <br> (".$this->Convert(floatval(str_replace(",","",$row['e_get_real']))).")</td>";
            $response .= "</tr>";
  
            $response .= "</tbody>";
          }
          $response .= "</table>";
  
         
    $response .= "<input type='hidden'  id='edit_id_te'  name='edit_id_te' value='" . $row['e_id'] . "'>";
    echo $response;

   }


   public function update_te()
    {
        $data = array(
            "e_salary"	=> $this->input->post("e_salary"),
            "e_pts"	=> $this->input->post("e_pts"),
            "e_back_pay" => $this->input->post("e_back_pay"),
            "e_for_pay"	=> $this->input->post("e_for_pay"),
            "e_ot"	=> $this->input->post("e_ot"),
            "e_revcnue"	=> $this->input->post("e_revcnue"),
            "e_sum_revenue"	=> $this->input->post("e_sum_revenue"),
            "e_nks_ministry"=> $this->input->post("e_nks_ministry"),	
            "e_nks_sk"	=> $this->input->post("e_nks_sk"),
            "e_nks_sk1"	=> $this->input->post("e_nks_sk1"),
            "e_shop"	=> $this->input->post("e_shop"),
            "e_sss_back_pay"=> $this->input->post("e_sss_back_pay"),	
            "e_sss"	=> $this->input->post("e_sss"),
            "e_fund"	=> $this->input->post("e_fund"),
            "e_cooperative"	=> $this->input->post("e_cooperative"),
            "e_electricity"	=> $this->input->post("e_electricity"),
            "e_baac"	=> $this->input->post("e_baac"),
            "e_gsb"	=> $this->input->post("e_gsb"),
            "e_lend"	=> $this->input->post("e_lend"),
            "e_manage"	=> $this->input->post("e_manage"),
            "e_food"	=> $this->input->post("e_food"),
            "e_pay"	=> $this->input->post("e_pay"),
            "e_sum_pay"	=> $this->input->post("e_sum_pay"),
            "e_get_real"	=> $this->input->post("e_get_real"),
            "e_month"	=> $this->input->post("e_month"),
           
        );
       // echo json_encode($data);
        $id = $this->input->post("edit_id_te");
        $this->Temporary_model->update($id, $data);
        echo "ok";
    }

    public function del_te()
    {
        $this->Temporary_model->delete($_POST["userid"]);
        echo "ok";
    }
    function changeDate($date)
    {
        //ใช้ Function explode ในการแยกไฟล์ ออกเป็น  Array
        $get_date = explode("-", $date);
        //กำหนดชื่อเดือนใส่ตัวแปร $month
        $month = array("01" => "ม.ค.", "02" => "ก.พ", "03" => "มี.ค.", "04" => "เม.ย.", "05" => "พ.ค.", "06" => "มิ.ย.", "07" => "ก.ค.", "08" => "ส.ค.", "09" => "ก.ย.", "10" => "ต.ค.", "11" => "พ.ย.", "12" => "ธ.ค.");
        //month
        $get_month = $get_date["1"];

        //year    
        $year = $get_date["0"] + 543;

        return $get_date["2"] . " " . $month[$get_month] . " " . $year;
    }

    function Convert($amount_number)
    {
        $amount_number = number_format($amount_number, 2, ".", "");
        $pt = strpos($amount_number, ".");
        $number = $fraction = "";
        if ($pt === false)
            $number = $amount_number;
        else {
            $number = substr($amount_number, 0, $pt);
            $fraction = substr($amount_number, $pt + 1);
        }

        $ret = "";
        $baht = $this->ReadNumber($number);
        if ($baht != "")
            $ret .= $baht . "บาท";

        $satang = $this->ReadNumber($fraction);
        if ($satang != "")
            $ret .=  $satang . "สตางค์";
        else
            $ret .= "ถ้วน";
        return $ret;
    }








    function ReadNumber($number)
    {
        $position_call = array("แสน", "หมื่น", "พัน", "ร้อย", "สิบ", "");
        $number_call = array("", "หนึ่ง", "สอง", "สาม", "สี่", "ห้า", "หก", "เจ็ด", "แปด", "เก้า");
        $number = $number + 0;
        $ret = "";
        if ($number == 0) return $ret;
        if ($number > 1000000) {
            $ret .= $this->ReadNumber(intval($number / 1000000)) . "ล้าน";
            $number = intval(fmod($number, 1000000));
        }

        $divider = 100000;
        $pos = 0;
        while ($number > 0) {
            $d = intval($number / $divider);
            $ret .= (($divider == 10) && ($d == 2)) ? "ยี่" : ((($divider == 10) && ($d == 1)) ? "" : ((($divider == 1) && ($d == 1) && ($ret != "")) ? "เอ็ด" : $number_call[$d]));
            $ret .= ($d ? $position_call[$pos] : "");
            $number = $number % $divider;
            $divider = $divider / 10;
            $pos++;
        }
        return $ret;
    }

    public function add_date()
    {

        $file_data = $this->csvimport->get_array($_FILES["ecsv_file"]["tmp_name"]);
        $month = $this->input->post('month') . ' ' . $this->input->post('year');
       // $insertArray = array();
       // echo json_encode($file_data);
        foreach ($file_data as $row) {
            $data[] = array(
            "e_salary"	=> $row['b'],
            "e_pts"	=> $row['C'],
            "e_back_pay" => $row['D'],	
            "e_for_pay"=> $row['EE'],
            "e_ot"	=> $row['E'],
            "e_revcnue"	=> $row['F'],
            "e_sum_revenue"	=> $row['G'],
            "e_nks_ministry"=> $row['H'],	
            "e_nks_sk"	=> $row['I'],
            "e_nks_sk1"	=> $row['J'],
            "e_shop"	=> $row['K'],
            "e_sss_back_pay"=> $row['L'],	
            "e_sss"	=> $row['M'],
            "e_fund"	=> $row['N'],
            "e_cooperative"	=> $row['O'],
            "e_electricity"	=> $row['P'],
            "e_baac"	=> $row['Q'],
            "e_gsb"	=> $row['R'],
            "e_lend"	=> $row['S'],
            "e_manage"	=> $row['T'],
            "e_food"	=> $row['U'],
            "e_pay"	=> $row['V'],
            "e_sum_pay"	=> $row['W'],
            "e_get_real"	=> $row['X'],
            "e_month"	=> $month,
            "e_date_get" => $this->input->post("date_get"),
            "e_date"    => $this->input->post("_date"),
            "e_m_id" => $row["A"]



            );
        }

   // echo json_encode($data);

         $this->Temporary_model->add($data);
         $this->session->set_flashdata("msg","บันทึกข้อมูลเรียบร้อย");
         redirect("temporary");
    }
}