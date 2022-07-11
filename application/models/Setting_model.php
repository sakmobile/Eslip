<?php 

class Setting_model extends CI_Model{

    public function showall(){
        $this->db->select('*');
		$this->db->from('tb_member a'); 
         $this->db->join('tb_member_type b', 'b.t_id=a.type_id', 'left');
		//$this->db->order_by('a.o_date','asc');         
		$query = $this->db->get(); 
		if($query->num_rows() != 0)
		{
			return $query->result_array();
		}
		else
		{
			return false;
		}
    }
    public function option(){
        $this->db->select('*');
		$this->db->from('tb_member_type');         
		$query = $this->db->get(); 
		if($query->num_rows() != 0)
		{
			return $query->result_array();
		}
		else
		{
			return false;
		}
    }
	public function add($data){
       // $this->db->insert_batch('tb_member', $data);
		$this->db->insert('tb_member', $data);
     }

	 public function edit($id){
		$this->db->select('*');
		$this->db->from('tb_member a'); 
		$this->db->join('tb_member_type b', 'b.t_id=a.type_id', 'left'); 
		$this->db->where('a.m_id',$id);       
		$query = $this->db->get(); 
		if($query->num_rows() != 0)
		{
			return $query->result_array();
		}
		else
		{
			return false;
		}
	 }

	 public function update($data,$id){
		$this->db->where("m_id", $id);
		$this->db->update("tb_member", $data);
	 }
	 public function delete($id){
		$this->db->where("m_id", $id);
		$this->db->delete("tb_member");
	 }

	 public function update_img($data,$id){
		$this->db->where("m_id", $id);
		$this->db->update("tb_member", $data);
	 }
	 public function showimg($id){
		$this->db->select('*');
		$this->db->from('tb_member '); 
		$this->db->where('m_id',$id);       
		$query = $this->db->get(); 
		if($query->num_rows() != 0)
		{
			return $query->result_array();
		}
		else
		{
			return false;
		}
	 }
	 public function update_pass($data,$id){
		$this->db->where("m_id", $id);
		$this->db->update("tb_member", $data);
	 }

	 public function count_1(){
        $this->db->select('*');
		$this->db->from('tb_member a'); 
         $this->db->join('tb_member_type b', 'b.t_id=a.type_id', 'left');
		 $this->db->where('b.t_id','1');         
		$query = $this->db->get(); 
		if($query->num_rows() != 0)
		{
			return $query->result_array();
		}
		else
		{
			return false;
		}
    }
	public function count_2(){
        $this->db->select('*');
		$this->db->from('tb_member a'); 
         $this->db->join('tb_member_type b', 'b.t_id=a.type_id', 'left');
		 $this->db->where('b.t_id','2');         
		$query = $this->db->get(); 
		if($query->num_rows() != 0)
		{
			return $query->result_array();
		}
		else
		{
			return false;
		}
    }
	public function count_3(){
        $this->db->select('*');
		$this->db->from('tb_member a'); 
         $this->db->join('tb_member_type b', 'b.t_id=a.type_id', 'left');
		 $this->db->where('b.t_id','3');         
		$query = $this->db->get(); 
		if($query->num_rows() != 0)
		{
			return $query->result_array();
		}
		else
		{
			return false;
		}
    }
	public function count_4(){
        $this->db->select('*');
		$this->db->from('tb_member a'); 
         $this->db->join('tb_member_type b', 'b.t_id=a.type_id', 'left');
		 $this->db->where('b.t_id','4');         
		$query = $this->db->get(); 
		if($query->num_rows() != 0)
		{
			return $query->result_array();
		}
		else
		{
			return false;
		}
    }
	
    

}


?>