<?php 
class Temporary_model extends CI_Model{
    function show($id){
		$this->db->select('*');
		$this->db->from('tb_temporary a'); 
         $this->db->join('tb_member b', 'b.m_id = a.e_m_id', 'left');
		 $this->db->join('tb_member_type c', 'c.t_id = b.type_id', 'left');
		$this->db->order_by('a.e_date','DESC');  
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
		$this->db->from('tb_temporary a');  
		$this->db->where('a.e_m_id',$id);      
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

    public function get_datas($id){
        $this->db->select('*');
        $this->db->from('tb_temporary a');  
        $this->db->where('a.e_m_id',$id); 
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

     public function add($data){
        $this->db->insert_batch('tb_temporary', $data);
     }

     function userinfo($id){
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
    public function update($id,$data){
        $this->db->where("e_id", $id);
        $this->db->update("tb_temporary", $data);
     }
     public function delete($id){
        $this->db->where("e_id", $id);
        $this->db->delete("tb_temporary");
     }
}
?>