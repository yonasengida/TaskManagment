<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class User_model extends CI_Model{
	public function __construct() {
    parent::__construct();

      $this->load->database();

}

	public function get(){
		$this->db->select('*');
		// $this->db->where('b_status','active' );
		$query = $this->db->get('viewemployees');
		if($query->num_rows()>0){
			return $query->result();
		}else{

			return false;
		}
	}


  public function create($data){

		$this->db->insert('tblemployees',$data);
		if($this->db->affected_rows()>0){
		       return true;
		}else{
			return false;
		}
	}
	public function get_single($param1){

		$this->db->select('*');
		$this->db->where('task_id',$param1 );
		$query = $this->db->get('viewemployees');
		if($query->num_rows()>0){
			return $query->result();
		}else{

			return false;
		}
	}
	public function updatePassword($data)
	{

		$this->db->where('email',$this->input->post('username') );
		$this->db->update('tblemployees',$data);
	}


}
?>
