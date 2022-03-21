<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 데이터 분석 결과 조회</title>
    <%@include file="common/commonCss.jsp" %>
  </head>
  <body class="nav-md">
    <div class="container body"> 
      <div class="main_container">    
        <div class="col-md-3 left_col menu_fixed">
          <div class="left_col scroll-view">
            <div class="navbar nav_title"><a class="site_title" href="index"><i class="fa fa-paw"> </i><span>LX DT </span></a></div>
            <div class="clearfix"> </div>
            <div class="profile clearfix">
              <div class="profile_pic"><img class="img-circle profile_img" src="img/img.jpg" alt="..."></div>
              <div class="profile_info"><span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div><br>
            <div class="main_menu_side hidden-print main_menu" id="sidebar-menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li><a href="table"> <i class="fa fa-user"> </i>테이블 형태</a></li>
                  <li> <a href="modal"> <i class="fa fa-user"> </i>모달 형태</a></li>
                  <li> <a href="search"> <i class="fa fa-user"> </i>검색 형태</a></li>
                  <li> <a href="input"> <i class="fa fa-user"> </i>등록폼</a></li>
                  <li> <a href="clcntErrorDetail"> <i class="fa fa-user"> </i>수집오류 상세</a></li>
                  <li> <a href="dataSetList"> <i class="fa fa-user"> </i>데이터 셋 리스트 상세</a></li>
                  <li> <a><i class="fa fa-list-alt"></i>1뎁스<span class="fa fa-chevron-down"> </span></a>
                    <ul class="nav child_menu">
                      <li><a href="index">2뎁스</a></li>
                      <li><a>2뎁스<span class="fa fa-chevron-down"> </span></a>
                        <ul class="nav child_menu">
                          <li><a href="#">3뎁스</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                  <li> <a href="port"> <i class="fa fa-user"> </i>포트관리</a></li>
                  <li> <a href="scenario"> <i class="fa fa-user"> </i>시나리오</a></li>
                  <li> <a><i class="fa fa-user"> </i>샌드박스<span class="fa fa-chevron-down"> </span></a>
                    <ul class="nav child_menu">
                      <li><a href="sandbox">샌드박스 관리</a></li>
                      <li><a href="sandboxRgstr">샌드박스 등록</a></li>
                    </ul>
                  </li>
                  <li> <a href="data"> <i class="fa fa-user"> </i>데이터 분석 결과 조회</a></li>
                </ul>
              </div>
            </div>
            <div class="sidebar-footer hidden-small"><a data-toggle="tooltip" data-placement="top" title="로그아웃"><span class="glyphicon glyphicon-off" aria-hidden="Logout"></span></a></div>
          </div>
        </div>
        <div class="top_nav">
          <div class="nav_menu">
            <div class="nav toggle"><a id="menu_toggle"><i class="fa fa-bars"> </i></a></div>
            <div class="nav navbar-nav">
              <ul class="navbar-right">
                <li class="nav-item dropdown open"><a class="user-profile dropdown-toggle" id="navbarDropdown" href="" aria-haspopup="true" data-toggle="dropdown" aria-expanded="false"> <img src="img/img.jpg" alt="">John Doe</a>
                  <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown"><a class="dropdown-item">Profile</a><a class="dropdown-item"> <span class="badge bg-red pull-right">50%</span><span>Settings</span></a><a class="dropdown-item">Help</a><a class="dropdown-item" href="login"><i class="fa fa-sign-out pull-right"></i>log Out</a></div>
                </li>
                <li class="nav-item dropdown open" role="presentation"><a class="dropdown-toggle info-number" id="navbarDropdown1" href="" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-envelope-o"></i><span class="badge bg-green">6</span></a>
                  <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                    <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                    <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                    <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
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
                  <h2>데이터 분석 결과 조회</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <div class="scenario_depth"> 
                    <ul>
                      <li class="now_depth">데이터 로딩</li>
                      <li class="temporary_storage">데이터 전처리</li>
                      <li class="save">결과비교</li>
                      <li>데이터 분석/재학습</li>
                    </ul>
                  </div>
                  <div class="progress_tab">
                    <div class="tab_item" id="tab-0">
                      <h3 class="mb-4"><b>데이터 Loading</b></h3>
                      <div class="row mb-4">
                        <div class="form-group row col-12 col-md-12 mx-0">
                          <label class="control-label">원본 데이터 수</label>
                          <div class="form-control_box duplicate_box">
                            <input class="form-control" type="text">
                            <button class="btn btn-danger btn-sm">중복체크</button>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-12 col-md-6 mx-0">
                          <h4 class="center_title">원본 데이터 요약</h4>
                          <div class="table_responsive scroll_y">
                            <table class="table table-striped table-bordered bulk_action">
                              <colgroup>
                                <col width="55px">
                              </colgroup>
                              <thead>
                                <tr>
                                  <th>선택</th>
                                  <th>이미지명</th>
                                  <th>도커 이미지명</th>
                                  <th>용도</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>
                                    <input class="flat" type="checkbox" name="table_records">
                                  </td>
                                  <td>시계열_분석_이미지</td>
                                  <td>img_01</td>
                                  <td>시계열 분석용</td>
                                </tr>
                                <tr>
                                  <td>
                                    <input class="flat" type="checkbox" name="table_records">
                                  </td>
                                  <td>시계열_분석_이미지</td>
                                  <td>img_01</td>
                                  <td>시계열 분석용</td>
                                </tr>
                                <tr>
                                  <td>
                                    <input class="flat" type="checkbox" name="table_records">
                                  </td>
                                  <td>시계열_분석_이미지</td>
                                  <td>img_01</td>
                                  <td>시계열 분석용</td>
                                </tr>
                                <tr>
                                  <td>
                                    <input class="flat" type="checkbox" name="table_records">
                                  </td>
                                  <td>시계열_분석_이미지</td>
                                  <td>img_01</td>
                                  <td>시계열 분석용</td>
                                </tr>
                                <tr>
                                  <td>
                                    <input class="flat" type="checkbox" name="table_records">
                                  </td>
                                  <td>시계열_분석_이미지</td>
                                  <td>img_01</td>
                                  <td>시계열 분석용</td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                          <div class="right_btns"> 
                            <button class="btn btn-primary">상세보기</button>
                          </div>
                        </div>
                        <div class="col-12 col-md-6 mx-0">
                          <h4 class="center_title">원본 데이터 박스 그래프</h4>
                          <canvas id="mybarChart"></canvas>
                        </div>
                      </div>
                      <div class="right_btns mt-4">
                        <button class="btn btn-warning">임시저장</button>
                        <button class="btn btn-success tab_next">다음</button>
                        <button class="btn btn-primary">목록</button>
                      </div>
                    </div>
                    <div class="tab_item" id="tab-1">  
                      <h3><b>데이터 비교 :</b> 원본 데이터와 전처리 결과 데이터 Row 수를 비교</h3>
                      <div class="row">
                        <div class="col-12 col-md-4 mx-0">
                          <h4 class="center_title">전처리 결과 별 데이터 수</h4>
                          <div class="table_responsive">
                            <table class="table table-striped table-bordered">
                              <colgroup> </colgroup>
                              <thead>
                                <tr>
                                  <th>단계</th>
                                  <th>데이터 수</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>원본 데이터 수</td>
                                  <td>1800</td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                        <div class="col-12 col-md-8 mx-0">
                          <h4 class="center_title">전처리 결과 별 데이터 수 그래프</h4>
                          <canvas id="defaltbarChart"></canvas>
                        </div>
                      </div>
                      <div class="right_btns mt-4">
                        <button class="btn btn-secondary tab_prev">이전</button>
                        <button class="btn btn-warning">임시저장</button>
                        <button class="btn btn-success tab_next">다음</button>
                        <button class="btn btn-primary">목록</button>
                      </div>
                    </div>
                    <div class="tab_item" id="tab-2">  
                      <h3><b>데이터 분석/재학습 결과</b> </h3>
                      <div class="row">
                        <div class="col-12 col-md-6 mx-0">
                          <h4 class="center_title">분석</h4>
                          <div class="border_rows">
                            <div class="row">
                              <div class="form-group row col-12 col-md-12">
                                <div class="control-label">분석 결과</div>
                                <div class="form-control_box">분석 모델로 도출된 예측값</div>
                              </div>
                            </div>
                          </div>
                          <canvas id="lineChart1"></canvas>
                          <div class="table_responsive">
                            <table class="table table-bordered no_thead">
                              <tbody>
                                <tr>
                                  <th>Time</th>
                                  <td>T<sub>1</sub></td>
                                  <td>T<sub>2</sub></td>
                                  <td>T<sub>3</sub></td>
                                  <td>예측값</td>
                                </tr>
                                <tr>
                                  <th>값</th>
                                  <td>V<sub>1</sub></td>
                                  <td>V<sub>2</sub></td>
                                  <td>V<sub>3</sub></td>
                                  <td>V<sub>4</sub></td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                        <div class="col-12 col-md-6 mx-0">
                          <h4 class="center_title">재학습</h4>
                          <div class="border_rows">
                            <div class="row">
                              <div class="form-group row col-12 col-md-12">
                                <div class="control-label">재학습 수행 상태</div>
                                <div class="form-control_box"> 
                                  <div class="progress">
                                    <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 66%;"></div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="form-group row col-12 col-md-12">
                                <div class="control-label">재학습 결과</div>
                                <div class="form-control_box">분석 모델로 도출된 학습 결과 - Val, Accuracy등</div>
                              </div>
                            </div>
                          </div>
                          <canvas id="lineChart2"></canvas>
                          <div class="table_responsive">
                            <table class="table table-bordered no_thead">
                              <tr>
                                <th>Time</th>
                                <td>T<sub>1</sub></td>
                                <td>T<sub>2</sub></td>
                                <td>T<sub>3</sub></td>
                                <td>예측값</td>
                              </tr>
                              <tr>
                                <th>실제값</th>
                                <td>V<sub>1</sub></td>
                                <td>V<sub>2</sub></td>
                                <td>V<sub>3</sub></td>
                                <td>V<sub>4</sub></td>
                              </tr>
                              <tr>
                                <th>예측값</th>
                                <td>P<sub>1</sub></td>
                                <td>P<sub>2</sub></td>
                                <td>P<sub>3</sub></td>
                                <td>P<sub>4</sub></td>
                              </tr>
                            </table>
                          </div>
                        </div>
                      </div>
                      <div class="right_btns mt-4">
                        <button class="btn btn-secondary tab_prev">이전</button>
                        <button class="btn btn-warning">임시저장</button>
                        <button class="btn btn-danger">확인</button>
                        <button class="btn btn-primary">목록</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <footer> 
          <div class="full-right"></div>Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          <div class="clearfix"></div>
        </footer>
      </div>
    </div>
    <!-- common js-->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <script src="vendors/bootstrap/dist/js/bootstrap.bundle.min.js"> </script>
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <script src="vendors/iCheck/icheck.min.js"></script>
    <script src="vendors/moment/min/moment.min.js"></script>
    <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons5.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="vendors/jszip/dist/jszip.min.js"></script>
    <script src="vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="vendors/pdfmake/build/vfs_fonts.js"></script>
    <script src="vendors/dragula/dist/dragula.js"></script>
    <script src="vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <script src="vendors/nprogress/nprogress.js"></script>
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <script src="vendors/Chart.js/dist/Chart.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>