<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="_header3.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard</title>
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
              <h2>Welcome ${user.userName }</h2>
              <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/dashboard">Dashboard</a></li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  
  <!-- Start Contact section -->
  <section id="contact">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="contact-left wow fadeInLeft">
            <h2>Account Information</h2>
            <address class="single-address">
              <h4>User Info</h4>
              <p>Name: ${user.firstName } ${user.lastName }</p>
              <p>Email: ${user.email}</p>
              <p>Phone: ${user.phone }</p>
            </address>
             <address class="single-address">
              <h4>Bank Details:</h4>
                   <p>Bank Name: ${user.bankName } </p>
                   <p>Account Name: ${user.accountName }</p>
                   <p>Account Number: ${user.accountNumber}</p>
                   <p> <a href="#">Edit Info</a></p></address>
          </div>
        </div>
        <div class="col-md-8 col-sm-6 col-xs-12">
        <p style="color:green;">${success }</p>
					<div>
                    <a href="${pageContext.request.contextPath }/provideHelp" class="button button-provide-help"  data-text="PROVIDE HELP"><span>PROVIDE HELP</a></span>
                  </div>
                  <div>
                       <a href="${pageContext.request.contextPath }/ghTransactions" class="button button-get-help"  data-text="GET HELP"><span>GET HELP</a></span>
                  </div>
       		 </div>
      </div>
    </div>
  </section>
  <jsp:include page="_footer2.jsp"></jsp:include>
  
</body>
</html>