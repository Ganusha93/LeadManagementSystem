<%-- 
    Document   : dashboard1
    Created on : Feb 14, 2018, 5:19:58 PM
    Author     : Ganusha
--%>



<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <title> Lead Management System</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
        <!-- DataTables -->
        <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="dashboard.jsp" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>FA/b>ME</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>FAME</b></span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-success">4</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 4 messages</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li><!-- start message -->
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>
                                                        Support Team
                                                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <!-- end message -->
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>
                                                        AdminLTE Design Team
                                                        <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>
                                                        Developers
                                                        <small><i class="fa fa-clock-o"></i> Today</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>
                                                        Sales Department
                                                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>
                                                        Reviewers
                                                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">See All Messages</a></li>
                                </ul>
                            </li>
                            <!-- Notifications: style can be found in dropdown.less -->
                            <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">10</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 10 notifications</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                                                    page and may cause design problems
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-red"></i> 5 new members joined
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-user text-red"></i> You changed your username
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">View all</a></li>
                                </ul>
                            </li>

                            <%
                                String fname=(String)session.getAttribute("fname");
                                String lname=(String)session.getAttribute("lname");
                            %>
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                    <span class="hidden-xs"><%=fname%> <%=lname%></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                        <p>
                                            Alexander Pierce - Web Developer
                                            <small>Member since Nov. 2012</small>
                                        </p>
                                    </li>

                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="LogoutController" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p><%=fname%> <%=lname%></p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="header">MAIN NAVIGATION</li>
                        <li>
                            <a href="MonthlyCyclePlanController">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>

                        </li>
                        <li>
                            <a href="CustomerDetailsController">
                                <i class="fa fa-dashboard"></i> <span>Search Leads</span>
                            </a>

                        </li>


                        <li>
                            <a href="../pages/calender.jsp">
                                <i class="fa fa-calendar"></i> <span>Calendar</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-red">3</small>
                                    <small class="label pull-right bg-blue">17</small>
                                </span>
                            </a>
                        </li>

                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Advisor Sales Activity Dashboard
                    </h1>

                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">

                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Search Leads</h3>
                                </div>

                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div>
                                        <style>
                                            input[type=text], select {
                                                width: 15%;
                                                padding-bottom: 2px;
                                                padding-top: 2px;
                                                margin-bottom: 1%;
                                                margin-right: 4%;
                                                display: inline-block;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;
                                                box-sizing: border-box;
                                                font-size: 12px;
                                            }

                                            button[id=search1] {
                                                width: 12%;
                                                background-color: #a3c2c2;
                                                color: white;
                                                padding-bottom: 2px;
                                                padding-top: 2px;
                                                margin: 8px 0;
                                                border: none;
                                                border-radius: 4px;
                                                cursor: pointer;
                                            }

                                            button[id=search1]:hover {
                                                background-color: #75a3a3;
                                            }



                                            label {
                                                width:10%;
                                                font-size: 12px;
                                            }

                                        </style>
                                        <form method="GET" action="SearchCustomerController">
                                            <div>
                                                <label for="cname" >Customer Name</label>
                                                <input type="text" id="cname" name="customername">
