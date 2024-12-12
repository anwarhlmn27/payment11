
            <!-- Masked Input -->
            <div class="block-header">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-12">
                        <h1>Form Vendor</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-cube"></i></a></li>
                            <li class="breadcrumb-item"><a href="<?php echo base_url('vendor'); ?>">Vendor</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Form Vendor<li>
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
                            <?php foreach ($tbl_vendor as $value): ?>
                            <?php echo form_open(site_url('vendor/update/'.$value->id_v), array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data')); ?>
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="text" class="control-label">Kode Vendor</label>
                                        <input type="text" name="kode" value="<?php echo $value->kode_vendor; ?>" class="form-control">
                                        <span class="help-block">Kode</span>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Nama Vendor</label>
                                        <input type="text" name="nama" value="<?php echo $value->nama_vendor; ?>" class="form-control">
                                        
                                    </div>        
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Telepon</label>
                                        <input type="number" name="telpon" value="<?php echo $value->telpon; ?>" class="form-control">
                                        <span class="help-block">08....</span>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="email" class="control-label">Email</label>
                                        <input type="email" name="email" value="<?php echo $value->email; ?>" class="form-control">
                                        <span class="help-block">email@mail.com</span>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="npwp" class="control-label">NPWP</label>
                                        <input type="number" name="npwp" value="<?php echo $value->npwp; ?>" class="form-control">
                                        
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Nomor Rekening</label>
                                        <input type="number" name="norek" value="<?php echo $value->rek_vendor; ?>" class="form-control">
                                        
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12">
                                    <label>Nama Bank</label>
                                    <div class="multiselect_div">
                                        <select class="custom-select" id="inputGroupSelect01" name="bank">
                                        <?php
                                            $id_bank = $value->id_bank;
                                            $bank  = $this->db->get_where('tbl_bank',array('id_bank'=> $id_bank))->result_array();
                                            foreach($bank as $d){?> <?php echo $d['bank_name']; ?>   
                                            <?php } ?>
                                        </option>
                                        <!-- <option value='#'>Pilih Bank</option> -->
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
                                        <input type="text" name="an" value="<?php echo $value->atas_nama; ?>" class="form-control">
                                        
                                    </div>        
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Alamat Bank</label>
                                        <textarea name="branch" class="form-control"><?php echo $value->address_bank; ?></textarea>
                                      
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="email" class="control-label">Kota Bank</label>
                                        <input type="text" name="city" value="<?php echo $value->bank_city; ?>" class="form-control">
                                        
                                    </div>
                                </div>
                                
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label">Keterangan</label>
                                        <textarea name="ket" class="form-control"><?php echo $value->ket; ?></textarea>
                                        
                                    </div>
                                </div>
                                
                                <div class="col-lg-4 col-md-6 col-sm-12">
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

