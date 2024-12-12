<nav class="navbar navbar-fixed-top">
        <div class="container-fluid">

            <div class="navbar-left">
                <div class="navbar-brand">
                    <a class="small_menu_btn" href="javascript:void(0);"><i class="fa fa-align-left"></i></a>
                    <a href="index.html"><span>AKTI</span></a>                    
                </div>                
                <form id="navbar-search" class="navbar-form search-form">
                    <input value="" class="form-control" placeholder="Search here..." type="text">
                    <button type="button" class="btn btn-default"><i class="icon-magnifier"></i></button>
                </form>
            </div>
            
            <div class="navbar-right">
                <div id="navbar-menu">
                    <ul class="nav navbar-nav">                        
                        <li><a href="<?php echo base_url('Auth/logout');?>" class="icon-menu"><i class="fa fa-power-off"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>