<!--                                                <span style="position: absolute; z-index: 5; list-style: none; background-color: whitesmoke; width: 20%;" id="autocomplete" ></span>-->
                                                
                                                <label for="lstatus">Lead Status</label>
                                                <select id="lstatus" name="leadstatus">
                                                    <option style="display: none" value=""></option>
                                                    <option value="nonverified">Non-verified</option>
                                                    <option value="verified">Verified</option>
                                                    <option value="followup">Follow Up</option>
                                                    <option value="rejected">Rejected</option>
                                                    <option value="notinterested">Not Interested</option>
                                                    <option value="other">Other</option>
                                                </select> 

                                                <label for="salactstage">Sales Activity Stage</label>
                                                <select id="salactstage" name="salesactivitystage">
                                                    <option style="display: none" value=""></option>
                                                    <option value="namescollected">Names Collected</option>
                                                    <option value="qualified prospects">Qualified Prospects</option>
                                                    <option value="appointmentstaken">Appointments Taken</option>
                                                    <option value="factfindinginterviews">Fact Finding Interviews</option>
                                                    <option value="salespresentation">Sales Presentation</option>
                                                    <option value="followupinterviews">Follow Up Interviews</option>
                                                    <option value="noofclosings">No of Closings</option>
                                                </select> 

                                            </div>

                                            <div>
                                                <label for="leadsource">Lead Source</label>
                                                <select id="leadsource" name="leadsource" ng-model="list_category" ng-options="obj.id as obj.name for obj in list_categories.data">
                                                    <option style="display: none" value=""></option>
                                                    <option value="self generated">Self Generated</option>
                                                    <option value="campaign">Campaign</option>
                                                    <option value="conference">Conference</option>
                                                    <option value="email">Email</option>
                                                    <option value="existingcustomer">Existing Customer</option>
                                                    <option value="other">Other</option>
                                                </select> 

                                                <label for="policystatus">Policy Status</label>
                                                <select id="policystatus" name="policystatus">
                                                    <option style="display: none" value=""></option>
                                                    <option value="lead verified">Lead Verified</option>
                                                    <option value="other">Other</option>
                                                </select>

                                                <label for="datecreated">Date Created</label>
                                                <input type="date" id="datecreated" name="date  created" style="border-radius: 4px; box-sizing: border-box;width:13%">
                                                <label for="todate" style="margin-left: 1%; width: 2%;">To</label>
                                                <input type="date" id="todate" name="todate" style="border-radius: 4px; box-sizing: border-box;width:13%;">


                                            </div>

                                            <div>
                                                <label for="nic" >NIC Number</label>
                                                <input type="text" id="nic" name="nic">

                                            </div>

                                            <a href="SearchCustomerController"> <button id="search1" type="submit"><span class="fa fa-search">Search</span></button></a>
                                            <button id="search1" type="reset"><span class="fa fa-close">Clear</span></button>
                                        </form>

                                    </div>

                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr style="font-size: 12px;">
                                                <th style="border: 1px solid  #d7dde8; width: 25%;">Customer Name</th>
                                                <th style="border: 1px solid  #d7dde8;">VVIP</th>
                                                <th style="border: 1px solid  #d7dde8;">Gender</th>
                                                <th style="border: 1px solid  #d7dde8;">Mobile</th>
                                                <th style="border: 1px solid  #d7dde8;">Status</th>
                                                <th style="border: 1px solid  #d7dde8;">Policy Status</th>
                                                <th style="border: 1px solid  #d7dde8;">Sales Activity Stage</th>
                                                <th style="border: 1px solid  #d7dde8;">NIC Number</th>
                                                <th style="border: 1px solid  #d7dde8;">Lead Source</th> 
                                                <th style="border: 1px solid  #d7dde8;">Agent Code</th>
                                                <th style="border: 1px solid  #d7dde8;">Created Date</th>
                                                <th style="border: 1px solid  #d7dde8;">Updated Sales Activity</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%Iterator itr;%>
                                            <%
                                                List data = (List) request.getAttribute("mcp");
                                                for (itr = data.iterator(); itr.hasNext();) {

                                            %>
                                            <tr>
                                                <td>
                                                    <div>
                                                        <div style="float: left; display: inline-block; width: 24%;">
                                                            <input type="checkbox" style="vertical-align: top; margin-right: 10%;">
                                                            <i class="fa fa-edit" style="font-size:24px;color:red; width: 12%;"></i>
                                                        </div>
                                                        <div style="display: inline-block; float: left; width: 76%;">
                                                            <span style="font-size: 11.5px;"><b><%= itr.next()%></span>
                                                        </div>
                                                    </div>

                                                </td>
                                                <%int a = (Integer) itr.next();
                                                        if (a == 1) {%>
                                                <td style="vertical-align: middle; text-align: center"><input type="checkbox" checked="checked"></td>
                                                    <%} else {%>
                                                <td style="vertical-align: middle; text-align: center"><input type="checkbox"></td>
                                                    <%}%>

                                                <td style="text-align: center"><%= itr.next()%></td>
                                                <td><%= itr.next()%></td>
                                                <td><%= itr.next()%></td>
                                                <td><%= itr.next()%></td>
                                                <td><%= itr.next()%></td>
                                                <td><%= itr.next()%></td>
                                                <td><%= itr.next()%></td>
                                                <td><%= itr.next()%></td>
                                                <td><%= itr.next()%></td>
                                                <td style="color: #ff471a; font-weight: bold">Update</td>
                                            </tr>
                                            <%}%>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.4.0
                </div>
                <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
                reserved.
            </footer>

            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery 3 -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- DataTables -->
        <script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js"></script>
        <!-- page script -->
        <script>
                                                    $(function() {
                                                        $('#example1').DataTable({
                                                            'paging': true,
                                                            'lengthChange': true,
                                                            'searching': false,
                                                            'ordering': true,
                                                            'info': true,
                                                            'autoWidth': false
                                                        })

                                                        $('#example2').DataTable({
                                                            'paging': true,
                                                            'lengthChange': false,
                                                            'searching': false,
                                                            'ordering': true,
                                                            'info': true,
                                                            'autoWidth': false
                                                        })


                                                    });

                                                    function showData(value) {

                                                        $.ajax({
                                                            url: "SearchCustomerNameController?query=" + value,
                                                            type: "POST",
                                                            async: false,
                                                            success: function(data) {
                                                                $("#autocomplete").fadeIn();
                                                                $("#autocomplete").html(data);
                                                            }

                                                        });

                                                        $(document).on('click', 'li', function() {
                                                            $("#customername").val($(this).text());
                                                            $("#autocomplete").fadeOut();
                                                        });


                                                    }

        </script>
    </body>
</html>
