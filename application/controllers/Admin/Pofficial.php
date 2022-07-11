<?php

class Pofficial extends CI_Controller
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
            'view_list' => 'admin/pofficial',
            'title' => 'พนักงานราชการ',
            'menu' => 'pofficial',
            'types' => 'admin'
        ];
        $id = 2;
        $data['list'] = $this->csv_import_model->select_p($id);
        $data['img'] = $this->Setting_model->showimg($this->session->id);
        $this->load->view('/layout/template', $data);
    }
    public function add_date()
    {

        $file_data = $this->csvimport->get_array($_FILES["pcsv_file"]["tmp_name"]);
        $month = $this->input->post('month') . ' ' . $this->input->post('year');
        $insertArray = array();
        // echo json_encode($file_data);
        foreach ($file_data as $row) {
            $data[] = array(
                "p_salary" => $row["C"],
                "p_sts" => $row["D"],
                "p_back_pay" => $row["E"],
                "p_nowas" => $row["EE"],
                "p_ot" => $row["F"],
                "p_revenue"    => $row["G"],
                "p_sum_revenue"    => $row["H"],
                "p_nsk_sk"    => $row["I"],
                "p_nsk_sk3" => $row["K"],
                "p_shop" => $row["L"],
                "p_sss_back_pay"    => $row["M"],
                "p_sss"    => $row["N"],
                "p_fund"    => $row["O"],
                "p_cooperative"    => $row["P"],
                "p_electricity"   => $row["Q"],
                "p_baac"   => $row["R"],
                "p_gsb"   => $row["S"],
                "p_lend"    => $row["T"],
                "p_manage" => $row["U"],
                "p_food" => $row["V"],
                "p_pay" => $row["W"],
                "p_sum_pay"     => $row["X"],
                "p_get_real" => $row["Y"],
                "p_month" => $month,
                "p_date_get" => $this->input->post("date_get"),
                "p_date"    => $this->input->post("_date"),
                "p_m_id" => $row["A1"]



            );
        }



        $this->Pofficial_model->add($data);
        $this->session->set_flashdata("msg","บันทึกข้อมูลเรียบร้อย");
        redirect("pofficial");
    }

    function admin_shows($id)
    {
        $data = [
            'view_list' => 'admin/pofficlal_deail',
            'title' => 'พนักงานราชการ | รายละเอียด',
            'menu' => 'pofficial',
            'types' => 'admin'
        ];
        $data['y'] = $this->Pofficial_model->get_datas($id);
        $data['list'] = $this->Pofficial_model->show($id);
        $data['getdetail'] = $this->Pofficial_model->getdetail($id);
        $data['img'] = $this->Setting_model->showimg($id);
        $this->load->view('/layout/template', $data);
    }

    function p_info()
    {
        $id = $this->input->post('userid');
        $data = $this->Pofficial_model->userinfo($id);
        $response = "<table class='table table-bordered'>";
        foreach ($data as $row) {

            $response .= "<tbody>";
            $response .= "<tr>";
            $response .= "<td colspan='2' align='center'> ประจำเดือน " . $row['p_month'] . "</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td colspan='3' ><b>ชื่อ-สกุล : </b>" . $row['m_name'] . "</br><b>ค่าตอบแทนของ : </b>" . $row['t_name'] . "</br><b>วันที่โอนเงิน : </b>" . $this->changeDate($row['p_date_get']) . "</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td align='center'><b> รายรับ </b></td>";
            $response .= " <td align='center'><b>รายจ่าย </b></td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>1. เงินเดือน : " . $row['p_salary'] . " บาท </td>";
            $response .= " <td>1. ฌกส.ศก. : " . $row['p_nsk_sk'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td >2. พตส : " . $row['p_sts'] . " บาท </td>";
            $response .= " <td >2. ฌกส.สหกรณ์ : " . $row['p_nsk_sk3'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>3. ค่าจ้างตกเบิก เหมาจ่าย : " . $row['p_back_pay'] . " บาท </td>";
            $response .= " <td>3. ร้านค้า : " . $row['p_shop'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>4. ไม่ทำเวช : " . $row['p_nowas'] . " บาท </td>";
            $response .= " <td>4. ประกันสังคม ส่วนที่ตกเบิก : " . $row['p_sss_back_pay'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>5. ค่าล่วงเวลา : " . $row['p_ot'] . " บาท </td>";
            $response .= " <td>5. ประกันสังคม : " . $row['p_sss'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>6. รายรับอื่นๆ : " . $row['p_revenue'] . " บาท </td>";
            $response .= " <td>6. กองทุนลูกจ้าง 2% : " . $row['p_fund'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td rowspan='8'> </td>";
            $response .= " <td>7. สหกรณ์ ออมทรัพย์ : " . $row['p_cooperative'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>8. ค่าไฟฟ้า : " . $row['p_electricity'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>9. ธกส. : " . $row['p_baac'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>10. ออมสิน : " . $row['p_gsb'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>11. เงินยืม : " . $row['p_lend'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>12.กลุ่มการ บริหาร : " . $row['p_manage'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>13.อาหาร : " . $row['p_food'] . " บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>14.รายจ่าย อื่นๆ : " . $row['p_pay'] . " บาท</td>";
            $response .= "</tr>";
            

            $response .= "<tr>";
            $response .= " <td align='center'> <b>รวมรับทั้งหมด</b> " . $row['p_sum_revenue'] . " บาท </td>";
            $response .= " <td align='center'><b> รวมหักทั้งหมด </b>" . $row['p_sum_pay'] . " บาท </td>";
            $response .= "</tr>";

            $response .= "<tr class='table-active'>";
            $response .= "<td colspan='2' align='center'> รับสุทธิ " . $row['p_get_real'] . " บาท <br> (" . $this->Convert(floatval(str_replace(",", "", $row['p_get_real']))) . ")</td>";
            $response .= "</tr>";

            $response .= "</tbody>";
        }
        $response .= "</table>";

        $response .= "</div>";
        $response .= "<div class='modal-footer justify-content-between'>";
        $response .= "<button type='button' class='btn btn-default' data-dismiss='modal'>ยกเลิก</button>";
        $response .= "<a type='button' href='" . base_url() . "print_p/" . $row['p_id'] . "/" . floatval(str_replace(",", "", $row['p_get_real'])) . "/" . $row['p_date_get'] . "' id='print' target='_blank' class='btn btn-primary print'> <i class='fas fa-print'></i>  พิมพ์</a>";
        $response .= "</div>";
        echo $response;
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

    public function edit_p()
    {
        $id = $this->input->post('userid');
        $data = $this->Pofficial_model->userinfo($id);
        $response = "<table class='table table-bordered'>";
        foreach ($data as $row) {

            $response .= "<tbody>";
            $response .= "<tr>";
            $response .= "<td colspan='2' align='center'> ประจำเดือน <input type='text id='p_month'  name='p_month' value='" . $row['p_month'] . "' ></td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td colspan='3' ><b>ชื่อ-สกุล : </b>" . $row['m_name'] . "</br><b>ค่าตอบแทนของ : </b>" . $row['t_name'] . "</br><b>วันที่โอนเงิน : </b>" . $this->changeDate($row['p_date_get']) . "</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td align='center'><b> รายรับ </b></td>";
            $response .= " <td align='center'><b>รายจ่าย </b></td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>1. เงินเดือน : <input type='text id='p_salary'  name='p_salary' value='" .  $row['p_salary'] . " '> บาท </td>";
            $response .= " <td>1. ฌกส.ศก. : <input type='text id='_nsk_sk'  name='_nsk_sk' value='" .  $row['p_nsk_sk'] . " '> บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td >2. พตส : <input type='text id='p_sts'  name='p_sts' value='" .  $row['p_sts'] . "'> บาท </td>";
            $response .= " <td >2. ฌกส.สหกรณ์ : <input type='text id='p_nsk_sk3'  name='p_nsk_sk3' value='" .  $row['p_nsk_sk3'] . "'> บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>3. ค่าจ้างตกเบิก เหมาจ่าย : <input type='text id='p_back_pay' size='5'  name='p_back_pay' value='" . $row['p_back_pay'] . " '> บาท </td>";
            $response .= " <td>3. ร้านค้า : <input type='text id='p_shop'  name='p_shop' value='" . $row['p_shop'] . " '>บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>4. ไม่ทำเวช : <input type='text id='p_nowas'  name='p_nowas' value='" . $row['p_nowas'] . "'> บาท </td>";
            $response .= " <td>4. ประกันสังคม ส่วนที่ตกเบิก : <input type='text id='p_sss_back_pay' size='5'   name='p_sss_back_pay' value='" . $row['p_sss_back_pay'] . "'> บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>5. ค่าล่วงเวลา : <input type='text id='p_ot'  name='p_ot' value='" . $row['p_ot'] . "'> บาท </td>";
            $response .= " <td>5. ประกันสังคม : <input type='text id='p_sss'  name='p_sss' value='" . $row['p_sss'] . "'> บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td>6. รายรับอื่นๆ : <input type='text id='p_revenue'  name='p_revenue' value='" . $row['p_revenue'] . "'> บาท </td>";
            $response .= " <td>6. กองทุนลูกจ้าง 2% : <input type='text id='p_fund'  name='p_fund' value='" .  $row['p_fund'] . " '>บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            $response .= " <td rowspan='8'> </td>";
            $response .= " <td>7. สหกรณ์ ออมทรัพย์ : <input type='text id='p_cooperative'  name='p_cooperative' value='" .  $row['p_cooperative'] . " '>บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>8. ค่าไฟฟ้า : <input type='text id='p_electricity'  name='p_electricity' value='" .  $row['p_electricity'] . " '>บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            // $response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>9. ธกส. : <input type='text id='p_baac'  name='p_baac' value='" .  $row['p_baac'] . "'> บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>10. ออมสิน : <input type='text id='p_gsb'  name='p_gsb' value='" .  $row['p_gsb'] . " '> บาท</td>";
            $response .= "</tr>";

            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>11. เงินยืม : <input type='text id='p_lend'  name='p_lend' value='" .  $row['p_lend'] . "'> บาท</td>";
            $response .= "</tr>";
            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>12.กลุ่มการ บริหาร : <input type='text id='p_manage'  name='p_manage' value='" .  $row['p_manage'] . "'> บาท</td>";
            $response .= "</tr>";
            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>13.อาหาร : <input type='text id='p_food'  name='p_food' value='" .  $row['p_food'] . "'> บาท</td>";
            $response .= "</tr>";
            $response .= "<tr>";
            //$response .= " <td> เบี้ยเลี้ยง เหมาจ่าย : ". number_format((int)$row['o_allowance'],2) . " </td>";
            $response .= " <td>14.รายจ่าย อื่นๆ : <input type='text id='p_pay'  name='p_pay' value='" .  $row['p_pay'] . "'> บาท</td>";
            $response .= "</tr>";
         

            $response .= "<tr>";
            $response .= " <td align='center'> <b>รวมรับทั้งหมด</b> <input type='text id='p_sum_revenue'  name='p_sum_revenue' value='" .  $row['p_sum_revenue'] . "'> บาท </td>";
            $response .= " <td align='center'><b> รวมหักทั้งหมด </b><input type='text id='p_sum_pay'  name='p_sum_pay' value='" .  $row['p_sum_pay'] . "'> บาท </td>";
            $response .= "</tr>";

            $response .= "<tr class='table-active'>";
            $response .= "<td colspan='2' align='center'> รับสุทธิ <input type='text id='p_get_real'  name='p_get_real' value='" . $row['p_get_real'] . " '> บาท <br> (" . $this->Convert(floatval(str_replace(",", "", $row['p_get_real']))) . ")</td>";
            $response .= "</tr>";

            $response .= "</tbody>";
        }
        $response .= "</table>";

        $response .= "<input type='hidden'  id='edit_id_p'  name='edit_id_p' value='" . $row['p_id'] . "'>";
        echo $response;
    }

    public function update_pp()
    {
        $data = array(
            "p_salary" => $this->input->post("p_salary"),
            "p_sts" => $this->input->post("p_sts"),
            "p_back_pay" => $this->input->post("p_back_pay"),
            "p_nowas" => $this->input->post("p_nowas"),
            "p_ot" => $this->input->post("p_ot"),
            "p_revenue"    => $this->input->post("p_revenue"),
            "p_sum_revenue"    => $this->input->post("p_sum_revenue"),
            "p_nsk_sk"    => $this->input->post("p_nsk_sk"),
            "p_nsk_sk3" => $this->input->post("p_nsk_sk3"),
            "p_shop" => $this->input->post("p_shop"),
            "p_sss_back_pay"    => $this->input->post("p_sss_back_pay"),
            "p_sss"    => $this->input->post("p_sss"),
            "p_fund"    => $this->input->post("p_fund"),
            "p_cooperative"    => $this->input->post("p_cooperative"),
            "p_electricity"   => $this->input->post("p_electricity"),
            "p_baac"   => $this->input->post("p_baac"),
            "p_gsb"   => $this->input->post("p_gsb"),
            "p_lend"    => $this->input->post("p_lend"),
            "p_manage" => $this->input->post("p_manage"),
            "p_food" => $this->input->post("p_food"),
            "p_pay" => $this->input->post("p_pay"),
            "p_sum_pay"     => $this->input->post("p_sum_pay"),
            "p_get_real" => $this->input->post("p_get_real"),
            "p_month" => $this->input->post("p_month"),
            


        );
       // echo json_encode($data);
        $id = $this->input->post("edit_id_p");
        $this->Pofficial_model->update_p($id, $data);
        echo "ok";
    }
    public function del_p()
    {
        $this->Pofficial_model->delete($_POST["userid"]);
        echo "ok";
    }

    public function print_p($id,$num,$date1){
      
        $data['list'] = $this->Pofficial_model->userinfo($id);
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
        $html=$this->load->view('p_mpdf',$data,true);
        $mpdf->WriteHTML($stylesheet, 1);
		$mpdf->WriteHTML($html);
		$mpdf->Output();
   }
}
