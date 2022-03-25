<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 시나리오</title>
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
                  <h2>시나리오</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <div class="scenario_depth"> 
                    <ul>
                      <li class="now_depth">시나리오 작성</li>
                      <li class="temporary_storage">분석모델 설정</li>
                      <li class="save">전처리 모델 설정</li>
                      <li>분석 대상 설정</li>
                    </ul>
                  </div>
                  <div class="progress_tab">
                    <div class="tab_item" id="tab-0">
                      <h3 class="mb-4">분석 시나리오 이름 등록</h3>
                      <div class="row mb-4">
                        <div class="form-group row col-12 col-md-12 mx-0">
                          <label class="control-label">시나리오 한글 이름 <span class="red">*</span></label>
                          <div class="form-control_box duplicate_box">
                            <input class="form-control" type="text">
                            <button class="btn btn-danger btn-sm">중복체크</button>
                            <div class="duple_text danger_text">* 이미 사용중인 ID 입니다.</div>
                            <div class="duple_text success_text">* 사용 가능합니다.</div>
                          </div>
                        </div>
                        <div class="form-group row col-12 col-md-12 mx-0">
                          <label class="control-label">시나리오 영문 이름 <span class="red">*</span></label>
                          <div class="form-control_box duplicate_box">
                            <input class="form-control" type="text">
                            <div class="duple_text danger_text">* 이미 사용중인 ID 입니다.</div>
                            <div class="duple_text success_text">* 사용 가능합니다.</div>
                          </div>
                        </div>
                      </div>
                      <h3 class="mb-4">분석 시나리오 세부 정보 입력</h3>
                      <h4 class="mb-2 center_title"> 분석 시나리오 설정</h4>
                      <div class="d-flex mb-4">
                        <div class="radio mr-4"> 
                          <label for="analyze1">
                            <input class="flat" id="analyze1" type="radio" name="analyze" checked>분석 대상만 설정
                          </label>
                        </div>
                        <div class="radio"> 
                          <label for="analyze2">
                            <input class="flat" id="analyze2" type="radio" name="analyze" checked>분석 모델, 전처리 모델, 분석 대상 설정
                          </label>
                        </div>
                      </div>
                      <h4 class="center_title">분석 시나리오 설명</h4>
                      <div class="row">
                        <div class="form-group row col-12 col-md-12 mx-0">
                          <label class="control-label">시나리오 설명</label>
                          <div class="form-control_box">
                            <input class="form-control" type="text">
                          </div>
                        </div>
                      </div>
                      <div class="right_btns mt-4">
                        <button class="btn btn-warning">임시저장</button>
                        <button class="btn btn-success tab_next">다음</button>
                        <button class="btn btn-primary">목록</button>
                      </div>
                    </div>
                    <div class="tab_item" id="tab-1">  
                      <h3>분석 시나리오 세부 정보 입력 - 분석모델 등록 </h3>
                      <div class="row mx-0">
                        <h4 class="center_title">분석 모델 이름 </h4>
                        <div class="form-group row col-12 col-md-12 mx-0">
                          <label class="control-label">분석 모델명 <span class="red">*</span></label>
                          <div class="form-control_box">
                            <input class="form-control" type="text">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-12 col-md-6 mx-0">
                          <h4 class="center_title">분석 모델 파일 등록</h4>
                          <div class="right_btns mb-2">    
                            <div class="file_btn">
                              <button class="btn btn-sm btn-primary">Upload</button>
                              <input type="file">
                            </div>
                            <button class="btn btn-sm btn-danger">삭제</button>
                          </div>
                          <div class="form-group row col-12 col-md-12 mx-0">
                            <label class="control-label">분석 모델 파일명 <span class="red">*</span>   </label>
                            <div class="form-control_box">
                              <input class="form-control" type="text" disabled>
                            </div>
                          </div>
                          <h4 class="mt-4 center_title">분석 파일 등록</h4>
                          <div class="right_btns mb-2">    
                            <div class="file_btn">
                              <button class="btn btn-sm btn-primary">Upload</button>
                              <input type="file">
                            </div>
                            <button class="btn btn-sm btn-danger">삭제 </button>
                          </div>
                          <div class="table_responsive">
                            <table class="table table-striped table-bordered bulk_action">
                              <colgroup>
                                <col width="44px">
                              </colgroup>
                              <thead>
                                <tr>
                                  <th>
                                    <input class="flat" id="check-all" type="checkbox">
                                  </th>
                                  <th>분석 파일명 <span class="red">*</span></th>
                                  <th>파일 경로</th>
                                  <th>파일 사이즈</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>
                                    <input class="flat" type="checkbox" name="table_records">
                                  </td>
                                  <td>분석 모델 파일명.py</td>
                                  <td>Dir\Dir\Dir</td>
                                  <td>20MB</td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                        <div class="col-12 col-md-6 mx-0">
                          <h4 class="center_title">분석 모델 기본 정보 등록</h4>
                          <div class="right_btns mb-2">    
                            <button class="btn btn-sm btn-primary btn_add">추가</button>
                            <button class="btn btn-sm btn-danger btn_remove">삭제</button>
                          </div>
                          <div class="table_responsive">
                            <table class="table table-striped table-bordered bulk_action">
                              <colgroup>
                                <col width="55px">
                              </colgroup>
                              <thead>
                                <tr>
                                  <th>선택</th>
                                  <th>파라미터</th>
                                  <th>정의</th>
                                  <th>값</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>
                                    <input class="flat" type="checkbox" name="table_records">
                                  </td>
                                  <td>module</td>
                                  <td>사용된 keras utils 이름 등</td>
                                  <td> 
                                    <input type="text">
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="right_btns mb-2">    
                              <button class="btn btn-sm btn-success" type="button" data-toggle="modal" data-target=".guide_modal">등록 가이드</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-12 col-md-12 mx-0">
                          <h4 class="center_title">분석 모델 설명</h4>
                          <div class="row">
                            <div class="form-group row col-12 col-md-12 mx-0">
                              <label class="control-label">분석 모델 설명</label>
                              <div class="form-control_box">
                                <input class="form-control" type="text">
                              </div>
                            </div>
                          </div>
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
                      <div class="right_btns mt-4">
                        <button class="btn btn-secondary tab_prev">이전</button>
                        <button class="btn btn-warning">임시저장</button>
                        <button class="btn btn-success tab_next">다음</button>
                        <button class="btn btn-primary">목록</button>
                      </div>
                    </div>
                    <div class="tab_item" id="tab-3">
                      <div class="right_btns mt-4">
                        <button class="btn btn-secondary tab_prev">이전</button>
                        <button class="btn btn-warning">임시저장</button>
                        <button class="btn btn-primary">목록</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- guide_modal -->
        <div class="modal fade guide_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">등록 가이드</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content"> </div>
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