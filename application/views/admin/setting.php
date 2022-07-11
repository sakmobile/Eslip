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
      <h4>รายชื่อเจ้าหน้าที่</h4>
      <div align="left">
        <a href="#">
          <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#add_user"><i class="fa fa-user-plus"></i>
            เพิ่มข้อมูล
          </button>
        </a>
      </div>
    </div>
    <br>
    <div class="card-body p-1">
      <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
        <thead>
          <tr role="row" class="info">
            <th tabindex="0" rowspan="1" colspan="1" style="width: 1%;">ลำดับ</th>
            <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">ชื่อ - สกุล</th>
            <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">เลขประจำตัวประชาชน</th>
            <th tabindex="0" rowspan="1" colspan="1" style="width: 15%;">ตำแหน่ง</th>



            <th tabindex="0" rowspan="1" colspan="1" style="width: 10%;">-</th>

          </tr>
        </thead>
        <tbody>

          <?php $i = 1;
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




              <td align="center">

                <a class="btn btn-info btn-xs" data-toggle="modal" data-target="#add_user">
                  <i class="fa fa-user-plus"></i>
                </a>


                <button class="btn btn-warning btn-xs edit_user" data-id='<?php echo $row['m_id']; ?>'>
                  <i class="fas fa-pencil-alt">
                  </i>
                </button>

                <button class="btn btn-danger btn-xs del_user" data-id='<?php echo $row['m_id']; ?>'>
                  <i class="fas fa-trash-alt">
                  </i>
                </button>
              </td>


            </tr>
          <?php $i++;
          } ?>


        </tbody>
      </table>
    </div>

  </div>




</section>


<div class="modal fade" id="add_user">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <form method="post" enctype="multipart/form-data" id="fadd_user" name="fadd_user" action="<?= site_url('submit_adduser') ?>">
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
                <div class="mb-3">
                  <label for="exampleFormControlInput1" class="form-label">ชื่อ - สกุล</label>
                  <input type="text" class="form-control" id="myname" name="myname" placeholder="ชื่อ-สกุล" required>
                  <div class="form-text text-danger">กรุณาใส่คำนำหน้าชื่อ เช่น นาย/นางสาว/นาง</div>
                </div>
              </div>
              <div class="col-4">
                <div class="mb-3">
                  <label for="exampleFormControlInput1" class="form-label">เลขประจำตัวประชาชน</label>
                  <input type="number" class="form-control" id="cid" name="cid" placeholder="เลขประจำตัวประชาชน" required>
                  <div class="form-text text-danger">เลขประจำตัวประชาชน ไม่ต้องไม่ต้องใส่ขีด - </div>
                </div>
              </div>

              <div class="col-4">
                <div class="mb-3">
                  <label for="exampleFormControlInput1" class="form-label">เลือกตำแหน่ง</label>
                  <select name="t_name" id="t_name" class="form-control ">
                    <option value="" selected>-- เลือก --</option>
                    <?php
                    foreach ($option as $row) {
                      echo "<option value=" . $row['t_id'] . ">" . $row['t_name'] . "</option>";
                    }
                    ?>
                  </select>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-6">
                <label>รหัสผ่าน</label>
                <div class=" input-group mb-3">

                  <input type="password" id="password" name="password" class="form-control" data-toggle="password" required>
                  <div class="input-group-append">
                    <span class="input-group-text">
                      <i class="fa fa-eye"></i>
                    </span>
                  </div>
                </div>
              </div>
              <div class="col-6">
                <label>ยืนยันรหัสผ่าน </label> <span id='message'></span>
                <div class=" input-group mb-3">
                  <input type="password" name="confirm_password" id="confirm_password" class="form-control" data-toggle="password" required>
                  <div class="input-group-append">
                    <span class="input-group-text">
                      <i class="fa fa-eye"></i>
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
          <input type="submit" class="btn btn-primary" id="btnadduser" value="บันทึก" />
        </div>
    </div>
    </form>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>


