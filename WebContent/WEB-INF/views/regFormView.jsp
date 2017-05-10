<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Form</title>
<jsp:include page="_header2.jsp"></jsp:include>
</head>
<body>
<jsp:include page="_menu2.jsp"></jsp:include>



 <section id="about">
    <div class="container">    
      <div class="row">
        <div class="col-md-12">
          <div class="about-area">
            <div class="row">
              <div class="col-md-5 col-sm-6 col-xs-12">
                <div class="about-left wow fadeInLeft">
                  <img src="res/images/about-img.jpg" alt="img">
                  <a class="introduction-btn" href="${pageContext.request.contextPath }/login">LOGIN</a>
                </div>
              </div>
              <div class="col-md-7 col-sm-6 col-xs-12">
                <div class="about-right wow fadeInRight">
                  <div class="title-area">
                    <h2 class="tittle">Registration <span>Page</span> </h2>
                    <span class="tittle-line"></span>
                    <p style ="color: red;">${errorString }</p>                    
                    <form name="regForm" action="doReg"  method="post" onsubmit="return checkForm()" id="regForm">
							<table border="1">
							<div>
								<tr>
									 <td>&nbsp;&nbsp;Firstname</td> 
									<td><input type="text" name="firstName"  id="firstName" value="${newUser.firstName }" required="required" class="form-control"/></td>
								</tr>
							 </div>
								<tr>
									<td>&nbsp;&nbsp;Lastname</td>
									<td><input type="text" name="lastName"  id="lastName" value="${newUser.lastName }"  required="required" class="form-control"/></td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;Bank Name</td>
									<td><input type="text" name="bankName"  id="bankName" value="${newUser.bankName }" required="required"  class="form-control"/></td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;Account Name</td>
									<td><input type="text" name="accountName"  id="accountName" value="${newUser.accountName }" required="required" class="form-control"  length="10"/></td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;Account Number</td>
									<td><input type="text" name="accountNumber"  id="accountNumber" value="${newUser.accountNumber }"  required="required" class="form-control"/></td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;Email</td>
									<td><input type="email" name="email"  id="email" value="${newUser.email }" required="required"  class="form-control"/></td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;Phone number</td>
									<td><input type="text" name="phone"  id="phone" value="${newUser.phone }" required="required"   length="11"  class="form-control" /></td>
								</tr>
								<div>
								<tr>
									<td>&nbsp;&nbsp;Username</td>
									<td><input type="text"  name="userName"  id="userName"  value="${newUser.userName }" required="required"  class="form-control"/></td>
								</tr>
								</div>
								<tr>
									<td>&nbsp;&nbsp;Password</td>
									<td><input type="password" name="password"  id="password" value="${newUser.password }" required="required" class="form-control"/></td>
								</tr>
								<tr>
								<td>&nbsp;&nbsp;Confirm Password</td>
									<td><input type="password" name="confirmPassword"  id="confirmPassword" required="required" class="form-control"/></td>
								</tr>
								</table>
							<button type="submit"  id="submit" data-text="SUBMIT" class="button button-default"   onclick="checkForm()"><span>REGISTER</span></button>						
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
<jsp:include page="_footer2.jsp"></jsp:include>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/validation.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/scripts.min.js"></script>
</body>

</html>