<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html dir="ltr" lang="ar">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>احمد عرابي</title>
<script type="text/javascript"
	src="/MilitaryAcademyLibrary/resources/lib/jquery-1.11.0.min.js"></script>



<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
</head>
<%@ include file="header.jsp"%>


<!-- page content -->
<div class="right_col" role="main">
	

	<div class="">
		<div class="page-title">
			<div class="title_left"></div>

			<div class="title_right">
				<div
					class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">

				</div>
			</div>
		</div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Monitor Books</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false"><i
									class="fa fa-wrench"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Settings 1</a></li>
									<li><a href="#">Settings 2</a></li>
								</ul></li>
							<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						
						<table id="datatable-buttons" class="table table-striped table-bordered">
							<thead>
								<tr>
								    <th>النسخه الالكترونيه</th>
									<!-- <th>غلاف الكتاب</th> -->
									<th>الجناح</th>
									<th>تاريخ النشر</th>
									<th>السعر</th>
									<th>تاريخ الشراء</th>
									<th>رقم الطبعه </th>
									<th>الناشر </th>
									<th>اسم المولف</th>
									<th>عدد النسخ</th>
									<th>اسم الكتاب</th>
									<th>رقم التصنيف</th>
									<th>الرقم العام</th>
									<th>تعديل</th>
									
								</tr>
							</thead>


							<tbody>
								<c:forEach var="book" items="${estelam }">

									<tr>
									<td><a style="color: blue;" href="preview-orabi-book?generatedName=${book.generatedName }" target="_blank">book reader</a></td>
									<%-- <td><a href="previewfirstpage?fileName=${book.generatedName}" target="_blank">book cover</a></td> --%>
									
									<td>${book.department }</td>
									<td>${book.publisherDate }</td>
									<td>${book.price }</td>
									<td>${book.buyingDate }</td>
									<td>${book.printerNumber }</td>
									<td>${book.publisherName }</td>
									<td>${book.writerName }</td>
									<td>${book.copyNo }</td>
									<td>${book.bookName }</td>
									<td>${book.categoryNumber }</td>
									<td>${book.generalNumber }</td>
									<td><a class="label label-success pull-right" href="get-book-data?bookID=${book.bookID}" target="_blank">تعديل</a></td>
									
									
									
									</tr>
									
                            
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- jQuery -->
<script
	src="/MilitaryAcademyLibrary/resources/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script
	src="/MilitaryAcademyLibrary/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script
	src="/MilitaryAcademyLibrary/resources/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script
	src="/MilitaryAcademyLibrary/resources/vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script
	src="/MilitaryAcademyLibrary/resources/vendors/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/datatables.net-scroller/js/datatables.scroller.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/jszip/dist/jszip.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/pdfmake/build/pdfmake.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/vendors/pdfmake/build/vfs_fonts.js"></script>

<!-- Custom Theme Scripts -->
<script
	src="/MilitaryAcademyLibrary/resources/build/js/custom.min.js"></script>

<!-- Datatables -->
<script>
	$(document).ready(function() {
		var handleDataTableButtons = function() {
			if ($("#datatable-buttons").length) {
				$("#datatable-buttons").DataTable({
					dom : "Bfrtip",
					buttons : [ {
						extend : "copy",
						className : "btn-sm"
					}, {
						extend : "csv",
						className : "btn-sm"
					}, {
						extend : "excel",
						className : "btn-sm"
					}, {
						extend : "pdfHtml5",
						className : "btn-sm"
					}, {
						extend : "print",
						className : "btn-sm"
					}, ],
					responsive : true
				});
			}
		};

		TableManageButtons = function() {
			"use strict";
			return {
				init : function() {
					handleDataTableButtons();
				}
			};
		}();

		$('#datatable').dataTable();

		$('#datatable-keytable').DataTable({
			keys : true
		});

		$('#datatable-responsive').DataTable();

		$('#datatable-scroller').DataTable({
			ajax : "js/datatables/json/scroller-demo.json",
			deferRender : true,
			scrollY : 380,
			scrollCollapse : true,
			scroller : true
		});

		$('#datatable-fixed-header').DataTable({
			fixedHeader : true
		});

		var $datatable = $('#datatable-checkbox');

		$datatable.dataTable({
			'order' : [ [ 1, 'asc' ] ],
			'columnDefs' : [ {
				orderable : false,
				targets : [ 0 ]
			} ]
		});
		$datatable.on('draw.dt', function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_flat-green'
			});
		});

		TableManageButtons.init();
	});
</script>
<!-- /Datatables -->
</body>
</html>