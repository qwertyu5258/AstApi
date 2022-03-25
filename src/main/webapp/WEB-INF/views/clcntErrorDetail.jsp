<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 수집오류 상세</title>
    <%@include file="A1.Common/commonCss.jsp" %>
  </head>
  <body class="nav-md">
    <div class="container body"> 
      <div class="main_container">    
        <div class="col-md-3 left_col menu_fixed">
          <div class="left_col scroll-view">
            <div class="navbar nav_title"><a class="site_title" href="index"><i class="fa fa-paw"> </i><span>LX DT </span></a></div>
            <div class="clearfix"> </div>
            <div class="profile clearfix">
              <div class="profile_pic"><img class="img-circle profile_img" src="img/img.jpg" alt="..."></div>
              <div class="profile_info"><span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div><br>

            <%@include file="A1.Menu/menu.jsp" %>

            <div class="sidebar-footer hidden-small"><a data-toggle="tooltip" data-placement="top" title="로그아웃"><span class="glyphicon glyphicon-off" aria-hidden="Logout"></span></a></div>
          </div>
        </div>
        <div class="top_nav">
          <div class="nav_menu">
            <div class="nav toggle"><a id="menu_toggle"><i class="fa fa-bars"> </i></a></div>
            <div class="nav navbar-nav">
              <ul class="navbar-right">
                <li class="nav-item dropdown open"><a class="user-profile dropdown-toggle" id="navbarDropdown" href="" aria-haspopup="true" data-toggle="dropdown" aria-expanded="false"> <img src="img/img.jpg" alt="">John Doe</a>
                  <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown"><a class="dropdown-item">Profile</a><a class="dropdown-item"> <span class="badge bg-red pull-right">50%</span><span>Settings</span></a><a class="dropdown-item">Help</a><a class="dropdown-item" href="login"><i class="fa fa-sign-out pull-right"></i>log Out</a></div>
                </li>
                <li class="nav-item dropdown open" role="presentation"><a class="dropdown-toggle info-number" id="navbarDropdown1" href="" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-envelope-o"></i><span class="badge bg-green">6</span></a>
                  <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                    <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                    <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                    <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                    <li class="nav-item"> 
                      <div class="text-center"> <a class="dropdown-item" href=""> <strong>See All Alerts</strong><i class="fa fa-angle-right"></i></a></div>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="right_col" role="main">
          <div class="row">
            <div class="col-md-12">
              <div class="x_panel"> 
                <div class="x_title"> 
                  <h2>수집오류 상세</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">                         <br>
                  <div class="cont_title_box">
                    <h3>수집오류 상세 정보</h3>
                    <div class="right_btns"><a class="btn btn-primary" href="table">목록 </a>
                      <button class="btn btn-danger">즉시실행</button>
                    </div>
                  </div>
                  <div class="border_rows">
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">데이터 모델 명</div>
                        <div class="form-control_box">LX_연계1</div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">데이터 셋 명</div>
                        <div class="form-control_box">연계1</div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">Adaptor 명</div>
                        <div class="form-control_box">문화재정보</div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">Instance 명</div>
                        <div class="form-control_box">보물정보</div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">수집방식</div>
                        <div class="form-control_box">DB_TO_DB</div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">수집유형</div>
                        <div class="form-control_box">Postgresql</div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-12">
                        <div class="control-label">오류사항</div>
                        <div class="form-control_box">수집대상 메타정보 변경 </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-12">
                        <div class="control-label">오류처리</div>
                        <div class="form-control_box"> 
                          <ol class="ol_num">
                            <li><a class="btn btn-primary" href="modal">메타정보 변경</a></li>
                          </ol>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <footer> 
          <div class="full-right"></div>Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          <div class="clearfix"></div>
        </footer>
      </div>
    </div>

    <%@include file="A1.Common/commonJs.jsp" %>

  </body>
</html>