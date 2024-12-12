            <?php echo form_open('vendor/add_vendor'); ?>
            <!-- Masked Input -->
            <div class="block-header">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-12">
                        <h1>Form Vendor</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-cube"></i></a></li>
                            <li class="breadcrumb-item"><a href="#">Vendor</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Form Vendor</li>
                            </ol>
                        </nav>
                    </div>            
                    
                </div>
            </div>
            <div class="row clearfix">
                
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <b><h2>Text Inputs Data Vendor</h2></b>
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="text" class="control-label">Kode Vendor</label>
                                        <input type="text" name="kode" class="form-control">
                                        <span class="help-block">Kode</span>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Nama Vendor</label>
                                        <input type="text" name="nama" class="form-control">
                                        
                                    </div>        
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Telepon</label>
                                        <input type="number" name="telpon" class="form-control">
                                        <span class="help-block">08....</span>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="email" class="control-label">Email</label>
                                        <input type="email" name="email" class="form-control">
                                        <span class="help-block">email@mail.com</span>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="npwp" class="control-label">NPWP</label>
                                        <input type="number" name="npwp" class="form-control">
                                        
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Nomor Rekening</label>
                                        <input type="number" name="norek" class="form-control">
                                        
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12">
                                    <label>Nama Bank</label>
                                    <div class="multiselect_div">
                                        <select class="custom-select" id="inputGroupSelect01" name="bank">
                                            <option selected>Choose...</option>
                                            <?php
                                                if(empty($tbl_bank))
                                                {
                                                    echo "<option value='#'>Tidak ada Data</option>";
                                                }else{
                                                    foreach ($tbl_bank as $bank){

                                                        echo "<option value=".$bank->id_bank.">".$bank->bank_name."</option>";
                                                    }
                                            } ?> 
                                            
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Nama Pemilik Rekening</label>
                                        <input type="text" name="an" class="form-control">
                                        
                                    </div>        
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Alamat Bank</label>
                                        <textarea name="branch" class="form-control"></textarea>
                                      
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="email" class="control-label">Kota Bank</label>
                                        <input type="text" name="city" class="form-control">
                                        
                                    </div>
                                </div>
                                
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Keterangan</label>
                                        <textarea name="ket" class="form-control"></textarea>
                                        
                                    </div>
                                </div>
                                
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <button type="submit" class="btn btn-primary btn-round">Submit</button>
                                    <button type="reset" class="btn btn-warning btn-round">Cancel</button>
                                </div>
                                <?php echo form_close(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

