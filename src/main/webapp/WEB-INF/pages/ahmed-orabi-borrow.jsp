
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<title>استعارة الكتب</title>
<%@ include file="header.jsp"%>
<script type="text/javascript">	
$(document).ready(function(){
	$("#studentNumber").keyup(function(){
		var id= $("input[name=studentNumber]").val();
		$.ajax({
			method:'GET',	
			url:'find-student',
			data:{studentNumber:id},
			error:function(e){
			console.log(e);
				},				 
				success:function(result){
				$('#studentName').val(result);
				console.log(result);
				},
		});
		
	  /*  $.getJSON("find-student?studentNumber=  "+id+"", function(result){
	    	$('#studentName').val(result);
	    });*/
	});
});
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

<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
			<center>	<h3 dir="rtl">المتابعة اليوميه لاستعارة الكتب</h3></center>
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
                <div class="x_content">

                  <form:form action="save-student-borrow" method="post" modelAttribute="borrower" enctype="multipart/form-data" class="form-horizontal form-label-left" >

                    <center><span class="section" style="color: red;">${added }</span></center>

                    <div class="item form-group">
                     
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input   class="form-control col-md-7 col-xs-12" autocomplete="off" id="studentNumber" name="studentNumber"  required="required" type="text">
                      </div>
                     <span class="required"></span>   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">الرقم العسكري
                      </label>
                    </div>
                    <div id="stdname" class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text"  id="studentName"  name="studentName" required="required" class="form-control col-md-7 col-xs-12">
                      </div>
                      <span class="required"></span> <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">اسم الطالب
                      </label>
                    </div>
                    <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <select class="form-control col-md-7 col-xs-12" id="department" name="department" onchange="findBooks()">
                        <option value="">-اختر الجناح-</option>
                        <c:forEach var="gen" items="${genah }">
  										<option value="${gen.departmentName }">${gen.departmentName }</option>
  						</c:forEach>				
						</select>
                      </div>
                     <span class="required"></span> <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">اسم الجناح 
                      </label>
                    </div>
                    <div  id="books" class="item form-group">
                     
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <select class="form-control col-md-7 col-xs-12" name="bookName">
                        <option value="">-اختر الكتاب-</option>
                        <c:forEach var="book" items="${books }">
  										<option value="${book.bookName }">${book.bookName }</option>
  						</c:forEach>				
						</select>
                      </div>
                      <span class="required"></span> <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">اسم الكتاب 
                      </label>
                    </div>
                    <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="date"  name="tasleemDate" required="required" placeholder="" class="form-control col-md-7 col-xs-12">
                      </div>
                      <span class="required"></span><label class="control-label col-md-3 col-sm-3 col-xs-12" for="website">تاريخ الاستلام  
                      </label>
                    </div>
                    <div class="item form-group">
                      
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="date" name="estlamDate"  class="optional form-control col-md-7 col-xs-12">
                      </div>
                    <span class="required"></span>  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">تاريخ التسليم 
                      </label>
                    </div>
                                        <div class="ln_solid"></div>
                    <div class="form-group">
                      <div class="col-md-6 col-md-offset-3">
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