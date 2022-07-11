<div class="modal fade" id="modal-xl">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <form method="post" enctype="multipart/form-data" id="add_create" name="add_create" action="<?= site_url('submit_form') ?>">
        <div class="modal-header">
          <h4 class="modal-title">เพิ่มข้อมูล</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container mt-3">
            <div class="row">
              <div class="col-4">
                <div class="form-group">
                  <label>เลือกเดือน</label>
                  <?php
                  $months = array(
                    'มกราคม' => 'มกราคม',
                    'กุมภาพันธ์' => 'กุมภาพันธ์',
                    'มีนาคม' => 'มีนาคม',
                    'เมษายน' => 'เมษายน',
                    'พฤษภาคม' => 'พฤษภาคม',
                    'มิถุนายน' => 'มิถุนายน',
                    'กรกฎาคม' => 'กรกฎาคม',
                    'สิงหาคม' => 'สิงหาคม',
                    'กันยายน' => 'กันยายน',
                    'ตุลาคม' => 'ตุลาคม',
                    'พฤศจิกายน' => 'พฤศจิกายน',
                    'ธันวาคม' => 'ธันวาคม'
                  );
                  ?>

                  <select name="month" id="month" class="form-control ">
                    <option value="" selected>-- เลือก --</option>
                    <?php
                    foreach ($months as $key => $value) {
                      $selected = $key == date('M') ? 'Selected' : '';
                      echo "<option value=\"{$key}\" {$selected}>{$value}</option>";
                    }
                    ?>
                  </select>
                </div>
              </div>
              <div class="col-4">
                <div class="form-group">
                  <label>พ.ศ.</label>
                  <select name="year" id="year" class="form-control">
                  <?php   
                $xYear=date('Y'); // เก็บค่าปีปัจจุบันไว้ในตัวแปร
                echo '<option value="'.($xYear + 543).'">'.($xYear + 543).'</option>'; // ปีปัจจุบัน
                echo '<option value="'.($xYear-1 + 543).'">'.($xYear-1 + 543).'</option>'; // ย้อนหลังไป 1 ปี
                echo '<option value="'.($xYear-2 + 543).'">'.($xYear-2 + 543).'</option>'; // ย้อนหลังไป 2 ปี
                echo '<option value="'.($xYear-3 + 543).'">'.($xYear-3 + 543).'</option>'; // ย้อนหลังไป 3 ปี
                ?>
                  </select>
                </div>
              </div>
              <div class="col-4">
                <div class="form-group">
                  <label>วันที่โอนเงิน : </label>
                  <input type="date" name="date_get" id="date_get" class="form-control" required>
                  
                </div>
              </div>
            </div>

            <div class="form-group">
              <label for="file">เลือกไฟล์:  </label><label style="color: red;">  * .CSV เท่านั้น</label>
              <input type="file" class="form-control" name="csv_file" id="csv_file" required accept=".csv" />
            </div>

            <div class="form-group">
              <input type="hidden" class="form-control" name="_date" id="_date"  value="<?php echo date('Y-m-d'); ?>" />
            </div>

          </div>
        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
          <input type="submit" class="btn btn-primary" value="บันทึก" />
        </div>
    </div>
    </form>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>


<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0"><?php echo $title; ?></h1>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
  <!-- /.content-header -->
</section>


<section class="content">
  <div class="card">
    <div class="card-header card-navy card-outline">

      <div align="left">
        <a href="#">
          <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#modal-xl"><i class="fa fa-user-plus"></i>
            เพิ่มข้อมูล
          </button>
        </a>
      </div>
    </div>
    <br>
    <div class="card-body p-1">
      <div class="row">
        <div class="col-md-1">

        </div>
        <div class="col-md-12">
          <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
            <thead>
              <tr role="row" class="info">
                <th tabindex="0" rowspan="1" colspan="1" style="width: 1%;">ลำดับ</th>
                <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">ชื่อ - สกุล</th>
                <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">เลขประจำตัวประชา่ชน</th>
                <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">ตำแหน่ง</th>
               
                <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">หมายเหตุ</th>

                <th tabindex="0" rowspan="1" colspan="1" style="width: 10%;" >-</th>

              </tr>
            </thead>
            <tbody>
            
            <?php $i=1 ;
             foreach ($list as $row) { ?>
              <tr>
                <td>
                   <?php echo $i; ?>
                </td>
                <td>
                  <?php echo $row['m_name']; ?>
                </td>
                <td>
                  <?php echo $row['m_cid']; ?>
                </td>
                <td>
                <?php echo $row['t_name']; ?>
                </td>
               
                <td>
                  -
                </td>


                <td align="center">

                  <a class="btn btn-info btn-xs" href="<?php echo site_url('shows/'.$row['m_id']); ?>" >
                    <i class="fas fa-eye">
                    </i>
                    เลือก
                  </a>        
                </td>


              </tr>
              <?php $i++; } ?>


            </tbody>
          </table>

        </div>
      
      </div>
    </div>

  </div>



  </div>
  <!-- /.col -->
  </div>
</section>