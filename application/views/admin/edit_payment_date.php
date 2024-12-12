
            <!-- Masked Input -->
            <div class="block-header">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-12">
                        <h1>Form Data Payment</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-cube"></i></a></li>
                            <li class="breadcrumb-item"><a href="<?php echo site_url('vendor/payment_date'); ?>">Tanggal Pembayaran</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Form Tanggal Payment </li>
                            </ol>
                        </nav>
                    </div>            
                    
                </div>
            </div>
            <div class="row clearfix">
                
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <b><h2>Text Inputs Data</h2></b>
                        </div>
                        <div class="body">
                            <?php foreach($tbl_payment_date as $row): ?>
                            <?php echo form_open('vendor/update_payment_date/'.$row->id_payment_date); ?>
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="text" class="control-label">Tanggal</label>
                                        <input type="date" name="date" value="<?php echo $row->payment_date; ?>" class="form-control">
                                        <span class="help-block">dd/mm/yyy</span>
                                    </div>
                                </div>
                                
                                
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="email" class="control-label">Deskripsi</label>
                                        <input type="text" name="deskripsi" value="<?php echo $row->deskripsi_pembayaran_v; ?>" class="form-control">
                                        
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary btn-round">Submit</button>
                                    <button type="reset" class="btn btn-warning btn-round">Cancel</button>
                                </div>
                                <?php endforeach ?>
                                <?php echo form_close(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

