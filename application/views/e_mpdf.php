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
                    <td  colspan="2"><h3><b>ประจำเดือน <?php echo $row['e_month'] ?> <br> ชื่อ-สกุล : </b><?= $row['m_name'] ?><br><b>ค่าตอบแทนของ : </b><?= $row['t_name'] ?><br><b>วันที่โอนเงิน : </b><?= $date_get ?> </h3></td>
                </tr>
                <tr>
                    <td align="center" style=" width: 50%;"><b> รายรับ </b></td>
                    <td align="center" style=" width: 50%;"><b>รายจ่าย </b></td>
                </tr>
                <tr>
		   <td>1. เงินเดือน : <?php echo $row['e_salary'] ?> บาท </td>
		   <td>1. ฌกส.กระทรวง. :<?php echo$row['e_nks_ministry'] ?> บาท</td>
		  </tr>

		  <tr>
		   <td >2. พตส :<?php  echo $row['e_pts'] ?> บาท </td>
		   <td >2. ฌกส.ศก.: <?php echo$row['e_nks_sk']?> บาท</td>
		  </tr>

		  <tr>
		   <td>3. ค่าจ้างตกเบิกเหมาจ่าย :<?php  echo   $row['e_back_pay'] ?> บาท </td>
		   <td>3. ฌกส.สหกรณ์ : <?php echo$row['e_nks_sk1'] ?> บาท</td>
		  </tr>

          <tr>
		   <td>4. เหมาจ่าย :<?php  echo   $row['e_for_pay'] ?> บาท </td>
		   <td>4. ร้านค้า : <?php echo$row['e_shop']?> บาท</td>
		  </tr>

		  <tr>
		   <td>5. ค่าล่วงเวลา :<?php  echo   $row['e_ot'] ?> บาท </td>
		   <td>5. ประกันสังคมส่วนที่ตกเบิก : <?php echo$row['e_sss_back_pay'] ?> บาท</td>
		  </tr>

		  <tr>
		   <td>6. รายรับอื่นๆ :<?php  echo   $row['e_revcnue'] ?> บาท </td>
		   <td>6. ประกันสังคม : <?php echo$row['e_sss'] ?> บาท</td>
		  </tr>

		  <tr>
		   <td rowspan='9'> </td>
		   <td>7. กองทุนลูกจ้าง 2% : <?php echo$row['e_fund']?> บาท</td>
		  </tr>

		  <tr>
		
          <td>8. สหกรณ์ ออมทรัพย์ : <?php echo$row['e_cooperative'] ?> บาท</td>
		  </tr>

		  
		  <tr>
		
		   <td>9. ค่าไฟฟ้า : <?php echo$row['e_electricity'] ?> บาท</td>
		  </tr>

		  <tr>
		 
		   <td>10. ธกส. : <?php echo$row['e_baac'] ?> บาท</td>
		  </tr>
		  <tr>
		 
		   <td>11. ออมสิน : <?php echo$row['e_gsb'] ?> บาท</td>
		  </tr>
		  <tr>
		
		   <td>12. เงินยืม : <?php echo$row['e_lend'] ?> บาท</td>
		  </tr>
		  <tr>
		 
		   <td>13. กลุ่มการบริหาร : <?php echo$row['e_manage'] ?> บาท</td>
		  </tr>
		  <tr>
		  
		   <td>14. อาหาร : <?php echo$row['e_food'] ?> บาท</td>
		  </tr>

		  <tr>
		 
		   <td>15. รายจ่ายอื่น ๆ : <?php echo$row['e_pay'] ?> บาท</td>
		  </tr>

		  <tr>
		   <td align='center'> <b>รวมรับทั้งหมด </b><?php  echo   $row['e_sum_revenue'] ?> บาท </td>
		   <td align='center'><b> รวมหักทั้งหมด </b><?php echo $row['e_sum_pay'] ?> บาท </td>
		  </tr>

		  <tr class='table-active'>
		  <td colspan='2' align='center'> รับสุทธิ <?= $row['e_get_real'] ?> บาท <br>(<?php echo $bat ?>)</td>
		  </tr>
             
                
            </tbody>
        </table>
<?php }?>
<br>
      <div>วันที่ออกหนังสือรับรอง <?php echo date("d/m/Y ") ?> เวลา <?php echo date("H:i:s") ?> </div>
    <div align="right" class="sizefont">  ลงชื่อ................................................................................................ </div>
</body>


</html>