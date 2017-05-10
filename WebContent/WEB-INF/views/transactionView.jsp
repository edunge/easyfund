<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
              <h2>Welcome ${username }</h2>
              <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/dashboard">Dashboard</a></li>
                <li><a href="#">Transactions</a>
                <li class="active">Pay To</li>
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
      <center><p style="color:green">${successString }</p>
      <p style="red">${errorString }</p>
      </center>
        <center>
		<table style="width:100%; padding:6px;" border="1" cellpadding="5" cellspacing="3">
			<tr>
				<th>&nbsp;Account Name</th>
				<th>&nbsp;Bank Name</th>
				<th>&nbsp;Account Number</th>
				<th>&nbsp;Number</th>
				<th>&nbsp;Time to Pay</th>
			</tr>
			<tr>
				<td>${recipient.recipientAccName }</td>
				<td>${recipient.recipientBankName }</td>
				<td>${recipient.recipientAccNum }</td>
				<td>${recipient.recipientPhone }</td>
				<td></td>
			</tr>
		</table>
		</center>
        </div>
        <div class="row">
			<form method="post" action="DoUpload" enctype="multipart/form-data">
				<table border="1">
					<tr>
						<td><b>Upload PoP: </b></td>	
						<td><input type="file" name="pop" size="50"/></td>
						<td><input type="submit" value="Upload Pop"/></td>
					</tr>
				</table>
		        </form>
		    </div>	
    </div>
    </section>
    <section>
    <div class="container">
    	
    </div>
    </section>
  <jsp:include page="_footer2.jsp"></jsp:include>
</body>
</html>