<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 테이블 형태~~1</title>
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
              <div class="profile_pic"><img class="img-circle profile_img" src="/img/img.jpg" alt="..."></div>
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
                  <h2>기본 테이블</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> 
                  <div class="table_responsive">
                    <div class="talbel_total">총 1개</div>
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
                  <h2>드롭다운</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> 
                  <div class="table_responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr> 
                          <th colspan="2">데이터 모델</th>
                          <th>Source</th>
                          <th colspan="3">전처리</th>
                        </tr>
                        <tr> 
                          <th>속성ID</th>
                          <th>속성값</th>
                          <th>ID</th>
                          <th>속성</th>
                          <th>속성유형</th>
                          <th>예시</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>C_NAME_01</td>
                          <td>String</td>
                          <td> 
                            <select name=""> 
                              <option>C_NAME_01</option>
                            </select>
                          </td>
                          <td> 
                            <select name=""> 
                              <option>주민등록번호</option>
                            </select>
                          </td>
                          <td> 
                            <input type="text" value="String" disabled>
                          </td>
                          <td> 
                            <input type="text" value="123456-1******" disabled>
                          </td>
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
                  <h2>인풋 테이블</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> 
                  <div class="table_responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr> 
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
                          <td> 
                            <select id="select" name="select"> 
                              <option value="DB_TO_DB">DB_TO_DB</option>
                              <option value="API">API</option>
                            </select>
                          </td>
                          <td> 
                            <input type="text" value="Postgresql">
                          </td>
                          <td> 
                            <input type="text" value="TB_AA">
                          </td>
                          <td> 
                            <input type="text" value="LX_연계1">
                          </td>
                          <td> 
                            <input type="text" value="문화재정보">
                          </td>
                          <td>1</td>
                          <td>2019. 6. 18 오후 1:07:39</td>
                          <td>2019. 6. 18 오후 1:07:39</td>
                        </tr>
                        <tr>
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
                  <h2>추가 삭제 테이블</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> 
                  <div class="table_btns">
                    <button class="btn btn-primary btn_add">+ 추가</button>
                    <button class="btn btn-danger btn_remove">- 삭제</button>
                  </div>
                  <div class="table_responsive">
                    <table class="table table-striped table-bordered bulk_action" style="width:100%">
                      <colgroup>
                        <col width="44px">
                      </colgroup>
                      <thead>
                        <tr>
                          <th>
                            <input class="flat" id="check-all" type="checkbox">
                          </th>
                          <th>항목ID(key)</th>
                          <th>항목명</th>
                          <th>항목값(value)</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th>
                            <input class="flat" type="checkbox" name="table_records">
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
                        </tr>
                        <tr>
                          <th>
                            <input class="flat" type="checkbox" name="table_records">
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
                        </tr>
                        <tr>
                          <th>
                            <input class="flat" type="checkbox" name="table_records">
                          </th>
                          <td> 
                            <input type="text" value="DB_TO_DB3" disabled>
                          </td>
                          <td> 
                            <input type="text" value="DB_TO_DB" disabled>
                          </td>
                          <td> 
                            <input type="text" value="DB_TO_DB" disabled>
                          </td>
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
                  <h2>드롭다운</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> 
                  <div class="table_responsive">
                    <table class="table table-striped table-bordered bulk_action" style="width:100%">
                      <colgroup>
                        <col width="44px">
                        <col width="55px">
                        <col span="2">
                        <col width="200px">
                      </colgroup>
                      <thead>
                        <tr>
                          <th> </th>
                          <th>순번</th>
                          <th>수집유형</th>
                          <th>수집방식</th>
                          <th>사용 여부</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th>
                            <input class="flat" type="checkbox" name="table_records">
                          </th>
                          <td>1</td>
                          <td> 
                            <select name=""> 
                              <option>DB_TO_DB</option>
                            </select>
                          </td>
                          <td> 
                            <select name=""> 
                              <option>Postqresql</option>
                            </select>
                          </td>
                          <td> 
                            <select name=""> 
                              <option>사용</option>
                            </select>
                          </td>
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
                  <h2>버튼</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> 
                  <div class="table_responsive">
                    <table class="table table-striped" style="width:100%">
                      <colgroup> 
                        <col width="55px">
                        <col span="4">
                        <col width="80px">
                        <col width="50px">
                      </colgroup>
                      <thead>
                        <tr>
                          <th>번호</th>
                          <th>팝업이름</th>
                          <th>등록일</th>
                          <th>시작일</th>
                          <th>종료일</th>
                          <th>상태</th>
                          <th>관리</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1</td>
                          <td>lxlxlxlxlxlxlxlx</td>
                          <td>2011.04.25</td>
                          <td>2011.04.25</td>
                          <td>2011.04.25</td>
                          <td>
                            <div class="badge badge-success">진행중</div>
                          </td>
                          <td>
                            <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-cog"></i></button>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <div class="d-flex justify-content-center align-items-center mt-2">
                    <button class="btn btn-primary">등록      </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- modal -->
        <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body"><a class="btn btn-primary" href="/modal">모달 바로가기 </a></div>
              <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                <button class="btn btn-primary" type="button">Save changes</button>
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