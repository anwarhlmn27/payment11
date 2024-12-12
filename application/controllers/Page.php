<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends CI_Controller {

      public function __construct()
	{
		parent ::__construct();
		$this->load->model('Karyawan_model');
		$this->load->model('M_auth');
	}

	function index(){
    //Allowing akses to admin only  
        $data['content'] = 'content';
		$data['count'] = $this->M_auth->count_data();
		$data['count2'] = $this->M_auth->count_vendor();
		$data['count3'] = $this->M_auth->count_transaksi();
		$data['count4'] = $this->M_auth->count_bulan();
        $this->load->view('template', $data);
    }

	function user(){
    //Allowing akses to User only
	$data['content'] = 'user/content';
	$data['count5'] = $this->M_auth->count_data_salary();
	$data['count4'] = $this->M_auth->count_bulan();
	$data['count'] = $this->M_auth->count_data();
	$this->load->view('user/template', $data);
    }

    public function role(){
		$data['tbl_account'] = $this->Karyawan_model->show_data_role()->result();
		$data['content']='admin/data_role';
		$this->load->view('template',$data);
	}

	public function form_role(){
		$data['tbl_karyawan'] = $this->Karyawan_model->show_data()->result(); 
		$data['content']='admin/form_role';
		$this->load->view('template',$data);
	}
	
	public function add_data_role()
	{
		//ambil data dari tabel karyawan
		$kode = $this->input->post('nik');
		$k  = $this->db->get_where('tbl_karyawan',array('nik_k'=> $kode))->result_array();
		
		foreach($k as $row) {  
            $nama = $row['nama_k'];
            $email = $row['email'];
            }
            $data ['nik_k'] = $this->input->post('nik');
            $data ['nama'] = $nama;
            $data ['email'] = $email;
            $data ['password'] = password_hash($this->input->post('password'),PASSWORD_DEFAULT);
            $data ['akses'] = $this->input->post('akses');
			if($data ['akses'] == 'admin'){
				$data ['role_id'] = 1;
			}else{
				$data ['role_id'] = 2;
			}

            $this->Karyawan_model->add_data_role('tbl_account',$data);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Tambah data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
            redirect('Page/role','refresh');

	}

	public function edit_role($id_account){
		$where = array('id_account' => $id_account);
		$data['tbl_account'] = $this->Karyawan_model->edit_data_role('tbl_account', $where)->result();
		$data['content']='admin/edit_data_role';
		$this->load->view('template',$data);
	}

	public function update_role($id_account)
	{
		$data ['nik_k'] = $this->input->post('nik');
		$data ['akses'] = $this->input->post('akses');
		if($data ['akses'] == 'admin'){
			$data ['role_id'] = 1;
		}else{
			$data ['role_id'] = 2;
		}
		
		$where = array('id_account' => $id_account);
		$this->Karyawan_model->update_role($where, $data, 'tbl_account');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Edit data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('Page/role','refresh');
	}

      public function delete_role($id_account)
	{
		$where = array('id_account' => $id_account );
		$this->Karyawan_model->delete_role($where);
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Hapus data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('Page/role','refresh');
	}

	public function change_password($nik_k)
	{
		$where = array('nik_k' => $nik_k);
		$data['tbl_account'] = $this->Karyawan_model->edit_password('tbl_account', $where)->result();
		$data['content']='admin/change_password';
		$this->load->view('template',$data);
	}

	public function update_password($id_account)
	{
		$data ['nik_k'] = $this->input->post('nik');
		$data ['password'] = password_hash($this->input->post('password'), PASSWORD_DEFAULT);

		$where = array('id_account' => $id_account);
		$this->Karyawan_model->update_password($where, $data, 'tbl_account');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Update Password!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('page','refresh');
	}

	public function change_password2($nik_k)
	{
		$where = array('nik_k' => $nik_k);
		$data['tbl_account'] = $this->Karyawan_model->edit_password('tbl_account', $where)->result();
		$data['content']='user/cp_user';
		$this->load->view('user/template',$data);
	}

	public function update_password2($id_account)
	{
		$data ['nik_k'] = $this->input->post('nik');
		$data ['password'] = password_hash($this->input->post('password'), PASSWORD_DEFAULT);

		$where = array('id_account' => $id_account);
		$this->Karyawan_model->update_password($where, $data, 'tbl_account');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Update Password!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('page/user','refresh');
	}
}