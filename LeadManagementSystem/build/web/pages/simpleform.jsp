<%-- 
    Document   : simpleform
    Created on : Feb 28, 2018, 8:25:25 AM
    Author     : Ganusha
--%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AdminLTE 2 | General Form Elements</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>

    <body>
        <div id="content" class="page-content" style="position: absolute; z-index: 12; margin-left: 28%; margin-top: 5%; width: 100%;">
            <div class="col-md-6">
                <!-- Horizontal Form -->
                <div class="box box-info with-border">
                    <div class="box-header with-border">
                        <center><h3 class="box-title">Names Collected</h3></center>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form">
                        <div class="box-body col-lg-6">
                            <div class="form-group">
                                <label for="exampleInputEmail1">First Name:*</label>
                                <input class="form-control  input-group-sm " id="exampleInputEmail1" type="text" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Mobile No:*</label>
                                <input class="form-control input-group-sm" id="exampleInputPassword1" type="text" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <label>Lead Source:*</label>
                                <select class="form-control">
                                    <option style="display: none" value=""></option>
                                    <option value="selfgenerated">Self Generated</option>
                                    <option value="campaign">Campaign</option>
                                    <option value="conference">Conference</option>
                                    <option value="email">Email</option>
                                    <option value="existingcustomer">Existing Customer</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>

                        </div>
                        <div class="box-body col-lg-6 box-group">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Last Name:*</label>
                                <input class="form-control input-group-sm" id="exampleInputEmail1" type="text" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <label>Gender:*</label>
                                <select class="form-control">
                                    <option>Male</option>
                                    <option>Female</option>

                                </select>
                            </div>
                            <div class="form-group">
                                <label>Plan Stage:*</label>
                                <select class="form-control">
                                    <option style="display: none" value=""></option>
                                    <option value="namescollected">Names Collected</option>
                                    <option value="qualifiedprospects">Qualified Prospects</option>
                                    <option value="appointmentstaken">Appointments Taken</option>
                                    <option value="factfindinginterviews">Fact Finding Interviews</option>
                                    <option value="salespresentation">Sales Presentation</option>
                                    <option value="followupinterviews">Follow Up Interviews</option>
                                    <option value="noofclosings">No of Closings</option>

                                </select>
                            </div>

                        </div>

                        <!-- /.box-body -->

                        <div class="box-footer">
                            <div class="pull-left" id="tosimple">
                                <button class="btn btn-default pull-right margin-r-5" type="button" onclick="closeForm()">Cancel</button>
                                <button class="btn btn-primary margin-r-5 pull-right" type="button" onclick="loadForm();">Save</button>
                            </div>
                            <div id="tocomplex" style="display: none;">
                                <span><b>Are you want to fill more details</b></span>
                                
                                <button id="btnlater" class="btn btn-primary margin-r-5 pull-right" type="submit" >Later</button>
                                <a href="./pages/complexform.jsp"><button style="display: true;" id="btnnow"class="btn btn-default pull-right margin-r-5" type="button" >Yes</button></a>
                            </div>
                            
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </body>
    <script>
        function closeForm() {
            $('#content').hide();
            document.getElementById('wrapper').style.opacity = '1';
        }
        function loadForm() {
            $('#tocomplex').show();
            $('#tosimple').hide();
        }

    </script>
</html>