<div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Input Data Sortir</h2>
                        </div>
                        <?= $this->session->flashdata('message'); ?>
                        <div class="body">                            
                            <h6>Form Sorting Salary</h6>                            
                            <hr>
                            <?php echo form_open('salary/show_data_salary'); ?>
                                <div class="form-group">
                                    <label>Bulan Payroll</label>
                                    <select class="form-control" name="periode" required>
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
                                
                                <br>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </div>
                
            </div>