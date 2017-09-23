<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <title>مكتبة الاجنحه التعليمية</title>
<%@ include file="libheader.jsp" %>

	
		<!-- Mobile Menu End -->        
        <!-- slider Area Start -->
	
		<!-- slider Area End-->    
		<!-- Online Banner Area Start -->    
		<div class="online-banner-area">
		    <div class="container">
		        <div class="banner-title text-center">
		            <h2> اجنحه  <span><span>الكلية </span>الحربية</span></h2>
		        </div>
		        
		    </div>
		</div>
		<!-- Online Banner Area End -->   
		<!-- Shop Info Area Start -->   
		<div class="shop-info-area" style="background-image: url('/MilitaryAcademyLibrary/resources/img/book2.jpg');">
		    <div class="container">
	<div class="layer-4">
                        <form action="search" class="title-4">
                            <input type="text" name="bookName"  dir="rtl" placeholder="    ابحث عن كتابك المفضل  ">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
					</div>
		    </div>
		</div> 
		<!-- Shop Info Area End -->
		<!-- Featured Product Area Start -->
		<div class="featured-product-area section-padding">
            <h2 class="section-title">الاجنحه</h2>
            <div class="container">
                  
               <div class="row">
		            <div class="banner-list">
		            <c:forEach var="department" items="${departments }">
		                <div class="col-md-4 col-sm-6"  style="width: 20%;  height: 30%;  overflow: hidden;">
		                    <div class="single-banner" >
		                        <a href="list-books-in-department?departmentName=${department.departmentName}">
		                            <img style="width: 100%;  height: 60%;  overflow: hidden;" src="diplay-image?generatedName=${department.imageName }">
		                        </a>
		                        
		                        <div class="banner-bottom text-center">
		                            <a href="#">${department.departmentName }</a>
		                        </div>
		                    </div>
		                </div>
		                </c:forEach>
		               
		               
		            </div>
		        </div>     
            </div>
		</div>
		<!-- Featured Product Area End -->
		<!-- Testimonial Area Start -->
		
		<!-- Counter Area End -->
		<!-- Blog Area Start -->
		<%@ include file="libfooter.jsp" %>
       