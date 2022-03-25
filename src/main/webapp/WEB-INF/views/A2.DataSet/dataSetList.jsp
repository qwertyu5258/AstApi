<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 데이터 셋 리스트 상세</title>
    <%@include file="../A1.Common/commonCss.jsp" %>
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
            <%@include file="../A1.Menu/menu.jsp" %>
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
                  <h2>데이터 셋 리스트 상세</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <div class="cont_title_box">
                    <h3>데이터 셋 리스트 상세</h3>
                    <div class="right_btns"><a class="btn btn-primary" href="table">목록 </a><a class="btn btn-primary" href="table">이력보기</a></div>
                  </div>
                  <div class="border_rows">
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">데이터 셋 명</div>
                        <div class="form-control_box">종합</div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">데이터 모델 명</div>
                        <div class="form-control_box">융복합</div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">수집방식</div>
                        <div class="form-control_box">융복합</div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">수집유형</div>
                        <div class="form-control_box">융복합</div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-12">
                        <div class="control-label">메타 테이블명</div>
                        <div class="form-control_box">융복합1</div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-12">
                        <div class="control-label">융복합대상 데이터 셋</div>
                        <div class="form-control_box">문화재1,문화재2,문화재3</div>
                      </div>
                    </div>
                  </div>
                  <div class="right_btns"> 
                    <button class="btn btn-success">융복합대상 설정</button>
                    <button class="btn btn-danger">삭제</button>
                    <button class="btn btn-primary">저장</button>
                  </div>
                  <div class="table_responsive">
                    <div class="talbel_total">총 1개</div>
                    <table class="table table-striped">
                      <colgroup> 
                        <col span="3">
                        <col span="2" width="80px">
                      </colgroup>
                      <thead>
                        <tr> 
                          <th>문화재명</th>
                          <th>문화재 순번</th>
                          <th>고유번호</th>
                          <th>유형</th>
                          <th>상태</th>
                          <th>작성일</th>
                          <th>적재일시</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>문화재명1</td>
                          <td>11</td>
                          <td>1111</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6. 18 오후 1:07:39</td>
                          <td>2019. 6. 18 오후 1:07:39</td>
                        </tr>
                      </tbody>
                    </table>
                    <div class="nav justify-content-center"> 
                      <ul class="pagination"> 
                        <li class="page-item"> <a class="page-link" href="#">&lt; </a></li>
                        <li class="page-item"> <a class="page-link" href="#">1   </a></li>
                        <li class="page-item"> <a class="page-link" href="#">2 </a></li>
                        <li class="page-item"> <a class="page-link" href="#">&gt;           </a></li>
                      </ul>
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

    <%@include file="../A1.Common/commonJs.jsp" %>

  </body>
</html>