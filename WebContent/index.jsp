<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>EasyFund</title>
    <!-- Favicon -->
    <!-- Font Awesome -->
    <link href="res/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="res/css/bootstrap.css" rel="stylesheet">
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="res/css/slick.css"/> 
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="res/css/jquery.fancybox.css" type="text/css" media="screen" /> 
    <!-- Animate css -->
    <link rel="stylesheet" type="text/css" href="res/css/animate.css"/>  
     <!-- Theme color -->
    <link id="switcher" href="res/css/theme-color/default.css" rel="stylesheet">
    
    <link href="res/css/preloader.css" rel="stylesheet">
    <!-- Main Style -->
    <link href="res/css/style.css" rel="stylesheet">


    <!-- Fonts -->
    <!-- Open Sans for body font -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!-- Raleway for Title -->
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <!-- Pacifico for 404 page   -->
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->

  <!-- Start header section -->  
  <header id="header">
    <div class="header-inner">
      <!-- Header image -->
      <img src="res/images/header-bg.jpg" alt="img">
      <div class="header-overlay">
        <div class="header-content">
        <!-- Start header content slider -->
        <h2 class="header-slide">WE GENERATE
          <span>MOST Effective</span>
          <span>REGULAR pay </span>
          <span>NO pyramid </span>
          <span></span>
          INCOME</h2>
        <!-- End header content slider -->  
        <!-- Header btn area -->
        <div class="header-btn-area">
          <a class="knowmore-btn" href="${pageContext.request.contextPath}/login">LOGIN</a>
          <a class="download-btn" href="${pageContext.request.contextPath}/register">REGISTER</a>
        </div>
      </div>
      </div>      
    </div>
  </header>
  <!-- End header section -->

  <!-- Start menu section -->
  <section id="menu-area">
    <nav class="navbar navbar-default main-navbar" role="navigation">  
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- LOGO -->                                               
           <a class="navbar-brand logo" href="${pageContext.request.contextPath }/home">   </a>                      
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav main-nav menu-scroll">
            <li class="active"><a href="${pageContext.request.contextPath }/">HOME</a></li>
            <li><a href="${pageContext.request.contextPath }/">WHAT THIS IS</a></li> 
            <li><a href="${pageContext.request.contextPath }/">HOW THIS WORKS</a></li>                    
            <li><a href="${pageContext.request.contextPath }/contact">SUPPORT</a></li>
          </ul>                            
        </div><!--/.nav-collapse -->       
    </nav> 
  </section>
  <!-- End menu section -->



