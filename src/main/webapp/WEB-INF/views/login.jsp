<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html> 
<html lang="en">
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  <style> 
   
    
	.navbar{
	     background-color:#228B22;
	}  
    .nav.navbar-nav li a{
	     color:#fff;
		 font-size:20px;
	}
    .navbar-brand img{
	    margin-top:-21px;
	}
	.dropdown-menu a{
	    color:rgb(0,0,255)!important;
	}	
    h2{
	   margin-left:220px;
	   color :#DC143C;
	}	
    .modal-content{
	     width :600px;
	}	
	.modal-header, h4, .close {
        background-color: #5cb85c;
        color:white !important;
        text-align: center;
        font-size: 30px;
    }
    .modal-footer {
        background-color: #f9f9f9;
    }
 </style>
</head>

<body onload='document.loginForm.username.focus();'>

<c:if test="${not empty error}"><div style="color:red">${error}</div></c:if>
 <c:if test="${not empty message}"><div style="color:green">${message}</div></c:if>
 
<nav class="navbar navbar-inverse navbar fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand"  href="/"><img src="C:\Users\Mrunalini\Desktop\Project\Images\baglogo.png" alt="BagsOnline"></a>
	   
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
		 <li><a href="<c:url value="/home"/>">Home</a></li>
         <li><a href="<c:url value="/allproduct"/>">Products</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
	    <li><a href="<c:url value="/login"/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="<c:url value="/reg"/>"><span class="glyphicon glyphicon-user"></span> Register</a></li>
        
      </ul>
    </div>
  </div>
</nav>

<div class="container" style="padding-top:60px;padding-bottom:100px;">
  <h2>Welcome to this site</h2>
     <div class="modal-content" style="margin-left:220px">
        <div class="modal-header" style="padding:35px 50px;">
            <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name='login'  action="<c:url value='/login' />" method='POST'>
            <div class="form-group">
             <label for="text"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type='text' class="form-control" id='username' placeholder="Enter email" required>
			 
            </div>
            <div class="form-group">
			
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type='password' class="form-control" id='password' placeholder="Enter password" required>
            </div>  
			
        </div>
        <div class="modal-footer"> 
             <button type="submit" class="btn btn-success pull-left">Submit</button>
             <a href="<c:url value="/home"/>" type="button" class="btn btn-danger pull-left" role="button">Cancel</a>
			 <button type="reset" class="btn btn-primary pull-left">Reset</button>
			          
	     </div>
	     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form> 
     </div>
 </div>


<footer > 
   	<div class="row" style="background-color:#D6DBDF; border-top:1px solid gray">
		    <div class="col-sm-3">
                <ul class="unstyle" style="list-style:none">
				    <li><a href="<c:url value="/contact"/>">Contact</a></li>
				</ul>
			</div>	
            <div class="col-sm-7" style="text-align:centre">				
 				<p><center>@Copyright 2016 All Rights Reserved</center></p>
            </div>
</div>
		
</footer>
</body>
</html>


  