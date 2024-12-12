<div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Input Data Bank</h2>
                        </div>
                                                
                        <div class="body">                            
                            <h6>Data Bank</h6>                            
                            <hr>
                            <?php foreach($tbl_bank as $row): ?>
                            <?php echo form_open('vendor/update_bank/'.$row->id_bank); ?>
                                <div class="form-group">
                                    <label>Kode Bank</label>
                                    <input type="number" name="kode_bank" value="<?php echo $row->code_bank; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Nama Bank</label>
                                    <input type="text" name="nama_bank" value="<?php echo $row->bank_name; ?>" class="form-control" required>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            <?php echo form_close(); ?>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
</div>