<?php
class User_model extends CI_Model
{
	
	function show($id,$table,$column,$order){
		$this->db->select('*');
		$this->db->from($table.' a'); 
         $this->db->join('tb_member b', 'b.m_id = a.'.$column, 'left');
		 $this->db->join('tb_member_type c', 'c.t_id = b.type_id', 'left');
		$this->db->order_by('a.'.$order,'DESC');  
		$this->db->where('b.m_id',$id);  
		$this->db->limit(1);     
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

	function getdetail($id,$table,$column,$order){
		$this->db->select('*');
		$this->db->from($table);  
		$this->db->where($column,$id);  
		$this->db->order_by($order,'ASC');      
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
	function userinfo($id,$table,$column){
		$this->db->select('*');
		$this->db->from($table.' a'); 
		$this->db->join('tb_member b', 'b.m_id = a.'.$column, 'left'); 
		$this->db->join('tb_member_type c', 'c.t_id = b.type_id', 'left');
		$this->db->where('a.o_id',$id);      
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



 public function get_datas($id,$table,$column){
	$this->db->select('*');
	$this->db->from($table);  
	$this->db->where($column,$id); 
	$this->db->limit(12);      
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
 public function e_info($id){
	
		$this->db->select('*');
		$this->db->from('tb_temporary a'); 
		$this->db->join('tb_member b', 'b.m_id = a.e_m_id', 'left'); 
		$this->db->join('tb_member_type c', 'c.t_id = b.type_id', 'left');
		$this->db->where('a.e_id',$id);      
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
