<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vendor_model extends CI_Model {

	public function show_data()
	{
		$show_data = $this->db->get('tbl_vendor');
		return $show_data;
	}

	public function add_data($data,$table)
	{
		$this->db->insert($table,$data);
	}

	public function edit_data($table,$id)
	{
		$edit = $this->db->get_where($table,$id);
		return $edit;
	}

	public function update($where,$data,$table)
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	} 

	public function delete($where,$table)
	{
		$this->db->delete($table,$where);
	}

	public function show_data_payment()
	{
		$show_data = $this->db->get('tbl_payment_v');
		return $show_data;
	}

	public function add_payment_v($data,$table)
	{
		$this->db->insert($table,$data);
	}

	public function update_payment_v($where,$data,$table)
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	} 

	public function delete_payment_v($where,$table)
	{
		$this->db->delete($table,$where);
	}

	
	public function show_periode(){
		$show_periode = $this->db->get('tbl_periode');
		return $show_periode;
	}


	public function show_bank()
	{
		$show_data = $this->db->get('tbl_bank');
		return $show_data;
	}

	public function add_bank($data,$table)
	{
		$this->db->insert($table,$data);
	}

	public function edit_bank($table,$id)
	{
		$edit = $this->db->get_where($table,$id);
		return $edit;
	}

	public function bank_update($where,$data,$table)
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	} 

	public function delete_bank($where,$table)
	{
		$this->db->delete($table,$where);
	}

	public function show_payment_date()
	{
		$show_data = $this->db->get('tbl_payment_date');
		return $show_data;
	}

	public function add_payment_date($data,$table)
	{
		$this->db->insert($table,$data);
	}

	public function edit_payment_date($table,$id)
	{
		$edit = $this->db->get_where($table,$id);
		return $edit;
	}

	public function update_payment_date($where,$data,$table)
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	} 

	public function delete_payment_date($where,$table)
	{
		$this->db->delete($table,$where);
	}

	public function show_laporan_excel($table,$where)
	{
		$edit = $this->db->get_where($table,$where);
		return $edit;
	}

}

/* End of file Karyawan_model.php */
/* Location: ./application/models/Karyawan_model.php */