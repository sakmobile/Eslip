<?php date_default_timezone_set("Asia/Bangkok"); ?> 
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <style>
        body {
            font-family: sarabun;
           
    font-size: 12pt; 
 
        }
        .sizefont{
            font-size: 12pt; 
        }

        table {
            border-collapse: collapse;
            width: 100%;
             
        }

        td,
        th {
            border: 1px solid #dddddd;
            padding: 5px;
        }

        .color {
            background-color: #dddddd;
        }
        
    </style>
    <title>Report slip</title>
</head>

<body>

    <table align="center" style="border: none;  ">
        <tbody>
            <tr>
            <td style="border: none; width: 20%;" align="center">
                <img src="<?php echo base_url() ?>assets/images/logo.png" width="15%" >
            </td>
           
                <td style="border: none;">
                <h2>โรงพยาบาลภูสิงห์</h2>
                <h2>ใบรับรองการจ่ายเงินเดือนและเงินอื่น</h2>
                </td>
            </tr>
            <tr >
                    <td style="border: none;" > </td>
                    <td style="border: none;">  </td>
                </tr>
        </tbody>
    </table>



<?php foreach ($list as $row) { ?>
        <table align="center">
            <tbody>
                
                <tr>
                    <td  colspan="2"><h3><b>ประจำเดือน <?php echo $row['p_month'] ?> <br> ชื่อ-สกุล : </b><?= $row['m_name'] ?><br><b>ค่าตอบแทนของ : </b><?= $row['t_name'] ?><br><b>วันที่โอนเงิน : </b><?= $date_get ?> </h3></td>
                </tr>
                <tr>
                    <td align="center" style=" width: 50%;" ><b> รายรับ </b></td>
                    <td align="center" style=" width: 50%;"><b>รายจ่าย </b></td>
                </tr>
                <tr>
               <tr>
            <td>1. เงินเดือน : <?php echo $row['p_salary']  ?> บาท </td>
            <td>1. ฌกส.ศก. : <?php echo $row['p_nsk_sk']  ?> บาท</td>
           </tr>

           <tr>
            <td >2. พตส : <?php echo $row['p_sts']  ?> บาท </td>
            <td >2. ฌกส.สหกรณ์ : <?php echo $row['p_nsk_sk3']  ?> บาท</td>
           </tr>

           <tr>
            <td>3. ค่าจ้างตกเบิก เหมาจ่าย : <?php echo $row['p_back_pay']  ?> บาท </td>
            <td>3. ร้านค้า : <?php echo $row['p_shop']  ?> บาท</td>
           </tr>

           <tr>
            <td>4. ไม่ทำเวช : <?php echo $row['p_nowas']  ?> บาท </td>
            <td>4. ประกันสังคม ส่วนที่ตกเบิก : <?php echo $row['p_sss_back_pay']  ?> บาท</td>
           </tr>

           <tr>
            <td>5. ค่าล่วงเวลา : <?php echo $row['p_ot']  ?> บาท </td>
            <td>5. ประกันสังคม : <?php echo $row['p_sss']  ?> บาท</td>
           </tr>

           <tr>
            <td>6. รายรับอื่นๆ : <?php echo $row['p_revenue']  ?> บาท </td>
            <td>6. กองทุนลูกจ้าง 2% : <?php echo $row['p_fund']  ?> บาท</td>
           </tr>

           <tr>
            <td rowspan='8'> </td>
            <td>7. สหกรณ์ ออมทรัพย์ : <?php echo $row['p_cooperative']  ?> บาท</td>
           </tr>

           <tr>
            
           <td>8. ค่าไฟฟ้า : <?php echo $row['p_electricity']  ?> บาท</td>
           </tr>

           <tr>
            
           <td>9. ธกส. : <?php echo $row['p_baac']  ?> บาท</td>
           </tr>

           <tr>
 
           <td>10. ออมสิน : <?php echo $row['p_gsb']  ?> บาท</td>
           </tr>

           <tr>
          
           <td>11. เงินยืม : <?php echo $row['p_lend']  ?> บาท</td>
           </tr>
           <tr>
           
           <td>12.กลุ่มการ บริหาร : <?php echo $row['p_manage']  ?> บาท</td>
           </tr>
           <tr>
           
           <td>13.อาหาร : <?php echo $row['p_food']  ?> บาท</td>
           </tr>
           <tr>
           
           <td>14.รายจ่าย อื่นๆ : <?php echo $row['p_pay']  ?> บาท</td>
           </tr>


           <tr>
            <td align='center'> <b>รวมรับทั้งหมด</b> <?php echo $row['p_sum_revenue']  ?> บาท </td>
            <td align='center'><b> รวมหักทั้งหมด </b><?php echo $row['p_sum_pay']  ?> บาท </td>
           </tr>

           <tr class='table-active'>
           <td colspan='2' align='center'> รับสุทธิ <?php echo $row['p_get_real']  ?> บาท <br>(<?php echo $bat ?>))</td>
           </tr>
             
                
            </tbody>
        </table>
<?php }?>
<br>
      <div>วันที่ออกหนังสือรับรอง <?php echo date("d/m/Y ") ?> เวลา <?php echo date("H:i:s") ?> </div>
    <div align="right" class="sizefont">  ลงชื่อ................................................................................................ </div>
</body>


</html>