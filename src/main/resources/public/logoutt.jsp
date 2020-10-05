<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
 <%
       if(session.getAttribute("loginName")!=null || session.getAttribute("loginName")!="")

       {
    	   	session.setAttribute("loginName",null);
             String path = request.getContextPath();
             String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
             response.sendRedirect(basePath+"login.jsp");
       }
  %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Luwei Ge Task4</title>
    <style>
        #mainTitle {
            height: 90%;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: rgb(38, 103, 197);
        }

        .nav-link {
            text-decoration: underline;
            color: rgb(38, 103, 197) !important;
        }

        .nav-item img {
            width: 10px;
            display: inline-block;
        }

        #secondNav {
            width: 100%;
        }

        #secondNav a {
            background-color: rgb(163, 203, 250);
            color: black !important;
        }

        .welcome {
            color: rgb(38, 103, 197);

        }
    </style>
    <script>
            function mang()
            {
            }
            
            
        </script>
</head>
<body>
<div class="container" id="logo">
    <div class="row">
        <div class="col-2">
            <img src="insurance-arrow.jpg" class="img-fluid">
        </div>
        <div class="col">
            <H1 id="mainTitle">Online Insurance Management System</H1>
        </div>
    </div>
</div>

<div class="container" id="navBar">
    <ul class="nav nav-pills nav-fill">
        <li class="nav-item">
            <a class="nav-link" href="index.html"><img src="redTriangle.png" class="img-fluid mr-1">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#"><img src="redTriangle.png" class="img-fluid mr-1">Life Insurance</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#"><img src="redTriangle.png" class="img-fluid mr-1">Home Insurance</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#"><img src="redTriangle.png" class="img-fluid mr-1">Motor Insurance</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#"><img src="redTriangle.png" class="img-fluid mr-1">Admin</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#"><img src="redTriangle.png" class="img-fluid mr-1">Agent</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#"><img src="redTriangle.png" class="img-fluid mr-1">Policy Holder</a>
        </li>
    </ul>

</div>

<div class="container">
    <ul class="nav nav-pills nav-fill" id="secondNav">
        <li class="nav-item mr-1">
            <a class="nav-link" href="AGRegis.jsp">New Agent Registration</a>
        </li>
        <li class="nav-item mr-1">
            <a class="nav-link" href="PHRegis.jsp">New Policy Holder Registration</a>
        </li>
        <li class="nav-item mr-1">
            <a class="nav-link" href="PLDetail.jsp">Life Insurance || Home Insurance || Motor Insurance</a>
        </li>
    </ul>
</div>

<!--login form-->
<div class="container mt-5" id="content">
    <div class="col-8 text-center mx-auto px-0">
        <h5 style="background-color: rgb(163,203,250)">Login</h5>
    </div>
    <form name="ma" action="Login" method="post" onsubmit="return mang()">
        <div class="col-3 mx-auto">
            <div class="row mb-2">
                <div class="col">
                    <label for="usrname">User Name:</label>
                </div>
                <div class="col">
                    <input type="text" id="usrname" name="usrname" required>
                </div>
            </div>
        </div>
        <div class="col-3 mx-auto">
            <div class="row mb-2">
                <div class="col">
                    <label for="psw">Password:</label>
                </div>
                <div class="col">
                    <input type="password" id="psw" name="psw" required>
                </div>
            </div>
        </div>
        <div class="col mx-auto text-center">
            <input class="btn-info mx-auto " type="submit" value="Submit">
        </div>
    </form>
    <div>
    <% String data=(String)request.getAttribute("data");  %>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
