<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  pom에 라이브러리 추가 할것 -->
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>NeuBoard</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="<c:url value ="/img/favicon.ico"/>" type="image/x-icon">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="<c:url value ="/plugins/bootstrap/css/bootstrap.min.css"/>">
    <!-- Fonts  -->
    <link rel="stylesheet" href="<c:url value ="/css/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value ="/css/simple-line-icons.css"/>">
    <!-- CSS Animate -->
    <link rel="stylesheet" href="<c:url value ="/css/animate.css"/>">
    <!-- Daterange Picker -->
    <link rel="stylesheet" href="<c:url value ="/plugins/daterangepicker/daterangepicker-bs3.css"/>">
    <!-- Calendar demo -->
    <link rel="stylesheet" href="<c:url value="/css/clndr.css"/>">
    <!-- Switchery -->
    <link rel="stylesheet" href="<c:url value ="/plugins/switchery/switchery.min.css"/>">
    <!-- Custom styles for this theme -->
    <link rel="stylesheet" href="<c:url value="/css/main.css"/>">
    <!-- Feature detection -->
    <script src="<c:url value="/js/vendor/modernizr-2.6.2.min.js"/>"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="/js/vendor/html5shiv.js"></script>
    <script src="/js/vendor/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <section id="main-wrapper" class="theme-default">
       <div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
        <!--sidebar left start-->
        <aside class="sidebar sidebar-left">
            <div class="sidebar-profile">
                <div class="avatar">
                    <img class="img-circle profile-image" src="<c:url value="/img/profile.jpg"/>" alt="profile">
                    <i class="on border-dark animated bounceIn"></i>
                </div>
                <div class="profile-body dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><h4>Mike Adams <span class="caret"></span></h4></a>
                    <small class="title">Front-end Developer</small>
                    <ul class="dropdown-menu animated fadeInRight" role="menu">
                        <li class="profile-progress">
                            <h5>
                                <span>80%</span>
                                <small>Profile complete</small>
                            </h5>
                            <div class="progress progress-xs">
                                <div class="progress-bar progress-bar-primary" style="width: 80%">
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-user"></i>
                                </span>My Account</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-envelope"></i>
                                </span>Messages</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-cog"></i>
                                </span>Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-sign-out"></i>
                                </span>Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
            <nav>
                <h5 class="sidebar-header">Navigation</h5>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active">
                        <a href="index.html" title="Dashboard">
                            <i class="fa  fa-fw fa-tachometer"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="UI Elements">
                            <i class="fa  fa-fw fa-cogs"></i> UI Elements
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="ui-buttons.html" title="Buttons">
                                     Buttons
                                </a>
                            </li>
                            <li>
                                <a href="ui-sliders-progress.html" title="Sliders &amp; Progress">
                                     Sliders &amp; Progress
                                </a>
                            </li>
                            <li>
                                <a href="ui-modals-popus.html" title="Modals &amp; Popups">
                                     Modals &amp; Popups
                                </a>
                            </li>
                            <li>
                                <a href="ui-tabs-accordions.html" title="Tabs &amp; Accordions">
                                     Tabs &amp; Accordions
                                </a>
                            </li>

                            <li>
                                <a href="ui-alerts-notifications.html" title="Alerts &amp; Notifications">
                                     Alerts &amp; Notifications
                                </a>
                            </li>
                            <li>
                                <a href="ui-nestable-lists.html" title=" Nestable Lists">
                                     Nestable Lists
                                </a>
                            </li>
                            <li>
                                <a href="ui-panels.html" title="Panels">
                                     Panels
                                </a>
                            </li>
                            <li>
                                <a href="ui-icons.html" title="Icons">
                                     Icons
                                </a>
                            </li>
                            <li>
                                <a href="ui-typography.html" title="Typography">
                                     Typography
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Forms">
                            <i class="fa  fa-fw fa-edit"></i> Forms
                        </a>
                        <ul class="nav-sub">
                            <li><a href="forms-components.html" title="Components">Components</a>
                            </li>
                            <li><a href="forms-validation.html" title="Validation">Validation</a>
                            </li>
                            <li><a href="forms-mask.html" title="Mask">Mask</a>
                            </li>
                            <li><a href="forms-wizard.html" title="Wizard">Wizard</a>
                            </li>
                            <li><a href="forms-multiple-file.html" title="Multiple File Upload">Multiple File Upload</a>
                            </li>
                            <li><a href="forms-wysiwyg.html" title="WYSIWYG Editor">WYSIWYG Editor</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Tables">
                            <i class="fa  fa-fw fa-th-list"></i> Tables
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="tables-basic-tables.html" title="Basic Tables">
                                     Basic Tables
                                </a>
                            </li>
                            <li>
                                <a href="tables-data-tables.html" title="Data Tables">
                                     Data Tables
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Charts">
                            <i class="fa fa-fw fa-bar-chart-o"></i> Charts
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="charts-chartjs.html" title="Chartjs">
                                    Chartjs
                                </a>
                            </li>
                            <li>
                                <a href="charts-c3.html" title="C3 Charts">
                                     C3 Charts
                                </a>
                            </li>
                            <li>
                                <a href="charts-morris.html" title="Morris.js Charts">
                                     Morris.js Charts
                                </a>
                            </li>
                            <li>
                                <a href="charts-sparkline.html" title="Sparkline Charts">
                                     Sparkline Charts
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                         <a href="#" title="Mail">
                            <i class="fa fa-fw fa-envelope-o"></i> Mail
                            <span class="label label-primary label-circle pull-right">8</span>
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="mail-inbox.html" title="Mail Inbox">
                                    Inbox
                                </a>
                            </li>
                            <li>
                                <a href="mail-compose.html" title="Mail Compose">
                                     Compose Mail
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Maps">
                            <i class="fa  fa-fw fa-map-marker"></i> Maps
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="maps-google.html" title="Google Maps">
                                     Google Maps
                                </a>
                            </li>
                            <li>
                                <a href="maps-vector.html" title="Vector Maps">
                                     Vector Maps
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="../Frontend/" title="Frontend">
                            <i class="fa  fa-fw fa-desktop"></i> Front-end Theme
                            <span class="pull-right badge badge-danger">new</span>
                        </a>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Pages">
                            <i class="fa  fa-fw fa-file-text"></i> Pages
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="pages-blank-page.html" title="Blank Page">
                                     Blank Page
                                </a>
                            </li>

                            <li>
                                <a href="pages-profile.html" title="Profile">
                                     Profile
                                </a>
                            </li>
                            <li>
                                <a href="pages-sign-in.html" title="Sign In">
                                     Sign In
                                </a>
                            </li>
                            <li>
                                <a href="pages-sign-up.html" title="Sign Up">
                                     Sign Up
                                </a>
                            </li>
                            <li>
                                <a href="pages-locked-screen.html" title="Locked Screen">
                                     Locked Screen
                                </a>
                            </li>
                            <li>
                                <a href="pages-404.html" title="404 Page">
                                     404 Page
                                </a>
                            </li>
                            <li>
                                <a href="pages-500.html" title="500 Page">
                                     500 Page
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Menu Levels">
                            <i class="fa  fa-fw fa-folder-open"></i> Menu Levels
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="javascript:;" title="Level 2.1">
                                    <i class="fa fa-fw fa-file"></i> Level 1.1
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;" title="Level 2.2">
                                    <i class="fa fa-fw fa-file"></i> Level 1.2
                                </a>
                            </li>
                            <li class="nav-dropdown">
                                <a href="#" title="Level 2.3">
                                    <i class="fa fa-fw fa-folder-open"></i> Level 1.3
                                </a>
                                <ul class="nav-sub">
                                    <li>
                                        <a href="javascript:;" title="Level 3.1">
                                            <i class="fa fa-fw fa-file"></i> Level 2.1
                                        </a>
                                    </li>
                                    <li class="nav-dropdown">
                                        <a href="#" title="Level 3.2">
                                            <i class="fa fa-fw fa-folder-open"></i> Level 2.2
                                        </a>
                                        <ul class="nav-sub">
                                            <li>
                                                <a href="javascript:;" title="Level 4.1">
                                                    <i class="fa fa-fw fa-file"></i> Level 3.1
                                                </a>
                                            </li>
                                            <li class="nav-dropdown">
                                                <a href="#" title="Level 4.2">
                                                    <i class="fa fa-fw fa-folder-open"></i> Level 3.2
                                                </a>
                                                <ul class="nav-sub">
                                                    <li class="nav-dropdown">
                                                        <a href="#" title="Level 5.1">
                                                            <i class="fa fa-fw fa-folder-open"></i> Level 4.1
                                                        </a>
                                                        <ul class="nav-sub">
                                                            <li>
                                                                <a href="javascript:;" title="Level 6.1">
                                                                    <i class="fa fa-fw fa-file"></i> Level 5.1
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;" title="Level 6.2">
                                                                    <i class="fa fa-fw fa-file"></i> Level 5.2
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;" title="Level 5.2">
                                                            <i class="fa fa-fw fa-file"></i> Level 4.2
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;" title="Level 5.3">
                                                            <i class="fa fa-fw fa-file"></i> Level 4.3
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>

                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="animations.html" title="CSS Animations">
                            <i class="fa  fa-fw fa-magic"></i> CSS Animations
                        </a>
                    </li>
                </ul>
            </nav>
            <h5 class="sidebar-header">Account Settings</h5>
            <div class="setting-list">
                <div class="row">
                    <div class="col-xs-8">
                        <label for="check1" class="control-label">Share your status</label>
                    </div>
                    <div class="col-xs-4">
                        <input type="checkbox" class="js-switch" checked id="check1" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <label for="check2" class="control-label">Push Notifications</label>
                    </div>
                    <div class="col-xs-4">
                        <input type="checkbox" class="js-switch" id="check2" />
                    </div>
                </div>
            </div>
        </aside>
        <!--sidebar left end-->
        <!--main content start-->
        <section class="main-content-wrapper">
            <div class="pageheader">
                <h1>Dashboard</h1>
                <p class="description">Welcome to NEUBOARD Responsive Admin Theme</p>
                <div class="breadcrumb-wrapper hidden-xs">
                    <span class="label">You are here:</span>
                    <ol class="breadcrumb">
                        <li class="active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <section id="main-content" class="animated fadeInUp">
                <div class="row">
                    <div class="col-md-12 col-lg-6">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel panel-solid-success widget-mini">
                                    <div class="panel-body">
                                        <i class="icon-bar-chart"></i>
                                        <span class="total text-center">$3,200</span>
                                        <span class="title text-center">Earnings</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="panel widget-mini">
                                    <div class="panel-body">
                                        <i class="icon-support"></i>
                                        <span class="total text-center">1,230</span>
                                        <span class="title text-center">Support</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="panel widget-mini">
                                    <div class="panel-body">
                                        <i class="icon-envelope-open"></i>
                                        <span class="total text-center">1,680</span>
                                        <span class="title text-center">Messages</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="panel panel-solid-info widget-mini">
                                    <div class="panel-body">
                                        <i class="icon-user"></i>
                                        <span class="total text-center">12,680</span>
                                        <span class="title text-center">Signups</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="panel panel-default browser-chart">
                            <div class="panel-heading">
                                <h3 class="panel-title">BROWSER STATS</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                        <ul>
                                            <li><i class="fa fa-circle success-color"></i> Chrome</li>
                                            <li><i class="fa fa-circle primary-color"></i> IE</li>
                                            <li><i class="fa fa-circle warning-color"></i> Safari</li>
                                            <li><i class="fa fa-circle info-color"></i> Firefox</li>
                                            <li><i class="fa fa-circle default-color"></i> Other</li>
                                        </ul>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                        <div id="doughnut-canvas-holder">
                                            <canvas id="doughnut-chart-area" width="137" height="137"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Monthly Goal</h3>
                                <div class="actions pull-right">
                                    <i class="fa fa-expand"></i>
                                </div>
                            </div>
                            <div class="panel-body widget-gauge">
                                <canvas width="160" height="100" id="gauge" class=""></canvas>
                                <div class="goal-wrapper">
                                    <span class="gauge-value pull-left">$</span>
                                    <span id="gauge-text" class="gauge-value pull-left">3,200</span>
                                    <span id="goal-text" class="goal-value pull-right">$5,000</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">SERVER STATS</h3>
                                <div class="reportdate actions">
                                    <i class="fa fa-calendar-o"></i>
                                    <span>Jan 1 - June 30</span>
                                    <b class="caret"></b>
                                </div>
                            </div>
                            <div class="panel-body server-chart">
                                <div class="row">
                                    <div class="col-md-12 col-lg-4">
                                        <ul>
                                            <li>
                                                <span class="text-left">Network Usage</span>
                                                <div class="progress progress-xs">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%">
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <span class="text-left">CPU Load</span>
                                                <div class="progress progress-xs">
                                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
                                    </div>
                                    <div class="col-md-12 col-lg-8">
                                        <div class="row">
                                            <div class="col-md-12 col-lg-6">
                                                <div class="line-chart">
                                                    <canvas id="canvas1" height="100"></canvas>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-lg-6">
                                                <div class="bar-chart">
                                                    <canvas id="canvas2" height="100"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                        <div class="panel panel-default chat-widget">
                            <div class="panel-heading">
                                <h3 class="panel-title">chat</h3>
                                <div class="actions pull-right">
                                    <i class="fa fa-expand"></i>
                                    <i class="fa fa-chevron-down"></i>
                                    <i class="fa fa-times"></i>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="row wrapper animated fadeInRight">
                                    <div class="col-xs-2 col-sm-2 col-md-2 ">
                                        <span class="avatar">
                                        <img src="<c:url value="/img/avatar3.png"/>" class="img-circle" alt="">
                                        <i class="on animated bounceIn"></i>
                                    </span>
                                    </div>
                                    <div class="col-xs-10 col-sm-10 col-md-10">
                                        <div class="post default">
                                            <span class="arrow left"></span>
                                            <p>Hey Mike...Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibut</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row wrapper animated fadeInLeft">
                                    <div class="col-xs-10 col-sm-10 col-md-10">
                                        <div class="post primary">
                                            <span class="arrow right"></span>
                                            <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et.</p>
                                        </div>
                                    </div>
                                    <div class="col-xs-2 col-sm-2 col-md-2">
                                        <span class="avatar">
                                        <img src="/img/profile.jpg"/>" class="img-circle" alt="">
                                        <i class="on animated bounceIn"></i>
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <form>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Say something">
                                        <span class="input-group-btn">
                                        <button class="btn btn-primary" type="button">SEND</button>
                                         </span>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="calendar-block ">
                                    <div class="cal1">

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <div class="panel panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Weather</h3>
                                <div class="actions pull-right">
                                    <i class="fa fa-expand"></i>
                                    <i class="fa fa-chevron-down"></i>
                                    <i class="fa fa-times"></i>
                                </div>
                            </div>
                            <div class="panel-body widget-weather">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <h3 class="text-center title">Today</h3>
                                        <div class="text-center">
                                            <canvas id="clear-day" width="75" height="75"></canvas>
                                            <div class="temp">62°C</div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <h3 class="text-center title">Tonight</h3>
                                        <div class="text-center">
                                            <canvas id="partly-cloudy-night" width="75" height="75"></canvas>
                                            <div class="temp">44°C</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-2">
                                        <h6 class="text-center small-thin uppercase">Mon</h6>
                                        <div class="text-center">
                                            <canvas id="partly-cloudy-day" width="32" height="32"></canvas>
                                            <span>48°C</span>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-6 col-md-2">
                                        <h6 class="text-center small-thin uppercase">Tue</h6>
                                        <div class="text-center">
                                            <canvas id="rain" width="32" height="32"></canvas>
                                            <span>39°C</span>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-6 col-md-2">
                                        <h6 class="text-center small-thin uppercase">Wed</h6>
                                        <div class="text-center">
                                            <canvas id="sleet" width="32" height="32"></canvas>
                                            <span>32°C</span>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-6 col-md-2">
                                        <h6 class="text-center small-thin uppercase">Thu</h6>
                                        <div class="text-center">
                                            <canvas id="snow" width="32" height="32"></canvas>
                                            <span>28°C</span>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-6 col-md-2">
                                        <h6 class="text-center small-thin uppercase">Fri</h6>
                                        <div class="text-center">
                                            <canvas id="wind" width="32" height="32"></canvas>
                                            <span>40°C</span>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-6 col-md-2">
                                        <h6 class="text-center small-thin uppercase">Sat</h6>
                                        <div class="text-center">
                                            <canvas id="fog" width="32" height="32"></canvas>
                                            <span>42°C</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>
        <!--main content end-->
    </section>
    <!--sidebar right start-->
    <aside id="sidebar-right">
        <h4 class="sidebar-title">contact List</h4>
        <div id="contact-list-wrapper">
            <div class="heading">
                <ul>
                    <li class="new-contact"><a href="javascript:void(0)"><i class="fa fa-plus"></i></a>
                    </li>
                    <li>
                        <input type="text" class="search" placeholder="Search">
                        <button type="submit" class="btn btn-sm btn-search"><i class="fa fa-search"></i>
                        </button>
                    </li>
                </ul>
            </div>
            <div id="contact-list">
                <ul>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="<c:url value="/img/avatar3.png"/>" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Ashley Bell </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Sarasota, FL</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="<c:url value="/img/avatar1.png"/>" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Brian Johnson </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> San Francisco, CA</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="<c:url value="/img/avatar2.png"/>" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Chris Jones </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Brooklyn, NY</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="<c:url value ="/img/avatar4.jpg"/>" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Erica Hill </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Palo Alto, Ca</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="<c:url value ="/img/avatar5.png"/>" class="img-circle" alt="">
                          <i class="away animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Greg Smith </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> London, UK</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="<c:url value ="/img/avatar6.png"/>" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Jason Kendall</div>
                                <small class="location text-muted"><i class="icon-pointer"></i> New York, NY </small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="<c:url value ="/img/avatar7.png"/>" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Kristen Davis </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Greenville, SC</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="<c:url value ="/img/avatar8.png"/>" class="img-circle off" alt="">
                          <i class="off animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Michael Shepard </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Vancouver, BC</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="<c:url value ="/img/avatar9.png"/>" class="img-circle off" alt="">
                          <i class="off animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Paul Allen</div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Savannah, GA</small>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="contact-user">
                <div class="chat-user active"><span><i class="icon-bubble"></i></span>
                </div>
                <div class="email-user"><span><i class="icon-envelope-open"></i></span>
                </div>
                <div class="call-user"><span><i class="icon-call-out"></i></span>
                </div>
            </div>
        </div>
    </aside>
    <!--/sidebar right end-->
    <!--Config demo-->
    <div id="config" class="config hidden-xs">
        <h4>Settings<a href="javascript:void(0)" class="config-link closed"><i class="icon-settings"></i></a></h4>
        <div class="config-swatch-wrap">
            <div class="row">
                <div class="col-xs-6">
                    <ul class="options">
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-default">
                                <span class="header bg-white"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-dark">
                                <span class="header bg-dark"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-blue">
                                <span class="header bg-info"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-blue-full">
                                <span class="header bg-info"></span>
                                <span class="header bg-info"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-grey">
                                <span class="header bg-grey"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-grey-full">
                                <span class="header bg-grey"></span>
                                <span class="header bg-grey"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>

                    </ul>
                </div>
                <div class="col-xs-6">
                    <ul class="options">
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-dark-full">
                                <span class="header bg-dark"></span>
                                <span class="header bg-dark"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-green">
                                <span class="header bg-green"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-green-full">
                                <span class="header bg-green"></span>
                                <span class="header bg-green"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-red">
                                <span class="header bg-red"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-red-full">
                                <span class="header bg-red"></span>
                                <span class="header bg-red"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-dark-blue-full">
                                <span class="header bg-dark-blue"></span>
                                <span class="header bg-dark-blue"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--/Config demo-->
    <!--Global JS-->
    <script src="<c:url value ="/js/vendor/jquery-1.11.1.min.js"/>"></script>
    <script src="<c:url value ="/plugins/bootstrap/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value ="/plugins/navgoco/jquery.navgoco.min.js"/>"></script>
    <script src="<c:url value ="/plugins/pace/pace.min.js"/>"></script>
    <script src="<c:url value ="/plugins/fullscreen/jquery.fullscreen-min.js"/>"></script>
    <script src="<c:url value ="/js/src/app.js"/>"></script>
    <!--Page Level JS-->
    <script src="<c:url value ="/plugins/countTo/jquery.countTo.js"/>"></script>
    <script src="<c:url value ="/plugins/weather/js/skycons.js"/>"></script>
    <script src="<c:url value ="/plugins/daterangepicker/moment.min.js"/>"></script>
    <script src="<c:url value ="/plugins/daterangepicker/daterangepicker.js"/>"></script>
    <!-- ChartJS  -->
    <script src="<c:url value ="/plugins/chartjs/Chart.min.js"/>"></script>
    <!-- Morris  -->
    <script src="<c:url value ="/plugins/morris/js/morris.min.js"/>"></script>
    <script src="<c:url value ="/plugins/morris/js/raphael.2.1.0.min.js"/>"></script>
    <!-- Vector Map  -->
    <script src="<c:url value ="/plugins/jvectormap/js/jquery-jvectormap-1.2.2.min.js"/>"></script>
    <script src="<c:url value ="/plugins/jvectormap/js/jquery-jvectormap-world-mill-en.js"/>"></script>
    <!-- Gauge  -->
    <script src="<c:url value ="/plugins/gauge/gauge.min.js"/>"></script>
    <script src="<c:url value ="/plugins/gauge/gauge-demo.js"/>"></script>
    <!-- Calendar  -->
    <script src="<c:url value ="/plugins/calendar/clndr.js"/>"></script>
    <script src="<c:url value ="/plugins/calendar/clndr-demo.js"/>"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"/>"></script>
    <!-- Switch -->
    <script src="<c:url value ="/plugins/switchery/switchery.min.js"/>"></script>
    <!--Load these page level functions-->
    <script>
    $(document).ready(function() {
        app.dateRangePicker();
        app.chartJs();
        app.weather();
        app.spinStart();
        app.spinStop();
    });
    </script>
</body>

</html>
