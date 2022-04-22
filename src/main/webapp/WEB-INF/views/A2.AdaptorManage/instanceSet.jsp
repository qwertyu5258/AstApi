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
              <h2>HOME &gt; Adaptor 관리 &gt; 접속유형 항목관리</h2>
              <div class="clearfix"> </div>
            </div>
            <div class="x_content">
                <div class="col-12 col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="x_panel">
                        <div class="cont_title_box">
                          <h3>접속 유형상세</h3>
                        </div>
                        <div class="x_content">
                          <div class="table_btns mb-2">
                            <button class="btn btn-primary " onclick="instanceSetAdd();">+ 추가</button>
                            <button class="btn btn-danger " onclick="instanceSetDel();">- 삭제</button>
                            <button class="btn btn-success" onclick="instanceSetSave();">저장</button>
                          </div>
                          <div class="table_responsive">
                            <table class="table table-striped table-bordered bulk_action" style="width:100%" id="instanceSetData">
                              <colgroup>
                                <col width="44px">
                                <col width="70px">
                              </colgroup>
                              <thead>
                                <tr>
                                  <th>선택</th>
                                  <th>순번</th>
                                  <th>수집방식</th>
                                  <th>수집유형</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%--<tr>
                                  <th>
                                    <div class="icheckbox_flat-purple" style="position: relative;">
                                      <div class="icheckbox_flat-purple" style="position: relative;">
                                        <input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;">
                                      </div>
                                    </div>
                                  </th>
                                  <td>1</td>
                                  <td>
                                    <select name="">
                                      <option>DB_TO_DB</option>
                                    </select>
                                  </td>
                                  <td>
                                    <select name="">
                                      <option>Postgresql</option>
                                    </select>
                                  </td>
                                </tr>
                                <tr>
                                  <th>
                                    <div class="icheckbox_flat-purple" style="position: relative;">
                                      <div class="icheckbox_flat-purple" style="position: relative;">
                                        <input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;">
                                      </div>
                                    </div>
                                  </th>
                                  <td>2</td>
                                  <td>
                                    <select name="">
                                      <option>DB_TO_DB</option>
                                    </select>
                                  </td>
                                  <td>
                                    <select name="">
                                      <option>Postgresql</option>
                                    </select>
                                  </td>
                                </tr>
                                <tr>
                                  <th>
                                    <div class="icheckbox_flat-purple" style="position: relative;">
                                      <div class="icheckbox_flat-purple" style="position: relative;">
                                        <input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;">
                                      </div>
                                    </div>
                                  </th>
                                  <td>3</td>
                                  <td>
                                    <select name="">
                                      <option>DB_TO_DB</option>
                                    </select>
                                  </td>
                                  <td>
                                    <select name="">
                                      <option>Postgresql</option>
                                    </select>
                                  </td>
                                </tr>--%>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                <div class="row" id="instanceSetDataConfigArea">
                  <div class="col-md-12">
                    <div class="x_panel">
                      <h3>접속정보 설정</h3>
                      <div class="x_content">
                        <div class="table_btns mb-2">
                          <button class="btn btn-primary " onclick="instanceSetConfigAdd();">+ 추가</button>
                          <button class="btn btn-danger " onclick="instanceSetConfigDel();">- 삭제</button>
                          <button class="btn btn-success" onclick="instanceSetConfigSave();">저장</button>
                        </div>
                        <div class="table_responsive">
                          <input type="hidden" id="hiddenConnectId" value="">
                          <input type="hidden" id="hiddenClctTy" value="">
                          <input type="hidden" id="hiddenClctMthd" value="">
                          <table class="table table-striped table-bordered bulk_action" style="width:100%" id="instanceSetDataConfig">
                            <colgroup>
                              <col width="50px">
                              <col width="70px">
                            </colgroup>
                            <thead>
                            <tr>
                              <th>선택</th>
                              <th>항목ID(Key)</th>
                              <th>항목명</th>
                              <th>항목설명</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%--<tr>
                              <th>
                                <div class="icheckbox_flat-purple" style="position: relative;"><div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                              </th>
                              <td>1</td>
                              <td>
                                <input type="text" value="URL">
                              </td>
                              <td>
                                <input type="text" value="접속 URL">
                              </td>
                              <td>
                                <input type="text" value="대상시스템 URL">
                              </td>
                            </tr>
                            <tr>
                              <th>
                                <div class="icheckbox_flat-purple" style="position: relative;"><div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                              </th>
                              <td>2</td>
                              <td>
                                <input type="text" value="URL">
                              </td>
                              <td>
                                <input type="text" value="접속 URL">
                              </td>
                              <td>
                                <input type="text" value="대상시스템 URL">
                              </td>
                            </tr>
                            <tr>
                              <th>
                                <div class="icheckbox_flat-purple" style="position: relative;"><div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                              </th>
                              <td>3</td>
                              <td>
                                <input type="text" value="DatabaseName">
                              </td>
                              <td>
                                <input type="text" value="데이터베이스명">
                              </td>
                              <td>
                                <input type="text" value="">
                              </td>
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
        </div>
      </div>

    </div>
  </div>

  <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
  <script type="text/javascript" src="../js/adaptor/instanceSet.js"></script>
  <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>

</body>
</html>