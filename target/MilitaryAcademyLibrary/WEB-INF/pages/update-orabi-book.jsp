
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr" lang="ar">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

<title>Gentelella Alela! |</title>
<script src="/MilitaryAcademyLibrary/resources/scripts/searchDevices.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/scripts/updateSelectors.js"></script>
<script src="/MilitaryAcademyLibrary/resources/scripts/editAddDelete.js"></script>

<!-- Bootstrap -->
<link
	href="/MilitaryAcademyLibrary/resources/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="/MilitaryAcademyLibrary/resources/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link
	href="/MilitaryAcademyLibrary/resources/vendors/nprogress/nprogress.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="/MilitaryAcademyLibrary/resources/build/css/custom.min.css"
	rel="stylesheet">
</head>
<%@ include file="header.jsp"%>
<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Add books To Library</h3>
			</div>

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
                  <h2>Form validation <small>sub title</small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a>
                        </li>
                        <li><a href="#">Settings 2</a>
                        </li>
                      </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
				<p>${updated }</p>
                  <form:form action="update-book" method="post" modelAttribute="book" enctype="multipart/form-data" class="form-horizontal form-label-left" >

                    <input type="hidden"  name="bookID" class="form-control col-md-7 col-xs-12" value="${requestScope.book.bookID }">
                    <span class="section">Personal Info</span>

                    <div class="item form-group">
                     
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  class="form-control col-md-7 col-xs-12"   name="generalNumber"  required="required" type="text" value="${requestScope.book.generalNumber }">
                      </div>
                     <span class="required"></span>   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">الرقم العام
                      </label>
                    </div>
                    <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text"  name="categoryNumber" required="required" class="form-control col-md-7 col-xs-12" value="${requestScope.book.categoryNumber }">
                      </div>
                      <span class="required"></span> <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email" >رقم التصنيف
                      </label>
                    </div>
                    <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text"  name="bookName"  required="required" class="form-control col-md-7 col-xs-12" value="${requestScope.book.bookName }">
                      </div>
                     <span class="required"></span> <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">اسم الكتاب 
                      </label>
                    </div>
                    <div class="item form-group">
                     
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text"  name="copyNo" required="required"  class="form-control col-md-7 col-xs-12" value="${requestScope.book.copyNo }">
                      </div>
                      <span class="required"></span> <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">عدد النسخ 
                      </label>
                    </div>
                    <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text"  name="writerName" required="required" placeholder="" class="form-control col-md-7 col-xs-12" value="${requestScope.book.writerName }">
                      </div>
                      <span class="required"></span><label class="control-label col-md-3 col-sm-3 col-xs-12" for="website">اسم المولف 
                      </label>
                    </div>
                    <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" name="publisherName"  class="optional form-control col-md-7 col-xs-12" value="${requestScope.book.publisherName }">
                      </div>
                    <span class="required"></span>  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">الناشر 
                      </label>
                    </div>
                    <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" name="printerNumber"  class="form-control col-md-7 col-xs-12" required="required" value="${requestScope.book.printerNumber }">
                      </div>
                      <span class="required"></span><label for="password" class="control-label col-md-3">رقم الطبعه</label>
                    </div>
                    <div class="item form-group">
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text" name="buyingDate"  class="form-control col-md-7 col-xs-12" required="required" value="${requestScope.book.buyingDate }">
                      </div>
                      <span class="required"></span><label for="password2" class="control-label col-md-3 col-sm-3 col-xs-12">تاريخ الشراء</label>
                    </div>
                    <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text"  name="price" required="required"  class="form-control col-md-7 col-xs-12" value="${requestScope.book.price }">
                      </div>
                     <span class="required"></span> <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telephone">السعر 
                      </label>
                    </div>
                    <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" required="required" name="publisherDate" class="form-control col-md-7 col-xs-12" value="${requestScope.book.publisherDate }">
                      </div>
                     <span class="required"></span> <label class="control-label col-md-3 col-sm-3 col-xs-12" >تاريخ النشر 
                      </label>
                    </div>
                     <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" required="required" name="department" class="form-control col-md-7 col-xs-12" value="${requestScope.book.department }">
                      </div>
                      <span class="required">*</span><label class="control-label col-md-3 col-sm-3 col-xs-12" >الجناح
                      </label>
                    </div>
                     <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="file"  name="bookFile" class="form-control col-md-7 col-xs-12" >
                      </div>
                     <span class="required"></span> <label class="control-label col-md-3 col-sm-3 col-xs-12" >النسخه الالكترونيه
                      </label>
                    </div>
                    <div class="ln_solid"></div>
                    <div class="form-group">
                      <div class="col-md-6 col-md-offset-3">
                        <button type="submit" class="btn btn-primary">Cancel</button>
                        <button id="send" type="submit" class="btn btn-success">Submit</button>
                      </div>
                    </div>
                  </form:form>

                </div>
              </div>
            </div>
          </div>
        </div>
		
	</div>
<!-- /page content -->

<!-- footer content -->
<footer>
	<div class="pull-right">
		Gentelella - Bootstrap Admin Template by <a
			href="https://colorlib.com">Colorlib</a>
	</div>
	<div class="clearfix"></div>
</footer>
<!-- /footer content -->
</div>
</div>

<!-- jQuery -->
<script
	src="/MilitaryAcademyLibrary/resources/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script
	src="/MilitaryAcademyLibrary/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/MilitaryAcademyLibrary/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script
	src="/MilitaryAcademyLibrary/resources/vendors/nprogress/nprogress.js"></script>
<!-- validator -->
<script
	src="/MilitaryAcademyLibrary/resources/vendors/validator/validator.js"></script>

<!-- Custom Theme Scripts -->
<script src="/MilitaryAcademyLibrary/resources/build/js/custom.min.js"></script>

<!-- validator -->
<script>
	// initialize the validator function
	validator.message.date = 'not a real date';

	// validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
	$('form').on('blur', 'input[required], input.optional, select.required',
			validator.checkField).on('change', 'select.required',
			validator.checkField).on('keypress', 'input[required][pattern]',
			validator.keypress);

	$('.multi.required').on('keyup blur', 'input', function() {
		validator.checkField.apply($(this).siblings().last()[0]);
	});

	$('form').submit(function(e) {
		e.preventDefault();
		var submit = true;

		// evaluate the form using generic validaing
		if (!validator.checkAll($(this))) {
			submit = false;
		}

		if (submit)
			this.submit();

		return false;
	});
</script>
<!-- /validator -->
</body>
</html>