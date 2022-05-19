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
                  <h2>HOME &gt; Adaptor 설정 &gt; Adaptor 상세 &gt; Adaptor 운영</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">

                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content">
                              <div class="cont_title_box">
                                <h3>Adaptor 상세</h3>
                                <div class="right_btns">
                                  <button class="btn btn-success" onclick="adaptorConfigList();">목록</button>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label pt-0">Adaptor 명</label>
                                  <div class="form-control_box" id="adaptorOperationNm">
                                    AD_001
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label pt-0">사용 여부</label>
                                  <div class="form-control_box" id="adaptorOperationUseYn">
                                    DS_AirQuality
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                  <div class="form-group row col-12 col-md-6">
                                    <label class="control-label pt-0">시작 / 종료</label>
                                    <div class="form-control_box" id="adaptorOperationSEBtn">

                                    </div>
                                  </div>
                                  <%--<div class="form-group row col-12 col-md-6">
                                    <label class="control-label pt-0">상태</label>
                                    <div class="form-control_box" >
                                      DS_AirQuality
                                    </div>
                                  </div>--%>
                              </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div>
                            총 <span class="qty">5</span> 건
                          </div>
                          <div class="cont_title_box">
                            <h3>Instance 상세 목록</h3>
                          </div>
                          <div class="table_responsive">
                            <table class="table table-striped table-bordered">
                              <thead>
                                <tr>
                                  <th>순번</th>
                                  <th>Instance 명</th>
                                  <th>시작 / 종료</th>
                                  <th>상태</th>
                                  <th>수집 스케줄 유형</th>
                                  <th>수집 스케줄 설정</th>
                                  <th>수집건수</th>
                                  <th>적재건수</th>
                                  <th>실패건수</th>
                                </tr>
                              </thead>
                              <tbody>
                                <%--<tr>
                                  <th>1</th>
                                  <th>전주시 문화재</th>
                                  <th><button class="btn btn-primary btn-sm">중지</button></th>
                                  <th>실행</th>
                                  <th>반복</th>
                                  <th>매일 4일 4시 00분</th>
                                  <th>5</th>
                                  <th>5</th>
                                  <th>0</th>
                                </tr>
                                <tr>
                                  <th>2 </th>
                                  <th>전주시 문화재</th>
                                  <th><button class="btn btn-primary btn-sm">중지</button></th>
                                  <th>실행</th>
                                  <th>반복</th>
                                  <th>매일 4일 4시 00분</th>
                                  <th>5</th>
                                  <th>5</th>
                                  <th>0</th>
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

    <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
      <script type="text/javascript" src="../js/adaptor/adaptorOperation.js"></script>
      <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>

  </body>
</html>