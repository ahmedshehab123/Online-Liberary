
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>كلمة السيد المدير</title>
<%@ include file="libheader.jsp" %>
        <!--Header Area Start-->
        
        <!--Header Area End-->
		<!-- Mobile Menu Start -->

		<!-- Mobile Menu End -->   
        <!-- Breadcrumbs Area Start -->
        <div class="breadcrumbs-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
					    <div class="breadcrumbs">
					       <!-- <h2>About Us</h2> 
					       <ul class="breadcrumbs-list">
						        <li>
						            <a title="Return to Home" href="index.html">Home</a>
						        </li>
						        <li>About Us</li>
						    </ul> -->
					    </div>
					</div>
				</div>
			</div>
		</div> 
		<!-- Breadcrumbs Area Start --> 
		<!-- About Us Area Start -->
		
		<div dir="rtl" class="about-us-area section-padding">
		    <div class="container">
		    <c:forEach var="word" items="${words }">
                <div dir="rtl" class="row">
                    <div dir="rtl" class="about-top-inner">
                        <div class="col-md-6">
                            <div class="about-inner" style="position: relative; left: 80%; border: 2px solid #a1a1a1; padding: 10px 40px;  background: #dddddd; width: 100%; border-radius: 5px;  background-color: #e8e7de;">
                           
                                <div dir="rtl" class="about-title">
                                    <h3 style="font-size: 35px; color: blue;">${word.title }  </h3>
                                </div>
                                <div class="about-content">
                                    <p dir="rtl"  style="font-size: 25px;">${word.content }</p>
                                </div>
                                 <div dir="rtl" class="about-image">
                                <img src="diplay-manager-image?picturePath=${word.picturePath }" alt="">
                            </div>
                            </div>
                        </div>
                        
                    </div>
                   
                </div>
                <h2></h2>
                </c:forEach>
		    </div>
		</div>
		
		<!-- Testimonial Area End -->
		<!-- Counter Area Start -->

	<%@ include file="libfooter.jsp" %>
