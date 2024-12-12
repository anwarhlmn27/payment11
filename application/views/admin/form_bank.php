<div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Input Data Bank</h2>
                        </div>
                                                
                        <div class="body">                            
                            <h6>Form Bank</h6>                            
                            <hr>
                            <?php echo form_open('vendor/add_bank'); ?>
                                <div class="form-group">
                                    <label>Kode Bank</label>
                                    <input type="number" name="kode_bank" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Nama Bank</label>
                                    <input type="text" name="nama_bank" class="form-control" required>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </div>
                
            </div>