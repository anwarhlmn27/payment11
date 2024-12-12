<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Payrol_model extends CI_Model {

	public function show_data()
	{
		$show_data = $this->db->get('tbl_payrol');
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

	public function get_nama_payrol($id_periode)
	{
		$sql = "SELECT nama_payrol FROM tbl_payrol where id_periode = $id_periode";
		$result = $this->db->query($sql);
		return $result->row()->nama_payrol;
	}

	public function signed($id_periode)
	{
		$sql = "SELECT signed FROM tbl_payrol where id_periode = $id_periode";
		$result = $this->db->query($sql);
		return $result->row()->signed;
	}

	public function tanggal($id_periode)
	{
		$sql = "SELECT tgl_payrol FROM tbl_payrol where id_periode = $id_periode";
		$result = $this->db->query($sql);
		return $result->row()->tgl_payrol;
	}

	public function get_sum_salary($id_periode)
	{
		$sql = "SELECT sum(amount_gajikaryawan) as amount_gajikaryawan FROM tbl_salary_k where id_periode = $id_periode";
		$result = $this->db->query($sql);
		return $result->row()->amount_gajikaryawan;
	}

	public function get_sum_gp()
	{
		$sql = "SELECT sum(basic_salary) as basic_salary FROM tbl_karyawan";
		$result = $this->db->query($sql);
		return $result->row()->basic_salary;
	}

	public function get_sum_transport()
	{
		$sql = "SELECT sum(transport) as transport FROM tbl_karyawan";
		$result = $this->db->query($sql);
		return $result->row()->transport;
	}

	public function get_sum_komunikasi()
	{
		$sql = "SELECT sum(komunikasi) as komunikasi FROM tbl_karyawan";
		$result = $this->db->query($sql);
		return $result->row()->komunikasi;
	}

	public function get_sum_shift()
	{
		$sql = "SELECT sum(tunjangan_shift) as tunjangan_shift FROM tbl_karyawan";
		$result = $this->db->query($sql);
		return $result->row()->tunjangan_shift;
	}

	public function get_sum_Tt()
	{
		$sql = "SELECT sum(tunjangan_3t) as tunjangan_3t FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->tunjangan_3t;
	}

	public function get_sum_makan()
	{
		$sql = "SELECT sum(total_makan) as total_makan FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->total_makan;
	}

	public function get_sum_ppph()
	{
		$sql = "SELECT sum(ppph) as ppph FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->ppph;
	}

	public function get_sum_rapel_ot()
	{
		$sql = "SELECT sum(rapel_ot) as rapel_ot FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->rapel_ot;
	}

	public function get_sum_jumlah_ot()
	{
		$sql = "SELECT sum(jumlah_ot) as jumlah_ot FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->jumlah_ot;
	}

	public function get_sum_apresiasi()
	{
		$sql = "SELECT sum(jumlah_apresiasi) as jumlah_apresiasi FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->jumlah_apresiasi;
	}

	public function get_sum_jumlah_gaji()
	{
		$sql = "SELECT sum(jumlah_gaji_bruto) as jumlah_gaji_bruto FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->jumlah_gaji_bruto;
	}

	public function get_sum_pph()
	{
		$sql = "SELECT sum(pph_masa) as pph_masa FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->pph_masa;
	}

	public function get_sum_bpjskes()
	{
		$sql = "SELECT sum(bpjs) as bpjs FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->bpjs;
	}

	public function get_sum_bpjstk()
	{
		$sql = "SELECT sum(jht) as jht FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->jht;
	}

	public function get_sum_tpu()
	{
		$sql = "SELECT sum(tpu) as tpu FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->tpu;
	}


	public function delete($where)
	{
		$this->db->delete('tbl_payrol',$where);
	}



}



/* End of file Karyawan_model.php */

/* Location: ./application/models/Karyawan_model.php */