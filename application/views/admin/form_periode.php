<div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Input Data Periode</h2>
                        </div>
                                                
                        <div class="body">                            
                            <h6>Form Periode</h6>                            
                            <hr>
                            <?php echo form_open('periode/add_data'); ?>
                                <div class="form-group">
                                    <label>Bulan</label>                                
                                    <select name="bulan" class="form-control" required>
                                        <option value="#">  Pilih Bulan </option>
                                        <option value="Januari">Januari</option>
                                        <option value="Februari">Februari</option>
                                        <option value="Maret">Maret</option>
                                        <option value="April">April</option>
                                        <option value="Mei">Mei</option>
                                        <option value="Juni">Juni</option>
                                        <option value="Juli">Juli</option>
                                        <option value="Agustus">Agustus</option>
                                        <option value="September">September</option>
                                        <option value="Oktober">Oktober</option>
                                        <option value="Nopember">Nopember</option>
                                        <option value="Desember">Desember</option>
                                        </select>
                                </div>
                                <div class="form-group">
                                    <label>Tahun</label>
                                    <input type="number" name="tahun" class="form-control" required>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </div>
                
            </div>