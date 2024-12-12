<div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Edit Data Periode</h2>
                        </div>
                                                
                        <div class="body">                            
                            <h6>Form Periode</h6>                            
                            <hr>
                            <?php foreach($tbl_periode as $value): ?>
                            <?php echo form_open('Periode/update/'.$value->id_periode); ?>
                                <div class="form-group">
                                    <label>Bulan</label>
                                    <select name="bulan" class="form-control" required>
                                        <option <?php if($value->bulan =='Januari') {echo "selected";} ?>  value="Januari">Januari</option>
                                        <option <?php if($value->bulan =='Februari') {echo "selected";} ?>  value="Februari">Februari</option>
                                        <option <?php if($value->bulan =='Maret') {echo "selected";} ?>  value="Maret">Maret</option>
                                        <option <?php if($value->bulan =='April') {echo "selected";} ?>  value="April">April</option>
                                        <option <?php if($value->bulan =='Mei') {echo "selected";} ?>  value="Mei">Mei</option>
                                        <option <?php if($value->bulan =='Juni') {echo "selected";} ?>  value="Juni">Juni</option>
                                        <option <?php if($value->bulan =='Juli') {echo "selected";} ?>  value="Juli">Juli</option>
                                        <option <?php if($value->bulan =='Agustus') {echo "selected";} ?>  value="Agustus">Agustus</option>
                                        <option <?php if($value->bulan =='September') {echo "selected";} ?>  value="September">September</option>
                                        <option <?php if($value->bulan =='Oktober') {echo "selected";} ?>  value="Oktober">Oktober</option>
                                        <option <?php if($value->bulan =='Nopember') {echo "selected";} ?>  value="Nopember">Nopember</option>
                                        <option <?php if($value->bulan =='Desember') {echo "selected";} ?>  value="Desember">Desember</option>
                                        </select>
                                </div>
                                <div class="form-group">
                                    <label>Tahun</label>
                                    <input type="number" name="tahun" value="<?php echo $value->tahun; ?>" class="form-control" required>
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