<div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Input Data Role</h2>
                        </div>
                        <?php foreach($tbl_account as $value) { ?>
                        <div class="body">                              
                            <h6>Form Role</h6>                            
                            <hr>
                            <?php echo form_open('Page/update_role/'.$value->id_account); ?>
                                <div class="form-group">
                                    <label>Nama Karyawan</label>                                    
                                    <input type="text" class="form-control"  value="<?php echo $value->nama; ?>" readonly>
                                    <input type="hidden" name="nik" value="<?php echo $value->nik_k; ?>">
                                </div>
                                
                                <div class="form-group">
                                    <label>Akses</label>                                    
                                    <select name="akses" class="form-control" required>
                                        <option value="<?php echo $value->nik_k; ?>"> <?php echo $value->akses; ?> </option>
                                        <option value="user">User</option>
                                        <option value="admin">Admin</option>
                                    </select>
                                </div>
                                <?php } ?>
                                <br>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </div>
                
            </div>