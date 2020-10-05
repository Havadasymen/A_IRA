<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Luwei Ge Task4</title>
    <style>
        #mainTitle{
            height: 90%;
            width:100%;
            display:flex;
            align-items: center;
            justify-content: center;
            color: rgb(38,103,197);
        }
        .nav-link{
            text-decoration:underline;
            color: rgb(38,103,197) !important;
        }
        .nav-item img{
            width: 10px;
            display: inline-block;
        }
        #secondNav{
            width: 100%;
        }
        #secondNav a{
            background-color: rgb(163,203,250);
            color: black !important;
        }
        .welcome{
            color: rgb(38,103,197);

        }
    </style>
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
            <a class="nav-link" href="login.jsp"><img src="redTriangle.png" class="img-fluid mr-1">Admin</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="login.jsp"><img src="redTriangle.png" class="img-fluid mr-1">Agent</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="PHDetail.jsp"><img src="redTriangle.png" class="img-fluid mr-1">Policy Holder</a>
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
            <a class="nav-link" href="#">Life Insurance || Home Insurance || Motor Insurance</a>
        </li>
    </ul>
</div>

<div class="container mt-5" id="content">
    <table class="table table-striped table-bordered text-center">
        <thead>
        <tr class="table-primary">
        	<th scope="col">Policy Holder ID</th>
            <th scope="col">Policy Holder Name</th>
            <th scope="col">Credit Card No</th>
            <th scope="col">Policy Name</th>
            <th scope="col">Policy Premium</th>
            <th scope="col">Agent ID</th>
            <th scope="col">Date of Birth</th>
            <th scope="col">Gender</th>
            <th scope="col">Occupation</th>
            <th scope="col">Income</th>
            <th scope="col">Address</th>
            <th scope="col">Mobile</th>
            <th scope="col">Email</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">${id}</th>
            <td>${phName}</td>
			<td>${cardNo}</td>
			<td>${policyName}</td>
			<td>${policyP}</td>
			<td>${agentID}</td>
			<td>${dob}</td>
			<td>${gender}</td>
			<td>${occupation}</td>
			<td>${income}</td>
			<td>${address}</td>
			<td>${fk}</td>
			<td>${fk}</td>
        </tr>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