<div class="modal fade" id="edit_user">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <form method="post" id="fedit_user" name="fedit_user" action="">
        <div class="modal-header">
          <h4 class="modal-title">แก้ไขข้อมูล</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container mt-3">
            <div class="row">
              <div class="col-4">
                <div class="mb-3">
                  <label for="exampleFormControlInput1" class="form-label">ชื่อ - สกุล</label>
                  <input type="text" class="form-control" id="editname" name="editname" placeholder="ชื่อ-สกุล">
                  <div class="form-text text-danger">กรุณาใส่คำนำหน้าชื่อ เช่น นาย/นางสาว/นาง</div>
                </div>
              </div>
              <div class="col-4">
                <div class="mb-3">
                  <label for="exampleFormControlInput1" class="form-label">เลขประจำตัวประชาชน</label>
                  <input type="number" class="form-control" id="editcid" name="editcid" placeholder="เลขประจำตัวประชาชน">
                  <div class="form-text text-danger">เลขประจำตัวประชาชน ไม่ต้องไม่ต้องใส่ขีด - </div>
                </div>
              </div>

              <div class="col-4">
                <div class="mb-3">
                  <label for="exampleFormControlInput1" class="form-label">เลือกตำแหน่ง</label>
                  <select name="editt_name" id="editt_name" class="form-control ">
                    <option value="" selected>-- เลือก --</option> 
                    <?php
                    foreach ($option as $row) {
                      echo "<option value=" . $row['t_id'] . ">" . $row['t_name'] . "</option>";
                    }
                    ?>
                  </select>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-6">
                <label>รหัสผ่าน</label>
                <div class=" input-group mb-3">

                  <input type="password" id="edit_password" name="edit_password" class="form-control" data-toggle="password">
                  <div class="input-group-append">
                    <span class="input-group-text">
                      <i class="fa fa-eye"></i>
                    </span>
                  </div>
                </div>
              </div>
              <div class="col-6">
                <label>ยืนยันรหัสผ่าน </label> <span id='message1'></span>
                <div class=" input-group mb-3">
                  <input type="password" name="edit_confirm_password" id="edit_confirm_password" class="form-control" data-toggle="password">
                  <input type="hidden" name="m_id" id="m_id" class="form-control" >
                  <input type="hidden" name="editt_name_id" id="editt_name_id" class="form-control" >
                  <div class="input-group-append">
                    <span class="input-group-text">
                      <i class="fa fa-eye"></i>
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
          <input type="button" class="btn btn-primary" id="btnedituser" value="บันทึก" />
        </div>
    </div>
    </form>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>

<script src="<?php echo base_url() ?>assets/plugins/jquery/jquery.min.js"></script>

<?php if ($this->session->flashdata('msg')) { ?>
  <script type="application/javascript">
    $(document).ready(function() {
      toastr["success"]("<?php echo $this->session->flashdata('msg') ?>");
    });
  </script>
<?php } ?>
<script type="application/javascript">
  $(document).ready(function() {

    $('#btnadduser').attr("disabled", true);
    $('#password, #confirm_password').on('keyup', function() {
      if ($('#password').val() == $('#confirm_password').val()) {
        $('#message').html('รหัสผ่านตรงกัน').css('color', 'green');
        $('#btnadduser').attr("disabled", false);
      } else {
        $('#message').html('รหัสผ่านไม่ตรงกัน').css('color', 'red');

      }
    });


    $('#edit_password, #edit_confirm_password').on('keyup', function() {
      if ($('#edit_password').val() == $('#edit_confirm_password').val()) {
        $('#message1').html('รหัสผ่านตรงกัน').css('color', 'green');
        
      } else {
        $('#message1').html('รหัสผ่านไม่ตรงกัน').css('color', 'red');

      }
    });

    $('.edit_user').click(function() {
      var userid = $(this).data('id');
      console.log(userid);

      $.ajax({
        url: 'Admin/Setting/edit_user',
        type: 'post',
        data: {
          userid: userid
        },
        success: function(response) {

          const obj = JSON.parse(response);
      
          for (x in obj) {
            console.log(obj[x].t_id);
            $('#m_id').val(obj[x].m_id);
            $('#editname').val(obj[x].m_name);
            $('#editcid').val(obj[x].m_cid);
            $('#editt_name_id').val( obj[x].t_id );
          }
          $('#edit_user').modal('show');

        }
      });
    });

    $('#btnedituser').click(function(){
       var m_id = $("#m_id").val();
       var editname = $("#editname").val();
       var editcid = $("#editcid").val();
       var editt_name = $("#editt_name").val();
       var editt_name_id = $("#editt_name_id").val();
       var type_id;
       var edit_confirm_password = $('#edit_confirm_password').val();
       var edit_password = $('#edit_password').val();
        if(editt_name != ""){      
          type_id = editt_name;
          
        }else{
          type_id = editt_name_id;
        }

        Swal.fire({
    title: 'แก้ไขข้อมูล?',
    text: "คุณแน่ใจ ที่จะแก้ไขข้อมูลนี้",
    type: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'แก้ไขข้อมูล'
  }).then((result) => {
   if(result.value == true){
       $.ajax({
         url: 'Admin/Setting/update_user',
        type: 'post',
         data: {
           id : m_id,
           name : editname,
           cid : editcid,
           type : type_id,
           pass : edit_password,
           pass_con : edit_confirm_password
         },
         success: function(response) {
          console.log(response);
          if (response) {
            console.log(response);
            $('#edit_user').modal('hide');

            toastr["success"]("แก้ไขข้อมูลสำเร็จ")
            

          }

        }
       });

      }
  })
     });
     $('.del_user').click(function(){
  var userid = $(this).data('id');

  Swal.fire({
    title: 'ลบรายการนี้?',
    text: "คุณแน่ใจ ที่จะลบรายการนี้",
    type: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ลบรายการ'
  }).then((result) => {
   if(result.value == true){
   $.ajax({
    url: 'Admin/Setting/del',
    type: 'post',
    data: {userid: userid},
    success: function(response){ 
     if(result){
      toastr["success"]("ลบข้อมูลสำเร็จ");
      
     }
    }
  });
   }
  })
});
  });
</script>