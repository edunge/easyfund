<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
           <a class="navbar-brand logo" href="index.html"></a>                      
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav main-nav menu-scroll">
          <li class="active"><a href="${pageContext.request.contextPath }/dashboard">Dashboard</a></li>          
              <li class="dropdown">
              <li class="active" ><a href="#" class="dropdown-toggle" data-toggle="dropdown">Transactions <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">              
                <li><a href="${pageContext.request.contextPath }/transactions">Pay To</a></li>
                <li><a href="${pageContext.request.contextPath }/ghTransactions">Receive From</a></li>           
              </ul>
              </li>
            </li>                               
            <li class="active"><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
          </ul>                            
        </div><!--/.nav-collapse -->
        </div>
        </nav>
        </section>