<section id="service">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="service-area">
            <div class="title-area">
              <h2 class="tittle">Welcome to <span>EasyFund</span></h2>
              <span class="tittle-line"></span>
              <p>EasyFund is a mutual fund cycler. We do not promise a HYIP, however we assure you that "your" projects' completion is completely dependent on "You" and your commitment.</p>
            </div>
            <!-- service content -->
            <div class="service-content">
              <ul class="service-table">
                <li class="col-md-3 col-sm-6">
                  <div class="single-service wow slideInUp">
                    <span class="fa fa-users service-icon"></span>
                    <h4 class="service-title">Power of Many</h4>
                    <p>Our community is the greatest asset. We believe in holding each others' hand, because that is the true definition of "humanity".</p>
                  </div>
                </li>
                <li class="col-md-3 col-sm-6">
                  <div class="single-service wow slideInUp">
                    <span class="fa fa-clock-o service-icon"></span>
                    <h4 class="service-title">Timely Payout</h4>
                    <p>Our strategy has been designed to improve fund reception rate for members, improving cash flow and recycling.</p>                  
                    </div>
                </li>
                <li class="col-md-3 col-sm-6">
                 <div class="single-service wow slideInUp">
                    <span class="fa fa-map-o service-icon"></span>
                    <h4 class="service-title">Distributed System</h4>
                    <p>Our system is based on  "First-In First-Out" structure where "anybody pays anybody".</p>
                  </div>
                </li>
                <li class="col-md-3 col-sm-6">
                  <div class="single-service wow slideInUp">
                    <span class="fa fa-life-ring service-icon"></span>
                    <h4 class="service-title">Active Support System</h4>
                    <p>Our IT team is on hand to provide active support to members, to any type of query and complaints. </p>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End service section -->

  <!-- Start call to action -->
  <section id="call-to-action">
    <img src="res/images/call-to-action-bg.png" alt="img">
    <div class="call-to-overlay">
      <div class="container">
        <div class="call-to-content wow fadeInUp">
          <h2>Start earning that extra income you deserve</h2>
        </div>
      </div>
    </div> 
  </section>
  <!-- End call to action -->


  <!-- Start counter section -->
  <section id="counter">
    <img src="res/images/counter-bg.jpg" alt="img">
    <div class="counter-overlay">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <!-- Start counter area -->
            <div class="counter-area">
              <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="single-counter">
                  <span class="fa fa-users"></span>
                  <div class="counter-count">
                    <span class="counter">1050</span>
                    <p>Online Users</p>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="single-counter">
                  <span class="fa fa-bus"></span>
                  <div class="counter-count">
                    <span class="counter">4531</span>
                    <p>Transactions</p>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6 col-xs-6">
              </div>
              <div class="col-md-3 col-sm-6 col-xs-6">
               <a href="${pageContext.request.contextPath}/register" class="button button-default" data-text="REGISTER"><span>JOIN US</span></a>
                  </div>
                </div>
              </div>    
            </div>
          </div>
        </div>
      </div>
    </div> 
  </section>
  <!-- End counter section -->

  <!-- Start from blog section -->
  <section id="from-blog">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="from-blog-area">
            <div class="title-area">
              <h2 class="tittle">Testimonials</h2>
              <span class="tittle-line"></span>
            </div>
            <!-- From Blog content -->
            <div class="from-blog-content">
              <div class="row">
                <div class="col-md-4">
                  <article class="single-from-blog">
                    <div class="blog-title">
                      <h2>Mark Uduak</a></h2>
                    </div>
                    <p>I started with the smallest package, but now I can boldy say that I have been reaping the benefits or more recycling.</p>
                  </article>
                </div>
                <div class="col-md-4">
                  <article class="single-from-blog">
                    <div class="blog-title">
                      <h2>John Philip</a></h2>
                    </div>
                    <p>what I enjoy is the matching strategy, once you are due to cash-out. Different people with different amount can pay you. This sure works!!! </p>
                  </article>
                </div>
                <div class="col-md-4">
                  <article class="single-from-blog">
                    <div class="blog-title">
                      <h2>Leekia Godson</a></h2>
                      </div>
                    <p>This is another great platform that embodies sharing and unity. Let's keep the good work going.</p>
                  </article>
                </div>
              </div>    
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End from blog section -->

  
  
  <!-- Start Footer -->    
  <footer id="footer">
    <div class="footer-bottom">
      <p>&copy EasyFund 2017
      <a href="#">Terms & Condition</a> |
      <a href="#">News</a>
      </p>
    </div>
  </footer>
  <!-- End Footer -->

  <!-- initialize jQuery Library --> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <!-- Bootstrap -->
  <script src="res/js/bootstrap.js"></script>
  <!-- Slick Slider -->
  <script type="text/javascript" src="res/js/slick.js"></script>
  <!-- Counter -->
  <script type="text/javascript" src="res/js/waypoints.js"></script>
  <script type="text/javascript" src="res/js/jquery.counterup.js"></script>
  <!-- mixit slider -->
  <script type="text/javascript" src="res/js/jquery.mixitup.js"></script>
  <!-- Add fancyBox -->        
  <script type="text/javascript" src="res/js/jquery.fancybox.pack.js"></script>
  <!-- Wow animation -->
  <script type="text/javascript" src="res/js/wow.js"></script> 

  <!-- Custom js -->
  <script type="text/javascript" src="res/js/custom.js"></script>
    
  </body>
</html>