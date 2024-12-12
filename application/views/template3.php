<?php 
if(!isset($_SESSION['email'])){
    redirect('Auth');
}else { ?>
<!doctype html>
<html lang="en">

<head>
<?php $this->load->view('header'); ?> 
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
<div class="overlay"></div>

<div id="wrapper">
    <?php $this->load->view('navbar'); ?>

    <?php $this->load->view('sidebar'); ?>

    <?php $this->load->view($content); ?>
    
</div>

</body>
</html>
<?php $this->load->view('footer'); ?> 
<?php } ?>