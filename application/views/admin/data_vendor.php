
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
                                            <th>Nama Vendor</th>
                                            <th>Email</th>
                                            <th>Rekening</th>
                                            <th>Nama Rekening</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th width="30">No</th>
                                            <th>Nama Vendor</th>
                                            <th>Email</th>
                                            <th>Rekening</th>
                                            <th>Nama Bank</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    
                                    <tbody>
                                    <?php $no = 1;
                                    foreach ($tbl_vendor as $value) { ?>
                                        <tr>
                                            <td><?php echo $no++; ?></td>
                                            <td><?php echo $value->nama_vendor; ?></td>
                                            <td><?php echo $value->email; ?></td>
                                            <td><?php echo $value->rek_vendor; ?></td>
                                                <?php
                                                $id_bank = $value->id_bank;
                                                $bank  = $this->db->get_where('tbl_bank',array('id_bank'=> $id_bank))->result_array();
                                                foreach($bank as $d){?>
                                                    <td><?php echo $d['bank_name']; ?></td>
                                                <?php } ?>
                                            <td>
                                            <a href="<?php echo site_url('Vendor/edit_data/'. $value->id_v); ?>" class="btn btn-warning btn-xs">Edit</a>
                                                <a href="<?php echo site_url('Vendor/delete_vendor/'. $value->id_v); ?>" class="btn btn-danger btn-xs" onclick="myFunction();">Delete</a>
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