<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <title>خطة الاعمال</title>
<%@ include file="libheader.jsp" %>

	
		<!-- Mobile Menu End -->        
        <!-- slider Area Start -->
	
		<!-- slider Area End-->    
		<!-- Online Banner Area Start -->    
		<div class="online-banner-area">
		    <div class="container">
		        
		        
		    </div>
		</div>
		<!-- Online Banner Area End -->   
		<!-- Shop Info Area Start -->   
		<div class="shop-info-area">
		    <div class="container">
	<div class="layer-4">
                        <form action="searchplan" class="title-4">
                            <input type="date" name="planDate" dir="rtl">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
					</div>
		    </div>
		</div> 
		<!-- Shop Info Area End -->
		<!-- Featured Product Area Start -->
<div class="online-banner-area">
		    <div class="container">
		        
		        <div class="row">
		            <div class="banner-list" >
		            <c:forEach var="plan" items="${plans }">
		                
		                <div class="col-md-4 col-sm-6"  style="width: 20%;  height: 30%;  overflow: hidden;">
		                    <div class="single-banner" >
		                        
		                         <a href="preview-plan?filePath=${plan.filePath }" target="_blank">
		                            <img style="width: 100%;  height: 50%;  overflow: hidden;" src="/MilitaryAcademyLibrary/resources/img/plan.png" alt=""  ></a>
		                       
		                        <div class="price"><span></span></div>
		                        <div class="banner-bottom text-center">
		                            <a href="preview-plan?filePath=${plan.filePath }" target="_blank">${plan.planDate }</a>
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
		
		<%@ include  file="libfooter.jsp" %>
		