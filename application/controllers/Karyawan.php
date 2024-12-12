<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Karyawan extends CI_Controller {

	public function __construct()
	{
		parent ::__construct();
		$this->load->model('Karyawan_model');
		$this->load->model('Vendor_model');
	}

	public function index()
	{
		$data['tbl_karyawan'] = $this->Karyawan_model->show_data()->result();
		$data['content']='admin/data_karyawan';
		$this->load->view('template',$data);
	}


	public function form_karyawan(){
		$data['tbl_bank'] = $this->Vendor_model->show_bank()->result();
		$data['content']='admin/form_karyawan';
		$this->load->view('template',$data);
	}

	public function add_data()
	{
		$kode = $this->input->post('kode');
		$k  = $this->db->get_where('tbl_bank',array('code_bank'=> $kode))->result_array();
		
		foreach($k as $row) {  
            $nama_bank = $row['bank_name'];
            }

		$data ['nik_k'] = $this->input->post('nik');
		$data ['nama_k'] = $this->input->post('nama');
		$data ['jabatan'] = $this->input->post('jabatan');
		$data ['unit'] = $this->input->post('unit');
		$data ['status'] = $this->input->post('status');
		$data ['akses'] = "Employee";
		$data ['tgl_masuk'] = $this->input->post('tanggal');
		$data ['email'] = $this->input->post('email');
		$data ['no_ktp'] = $this->input->post('ktp');
		$data ['no_npwp'] = $this->input->post('npwp');
		$data ['no_rek'] = $this->input->post('norek');
		$data ['nama_bank'] = $nama_bank;
		$data ['kode_bank'] = $this->input->post('kode');
		$data ['cabang_bank'] = $this->input->post('cabang');
		$data ['kota_bank'] = $this->input->post('kota');
		$data ['nama_akun_bank'] = $this->input->post('nama_akun');
		$data ['no_bpjs_kes'] = $this->input->post('bpjs_kes');
		$data ['no_bpjs_tk'] = $this->input->post('bpjs_tk');
		$data ['ptkp'] = $this->input->post('ptkp');
		$data ['pbpjskes'] = $this->input->post('pbpjskes');
		$data ['pbpjstk'] = $this->input->post('pbpjstk');
		$data ['basic_salary'] = $this->input->post('gp');
		$data ['transport'] = $this->input->post('transport');
		$data ['komunikasi'] = $this->input->post('comm');
		$data ['makan'] = $this->input->post('makan');
		$data ['bpk'] = $this->input->post('bpk');
		$data ['tunjangan_shift'] = 0;
		$data ['ket'] = $this->input->post('ket');

		$this->Karyawan_model->add_data('tbl_karyawan',$data);
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Tambah data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('karyawan','refresh');

	}
	public function edit_data($id_karyawan){
		$where = array('id_karyawan' => $id_karyawan);
		$data['tbl_bank'] = $this->Vendor_model->show_bank()->result();
		$data['tbl_karyawan'] = $this->Karyawan_model->edit_data('tbl_karyawan', $where)->result();
		$data['content']='admin/edit_data_k';
		$this->load->view('template',$data);
	}

	public function edit_data_d($id_karyawan){
		$where = array('id_karyawan' => $id_karyawan);
		$data['tbl_karyawan'] = $this->Karyawan_model->edit_data('tbl_karyawan', $where)->result();
		$data['content']='admin/edit_data_d';
		$this->load->view('template',$data);
	}

	public function update($id_karyawan)
	{
		$kode = $this->input->post('kode');
		$k  = $this->db->get_where('tbl_bank',array('code_bank'=> $kode))->result_array();
		
		foreach($k as $row) {  
            $nama_bank = $row['bank_name'];
            }

		$data ['nik_k'] = $this->input->post('nik');
		$data ['nama_k'] = $this->input->post('nama');
		$data ['jabatan'] = $this->input->post('jabatan');
		$data ['unit'] = $this->input->post('unit');
		$data ['status'] = $this->input->post('status');
		$data ['akses'] = "Employee";
		$data ['tgl_masuk'] = $this->input->post('tanggal');
		$data ['email'] = $this->input->post('email');
		$data ['no_ktp'] = $this->input->post('ktp');
		$data ['no_npwp'] = $this->input->post('npwp');
		$data ['no_rek'] = $this->input->post('norek');
		$data ['nama_bank'] = $nama_bank;
		$data ['kode_bank'] = $this->input->post('kode');
		$data ['cabang_bank'] = $this->input->post('cabang');
		$data ['kota_bank'] = $this->input->post('kota');
		$data ['nama_akun_bank'] = $this->input->post('nama_akun');
		$data ['no_bpjs_kes'] = $this->input->post('bpjs_kes');
		$data ['no_bpjs_tk'] = $this->input->post('bpjs_tk');
		$data ['ptkp'] = $this->input->post('ptkp');
		$data ['pbpjskes'] = $this->input->post('pbpjskes');
		$data ['pbpjstk'] = $this->input->post('pbpjstk');
		$data ['basic_salary'] = $this->input->post('gp');
		$data ['transport'] = $this->input->post('transport');
		$data ['komunikasi'] = $this->input->post('comm');
		$data ['makan'] = $this->input->post('makan');
		$data ['bpk'] = $this->input->post('bpk');
		$data ['tunjangan_shift'] = 0;
		$data ['ket'] = $this->input->post('ket');

		$where = array('id_karyawan' => $id_karyawan);
		$this->Karyawan_model->update($where, $data, 'tbl_karyawan');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Edit data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('Karyawan','refresh');
	}

	public function delete($nik_k)
	{
		$where = array('nik_k' => $nik_k );
		$this->Karyawan_model->delete($where);
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Hapus data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('Karyawan','refresh');
	}

	public function view_profile($nik_k){
		$where = array('nik_k' => $nik_k);
		$data['tbl_karyawan'] = $this->Karyawan_model->view_profile('tbl_karyawan', $where)->result();
		$data['content']='user/view_profile_admin';
		$this->load->view('template',$data);
	}

	public function change_password($nik_k){
		$where = array('nik_k' => $nik_k);
		$data['tbl_account'] = $this->Karyawan_model->edit_password('tbl_account', $where)->result();
		$data['content']='user/change_password';
		$this->load->view('template',$data);
	}

	public function update_password($id_account)
	{
		$data ['nik_k'] = $this->input->post('nik');
		$data ['password'] = md5($this->input->post('password'));

		$where = array('id_account' => $id_account);
		$this->Karyawan_model->update_password($where, $data, 'tbl_account');
		redirect('page','refresh');
	}

	public function add_umk()
	{
		$data ['tahun_umk'] = $this->input->post('t_umk');
		$data ['umk'] = $this->input->post('umk');

		$this->Karyawan_model->add_data('tbl_karyawan',$data);
		redirect('karyawan','refresh');
	}

	public function edit_umk($id_umk){
		$where = array('id_umk' => $id_umk);
		$data['tbl_umk'] = $this->Karyawan_model->edit_umk('tbl_umk', $where)->result();
		$data['content']='user/edit_data_umk';
		$this->load->view('template',$data);
	}

	public function update_umk($id_umk)
	{
		$data ['tahun_umk'] = $this->input->post('t_umk');
		$data ['umk'] = $this->input->post('umk');
		

		$where = array('id_umk' => $id_umk);
		$this->Karyawan_model->update_umk($where, $data, 'tbl_umk');
		redirect('Karyawan','refresh');
	}

	// public function view_profile($nik_k){
	// 	$where = array('nik_k' => $nik_k);
	// 	$data['tbl_karyawan'] = $this->Karyawan_model->view_profile('tbl_karyawan', $where)->result();
	// 	$data['content']='user/view_profile_admin';
	// 	$this->load->view('template',$data);
	// }
}
