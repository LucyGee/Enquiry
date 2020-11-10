<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv='cache-control' content='no-cache'>
    <meta http-equiv='expires' content='0'>
    <meta http-equiv='pragma' content='no-cache'>
    <title><spring:message  code="project.title" /></title>
    <!-- Bootstrap -->
    <link type="text/css" href="<c:url value='/libs/bootstrap/dist/css/bootstrap.min.css' /> "  rel="stylesheet">
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
<%--<link rel="stylesheet" type="text/css" href="<c:url value='/libs/css/jquery-ui.min.css' />">--%>
    <link type="text/css" href="<c:url value='/libs/custom-broker.css' />">

</head>
