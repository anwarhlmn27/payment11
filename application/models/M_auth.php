<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_auth extends CI_Model { 

    public function get_user_data($email) { 
        return $this->db->get_where('tbl_account', ['email' => $email])->row_array(); 
    } 
    
    public function insert_user_data($data) {
        $this->db->insert('tbl_account', $data); 
    }
    
    public function count_data()
	{
		$sql = "SELECT count(nik_k) as nik FROM tbl_karyawan";
		$result = $this->db->query($sql);
		return $result->row()->nik;
	}

	public function count_data_salary()
	{
		$sql = "SELECT count(id_salary_k) as id_s FROM tbl_salary_k";
		$result = $this->db->query($sql);
		return $result->row()->id_s;
	}

    public function count_vendor()
	{
		$sql = "SELECT count(id_v) as id_vendor FROM tbl_vendor";
		$result = $this->db->query($sql);
		return $result->row()->id_vendor;
	}

    public function count_transaksi()
	{
		$sql = "SELECT count(payment_date) as tgl FROM tbl_payment_date";
		$result = $this->db->query($sql);
		return $result->row()->tgl;
	}

    public function count_bulan()
	{
		$sql = "SELECT count(bulan) as bulan FROM tbl_periode";
		$result = $this->db->query($sql);
		return $result->row()->bulan;
	}
}