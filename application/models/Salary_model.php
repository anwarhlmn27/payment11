<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Salary_model extends CI_Model {

	public function show_data_k()
	{
		// $this->db->select('*');
		// $this->db->from('tbl_salary_k');
		// $this->db->order_by('nik_k', 'asc');
		// $query = $this->db->get();
		// return $query;	
		$show_data = $this->db->get('tbl_salary_k');
		return $show_data;
	}

	public function view_data_perkaryawan($where,$data)
	{
		$view = $this->db->get_where($table,$where);
		return $view;
	}

	public function show_data_d()
	{
		$show_data = $this->db->get('tbl_salary_d');
		return $show_data;
	}

	public function show_karyawan(){
		$show_karyawan = $this->db->get('tbl_karyawan');
		return $show_karyawan;
	}

	public function show_dosen(){
		$show_dosen = $this->db->get('tbl_dosen');
		return $show_dosen;
	}

	public function show_periode(){
		$show_periode = $this->db->get('tbl_periode');
		return $show_periode;
	}

	public function add_data($table,$data)
	{
		$this->db->insert($table,$data);
	}

	public function add_data_salary_d($table,$data)
	{
		$this->db->insert($table,$data);
	}

	public function edit_data($table,$id_salary_k)
	{
		$edit = $this->db->get_where($table,$id_salary_k);
		return $edit;
	}

	public function get_data()
	{
		$tampil['tbl_salary_k'] = $this->db->get_where('tbl_salary_k', ['nik_k' => $this->session->userdata('nik')]);
		return $tampil;
	}

	public function edit_data_d($table,$id_salary_d)
	{
		$edit = $this->db->get_where($table,$id_salary_d);
		return $edit;
	}

	public function update($where,$data,$table)
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	} 

	public function publish($where,$data,$table)
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	} 

	public function delete($table,$where)
	{
		$this->db->delete($table,$where);
	}


	function sum()
	{
		$this->db->query('SELECT sum(jumlah_gaji) from tbl_salary_k');
	}

}

/* End of file Karyawan_model.php */
/* Location: ./application/models/Karyawan_model.php */