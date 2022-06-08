<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 전처리 상세화면</title>
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
                                  <a class="btn btn-success" href="processList">목록</a>
                                  <button class="btn btn-primary" type="button" onclick="dp_ingest_pre_del()">삭제</button>
                                  <button class="btn btn-primary" type="button" onclick="dp_ingest_pre_update()">수정~~</button>
                                </div>
                              </div>
                              <table class="col-md-12 table type02" id="preProcessTable">
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
                                      <input class="form-control col-md-5" type="text" value="주민등록번호 가리기">
                                    </td>
                                  </tr>
                                  <tr>
                                    <th>속성유형</th>
                                    <td>
                                      <select class="form-control col-md-12">
                                        <option>선 택</option>

                                        <option>Option two</option>
                                        <option>Option three</option>
                                        <option>Option four</option>
                                      </select>
                                    </td>
                                    <th>자리수</th>
                                    <td><input class="form-control col-md-12" type="text" value="14"></td>
                                  </tr>
                                  <tr>
                                    <th>속성유형</th>
                                    <td>
                                      <select class="form-control">
                                        <option>선 택</option>

                                        <option>Option two</option>
                                        <option>Option three</option>
                                        <option>Option four</option>
                                      </select>
                                    </td>
                                    <th>자리수</th>
                                    <td><input class="form-control" type="text" value="14"></td>
                                  </tr>
                                  <tr>
                                    <th>변경유형</th>
                                    <td>
                                      <select class="form-control">
                                        <option>선 택</option>

                                        <option>Option two</option>
                                        <option>Option three</option>
                                        <option>Option four</option>
                                      </select>
                                    </td>
                                    <th>변경모양</th>
                                    <td><input class="form-control" type="text" value="14"></td>
                                  </tr>
                                  <tr>
                                    <th>시작 자리수</th>
                                    <td>
                                      <select class="form-control">
                                        <option>선 택</option>

                                        <option>Option two</option>
                                        <option>Option three</option>
                                        <option>Option four</option>
                                      </select>
                                    </td>
                                    <th>끝 자리수</th>
                                    <td><input class="form-control" type="text" value="14"></td>
                                  </tr>
                                  <tr>
                                    <th>전처리 전</th>
                                    <td>
                                      <input class="form-control" type="text" value="123456-1234567">
                                    </td>
                                    <th>전처리 후</th>
                                    <td><input class="form-control" type="text" value="123456-1******" disabled="disabled"></td>
                                  </tr>
                                </tbody>
                              </table>
                              <!-- 속성유형 String -->
                            <%--  <table class="col-md-12 table type02">
                                <colgroup>
                                  <col width="140px">
                                  <col width="*">
                                  <col width="200px">
                                  <col width="*">
                                </colgroup>
                                <tbody>
                                  <tr>
                                    <th>속성유형</th>
                                    <td>
                                      <select class="form-control col-md-12">
                                        <option>Sting</option>

                                        <option>Option two</option>
                                        <option>Option three</option>
                                        <option>Option four</option>
                                      </select>
                                    </td>
                                    <th>자리수(한글3자, 영문1자)</th>
                                    <td><input class="form-control" type="text" value="15"></td>
                                  </tr>
                                  <tr>
                                    <th>변경유형</th>
                                    <td>
                                      <select class="form-control">
                                        <option>선 택</option>

                                        <option>Option two</option>
                                        <option>Option three</option>
                                        <option>Option four</option>
                                      </select>
                                    </td>
                                    <td></td>
                                    <td></td>
                                  </tr>
                                  <tr>
                                    <th>전처리 전</th>
                                    <td>
                                      <input class="form-control" type="text" value="가나다라마바사">
                                    </td>
                                    <th>전처리 후</th>
                                    <td><input class="form-control" type="text" value="가나다라마바" disabled="disabled"></td>
                                  </tr>
                                </tbody>
                              </table>
                              <!-- 속성유형 String -->
                              <table class="col-md-12 table type02">
                                <colgroup>
                                  <col width="140px">
                                  <col width="*">
                                  <col width="200px">
                                  <col width="*">
                                </colgroup>
                                <tbody>
                                <tr>
                                  <th>속성유형</th>
                                  <td>
                                    <select class="form-control col-md-12">
                                      <option>String</option>

                                      <option>Option two</option>
                                      <option>Option three</option>
                                      <option>Option four</option>
                                    </select>
                                  </td>
                                  <th>변경단어</th>
                                  <td><input class="form-control" type="text" value="정치성향,질병"></td>
                                </tr>
                                <tr>
                                  <th>변경유형</th>
                                  <td>
                                    <select class="form-control">
                                      <option>단어치환</option>

                                      <option>Option two</option>
                                      <option>Option three</option>
                                      <option>Option four</option>
                                    </select>
                                  </td>
                                  <th>변경모양</th>
                                  <td><input class="form-control" type="text" value="*"></td>
                                </tr>
                                <tr>
                                  <th>전처리 전</th>
                                  <td>
                                    <input class="form-control" type="text" value="정치성향,질병">
                                  </td>
                                  <th>전처리 후</th>
                                  <td><input class="form-control" type="text" value="*,*" disabled="disabled"></td>
                                </tr>
                                </tbody>
                              </table>
                              <!-- 속성유형 Integer -->
                              <table class="col-md-12 table type02">
                                <colgroup>
                                  <col width="140px">
                                  <col width="*">
                                  <col width="200px">
                                  <col width="*">
                                </colgroup>
                                <tbody>
                                <tr>
                                  <th>속성유형</th>
                                  <td>
                                    <select class="form-control col-md-12">
                                      <option>Integer</option>

                                      <option>Option two</option>
                                      <option>Option three</option>
                                      <option>Option four</option>
                                    </select>
                                  </td>
                                  <th>자리수</th>
                                  <td><input class="form-control" type="text" value="14"></td>
                                </tr>
                                <tr>
                                  <th>변경유형</th>
                                  <td>
                                    <select class="form-control">
                                      <option>자리수 제한</option>

                                      <option>Option two</option>
                                      <option>Option three</option>
                                      <option>Option four</option>
                                    </select>
                                  </td>
                                  <td></td>
                                  <td></td>
                                </tr>
                                <tr>
                                  <th>전처리 전</th>
                                  <td>
                                    <input class="form-control" type="text" value="가나다라마바사">
                                  </td>
                                  <th>전처리 후</th>
                                  <td><input class="form-control" type="text" value="가나다라마바" disabled="disabled"></td>
                                </tr>
                                </tbody>
                              </table>
                              <!-- 속성유형 Double -->
                              <table class="col-md-12 table type02">
                                <colgroup>
                                  <col width="140px">
                                  <col width="*">
                                  <col width="200px">
                                  <col width="*">
                                </colgroup>
                                <tbody>
                                <tr>
                                  <th>속성유형</th>
                                  <td>
                                    <select class="form-control col-md-12">
                                      <option>Double</option>

                                      <option>Option two</option>
                                      <option>Option three</option>
                                      <option>Option four</option>
                                    </select>
                                  </td>
                                  <th>자리수</th>
                                  <td><input class="form-control" type="text" value="14"></td>
                                </tr>
                                <tr>
                                  <th>변경유형</th>
                                  <td>
                                      <select class="form-control">
                                        <option>자리수 제한</option>

                                        <option>Option two</option>
                                        <option>Option three</option>
                                        <option>Option four</option>
                                      </select>
                                  </td>
                                  <td></td>
                                  <td></td>
                                </tr>
                                <tr>
                                  <th>정수</th>
                                  <td>
                                    <input class="form-control" type="text" value="9">
                                  </td>
                                  <th>소수점</th>
                                  <td><input class="form-control" type="text" value="5"></td>
                                </tr>
                                <tr>
                                  <th>전처리 전</th>
                                  <td>
                                    <input class="form-control" type="text" value="가나다라마바사">
                                  </td>
                                  <th>전처리 후</th>
                                  <td><input class="form-control" type="text" value="가나다라마바" disabled="disabled"></td>
                                </tr>
                                </tbody>
                              </table>--%>
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
      <script type="text/javascript" src="js/preProcess/preProcessDetail.js"></script>
  </body>
</html>