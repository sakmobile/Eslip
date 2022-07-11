 <?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Signin_model extends CI_Model{
   
    public function __construct()
    {
        parent::__construct();
    }
   public function user_login($user,$passhas){
    $this->db->select('*');
    $this->db->from('tb_member a'); 
    $this->db->join('tb_member_type b', 'b.t_id = a.type_id', 'left');
    $this->db->where('m_cid',$user);
    $this->db->where('password',$passhas);
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