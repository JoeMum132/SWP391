<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!Doctype html>
<html lang="en">
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
 
  </head>
    
  <body style="background-color: #342c2c;">
    <!--Header-->
   <header>
      <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light box-shadow" style="background-color: #902020;">
        <div class="container-fluid">
            <a class="navbar-brand">Oh Men!</a>
            <div class="navbar-collapse collapse d-sm-inline-flex justify-content-between">
                <ul class="navbar-nav flex-grow-1">
                    <li class="nav-item dropdown">
                        <a class="nav-link text-dark" href="#" id="navbarDropdownMenuLink" role="button"
                           data-mdb-toggle="dropdown" aria-expanded="false">
                            Action
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li>
                                <a class="dropdown-item">Manage</a>
                                <ul class="dropdown-menu dropdown-submenu">
                                    <li>
                                        <a class="dropdown-item">Student</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item">Lecturer</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="dropdown-item">
                                   Exam
                                </a>
                                <ul class="dropdown-menu dropdown-submenu">
                                    <li>
                                        <a class="dropdown-item" href="create-test">Create test</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item">View result</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
        <div class="navbar-collapse collapse d-sm-inline-flex justify-content-end">
            <ul class="navbar-nav flex-grow-1">
                <li class="nav-item cart">
                    <form style="margin: 0; padding: 0;">
                        <input id="cartId" data-cart-id="@cartId" type="hidden" />
                        <button class="button bg-transparent" button="submit" id="cart" data-count="">
                            <i style="font-size:24px" class="fa">
                                <img src="/img/cart.png" style="width: 25px; height: 25px; margin-top: 8px; margin-right: 15px;" data-count="" />
                            </i>
                        </button>
                    </form>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link text-dark" href="#" id="navbarDropdownMenuLink" role="button"
                       data-mdb-toggle="dropdown" aria-expanded="false">
                        Account
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li>
                            <a class="dropdown-item" asp-area="" asp-controller="User" asp-action="Login">
                                <i class="fas fa-list fa-sm fa-fw mr-2 text-white bg-secondary"></i>
                                Login
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" asp-area="" asp-controller="User" asp-action="Logout">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-white bg-secondary"></i>
                                Logout
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </nav>
    </header>
  
  
    <section class="vh-100" style="background-color:	#342c2c;">
      <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-12 col-md-8 col-lg-6 col-xl-5">
            <div class="card shadow-2-strong" style="border-radius: 1rem; background-color: #902020;">
              <div class="card-body p-5 text-center">
                <h3 class="mb-5" style="color: black;">Create test</h3>
            <form action="create-test" enctype="multipart/form-data"  method="post">
                <div class="form-outline mb-4">
                      <input type="file" name="questionFile" />
                </div>
                 <div class="form-outline mb-4">
                     <label >Test Name</label>
                    <input type="text" class="form-control" name="testName" placeholder="Enter test name">
                </div>
                <div class="form-outline mb-4">
                   <label name="enrollKey">Enrollment Key</label>
                    <input type="password" class="form-control" placeholder="Enter enrollment key">
                </div>
               
                    
    
                <button class="btn btn-primary btn-lg btn-block" style="background-color: black; border: black;" type="submit">Create</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <hr style="color: white;">
    
    <footer style="background-color:#342c2c;">
      <div class="row d-flex justify-content-center align-items-center ">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <p class="justify-content-center text-white">Thank you! This is our page please leave anything as u like!</p>
      </div>
      </div>
    </footer>
    <!-- Bootstrap JS Bundle with Popper -->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  
    <!-- MDB -->
    <script
    type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.js"
    ></script>
  </body>
</html>

    </body>
</html>
