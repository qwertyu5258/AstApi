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
                  <h2>HOME &gt; Adaptor 설정 &gt; Adaptor 상세 &gt; Instance 상세</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content">
                              <div class="cont_title_box">
                                <h3>Instance 상세</h3>
                                <div class="right_btns">
                                  <button class="btn btn-primary" onclick="adaptorDetailList();">목록</button>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">인스턴스 명</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text" id="instance_nm" disabled="disabled">
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">데이터 셋 명</label>
                                  <div class="form-control_box">
                                    <div class="col-md-6">
                                      <input class="form-control" type="text" id="dset_korean_nm" disabled="disabled">
                                      <input class="form-control" type="hidden" id="dset_idntfc_id">
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">수집방식</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text" id="clct_mthd" value="" disabled="disabled">
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">수집유형</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text" id="clct_ty" value="" disabled="disabled">
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">보관주기</label>
                                  <div class="form-control_box">
                                    <div class="col-md-6">
                                      <input class="form-control" type="text" id="storage_cycle" disabled="disabled">
                                    </div>
                                    <div class="col-md-6">
                                      <select class="form-control" id="storage_type">
                                        <option>선택</option>
                                        <option>Option one</option>
                                        <option>Option two</option>
                                        <option>Option three</option>
                                        <option>Option four</option>
                                      </select>
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">시계열 데이터</label>
                                  <div class="form-control_box">
                                    <div class="radio radio_inline">
                                      <label class="">
                                        <div class="iradio_flat-purple checked" style="position: relative;">
                                          <input class="flat" type="radio" name="time_data_yn" value="Y">
                                        </div>예
                                      </label>
                                    </div>
                                    <div class="radio radio_inline">
                                      <label>
                                        <div class="iradio_flat-purple" style="position: relative;">
                                          <input class="flat" type="radio" name="time_data_yn" value="N">
                                        </div>아니오
                                      </label>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">수집 스케줄 유형</label>
                                  <div class="form-control_box">
                                    <div class="radio radio_inline">
                                      <label class="">
                                        <div class="iradio_flat-purple checked" style="position: relative;">
                                          <input class="flat" type="radio" name="schedule_type" value="반복">
                                        </div>반복
                                      </label>
                                    </div>
                                    <div class="radio radio_inline">
                                      <label>
                                        <div class="iradio_flat-purple" style="position: relative;">
                                          <input class="flat" type="radio" name="schedule_type" value="미반복">
                                        </div>미반복
                                      </label>
                                    </div>
                                  </div>
                                <div class="form-group row col-12 col-md-6">
                                  <div class="control-label">사용여부</div>
                                  <div class="form-control_box">
                                    <div class="radio radio_inline">
                                      <label class="">
                                        <div class="iradio_flat-purple checked" style="position: relative;">
                                          <input class="flat" type="radio" name="use_yn" value="Y">
                                        </div>사용
                                      </label>
                                    </div>
                                    <div class="radio radio_inline">
                                      <label>
                                        <div class="iradio_flat-purple" style="position: relative;">
                                          <input class="flat" type="radio" name="use_yn" value="N">
                                        </div>사용안함
                                      </label>
                                    </div>
                                  </div>
                                </div>
                              </div>

                              <div class="row result_norepeat" style="display: none;">
                                <div class="form-group row col-md-12">
                                  <div class="control-label">수집 스케줄 설정</div>
                                  <div class="form-control_box repeat_year_box">
                                    <div class="form-control_box">
                                      <div id="scheduleTime">


                                      </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-12">
                                  <label class="control-label">비고</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" id="etc_note" type="text" disabled="disabled">
                                  </div>
                               </div>
                              </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                          <div class="col-md-12">
                            <div class="x_panel">
                              <div class="cont_title_box">
                                <h3>Instance 설정정보</h3>
                                <div class="right_btns">
                                  <button class="btn btn-success" onclick="matchInfoConfig();">매칭정보 설정</button>
                                  <button class="btn btn-primary" onclick="instancePropertySave();">저장</button>
                                </div>
                              </div>
                              <div class="x_content">
                                <div class="table_btns mb-2">
                                  <button class="btn btn-primary" onclick="instancePropertyAdd();">+ 추가</button>
                                  <button class="btn btn-danger" onclick="instancePropertyDel();">- 삭제</button>
                                </div>
                                <div class="table_responsive">
                                  <table class="table table-striped table-bordered bulk_action" style="width:100%" id="instanceMatchListData">
                                    <colgroup>
                                      <col width="44px">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                      <th>선택</th>
                                      <th>항목ID(key)</th>
                                      <th>항목명</th>
                                      <th>항목값(value)</th>
                                      <th>항목설명</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%--<tr>
                                      <th>
                                        <div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                      </th>
                                      <td>
                                        <input type="text" value="DB_TO_DB1">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                    </tr>
                                    <tr>
                                      <th>
                                        <div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                      </th>
                                      <td>
                                        <input type="text" value="DB_TO_DB2">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                    </tr>
                                    <tr>
                                      <th>
                                        <div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                      </th>
                                      <td>
                                        <input type="text" value="DB_TO_DB3" disabled="">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB" disabled="">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB" disabled="">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB" disabled="">
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

    <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
          <script type="text/javascript" src="../js/adaptor/instanceDetail.js"></script>
          <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>

  </body>
</html>