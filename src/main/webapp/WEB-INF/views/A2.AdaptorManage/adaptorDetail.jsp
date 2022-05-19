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
                  <h2>Adaptor 상세</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">
                    <div class="row">
                    <h3 class="col-md-11">Adaptor 상세</h3>
                    <button class="btn btn-sm btn-primary col-md" onclick="adaptorConfigList();">목록</button>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">Adaptor 명</label>
                        <div class="form-control_box duplicate_box">
                          <input class="form-control" type="text" id="adapterDetalNm" disabled="disabled">
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">사용 여부</label>
                        <div class="form-control_box" id="adapterDetalUseYn">
                          <%--<div class="radio radio_inline">
                            <label>
                              <div class="iradio_flat-purple checked" style="position: relative;"><input class="flat" type="radio" checked="" name="use" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>사용
                            </label>
                          </div>
                          <div class="radio radio_inline">
                            <label>
                              <div class="iradio_flat-purple" style="position: relative;"><input class="flat" type="radio" name="use" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>사용안함
                            </label>
                          </div>--%>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">Adaptor 유형</label>
                        <div class="form-control_box">
                          <div class="col-md-6 pl-0" id="adapterDetalTypeNm">
                            <%--<select class="form-control">
                              <option>Choose option</option>

                              <option>Option two</option>
                              <option>Option three</option>
                              <option>Option four</option>
                            </select>--%>
                          </div>
                        </div>
                      </div>
                    </div>

                    <br><br>
                    <br><br>

                    <div class="row col-md-12">
                      <%--인스턴스 등록
                      <table class="col-md-12 table mt-3">
                        <tr>
                          <td>
                            인스턴스명
                          </td>
                          <td>
                            <input class="form-control" type="text">
                          </td>
                          <td>
                            데이터 셋명
                          </td>
                          <td>
                            <input class="form-control" type="text">
                          </td>
                        </tr>

                        <tr>
                          <td>
                            수집방식
                          </td>
                          <td>
                            <input class="form-control" type="text">
                          </td>
                          <td>
                            사용여부
                          </td>
                          <td>
                            <input class="form-control" type="text">
                          </td>
                        </tr>

                        <tr>
                          <td>
                            수집유형
                          </td>
                          <td>
                            <input class="form-control" type="text">
                          </td>
                          <td>
                            보관주기
                          </td>
                          <td>
                            <input class="form-control" type="text">
                          </td>
                        </tr>

                        <tr>
                          <td>
                            수집 스케줄 유형
                          </td>
                          <td>
                            <input class="form-control" type="text">
                          </td>
                          <td>
                            시계열 데이터
                          </td>
                          <td>
                            <input class="form-control" type="text">
                          </td>
                        </tr>

                        <tr>
                          <td>
                            수집 스케줄 유형
                          </td>
                        </tr>

                        <tr>
                          <td>
                            비고
                          </td>
                          <td>

                          </td>
                        </tr>
                      </table>--%>

                      <div class="col-md-12">
                        <div class="row">
                          <div class="row col-md-11">Instance 목록</div>
                          <div class="talbel_total" id="instanceListCnt">총 1개</div>
                          <div class="col-md"><button class="btn btn-sm btn-primary float-md-right" onclick="instanceAdd();">등록</button></div>
                        </div>
                        <table class="col-md-12 table" id="instanceListData">
                          <thead>
                          <tr>
                            <td>
                              순번
                            </td>
                            <td>
                              Instance 명
                            </td>
                            <td>
                              데이터 셋명
                            </td>
                            <td>
                              상세/ 매칭 정보
                            </td>
                            <td>
                              수집방식
                            </td>
                            <td>
                              수집유형
                            </td>
                            <td>
                              수집스케줄 유형
                            </td>
                            <td>
                              시계열 데이터
                            </td>
                            <td>
                              사용여부
                            </td>
                          </tr>
                          </thead>
                          <tbody>
                          <%--<tr>
                            <td>
                              1
                            </td>
                            <td>
                              Instance 명
                            </td>
                            <td>
                              데이터 셋명
                            </td>
                            <td class="row">
                              <button class="btn btn-sm btn-primary col-md-5">상세</button>
                              <button class="btn btn-sm btn-primary col-md-5">매칭정보</button>
                            </td>
                            <td>
                              수집방식
                            </td>
                            <td>
                              수집유형
                            </td>
                            <td>
                              수집스케줄 유형
                            </td>
                            <td>
                              시계열 데이터
                            </td>
                            <td>
                              사용여부
                            </td>
                          </tr>--%>
                          </tbody>
                        </table>
                      </div>

                    </div>

                    <div class="row">
                    </div>

                </div>
              </div>
            </div>
          </div>
      </div>
    </div>

    <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
      <script type="text/javascript" src="../js/adaptor/adaptorDetail.js"></script>
      <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>

  </body>
</html>