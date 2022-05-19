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
                  <h2>HOME &gt; Adaptor 관리 &gt; 전처리 리스트 &gt; 전처리 등록</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">
                  <form class="form-horizontal form-label-left">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content">
                            <form class="form-horizontal form-label-left">
                              <div class="cont_title_box">
                                <h3>전처리 등록</h3>
                              </div>
                              <div class="cont_title_box">
                                <h4>전처리 상세 정보</h4>
                                <div class="right_btns">
                                  <a class="btn btn-success" href="">목록</a>
                                  <button class="btn btn-primary" type="button" onclick="dp_ingest_pre_save()">저장</button>
                                </div>
                              </div>
                              <table class="col-md-12 table type02" style="border-bottom: 1px solid #dee2e6">
                                <colgroup>
                                  <col width="140px">
                                  <col width="*">
                                  <col width="200px">
                                  <col width="*">
                                </colgroup>
                                <tbody>
                                  <tr>
                                    <th>전처리 명</th>
                                    <td colspan="3">
                                      <input class="form-control col-md-5" type="text" value="주민등록번호 가리기" id="pre_nm">
                                    </td>
                                  </tr>
                                  <tr>
                                    <th>속성유형</th>
                                    <td>
                                      <select class="form-control col-md-12" id="property_type">
                                        <option>String</option>
                                      </select>
                                    </td>
                                    <th>자리수</th>
                                    <td><input class="form-control col-md-12" type="text" value="10" id="number_digit"></td>
                                  </tr>
                                  <tr>
                                    <th>변경유형</th>
                                    <td>
                                      <select class="form-control change_type" id="change_type">
                                        <option>글자수 제한</option>
                                        <option>데이터 변형</option>
                                      </select>
                                    </td>
                                    <th class="change_shape" style="display: none">변경모양</th>
                                    <td class="change_shape" style="display: none"><input id="change_shape" class="form-control" type="text" value="*"></td>
                                  </tr>
                                  <tr class="digit" style="display: none">
                                    <th>시작 자리수</th>
                                    <td>
                                      <input class="form-control col-md-12" type="text" value="2" id="start_digit">
                                    </td>
                                    <th>끝 자리수</th>
                                    <td><input class="form-control" type="text" value="5" id="end_digit"></td>
                                  </tr>
                                  <tr id="type1">
                                    <th>전처리 전</th>
                                    <td>
                                      <input class="form-control" type="text" value="가나다라마바사" id="pre_before1">
                                    </td>
                                    <th>전처리 후</th>
                                    <td><input class="form-control" type="text" value="가나다라마" disabled="disabled" id="pre_after1"></td>
                                  </tr>
                                  <tr id="type2" style="display: none">
                                    <th>전처리 전</th>
                                    <td>
                                      <input class="form-control" type="text" value="123456-1234567" id="pre_before2">
                                    </td>
                                    <th>전처리 후</th>
                                    <td><input class="form-control" type="text" value="123456-1******" disabled="disabled" id="pre_after2"></td>
                                  </tr>
                                </tbody>
                              </table>
                              <!-- 속성유형 String -->
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
      <script type="text/javascript" src="../js/preProcess/preProcessRegist.js"></script>
  </body>
</html>