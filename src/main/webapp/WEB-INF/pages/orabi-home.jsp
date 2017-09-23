<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <title>مكتبة احمد عرابي</title>
<%@ include file="libheader.jsp" %>

	
		<!-- Mobile Menu End -->        
        <!-- slider Area Start -->
	
		<!-- slider Area End-->    
		<!-- Online Banner Area Start -->    
		<div class="online-banner-area">
		    <div class="container">
		        <div class="banner-title text-center">
		            <h2> مكتبة <span> احمد عرابي </span></h2>
		        </div>
		        
		    </div>
		</div>
		<!-- Online Banner Area End -->   
		<!-- Shop Info Area Start -->   
		<div class="shop-info-area" style="background-image: url('/MilitaryAcademyLibrary/resources/img/orabi-book.jpg');">
		    <div class="container">
	<div class="layer-4">
                        <form action="searchestalam" class="title-4">
                            <input type="text" name="bookName" dir="rtl" placeholder="    ابحث عن كتابك المفضل  ">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
					</div>
		    </div>
		</div> 
		<!-- Shop Info Area End -->
		<!-- Featured Product Area Start -->
		<div class="featured-product-area section-padding">
            <h2 class="section-title">أقسام مكتبه احمد عرابي</h2>
            <div class="container">
                  
                <div class="row">
                    <div class="product-list tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="arrival">
                            <div class="featured-product-list indicator-style">
                                <c:forEach var="gen" items="${genah }">
                                <div class="single-p-banner">
                                    <div class="col-md-3">
                                        <div class="single-banner">
                                            <div class="product-wrapper">
                                                <a href="list-genah-books?department=${gen.departmentName }" class="single-banner-image-wrapper">
                                                    <img alt="" src="/MilitaryAcademyLibrary/resources/img/featured/3.jpg">
                                                    
                                                </a>
                                               
                                            </div>
                                            <div class="banner-bottom text-center">
                                                <a href="#"><h3>${gen.departmentName }</h3></a>
		                        </div>
											
                                        </div>
                                    </div>
                                    
                                </div>
                                </c:forEach>
                                                   
                              
                            </div>
                        </div>
                    </div>
                </div>             
            </div>
		</div>
		<!-- Featured Product Area End -->
		<!-- Testimonial Area Start -->
		
		<%@ include file="libfooter.jsp"  %>
        