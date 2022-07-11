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
                    <td  colspan="2"><h3><b>ประจำเดือน <?php echo $row['r_month'] ?> <br> ชื่อ-สกุล : </b><?= $row['m_name'] ?><br><b>ค่าตอบแทนของ : </b><?= $row['t_name'] ?><br><b>วันที่โอนเงิน : </b><?= $date_get ?> </h3></td>
                </tr>
                <tr>
                    <td align="center" style=" width: 50%;" ><b> รายรับ </b></td>
                    <td align="center" style=" width: 50%;"><b>รายจ่าย </b></td>
                </tr>
                <tr>
               <tr>
                <td>1. ค่าล่วงเวลา : <?php  echo $row['r_ot'] ?> บาท </td>
             <td>1. ฌกส.ศก. : <?php  echo $row['r_nks_sk'] ?> บาท</td>
            </tr>

            <tr>
             <td >2. รายรับอื่นๆ : <?php  echo $row['r_revcnue'] ?> บาท </td>
             <td >2. ร้านค้า : <?php  echo $row['r_shop'] ?> บาท</td>
            </tr>

            <tr>
            <td>3. ฉ.11 : <?php  echo $row['r_c11'] ?> บาท </td>
             <td>3. ค่าไฟ : <?php  echo $row['r_electricity'] ?> บาท </td>
            
            </tr>

            <tr>
            <td rowspan='7'> </td>
             <td>4. ฌกส.ออมทรัพย์ : <?php  echo $row['r_nks_os'] ?> บาท </td>
            
            </tr>

            <tr>
             <td>5. ธกส. : <?php  echo $row['r_baac'] ?> บาท </td>
            
            </tr>

            <tr>
             <td>6. ออมสิน : <?php  echo $row['r_gsb'] ?> บาท</td>
            </tr>

            <tr>
             <td>7. เงินยืม : <?php  echo $row['r_lend'] ?> บาท</td>
            </tr>

            <tr>
             <td>8. กลุ่มการบริหาร : <?php  echo $row['r_manage'] ?> บาท</td>
            </tr>

            <tr>
             <td>9. อาหาร : <?php  echo $row['r_food'] ?> บาท</td>
            </tr>

            <tr> 
             <td>10. รายจ่ายอื่นๆ : <?php  echo $row['r_pay'] ?> บาท</td>
            </tr>
            <tr>
            
           

            <tr>
             <td align='center'> <b>รวมรับทั้งหมด</b> <?php  echo $row['r_sum_revcnue'] ?> บาท </td>
             <td align='center'><b> รวมหักทั้งหมด </b><?php  echo $row['r_sum_pay'] ?> บาท </td>
            </tr>

           <tr class='table-active'>
           <td colspan='2' align='center'> รับสุทธิ <?php echo $row['r_get_real']  ?> บาท <br>(<?php echo $bat ?>))</td>
           </tr>
             
                
            </tbody>
        </table>
<?php }?>
<br>
      <div>วันที่ออกหนังสือรับรอง <?php echo date("d/m/Y ") ?> เวลา <?php echo date("H:i:s") ?> </div>
    <div align="right" class="sizefont">  ลงชื่อ................................................................................................ </div>
</body>


</html>