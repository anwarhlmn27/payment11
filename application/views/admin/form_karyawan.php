            <div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Input Data Karyawan</h2>
                        </div>
                                                
                        <div class="body">                            
                            <h6>Data Personal</h6>                            
                            <hr>
                            <?php echo form_open('Karyawan/add_data'); ?>
                                <div class="form-group">
                                    <label>NIK</label>
                                    <input type="text" name="nik" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input type="text" name="nama" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Jabatan</label>
                                    <input type="text" name="jabatan" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Unit</label>
                                    <input type="text" name="unit" class="form-control" required>
                                </div>
                                <!-- Status Karyawan / Tenaga Kependidikan -->
                                <input type="hidden" name="status" value="4">

                                <div class="form-group">
                                    <label>Tanggal Masuk</label>
                                    <input type="date" name="tanggal" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" name="email" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>No KTP</label>
                                    <input type="number" name="ktp" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>No NPWP</label>
                                    <input type="text" name="npwp" class="form-control" required>
                                </div>
                                <br>
                                <h6>Data Bank </h6>
                                <hr>
                                <div class="form-group">
                                    <label>No Rekening</label>
                                    <input type="number" name="norek" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Nama Bank</label>
                                    <select class="form-control" name="kode" required>
                                        <option value='#'>Pilih Bank</option>
                                        <?php
                                        if(empty($tbl_bank))
                                        {
                                            echo "<option value='#'>Tidak ada Data</option>";
                                        }else{
                                            foreach ($tbl_bank as $tabel){

                                                echo "<option value=".$tabel->code_bank.">".$tabel->bank_name."</option>";
                                            }
                                        } ?> 
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Cabang Bank</label>
                                    <input type="text" name="cabang" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Kota Bank</label>
                                    <input type="text" name="kota" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Nama Akun Bank</label>
                                    <input type="text" name="nama_akun" class="form-control" required>
                                </div>
                                <br>
                                <h6>Data BPJS </h6>
                                <hr>
                                <div class="form-group">
                                    <div class="row clearfix">
                                        <div class="col-lg-6 col-md-12">
                                            <label>Ikut BPJS Kesehatan</label>
                                            <br />
                                            
                                            <label class="fancy-radio">
                                                <input type="radio" name="pbpjskes" value="Ya" onclick="text(0)" checked />
                                                <span><i></i>Ya</span>
                                            </label>
                                            <label class="fancy-radio">
                                                <input type="radio" name="pbpjskes" value="Tidak" onclick="text(1)" />
                                                <span><i></i>Tidak</span>
                                            </label>
                                            <p id="error-radio"></p>                                            
                                        </div>
                                        <div class="col-lg-6 col-md-12" >
                                            <div class="form-group" id="mytext">
                                                <label>No BPJS Kesehatan</label>
                                                <input type="number" name="bpjs_kes" class="form-control">
                                            </div>
                                        </div>
                                    </div>                                    
                                </div>
                                <div class="form-group">
                                    <div class="row clearfix">
                                        <div class="col-lg-6 col-md-12">
                                            <label>Ikut BPJS Ketenagakerjaan</label>
                                            <br />
                                            
                                            <label class="fancy-radio">
                                                <input type="radio" name="pbpjstk" value="Ya" onclick="text2(0)" checked />
                                                <span><i></i>Ya</span>
                                            </label>
                                            <label class="fancy-radio">
                                                <input type="radio" name="pbpjstk" value="Tidak" onclick="text2(1)" />
                                                <span><i></i>Tidak</span>
                                            </label>
                                            <p id="error-radio"></p>                                            
                                        </div>
                                        <div class="col-lg-6 col-md-12" >
                                            <div class="form-group" id="mytext2">
                                                <label>No BPJS Ketenagakerjaan</label>
                                                <input type="number" name="bpjs_tk" class="form-control">
                                            </div>
                                        </div>
                                    </div>                                    
                                </div>
                                <div class="form-group">
                                    <label>PTKP</label>
                                    <input type="number" name="ptkp" class="form-control" required>
                                </div>
                                <br>
                                <h6>Data Salary </h6>
                                <hr>
                                <div class="form-group">
                                    <label>Gaji Pokok</label>
                                    <input type="number" name="gp" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Transport</label>
                                    <input type="number" name="transport" class="form-control" required>
                                </div>                                
                                <div class="form-group">
                                    <label>Komunikasi</label>
                                    <input type="number" name="comm" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Makan</label>
                                    <input type="number" name="makan" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Bpk</label>
                                    <input type="number" name="bpk" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Keterangan</label>
                                    <textarea name="ket" class="form-control"></textarea>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </div>
                
            </div>
            <script>
                function text(x) {
                if (x == 0) document.getElementById("mytext").style.display = "block"; 
                else document.getElementById("mytext").style.display = "none";
                return;
                }
            </script>
            <script>
                function text2(x) {
                if (x == 0) document.getElementById("mytext2").style.display = "block"; 
                else document.getElementById("mytext2").style.display = "none";
                return;
                }
            </script>