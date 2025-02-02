<!doctype html>
<html lang="en">

<head>
<title>AKTI | Login</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Qubes Bootstrap 4x admin is super flexible, powerful, clean &amp; modern responsive admin dashboard with unlimited possibilities.">
<meta name="author" content="GetBootstrap, design by: puffintheme.com">

<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- VENDOR CSS -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/animate-css/vivify.min.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/site.min.css">

</head>

<body class="theme-blue">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="m-t-30"><i class="fa fa-cube font-25"></i></div>
            <p>Please wait...</p>        
        </div>
    </div>
<!-- Overlay For Sidebars -->

    <div class="auth-main">
        <div class="auth_div">
            <div class="card">
                <div class="auth_brand">
                    <a class="navbar-brand" href="#"></i> AKTI</a>
                </div>
                <?= $this->session->flashdata('message'); ?>
                <div class="body">
                    <p class="lead">Login to your account</p>
                    <div class="form-group">
                        
                    </div>
                    <?php echo form_open('auth'); ?>
                        <div class="form-group">
                            <label for="signin-email" class="control-label sr-only">Email</label>
                            <input type="email" name="email" value="<?= set_value('email'); ?>" class="form-control round" id="signin-email" placeholder="Email">
                            <?= form_error('email','<small class="text-danger p1-3">','</small>'); ?>
                        </div>
                        <div class="form-group">
                            <label for="signin-password" class="control-label sr-only">Password</label>
                            <input type="password" name="password" class="form-control round" id="signin-password" placeholder="Password">
                            <?= form_error('password','<small class="text-danger p1-3">','</small>'); ?>
                        </div>
                        <div class="form-group clearfix">
                            <label class="fancy-checkbox element-left">
                                <input type="checkbox">
                                <span>Remember me</span>
                            </label>								
                        </div>
                        <button type="submit" class="btn btn-primary btn-round btn-block">LOGIN</button>
                        
                    <?php echo form_close(); ?>
                </div>
            </div>
        </div
        
    </div>

    <!-- END WRAPPER -->
    
<!-- Latest jQuery -->
<script src="<?php echo base_url(); ?>assets/vendor/jquery/jquery-3.3.1.min.js"></script>

<!-- Bootstrap 4x JS  -->
<script src="<?php echo base_url(); ?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="<?php echo base_url(); ?>assets/bundles/vendorscripts.bundle.js"></script>
<script src="<?php echo base_url(); ?>assets/js/common.js"></script>
</body>
</html>
