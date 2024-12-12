
            <!-- Masked Input -->
            <div class="block-header">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-12">
                        <h1>Form Data Payment</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-cube"></i></a></li>
                            <li class="breadcrumb-item"><a href="#">Vendor</a></li>
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
                            <?php echo form_open('vendor/add_data_payment_v'); ?>
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-12">
                                    <label>Nama Vendor</label>
                                    <div class="multiselect_div">
                                        <select class="custom-select" id="inputGroupSelect01" name="vendor">
                                        <option value='#'>Pilih</option>
                                            <?php
                                            if(empty($tbl_vendor))
                                            {
                                                echo "<option value='#'>Tidak ada Data</option>";
                                            }else{
                                                foreach ($tbl_vendor as $tabel){

                                                    echo "<option value=".$tabel->id_v.">".$tabel->nama_vendor."</option>";
                                                }
                                            } ?> 
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="email" class="control-label">Jumlah Bayar</label>
                                        <input type="number" name="amount" class="form-control">
                                        
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="email" class="control-label">Deskripsi</label>
                                        <input type="text" name="deskripsi" class="form-control">
                                        
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="text" class="control-label">Tanggal</label>
                                        <select class="custom-select" name="date">
                                            <option value='#'>Pilih No Pembayaran</option>
                                                <?php
                                                if(empty($tbl_payment_date))
                                                {
                                                    echo "<option value='#'>Tidak ada Data</option>";
                                                }else{
                                                    foreach ($tbl_payment_date as $date){

                                                        echo "<option value=".$date->id_payment_date.">".$date->deskripsi_pembayaran_v."</option>";
                                                    }
                                                } ?> 
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Keterangan</label>
                                        <textarea name="deskripsi2" class="form-control"></textarea>
                                        
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary btn-round">Submit</button>
                                    <button type="reset" class="btn btn-warning btn-round">Cancel</button>
                                </div>
                                <?php echo form_close(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

