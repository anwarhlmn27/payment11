<div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Input Data Karyawan</h2>
                        </div>
                                                
                        <div class="body">                            
                            <h6>Data Personal</h6>                            
                            <hr>
                            <?php foreach($tbl_karyawan as $row): ?>
                            <?php echo form_open('Karyawan/update/'.$row->id_karyawan); ?>
                                <div class="form-group">
                                    <label>NIK</label>
                                    <input type="text" name="nik" value="<?php echo $row->nik_k; ?>" class="form-control" readonly>
                                </div>
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input type="text" name="nama" value="<?php echo $row->nama_k; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Jabatan</label>
                                    <input type="text" name="jabatan" value="<?php echo $row->jabatan; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Unit</label>
                                    <input type="text" name="unit" value="<?php echo $row->unit; ?>" class="form-control" required>
                                </div>
                                <!-- Status Karyawan / Tenaga Kependidikan -->
                                <input type="hidden" name="status" value="4">

                                <div class="form-group">
                                    <label>Tanggal Masuk</label>
                                    <input type="date" name="tanggal" value="<?php echo $row->tgl_masuk; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" name="email" value="<?php echo $row->email; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>No KTP</label>
                                    <input type="number" name="ktp" value="<?php echo $row->no_ktp; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>No NPWP</label>
                                    <input type="text" name="npwp" value="<?php echo $row->no_npwp; ?>" class="form-control" required>
                                </div>
                                <br>
                                <h6>Data Bank </h6>
                                <hr>
                                <div class="form-group">
                                    <label>No Rekening</label>
                                    <input type="number" name="norek" value="<?php echo $row->no_rek; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Nama Bank</label>
                                    <select class="form-control" name="kode" required>
                                        <option value='<?php echo $row->kode_bank; ?>'><?php echo $row->nama_bank; ?></option>
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
                                    <input type="text" name="cabang" value="<?php echo $row->cabang_bank; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Kota Bank</label>
                                    <input type="text" name="kota" value="<?php echo $row->kota_bank; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Nama Akun Bank</label>
                                    <input type="text" name="nama_akun" value="<?php echo $row->nama_akun_bank; ?>" class="form-control" required>
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
                                                <input type="radio" name="pbpjskes" value="Ya" onclick="text(0)" <?php if($row->pbpjskes=="Ya"){echo "checked";}?>>
                                                <span><i></i>Ya</span>
                                            </label>
                                            <label class="fancy-radio">
                                                <input type="radio" name="pbpjskes" value="Tidak" onclick="text(1)" <?php if($row->pbpjskes=="Tidak"){echo "checked";}?>>
                                                <span><i></i>Tidak</span>
                                            </label>
                                            <p id="error-radio"></p>                                            
                                        </div>
                                        <div class="col-lg-6 col-md-12" >
                                            <div class="form-group" id="mytext">
                                                <label>No BPJS Kesehatan</label>
                                                <input type="number" name="bpjs_kes" value="<?php echo $row->no_bpjs_kes; ?>" class="form-control">
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
                                                <input type="radio" name="pbpjstk" value="Ya" onclick="text2(0)" <?php if($row->pbpjstk=="Ya"){echo "checked";}?> >
                                                <span><i></i>Ya</span>
                                            </label>
                                            <label class="fancy-radio">
                                                <input type="radio" name="pbpjstk" value="Tidak" onclick="text2(1)" <?php if($row->pbpjstk=="Tidak"){echo "checked";}?> >
                                                <span><i></i>Tidak</span>
                                            </label>
                                            <p id="error-radio"></p>                                            
                                        </div>
                                        <div class="col-lg-6 col-md-12" >
                                            <div class="form-group" id="mytext2">
                                                <label>No BPJS Ketenagakerjaan</label>
                                                <input type="number" name="bpjs_tk" value="<?php echo $row->no_bpjs_tk; ?>" class="form-control">
                                            </div>
                                        </div>
                                    </div>                                    
                                </div>
                                <div class="form-group">
                                    <label>PTKP</label>
                                    <input type="number" name="ptkp" value="<?php echo $row->ptkp; ?>" class="form-control" required>
                                </div>
                                <br>
                                <h6>Data Salary </h6>
                                <hr>
                                <div class="form-group">
                                    <label>Gaji Pokok</label>
                                    <input type="number" name="gp" value="<?php echo $row->basic_salary; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Transport</label>
                                    <input type="number" name="transport" value="<?php echo $row->transport; ?>" class="form-control" required>
                                </div>                                
                                <div class="form-group">
                                    <label>Komunikasi</label>
                                    <input type="number" name="comm" value="<?php echo $row->komunikasi; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Makan</label>
                                    <input type="number" name="makan" value="<?php echo $row->makan; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Bpk</label>
                                    <input type="number" name="bpk" value="<?php echo $row->bpk; ?>" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Keterangan</label>
                                    <textarea name="ket" class="form-control"><?php echo $row->ket; ?></textarea>
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