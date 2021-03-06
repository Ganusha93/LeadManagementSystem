<%@page import="java.util.Iterator;" %>
<%@page import="java.util.*;" %>
<%@page import="javax.servlet.http.HttpSession;" %>
<%@page import="java.io.PrintWriter;"%>

<!DOCTYPE html>
<html>
    <head>
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
        <div id="simpleform" style="display:none ; width: 200%;"><jsp:include page="simpleform.jsp" /></div> 
        <div id="wrapper" class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="MonthlyCyclePlanController" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>FA</b>ME</span>
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
                            <a href="./pages/calender.jsp">
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
                                <div class="box-header col-xs-6">
                                    <h5 >Sales Activity of : Admin for February 2018</h5>

                                </div>

                                <div class="box-header col-xs-2 pull-right">
                                    <a href="MonthlyPlanController?type=view"><button class="btn btn-block btn-primary btn-xs" type="button" >Record Advisor Plan</button></a>
                                </div>
                                <div class="box-header col-lg-2 pull-right">
                                    <a href="javascript:loadSimpleForm()"><button class="btn btn-block btn-primary btn-xs" type="button" >Create Lead</button></a>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <table id="" class="table table-bordered table-hover "  >




                                        <tr style="background-color: #ecf0f5 ;" >

                                            <th colspan="1" rowspan="2" scope="colgroup" style="vertical-align:middle; width: 25%; border: 1px solid  #d7dde8  ;" ><center>Activity</center></th>
                                        <th colspan="1" rowspan="2" scope="colgroup" style="vertical-align:middle; width: 12.5%; border: 1px solid  #d7dde8  ;"><center>1<sup>st</sup> Cycle</center></th>
                                        <th colspan="1" rowspan="2" scope="colgroup" style="vertical-align:middle; width: 12.5%; border: 1px solid  #d7dde8  ;"><center>2<sup>nd</sup> Cycle</center></th>
                                        <th colspan="1" rowspan="2" scope="colgroup" style="vertical-align:middle; width: 12.5%; border: 1px solid  #d7dde8  ;"><center>3<sup>rd</sup> Cycle</center></th>
                                        <th colspan="1" rowspan="2" scope="colgroup" style="vertical-align:middle; width: 12.5%; border: 1px solid  #d7dde8  ;"><center>4<sup>th</sup> Cycle</center></th>
                                        <th colspan="2" rowspan="1" scope="colgroup" style="width: 25%; border: 1px solid  #d7dde8  ;"><center>Total for month</center></th>

                                        </tr>
                                        <tr style="background-color: #ecf0f5">
                                            <th scope="col" style="width: 12.5%; border: 1px solid  #d7dde8  ;"><center>Planned</center></th>
                                        <th scope="col" style="width: 12.5%; border: 1px solid  #d7dde8  ;"><center>Actual</center></th>
                                        </tr>



                                        <tbody>

                                            <%Iterator itr;%>
                                            <%
                                                List data = (List) request.getAttribute("mcp");
                                                for (itr = data.iterator(); itr.hasNext();) {
                                                String s=(String)itr.next();    
                                            %>
                                            <tr>
                                                <%if(s.equals("Names Collected")){%>
                                                    <td style="border: 1px solid  #d7dde8  ;"><a href="SearchCustomerController?customername=&leadstatus=&salesactivitystage=qualified+prospects&leadsource=&policystatus=&date++created=&todate=&nic="><i class="fa fa-search" ></i></a>&nbsp;&nbsp;<%= s%></td>
                                                <%}else if(s.equals("Qualified Prospects")){%>
                                                    <td style="border: 1px solid  #d7dde8  ;"><a href="SearchCustomerController?customername=&leadstatus=&salesactivitystage=qualified+prospects&leadsource=&policystatus=&date++created=&todate=&nic="><i class="fa fa-search" ></i></a>&nbsp;&nbsp;<%= s%></td>
                                                <%}else if(s.equals("Appointments Taken")){%>
                                                    <td style="border: 1px solid  #d7dde8  ;"><a href="SearchCustomerController?customername=&leadstatus=&salesactivitystage=Appointments+Taken&leadsource=&policystatus=&date++created=&todate=&nic="><i class="fa fa-search" ></i></a>&nbsp;&nbsp;<%= s%></td>
                                                <%}else if(s.equals("Fact Finding Interviws")){%>
                                                    <td style="border: 1px solid  #d7dde8  ;"><a href="SearchCustomerController?customername=&leadstatus=&salesactivitystage=Fact+Finding+Interviws&leadsource=&policystatus=&date++created=&todate=&nic="><i class="fa fa-search" ></i></a>&nbsp;&nbsp;<%= s%></td>
                                                <%}else if(s.equals("Sales Presentation")){%>
                                                    <td style="border: 1px solid  #d7dde8  ;"><a href="SearchCustomerController?customername=&leadstatus=&salesactivitystage=Sales+Presentation&leadsource=&policystatus=&date++created=&todate=&nic="><i class="fa fa-search" ></i></a>&nbsp;&nbsp;<%= s%></td>
                                                <%}else if(s.equals("Fllow Up Interviews")){%>
                                                    <td style="border: 1px solid  #d7dde8  ;"><a href="SearchCustomerController?customername=&leadstatus=&salesactivitystage=Fllow+Up+Interview&leadsource=&policystatus=&date++created=&todate=&nic="><i class="fa fa-search" ></i></a>&nbsp;&nbsp;<%= s%></td>
                                                <%}else if(s.equals("No of Closings")){%>
                                                    <td style="border: 1px solid  #d7dde8  ;"><a href="SearchCustomerController?customername=&leadstatus=&salesactivitystage=No+of+Closing&leadsource=&policystatus=&date++created=&todate=&nic="><i class="fa fa-search" ></i></a>&nbsp;&nbsp;<%= s%></td>
                                                <%}else if(s.equals("Existing Customer Visits")){%>
                                                    <td style="border: 1px solid  #d7dde8  ;"><a href="SearchCustomerController?customername=&leadstatus=&salesactivitystage=Existing+Customer+Visits&leadsource=&policystatus=&date++created=&todate=&nic="><i class="fa fa-search" ></i></a>&nbsp;&nbsp;<%= s%></td>
                                                <%}else if(s.equals("New Referal's Genarated")){%>
                                                    <td style="border: 1px solid  #d7dde8  ;"><a href="SearchCustomerController?customername=&leadstatus=&salesactivitystage=New+Referal's+Genarated&leadsource=&policystatus=&date++created=&todate=&nic="><i class="fa fa-search" ></i></a>&nbsp;&nbsp;<%= s%></td>
                                                <%}%>
                                                <td style="border: 1px solid  #d7dde8;">
                                                    <span><%= itr.next()%>&nbsp;</span>
                                                    <span class="pull-right">&nbsp;<%= itr.next()%>&nbsp;<i class=" fa <%= itr.next()%>" style="font-size:18px;color:<%= itr.next()%>"></i></span>
                                                </td>
                                                <td style="border: 1px solid  #d7dde8;">
                                                    <span><%= itr.next()%>&nbsp;</span>
                                                    <span class="pull-right">&nbsp;<%= itr.next()%>&nbsp;<i class="fa <%= itr.next()%>" style="font-size:18px;color:<%= itr.next()%>"></i></span>
                                                </td>
                                                <td style="border: 1px solid  #d7dde8;"> 
                                                    <span><%= itr.next()%>&nbsp;</span>
                                                    <span class="pull-right">&nbsp;<%= itr.next()%>&nbsp;<i class="fa <%= itr.next()%>" style="font-size:18px;color:<%= itr.next()%>"></i></span>
                                                </td>
                                                <td style="border: 1px solid  #d7dde8;">
                                                    <span><%= itr.next()%>&nbsp;</span>
                                                    <span class="pull-right">&nbsp;<%= itr.next()%>&nbsp;<i class="fa <%= itr.next()%>" style="font-size:18px;color:<%= itr.next()%>"></i></span>
                                                </td>
                                                <td><center><%= itr.next()%></center></td>
                                        <td style="border: 1px solid  #d7dde8;">
                                            <span><%= itr.next()%>&nbsp;</span>
                                            <span class="pull-right">&nbsp;<%= itr.next()%>&nbsp;<i class="fa <%= itr.next()%>" style="font-size:18px;color:<%= itr.next()%>"></i></span>
                                        </td>

                                        <%}%>
                                        </tr>

                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>

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
            $(function () {
                $('#example1').DataTable()
                $('#example2').DataTable({
                    'paging': true,
                    'lengthChange': false,
                    'searching': false,
                    'ordering': true,
                    'info': true,
                    'autoWidth': false
                })
            })

            function loadSimpleForm() {

                $('#simpleform').toggle("fast");
                document.getElementById('wrapper').style.opacity = '0.3';
            }
        </script>


    </body>
</html>