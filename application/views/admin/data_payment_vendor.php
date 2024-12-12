
<div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h1>Table Pembayaran Vendor</h1>
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
                            <h2>Data Pembayaran Vendor <small>List dari data vendor yang sudah terdaftar</small></h2>
                            <ul class="header-dropdown dropdown">
                                
                                <li><a href="javascript:void(0);" class="full-screen"><i class="icon-frame"></i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="<?php echo site_url('vendor/form_payment_vendor'); ?>">Tambah</a></li>
                                        
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
                                        <th>Tanggal Payment</th>
                                        <th>Nama Vendor</th>
                                        <th>Amount</th>
                                        <th>Deskripsi</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th width="30">No</th>
                                            <th>Tanggal Payment</th>
                                            <th>Nama Vendor</th>
                                            <th>Amount</th>
                                            <th>Deskripsi</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <?php $no = 1;
                                    foreach ($tbl_payment_v as $value) { ?>
                                        <tr>
                                            <td><?php echo $no++; ?></td>
                                            <td><?php echo $value->payment_date; ?></td>
                                            <td><?php echo $value->nama_vendor; ?></td>
                                            <td><?php echo number_format($value->amount_payment,0,",","."); ?></td>
                                            <td><?php echo $value->description; ?></td>
                                            <td>
                                            <a href="<?php echo site_url('Vendor/edit_payment_vendor/'. $value->id_payment_v); ?>" class="btn btn-warning">Edit</a>
                                                <a href="<?php echo site_url('Vendor/delete_payment_v/'. $value->id_payment_v); ?>" class="btn btn-danger" onclick="myFunction();">Delete</a>
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