<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 샌드박스</title>
    <%@include file="A1.Common/commonCss.jsp" %>
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

            <%@include file="A1.Menu/menu.jsp" %>

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
                  <h2>샌드박스</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <div class="right_btns"> 
                    <div class="row port_search">
                      <select class="form-control" name=""> 
                        <option value="">샌드박스 명 / 시나리오 명</option>
                      </select>
                      <select class="form-control" name=""> 
                        <option value="">요청상태</option>
                      </select>
                      <input class="form-control mr-1" type="text">
                      <button class="btn btn-primary btn-sm">조회</button>
                    </div>
                  </div>
                  <div class="table_btns mt-4">
                    <button class="btn btn-primary" type="button" data-toggle="modal" data-target=".addport_modal">등록</button>
                    <button class="btn btn-danger btn_remove">삭제</button>
                  </div>
                  <div class="table_responsive">
                    <div class="talbel_total"><span class="red bold">7</span>건이 조회되었습니다.</div>
                    <table class="table table-bordered bulk_action table_center" id="sandboxTable">
                      <colgroup> 
                        <col width="44px">
                        <col spna="2" width="100px">
                        <col span="8" width="90px">
                        <col span="2" width="102px">
                        <col span="2" width="90px">
                        <col width="120px">
                      </colgroup>
                      <thead>
                        <tr> 
                          <th rowspan="2"> 
                            <input class="flat" id="check-all" type="checkbox">
                          </th>
                          <th rowspan="2">샌드박스명</th>
                          <th rowspan="2">시나리오명</th>
                          <th colspan="2">분석 조건</th>
                          <th colspan="2">SANDBOX</th>
                          <th colspan="3">분석조작</th>
                          <th rowspan="2">샌드박스<br>정보<br>다운로드</th>
                          <th rowspan="2">분석<br>프로그램</th>
                          <th rowspan="2">요청<br>상태</th>
                          <th rowspan="2">생성자</th>
                          <th>등록일자</th>
                        </tr>
                        <tr>
                          <th>주기</th>
                          <th>모델</th>
                          <th>실행 조작</th>
                          <th>진행 상태</th>
                          <th>실행 조작</th>
                          <th>진행 상태</th>
                          <th>결과 조회</th>
                          <th>승인일자</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td rowspan="2"> 
                            <input class="flat" type="checkbox" name="table_records">
                          </td>
                          <td rowspan="2"><span class="blue bold">pm10_anlysis</span></td>
                          <td rowspan="2">pm10 예측</td>
                          <td rowspan="2">배치성</td>
                          <td rowspan="2">기존 모델</td>
                          <td rowspan="2"> 
                            <button class="btn_play red">▶</button>
                            <button class="btn_pause">■</button>
                          </td>
                          <td rowspan="2">실행</td>
                          <td rowspan="2"> 
                            <button class="btn_play">▶</button>
                            <button class="btn_pause red">■</button>
                          </td>
                          <td rowspan="2">실행</td>
                          <td rowspan="2"><span class="blue bold">결과조회</span></td>
                          <td rowspan="2">
                            <button class="btn btn-success btn-sm mx-0" type="button" data-toggle="modal" data-target=".download_modal"> 다운로드</button>
                          </td>
                          <td rowspan="2">
                            <button class="btn btn-success btn-sm mx-0">프로그램</button>
                          </td>
                          <td rowspan="2">승인완료</td>
                          <td rowspan="2">Admin</td>
                          <td>2022-01-10</td>
                        </tr>
                        <tr>
                          <td>2022-01-10</td>
                        </tr>
                      </tbody>
                    </table>
                    <div class="nav justify-content-center"> 
                      <ul class="pagination"> 
                        <li class="page-item"> <a class="page-link" href="#">&lt; </a></li>
                        <li class="page-item"> <a class="page-link" href="#">1   </a></li>
                        <li class="page-item"> <a class="page-link" href="#">2 </a></li>
                        <li class="page-item"> <a class="page-link" href="#">&gt;           </a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- download_modal -->
        <div class="modal fade download_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">샌드박스 정보 다운로드</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content">
                  <h5 class="mb-4s big_font">[pm10_analysis] 분석 모델 정보 </h5>
                  <ul class="nav nav-tabs bar_tabs">
                    <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#dataset">데이터셋</a></li>
                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#preprocessing">전처리모델</a></li>
                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#analysisModel">분석 모델</a></li>
                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#analysisFile">분석 파일</a></li>
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane fade show active" id="dataset" role="tabpanel">
                      <h5>분석 데이터셋 정보</h5>
                      <div class="table_responsive table-modal-height">
                        <table class="table table-striped table_center">
                          <colgroup> </colgroup>
                          <thead>
                            <tr> 
                              <th>테이블명<br>(한글)</th>
                              <th>테이블명<br>(영문)</th>
                              <th>스키마</th>
                              <th>컬럼명<br>(한글)</th>
                              <th>컬럼명<br>(영문)</th>
                              <th>Input Data</th>
                              <th>Output Data</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>날씨</td>
                              <td>Weather</td>
                              <td>LX</td>
                              <td>기온</td>
                              <td>temperature</td>
                              <td>▣</td>
                              <td> </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                      <div class="right_btns"> <a class="btn btn-primary" href="" download>다운로드 </a>
                        <button class="btn btn-secondary" data-dismiss="modal">닫기 </button>
                      </div>
                    </div>
                    <div class="tab-pane fade" id="preprocessing" role="tabpanel"></div>
                    <div class="tab-pane fade" id="analysisModel" role="tabpanel"></div>
                    <div class="tab-pane fade" id="analysisFile" role="tabpanel"></div>
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

    <%@include file="A1.Common/commonJs.jsp" %>

  </body>
</html>