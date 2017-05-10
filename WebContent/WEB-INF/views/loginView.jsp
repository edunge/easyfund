<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<jsp:include page="_header2.jsp"></jsp:include>
</head>
<jsp:include page="_menu2.jsp"></jsp:include>
<h3></h3>

  <!-- Start about section -->
  <section id="about">
    <div class="container">    
      <div class="row">
        <div class="col-md-12">
          <div class="about-area">
            <div class="row">
              <div class="col-md-5 col-sm-6 col-xs-12">
                <div class="about-left wow fadeInLeft">
                  <img src="res/images/money.png" alt="img">
                  <a class="introduction-btn" href="${pageContext.request.contextPath }/register">Create Account</a>
                </div>
              </div>
              <div class="col-md-7 col-sm-6 col-xs-12">
                <div class="about-right wow fadeInRight">
                  <div class="title-area">
                    <h2 class="tittle">Login <span>Page</span> </h2>
                    <span class="tittle-line"></span>
                    <p style ="color: red;">${errorString }</p> 
                    <p style ="color: green">${successString }</p>                   
                    <form method="post" action="doLogin" class="contact-form">
              		<div class="form-group">                
               			 <input type="text" class="form-control"  name="userName"placeholder="Username" value="${user.userName }"/>
            		  </div>
              		<div class="form-group">                
               		 <input type="password"  class="form-control"  name="password"  placeholder="password" value="${user.password }"/>
            		  </div>
            		  <div>
            		  Remember Me&nbsp;<input type="checkbox" name="rememberMe" value= "Y" />
            		  </div>
              		<button type="submit" data-text="LOGIN" class="button button-default"><span>SUBMIT</span></button>
           		 	</form>                              
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> 
  <!-- End about section -->
<body>
<jsp:include page="_footer2.jsp"></jsp:include>
</body>
</html>