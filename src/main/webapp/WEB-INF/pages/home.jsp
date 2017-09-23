<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="libheader.jsp" %>
		<div class="slider-area">
			<div class="bend niceties preview-1">
				<div id="ensign-nivoslider" class="slides">	
					<img src="/MilitaryAcademyLibrary/resources/img/slider/12.jpg" alt="" title="#slider-direction-1"  />
					<img src="/MilitaryAcademyLibrary/resources/img/slider/book2.jpg" alt="" title="#slider-direction-1"  />
					<img src="/MilitaryAcademyLibrary/resources/img/slider/book.jpg" alt="" title="#slider-direction-2"  />
				</div>
				<!-- direction 1 -->
				<div id="slider-direction-1" class="text-center slider-direction">
					<!-- layer 1 -->
					<div class="layer-1">
						<h2 class="title-1">الكلية الحربية</h2>
					</div>
					<!-- layer 2 -->
					<div class="layer-2">
					<p class="title-2" style="font-size: 50px; color: red;">الواجب الشرف الوطن<p>
					</div>
					<!-- layer 3 -->
					
					<!-- layer 4 -->
					<div class="layer-4">
                        <form action="searchestalam" class="title-4">
                            <input type="text" name="bookName" dir="rtl" placeholder="    ابحث عن كتابك المفضل  ">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
					</div>
				</div>
				<!-- direction 2 -->
				<div id="slider-direction-2" class="slider-direction">
					<!-- layer 1 -->
					<div class="layer-1">
						<h2 class="title-1">الكلية الحربية</h2>
					</div>
					<!-- layer 2 -->
					<div class="layer-2">
													<p class="title-2" style="font-size: 50px; color: red;">الواجب الشرف الوطن<p>					</div>
					<!-- layer 3 -->
					
					<!-- layer 4 -->
					<div class="layer-4">
                        <form action="search" class="title-4">
                            <input type="text" name="bookName" placeholder="Enter your book title here">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
					</div>
				</div>
			</div>
		</div>
		<!-- slider Area End-->    
		<!-- Online Banner Area Start -->    

		<!-- Online Banner Area End -->   
		<!-- Shop Info Area Start -->   
	
		<!-- Shop Info Area End -->
		<!-- Featured Product Area Start -->

		<!-- Featured Product Area End -->
				<!-- Blog Area Start -->

		<!-- Blog Area End -->
		<!-- Testimonial Area Start -->

		<!-- Counter Area End -->

		<!-- News Letter Area Start -->
	
		<!-- News Letter Area End -->
		<!-- Footer Area Start -->

		<!-- Footer Area End -->
        <!--Quickview Product Start -->
        <div id="quickview-wrapper">
            <!-- Modal -->
            <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-product">
                                <div class="product-images">
                                    <div class="main-image images">
                                        <img alt="" src="/MilitaryAcademyLibrary/resources/img/quick-view.jpg">
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="libfooter.jsp" %>
        <!--End of Quickview Product-->			
		<!-- all js here -->
		<!-- jquery latest version -->
      