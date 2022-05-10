<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 검색 형태</title>
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
                  <h2>검색 형태1</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <form class="form-horizontal form-label-left d-flex align-items-center mb-4 row">
                    <div class="col-12 col-md-10">
                      <div class="form-group row">
                        <label class="control-label">게시판 선택</label>
                        <div class="form-control_box">
                          <select class="form-control">
                            <option>Choose option</option>

                            <option>Option two</option>
                            <option>Option three</option>
                            <option>Option four</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="control-label">등록일</label>
                        <div class="form-control_box">
                          <fieldset>
                            <div class="control-group">
                              <div class="controls">
                                <div class="input-prepend input-group"><span class="add-on input-group-addon"><i class="fa fa-calendar"></i></span>
                                  <input class="form-control" id="reservation" type="text" style="width: 200px" name="reservation" value="2020.01.01 - 2020.01.04">
                                </div>
                              </div>
                            </div>
                          </fieldset>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="control-label">검색어</label>
                        <div class="form-control_box">
                          <div class="col-md-3 pl-0">
                            <select class="form-control">
                              <option>Choose option</option>

                              <option>Option two</option>
                              <option>Option three</option>
                              <option>Option four</option>
                            </select>
                          </div>
                          <div class="col-md-9 pr-0">
                            <input class="form-control" type="text" placeholder="">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-12 col-md-2 btn_search_box">
                      <button class="btn btn-primary btn_search">검색</button>
                    </div>
                  </form>
                </div>
                <div class="x_content"> 
                  <div class="table_responsive">
                    <table class="table table-striped">
                      <colgroup> 
                        <col width="55px">
                      </colgroup>
                      <thead>
                        <tr> 
                          <th>no.</th>
                          <th>수집방식</th>
                          <th>수집유형</th>
                          <th>데이터 모델 ID</th>
                          <th>데이터 모델 명</th>
                          <th>메타 테이블명</th>
                          <th>인스턴스 수</th>
                          <th>최초 수집시간</th>
                          <th>최종 수집시간</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1</td>
                          <td>DB_TO_DB</td>
                          <td>Postgresql</td>
                          <td>TB_AA</td>
                          <td>LX_연계1</td>
                          <td>문화재정보</td>
                          <td>1</td>
                          <td>2019. 6. 18 오후 1:07:39</td>
                          <td>2019. 6. 18 오후 1:07:39</td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>API</td>
                          <td>OPEN_API</td>
                          <td>M_CHA_1</td>
                          <td>문화재</td>
                          <td>박물관정보</td>
                          <td>1</td>
                          <td>2019. 6. 18 오후 1:07:39</td>
                          <td>2019. 6. 18 오후 1:07:39</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="x_panel"> 
                <div class="x_title"> 
                  <h2>검색 형태2</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <form class="form-horizontal form-label-left d-flex align-items-center mb-4 row">
                    <div class="col-12 col-md-10">
                      <div class="form-group row">
                        <label class="control-label">검색</label>
                        <div class="form-control_box">
                          <div class="col-md-3 pl-0">
                            <select class="form-control">
                              <option>Choose option</option>

                              <option>Option two</option>
                              <option>Option three</option>
                              <option>Option four</option>
                            </select>
                          </div>
                          <div class="col-md-9 pr-0">
                            <input class="form-control" type="text" placeholder="">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-12 col-md-2 btn_search_box">
                      <button class="btn btn-primary"> <i class="glyphicon glyphicon-search"></i></button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="x_panel"> 
                <div class="x_title"> 
                  <h2>코드그룹 상세</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <form class="form-horizontal form-label-left d-flex align-items-center mb-4 row">
                    <div class="col-12 col-md-10">
                      <div class="form-group row">
                        <label class="control-label">검색</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text" placeholder="">
                        </div>
                      </div>
                    </div>
                    <div class="col-12 col-md-2 btn_search_box">
                      <button class="btn btn-primary">검색</button>
                      <button class="btn btn-success">추가</button>
                    </div>
                  </form>
                  <div class="table_responsive">
                    <div class="talbel_total">총 1개</div>
                    <table class="table table-striped">
                      <colgroup> </colgroup>
                      <thead>
                        <tr> 
                          <th>코드그룹ID</th>
                          <th>코드 그룹명</th>
                          <th>사용여부</th>
                          <th>코드그룹 설명</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>I01</td>
                          <td>사용여부</td>
                          <td>사용</td>
                          <td> </td>
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
          <div class="row">
            <div class="col-md-12">
              <div class="x_panel"> 
                <div class="x_title"> 
                  <h2>검색 형태3</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
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
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">데이터 모델 명</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
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
        <footer> 
          <div class="full-right"></div>Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          <div class="clearfix"></div>
        </footer>
      </div>
    </div>

    <%@include file="A1.Common/commonJs.jsp" %>

  </body>
</html>