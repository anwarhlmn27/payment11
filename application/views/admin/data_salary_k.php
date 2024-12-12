
<div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h1>Table Vendor</h1>
                    <?= $this->session->flashdata('message'); ?>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                          <li class="breadcrumb-item"><a href="#"><i class="fa fa-cube"></i></a></li>
                          <li class="breadcrumb-item"><a href="#">Tables</a></li>
                          <li class="breadcrumb-item active" aria-current="page">Vendor Table</li>
                        </ol>
                    </nav>
                </div>            
                
            </div>
        </div>

        <div class="container-fluid">
            
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Data Vendor <small>List dari data vendor yang sudah terdaftar</small></h2>
                            <ul class="header-dropdown dropdown">
                                
                                <li><a href="javascript:void(0);" class="full-screen"><i class="icon-frame"></i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="<?php echo site_url('vendor/form_vendor'); ?>">Tambah</a></li>
                                        
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-hover js-basic-example dataTable table-custom spacing5">
                                    <thead>
                                        <tr>
                                            <th width="30">No</th>
                                            <th>NIK</th>
                                            <th>Bulan</th>
                                            <th>Nama</th>
                                            <th>Jumlah OT</th>
                                            <th>Jumlah Salary</th>
                                            <th>Keterangan</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th width="30">No</th>
                                            <th>NIK</th>
                                            <th>Bulan</th>
                                            <th>Nama</th>
                                            <th>Jumlah OT</th>
                                            <th>Jumlah Salary</th>
                                            <th>Keterangan</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    
                                    <tbody>
                                    <?php $no = 1;
                                    foreach ($tbl_salary_k as $key) { ?>
                                        <tr>
                                            <td><?php echo $no++; ?></td>
                                            <td><?php echo round($key->nik_k); ?></td>
                                            <?php
                                                $id_periode = $key->id_periode;
                                                $periode  = $this->db->get_where('tbl_periode',array('id_periode'=> $id_periode))->result_array();
                                                foreach($periode as $d){?>
                                                    <td><?php echo $d['bulan'] .' '. $d['tahun']; ?></td>
                                            <?php } ?>
                                            <?php
                                                $id = $key->nik_k;
                                                $nomor  = $this->db->get_where('tbl_karyawan',array('nik_k'=> $id))->result_array();
                                                foreach($nomor as $row){?>
                                                    <td><?php echo $row['nama_k']; ?></td>
                                            <?php } ?>
                                            <td><?php echo round($key->jumlah_jam_ot,1); ?></td>
                                            <td><?php echo number_format($key->amount_gajikaryawan,0,",","."); ?></td>
                                            <td><?php echo $key->keterangan; ?></td>
                                            <td>
                                            <a href="<?php echo site_url('salary/edit_data/'. $key->id_salary_k); ?>" class="btn btn-warning btn-xs">Edit</a>
                                            <a href="<?php echo site_url('salary/delete/'. $key->id_salary_k); ?>" class="btn btn-danger btn-xs" onclick="myFunction();">Delete</a>
                                            <a href="<?php echo site_url('salary/print/'. $key->id_salary_k); ?>" class="btn btn-default btn-xs">Print</a>
                                            <?php if ($key->publish=="No"){ ?>
                                            <a href="<?php echo site_url('salary/publish/'.$key->id_salary_k); ?>" class="btn btn-success btn-xs">Publish</a>
                                            <?php }else{ ?>
                                            <a href="<?php echo site_url('salary/hide/'.$key->id_salary_k); ?>" class="btn btn-info btn-xs">Hide</a>
                                            <?php } ?>
                                            </td>
                                            <?php } ?>
                                        </tr>
                                       
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>

        </div>
<script>
    function myFunction() {
    if(!confirm('Are you sure to delete this item! ?')){
    event.preventDefault();
    return;
    }
    return true;
    }
</script>