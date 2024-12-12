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
                            <li class="active"><a href="<?php echo base_url('page/user'); ?>"><i class="icon-speedometer"></i><span>Dashboard</span></a></li>
                            <li class="header"><?php echo $this->session->userdata('nama'); ?></li>
                            <?php $nik = $this->session->userdata('nik_k'); ?>
                            <li>
                                <a href="#Pages" class="has-arrow"><i class="icon-calendar"></i><span>Data Salary</span></a>
                                <ul>
                                    <li><a href="<?php echo base_url('salary/view_salary_e/'.$nik); ?>">Salary</a></li>
                                    
                                </ul>
                            </li>
                            <li>
                                <a href="#Invoices" class="has-arrow"><i class="icon-wrench"></i>Setting</a>
                                <ul>                                    
                                    <li><a href="<?php echo base_url('page/change_password2/'.$nik); ?>">Ubah Password</a></li>
                                    
                                </ul>
                            </li>
                            
                        </ul>
                    </nav>
                </div>          
            </div>
        </div>
    </div>