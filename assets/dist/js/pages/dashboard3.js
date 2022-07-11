$(function () {
  
 
  $('.userinfo').click(function(){
   
    var userid = $(this).data('id');
    console.log(userid);
    
    // AJAX request
    $.ajax({
     url: '../Admin/Officlal/userinfo',
     type: 'post',
     data: {userid: userid},
     success: function(response){ 
  
      $('.body-data').html(response);
 
       // Display Modal
       $('#modal-xl').modal('show'); 
      

     }
   });
  });
  $('.e_info').click(function(){
   
    var userid = $(this).data('id');
    console.log(userid);
    
    // AJAX request
     $.ajax({
     url: '../home/e_info',
     type: 'post',
     data: {userid: userid},
     success: function(response){ 
  
      $('.body-data').html(response);
 
       // Display Modal
       $('#e_info').modal('show'); 
      

     }
   });
  });

 
  $('.edit_offic').click(function(){
    var userid = $(this).data('id');
    console.log(userid);
    //$('#edit_offic_id').modal('show');
    // AJAX request
    $.ajax({
     url: '../Admin/Officlal/edit',
     type: 'post',
     data: {userid: userid},
     success: function(response){ 
      $('.edit').html(response);
       // Display Modal
       $('#edit_offic_id').modal('show'); 
     }
   });
  });
$('#form_offic').on('submit',function(event){
   event.preventDefault();
   var data = new FormData(this);
   $.ajax({
    url: '../Admin/Officlal/update',
    type: 'post',
    data: new FormData(this),
    contentType: false,
    processData: false,
    success: function(response){ 
      console.log(response);
      if(response){ 
        console.log(response);
        $('#edit_offic_id').modal('hide'); 
        
          toastr["success"]("แก้ไขข้อมูลสำเร็จ")
       
      }
    
    }
  });
   
})
 
$('.del_offic').click(function(){
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
    url: '../Admin/Officlal/del_office',
    type: 'post',
    data: {userid: userid},
    success: function(response){ 
     if(result){
      toastr["success"]("ลบข้อมูลสำเร็จ");
      location.reload();
     }
    }
  });
   }
  })
  
});


})
