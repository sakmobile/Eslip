
<aside class="main-sidebar sidebar-light-navy elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link bg-navy">
      <img src="<?php echo base_url() ?>assets/dist/img/logo.jpg"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">E- payslip</span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?php echo base_url() ?>assets/uploads/<?php echo $img[0]['img_1'];?>" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">

          <a href="<?php echo base_url('shows_user/').$this->session->userdata('id') ?>" target="_bank" class="d-block"><?php echo $this->session->username;?></a>
        </div>
      </div>

       
   

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <!-- nav-compact -->
        <ul class="nav nav-pills nav-sidebar nav-child-indent flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-header">MENU</li>


         <?php if( $types == 'admin' ){ ?>
          <li class="nav-item" >
            <a href="<?php echo base_url() ?>admin" class="nav-link <?php if($menu=="Dashboard"){echo "active";} ?> ">
              <i class="nav-icon fas fa-chart-line"></i>
              <p>Dashboard </p>
            </a>
          </li>

          <li class="nav-item" >
            <a href="<?php echo base_url() ?>officlal" class="nav-link <?php if($menu=="officlal"){echo "active";} ?> ">
            <i class="fas fa-money-check"></i>
              <p>ข้าราชการ </p>
            </a>
          </li>
          <li class="nav-item" >
            <a href="<?php echo base_url() ?>pofficial" class="nav-link <?php if($menu=="pofficial"){echo "active";} ?> ">
            <i class="fas fa-id-card"></i>
              <p>พนักงานราชการ </p>
            </a>
          </li>
          <li class="nav-item" >
            <a href="<?php echo base_url() ?>regular" class="nav-link <?php if($menu=="regular"){echo "active";} ?> ">
            <i class="far fa-id-card"></i>
              <p>ลูกจ้างประจำ </p>
            </a>
          </li>
          <li class="nav-item" >
            <a href="<?php echo base_url() ?>temporary" class="nav-link <?php if($menu=="temporary"){echo "active";} ?> ">
            <i class="fas fa-credit-card"></i>
              <p>ชั่วคราว/ พกส. /รายวัน</p>
            </a>
          </li>
          <li class="nav-item" >
            <a href="<?php echo base_url() ?>setting" class="nav-link <?php if($menu=="setting"){echo "active";} ?> ">
            <i class="fas fa-cogs"></i>
              <p>ตั้งค่า</p>
            </a>
          </li>


         <?php }else{ ?>
      
          <li class="nav-item" >
            <a href="<?php echo base_url('shows_user/').$this->session->userdata('id') ?>" class="nav-link <?php if($menu=="Dashboard"){echo "active";} ?> ">
              <i class="nav-icon fas fa-chart-line"></i>
              <p>Dashboard </p>
            </a>
          </li>
          <li class="nav-item" >
            <a href="<?php echo base_url() ?>profile" class="nav-link <?php if($menu=="profile"){echo "active";} ?> ">
              <i class="nav-icon fas fa-id-card"></i>
              <p>ข้อมูลส่วนตัว </p>
            </a>
          </li>
  <?php } ?>


         

      

         
      <div class="user-panel mt-2 pb-3 mb-2 d-flex">
  
      </div>
          <li class="nav-item">
            <a href=""   data-toggle="modal" data-target=".modal-logout" class="nav-link text-danger">
              <i class="nav-icon fas fa-power-off"></i>
              <p>ออกจากระบบ</p>
            </a>
          </li>
  


          
        </ul>
      </nav>
      
    
    </div>
 
  </aside>

 