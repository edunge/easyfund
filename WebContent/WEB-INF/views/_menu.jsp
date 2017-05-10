<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- navbar-->
    <header class="header">
      <div role="navigation" class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header"><a href="index.html" class="navbar-brand">EasyFund</a>
            <div class="navbar-buttons">
              <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
            </div>
          </div>
          <div id="navigation" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
              <li class="active"><a href="/">Home</a></li>
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
            <p class="text-center text-muted"><a href="#"><strong>Register now</strong></a>! It is easy and done in 1 minute and gives you access to start earning regular income.</p>
          </div>
        </div>
      </div>
    </div>
    <!-- *** LOGIN MODAL END ***-->