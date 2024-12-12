<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Periode extends CI_Controller {

	function __construct()
	{
		parent:: __construct();
		$this->load->model('Periode_model');

	}


	public function index()
	{
		$data ['tbl_periode'] = $this->Periode_model->show_data()->result();
		$data ['content'] = 'admin/data_periode';
		$this->load->view('template', $data); 
	}

	public function form_periode()
	{
		$data['content'] = 'admin/form_periode';
		$this->load->view('template',$data);
	}

	public function add_data()
	{
		$data['bulan'] = $this->input->post('bulan');
		$data['tahun'] = $this->input->post('tahun');

		$this->Periode_model->add_data($data);
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Tambah data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('periode', 'Refresh');

	}

	public function edit_data($id_periode)
	{
		$where = array('id_periode' => $id_periode);
		$data ['tbl_periode'] = $this->Periode_model->edit_data('tbl_periode', $where)->result();
		$data['content'] =  'admin/edit_periode';
		$this->load->view('template', $data);
	}

	public function update($id_periode)
	{
		$data['bulan'] = $this->input->post('bulan');
		$data['tahun'] = $this->input->post('tahun');

		$where = array('id_periode' => $id_periode);
		$this->Periode_model->update($where, $data);
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Edit data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('periode','refresh');
	}

	public function delete($id_periode)
	{
		$where = array('id_periode' => $id_periode);
		$this->Periode_model->delete($where);
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Hapus data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('periode', 'refresh');
	}
}

/* End of file Periode.php */
/* Location: ./application/controllers/Periode.php */