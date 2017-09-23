<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>النبطشيات</title>
<%@ include file="libheader.jsp" %>
<div class="shop-info-area">
		    <div class="container">
	<div class="layer-4">
                        
					</div>
		    </div>
		</div> 
<div>
<br/>
		<div  class="slider-area">
			<div  class="bend niceties preview-1">
				<div id="ensign-nivoslider" class="slides">	
				<c:forEach var="nab" items="${nabatchy }">
					<img  src="diplay-nabatchy?picturePath=${nab }" alt="" title="#slider-direction-1"  />
				</c:forEach>	
				</div>			
			</div>
		</div>
</div>		

<%@ include file="libfooter.jsp" %>
