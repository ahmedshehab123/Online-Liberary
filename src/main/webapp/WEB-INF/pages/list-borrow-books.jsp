 
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="books" class="item form-group">
 <div  class="col-md-6 col-sm-6 col-xs-12">
                        <select class="form-control col-md-7 col-xs-12" name="bookName" >
                        <option value="">-اختر الكتاب-</option>
                        <c:forEach var="book" items="${books }">
  										<option value="${book.bookName }">${book.bookName }</option>
  						</c:forEach>				
						</select>
    </div> 
    <span class="required"></span> <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">اسم الكتاب 
                      </label>
                     </div>