<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Donation Circle</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="res/css/bootstrap.min.css">
    <!-- Font Awesome and Pixeden Icon Stroke icon fonts-->
    <link rel="stylesheet" href="res/css/font-awesome.min.css">
    <link rel="stylesheet" href="res/css/pe-icon-7-stroke.css">
    <!-- Google fonts - Roboto-->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <!-- lightbox-->
    <link rel="stylesheet" href="res/css/lightbox.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="res/css/style.default.css" id="theme-stylesheet">
    <!-- Login Script -->
    <script type="text/javascript" href="res/js/scripts.min.js"></script>
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    
    <meta property="og:url"           content="https://www.donationcircle.com" />
	<meta property="og:type"          content="website" />
	<meta property="og:title"         content="Donation Circle Nigeria" />
	<meta property="og:description"   content="" />
	<meta property="og:image"         content="https://donationcircle.com/img/fav.ico" />	
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <!-- navbar-->
    <header class="header">
      <div role="navigation" class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header"><a href="/" class="navbar-brand">DONATION CIRCLE</a>
            <div class="navbar-buttons">
              <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
            </div>
          </div>
          <div id="navigation" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
              <li class="active"><a href="${pageContext.request.contextPath }/">Home</a></li>
                 <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">About <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#"></a></li>
                  <li><a href="#">What this is</a></li>
                  <li><a href="#">How this works</a></li>
                </ul>
              </li>
              <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Account <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Login</a></li>
                  <li><a href="#">Register</a></li>
                </ul>
              </li>
              <li><a href="contact.html">Contact</a></li>
            </ul><a href="#" data-toggle="modal" data-target="#login-modal" class="btn navbar-btn btn-ghost"><i class="fa fa-sign-in"></i>Log in</a>
          </div>
        </div>
      </div>
    </header>
    <!-- *** LOGIN MODAL ***_________________________________________________________
    -->
    <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" data-dismiss="modal" aria-hidden="true" class="close">×</button>
            <h4 id="Login" class="modal-title">Login</h4>
          </div>
          <div class="modal-body">
          <p style="color: red;">${errorString}</p>
            <form action="doLogin" method="post">
              <div class="form-group">
                <input id="userName" name="userName" type="text" placeholder="username"  class="form-control" value="${ user.userName}">
              </div>
              <div class="form-group">
                <input id="password" name="password"  type="password" placeholder="password" class="form-control" value="${user.password }">
              </div>
              <div class="form-group">
              	<input id="rememberMe" name="rememberMe" type="checkbox" value="Y">Remember Me</input>
              </div>
              <p class="text-center">
              <input type="submit" value="LOGIN"/>
              </p>
            </form>
            <p class="text-center text-muted">Not registered yet?</p>
            <p class="text-center text-muted"><a href="${pageContext.request.contextPath }/register"><strong>Register now</strong></a>! It is easy and done in 1 minute and gives you access to start earning regular income.</p>
          </div>
        </div>
      </div>
    </div>
    <!-- *** LOGIN MODAL END ***-->
    <p style ="color:red" align="right" font="italic">${errorString }</p>
    <div class="jumbotron main-jumbotron">
      <div class="container">
        <div class="content">
          <h1>Donation Circle</h1>
          <p class="margin-bottom">We create change to holding hands together.</p>
          <p><a class="btn btn-white">Learn more</a></p>
        </div>
      </div>
      </div>
    </div>
    <section>
      <div class="container">
      <div class="heading text-center">
        <h2 > Donation Circle</h2>
        <p class="lead">Donation Circle is a mutual fund cycler. We do not promise a HYIP, however we assure you that "your" projects' completion is completely dependent on "You" and your commitment</p>
        <p><a class="btn btn-ghost">Read more</a></p>
        </div>
      </div>
    </section>
    
    <section  class="background-gray-lightest">
      <div class="container clearfix">
        <div class="row services">
          <div class="col-md-12">
            <h2 class="h1">Integrations</h2>
            <div class="row">
              <div class="col-sm-4">
                <div class="box box-services">
                  <div><i  class="fa fa-google-plus"></i></div>
                  <h4 class="heading">Structured and Timely payout</h4>
                  <p>Our strategy has been designed to improve fund reception rate for members, thereby eliminating  delays in cash flow and recycle.</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-loop"></i></div>
                  <h4 class="heading">Distributed System</h4>
                  <p>Any body can pay anybody</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-coffee"></i></div>
                  <h4 class="heading">SEO and SEM</h4>
                  <p>Am terminated it excellence invitation projection as. She graceful shy. </p>
                </div>
              </div>
            </div>
            <h2 class="h1">Tools</h2>
            <div class="row">
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-monitor"></i></div>
                  <h4 class="heading">Consulting</h4>
                  <p>Fifth abundantly made Give sixth hath. Cattle creature i be don't them.</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-signal"></i></div>
                  <h4 class="heading">Email Marketing</h4>
                  <p>Advantage old had otherwise sincerity dependent additions. It in adapted natural.</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-id"></i></div>
                  <h4 class="heading">UX &amp; UI</h4>
                  <p>Am terminated it excellence invitation projection as. She graceful shy. </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--   *** INTEGRATIONS END ***-->
    
    <section class="background-gray-lightest">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="post">
              <div class="image"><a href="text.html"><img src="img/blog1.jpg" alt="" class="img-responsive"></a></div>
              <h3><a href="text.html">Rit eget tincidunt condimentum</a></h3>
              <p class="post__intro">ellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
              <p class="read-more"><a href="text.html" class="btn btn-ghost">Continue reading     </a></p>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="post">
              <div class="image"><a href="text.html"><img src="img/blog2.jpg" alt="" class="img-responsive"></a></div>
              <h3><a href="text.html">Tempor sit amet</a></h3>
              <p class="post__intro"> Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi.</p>
              <p class="read-more"><a href="text.html" class="btn btn-ghost">Continue reading     </a></p>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="post">
              <div class="image"><a href="text.html"><img src="img/blog3.jpg" alt="" class="img-responsive"></a></div>
              <h3><a href="text.html">Vestibulum erat wisi</a></h3>
              <p class="post__intro">ellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
              <p class="read-more"><a href="text.html" class="btn btn-ghost">Continue reading     </a></p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    
    <!--   *** INTEGRATIONS ***-->
    
    <!-- portfolio-->
    <section id="portfolio" class="background-gray-lightest">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="heading">Portfolio</h1>
            <p class="lead">You can make also a portfolio or image gallery.</p>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row no-space">
          <div class="col-sm-4 col-xs-6">
            <div class="box"><a href="img/portfolio-1.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 1"><img src="img/portfolio-1.jpg" alt="" class="img-responsive"></a></div>
          </div>
          <div class="col-sm-4 col-xs-6">
            <div class="box"><a href="img/portfolio-7.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 7"><img src="img/portfolio-7.jpg" alt="" class="img-responsive"></a></div>
          </div>
          <div class="col-sm-4 col-xs-6">
            <div class="box"><a href="img/portfolio-3.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 3"><img src="img/portfolio-3.jpg" alt="" class="img-responsive"></a></div>
          </div>
          <div class="col-sm-4 col-xs-6">
            <div class="box"><a href="img/portfolio-5.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 5"><img src="img/portfolio-5.jpg" alt="" class="img-responsive"></a></div>
          </div>
          <div class="col-sm-4 col-xs-6">
            <div class="box"><a href="img/portfolio-4.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 4"><img src="img/portfolio-4.jpg" alt="" class="img-responsive"></a></div>
          </div>
          <div class="col-sm-4 col-xs-6">
            <div class="box"><a href="img/portfolio-6.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 6"><img src="img/portfolio-6.jpg" alt="" class="img-responsive"></a></div>
          </div>
          <div class="col-sm-4 col-xs-6">
            <div class="box"><a href="img/portfolio-2.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 2"><img src="img/portfolio-2.jpg" alt="" class="img-responsive"></a></div>
          </div>
          <div class="col-sm-4 col-xs-6">
            <div class="box"><a href="img/portfolio-8.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 8"><img src="img/portfolio-8.jpg" alt="" class="img-responsive"></a></div>
          </div>
          <div class="col-sm-4 col-xs-6">
            <div class="box"><a href="img/portfolio-9.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 9"><img src="img/portfolio-9.jpg" alt="" class="img-responsive"></a></div>
          </div>
        </div>
      </div>
    </section>
    <footer class="footer">
      <div class="footer__block">
        <div class="container">
          <div class="row">
            <div class="col-md-8 col-sm-12">
              <h4 class="heading">About Multi</h4>
              <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus magna. Cras in mi at felis aliquet congue.  Vivamus magna. Cras in mi at felis aliquet congue.</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. </p>
            </div>
            <div class="col-md-4 col-sm-12">
              <h4 class="heading">Our offices</h4>
              <h5>London</h5>
              <p> Donec eleifend<br />libero at sagittis<br />mollis + 44 2556 789 8799</p>
              <h5>Paris</h5>
              <p> Donec eleifend<br />libero at sagittis<br />mollis + 41 2556 789 8799</p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 col-sm-6">
              <h4 class="heading">Popular Categories</h4>
              <ul>
                <li><a href="category.html">Graphic design</a></li>
                <li><a href="category.html">Web design</a></li>
                <li><a href="category.html">Support</a></li>
                <li><a href="category.html">Accounting</a></li>
              </ul>
            </div>
            <div class="col-md-4 col-sm-6">
              <h4 class="heading">Let's be Friends</h4>
              <p class="social social--big"><a href="#" data-animate-hover="pulse" class="external facebook"><i class="fa fa-facebook"></i></a><a href="#" data-animate-hover="pulse" class="external gplus"><i class="fa fa-google-plus"></i></a><a href="#" data-animate-hover="pulse" class="external twitter"><i class="fa fa-twitter"></i></a><a href="#" data-animate-hover="pulse" class="email"><i class="fa fa-envelope"></i></a></p>
            </div>
            <div class="col-md-4 col-sm-12">
              <h4 class="heading">News and Updates</h4>
              <p>Sign up to get weekly portion of fresh jobs and news from us.</p>
              <form class="footer__newsletter">
                <div class="input-group">
                  <input type="text" placeholder="Enter your email address" class="form-control"><span class="input-group-btn">
                    <button type="button" class="btn btn-default"><i class="fa fa-send"></i></button></span>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="footer__copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <p>&copy;2016 Best company</p>
            </div>
            <div class="col-md-6">
              <p class="credit">Code <a href="https://bootstrapious.com/" class="external">Bootstrapious</a></p>
              <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- Javascript files-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="res/js/bootstrap.min.js"></script>
    <script src="res/js/jquery.cookie.js"> </script>
    <script src="res/js/lightbox.min.js"></script>
    <script src="res/js/front.js"></script>
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID.-->
    <!---->
    <script>
      (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
      function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
      e=o.createElement(i);r=o.getElementsByTagName(i)[0];
      e.src='//www.google-analytics.com/analytics.js';
      r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
      ga('create','UA-XXXXX-X');ga('send','pageview');
    </script>
  </body>
</html>