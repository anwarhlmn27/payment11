<!doctype html>
<html lang="en">

<head>
<title>Qubes | Dashboard</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Qubes Bootstrap 4x admin is super flexible, powerful, clean &amp; modern responsive admin dashboard with unlimited possibilities.">
<meta name="keywords" content="admin template, Qubes admin template, dashboard template, flat admin template, responsive admin template, web app, Light Dark version">
<meta name="author" content="GetBootstrap, design by: puffintheme.com">

<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- VENDOR CSS -->
<link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../assets/vendor/animate-css/vivify.min.css">

<link rel="stylesheet" href="../assets/vendor/c3/c3.min.css"/>
<link rel="stylesheet" href="../assets/vendor/chartist/css/chartist.min.css">
<link rel="stylesheet" href="../assets/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="assets/css/site.min.css">

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

    <nav class="navbar navbar-fixed-top">
        <div class="container-fluid">

            <div class="navbar-left">
                <div class="navbar-brand">
                    <a class="small_menu_btn" href="javascript:void(0);"><i class="fa fa-align-left"></i></a>
                    <a href="index.html"><span>Qubes</span></a>                    
                </div>                
                <form id="navbar-search" class="navbar-form search-form">
                    <input value="" class="form-control" placeholder="Search here..." type="text">
                    <button type="button" class="btn btn-default"><i class="icon-magnifier"></i></button>
                </form>
            </div>
            
            <div class="navbar-right">
                <div id="navbar-menu">
                    <ul class="nav navbar-nav">
                        <li><a href="#" class="icon-menu reports">Reports</a></li>
                        <li><a href="#" class="icon-menu project">Project</a></li>
                        <li><a href="#" class="icon-menu settings">Settings</a></li>                        
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle icon-menu" data-toggle="dropdown"><i class="fa fa-envelope"></i>
                                <span class="notification-dot bg-green"></span>
                            </a>
                            <ul class="dropdown-menu right_chat email vivify fadeIn">
                                <li class="header">You have 4 New eMail</li>                                
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <div class="avtar-pic w35 lbg-indigo"><span>FC</span></div>
                                            <div class="media-body">
                                                <span class="name">Folisise Chosielie <small class="float-right">12min ago</small></span>
                                                <span class="message">New Messages</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object" src="../assets/images/xs/avatar5.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">Louis Henry <small class="float-right">38min ago</small></span>
                                                <span class="message">Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <div class="avtar-pic w35 lbg-red"><span>FC</span></div>
                                            <div class="media-body">
                                                <span class="name">James Wert <small class="float-right">Just now</small></span>
                                                <span class="message">It is a long established fact that a reader will be distracted</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <div class="avtar-pic w35 lbg-green"><span>FC</span></div>
                                            <div class="media-body">
                                                <span class="name">James Wert <small class="float-right">Just now</small></span>
                                                <span class="message">The point of using Lorem Ipsum is that it has a more</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>                                
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media mb-0">
                                            <img class="media-object" src="../assets/images/xs/avatar2.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">Debra Stewart <small class="float-right">2hr ago</small></span>
                                                <span class="message">Nullam vel sem. Nullam vel sem.</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle icon-menu" data-toggle="dropdown"><i class="fa fa-bell"></i>
                                <span class="notification-dot bg-azura"></span>
                            </a>
                            <ul class="dropdown-menu feeds_widget vivify fadeIn">
                                <li class="header">You have 4 New Notifications</li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="feeds-left lbg-red"><i class="fa fa-check"></i></div>
                                        <div class="feeds-body">
                                            <h4 class="title text-danger">Issue Fixed <small class="float-right text-muted">9:10 AM</small></h4>
                                            <small>WE have fix all Design bug with Responsive</small>
                                        </div>
                                    </a>
                                </li>                               
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="feeds-left lbg-info"><i class="fa fa-user"></i></div>
                                        <div class="feeds-body">
                                            <h4 class="title text-info">New User <small class="float-right text-muted">9:15 AM</small></h4>
                                            <small>I feel great! Thanks team</small>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="feeds-left lbg-orange"><i class="fa fa-question-circle"></i></div>
                                        <div class="feeds-body">
                                            <h4 class="title text-warning">Server Warning <small class="float-right text-muted">9:17 AM</small></h4>
                                            <small>Your connection is not private</small>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="feeds-left lbg-green"><i class="fa fa-thumbs-o-up"></i></div>
                                        <div class="feeds-body">
                                            <h4 class="title text-success">2 New Feedback <small class="float-right text-muted">9:22 AM</small></h4>
                                            <small>It will give a smart finishing to your site</small>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="javascript:void(0);" class="right_toggle icon-menu" title="Right Menu"><i class="fa fa-comments"></i><span class="notification-dot bg-pink"></span></a></li>
                        <li><a href="page-login.html" class="icon-menu"><i class="fa fa-power-off"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <div id="rightbar" class="rightbar">
        <div class="slim_scroll">
            <div class="chat_detail vivify fadeIn delay-100">
                <ul class="chat-widget clearfix">
                    <li class="left float-left">
                        <div class="avtar-pic w35 bg-pink"><span>KG</span></div>
                        <div class="chat-info">       
                            <span class="message">Hello, John<br>What is the update on Project X?</span>
                        </div>
                    </li>
                    <li class="right">
                        <img src="../assets/images/xs/avatar1.jpg" class="rounded" alt="">
                        <div class="chat-info">
                            <span class="message">Hi, Alizee<br> It is almost completed. I will send you an email later today.</span>
                        </div>
                    </li>
                    <li class="left float-left">
                        <div class="avtar-pic w35 bg-pink"><span>KG</span></div>
                        <div class="chat-info">
                            <span class="message">That's great. Will catch you in evening.</span>
                        </div>
                    </li>
                    <li class="right">
                        <img src="../assets/images/xs/avatar1.jpg" class="rounded" alt="">
                        <div class="chat-info">
                            <span class="message">Sure we'will have a blast today.</span>
                        </div>
                    </li>
                </ul>
                <div class="input-group p-t-15">
                    <textarea rows="3" class="form-control" placeholder="Enter text here..."></textarea>
                </div>
            </div>
        </div>
    </div>

    <div id="left-sidebar" class="sidebar">
        <div class="sidebar_icon">
            <ul class="nav nav-tabs">
                <li class="nav-item"><a class="nav-link" href="page-search-results.html"><i class="fa fa-search"></i></a></li>
                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Home-icon"><i class="fa fa-dashboard"></i></a></li>                
                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Envelope-icon"><i class="fa fa-envelope"></i></a></li>
                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Components-icon"><i class="icon-diamond"></i></a></li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#Profile-icon"><i class="fa fa-user"></i></a>
                    <a class="nav-link" data-toggle="tab" href="#Setting-icon"><i class="fa fa-cog"></i></a>
                </li>
            </ul>
        </div>
        <div class="sidebar_list">
            <div class="tab-content" id="main-menu">
                <div class="tab-pane active" id="Home-icon">
                    <nav class="sidebar-nav sidebar-scroll">
                        <ul class="metismenu">
                            <li class="active"><a href="index.html"><i class="icon-speedometer"></i><span>Dashboard</span></a></li>
                            <li class="header">Ready App</li>
                            <li><a href="app-campaign.html"><i class="icon-paper-plane"></i><span>Campaign</span></a></li>
                            <li><a href="app-chat.html"><i class="icon-bubbles"></i><span>Messenger</span></a></li>
                            <li><a href="app-calendar.html"><i class="icon-calendar"></i><span>Calendar</span></a></li>
                            <li><a href="app-contact.html"><i class="icon-book-open"></i><span>Contact List</span></a></li>
                            <li><a href="app-todo.html"><i class="icon-check"></i><span>ToDo List</span></a></li>
                            <li><a href="app-support-ticket.html"><i class="icon-earphones-alt"></i><span>Support Ticket</span></a></li>
                            <li><a href="page-timeline.html"><i class="icon-list"></i><span>Timeline</span></a></li>
                            <li class="header">Extra</li>
                            <li><a href="page-profile.html"><i class="icon-user"></i><span>Profile</span></a></li>
                            <li><a href="app-social.html"><i class="icon-share"></i><span>Social</span></a></li>
                            <li><a href="app-news.html"><i class="icon-microphone"></i><span>News</span></a></li>
                            <li>
                                <a href="#Pages" class="has-arrow"><i class="icon-lock"></i><span>Authentication</span></a>
                                <ul>
                                    <li><a href="page-login.html">Login</a></li>
                                    <li><a href="page-register.html">Register</a></li>
                                    <li><a href="page-forgot-password.html">Forgot Password</a></li>
                                    <li><a href="page-404.html">Page 404</a></li>
                                    <li><a href="page-maintenance.html">Maintenance</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#Invoices" class="has-arrow"><i class="icon-printer"></i>Invoices</a>
                                <ul>
                                    <li><a href="page-invoices.html">Invoices List</a></li>
                                    <li><a href="page-invoices-detail.html">Invoices Detail</a></li>
                                </ul>
                            </li>
                            <li><a href="widgets.html"><i class="icon-puzzle"></i><span>Widgets</span></a></li>
                            <li><a href="page-gallery.html"><i class="icon-picture"></i><span>Image Gallery</span></a></li>
                            <li><a href="page-pricing.html"><i class="icon-credit-card"></i><span>Pricing</span></a></li>                            
                            <li><a href="page-blank.html"><i class="icon-tag"></i><span>Blank Page</span></a></li>
                            <li>
                                <a href="#icon" class="has-arrow"><i class="icon-tag"></i><span>Icons</span></a>
                                <ul>
                                    <li><a href="ui-icons.html">FontAwesome</a></li>
                                    <li><a href="ui-icons-line.html">Simple Line</a></li>
                                    <li><a href="ui-icons-themify.html">Themify Icon</a></li>
                                </ul>
                            </li>                            
                            <li><a href="map-jvectormap.html"><i class="icon-map"></i><span>jVector Map</span></a></li>
                        </ul>
                    </nav>
                </div>
                <div class="tab-pane" id="Profile-icon">
                    <nav class="sidebar-nav sidebar-scroll">
                        <div class="user-detail">
                            <div class="text-center mb-3">
                                <img class="img-thumbnail rounded-circle" src="../assets/images/sm/avatar1.jpg" alt="">
                                <h6 class="mt-3 mb-0">Michelle Green</h6>
                                <div class="text-center text-muted">Manager</div>
                                <hr>
                                <small class="text-muted">Address: </small>
                                <p> San Francisco</p>
                                <small class="text-muted">Email address: </small>
                                <p>louispierce@example.com</p>
                                <small class="text-muted">Mobile: </small>
                                <p>+ 202-222-2121</p>
                                <a href="page-profile.html" class="btn btn-block btn-success mb-2" title="">View Profile</a>
                                <a href="../documentation/index.html" class="btn btn-block btn-info">Documentation</a>
                            </div>
                            <hr>
                            <div class="card-text">
                                <div class="mt-0">
                                    <small class="float-right text-muted">10/200 GB</small>
                                    <span>Memory</span>
                                    <div class="progress progress-xxs">
                                        <div style="width: 60%;" class="progress-bar"></div>
                                    </div>
                                </div>
                                <div class="mt-4">
                                    <small class="float-right text-muted">40 MB</small>
                                    <span>Bandwidth</span>
                                    <div class="progress progress-xxs">
                                        <div style="width: 50%;" class="progress-bar"></div>
                                    </div>
                                </div>
                                <div class="mt-4">
                                    <small class="float-right text-muted">73%</small>
                                    <span>Activity</span>
                                    <div class="progress progress-xxs">
                                        <div style="width: 40%;" class="progress-bar"></div>
                                    </div>
                                </div>
                                <div class="mt-4">
                                    <small class="float-right text-muted">400 GB</small>
                                    <span>FTP</span>
                                    <div class="progress progress-xxs mb-0">
                                        <div style="width: 80%;" class="progress-bar bg-danger"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
                <div class="tab-pane" id="Envelope-icon">
                    <nav class="sidebar-nav sidebar-scroll">
                        <a href="app-compose.html" class="btn btn-danger btn-block mb-3">Compose</a>
                        <ul class="metismenu">
                            <li class="active"><a href="app-inbox.html"><i class="icon-drawer"></i><span>Inbox</span><span class="badge badge-primary float-right">6</span></a></li>
                            <li><a href="javascript:void(0);"><i class="icon-cursor"></i><span>Sent</span><span class="badge badge-warning float-right">6</span></a></li>
                            <li><a href="javascript:void(0);"><i class="icon-envelope-open"></i><span>Draft</span></a></li>
                            <li><a href="javascript:void(0);"><i class="icon-action-redo"></i><span>Outbox</span></a></li>
                            <li><a href="javascript:void(0);"><i class="icon-trash"></i><span>Trash</span></a></li>
                            <li class="header">Labels</li>
                            <li><a href="javascript:void(0);"><i class="fa fa-circle-o text-danger"></i><span>Workshop</span></a></li>
                            <li><a href="javascript:void(0);"><i class="fa fa-circle-o text-info"></i><span>Private</span></a></li>
                            <li><a href="javascript:void(0);"><i class="fa fa-circle-o text-dark"></i><span>Paypal</span></a></li>
                            <li><a href="javascript:void(0);"><i class="fa fa-circle-o text-primary"></i><span>Comapny</span></a></li>
                        </ul>
                    </nav>
                </div>
                <div class="tab-pane" id="Components-icon">
                    <nav class="sidebar-nav sidebar-scroll">
                        <ul class="metismenu">
                            <li><a href="ui-helper-class.html"><i class="icon-info"></i>Helper Classes</a></li>
                            <li><a href="ui-bootstrap.html"><i class="icon-key"></i>Bootstrap UI</a></li>
                            <li><a href="ui-typography.html"><i class="icon-target"></i>Typography</a></li>
                            <li><a href="ui-colors.html"><i class="icon-drop"></i>Colors</a></li>
                            <li><a href="ui-buttons.html"><i class="icon-tag"></i>Buttons</a></li>
                            <li><a href="ui-tabs.html"><i class="icon-tag"></i>Tabs</a></li>
                            <li><a href="ui-progressbars.html"><i class="icon-graph"></i>Progress Bars</a></li>
                            <li><a href="ui-modals.html"><i class="icon-tag"></i>Modals</a></li>
                            <li><a href="ui-notifications.html"><i class="icon-question"></i>Notifications</a></li>
                            <li><a href="ui-dialogs.html"><i class="icon-tag"></i>Dialogs</a></li>
                            <li><a href="ui-list-group.html"><i class="icon-list"></i>List Group</a></li>
                            <li><a href="ui-media-object.html"><i class="icon-tag"></i>Media Object</a></li>
                            <li><a href="ui-nestable.html"><i class="icon-loop"></i>Nestable</a></li>
                            <li><a href="ui-range-sliders.html"><i class="icon-equalizer"></i>Range Sliders</a></li>
                            <li>
                                <a href="#Charts" class="has-arrow"><i class="icon-bar-chart"></i><span>Charts</span></a>
                                <ul>
                                    <li><a href="chart-c3.html">C3 Charts</a></li>
                                    <li><a href="chart-chartjs.html">ChartJS</a></li>
                                    <li><a href="chart-morris.html">Morris Charts</a></li>
                                    <li><a href="chart-flot.html">Flot Charts</a></li>
                                    <li><a href="chart-sparkline.html">Sparkline Chart</a></li>
                                    <li><a href="chart-jquery-knob.html">Jquery Knob</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#Forms" class="has-arrow"><i class="icon-layers"></i><span>Forms</span></a>
                                <ul>
                                    <li><a href="forms-basic.html">Basic Elements</a></li>
                                    <li><a href="forms-advanced.html">Advanced Elements</a></li>
                                    <li><a href="forms-validation.html">Form Validation</a></li>
                                    <li><a href="forms-wizard.html">Form Wizard</a></li>
                                    <li><a href="forms-summernote.html">Summernote</a></li>
                                    <li><a href="forms-dragdropupload.html">Drag &amp; Drop Upload</a></li>                            
                                    <li><a href="forms-editors.html">CKEditor</a></li>
                                    <li><a href="forms-markdown.html">Markdown</a></li>
                                    <li><a href="forms-cropping.html">Image Cropping</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#Tables" class="has-arrow"><i class="icon-film"></i><span>Tables</span></a>
                                <ul>
                                    <li><a href="table-normal.html">Normal Tables</a></li>
                                    <li><a href="table-color.html">Tables Color</a></li>
                                    <li><a href="table-jquery-datatable.html">Jquery Datatables</a></li>
                                    <li><a href="table-editable.html">Editable Tables</a></li>                            
                                    <li><a href="table-filter.html">Table Filter</a></li>
                                    <li><a href="table-dragger.html">Table dragger</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="tab-pane" id="Setting-icon">
                    <nav class="sidebar-nav sidebar-scroll">
                        <p>General Settings</p>                        
                        <ul class="setting-list list-unstyled">
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox">
                                    <span>Report Panel Usag</span>
                                </label>
                            </li>
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox" checked="">
                                    <span>Email Redirect</span>
                                </label>
                            </li>
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox" checked="">
                                    <span>Notifications</span>
                                </label>                      
                            </li>
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox">
                                    <span>Offline</span>
                                </label>
                            </li>
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox">
                                    <span>Location Permission</span>
                                </label>
                            </li>
                        </ul>
                        <ul class="list-group">
                            <li class="list-group-item">
                                Dark Menu
                                <div class="float-right">
                                    <label class="switch">
                                        <input type="checkbox" class="dark_menu_btn">
                                        <span class="slider round"></span>
                                    </label>
                                </div>            
                            </li>
                            <li class="list-group-item">
                                Dark version
                                <div class="float-right">
                                    <label class="switch">
                                        <input type="checkbox" class="light-btn">
                                        <span class="slider round"></span>
                                    </label>
                                </div>
                            </li>
                        </ul>
                        <hr>
                        <p>Choose Skin</p>
                        <ul class="choose-skin list-unstyled mb-0">
                            <li data-theme="blue" class="active"><div class="blue"></div></li>
                            <li data-theme="green"><div class="green"></div></li>
                            <li data-theme="orange"><div class="orange"></div></li>
                            <li data-theme="blush"><div class="blush"></div></li>
                            <li data-theme="cyan"><div class="cyan"></div></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <div id="main-content">
        <div class="block-header">
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
                <div class="col-md-6 col-sm-12 text-right hidden-xs">
                    <a href="javascript:void(0);" class="btn btn-sm btn-primary" title="">Create Campaign</a>
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
                                    <span class="chart">5,2,3,6,9,8,4,1,2,8</span>
                                </div>
                                <div class="s_detail">
                                    <h2 class="font700 mb-0">$15K</h2>
                                    <span>67% <i class="fa fa-level-up text-success"></i> Total income</span>
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
                                    <h2 class="font700 mb-0">$1258</h2>
                                    <span>15% <i class="fa fa-level-up text-success"></i> Total Expense</span>
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
                                    <span class="chart">3,5,1,6,2,4,8,5,3,2</span>
                                </div>
                                <div class="s_detail">
                                    <h2 class="font700 mb-0">$2315</h2>
                                    <span>23% <i class="fa fa-level-up text-success"></i> Total Growth</span>
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
                                    <h2 class="font700 mb-0">$1025</h2>
                                    <span>52% <i class="fa fa-level-up text-success"></i> Bounce Rate</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-6 col-md-6">
                    <div class="card">
                        <div class="header">
                            <h2>Sales Reports</h2>
                            <ul class="header-dropdown dropdown">
                                <li><a href="javascript:void(0);" class="full-screen"><i class="icon-frame"></i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another Action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <small class="text-muted">Sales Performance for Online and Offline Revenue</small>
                            <div id="flotChart" class="flot-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="header">
                            <h2>Page Views(Avg)</h2>
                        </div>
                        <div class="body text-center">
                            <h4>6.25</h4>
                            <p class="mb-2"><span><i class="fa fa-caret-up text-success ml-1"></i> +1.12</span> vs last month (4.0)</p>
                            <div id="Page_Views" style="height: 140px"></div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="body">
                            <div class="card-value float-right text-muted"><i class="icon-bubbles"></i></div>
                            <h3 class="mb-1">2,54,021</h3>
                            <div>Total Clicks</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="header">
                            <h2>Order status</h2>
                        </div>
                        <div class="body text-center">
                            <div id="Order_status" style="height: 268px"></div>
                            <hr>
                            <div class="row clearfix">
                                <div class="col-6">
                                    <h6 class="mb-0">$3,095</h6>
                                    <small class="text-muted">Last Month</small>
                                </div>
                                <div class="col-6">
                                    <h6 class="mb-0">$2,763</h6>
                                    <small class="text-muted">This Month</small>
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>                
            </div>

            <div class="row clearfix">
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Product Valuation</h2>
                        </div>
                        <div class="body">
                            <div id="chart-bar" style="height: 350px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="header">
                            <h2>Sales Revenue</h2>
                        </div>
                        <div class="body text-center">
                            <div class="mt-4">
                                <input type="text" class="knob" value="34" data-width="147" data-height="147" data-thickness="0.07" data-bgColor="#ebeeef" data-fgColor="#395bb6">
                            </div>
                            <h3 class="mb-0 mt-3 font300">24,301 <span class="text-green font-15">+3.7%</span></h3>
                            <small>Lorem Ipsum is simply dummy text <br> <a href="#">Read more</a> </small>
                            <div class="mt-4">
                                <span class="chart_3">2,5,8,3,6,9,4,5,6,3</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>My Balance</h2>
                        </div>
                        <div class="body">
                            <div class="card-value float-right text-blue">+15%</div>
                            <h4 class="mb-0 mt-2">$5,021.00</h4>
                        </div>
                        <div class="card-chart-bg">
                            <span id="linecustom">6,7,5,9,7,8,4,7,6,9,11,16,10,8,9,12</span>
                        </div>
                    </div>
                    <div class="card">
                        <div class="body top_counter">
                            <div class="icon bg-success text-white"><i class="fa fa-area-chart"></i> </div>
                            <div class="content">
                                <span>Growth</span>
                                <h5 class="number mb-0">62%</h5>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="body top_counter">
                            <div class="icon bg-warning text-white"><i class="fa fa-building"></i> </div>
                            <div class="content">
                                <span>Properties</span>
                                <h5 class="number mb-0">53,251</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>Product Summary</h2>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-custom spacing5 mb-0">
                                <thead>
                                    <tr>
                                        <th>#No</th>
                                        <th>Client Name</th>
                                        <th>Product ID</th>
                                        <th>Product</th>
                                        <th>Product Cost</th>
                                        <th>Payment Mode</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#01</td>
                                        <td>Sean Black</td>
                                        <td>PRO12345</td>
                                        <td>Mi LED Smart TV 4A 80</td>
                                        <td>$14,500</td>
                                        <td>Online Payment</td>
                                        <td><span class="badge badge-success">Delivered</span></td>
                                    </tr>
                                    <tr>
                                        <td>#02</td>
                                        <td>Evan Rees</td>
                                        <td>PRO8765</td>
                                        <td>Thomson R9 122cm (48 inch) Full HD LED TV </td>
                                        <td>$30,000</td>
                                        <td>Cash on delivered</td>
                                        <td><span class="badge badge-primary">Add Cart</span></td>
                                    </tr>
                                    <tr>
                                        <td>#03</td>
                                        <td>David Wallace</td>
                                        <td>PRO54321</td>
                                        <td>Vu 80cm (32 inch) HD Ready LED TV</td>
                                        <td>$13,200</td>
                                        <td>Online Payment</td>
                                        <td><span class="badge badge-warning">Pending</span></td>
                                    </tr>
                                    <tr>
                                        <td>#04</td>
                                        <td>Julia Bower</td>
                                        <td>PRO97654</td>
                                        <td>Micromax 81cm (32 inch) HD Ready LED TV</td>
                                        <td>$15,100</td>
                                        <td>Cash on delivered</td>
                                        <td><span class="badge badge-secondary">Delivering</span></td>
                                    </tr>
                                    <tr>
                                        <td>#05</td>
                                        <td>Kevin James</td>
                                        <td>PRO4532</td>
                                        <td>HP 200 Mouse &amp; Wireless Laptop Keyboard </td>
                                        <td>$5,987</td>
                                        <td>Online Payment</td>
                                        <td><span class="badge badge-danger">Shipped</span></td>
                                    </tr>
                                    <tr>
                                        <td>#06</td>
                                        <td>Theresa Wright</td>
                                        <td>PRO6789</td>
                                        <td>Digisol DG-HR3400 Router </td>
                                        <td>$11,987</td>
                                        <td>Cash on delivered</td>
                                        <td><span class="badge badge-success">Delivering</span></td>
                                    </tr>
                                    <tr>
                                        <td>#07</td>
                                        <td>Sebastian Black</td>
                                        <td>PRO4567</td>
                                        <td>Dell WM118 Wireless Optical Mouse</td>
                                        <td>$4,700</td>
                                        <td>Online Payment</td>
                                        <td><span class="badge badge-secondary">Add to Cart</span></td>
                                    </tr>
                                    <tr>
                                        <td>#08</td>
                                        <td>Kevin Glover</td>
                                        <td>PRO32156</td>
                                        <td>Dell 16 inch Laptop Backpack </td>
                                        <td>$678</td>
                                        <td>Cash On delivered</td>
                                        <td><span class="badge badge-cyan">Delivered</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </div>
    
</div>

<!-- Javascript -->
<!-- Latest jQuery -->
<script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>

<!-- Bootstrap 4x JS  -->
<script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="assets/bundles/vendorscripts.bundle.js"></script>

<script src="assets/bundles/c3.bundle.js"></script>
<script src="assets/bundles/flotscripts.bundle.js"></script><!-- flot charts Plugin Js --> 
<script src="assets/bundles/knob.bundle.js"></script>

<!-- Project Common JS -->
<script src="assets/js/common.js"></script>
<script src="assets/js/index.js"></script>
</body>
</html>