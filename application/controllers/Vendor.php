<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vendor extends CI_Controller {
    
    public function __construct()
	{
		parent ::__construct();
		$this->load->model('Vendor_model');
	}
	
	public function index()
	{
        $data['tbl_bank'] = $this->Vendor_model->show_bank()->result();
		$data['tbl_vendor'] = $this->Vendor_model->show_data()->result();
		$data['content']='admin/data_vendor';
		$this->load->view('template',$data);
      
	}

    public function form_vendor()
	{
        $data['tbl_bank'] = $this->Vendor_model->show_bank()->result();
		$data['content']='admin/form_vendor';
		$this->load->view('template',$data);
        //$this->load->view('admin/form_vendor');
	}

    public function add_vendor()
	{
		//Ambil data Bank
		$kode = $this->input->post('bank');
		$k  = $this->db->get_where('tbl_bank',array('id_bank'=> $kode))->result_array();
		
		foreach($k as $row) { 
        $nama_bank = $row['bank_name'];
        $kode_bank = $row['code_bank'];
		}

		$data ['kode_vendor'] = $this->input->post('kode');
		$data ['nama_vendor'] = $this->input->post('nama');
		$data ['telpon'] = $this->input->post('telpon');
		$data ['email'] = $this->input->post('email');
		$data ['npwp'] = $this->input->post('npwp');
		$data ['rek_vendor'] = $this->input->post('norek');
		$data ['id_bank'] = $this->input->post('bank');
		$data ['atas_nama'] = $this->input->post('an');
		$data ['address_bank'] = $this->input->post('branch');
		$data ['bank_city'] = $this->input->post('city');
		$data ['kode_bank'] = $kode_bank;
		$data ['currency'] = 'IDR';
		if($kode_bank == 0)
			{$data ['transaction_type'] = "OVB";}
			else
			{$data ['transaction_type'] = "LLG";}
		 
		$data ['resident_status'] = 0;
		$data ['citizen_status'] = 0;
		$data ['ket'] = $this->input->post('ket');

		$this->Vendor_model->add_data($data,'tbl_vendor');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Add Item!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor','refresh');
		
	}

	public function edit_data($id_v)
	{
		$where = array('id_v' => $id_v);
		$data['tbl_bank'] = $this->Vendor_model->show_bank()->result();
		$data['tbl_vendor'] = $this->Vendor_model->edit_data('tbl_vendor', $where)->result();
		$data['content']='admin/edit_vendor';
		$this->load->view('template',$data);
	}

	public function update($id_v)
	{
		//Ambil data Bank
		$kode = $this->input->post('bank');
		$k  = $this->db->get_where('tbl_bank',array('id_bank'=> $kode))->result_array();
		
		foreach($k as $row) { 
        $nama_bank = $row['bank_name'];
        $kode_bank = $row['code_bank'];
		}

		$data ['kode_vendor'] = $this->input->post('kode');
		$data ['nama_vendor'] = $this->input->post('nama');
		$data ['telpon'] = $this->input->post('telpon');
		$data ['email'] = $this->input->post('email');
		$data ['npwp'] = $this->input->post('npwp');
		$data ['rek_vendor'] = $this->input->post('norek');
		$data ['id_bank'] = $this->input->post('bank');
		$data ['atas_nama'] = $this->input->post('an');
		$data ['address_bank'] = $this->input->post('branch');
		$data ['bank_city'] = $this->input->post('city');
		$data ['kode_bank'] = $kode_bank;
		$data ['currency'] = 'IDR';
		if($kode_bank == 0)
			{$data ['transaction_type'] = "OVB";}
			else
			{$data ['transaction_type'] = "LLG";}
		 
		$data ['resident_status'] = 0;
		$data ['citizen_status'] = 0;
		$data ['ket'] = $this->input->post('ket');

		$where = array('id_v' => $id_v);
		$this->Vendor_model->update($where, $data, 'tbl_vendor');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Edit data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor','refresh');
	}

    public function delete_vendor($id_v)
	{
		$where = array('id_v' => $id_v );
		$this->Vendor_model->delete($where,'tbl_vendor');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Hapus Data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor','refresh');
	}

    public function payment_date()
	{
        $data['tbl_payment_date'] = $this->Vendor_model->show_payment_date()->result();
		$data['content']='admin/data_payment_date';
		$this->load->view('template',$data);
        //$this->load->view('admin/data_vendor');
	}

    public function form_payment_date()
	{
		$data['content']='admin/form_payment_date';
		$this->load->view('template',$data);
        
	}

    public function add_payment_date()
	{
		$data['deskripsi_pembayaran_v'] = $this->input->post('deskripsi');
		$data['payment_date'] = $this->input->post('date');

		$this->Vendor_model->add_payment_date($data,'tbl_payment_date');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Add data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor/payment_date','refresh');
	}

	public function edit_payment_date($id_payment_date)
	{
		$where = array('id_payment_date' => $id_payment_date);
		$data['tbl_payment_date'] = $this->Vendor_model->edit_payment_date('tbl_payment_date', $where)->result();
		$data['content']='admin/edit_payment_date';
		$this->load->view('template',$data);
	}

	public function update_payment_date($id_payment_date)
	{
		$data['deskripsi_pembayaran_v'] = $this->input->post('deskripsi');
		$data['payment_date'] = $this->input->post('date');

		$where = array('id_payment_date' => $id_payment_date);
		$this->Vendor_model->update_payment_date($where, $data, 'tbl_payment_date');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Edit data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor/payment_date','refresh');
	}

    public function delete_payment_date($id_payment_date)
	{
		$where = array('id_payment_date' => $id_payment_date );
		$this->Vendor_model->delete_payment_date($where,'tbl_payment_date');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Hapus data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor/payment_date','refresh');
	}

    public function data_payment_vendor()
	{   
        $data['tbl_payment_v'] = $this->Vendor_model->show_data_payment()->result();
		$data['content']='admin/data_payment_vendor';
		$this->load->view('template',$data);
       
	}

    public function form_payment_vendor()
	{
        $data['tbl_vendor'] = $this->Vendor_model->show_data()->result();
		$data['tbl_payment_date'] = $this->Vendor_model->show_payment_date()->result();
		$data['content']='admin/form_payment_vendor';
		$this->load->view('template',$data);
        
	}

    public function add_data_payment_v()
	{
		//Ambil data Vendor
		$kode = $this->input->post('vendor');
		$k  = $this->db->get_where('tbl_vendor',array('id_v'=> $kode))->result_array();
		
		foreach($k as $row) { 
        $nama_vendor = $row['nama_vendor'];
		//ambil data Bank
		$bank  = $row['id_bank'];
			$b  = $this->db->get_where('tbl_bank',array('id_bank'=> $bank))->result_array();
			foreach($b as $r) { 
			$bank_name = $r['bank_name'];
			}
        $address = $row['address_bank'];
        $city = $row['bank_city'];
		$bank_code = $row['kode_bank'];
		$account_name = $row['atas_nama'];
		$account_number = $row['rek_vendor'];
		$email = $row['email'];
		$currency = $row['currency'];
		$transaction_type = $row['transaction_type'];
		$resident_status = $row['resident_status'];
		$citizen_status = $row['citizen_status'];
		}
		
		//Ambil data tabel payment date
		$id = $this->input->post('date');
		$d  = $this->db->get_where('tbl_payment_date',array('id_payment_date'=> $id))->result_array();
		
		foreach($d as $date) { 
        $p_date = $date['payment_date'];
		}

		//input ke database payment vendor
		$data ['nama_vendor'] = $nama_vendor;
		$data ['bank_name'] = $bank_name;
		$data ['address_bank'] = $address;
		$data ['bank_city'] = $city;
		$data ['bank_code'] = $bank_code;
		$data ['account_name'] = $account_name;
		$data ['account_number'] = $account_number;
		$data ['currency'] = $currency; 
		$data ['amount_payment'] = $this->input->post('amount');
		$data ['description'] = $this->input->post('deskripsi');
		$data ['description2'] = $this->input->post('deskripsi2');
		$data ['email_vendor'] = $email;
		$data ['transaction_type'] = $transaction_type;
		$data ['resident_status'] = $resident_status;
		$data ['citizen_status'] = $citizen_status;
		$data ['id_payment_date'] = $this->input->post('date');
		$data ['payment_date'] = $p_date;

		$this->Vendor_model->add_payment_v($data,'tbl_payment_v');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Add data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor/data_payment_vendor','refresh');
	}

	public function edit_payment_vendor($id_payment_v)
	{
		$where = array('id_payment_v' => $id_payment_v);
		$data['tbl_bank'] = $this->Vendor_model->show_bank()->result();
		$data['tbl_vendor'] = $this->Vendor_model->show_data()->result();
		$data['tbl_payment_date'] = $this->Vendor_model->show_payment_date()->result();
		$data['tbl_payment_v'] = $this->Vendor_model->edit_data('tbl_payment_v', $where)->result();
		$data['content']='admin/edit_payment_vendor';
		$this->load->view('template',$data);
	}

	public function update_payment_v($id_payment_v)
	{
		//Ambil data tabel payment date
		$id = $this->input->post('date');
		$d  = $this->db->get_where('tbl_payment_date',array('id_payment_date'=> $id))->result_array();
		
		foreach($d as $date) { 
        $p_date = $date['payment_date'];
		}
		
		$data ['amount_payment'] = $this->input->post('amount');
		$data ['description'] = $this->input->post('deskripsi');
		$data ['description2'] = $this->input->post('deskripsi2');
		$data ['id_payment_date'] = $this->input->post('date');
		$data ['payment_date'] = $p_date;

		$where = array('id_payment_v' => $id_payment_v );
		$this->Vendor_model->update_payment_v($where,$data,'tbl_payment_v');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Edit data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor/data_payment_vendor','refresh');
	}

    public function delete_payment_v($id_payment_v)
	{
		$where = array('id_payment_v' => $id_payment_v );
		$this->Vendor_model->delete_payment_v($where,'tbl_payment_v');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Hapus data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor/data_payment_vendor','refresh');
	}

    //export ke dalam format excel
	public function export_excel($id_payment_date){
		// $data = array('tbl_payment_v' => $this->Vendor_model->show_data_payment()->result());
		$data = array( 'title' => 'Laporan Excel');
		//Ambil data payment date
		$k  = $this->db->get_where('tbl_payment_date',array('id_payment_date'=> $id_payment_date))->result_array();
		foreach($k as $row) { 
        //$pdate = $row['payment_date'];
		$pdate = $row['id_payment_date'];
		}
		
		$where = array('id_payment_date' => $pdate);
		$data['tbl_payment_v'] = $this->Vendor_model->show_laporan_excel('tbl_payment_v', $where)->result();
		// // $data = array( 'title' => 'Laporan Excel',
		// // 	 'tbl_payment_v' => $this->Vendor_model->show_data_payment()->result());
		

		$this->load->view('admin/laporan_excel',$data);
   	}

	public function form_bank()
	{
		$data['content']='admin/form_bank';
		$this->load->view('template',$data);
	}

	public function data_bank()
	{   
		$data['tbl_bank'] = $this->Vendor_model->show_bank()->result();
		$data['content']='admin/data_bank';
		$this->load->view('template',$data);
		
	}

   	public function add_bank()
	{
		$data['code_bank'] = $this->input->post('kode_bank');
		$data['bank_name'] = $this->input->post('nama_bank');

		$this->Vendor_model->add_bank($data,'tbl_bank');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Tambah data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor/data_bank','refresh');
	}

	public function edit_bank($id_bank)
	{
		$where = array('id_bank' => $id_bank);
		$data['tbl_bank'] = $this->Vendor_model->edit_bank('tbl_bank', $where)->result();
		$data['content']='admin/edit_bank';
		$this->load->view('template',$data);
	}

	public function update_bank($id_bank)
	{
		$data['code_bank'] = $this->input->post('kode_bank');
		$data['bank_name'] = $this->input->post('nama_bank');

		$where = array('id_bank' => $id_bank);
		$this->Vendor_model->bank_update($where, $data, 'tbl_bank');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Edit data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor/data_bank','refresh');
	}

	public function delete_bank($id_bank)
	{
		$where = array('id_bank' => $id_bank );
		$this->Vendor_model->delete_bank($where,'tbl_bank');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Hapus data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('vendor/data_bank','refresh');
	}
}
