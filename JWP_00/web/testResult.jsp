<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<%@include file="/includes/header.jsp"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CSS -->
        <link href="https://use.fontawesome.com/releases/v5.0.1/css/all.css" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <style>
            .dropdown-menu li {
                position: relative;
            }
            .dropdown-menu .dropdown-submenu {
                display: none;
                position: absolute;
                left: 100%;
                top: -7px;
            }
            .dropdown-menu .dropdown-submenu-left {
                right: 100%;
                left: auto;
            }
            .dropdown-menu > li:hover > .dropdown-submenu {
                display: block;
            }
        </style>
        <style>
            .sidenav {
                height: 100%; /* 100% Full-height */
                width: 0; /* 0 width - change this with JavaScript */
                position: fixed; /* Stay in place */
                z-index: 1; /* Stay on top */
                top: 0; /* Stay at the top */
                left: 0;
                background-color: #FFFFFF; /* Black*/
                overflow-x: hidden; /* Disable horizontal scroll */
                padding-top: 60px; /* Place content 60px from the top */
                transition: 0.5s; /* 0.5 second transition effect to slide in the sidenav */
            }

            /* The navigation menu links */
            .sidenav ul a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

            /* When you mouse over the navigation links, change their color */
            .sidenav ul a :hover {
                color: #f1f1f1;
            }

            /* Position and style the close button (top right corner) */
            .sidenav .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

            /* Style page content - use this if you want to push the page content to the right when you open the side navigation */
            #main {
                transition: margin-left .5s;
                padding: 20px;
            }

            /* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
            @media screen and (max-height: 450px) {
                .sidenav {
                    padding-top: 15px;
                }
                .sidenav a {
                    font-size: 18px;
                }
            }
        </style>

    </head>


    <div class="card sidenav" id="mySidenav" style="width: 0" >
        <div class="card-header">
            Your Classes ${count}
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

        </div>
        <ul class="list-group list-group-flush">
            <c:forEach items="${stdClasses}" var="cl">
                <li class="list-group-item">                
                    <a href="viewlisttest?classId=${cl.getClassId()}">
                        ${cl.getClassName()}                
                    </a>
                </li>
            </c:forEach>
        </ul>
    </div>  
    <section class="vh-100" style="background-color: white;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div id="main" class="card h-100 main">
                    <div class="card-body">
                        <table class="table">
                            <thead style="background: lightblue">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Result</th>
                                    <th scope="col">Score</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>${trueCount}</td>
                                    <td>${result}</td>
                                    <td><a href="#">View detail</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
    </section>




</body>
</html>
