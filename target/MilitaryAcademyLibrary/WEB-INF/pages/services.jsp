<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<title>الخدمات الادارية</title>
<%@ include file="libheader.jsp" %>
		
		<!-- Mobile Menu End -->   
        <!-- Breadcrumbs Area Start -->

		<!-- Breadcrumbs Area Start --> 
        <!-- Shop Area Start -->
        <div class="shopping-area section-padding">
            <div class="container">
                <div class="row">
   			<div class="col-md-3 col-sm-3 col-xs-12">
   			<!-- <div dir="rtl" class="shop-widget-top">
   			<h2 style="color: red;">عرض خاص بمناسبة شهر رمضان</h2>
   			<h2 class="sidebar-title text-center"></h2>
   			<h3>اشتري علبة جبنه وخد رغيف عيش ببلاش من لواء الجنود</h3>
   			</div> -->
                    </div>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <div class="wishlist-right-area table-responsive">
                            <table class="wish-list-table">
                                <thead>
                                     <tr>
                                        <th class="t-product-name"><h3>صوره المنتج</h3></th>
                                        <th class="product-details-comment"><h3>مكان تواجد المنتج</h3> </th>
                                        <th class="product-price-cart"><h3>السعر</h3></th>
                                        <th class="w-product-remove"><h3>اسم المنتج</h3></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="product" items="${services }">
                                    <tr >
                                        <td  class="t-product-name">
                                            <a href="#">
                                                <img src="product-image?picturePath=${product.picturePath }" alt="">
                                            </a>
                                        </td>
                                        <td class="product-details-comment">
                                            <h4>${product.place }</h4>
                                            <p></p>
                                        </td>
                                        <td class="product-price-cart" >
                                            <div >
                                                <h3>${product.price }</h3>
                                               
                                            </div>
                                           
                                        </td>
                                        <td class="w-product-remove">
                                            <h3> ${product.productName }</h3>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="wishlist-bottom-link">
                                                    
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Shop Area End -->
		<%@ include file="libfooter.jsp" %>
		