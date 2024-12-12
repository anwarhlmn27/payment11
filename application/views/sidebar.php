    <div id="left-sidebar" class="sidebar">
        <div class="sidebar_icon">
            <ul class="nav nav-tabs">
                <li class="nav-item"><a class="nav-link" href="page-search-results.html"><i class="fa fa-search"></i></a></li>
                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Home-icon"><i class="fa fa-dashboard"></i></a></li>                
                
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo site_url('Auth/logout');?>"><i class="fa fa-power-off"></i></a>
                    <!-- <a class="nav-link" data-toggle="tab" href="#Setting-icon"><i class="fa fa-cog"></i></a> -->
                </li>
            </ul>
        </div>
        <div class="sidebar_list">
            <div class="tab-content" id="main-menu">
                <div class="tab-pane active" id="Home-icon">
                <nav class="sidebar-nav sidebar-scroll">
                        <ul class="metismenu">
                            <li class="active"><a href="<?php echo base_url('page'); ?>"><i class="icon-speedometer"></i><span>Dashboard</span></a></li>
                            
                            <li class="header"><?php echo $this->session->userdata('nama'); ?></li>
                            <li>
                                <a href="<?php echo base_url('vendor/data_bank'); ?>"><i class="icon-home"></i>Bank</a>
                            </li>
                            
                            <li>
                                <a href="#" class="has-arrow"><i class="icon-user"></i>Karyawan</a>
                                <ul>
                                    <li><a href="<?php echo site_url('Karyawan'); ?>">Data Karyawan</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="<?php echo base_url('Periode'); ?>"><i class="icon-calendar"></i>Periode</a>
                            </li>
                            <li>
                                <a href="#" class="has-arrow"><i class="icon-printer"></i>Payslip</a>
                                <ul>
                                    <li><a href="<?php echo base_url('salary'); ?>">Input Gaji</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#Pages" class="has-arrow"><i class="icon-lock"></i><span>Peb</span></a>
                                <ul>
                                    <li><a href="<?php echo base_url('vendor'); ?>">Vendor</a></li>
                                    <li><a href="<?php echo base_url('vendor/payment_date'); ?>">Tanggal Transaksi</a></li>
                                    <li><a href="<?php echo base_url('vendor/data_payment_vendor'); ?>">Transaksi</a></li>
                                    
                                </ul>
                            </li>
                            
                            <li>
                                <a href="#" class="has-arrow"><i class="icon-wrench"></i>Setting</a>
                                <ul>
                                    <li><a href="<?php echo base_url('Page/role'); ?>"><i class="icon-user"></i>Role</a></li>
                                </ul>
                            </li>
                                                
                            <li>
                            <?php $nik = $this->session->userdata('nik_k'); ?>
                                <a href="<?php echo base_url('Page/change_password/'.$nik); ?>"><i class="icon-user"></i>Ubah Password</a>
                            </li> 
                        </ul>
                    </nav>
                </div>          
                

            </div>
        </div>
    </div>