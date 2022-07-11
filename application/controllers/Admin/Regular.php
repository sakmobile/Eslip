<?php 

class Regular extends CI_Controller {

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
            'view_list' => 'admin/regular',
             'title' => 'ลูกจ้างประจำ',
             'menu' => 'regular',
             'types' => 'admin'
          ];
          $id=3;
          $data['list'] = $this->csv_import_model->select_p($id);
          $data['img'] = $this->Setting_model->showimg($this->session->id);
        $this->load->view('/layout/template',$data);
    }

    function show_r($id){
        $data = [
            'view_list' => 'admin/regular_deail',
            'title' => 'ลูกจ้างประจำ | รายละเอียด',
            'menu' => 'regular',
            'types' => 'admin'
        ];
        $data['y'] = $this->Regular_model->get_datas($id);
        $data['list'] = $this->Regular_model->show($id);
        $data['getdetail'] = $this->Regular_model->getdetail($id);
        $data['img'] = $this->Setting_model->showimg($id);
        $this->load->view('/layout/template', $data);
    }

    public function add_date()
    {

        $file_data = $this->csvimport->get_array($_FILES["rcsv_file"]["tmp_name"]);
        $month = $this->input->post('month') . ' ' . $this->input->post('year');
        $insertArray = array();
        //echo json_encode($file_data[0][1]);
         foreach ($file_data as $row) {
        
         

             $data[] = array(
                "r_ot" => $row["C"],
                "r_revcnue" => $row["D"],
                "r_sum_revcnue" => $row["E"],
                "r_c11" => $row["EE"],
                "r_nks_sk" => $row["F"],
                "r_shop"    => $row["G"],
                "r_electricity"    => $row["H"],
                "r_nks_os"    => $row["I"],
                "r_baac" => $row["J"],
                "r_gsb" => $row["K"],
                "r_lend"    => $row["L"],
                "r_manage"    => $row["M"],
                "r_food"    => $row["N"],
                "r_pay"    => $row["O"],
                "r_sum_pay"   => $row["P"],
                "r_get_real"   => $row["Q"],
                "r_month" => $month,
                "r_date_get" => $this->input->post("date_get"),
                "r_date"    => $this->input->post("_date"),
                "r_m_id" => $row["A"]



            );
         }

     
        
      $this->Regular_model->add($data);
      $this->session->set_flashdata("msg","บันทึกข้อมูลเรียบร้อย");
     redirect("regular");
    }
    
    function r_info()
    {
        $id = $this->input->post('userid');
        $data = $this->Regular_model->userinfo($id);
        $response = "<table class='table table-bordered'>";
        foreach ($data as $row) {

            $response .= "<tbody>";
            $response .= "<tr>";
            $response .= "<td colspan='2' align='center'> ประจำเดือน " . $row['r_month'] . "</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td colspan='3' ><b>ชื่อ-สกุล : </b>" . $row['m_name'] . "</br><b>ค่าตอบแทนของ : </b>" . $row['t_name'] . "</br><b>วันที่โอนเงิน : </b>" . $this->changeDate($row['r_date_get']) . "</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td align='center'><b> รายรับ </b></td>";
            $response .= " <td align='center'><b>รายจ่าย </b></td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>1. ค่าล่วงเวลา : " . $row['r_ot'] . " บาท </td>";
            $response .= " <td>1. ฌกส.ศก. : " . $row['r_nks_sk'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td >2. รายรับอื่นๆ : " . $row['r_revcnue'] . " บาท </td>";
            $response .= " <td >2. ร้านค้า : " . $row['r_shop'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>3. ฉ.11 : " . $row['r_c11'] . " บาท </td>";     
            $response .= " <td>3. ค่าไฟ : " . $row['r_electricity'] . " บาท </td>";           
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td rowspan='7'> </td>";
            $response .= " <td>4. ฌกส.ออมทรัพย์ : " . $row['r_nks_os'] . " บาท </td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>5. ธกส. : " . $row['r_baac'] . " บาท </td>";
            
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>6. ออมสิน : " . $row['r_gsb'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>7. เงินยืม : " . $row['r_lend'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>8. กลุ่มการบริหาร : " . $row['r_manage'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>9. อาหาร : " . $row['r_food'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>"; 
            $response .= " <td>10. รายจ่ายอื่นๆ : " . $row['r_pay'] . " บาท</td>";
            $response .= "</tr>";
            $response .= "<tr>";
            
           

            $response .= "<tr>";
            $response .= " <td align='center'> <b>รวมรับทั้งหมด</b> " . $row['r_sum_revcnue'] . " บาท </td>";
            $response .= " <td align='center'><b> รวมหักทั้งหมด </b>" . $row['r_sum_pay'] . " บาท </td>";
            $response .= "</tr>";

            $response .= "<tr class='table-active'>";
            $response .= "<td colspan='2' align='center'> รับสุทธิ " . $row['r_get_real'] . " บาท <br> (" . $this->Convert(floatval(str_replace(",", "", $row['r_get_real']))) . ")</td>";
            $response .= "</tr>";

            $response .= "</tbody>";
        }
        $response .= "</table>";

        $response .= "</div>";
        $response .= "<div class='modal-footer justify-content-between'>";
        $response .= "<button type='button' class='btn btn-default' data-dismiss='modal'>ยกเลิก</button>";
        $response .= "<a type='button' href='" . base_url() . "print_r/" . $row['r_id'] . "/" . floatval(str_replace(",", "", $row['r_get_real'])) . "/" . $row['r_date_get'] . "' id='print' target='_blank' class='btn btn-primary print'> <i class='fas fa-print'></i>  พิมพ์</a>";
        $response .= "</div>";
        echo $response;
    }

    public function print_r($id,$num,$date1){
      
        $data['list'] = $this->Regular_model->userinfo($id);
       echo json_encode($data);
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
        $html=$this->load->view('r_mpdf',$data,true);
        $mpdf->WriteHTML($stylesheet, 1);
		$mpdf->WriteHTML($html);
		$mpdf->Output();
   }


   function edit_r()
   {
       $id = $this->input->post('userid');
       $data = $this->Regular_model->userinfo($id);
       $response = "<table class='table table-bordered'>";
       foreach ($data as $row) {

           $response .= "<tbody>";
           $response .= "<tr>";
           $response .= "<td colspan='2' align='center'> ประจำเดือน <input type='text id='r_month'  name='r_month' value='". $row['r_month'] . " ' ></td>";
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td colspan='3' ><b>ชื่อ-สกุล : </b>" . $row['m_name'] . "</br><b>ค่าตอบแทนของ : </b>" . $row['t_name'] . "</br><b>วันที่โอนเงิน : </b>" . $this->changeDate($row['r_date_get']) . "</td>";
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td align='center'><b> รายรับ </b></td>";
           $response .= " <td align='center'><b>รายจ่าย </b></td>";
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td>1. ค่าล่วงเวลา : <input type='text id='r_ot'  name='r_ot' value='". $row['r_ot'] . " ' > บาท </td>";
           $response .= " <td>1. ฌกส.ศก. : <input type='text id='r_nks_sk'  name='r_nks_sk' value='" . $row['r_nks_sk'] . " ' >บาท</td>";
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td >2. รายรับอื่นๆ : <input type='text id='r_revcnue'  name='r_revcnue' value='" . $row['r_revcnue'] . " ' >บาท </td>";
           $response .= " <td >2. ร้านค้า : <input type='text id='r_shop'  name='r_shop' value='" . $row['r_shop'] . " ' >บาท</td>";
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td>3. ฉ.11 : <input type='text id='r_c11'  name='r_c11' value='" . $row['r_c11'] . "' > บาท </td>";
           $response .= " <td>3. ค่าไฟ : <input type='text id='r_electricity'  name='r_electricity' value='" . $row['r_electricity'] . "' > บาท </td>";
           
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td rowspan='7'> </td>";
           $response .= " <td>4. ฌกส.ออมทรัพย์ : <input type='text id='r_nks_os'  name='r_nks_os' value='" . $row['r_nks_os'] . "' > บาท </td>";
           
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td>5. ธกส. : <input type='text id='r_baac'  name='r_baac' value='" . $row['r_baac'] . "' > บาท </td>";
           
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td>6. ออมสิน : <input type='text id='r_gsb'  name='r_gsb' value='" . $row['r_gsb'] . "' > บาท</td>";
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td>7. เงินยืม : <input type='text id='r_lend'  name='r_lend' value='" . $row['r_lend'] . " ' >บาท</td>";
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td>8. กลุ่มการบริหาร : <input type='text id='r_manage'  name='r_manage' value='" . $row['r_manage'] . "' > บาท</td>";
           $response .= "</tr>";

           $response .= "<tr>";
           $response .= " <td>9. อาหาร : <input type='text id='r_food'  name='r_food' value='" . $row['r_food'] . " ' >บาท</td>";
           $response .= "</tr>";

           $response .= "<tr>"; 
           $response .= " <td>10. รายจ่ายอื่นๆ : <input type='text id='r_pay'  name='r_pay' value='" . $row['r_pay'] . "' > บาท</td>";
           $response .= "</tr>";
           $response .= "<tr>";
           
          

           $response .= "<tr>";
           $response .= " <td align='center'> <b>รวมรับทั้งหมด</b> <input type='text id='r_sum_revcnue'  name='r_sum_revcnue' value='" . $row['r_sum_revcnue'] . "' > บาท </td>";
           $response .= " <td align='center'><b> รวมหักทั้งหมด </b><input type='text id='r_sum_pay'  name='r_sum_pay' value='" . $row['r_sum_pay'] . "' > บาท </td>";
           $response .= "</tr>";

           $response .= "<tr class='table-active'>";
           $response .= "<td colspan='2' align='center'> รับสุทธิ <input type='text id='r_get_real'  name='r_get_real' value='" . $row['r_get_real'] . " '> บาท <br> (" . $this->Convert(floatval(str_replace(",", "", $row['r_get_real']))) . ")</td>";
           $response .= "</tr>";

           $response .= "</tbody>";
       }
       $response .= "</table>";

       $response .= "<input type='hidden'  id='edit_id_r'  name='edit_id_r' value='" . $row['r_id'] . "'>";
       echo $response;
   }


   public function update_rr()
   {

      
       
        

            $data = array(
               "r_ot" => $this->input->post("r_ot"),
               "r_revcnue" => $this->input->post("r_revcnue"),
               "r_sum_revcnue" => $this->input->post("r_sum_revcnue"),
               "r_c11" => $this->input->post("r_c11"),
               "r_nks_sk" => $this->input->post("r_nks_sk"),
               "r_shop"    => $this->input->post("r_shop"),
               "r_electricity"    => $this->input->post("r_electricity"),
               "r_nks_os"    => $this->input->post("r_nks_os"),
               "r_baac" => $this->input->post("r_baac"),
               "r_gsb" => $this->input->post("r_gsb"),
               "r_lend"    => $this->input->post("r_lend"),
               "r_manage"    => $this->input->post("r_manage"),
               "r_food"    => $this->input->post("r_food"),
               "r_pay"    => $this->input->post("r_pay"),
               "r_sum_pay"   => $this->input->post("r_sum_pay"),
               "r_get_real"   => $this->input->post("r_get_real"),
               "r_month" => $this->input->post("r_month"),
                     
           );
           $id = $this->input->post("edit_id_r");
           $this->Regular_model->update_r($id, $data);
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




    public function del_r()
    {
        $this->Regular_model->delete($_POST["userid"]);
        echo "ok";
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
 
}