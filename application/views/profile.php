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
    <div class="col-md">
      <div class="card">
        <div class="card-header card-navy card-outline">
          <H4>:: เปลี่ยนรหัสผ่าน :: </H4>
        </div>
        <br>
        <div class="card-body p-3">

          <div class="container mt-3">
          <form method="post" enctype="multipart/form-data" id="change" name="change" action="<?= site_url('change_pass') ?>">
            <div class="row">
              <div class="col-md-6">
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
              <div class="col-md-6">
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
            <button type="submit" class="btn btn-primary" id="sevepass">บันทึก</button>
          </form>
          </div>
 
        </div>
      </div>
    </div>
    <div class="col-md">
      <div class="card">
        <div class="card-header card-navy card-outline">
          <H4>:: เปลี่ยนภาพโปรไฟล์ ::</H4>
        </div>
        <br>
        <div class="card-body p-3">
          <form method="post" enctype="multipart/form-data" id="upload" name="upload" action="<?= site_url('upload_img') ?>">
            <div class="mb-3">
              <label for="formFile" class="form-label">รูปภาพโปรไฟล์</label>
			   <p class="text-left text-success">อัปโหลดไฟล์ภาพ jpg|png|jpeg|gif|svg|raw ขนาดไม่เกิน 8 MB</p>
              <input class="form-control" type="file"  name="p_img1" class="form-control"  accept="image/*">
            </div>
            <div class="mb-3">
              <label for="formFile" class="form-label">รูปภาพหน้าปก</label>
			   <p class="text-left text-success">อัปโหลดไฟล์ภาพ jpg|png|jpeg|gif|svg|raw ขนาดไม่เกิน 8 MB</p>
              <input class="form-control" type="file"  name="p_img2" class="form-control"  accept="image/*">
            </div>
            <input type="submit" name="submit"  class="btn btn-primary" value="บันทึก" />
           
          </form>
        </div>
      </div>
    </div>
    <!-- /.col -->

  </div>

</section>

<script src="<?php echo base_url() ?>assets/plugins/jquery/jquery.min.js"></script>
<?php if ($this->session->flashdata('msg') != '') { ?>
  <script type="application/javascript">
    $(document).ready(function() {
  
        toastr["success"]("<?php  echo $this->session->flashdata('msg') ?>");
      
     
    
    });
  </script>
<?php } ?>
<script type="application/javascript">
  $(document).ready(function() {

    $('#sevepass').attr("disabled", true);
    $('#password, #confirm_password').on('keyup', function() {
      if ($('#password').val() || $('#confirm_password').val() != "") {
        if ($('#password').val() == $('#confirm_password').val()) {

          $('#message').html('รหัสผ่านตรงกัน').css('color', 'green');
          $('#sevepass').attr("disabled", false);


        } else {
          $('#message').html('รหัสผ่านไม่ตรงกัน').css('color', 'red');
          $('#sevepass').attr("disabled", true);
        }
      } else {
        $('#message').html('ไม่ได้กรอกรหัสผ่าน').css('color', 'red');
        $('#sevepass').attr("disabled", true);
      }


    });

  })
</script>