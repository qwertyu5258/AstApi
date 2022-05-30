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
              <h2>HOME > Adaptor 관리 > Instance 조회~~1</h2>
              <div class="clearfix"> </div>
            </div>

            <div class="x_content">
              <table class="table">
                <colgroup>
                  <col width="50px">
                  <col width="150px">
                  <col width="150px">
                  <col width="150px">
                  <col width="150px">
                  <col width="200px">
                  <col width="50px">
                </colgroup>
                <tr>
                  <th style="vertical-align: middle">
                    검색
                  </th>
                  <th>
                    <select class="form-control" id="LargeCategory">
                      <option>대분류</option>
                    </select>
                  </th>
                  <th>
                    <select class="form-control" id="MiddleCategory">
                      <option>중분류</option>
                    </select>
                  </th>
                  <th>
                    <select class="form-control" id="SmallCategory">
                      <option>소분류</option>
                    </select>
                  </th>
                  <th>
                    <select class="form-control" id="SelectCategory">
                      <option value="dset_korean_nm">데이터셋 명</option>
                      <option value="dset_english_nm">테이블 영문명 </option>
                      <option value="table_korean_nm">테이블 한글명 </option>
                    </select>
                  </th>
                  <th>
                    <input class="form-control" type="text" placeholder="" id="SelectText">
                  </th>
                  <th>
                    <button class="btn btn-primary" style="float:right" onclick="search(1)">검색</button>
                  </th>
                </tr>

              </table>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="x_panel">

            <div class="x_content">
                <div class="col-12 col-md-12">
                  <div class="table_responsive">
                    <h3>Instance 정보</h3>
                    <div class="talbel_total mb-2" id="instanceCnt">총 3 건</div>
                    <table class="table table-striped" id="instanceData">
                      <colgroup>
                        <col width="55px">
                      </colgroup>
                      <thead>
                      <tr>
                        <th>순번</th>
                        <th>대분류</th>
                        <th>중분류</th>
                        <th>소분류</th>
                        <th>Adaptor 명</th>
                        <th>Instance 명</th>
                        <th>수집방식</th>
                        <th>수집유형</th>
                        <th>데이터셋 명</th>
                        <th>수집오류</th>
                        <th>상태</th>
                      </tr>
                      </thead>
                      <tbody>
                      <%--<tr>
                        <td>1</td>
                        <td>문화재</td>
                        <td>전주시 문화재</td>
                        <td>DB_TO_DB</td>
                        <td>Postgresq</td>
                        <td>연계1</td>
                        <td>문화재정보</td>
                        <td></td>
                        <td>실행</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>지자체</td>
                        <td>전주시 유물</td>
                        <td>API</td>
                        <td>OPEN_API</td>
                        <td>문화재</td>
                        <td>박물관정보</td>
                        <td></td>
                        <td>실행</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>지역</td>
                        <td>전주시 박물관</td>
                        <td>FILE</td>
                        <td>CVS</td>
                        <td>XML파일</td>
                        <td>지역정보</td>
                        <td><a class="btn btn-success btn-sm" href="">바로가기</a></td>
                        <td>중지</td>
                      </tr>--%>
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
  <script type="text/javascript" src="../js/adaptor/instanceInquiry.js"></script>
  <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>



</body>
</html>