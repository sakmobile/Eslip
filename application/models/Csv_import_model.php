<?php
class Csv_import_model extends CI_Model
{

	function select_p($id){
		$this->db->select('*');
		$this->db->from('tb_member a'); 
         $this->db->join('tb_member_type b', 'b.t_id=a.type_id', 'left');
		//$this->db->order_by('a.o_date','asc');  
		$this->db->where('a.type_id',$id);       
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
	function select()
	{
		$this->db->select('*');
		$this->db->from('tb_member a'); 
         $this->db->join('tb_member_type b', 'b.t_id=a.type_id', 'left');
		//$this->db->order_by('a.o_date','asc');  
		$this->db->where('a.type_id','1');       
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
	function add($data)
	{
		$this->db->insert_batch('tb_official', $data);
	}
	function show($id){
		$this->db->select('*');
		$this->db->from('tb_official a'); 
         $this->db->join('tb_member b', 'b.m_id = a.o_m_id', 'left');
		 $this->db->join('tb_member_type c', 'c.t_id = b.type_id', 'left');
		$this->db->order_by('a.o_date','DESC');  
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

	function getdetail($id){
		$this->db->select('*');
		$this->db->from('tb_official a');  
		$this->db->where('a.o_m_id',$id);      
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
	function userinfo($id){
		$this->db->select('*');
		$this->db->from('tb_official a'); 
		$this->db->join('tb_member b', 'b.m_id = a.o_m_id', 'left'); 
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

 public function update($id,$data){
	$this->db->where("o_id", $id);
	$this->db->update("tb_official", $data);
 }
 

 public function get_datas($id){
	$this->db->select('o_get_real,o_sum_pay,o_sum_revenue,o_month');
	$this->db->from('tb_official a');  
	$this->db->where('a.o_m_id',$id); 
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

 public function delete($id){
	$this->db->where("o_id", $id);
	$this->db->delete("tb_official");
 }
}
