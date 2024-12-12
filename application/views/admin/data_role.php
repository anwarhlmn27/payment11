
<div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h1>Table Role</h1>
                    <?= $this->session->flashdata('message'); ?>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                          <li class="breadcrumb-item"><a href="#"><i class="fa fa-cube"></i></a></li>
                          <li class="breadcrumb-item"><a href="#">Tables</a></li>
                          <li class="breadcrumb-item active" aria-current="page">Table Role</li>
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
                            <h2>Role <small>List dari data role</small></h2>
                            <ul class="header-dropdown dropdown">
                                
                                <li><a href="javascript:void(0);" class="full-screen"><i class="icon-frame"></i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="<?php echo site_url('Page/form_role'); ?>">Tambah</a></li>
                                        
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
                                            <th>Nama</th>
                                            <th>Email</th>
                                            <th>Role</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th width="30">No</th>
                                            <th>Nama</th>
                                            <th>Email</th>
                                            <th>Role</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <?php
                                    $no = 1;
                                    foreach ($tbl_account as $key) { ?>
                                        <tr>
                                            <td><?php echo $no++; ?></td>
                                            <td><?php echo $key->nama; ?></td>
                                            <td><?php echo $key->email; ?></td>
                                            <td><?php echo $key->akses; ?></td>
                                            <td>
                                            <a href="<?php echo site_url('Page/edit_role/'. $key->id_account); ?>" class="btn btn-warning btn-xs">Edit</a>
                                            <a href="<?php echo site_url('Page/delete_role/'. $key->id_account); ?>" class="btn btn-danger btn-xs" onclick="myFunction();">Delete</a>
                                           
                                            </td>
                                        </tr>
                                    <?php } ?>
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