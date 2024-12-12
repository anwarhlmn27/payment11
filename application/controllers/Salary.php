<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Salary extends CI_Controller {

	public function __construct()
	{
		parent ::__construct();
        //$this->load->library('Pdf_report');
		$this->load->model('Salary_model');
		$this->load->model('Karyawan_model');
		//$this->load->model('Dosen_model');
        
	}

	public function index()
	{
        $data['tbl_periode'] = $this->Salary_model->show_periode()->result();
		$data['content']='admin/sortir_data_salary';
		$this->load->view('template',$data);
	}

    public function show_data_salary()
    {
        $id_periode = $this->input->post('periode');
        $data['tbl_salary_k'] = $this->Salary_model->show_data_k()->result();
        $data['tbl_salary_k'] = $this->db->order_by('nik_k', 'asc');
        $data['tbl_salary_k'] = $this->db->get_where('tbl_salary_k', array('id_periode' => $id_periode))->result();
        $data['tbl_periode'] = $this->Salary_model->show_periode()->result();
        $data['content']='admin/data_salary_k';
        $this->load->view('template',$data);
        // echo $id_periode;
    }

    public function view_salary_e($nik)
	{
		//$where = array('nik_k' => $nik);
		$data['tbl_salary_k'] = $this->Salary_model->show_data_k()->result();
		// $data['tbl_salary_k'] = $this->Salary_model->view_data_perkaryawan('tbl_salary_k', $where)->result();
		$data['tbl_salary_k'] = $this->db->get_where('tbl_salary_k', array('nik_k' => $nik, 'publish' => "Yes"))->result();
		// $data['tbl_salary_k'] = $this->db->get_where('tbl_salary_k', array('publish' => "Yes"))->result();
		$data['tbl_karyawan'] = $this->Salary_model->show_karyawan()->result();
		$data['tbl_periode'] = $this->Salary_model->show_periode()->result();
		$data['content']='user/salary_user';
		$this->load->view('user/template',$data);
	}

	public function form_salary_k(){
		$data['tbl_karyawan'] = $this->Salary_model->show_karyawan()->result();
        $data['tbl_karyawan'] = $this->db->get_where('tbl_karyawan', array('status' => 4)) ->result();
		$data['tbl_periode'] = $this->Salary_model->show_periode()->result();
		$data['content']='admin/form_salary';
		$this->load->view('template',$data);
	}

	public function add_data_k()
	{
		// $data ['nik_k'] = $this->input->post('nik');
		// $data ['id_periode'] = $this->input->post('bulan');
		// $data ['jumlah_jam_ot'] = $this->input->post('ot');
		// $data ['jumlah_hari_makan'] = $this->input->post('makan');
		// $data ['jumlah_thr'] = $this->input->post('thr');
		// $data ['pph'] = $this->input->post('pph');
		// $data ['bpjs'] = $this->input->post('bpjs');
		// $data ['jht'] = $this->input->post('jht');
		// $data ['keterangan'] = $this->input->post('ket');

		$kode = $this->input->post('nik');
		$k  = $this->db->get_where('tbl_karyawan',array('nik_k'=> $kode))->result_array();
		
		foreach($k as $row) { 
        // $lembur = $row['overtime']; 
        $meals = $row['makan'];
        // $tunjangan_shift = $row['tunjangan_shift'];
        $gp = $row['basic_salary'];
        $tr = $row['transport'];
        $kom = $row['komunikasi'];

        // bpk
        $bpk = $row['bpk'];
        $pbpjskes = $row['pbpjskes'];
        $pbpjstk = $row['pbpjstk'];
        // $ptkp = $row['ptkp'];

        //Lembur
		$jumlah_jam = $this->input->post('ot');
		$total_lembur = round((1/173*$gp)*$jumlah_jam);

        //Uang Makan
        $hari = $this->input->post('makan');
        $total_makan = $meals * $hari;

        //THR
        $jum_thr = $this->input->post('thr');
        $total_thr = round($gp * $jum_thr);

        //jumlah tunjangan shift
        $shift = $this->input->post('shift');

        //jumlah tunjangan 3T
        $tt = $this->input->post('3t');

        //rapel OT
        $rot = $this->input->post('rapel_ot');

        //Rapel Gaji
        $rg = $this->input->post('rapel_gaji');

        //tidak hadir tanpa upah
        $tpu = $this->input->post('tpu');

        //potongan Pajak - tidak jadi
        // $pajak = $this->input->post('pph');

        //potongan BPJS Kesehatan
        $total_gaji = round($gp + $tr + $kom + $shift);
        if($total_gaji < 5176179){
            $total_gaji_perhitungan = 5176179;
            }else{
                $total_gaji_perhitungan = $total_gaji;
            }
        if($pbpjskes=="Tidak"){
            $bpjs_dp = 0;
            $bpjs_dk = 0;
        }else{
            $bpjs_dp = round($total_gaji_perhitungan * (4/100));
            $bpjs_dk = round($total_gaji_perhitungan * (1/100));
        }
        

        //Potongan BPJS ketenagakerjaan
        // Yang di bayar perusahaan
        if($pbpjstk == "Tidak"){
            $jkk = 0;
            $jkm = 0;
            $jht = 0;
            // Yang dibayar Karyawan
            $jkk2 = 0;
            $jkm2 = 0;
            $jht2 = 0;
        }else{
            $jkk = round($gp * (0.24/100));
            $jkm = round($gp * (0.30/100));
            $jht = round($gp * (3.7/100));
       
            // Yang dibayar Karyawan
            $jkk2 = 0;
            $jkm2 = 0;
            $jht2 = round($gp * (2/100));
        }      
        $total_bpjstk_dp = $jkk + $jkm;
        $total_bpjstk_dk = $jkk2 + $jkm2 + $jht2;

        // Data Pph lebih/kurang bayar atau penggantian pph
        $ppph = $this->input->post('ppph');
        $lpph = $this->input->post('lpph');
        $kpph = $this->input->post('kpph');

        // total asuransi yang di bayarkan perusahaan
        $asuransidp = round($bpjs_dp + $total_bpjstk_dp);

        //Perhitungan Gaji Bruto
        $gaji_bruto = round($gp + $tr + $kom + $shift + $total_lembur + $total_makan + $bpk + $total_thr + $tt + $rot + $rg + $ppph + $lpph - $tpu - $kpph);

        //Jumlah Income (untuk pajak)
        $jumlah_income = round($gp + $tr + $kom + $shift + $total_lembur + $total_makan + $bpk  + $total_thr + $tt + $rot + $rg + $asuransidp + $ppph - $tpu);

        // Pengurangan Gaji
        //Biaya Jabatan
        $biaya_jabatan = $jumlah_income * (5/100);
        
        //Iuran Pensiun/JHT diambil dari $total_bpjstk_dk

        //Penghasilan Netto
       	$gaji_netto = $jumlah_income - $biaya_jabatan - $total_bpjstk_dk;
       	$gaji_netto_anual = round($gaji_netto * 12);

       	//potongan Pajak
       	$ptkp = $row['ptkp'];
       	$pkp_anual = $gaji_netto_anual - $ptkp;
       	$pembulatan = $pkp_anual;
        $bulat = substr($pembulatan, -3);
            if($bulat<999){
                $akhir = $pembulatan - $bulat;
            }else{
                $akhir  = $pembulatan + (1000-$bulat);

            }
            
       	$pph_terhutang = round($akhir * (5/100));
       	$pph_masa = round($pph_terhutang/12);
       	if($pph_masa < 0){
       		$pph_masa_total = 0;
       	}else{
       		$pph_masa_total = $pph_masa;
       	}

        //Total jumlah pedapatan untuk di slip gaji
        $total_pendapatan = round($gp + $tr + $kom + $bpk + $shift + $total_lembur + $total_makan + $total_thr + $tt + $rot + $rg + $bpjs_dp + $total_bpjstk_dp + $ppph - $tpu);
         //Total jumlah potongan untuk di slip gaji
        $total_potongan = round($pph_masa_total + $bpjs_dp + $bpjs_dk + $total_bpjstk_dp + $total_bpjstk_dk + $kpph - $lpph);
         //Total gaji karyawan untuk di slip gaji
        $gaji_karyawan = round($gaji_bruto - ($total_bpjstk_dk + $bpjs_dk + $pph_masa_total));
         
        }
        
        
        // echo "total gaji tetap", $total_gaji;
        // echo "bpjs kes dibayar perusahaan",$bpjs_dp;
        // echo "Total BPJS TK dibayar perusahaan = ", $total_bpjstk_dp;
        // echo "Asiransi dibayar perushaan", $asuransidp;
        // echo "jkk=", $jkk;
        // echo "jkm",  $jkm; 
        // echo "jht", $jht;
        $data ['nik_k'] = $this->input->post('nik');
		$data ['id_periode'] = $this->input->post('bulan');
        $data ['basic_salary'] = $gp;
        $data ['transport'] = $tr;
        $data ['komunikasi'] = $kom;
        $data ['makan'] = $meals;
        $data ['bpk'] = $bpk;
		$data ['jumlah_jam_ot'] = $this->input->post('ot');
		$data ['jumlah_ot'] = $total_lembur;
		$data ['total_makan'] = $total_makan;
		$data ['jumlah_apresiasi'] = $total_thr;
        $data ['ppph'] = $ppph;
        $data ['lpph'] = $lpph;
        $data ['kpph'] = $kpph;
        $data ['tpu'] = $tpu;
		$data ['jumlah_shift'] = $shift;
		$data ['tunjangan_3t'] = $tt;
		$data ['rapel_ot'] = $rot;
		$data ['rapel_gaji'] = $rg;
		$data ['bpjs'] = $bpjs_dk;
        $data ['bpjs_dp'] = $bpjs_dp;
		$data ['jht'] = $total_bpjstk_dk;
        $data ['jht_dp'] = $total_bpjstk_dp;
		$data ['asuransidp'] = $asuransidp;
		$data ['jumlah_gaji_bruto'] = $gaji_bruto;
		$data ['jumlah_income'] = $jumlah_income;
        $data ['total_pendapatan'] = $total_pendapatan;
        $data ['total_potongan'] = $total_potongan;
		$data ['biaya_jabatan'] = $biaya_jabatan;
		$data ['income_nett'] = $gaji_netto;
		$data ['income_nett_1year'] = $gaji_netto_anual;
		// $data ['ptkp'] = $ptkp;
		$data ['pkp_1year'] = $pkp_anual;
		$data ['pembulatan'] = $akhir;
		$data ['pph_terhutang'] = $pph_terhutang;
		$data ['pph_masa'] = ($pph_masa_total + $kpph) - $lpph;
		$data ['pph_masa_real'] = $pph_masa;
		$data ['amount_gajikaryawan'] = $gaji_karyawan;
		$data ['tgl_release'] = $this->input->post('tgl_release');
		$data ['keterangan'] = $this->input->post('ket');

		$this->Salary_model->add_data('tbl_salary_k',$data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Tambah data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('salary','refresh');
	}

	public function edit_data($id_salary_k){
		$where = array('id_salary_k' => $id_salary_k);
		$data['tbl_salary_k'] = $this->Salary_model->edit_data('tbl_salary_k', $where)->result();
		$data['tbl_karyawan'] = $this->Salary_model->show_karyawan()->result();
		$data['tbl_periode'] = $this->Salary_model->show_periode()->result();
		$data['content']='admin/edit_salary_k';
		$this->load->view('template',$data);
	}

	public function update($id_salary_k)
	{
		$kode = $this->input->post('nik');
		$k  = $this->db->get_where('tbl_karyawan',array('nik_k'=> $kode))->result_array();
		
		foreach($k as $row) { 
        // $lembur = $row['overtime']; 
        $meals = $row['makan'];
        // $tunjangan_shift = $row['tunjangan_shift'];
        $gp = $row['basic_salary'];
        $tr = $row['transport'];
        $kom = $row['komunikasi'];

        // bpk
        $bpk = $row['bpk'];
        $pbpjskes = $row['pbpjskes'];
        $pbpjstk = $row['pbpjstk'];
        // $ptkp = $row['ptkp'];

        //Lembur
		$jumlah_jam = $this->input->post('ot');
		$total_lembur = round((1/173*$gp)*$jumlah_jam);

        //Uang Makan
        $hari = $this->input->post('makan');
        $total_makan = $meals * $hari;

        //THR
        $jum_thr = $this->input->post('thr');
        $total_thr = round($gp * $jum_thr);

        //jumlah tunjangan shift
        $shift = $this->input->post('shift');

        //jumlah tunjangan 3T
        $tt = $this->input->post('3t');

        //rapel OT
        $rot = $this->input->post('rapel_ot');

        //Rapel Gaji
        $rg = $this->input->post('rapel_gaji');

        //tidak hadir tanpa upah
        $tpu = $this->input->post('tpu');

        //potongan Pajak - tidak jadi
        // $pajak = $this->input->post('pph');

        //potongan BPJS Kesehatan
        
        $total_gaji = round($gp + $tr + $kom + $shift);
        if($total_gaji < 5176179){
            $total_gaji_perhitungan = 5176179;
            }else{
                $total_gaji_perhitungan = $total_gaji;
            }
        if($pbpjskes=="Tidak"){
            $bpjs_dp = 0;
            $bpjs_dk = 0;
        }else{
            $bpjs_dp = round($total_gaji_perhitungan * (4/100));
            //potensi kurang bayar bpjs kesehatan maka ditambahkan ke bpjs_dk
            $bpjs_dk = round($total_gaji_perhitungan * (1/100));
        }
        

        //Potongan BPJS ketenagakerjaan
        // Yang di bayar perusahaan
        if($pbpjstk == "Tidak"){
            $jkk = 0;
            $jkm = 0;
            $jht = 0;
            // Yang dibayar Karyawan
            $jkk2 = 0;
            $jkm2 = 0;
            $jht2 = 0;
        }else{
            $jkk = round($gp * (0.24/100));
            $jkm = round($gp * (0.30/100));
            $jht = round($gp * (3.7/100));
       
            // Yang dibayar Karyawan
            $jkk2 = 0;
            $jkm2 = 0;
            $jht2 = round($gp * (2/100));
        }      
        $total_bpjstk_dp = $jkk + $jkm;
        $total_bpjstk_dk = $jkk2 + $jkm2 + $jht2;

        // Data Pph lebih/kurang bayar atau penggantian pph
        $ppph = $this->input->post('ppph');
        $lpph = $this->input->post('lpph');
        $kpph = $this->input->post('kpph');

        // total asuransi yang di bayarkan perusahaan
        $asuransidp = round($bpjs_dp + $total_bpjstk_dp);

        //Perhitungan Gaji Bruto
        $gaji_bruto = round($gp + $tr + $kom + $shift + $total_lembur + $total_makan + $bpk  + $total_thr + $tt + $rot + $rg + $ppph + $lpph - $tpu - $kpph);

        //Jumlah Income (untuk pajak)
        $jumlah_income = round($gp + $tr + $kom + $shift + $total_lembur + $total_makan + $bpk  + $total_thr + $tt + $rot + $rg + $asuransidp + $ppph - $tpu);

        // Pengurangan Gaji
        //Biaya Jabatan
        $biaya_jabatan = $jumlah_income * (5/100);
        
        //Iuran Pensiun/JHT diambil dari $total_bpjstk_dk

        //Penghasilan Netto
       	$gaji_netto = $jumlah_income - $biaya_jabatan - $total_bpjstk_dk;
       	$gaji_netto_anual = round($gaji_netto * 12);

       	//potongan Pajak
       	$ptkp = $row['ptkp'];
       	$pkp_anual = $gaji_netto_anual - $ptkp;
       	$pembulatan = $pkp_anual;
        $bulat = substr($pembulatan, -3);
            if($bulat<999){
                $akhir = $pembulatan - $bulat;
            }else{
                $akhir  = $pembulatan + (1000-$bulat);

            }
            
       	$pph_terhutang = round($akhir * (5/100));
       	$pph_masa = round($pph_terhutang/12);
       	if($pph_masa < 0){
       		$pph_masa_total = 0;
       	}else{
       		$pph_masa_total = $pph_masa;
       	}

         //Total jumlah pedapatan untuk di slip gaji
        $total_pendapatan = round($gp + $tr + $kom + $bpk + $shift + $total_lembur + $total_makan + $total_thr + $tt + $rot + $rg + $bpjs_dp + $total_bpjstk_dp + $ppph - $tpu);

         //Total jumlah potongan untuk di slip gaji
        $total_potongan = round($pph_masa_total + $bpjs_dp + $bpjs_dk + $total_bpjstk_dp + $total_bpjstk_dk + $kpph - $lpph);
         //Total gaji karyawan untuk di slip gaji
        $gaji_karyawan = (round($gaji_bruto - ($total_bpjstk_dk + $bpjs_dk + $pph_masa_total))+1);
         
        }
        
        // echo "total gaji tetap", $total_gaji;
        // echo "bpjs kes dibayar perusahaan",$bpjs_dp;
        // echo "Total BPJS TK dibayar perusahaan = ", $total_bpjstk_dp;
        // echo "Asiransi dibayar perushaan", $asuransidp;
        // echo "jkk=", $jkk;
        // echo "jkm",  $jkm; 
        // echo "jht", $jht;
        $data ['nik_k'] = $this->input->post('nik');
		$data ['id_periode'] = $this->input->post('bulan');
        $data ['basic_salary'] = $gp;
        $data ['transport'] = $tr;
        $data ['komunikasi'] = $kom;
        $data ['makan'] = $meals;
        $data ['bpk'] = $bpk;
		$data ['jumlah_jam_ot'] = $this->input->post('ot');
		$data ['jumlah_ot'] = $total_lembur;
		$data ['total_makan'] = $total_makan;
		$data ['jumlah_apresiasi'] = $total_thr;
        $data ['ppph'] = $ppph;
        $data ['lpph'] = $lpph;
        $data ['kpph'] = $kpph;
        $data ['tpu'] = $tpu;
		$data ['jumlah_shift'] = $shift;
		$data ['tunjangan_3t'] = $tt;
		$data ['rapel_ot'] = $rot;
		$data ['rapel_gaji'] = $rg;
		$data ['bpjs'] = $bpjs_dk;
        $data ['bpjs_dp'] = $bpjs_dp;
		$data ['jht'] = $total_bpjstk_dk;
        $data ['jht_dp'] = $total_bpjstk_dp;
		$data ['asuransidp'] = $asuransidp;
		$data ['jumlah_gaji_bruto'] = $gaji_bruto;
		$data ['jumlah_income'] = $jumlah_income;
        $data ['total_pendapatan'] = $total_pendapatan;
        $data ['total_potongan'] = $total_potongan;
		$data ['biaya_jabatan'] = $biaya_jabatan;
		$data ['income_nett'] = $gaji_netto;
		$data ['income_nett_1year'] = $gaji_netto_anual;
		// $data ['ptkp'] = $ptkp;
		$data ['pkp_1year'] = $pkp_anual;
		$data ['pembulatan'] = $akhir;
		$data ['pph_terhutang'] = $pph_terhutang;
		$data ['pph_masa'] = ($pph_masa_total + $kpph)- $lpph;
		$data ['pph_masa_real'] = $pph_masa;
		$data ['amount_gajikaryawan'] = $gaji_karyawan;
		$data ['tgl_release'] = $this->input->post('tgl_release');
		$data ['keterangan'] = $this->input->post('ket');

	
		$where = array('id_salary_k' => $id_salary_k);
		$this->Salary_model->update($where, $data,'tbl_salary_k');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Edit data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('salary','refresh');

	} 

	public function delete($id_salary_k)
	{
		$where = array('id_salary_k' => $id_salary_k );
		$this->Salary_model->delete('tbl_salary_k',$where);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Success Hapus data!<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
		redirect('salary','refresh');
	}

	public function print($id_salary_k)
	{
		$where = array('id_salary_k' => $id_salary_k);
		$data['tbl_salary_k'] = $this->Salary_model->edit_data('tbl_salary_k', $where)->result();
		$data['tbl_karyawan'] = $this->Salary_model->show_karyawan()->result();
		$data['tbl_periode'] = $this->Salary_model->show_periode()->result();
		$data['content']='admin/slipgaji3';
		$this->load->view('template',$data);
	}

    public function print_user($id_salary_k)
	{
		$where = array('id_salary_k' => $id_salary_k);
		$data['tbl_salary_k'] = $this->Salary_model->edit_data('tbl_salary_k', $where)->result();
		$data['tbl_karyawan'] = $this->Salary_model->show_karyawan()->result();
		$data['tbl_periode'] = $this->Salary_model->show_periode()->result();
		$data['content']='user/slip_user';
		$this->load->view('user/template',$data);
	}

	public function cetak_slip($id_salary_k)
	{
		$where = array('id_salary_k' => $id_salary_k);
		$data['content']='admin/slip_gaji_print';
		$this->load->view('template',$data);
	}

    public function report()
    {
        $this->load->view('admin/salary_statement');
    }

    public function publish($id_salary_k)
    {
        $data ['publish'] = "Yes";
        
        $where = array('id_salary_k' => $id_salary_k);
        $this->Salary_model->publish($where, $data,'tbl_salary_k');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Published !<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
        redirect('salary','refresh');
    }

    public function hide($id_salary_k)
    {
        $data ['publish'] = "No";
        
        $where = array('id_salary_k' => $id_salary_k);
        $this->Salary_model->publish($where, $data,'tbl_salary_k');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Hide Data Success !<button type="button" class="close" data-dismiss="alert" aria-lebel="Close"><span aria-hidden="true">&times;</span></button></div>');
        redirect('salary','refresh');
    }
}
