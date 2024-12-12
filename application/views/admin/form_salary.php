<div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Input Data Salary</h2>
                        </div>
                                                
                        <div class="body">                            
                            <h6>Form Salary</h6>                            
                            <hr>
                            <?php echo form_open('Salary/add_data_k'); ?>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-6 control-label">Nama Karyawan</label>
                                <div class="col-sm-5">
                                <select class="form-control" name="nik">
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
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-2 control-label">Bulan</label>
                                <div class="col-sm-5">
                                <select class="form-control" name="bulan">
                                    <option value='#'>Pilih Bulan</option>
                                <?php
                                if(empty($tbl_periode))
                                {
                                    echo "<option value='#'>Tidak ada Data</option>";
                                }else{
                                    foreach ($tbl_periode as $date){

                                        echo "<option value=".$date->id_periode.">".$date->bulan.' - '.$date->tahun."</option>";
                                    }
                                } ?> 
                                </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-6 control-label">Jumlah jam Overtime <p style="font-size: 10px; font-style: italic;">(Jika desimal Harus menggunakan tanda titik ".")</p></label>
                                <div class="col-sm-5">
                                <input type="text" name="ot" class="form-control" id="inputtext" placeholder="jam overtime" required>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-6 control-label">Jumlah hari makan</label>
                                <div class="col-sm-5">
                                <input type="text" name="makan" onkeypress="return isNumberKey(event);" class="form-control" id="inputtext" placeholder="Meals" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-6 control-label">Jumlah Tunjangan Shift</label>
                                <div class="col-sm-5">
                                <input type="text" name="shift" onkeypress="return isNumberKey(event);" class="form-control" id="inputtext" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-6 control-label">Jumlah Tunjangan 3T</label>
                                <div class="col-sm-5">
                                <input type="text" name="3t" onkeypress="return isNumberKey(event);" class="form-control" id="inputtext" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-2 control-label">Rapel Overtime</label>
                                <div class="col-sm-5">
                                <input type="text" name="rapel_ot" onkeypress="return isNumberKey(event);" class="form-control" id="inputtext" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-2 control-label">Rapel Gaji</label>
                                <div class="col-sm-5">
                                <input type="text" name="rapel_gaji" onkeypress="return isNumberKey(event);" class="form-control" id="inputtext" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-2 control-label">THR/Apresiasi <p style="font-size: 10px; font-style: italic;">(Jika desimal Harus menggunakan tanda titik ".")</p></label>
                                <div class="col-sm-5">
                                <input type="text" name="thr" class="form-control" id="inputtext" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputtext" class="col-sm-6 control-label">Tidak hadir tanpa upah</label>
                                <div class="col-sm-5">
                                <input type="text" name="tpu" class="form-control" id="inputtext" required>
                                </div>
                            </div>
                            <div class="box-header">
                                <h3 class="box-title">Data Pph</h3>
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-2 control-label">Penggantian Pph</label>
                                <div class="col-sm-5">
                                <input type="text" name="ppph" class="form-control" id="inputtext" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-2 control-label">Lebih bayar Pph</label>
                                <div class="col-sm-5">
                                <input type="text" name="lpph" class="form-control" id="inputtext" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-2 control-label">Kurang bayar Pph</label>
                                <div class="col-sm-5">
                                <input type="text" name="kpph" class="form-control" id="inputtext" required>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-6 control-label">Tanggal Release Payslip</label>
                                <div class="col-sm-5">
                                <input type="date" name="tgl_release" class="form-control" id="inputtext" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-2 control-label">Keterangan</label>
                                <div class="col-sm-5">
                                <textarea name="ket" class="form-control"></textarea>
                                </div>
                            </div>
                                <br>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </div>
                
            </div>