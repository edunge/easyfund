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
              <h2>Welcome ${username }</h2>
              <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/dashboard">Dashboard</a></li>
                <li class="active">Provide Help</li>
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
        <div class="col-md-12">
          <!-- Start welcome area -->
          <div class="welcome-area">
            <div class="title-area">
              <h2 class="tittle">Please select <span>amount</span></h2>
              <span class="tittle-line"></span>
              <p style ="color: red;">${errorString }</p> 
              <p>
              <form method="post"  action ="DoPH">
              <select style="width: 200px" name="amount">
              		  <option value="Select amount">Select Amount</option>
					  <option value="#10,000">#10,000</option>
					  <option value="#20,000">#20,000</option>
					  <option value="#40,00">#40,000</option>
					  <option value="#50,000">#50,000</option>
			</select>
			<button type="submit"  id="submit" data-text="SUBMIT" class="button button-default" ><span>SUBMIT</span></button>
			</form>
			</p>	      
            </div>
          </div>
          <!-- End welcome area -->
        </div>
      </div>
    </div>
    </section>
  <jsp:include page="_footer2.jsp"></jsp:include>
</body>
</html>