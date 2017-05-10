<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Info</title>
</head>
<body>
<jsp:include page="_header2.jsp"></jsp:include>
<jsp:include page="_menu2.jsp"></jsp:include>
<section>
 <div style="float: right; padding: 10px; text-align: right;">
 
     <!-- User store in session with attribute: loginedUser -->
     <a href="${pageContext.request.contextPath}/logout">Logout</a>
   <br/>
  </div>
<h3>Hello ${user.userName }</h3>
User Name: <b>${user.userName }</b>
<p>Account Number:	<b>${user.accountNumber }</b></p>
<p>Bank Name: ${user.bankName }</p>
<br />
</section>
<jsp:include page="_footer2.jsp"></jsp:include>
</body>
</html>