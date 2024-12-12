<div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Input Data Bank</h2>
                        </div>
                        <?php foreach($tbl_account as $value) { ?>                        
                        <div class="body">                            
                            <h6>Form Bank</h6>                            
                            <hr>
                            <?php echo form_open('Page/update_password2/'.$value->id_account); ?>
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input type="text" class="form-control" value="<?php echo $value->nama; ?>" readonly>
                                    <input type="hidden" name="nik" value="<?php echo $value->nik_k; ?>">
                                </div>
                                <div class="form-group">
                                    <label>New Password</label>
                                    <input type="text" name="password" class="form-control" required>
                                </div>
                                
                                <br>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            <?php echo form_close(); ?>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                
            </div>