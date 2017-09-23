
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr" lang="ar">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

<title>ارئيسيه</title>
<script src="/MilitaryAcademyLibrary/resources/scripts/searchDevices.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/scripts/updateSelectors.js"></script>
<script src="/MilitaryAcademyLibrary/resources/scripts/editAddDelete.js"></script>
<script type="text/javascript">
	function showHint(str) {
		var xhttp;
		if (str.length == 0) {
			document.getElementById("stdname").innerHTML = "";
			return;
		}
		xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				document.getElementById("stdname").innerHTML = xhttp.responseText;
			}
		};
		xhttp.open("GET", "find-student?studentNumber=  "+parseInt(str)+"", true);
		xhttp.send();
	}
</script>
<script type="text/javascript">
function findBooks() {
	var city = $("#department").val();
	search(city);
	}
function search(department) {
	var xhttp;
	xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("books").innerHTML = xhttp.responseText;
		}
	};
	xhttp.open("GET",
			"list-borrow-books?department=" + department + "", true);
	xhttp.send();
}
</script>
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
			<center>	<h3 dir="rtl">Application Dashboard</h3></center>
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