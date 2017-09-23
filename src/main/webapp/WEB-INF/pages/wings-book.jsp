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
		<div class="shop-info-area">
		    <div class="container">
	<div class="layer-4">
                        <form action="search" class="title-4">
                            <input type="text" name="bookName" placeholder="Enter your book title here">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
					</div>
		    </div>
		</div> 
		<!-- Shop Info Area End -->
		<!-- Featured Product Area Start -->
		<div class="featured-product-area section-padding">
            <h2 class="section-title">محتويات القسم</h2>
            <div class="container">
                  
               <div class="row">
		            <div class="banner-list">
		            <c:forEach var="department" items="${books }">
		                <div class="col-md-4 col-sm-6"  style=" height:220px; width:auto; max-width:350px;">
		                    <div class="single-banner">
		                        <a href="preview?generatedName=${department.generatedName }" target="_blank">
		                            <img src="/MilitaryAcademyLibrary/resources/img/single-product/1.jpg" style=" height:220px; width:auto; max-width:200px;" alt="">
		                        </a>
		                        
		                        <div class="banner-bottom text-center">
		                            <a href="#">${department.bookName }</a>
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
       