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

  <div class="row">
    <div class="col">
      <div class="card">
        <div class="card-header card-navy card-outline">
        <?php
          foreach ($list as $row) { ?>
          <H4>:: ข้อมูลเดือนล่าสุด :: <?php echo $row['p_month'] ?></H4>
        </div>
        <br>
        <div class="card-body p-3">

         
            <div class="card card-widget widget-user">
              <!-- Add the bg color to the header using any of the bg-* classes -->
              <div class="widget-user-header text-white " style="background: url('<?php echo base_url() ?>assets/uploads/<?php echo $img[0]['img_2'];?>') center center;">
                <h3 class="widget-user-username text-right">
                  <?php echo $row['m_name']; ?>
                </h3>
                <h5 class="widget-user-desc text-right">
                  <?php echo $row['t_name'] ?>
                </h5>

              </div>
              <div class="widget-user-image">
                <img class="img-circle" src="<?php echo base_url() ?>assets/uploads/<?php echo $img[0]['img_1'];?>" alt="User Avatar">
              </div>
              <div class="card-footer">
                <div class="row">
                  <div class="col-sm-4 border-right">
                    <div class="description-block">
                      <h5 class="description-header"> <?php echo $row['p_sum_revenue'] ?></h5>
                      <span class="description-text">รวมรับ</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-4 border-right">
                    <div class="description-block">
                      <h5 class="description-header"><?php echo $row['p_get_real'] ?></h5>
                      <span class="description-text">รับจริง</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-4">
                    <div class="description-block">
                      <h5 class="description-header"><?php echo $row['p_sum_pay'] ?></h5>
                      <span class="description-text">รวมหัก</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
            </div>
        </div>
      </div>
    <?php }   ?>
    </div>
    <div class="col">
      <div class="card">
        <div class="card-header card-navy card-outline">

          <H4>:: กราฟ ::</H4>
        </div>
        <br>
        <div class="card-body p-3">
          <div class="card">
            <div class="card-header border-0">
              <div class="d-flex justify-content-between">
                <h3 class="card-title">รายงานเงินเดือน</h3>
                <a href="javascript:void(0);">View Report</a>
              </div>
            </div>
            <div class="card-body">
              <div class="d-flex">
                <p class="d-flex flex-column">
                  <span class="text-bold text-lg">820</span>
                  <span>Visitors Over Time</span>
                </p>

              </div>
              <!-- /.d-flex -->

              <div class="position-relative mb-4">
                <div class="chartjs-size-monitor">
                  <div class="chartjs-size-monitor-expand">
                    <div class=""></div>
                  </div>
                  <div class="chartjs-size-monitor-shrink">
                    <div class=""></div>
                  </div>
                </div>
                <canvas id="visitors-chart" height="200" width="396" style="display: block; width: 396px; height: 200px;" class="chartjs-render-monitor"></canvas>
              </div>

              <div class="d-flex flex-row justify-content-end">
                <span class="mr-2">
                  <i class="fas fa-square text-primary"></i> รับจริง
                </span>
                <span class="mr-2">
                  <i class="fas fa-square text-success"></i> รวมรับ
                </span>
                <span class="mr-2">
                  <i class="fas fa-square text-gray"></i> รวมหัก
                </span>


              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.col -->

  </div>
  <div class="row">
    <div class="col">
      <div class="card">
        <div class="card-header card-navy card-outline">
          <H4>:: รายการ ::</H4>
        </div>
        <br>
        <div class="card-body p-3">
          <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
            <thead>
              <tr role="row" class="info">
                <th tabindex="0" rowspan="1" colspan="1" style="width: 1%;">ลำดับ</th>
                <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">เดือน</th>
                <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">วันที่โอนเงิน</th>
                <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">จำนวนเงิน</th>

                <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">หมายเหตุ</th>

                <th tabindex="0" rowspan="1" colspan="1" style="width: 10%;">-</th>

              </tr>
            </thead>
            <tbody>

              <?php $i = 1;
              foreach ($getdetail as $row) { ?>
                <tr>
                  <td>
                    <?php echo $i; ?>
                  </td>
                  <td>
                    <?php echo $row['p_month']; ?>
                  </td>
                  <td>
                    <?php echo $row['p_date_get']; ?>
                  </td>
                  <td>
                    <?php echo $row['p_get_real']; ?>
                  </td>

                  <td>
                    -
                  </td>


                  <td align="center">


                    <button class="btn btn-info btn-xs p_info" data-id='<?php echo $row['p_id']; ?>'>
                      <i class="fas fa-eye">
                      </i>

                    </button>





                </tr>
              <?php $i++;
              } ?>


            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<div class="modal fade" id="edit_offic_id">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">แก้ไขข้อมูล</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="form_offic" action="" title="" method="post">
        <div class="modal-body edit p-3">

        </div>
        <div class='modal-footer justify-content-between'>
          <button type='button' class='btn btn-default' data-dismiss='modal'>ยกเลิก</button>
          <button type='submit' id="btn_update" class='btn btn-primary update_offic'> <i class='fas fa-save'></i> บันทึก </button>
        </div>
      </form>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>

