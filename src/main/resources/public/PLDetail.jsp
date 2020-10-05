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
            <th scope="col">Policy Name</th>
            <th scope="col">Policy ID</th>
            <th scope="col">Weekly Intrest</th>
            <th scope="col">Montyly Intrest</th>
            <th scope="col">Quarter Intrest</th>
            <th scope="col">Half Intrest</th>
            <th scope="col">Year Intrest</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">Life Insurance</th>
            <td>PO101</td>
            <td>5</td>
            <td>10</td>
            <td>15</td>
            <td>20</td>
            <td>25</td>
        </tr>
        <tr>
            <th scope="row">Home Insurance</th>
            <td>PO102</td>
            <td>3</td>
            <td>6</td>
            <td>9</td>
            <td>12</td>
            <td>15</td>
        </tr>
        <tr>
            <th scope="row">Motor Insurance</th>
            <td>PO103</td>
            <td>2</td>
            <td>4</td>
            <td>6</td>
            <td>8</td>
            <td>10</td>
        </tr>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
