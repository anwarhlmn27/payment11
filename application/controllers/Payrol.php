<?php

class Payrol extends CI_Controller {

	public function __construct()

	{
		parent ::__construct();
		$this->load->library('pdf_report');
		$this->load->model('Payrol_model');
		$this->load->model('Karyawan_model');
		$this->load->model('Periode_model');
		$this->load->model('Salary_model');
	}



	public function index()
	{
		$data['tbl_payrol'] = $this->Payrol_model->show_data()->result();
		$data['content']='user/data_payrol';
		$this->load->view('template',$data);
	}


	public function form_payrol(){
		$data['tbl_periode'] = $this->Periode_model->show_data()->result();
		$data['content']='user/form_payrol';
		$this->load->view('template',$data);
	}


	public function add_data()

	{
		$id = $this->input->post('periode');
		// $id_per = $this->input->post('periode');
		// $query = $this->db->select('(SELECT SUM(amount_gajikaryawan) FROM tbl_salary_k WHERE id_periode = '.$id_per.')', FALSE);
			
		//$query = $this->db->get('tbl_salary_k');
		// $jumlah_gaji = $this->db->select('(SELECT SUM(amount_gajikaryawan) FROM tbl_salary_k WHERE id_periode=$id_per)', FALSE);
		//$this->db->select('(SELECT SUM(jumlah_gaji) FROM tbl_salary_k WHERE id_periode=".'$id_per'."") AS jumlah_payrol');
		// $query = $this->db->get('tbl_payrol');
		// $where = array('id_periode' => $id_per);
		// $jumlah  = $this->db->select('SELECT SUM(jumlah_gaji) from tbl_salary_k where id_periode= ".$id_per."');
		// $data ['jumlah_payrol'] = $jumlah_gaji;
		$data ['ref_no'] = $this->input->post('ref');
		$data ['nama_payrol'] = $this->input->post('nama');
		$data ['id_periode'] = $this->input->post('periode');
		$data ['tgl_payrol'] = $this->input->post('tgl');
		$data ['keterangan'] = $this->input->post('ket');
		$data ['signed'] = $this->input->post('signed');
		$data ['jumlah_payrol'] = $this->Payrol_model->get_sum_salary($id);
		
	
		$this->Payrol_model->add_data('tbl_payrol',$data);
		redirect('Payrol','refresh');
		
	}

	public function edit_data($id_payrol){
		$where = array('id_payrol' => $id_payrol);
		$data['tbl_payrol'] = $this->Payrol_model->edit_data('tbl_payrol', $where)->result();
		$data['tbl_periode'] = $this->Periode_model->show_data()->result();
		$data['content']='user/edit_payrol';
		$this->load->view('template',$data);
	}


	public function update_data($id_payrol)
	{
		$id = $this->input->post('periode');
		$data ['ref_no'] = $this->input->post('ref');
		$data ['nama_payrol'] = $this->input->post('nama');
		$data ['id_periode'] = $this->input->post('periode');
		$data ['tgl_payrol'] = $this->input->post('tgl');
		$data ['keterangan'] = $this->input->post('ket');
		$data ['signed'] = $this->input->post('signed');
		$data ['jumlah_payrol'] = $this->Payrol_model->get_sum_salary($id);

		$where = array('id_payrol' => $id_payrol);
		$this->Payrol_model->update($where, $data, 'tbl_payrol');
		redirect('Payrol','refresh');

	}

	public function print_data($id_periode)
	{
		$where = array('id_periode' => $id_periode);
		$data['tbl_salary_k'] = $this->Salary_model->edit_data('tbl_salary_k', $where)->result();
		$data['tbl_karyawan'] = $this->Salary_model->show_karyawan()->result();
		$data['tbl_periode'] = $this->Salary_model->show_periode('tbl_periode', $where)->result();
		$data['tbl_payrol'] = $this->Payrol_model->show_data()->result();
		$data['sum'] = $this->Payrol_model->get_sum_salary($id_periode);
		$data['nama'] = $this->Payrol_model->get_nama_payrol($id_periode);
		$data['tanggal'] = $this->Payrol_model->tanggal($id_periode);
		$data['signed'] = $this->Payrol_model->signed($id_periode);
		$data['gp'] = $this->Payrol_model->get_sum_gp();
		$data['transport'] = $this->Payrol_model->get_sum_transport();
		$data['komunikasi'] = $this->Payrol_model->get_sum_komunikasi();
		$data['shift'] = $this->Payrol_model->get_sum_shift();
		$data['Tt'] = $this->Payrol_model->get_sum_Tt();
		$data['makan'] = $this->Payrol_model->get_sum_makan();
		$data['ppph'] = $this->Payrol_model->get_sum_ppph();
		$data['makan'] = $this->Payrol_model->get_sum_makan();
		$data['rapel_ot'] = $this->Payrol_model->get_sum_rapel_ot();
		$data['jumlah_ot'] = $this->Payrol_model->get_sum_jumlah_ot();
		$data['apresiasi'] = $this->Payrol_model->get_sum_apresiasi();
		$data['jumlah_gaji'] = $this->Payrol_model->get_sum_jumlah_gaji();
		$data['pph'] = $this->Payrol_model->get_sum_pph();
		$data['bpjskes'] = $this->Payrol_model->get_sum_bpjskes();
		$data['bpjstk'] = $this->Payrol_model->get_sum_bpjstk();
		$data['tpu'] = $this->Payrol_model->get_sum_tpu();

		$data['content']='user/print_rekap_payrol';
		$this->load->view('template',$data);
	}

	public function salary_report($id_periode)
	{
		$where = array('id_periode' => $id_periode);
		$data = $this->Salary_model->edit_data('tbl_salary_k', $where)->result();
		//$data = $this->Salary_model->show_karyawan()->result();
		// $data['tbl_periode'] = $this->Salary_model->show_periode('tbl_periode', $where)->result();
		$payrol['tbl_payrol'] = $this->Payrol_model->show_data()->result();
		$data['signed'] = $this->Payrol_model->signed($id_periode);
		$data['gp'] = $this->Payrol_model->get_sum_gp();
		
		$this->load->view('user/salary_statement', ['data' => $data]);
	}

	public function delete($id_payrol)
	{
		$where = array('id_payrol' => $id_payrol );
		$this->Payrol_model->delete($where);
		redirect('Payrol','refresh');

	}

}

