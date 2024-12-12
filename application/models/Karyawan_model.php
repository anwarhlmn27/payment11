<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Karyawan_model extends CI_Model {

	public function show_data()
	{
		$show_data = $this->db->get('tbl_karyawan');
		return $show_data;
	}

	public function add_data($table,$data)
	{
		$this->db->insert($table,$data);
	}

	public function edit_data($table,$id_karyawan)
	{
		$edit = $this->db->get_where($table,$id_karyawan);
		return $edit;
	}

	public function update($where,$data,$table)
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	} 

	//untuk akses role karyawan
	public function show_data_role()
	{
		$show_data = $this->db->get('tbl_account');
		return $show_data;
	}

	public function add_data_role($table,$data)
	{
		$this->db->insert($table,$data);
	}
	
	public function edit_data_role($table,$id_account)
	{
		$edit = $this->db->get_where($table,$id_account);
		return $edit;
	}

	public function update_role($where,$data,$table)
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	} 

	public function delete_role($where)
	{
		$this->db->delete('tbl_account',$where);
	}

	public function view_profile($table,$nik)
	{
		$view = $this->db->get_where($table,$nik);
		return $view;
	}

	public function edit_password($table,$nik)
	{
		$change = $this->db->get_where($table,$nik);
		return $change;
	}

	public function update_password($where,$data,$table)
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	} 

	public function delete($where)
	{
		$this->db->delete('tbl_karyawan',$where);
		$this->db->delete('tbl_account',$where);
	}

}

/* End of file Karyawan_model.php */
/* Location: ./application/models/Karyawan_model.php */