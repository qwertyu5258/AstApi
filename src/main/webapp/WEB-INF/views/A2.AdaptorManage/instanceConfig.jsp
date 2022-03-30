<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 테이블 형태~~1</title>
    <%@include file="/WEB-INF/views/A1.Common/commonCss.jsp" %>
  </head>
  <body class="nav-md">
    <div class="container body"> 
      <div class="main_container">    
        <div class="col-md-3 left_col menu_fixed">
          <div class="left_col scroll-view">
            <div class="navbar nav_title"><a class="site_title" href="index"><i class="fa fa-paw"> </i><span>LX DT </span></a></div>
            <div class="clearfix"> </div>
            <div class="profile clearfix">
              <div class="profile_pic"><img class="img-circle profile_img" src="/img/img.jpg" alt="..."></div>
              <div class="profile_info"><span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div><br>

            <%@include file="/WEB-INF/views/A1.Menu/menu.jsp" %>

            <div class="sidebar-footer hidden-small"><a data-toggle="tooltip" data-placement="top" title="로그아웃"><span class="glyphicon glyphicon-off" aria-hidden="Logout"></span></a></div>
          </div>
        </div>
        <div class="top_nav">
          <div class="nav_menu">
            <div class="nav toggle"><a id="menu_toggle"><i class="fa fa-bars"> </i></a></div>
            <div class="nav navbar-nav">
              <ul class="navbar-right">
                <li class="nav-item dropdown open"><a class="user-profile dropdown-toggle" id="navbarDropdown" href="" aria-haspopup="true" data-toggle="dropdown" aria-expanded="false"> <img src="/img/img.jpg" alt="">John Doe</a>
                  <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown"><a class="dropdown-item">Profile</a><a class="dropdown-item"> <span class="badge bg-red pull-right">50%</span><span>Settings</span></a><a class="dropdown-item">Help</a><a class="dropdown-item" href="login"><i class="fa fa-sign-out pull-right"></i>log Out</a></div>
                </li>
                <li class="nav-item dropdown open" role="presentation"><a class="dropdown-toggle info-number" id="navbarDropdown1" href="" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-envelope-o"></i><span class="badge bg-green">6</span></a>
                  <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                    <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="/img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                    <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="/img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                    <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="/img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
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
                  <h2>HOME &gt; Adaptor 설정 &gt; Adaptor 상세 &gt; Instance 매칭정보 설정</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <form class="form-horizontal form-label-left">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content"> <br>
                            <form class="form-horizontal form-label-left">
                              <div class="cont_title_box">
                                <h3>Instance 매칭정보 설정</h3>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">인스턴스 명</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text">
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">데이터 셋 명</label>
                                  <div class="form-control_box duplicate_box">
                                      <input class="form-control" type="text">
                                  </div>
                                </div>
                              </div>
                              <div class="right_btns mt-2 mb-2">
                                <a class="btn btn-success" href="">목록</a>
                                <button class="btn btn-primary">저장</button>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-12">
                                  <label class="control-label">ID</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text" >
                                    <button class="btn btn-primary">ID설정</button>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-12">
                                  <label class="control-label">기본 수신경로 설정</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text">
                                    <button class="btn btn-primary">설정</button>
                                  </div>
                                </div>
                              </div>
                              <div class="table_responsive">
                                <table class="table table-striped">
                                  <thead>
                                  <tr>
                                    <th colspan="2">데이터 모델</th>
                                    <th colspan="2">Source</th>
                                    <th colspan="3">전처리</th>
                                  </tr>
                                  <tr>
                                    <th>속성ID</th>
                                    <th>속성값</th>
                                    <th>ID</th>
                                    <th>수신경로</th>
                                    <th>속성</th>
                                    <th>속성유형</th>
                                    <th>예시</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                  <tr>
                                    <td>C_NAME_01</td>
                                    <td>String</td>
                                    <td>
                                      <select name="">
                                        <option>C_NAME_01</option>
                                      </select>
                                    </td>
                                    <td>
                                      <input type="text" value="response.items.item" disabled="">
                                    </td>
                                    <td>
                                      <select name="">
                                        <option>주민등록번호</option>
                                      </select>
                                    </td>
                                    <td>
                                      <input type="text" value="String" disabled="">
                                    </td>
                                    <td>
                                      <input type="text" value="123456-1******" disabled="">
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>C_NAME_01</td>
                                    <td>String</td>
                                    <td>
                                      <select name="">
                                        <option>C_NAME_01</option>
                                      </select>
                                    </td>
                                    <td>
                                      <input type="text" value="response.items.item" disabled="">
                                    </td>
                                    <td>
                                      <select name="">
                                        <option>해당없음</option>
                                      </select>
                                    </td>
                                    <td>
                                      <input type="text" value="없음" disabled="">
                                    </td>
                                    <td>
                                      <input type="text" value="없음" disabled="">
                                    </td>
                                  </tr>
                                  </tbody>
                                </table>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>

    <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>

  </body>
</html>