<div class="modal fade" id="model_p">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">พิมพ์ สลิป</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body body-data p-3">


      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <script src="<?php echo base_url() ?>assets/plugins/jquery/jquery.min.js"></script>
  <script type="application/javascript">
    $(document).ready(function() {
      'use strict'

      var ticksStyle = {
        fontColor: '#495057',
        fontStyle: 'bold'
      }

      var mode = 'index'
      var intersect = true
      var x = <?php echo json_encode($y) ?>;
      var result = [];
      var o_sum_pay = [];
      var o_sum_revenue = [];
      var o_month = [];
      for (var i in x) {
        result.push(x[i]['p_get_real']);
        o_sum_pay.push(x[i]['p_sum_pay']);
        o_sum_revenue.push(x[i]['p_sum_revenue']);
        o_month.push(x[i]['p_month']);
        console.log(x[i]['p_get_real']);

      }


      var $visitorsChart = $('#visitors-chart')
      var visitorsChart = new Chart($visitorsChart, {
        data: {
          labels: o_month,
          datasets: [{
              type: 'line',
              data: result,
              backgroundColor: 'transparent',
              borderColor: '#007bff',
              pointBorderColor: '#007bff',
              pointBackgroundColor: '#007bff',
              fill: false

            },
            {
              type: 'line',
              data: o_sum_pay,
              backgroundColor: 'tansparent',
              borderColor: '#ced4da',
              pointBorderColor: '#ced4da',
              pointBackgroundColor: '#ced4da',
              fill: false
              // pointHoverBackgroundColor: '#ced4da',
              // pointHoverBorderColor    : '#ced4da'
            },
            {
              type: 'line',
              data: o_sum_revenue,
              backgroundColor: 'tansparent',
              borderColor: '#28a745',
              pointBorderColor: '#28a745',
              pointBackgroundColor: '#28a745',
              fill: false
              // pointHoverBackgroundColor: '#ced4da',
              // pointHoverBorderColor    : '#ced4da'
            }
          ]



        },
        options: {
          maintainAspectRatio: false,
          tooltips: {
            mode: mode,
            intersect: intersect
          },
          hover: {
            mode: mode,
            intersect: intersect
          },
          legend: {
            display: false
          },
          scales: {
            yAxes: [{
              // display: false,
              gridLines: {
                display: true,
                lineWidth: '4px',
                color: 'rgba(0, 0, 0, .2)',
                zeroLineColor: 'transparent'
              },
              ticks: $.extend({
                beginAtZero: true,
                suggestedMax: 200
              }, ticksStyle)
            }],
            xAxes: [{
              display: true,
              gridLines: {
                display: false
              },
              ticks: ticksStyle
            }]
          }
        }
      })
    });

    $('.p_info').click(function(){
   
   var userid = $(this).data('id');
   console.log(userid);
   
   // AJAX request
   $.ajax({
    url: '../Admin/Pofficial/p_info',
    type: 'post',
    data: {userid: userid},
    success: function(response){ 
 
     $('.body-data').html(response);

      // Display Modal
      $('#model_p').modal('show'); 
     

    }
  });
});
  </script>