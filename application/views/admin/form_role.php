<div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Input Data Role</h2>
                        </div>
                                                
                        <div class="body">                              
                            <h6>Form Role</h6>                            
                            <hr>
                            <?php echo form_open('Page/add_data_role'); ?>
                                <div class="form-group">
                                    <label>Nama Karyawan</label>                                    
                                    <select class="form-control" name="nik" required>
                                        <option value='#'>Pilih Karyawan</option>
                                        <?php
                                        if(empty($tbl_karyawan))
                                        {
                                            echo "<option value='#'>Tidak ada Data</option>";
                                        }else{
                                            foreach ($tbl_karyawan as $tabel){

                                                echo "<option value=".$tabel->nik_k.">".$tabel->nama_k."</option>";
                                            }
                                        } ?> 
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="text" name="password" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Akses</label>                                    
                                    <select name="akses" class="form-control" required>
                                        <option value="#">  Pilih Akses </option>
                                        <option value="user">User</option>
                                        <option value="admin">Admin</option>
                                    </select>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </div>
                
            </div>