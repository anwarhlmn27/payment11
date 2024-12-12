        <div class="block-header">
        <?= $this->session->flashdata('message'); ?>
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h1>Dashboard</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                          <li class="breadcrumb-item"><a href="#"><i class="fa fa-cube"></i></a></li>
                          <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                        </ol>
                    </nav>
                </div>            
                
            </div>
        </div>

        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="body">
                            <div class="w_summary">
                                <div class="s_chart">
                                    <span class="chart">8,5,2,9,6,3,4,5,6,7</span>
                                </div>
                                <div class="s_detail">
                                    <h2 class="font700 mb-0"><a href="<?php echo base_url('Karyawan'); ?>"><?php echo $count; ?></a></h2>
                                    <span class="icon-user"></i> Total Karyawan</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="body">
                            <div class="w_summary">
                                <div class="s_chart">
                                    <span class="chart">6,3,2,5,8,9,5,4,2,3</span>
                                </div>
                                <div class="s_detail">
                                    <h2 class="font700 mb-0"><a href="<?php echo base_url('Vendor'); ?>"><?php echo $count2; ?></a></h2>
                                    <span class="icon-user"></i> Total Vendor</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="body">
                            <div class="w_summary">
                                <div class="s_chart">
                                    <span class="chart">8,5,2,9,6,3,4,5,6,7</span>
                                </div>
                                <div class="s_detail">
                                    <h2 class="font700 mb-0"><a href="<?php echo base_url('Vendor/payment_date'); ?>"><?php echo $count3; ?></a></h2>
                                    <span class="icon-calculator"></i> Total Transaksi</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="body">
                            <div class="w_summary">
                                <div class="s_chart">
                                    <span class="chart">8,5,2,9,6,3,4,5,6,7</span>
                                </div>
                                <div class="s_detail">
                                    <h2 class="font700 mb-0"><a href="<?php echo base_url('Periode'); ?>"><?php echo $count4; ?></a></h2>
                                    <span class="icon-calendar"></i> Tota Periode</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          
        </div>
      
        <div class="col-md-8 col-sm-6">
            <h5>Selamat Datang</h5>
            <h7><?php echo $this->session->userdata('nama'); ?></h7>
            <p>di <strong>Sistem</strong> Akademi Komunitas Toyota Indonesia</p>
        </div> 