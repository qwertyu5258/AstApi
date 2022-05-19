<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 수집오류 상세</title>
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
                  <h2>HOME &gt; 수집오류 > 수집오류 상세</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content">
                              <div class="cont_title_box">
                                <h3>수집 오류 상세 정보</h3>
                                <div class="right_btns">
                                  <button class="btn btn-primary" type="button" onclick="toList();">목록</button>
                                  <button class="btn btn-primary" type="button" onclick="adaptorDetailList();">즉시실행</button>
                                </div>
                              </div>
                              <div class="row">

                                <table class="table table-striped" id="instanceData">
                                  <colgroup>
                                    <col width="20%">
                                    <col width="30%">
                                    <col width="20%">
                                    <col width="30%">
                                  </colgroup>
                                  <thead>
                                  </thead>
                                  <tbody>
                                  <tr>
                                  <td>
                                    Adapter 명
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="adapter_nm" readonly>
                                  </td>
                                  <td>
                                    데이터셋명
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="dset_korean_nm" readonly>
                                  </td>
                                  </tr>
                                  <tr>
                                  <td>
                                    수집방식
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="clct_mthd" readonly>
                                  </td>
                                  <td>
                                    수집유형
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="clct_ty" readonly>
                                  </td>
                                  </tr>
                                  <tr>
                                  <td>
                                    대분류
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="dset_lclas" readonly>
                                  </td>
                                  <td>
                                    Instance 명
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="instance_nm" readonly>
                                  </td>
                                  </tr>
                                  <tr>
                                  <td>
                                    중분류
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="dset_mclas" readonly>
                                  </td>
                                  <td>
                                    테이블 명
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="table_korean_nm" readonly>
                                  </td>
                                  </tr>
                                  <tr>
                                  <td>
                                    소분류
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="dset_sclas" readonly>
                                  </td>
                                  <td>
                                    수집상태
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="schedule_yn" readonly>
                                  </td>
                                  </tr>
                                  <tr>
                                  <td>
                                    오류사항
                                  </td>
                                  <td colspan="3">
                                    <input class="form-control" type="text" id="error_described" readonly>
                                  </td>
                                  </tr>

                                  <tr>
                                  <td rowspan="3">
                                    오류처리
                                  </td>
                                  <td colspan="2">
                                    <button class="btn btn-primary" type="button" onclick="">바로가기</button>
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="" readonly>
                                  </td>
                                  </tr>
                                  <tr>
                                  <td colspan="2">
                                    <button class="btn btn-primary" type="button" onclick="toTblColChange()">테이블 컬럼 변경</button>
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="" readonly>
                                  </td>
                                  </tr>
                                  <tr>
                                  <td colspan="2">
                                    <button class="btn btn-primary" type="button" onclick="">Instance 매칭정보</button>
                                  </td>
                                  <td>
                                    <input class="form-control" type="text" id="" readonly>
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

    <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
          <script type="text/javascript" src="../js/collectErr/collectErrDetail.js"></script>
          <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>

  </body>
</html>