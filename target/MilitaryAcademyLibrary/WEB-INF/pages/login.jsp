<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Admin Page</title>

    <!-- Bootstrap -->
    <link href="/MilitaryAcademyLibrary/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/MilitaryAcademyLibrary/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/MilitaryAcademyLibrary/resources/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="/MilitaryAcademyLibrary/resources/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/MilitaryAcademyLibrary/resources/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="login" method="post">
              <h1>تسجيل الدخول</h1>
              <h2 style="color: red;">${error }</h2>
              <div>
                <input type="text" class="form-control" dir="rtl" placeholder="اسم المستخدم" required="" name="userName"/>
              </div>
              <div>
                <input type="password" class="form-control" dir="rtl" placeholder="الرقم السري" required="" name="password" />
              </div>
              <div>
                <button class="btn btn-default submit" type="submit">Log in</button>
                </form>
                <!-- <a class="reset_pass" href="#">Lost your password?</a> -->
              </div>

              <div class="clearfix"></div>

             <!--  <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                
              </div> -->
            
          </section>
        </div>

        <%-- <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form:form modelAttribute="user" action="signup" method="post">
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" placeholder="First name" required="" name="firstName"/>
              </div>
              <div>
                <input type="text" class="form-control" placeholder="last name" required="" name="lastName"/>
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" name="email"/>
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" name="password"/>
              </div>
              <div>
                <button class="btn btn-default submit" type="submit">Submit</button>
              </div>
				</form:form>
              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                  <p>Â©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
            
          </section>
        </div> --%>
      </div>
    </div>
  </body>
</html>
