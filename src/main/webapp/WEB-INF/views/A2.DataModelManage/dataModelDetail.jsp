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
                  <h2>검색 형태3</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">
                  <form class="form-horizontal form-label-left">
                    <h3>기본 정보</h3>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">데이터 모델 ID</label>
                        <div class="form-control_box duplicate_box">
                          <input class="form-control" type="text">
                          <button class="btn btn-danger btn-sm">중복체크</button>
                          <div class="duple_text danger_text">* 이미 사용중인 ID 입니다.</div>
                          <div class="duple_text success_text">* 사용 가능합니다.</div>
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">수집 방식</label>
                        <div class="form-control_box">
                          <select class="form-control">
                            <option>API</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="row">
<%--                      <div class="form-group row col-12 col-md-6">--%>
<%--                        <label class="control-label">데이터 모델 명</label>--%>
<%--                        <div class="form-control_box">--%>
<%--                          <input class="form-control" type="text">--%>
<%--                        </div>--%>
<%--                      </div>--%>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">수집 유형</label>
                        <div class="form-control_box">
                          <select class="form-control">
                            <option>Open_API</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <h3 class="mt-4">데이터 모델 속성 정보</h3>
                    <div class="row">
                      <div class="metatable_box col-5">
                        <div class="form-group row">
                          <label class="control-label">테이블 명</label>
                          <div class="form-control_box duplicate_box">
                            <input class="form-control" type="text">
                            <button class="btn btn-primary"> <i class="glyphicon glyphicon-search"></i></button>
                          </div>
                        </div>
                        <div class="row">
                          <div class="meta_title">메타 테이블 정보</div>
                          <div class="meta_cont meta_list">
                            <ul>
                              <li>
                                <button type="button">C_NAME_01(varchar 10) 문화재 명</button>
                              </li>
                              <li>
                                <button type="button">C_NAME_01(Integer) 문화재 순번</button>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-2 col-lg-1 d-flex align-self-center justify-content-center p-0">
                        <button class="btn btn-secondary" type="button"><i class="glyphicon glyphicon-chevron-right"></i>
                          <div>매칭</div>
                        </button>
                      </div>
                      <div class="metatable_box col-5 col-lg-6">
                        <div class="row">
                          <div class="meta_title">데이터 모델 속성 정보</div>
                          <div class="meta_cont meta_list">
                            <ul>
                              <li>
                                <button type="button">C_NAME_01 String</button>
                              </li>
                              <li>
                                <button type="button">C_NAME_01 Integer</button>
                              </li>
                            </ul>
                          </div>
                        </div>
                        <div class="row">
                          <div class="meta_title">속성 아이디</div>
                          <div class="meta_cont">
                            <input class="form-control" type="text">
                          </div>
                        </div>
                        <div class="row">
                          <div class="meta_title">속성 값</div>
                          <div class="meta_cont">
                            <select class="form-control">
                              <option>Choose option</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="table_btns">
                        <button class="btn btn-primary" type="button">저장</button>
                        <button class="btn btn-danger" type="button">삭제</button>
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