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
              <h2>HOME &gt; 시스템 관리 &gt; 코드 관리</h2>
              <div class="clearfix"> </div>
            </div>
            <div class="x_content">
                <div class="col-12 col-md-12">
                  <div class="table_responsive">
                    <h3>코드 관리</h3>
                    <div class="qty_total mb-2">코드 그룹
                      <div class="talbel_total" id="tableCnt">총 개</div>
                    </div>
                    <table class="table table-striped table-bordered">
                      <colgroup>
                          <col width="150px" />
                      </colgroup>
                        <tbody>
                        <tr>
                          <td rowspan="3">코드 그룹 상세</td>
                        </tr>
                        <tr>
                          <td>
                            <div class="form-control_box">
                              <div class="col-md-6">
                                <input class="form-control" type="text" id="SelectText">
                              </div>
                              <button type="button" class="btn btn-primary" onclick="searchTbl(1)">검색</button>
                              <button class="btn btn-primary" data-toggle="modal" data-target=".modal">추가</button>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td bgcolor="#fff">
                            <table class="table table-striped table-bordered" id="table1">
                                <thead>
                                  <tr>
                                    <th>분류명</th>
                                    <th>분류코드</th>
                                    <th>코드그룹 ID</th>
                                    <th>코드 그룹명</th>
                                    <th>사용여부</th>
                                    <th>코드그룹 설명</th>
                                  </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                            <div class="nav justify-content-center">
                              <ul class="pagination">
                                <li class="page-item"> <a class="page-link" href="#">&lt; </a></li>
                                <li class="page-item"> <a class="page-link" href="#">1 </a></li>
                                <li class="page-item"> <a class="page-link" href="#">2 </a></li>
                                <li class="page-item"> <a class="page-link" href="#">&gt; </a></li>
                              </ul>
                            </div>
                          </td>
                        </tr>
                        </tbody>
                    </table>
                  </div>
                  <div class="table_responsive mt-4">
                    <div class="qty_total mb-2">코드
                    <div class="talbel_total" id="tableCnt2">총 개</div>
                    <table class="table table-striped table-bordered" >
                      <colgroup>
                        <col width="150px" />
                      </colgroup>
                      <tbody>
                      <tr>
                        <td rowspan="3">코드 상세</td>
                      </tr>
                      <tr>
                        <td>
                          <div class="form-control_box">
                            <div class="col-md-6">
                              <input class="form-control" type="text" id="SelectText2">
                            </div>
                            <button type="button" class="btn btn-primary" onclick="searchTbl2(1)">검색</button>
                            <button class="btn btn-primary" data-toggle="modal" data-target="#modal3">추가</button>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#fff">
                          <table class="table table-striped" id="table2">
                            <thead>
                            <tr>
                              <th>코드그룹 ID</th>
                              <th>코드 ID</th>
                              <th>코드명</th>
                              <th>사용여부</th>
                              <th>코드 설명</th>
                              <th>기타 코드</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                          </table>
                          <div class="nav justify-content-center">
                            <ul class="pagination2" id="pagination2">
                            </ul>
                          </div>
                        </td>
                      </tr>

                      </tbody>

                    </table>
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
  <script type="text/javascript" src="../js/systemManage/codeManage.js"></script>
  <script type="text/javascript" src="../js/systemManage/codeManagePopup.js"></script>

    <%@include file="/WEB-INF/views/A2.SystemManage/codeManagePopup.jsp" %>





    </div>


</body>
</html>