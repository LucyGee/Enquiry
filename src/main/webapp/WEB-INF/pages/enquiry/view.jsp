<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/19/2020
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Verification Page</title>
      <link type="image/jpg" href="<c:url value='/libs/bootstrap/images/graduation.jpg'/>" rel="icon">
    
    <link type="text/css" href="<c:url value='/libs/bootstrap/dist/css/bootstrap.min.css' /> "  rel="stylesheet">
        <link type="text/css" href="<c:url value='/libs/bootstrap/dist/css/freelancer.css' /> "  rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/bootstrap/dist/css/sb-admin-2.css' /> "  rel="stylesheet">
    <!-- Font Awesome -->
    <link type="text/css" href="<c:url value='/libs/font-awesome/css/font-awesome.min.css' /> " rel="stylesheet">
    <!-- NProgress -->
    <link type="text/css" href="<c:url value='/libs/nprogress/nprogress.css' /> " rel="stylesheet">
    <!-- iCheck -->
    <link type="text/css" href="<c:url value='/libs/iCheck/skins/flat/green.css' /> " rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link type="text/css" href="<c:url value='/libs/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css' /> " rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/css/trumbowyg.min.css' /> " rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link type="text/css" href="<c:url value='/libs/bootstrap-daterangepicker/daterangepicker.css' /> " rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/fileinput.min.css' /> " rel="stylesheet"/>
    <link type="text/css" href="<c:url value='/libs/css/validation.css' /> " rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/css/survey.css' />" rel="stylesheet">

    <link type="text/css" href="<c:url value='/libs/pnotify/dist/pnotify.css' /> "  rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/pnotify/dist/pnotify.buttons.css' /> " rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/pnotify/dist/pnotify.nonblock.css' /> " rel="stylesheet">

    <link type="text/css" href="<c:url value='/libs/fullcalendar/dist/fullcalendar.min.css' /> " rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/fullcalendar/dist/fullcalendar.print.css' /> "  media="print">

    <link type="text/css" href="<c:url value="/libs/select2/select2.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/libs/select2/select2-bootstrap.css"/>" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link type="text/css" href="<c:url value='/libs/DataTables/media/css/dataTables.bootstrap.css' />" rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/css/bootstrap-datetimepicker.css' /> " rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/css/select.dataTables.min.css' /> " rel="stylesheet"/>
    <link type="text/css" href="<c:url value='/libs/css/jquery.dataTables.multiselect.css' /> " rel="stylesheet"/>

    <link type="text/css" href="<c:url value='/libs/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css' />" rel="stylesheet"/>
    <link type="text/css" href="<c:url value='/libs/build/css/custom.min.css' /> " rel="stylesheet" >
    <!-- jQuery -->
    <script src="<c:url value='/libs/jquery/dist/jquery.min.js' /> "></script>
    <script src="<c:url value="/libs/select2/select2.js"/>"></script>
    <script src="<c:url value="/libs/moment/moment.js"/>"></script>
    <script src="<c:url value="/libs/bootstrap/js/modal.js"/>"></script>

    <script src="<c:url value='/js/fileinput.min.js' /> "></script>




    <script type="text/javascript" src="<c:url value='/libs/DataTables/media/js/jquery.dataTables.min.js' /> "></script>
    <script type="text/javascript" src="<c:url value='/js/dataTables.buttons.min.js' /> "></script>

    <script type="text/javascript" src="<c:url value='/js/buttons.html5.min.js' /> "></script>
    <script type="text/javascript" src="<c:url value='/js/buttons.print.min.js' /> "></script>
    <script type="text/javascript" src="<c:url value='/js/buttons.flash.min.js' /> "></script>
    <script type="text/javascript" src="<c:url value='/js/vfs_fonts.js' /> "></script>
    <script type="text/javascript" src="<c:url value='/js/jszip.min.js' /> "></script>

    <script type="text/javascript" src="<c:url value='/libs/DataTables/media/js/dataTables.bootstrap.js' /> "></script>

    <script type="text/javascript" src="<c:url value="/libs/js/dataTables.select.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/jquery.dataTables.multiselect.js"/>"></script>

    <script type="text/javascript" src="<c:url value="/libs/js/bootstrap-datetimepicker.js"/>"></script>
    <script src="<c:url value='/libs/js/bootbox.min.js' /> "></script>

    <%--<link rel="stylesheet" type="text/css" href="<c:url value='/libs/css/jquery-ui.min.css' />">--%>
    <link type="text/css" href="<c:url value='/libs/custom-broker.css' />">
    <script type="text/javascript" src="<c:url value="/js/utils/select2builder.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/modules/enquiry/api.js"/>"></script>
    <script>var ctx = "${pageContext.request.contextPath}"</script>
    <%--<link rel="stylesheet" type="text/css" href="<c:url value='/libs/css/jquery-ui.min.css' />">--%>
</head>


<div class="x_panel">
    <div class="x_title">
        <h3> Student Details</h3>
    </div>
<div class="row" style="margin-top: 1em">
    <div class="col-md-offset-1 col-md-4 col-xs-12">
        <label for="noOfUnits" class="control-label col-md-3">Student<span class="required">*</span></label>

        <div class="col-md-9 col-xs-12">
            <input type="hidden" id="stud-id" name="student"/>
            <input type="hidden" id="stud-name">
            <div id="std-div" class="form-control"
                 select2-url="" >

            </div>
        </div>
</div>
</div>
    <form class="form-horizontal" id="student-form" style="margin-top: 2em">

        <div class="row" style="margin-top: 1em">
            <div class="col-md-6 col-xs-12">
                <label for="noOfUnits" class="control-label col-md-4">Name<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                    <input name="name" id="name" class="form-control"
                           placeholder="" required>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <label for="noOfUnits" class="control-label col-md-4">Reg No.<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                    <input name="regNo" id="regno" class="form-control"
                           placeholder="" required>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 1em">
            <div class="col-md-6 col-xs-12">
                <label for="noOfUnits" class="control-label col-md-4">Points<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                    <input name="points" id="points" class="form-control"
                           placeholder="" required>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <label for="noOfUnits" class="control-label col-md-4">Honours<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                    <input name="honours" id="honours" class="form-control"
                           placeholder="" required>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 1em">
            <div class="col-md-6 col-xs-12">
                <label for="noOfUnits" class="control-label col-md-4">Phone<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                    <input name="phone" id="phone" class="form-control"
                           placeholder="" required>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <label for="noOfUnits" class="control-label col-md-4">Completion Date<span class="required">*</span></label>
                <div class="col-md-6 col-xs-12">
                    <div class='input-group date datepicker-input'>
                        <input type='text' class="form-control pull-right" name="completionDate" id="end"/>
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 1em">
            <div class="col-md-6 col-xs-12">
                <label for="noOfUnits" class="control-label col-md-4">Email<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                    <input name="email" id="email" class="form-control"
                           placeholder="" required>
                </div>
            </div>



        </div>

        <div class='spacer'></div>

        <div class="form-group" style="margin-top: 1em">
            <div class="col-md-offset-8 col-md-4 col-xs-12 form-required">
                <div class="col-md-7 col-xs-12">
                    <div class="kv-avatar center-block" style="height:15em;width: 200px">
                        <input name="file" type="file" id="stud-avatar" class="file-loading">

                    </div>
                </div>
            </div>
        </div>


    </form>
</div>
</body>
</html>
