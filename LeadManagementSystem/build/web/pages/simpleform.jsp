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
                    <form role="form" method="" action="InsertCustomerDetailsController">
                        <div class="box-body col-lg-6">
                            <div class="form-group">
                                <label for="exampleInputEmail1">First Name:*</label>
                                <input class="form-control  input-group-sm " id="exampleInputEmail1" type="text" name="fname">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Mobile No:*</label>
                                <input class="form-control input-group-sm" id="exampleInputPassword1" type="text" name="mobileno" >
                            </div>
                            <div class="form-group">
                                <label>Lead Source:*</label>
                                <select class="form-control" name="leadsource">
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
                                <label >Last Name:*</label>
                                <input class="form-control input-group-sm" id="exampleInputEmail1" type="text" name="lname">
                            </div>

                            <div class="form-group" style="margin-top: 12%">

                                <div class="radio ">
                                    <label>
                                        <input name="gender" id="optionsRadios1" type="radio" checked="" value="option1">
                                        Male
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input name="gender" id="optionsRadios2" type="radio" value="option2">
                                        Female
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Plan Stage:*</label>
                                <select class="form-control" name="planstage">
                                    <option style="display: none" value=""></option>
                                    <option value="names collected">Names Collected</option>
                                    <option value="qualified prospects">Qualified Prospects</option>
                                    <option value="appointments taken">Appointments Taken</option>
                                    <option value="fact finding interviews">Fact Finding Interviews</option>
                                    <option value="sales presentation">Sales Presentation</option>
                                    <option value="follow up interviews">Follow Up Interviews</option>
                                    <option value="no of closings">No of Closings</option>

                                </select>
                            </div>

                        </div>

                        <!-- /.box-body -->

                        <div class="box-footer" id="footer">
                            <div class="pull-left" id="tosimple">
                                <button class="btn btn-default pull-right margin-r-5" type="button" onclick="closeForm()">Cancel</button>
                                <button class="btn btn-primary margin-r-5 pull-right" type="button" onclick="loadForm();">Save</button>
                            </div>
                            <div id="tocomplex" style="display: none;">
                                <span><b>Are you want to fill more details</b></span>

                                <button id="btnlater" class="btn btn-primary margin-r-5 pull-right" type="submit" >Later</button>
                                <button style="display: true;" id="btnnow"class="btn btn-default pull-right margin-r-5" type="button" onclick="loadComplexForm();" >Yes</button>
                            </div>

                        </div>

                        <div class="box-body  box-group" style="display: none;" id="complexform">
                            <div class="box-body col-lg-6" >
                                <div class="form-group" >
                                    <label >NIC:</label>
                                    <input class="form-control input-group-sm" id="exampleInputEmail1" type="text" name="lname">
                                </div>
                                <div class="form-group">
                                    <label>Lead Status:*</label>
                                    <select class="form-control" name="gender">
                                        <option>Verified</option>
                                        <option>Non Verified</option>
                                    </select>
                                </div>
                            </div>

                            <div class="box-body col-lg-6 box-group" >
                                <div class="form-group" >
                                    <label >Email:</label>
                                    <input class="form-control input-group-sm" id="exampleInputEmail1" type="text" name="lname">
                                </div>

                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox">
                                        VVIP
                                    </label>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label >Upload File</label>
                                    <input type="file" id="exampleInputFile">


                                </div>
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
        function loadComplexForm() {
            $('#footer').hide();
            $('#complexform').show();

        }

    </script>
</html>