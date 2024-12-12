<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Periode_model extends CI_Model {

	function show_data()
	{
		$show_data = $this->db->get('tbl_periode');
		return $show_data;
	}

	function add_data($data)
	{
		$this->db->insert('tbl_periode',$data);
	}

	function edit_data($table, $id_periode)
	{
		$edit_data = $this->db->get_where($table,$id_periode);
		return $edit_data;
	}

	function update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('tbl_periode', $data);
	}

	public function delete($where)
	{
		$this->db->delete('tbl_periode',$where);
	}
}

/* End of file Periode_model.php */
/* Location: ./application/models/Periode_model.php */