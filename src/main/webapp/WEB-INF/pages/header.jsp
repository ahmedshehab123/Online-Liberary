
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr" lang="ar">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ar">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
  

    
<script type="text/javascript"
	src="/MilitaryAcademyLibrary/resources/lib/jquery-1.11.0.min.js"></script>


    <!-- Bootstrap -->
    <link href="/MilitaryAcademyLibrary/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/MilitaryAcademyLibrary/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/MilitaryAcademyLibrary/resources/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- jQuery custom content scroller -->
    <link href="/MilitaryAcademyLibrary/resources/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet"/>
<link rel="shortcut icon" type="image/x-icon" href="/MilitaryAcademyLibrary/resources/img/favicon.png">
    <!-- Custom Theme Style -->
    <link href="/MilitaryAcademyLibrary/resources/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md footer_fixed">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title"><i class="fa fa-paw"></i> <span>Books Library Dashboard   </span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="/MilitaryAcademyLibrary/resources/img/favicon.png" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome, ${sessionScope.admin.role}</span>
                
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                <c:if test="${sessionScope.admin.role eq 'lib'}">
                  <li><a><i class="fa fa-home"></i> مكتبة احمد عرابي <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/MilitaryAcademyLibrary/list-lib-genah">صفحه الويب</a></li>
                      <li><a href="add-orabi-book">اضافة كتاب الي مكتبة احمد عرابي</a></li>
                      <li><a href="displayestalam">محتويات مكتبة احمد عرابي </a></li>
                      <li><a href="add-reports">استعارة الكتب </a></li>
                      <li><a href="list-borrowers">الكتب المستعارة </a></li>
                      </ul>
                  </li>
                  </c:if>
                  <ul class="nav side-menu">
                  <c:if test="${sessionScope.admin.role eq 'wings'}">
                  <li><a><i class="fa fa-home"></i> مكتبة الاجنحة <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="http://localhost:8080/MilitaryAcademyLibrary/collage-agneha">صفحه الويب</a></li>
                      <li><a href="dashboard">محتويات مكتبه الاجنحه</a></li>
                      <li><a href="add-wing-page">اضافه كتاب لمكتبه الاجنحه</a></li>
                      <li><a href="adddepartment">اضافه جناح</a></li>
                    </ul>
                  </li>
                  </c:if>
                  <c:if test="${sessionScope.admin.role eq 'it'}">
                  <li><a><i class="fa fa-edit"></i>إضافة النبطشيات وخطه الاعمال<span class="fa fa-chevron-down"></span></a>
                     <ul class="nav child_menu">
                      <li><a href="nabatchy">اضافة النبطشيات</a></li>
                      <li><a href="add-plan">اضافة خطة الاعمال</a></li>
                      <li><a href="add-supervision">اضافة خطة الاشراف</a></li>
                      <li><a href="add-month-plan">اضافة خطة الاعمال الشهرية</a></li>
                      <li><a href="manager-word">اضافه كلمة السيد المدير</a></li>
                      <li><a href="wageb">اضافه واجب عزاء</a></li>
                      
                       <!--<li><a href="#">Form Wizard</a></li>
                      <li><a href="#">Form Upload</a></li>
                      <li><a href="#">Form Buttons</a></li> -->
                    </ul>
                  </li>
                  </c:if>
                 <c:if test="${sessionScope.admin.role eq 'services'}">
                                  <li><a href="add-service"><i class="fa fa-laptop"></i> خدمات اداريه </a></li>
                </c:if>
                                
                  <li><a href="/MilitaryAcademyLibrary/"><i class="fa fa-laptop"></i> الصفحه الرئيسيه <span class="label label-success pull-right">صفحه االويب</span></a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="/MilitaryAcademyLibrary/resources/images/img.jpg" alt="">
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <!-- <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li> -->
                    <!-- <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li> -->
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>

        </div>
        <!-- /top navigation -->

       