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

        .sizefont {
            font-size: 15pt;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #dddddd;
            padding: 10px;
        }

        .color {
            background-color: #dddddd;
        }
    </style>
    <title>Report slip</title>
</head>

<body>

    <table align="center" style="border: none;">
        <tbody>
            <tr>
                <td style="border: none; width: 20%;" align="center">
                    <img src="<?php echo base_url() ?>assets/images/logo.png" width="15%">
                </td>

                <td style="border: none;">
                    <h1>โรงพยาบาลภูสิงห์</h1>
                    <h1>ใบรับรองการจ่ายเงินเดือนและเงินอื่น</h1>
                </td>
            </tr>
            <tr>
                <td style="border: none;"> </td>
                <td style="border: none;"> </td>
            </tr>
        </tbody>
    </table>



    <?php foreach ($list as $row) { ?>
        <table align="center">
            <tbody>

                <tr>
                    <td colspan="2">
                        <h2><b>ประจำเดือน <?php echo $row['o_month'] ?> <br> ชื่อ-สกุล : </b><?= $row['m_name'] ?><br><b>ค่าตอบแทนของ : </b><?= $row['t_name'] ?><br><b>วันที่โอนเงิน : </b><?= $date_get ?> </h2>
                    </td>
                </tr>
                <tr>
                    <td align="center" style=" width: 50%;"><b> รายรับ </b></td>
                    <td align="center" style=" width: 50%;"><b>รายจ่าย </b></td>
                </tr>
                <tr>
                    <td>1. เบี้ยเลี้ยง เหมาจ่าย : <?= $row['o_allowance'] ?> บาท </td>
                    <td>1. ฌกส.ศก. : <?= $row['o_nks_sk'] ?> บาท</td>
                </tr>
                <tr>
                    <td>2. พตส : <?= $row['o_pts'] ?> บาท </td>
                    <td>2. ฌกส.กระทรวง : <?= $row['o_nks_ministry'] ?> บาท</td>
                </tr>
                <tr>
                    <td>3. ไม่ทำเวชปฏิบัติ : <?= $row['o_not_practice'] ?> บาท </td>
                    <td>3. ร้านค้า : <?= $row['o_shop'] ?> บาท</td>
                </tr>
                <tr>
                    <td>4. ค่าเวร+OT : <?= $row['o_ot'] ?> บาท </td>
                    <td>4. ค่าไฟฟ้า : <?= $row['o_electricity'] ?> บาท</td>
                </tr>
                <tr>
                    <td>5. รายรับอื่นๆ : <?= $row['o_revenue'] ?> บาท </td>
                    <td>5. ธ.กรุงไทย : <?= $row['o_ktb'] ?> บาท</td>
                </tr>
                <tr>
                    <td rowspan="6"> </td>
                    <td>6. ธกส. : <?= $row['o_baac'] ?> บาท</td>
                </tr>
                <tr>

                    <td>7. ออมสิน : <?= $row['o_gsb'] ?> บาท</td>
                </tr>
                <tr>
                    <td>8. เงินยืม : <?= $row['o_lend'] ?> บาท</td>
                </tr>
                <tr>
                    <td>9. บริจาค/บริหาร : <?= $row['o_donate'] ?>บาท</td>
                </tr>
                <tr>
                    <td>10. ค่าอาหาร : <?= $row['o_food'] ?> บาท</td>
                </tr>
                <tr>
                    <td>11. รายจ่ายอื่น ๆ : <?= $row['o_pay'] ?> บาท</td>
                </tr>
                <tr>
                    <td align="center"> <b>รวมรับทั้งหมด</b> <?= $row['o_sum_revenue'] ?> บาท </td>
                    <td align="center"><b> รวมหักทั้งหมด </b> <?= $row['o_sum_pay'] ?> บาท </td>
                </tr>
                <tr class="color">
                    <td colspan="2" align="center"> รับสุทธิ <?= $row['o_get_real'] ?> บาท <br>(<?php echo $bat ?>)</td>
                </tr>


            </tbody>
        </table>
    <?php } ?>
    <br>
    <div>วันที่ออกหนังสือรับรอง <?php echo date("d/m/Y ") ?> เวลา <?php echo date("H:i:s") ?> </div>
    <div align="right" class="sizefont"> ลงชื่อ................................................................................................ </div>
</body>


</html>