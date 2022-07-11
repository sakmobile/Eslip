<?php 

class Pofficial_model extends CI_Model{
     public function add($data){
        $this->db->insert_batch('tb_pofficial', $data);
     }
     function show($id){
		$this->db->select('*');
		$this->db->from('tb_pofficial a'); 
         $this->db->join('tb_member b', 'b.m_id = a.p_m_id', 'left');
		 $this->db->join('tb_member_type c', 'c.t_id = b.type_id', 'left');
		$this->db->order_by('a.p_date','DESC');  
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
		$this->db->from('tb_pofficial a');  
		$this->db->where('a.p_m_id',$id);      
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
        $this->db->select('p_get_real,p_sum_pay,p_sum_revenue,p_month');
        $this->db->from('tb_pofficial a');  
        $this->db->where('a.p_m_id',$id); 
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
     function userinfo($id){
		$this->db->select('*');
		$this->db->from('tb_pofficial a'); 
		$this->db->join('tb_member b', 'b.m_id = a.p_m_id', 'left'); 
		$this->db->join('tb_member_type c', 'c.t_id = b.type_id', 'left');
		$this->db->where('a.p_id',$id);      
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
    public function update_p($id,$data){
        $this->db->where("p_id", $id);
        $this->db->update("tb_pofficial", $data);
     }
     public function delete($id){
        $this->db->where("p_id", $id);
        $this->db->delete("tb_pofficial");
     }

}
?> 