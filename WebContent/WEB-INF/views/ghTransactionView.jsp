<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="_header3.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Transactions</title>
</head>
<body>
<jsp:include page="_menu3.jsp"></jsp:include>
  <section id="blog-banner">
    <img src="res/images/blog-banner.jpg" alt="img">
    <div class="blog-overlay">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="blog-banner-area">
              <h2>Welcome ${user}</h2>
              <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/dashboard">Dashboard</a></li>
                <li><a href="#">Transactions</a>
                <li class="active">Receive From</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  	
  	
  <section id="about">
    <div class="container">
      <div class="row">
        <center>
        <p style="color: red"> *** Please make sure you have received an alert before clicking on the confirm button.</p>
        <h3>Payer Details</h3>
		<table style="width:100%; padding:6px;" border="1" cellpadding="3" cellspacing="3">
			<tr>
				<th>&nbsp;Name</th>
				<th>&nbsp;Phone</th>
				<th>&nbsp;Email</th>
				<th>&nbsp;Confirmation</th>
			</tr>
			<c:forEach items="${payer}" var="details">
			<tr>
				<td>&nbsp;${details.payer } </td>
				<td>&nbsp;${details.payerPhone }</td>
				<td>&nbsp;${details.payerEmail }</td>
				<td><input type="button" name="confirm1" value="Confirm"></td>
			</tr>
			</c:forEach>
		</table>
		<c:choose>
			<c:when test="${details == ' '} ">
				Please be patient, there are no available ghers.
			</c:when>
			<c:otherwise>
				Please make sure you have received alert, before confirming.
			</c:otherwise>
		</c:choose>
		</center>
        </div>
    </div>
    </section>
  <jsp:include page="_footer2.jsp"></jsp:include>
</body>
</html>