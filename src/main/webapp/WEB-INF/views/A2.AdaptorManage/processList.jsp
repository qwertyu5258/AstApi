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
              <h2>HOME &gt; Adaptor 관리 &gt; 전처리 리스트</h2>
              <div class="clearfix"> </div>
            </div>
            <div class="x_content">
              <h3>전처리 리스트</h3>
                <div class="col-12 col-md-10">
                  <div class="form-group row">
                    <label class="control-label">검색</label>
                    <div class="form-control_box">
                      <div class="col-md-9 pr-0">
                        <input class="form-control" type="text" placeholder="">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-md-2 btn_search_box">
                  <button class="btn btn-primary" onclick="search();"> <i class="glyphicon glyphicon-search"></i></button>
                </div>
                <div class="col-12 col-md-12">
                  <div class="right_btns">
                    <button class="btn btn-primary" onclick="processListAdd();">등록</button>
                  </div>
                </div>
                <div class="col-12 col-md-12">
                  <div class="table_responsive">
                    <div class="talbel_total mb-2" id="processListCnt">총 1 건</div>
                    <table class="table table-striped" id="processListData">
                      <colgroup>
                      </colgroup>
                      <thead>
                      <tr>
                        <th rowspan="2">전처리 명</th>
                        <%--<th rowspan="2">변경유형</th>--%>
                        <th rowspan="2">속성유형</th>
                        <th rowspan="2">자리수</th>

                        <th rowspan="2">변경모양</th>
                        <th colspan="2">자리수</th>
                        <th rowspan="2">정수</th>
                        <th rowspan="2">소수점</th>
                        <th rowspan="2">변경단어</th>
                        <th colspan="2">전처리</th>
                      </tr>
                      <tr>
                        <th>시작</th>
                        <th>끝</th>
                        <th>전</th>
                        <th>후</th>
                      </tr>
                      </thead>
                      <tbody>
                      <%--<tr>
                        <td>주민등록번호</td>
                        <td>String</td>
                        <td>14</td>
                        <td>123456-1234567</td>
                        <td>123456-1******</td>
                      </tr>
                      <tr>
                        <td>주민등록번호</td>
                        <td>String</td>
                        <td>14</td>
                        <td>123456-1234567</td>
                        <td>123456-1******</td>
                      </tr>
                      <tr>
                        <td>주민등록번호</td>
                        <td>String</td>
                        <td>14</td>
                        <td>123456-1234567</td>
                        <td>123456-1******</td>
                      </tr>--%>
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
    </div>
  </div>

  <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
  <script type="text/javascript" src="../js/adaptor/processList.js"></script>
  <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>

</body>
</html>