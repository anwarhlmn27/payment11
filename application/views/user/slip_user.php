<?php error_reporting(0); ?>    
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <!-- <div class="col-sm-6">
            <h4>Slip Gaji</h4>
          </div> -->
          <!-- <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Slip Gaji</li>
            </ol>
          </div> -->
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            
            <?php foreach ($tbl_salary_k as $value) { ?>
            <!-- Main content -->
            <div class="invoice p-3 mb-3">
              <!-- title row -->
              <div class="row">
                <div class="col-12">
                  <img src="<?php echo base_url(); ?>assets/images/logo2.jpg" height="40" class="user-image" alt="User Image" align="right">
                  <h6>
                    YAYASAN TOYOTA INDONESIA
                    <br><small class="float-left">AKADEMI KOMUNITAS TOYOTA INDONESIA</small>
                  </h6>
                </div>
                
                <div class="col-12" style="text-align: center;">
                  <h5><b>Slip Gaji</b></h5>
                </div>
                <!-- /.col -->
              </div>
              <!-- info row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-default" border="1">
                    <thead>
                    <?php 
                    $nik = $value->nik_k;
                    $employ  = $this->db->get_where('tbl_karyawan',array('nik_k'=> $nik))->result_array(); 
                    foreach ($employ as $data) { ?>

                      <!-- Data Diri -->
                    <tr>
                      <th colspan="2" align="center" style="border-bottom: 1px solid; text-align: center;">PENDAPATAN</th>
                      <th colspan="2" align="center" style="border-bottom: 1px solid; text-align: center;">POTONGAN</th>
                      <th style="border-bottom: 1px solid">Nama</th>
                      <th style="border-bottom: 1px solid"><?php echo $data['nama_k']; ?></th>
                    </tr>
                    </thead>
                      
                    <tbody>
                    <tr>
                      <td>Gaji Pokok</td>
                      <td align="right"><?php echo number_format($value->basic_salary,0,",",".");?></td>
                      <td>Pajak</td>
                      <td align="right"><?php echo number_format($value->pph_masa,0,",","."); ?></td>
                      <td>NIK</td>
                      <td><?php echo $value->nik_k; ?></td>
                    </tr>
                    <tr>
                      <td>Tunjangan jabatan</td>
                      <td align="right">0</td>
                      <td>Iuran BPJS Kesehatan Institusi</td>
                      <td align="right"><?php echo number_format($value->bpjs_dp,0,",","."); ?></td>
                      <td>Lokasi</td>
                      <td>Karawang</td>
                    </tr>
                    <?php  
                        $periode = $value->id_periode;
                        $month = $this->db->get_where('tbl_periode',array('id_periode'=>$periode))->result_array();
                        foreach ($month as $p) {?>
                    <tr>
                      <td>Tunjangan transport</td>
                      <td align="right"><?php echo number_format($value->transport,0,",",".");?></td>
                      <td>Iuran BPJS Kesehatan</td>
                      <td align="right"><?php echo number_format($value->bpjs,0,",","."); ?></td>
                      <td>Bulan</td>
                      <td><?php echo $p['bulan'];?> <?php echo $p['tahun']; ?></td>
                    </tr>
                  <?php } ?>
                    <tr>
                      <?php 
                      $total_komunikasi = $value->komunikasi + $value->tunjangan_3t;
                      ?>
                      <td>Tunjangan Komunikasi</td>
                      <td align="right"><?php echo number_format($total_komunikasi,0,",",".");?></td>
                      <td>BPJS TK   JKK & JKM</td>
                      <td align="right"><?php echo number_format($value->jht_dp,0,",","."); ?></td>
                      <td>Unit/Biro</td>
                      <td><?php echo $data['unit']; ?></td>
                    </tr>
                    <tr>
                      <td>BPK</td>
                      <td align="right"><?php echo number_format($value->bpk,0,",","."); ?></td>
                      <td>BPJS TK JHT</td>
                      <td align="right"><?php echo number_format($value->jht,0,",","."); ?></td>
                      <td style="border-bottom: 1px solid;"><strong>Diterima</strong></td></hr>
                      <td align="right" style="border-bottom: 1px solid;"><strong><u><?php echo number_format($value->amount_gajikaryawan,0,",","."); ?></u></strong></td>
                    </tr>
                    <tr>
                      <td>Tunjangan lembur</td>
                      <td align="right"><?php echo number_format($value->jumlah_ot,0,",","."); ?></td>
                      <td></td>
                      <td></td>
                      <td colspan="2" rowspan="3" style="text-align: center;"><p>Karawang, <?php echo date('d F Y', strtotime($value->tgl_release)); ?></p></td>
                    </tr>
                    
                    <tr>
                      <td>Apresiasi</td>
                      <td align="right"><?php echo number_format($value->jumlah_apresiasi,0,",","."); ?></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>Iuran BPJS Kesehatan Institusi</td>
                      <td align="right"><?php echo number_format($value->bpjs_dp,0,",","."); ?></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>BPJS TK   JKK & JKM</td>
                      <td align="right"><?php echo number_format($value->jht_dp,0,",","."); ?></td>
                      <td></td>
                      <td></td>
                      <td  colspan="3" rowspan="3" style="text-align: center;"><strong><u>Warnoto</u></strong></td>
                    </tr>
                    <tr>
                      <?php 
                      $koreksi = $value->rapel_ot + $value->rapel_gaji;
                      ?>
                      <td>Koreksi</td>
                      <td align="right"><?php echo number_format($koreksi,0,",","."); ?></td>
                      <td></td>
                      <td></td>
                      
                    </tr>
                    <tr>
                      <td><strong>Total Pendapatan</strong></td>
                      <td align="right"><strong><?php echo number_format($value->total_pendapatan,0,",","."); ?></strong></td>
                      <td><strong>Total Potongan</strong></td>
                      <!--  <?php 
                        $pph = $value->pph;
                        $bpjs = $value->bpjs;
                        $jht = $value->jht;

                        $subtraction = $pph + $bpjs + $jht;
                      ?> -->
                      <td align="right"><strong><?php echo number_format($value->total_potongan,0,",","."); ?></strong></td>
                    </tr>
                  
                    </tbody>
                  </table>


                   
                </div>
                    <?php } ?>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <?php } ?>
              <!-- this row will not appear when printing -->
              <!-- <div class="row no-print">
                <div class="col-12">
                  <a href="<?php echo site_url('salary/cetak_slip/'.$value->id_salary_k); ?>" rel="noopener" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
                  <button type="button" class="btn btn-success float-right"><i class="fa fa-credit-card"></i> Submit
                    Payment
                  </button>
                  <button type="button" class="btn btn-primary float-right" style="margin-right: 5px;">
                    <i class="fa fa-download"></i> Generate PDF
                  </button>
                </div>
              </div> -->
            </div>
            <!-- /.invoice -->
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
    <!-- <script>
      window.addEventListener("load", window.print());
      // window.location.href=-1;
    </script> -->