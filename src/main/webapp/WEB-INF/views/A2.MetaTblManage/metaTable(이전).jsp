<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 테이블 형태~~1</title>
    <%@include file="../A1.Common/commonCss.jsp" %>
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
            <div class="col-md-3">
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
                          <th>대분류</th>
                          <th>
                              <select name="">
                                  <option>C_NAME_01</option>
                              </select>
                          </th>
                      </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>중분류</td>
                          <td>
                            <select name="">
                              <option>C_NAME_01</option>
                            </select>
                          </td>
                        </tr>
                        <tr>
                            <td>소분류</td>
                            <td>
                                <select name="">
                                    <option>C_NAME_01</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>검색</td>
                            <td>
                                <input type="text" value="String" disabled>
                            </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
                <div class="">
                    <h2>JSON Data</h2>
                    <div id="treeview12" class="treeview"><ul class="list-group"><li class="list-group-item node-treeview12" data-nodeid="0" style="color:undefined;background-color:undefined;"><span class="icon expand-icon glyphicon glyphicon-minus"></span><span class="icon node-icon"></span>Parent 1</li><li class="list-group-item node-treeview12" data-nodeid="1" style="color:undefined;background-color:undefined;"><span class="indent"></span><span class="icon expand-icon glyphicon glyphicon-plus"></span><span class="icon node-icon"></span>Child 1</li><li class="list-group-item node-treeview12" data-nodeid="4" style="color:undefined;background-color:undefined;"><span class="indent"></span><span class="icon glyphicon"></span><span class="icon node-icon"></span>Child 2</li><li class="list-group-item node-treeview12" data-nodeid="5" style="color:undefined;background-color:undefined;"><span class="icon glyphicon"></span><span class="icon node-icon"></span>Parent 2</li><li class="list-group-item node-treeview12" data-nodeid="6" style="color:undefined;background-color:undefined;"><span class="icon glyphicon"></span><span class="icon node-icon"></span>Parent 3</li><li class="list-group-item node-treeview12" data-nodeid="7" style="color:undefined;background-color:undefined;"><span class="icon glyphicon"></span><span class="icon node-icon"></span>Parent 4</li><li class="list-group-item node-treeview12" data-nodeid="8" style="color:undefined;background-color:undefined;"><span class="icon glyphicon"></span><span class="icon node-icon"></span>Parent 5</li></ul></div>
                </div>

            </div>

              <br>


              <div class="col-md-9">
                  <div class="x_panel">
                      <div class="x_title">
                          <h2>기본 테이블</h2>
                          <div class="clearfix"> </div>
                      </div>
                      <div class="x_content">
                          <div class="table_responsive" style="white-space: nowrap;overflow: auto;">
                              <table class="table table-striped" style="width:350px;display: inline-block;vertical-align: top">

                                  <thead>
                                  <tr>
                                      <th>
                                          데이터셋 항목
                                      </th>
                                      <th style="text-align: right">
                                          <button class="btn btn-primary">저장</button>
                                      </th>
                                  </tr>

                                  <tr>
                                      <th>항목</th>
                                      <th>값</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                  <tr>
                                      <td>데이터셋 ID</td>
                                      <td>2019. 6. 18 오후 1:07:39</td>
                                  </tr>
                                  <tr>
                                      <td>2</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>데이터셋 한글명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>데이터셋 소유자</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>데이터셋 대분류</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>데이터셋 중분류</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>데이터셋 소분류</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>수집 방식</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>수집 유형</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>데이터셋 설명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>주 식별자</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>슈퍼타입 엔터티명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>엔티티정의서 항목명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>CRUD 구분</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>CRUD 설명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>사용여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>수집테이블 생성여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  </tbody>
                              </table>
                             <%--2번 테이블--%>
                              <table class="table table-striped" style="width:350px;display: inline-block;vertical-align: top">
                                  <thead>
                                  <tr>
                                      <th>
                                          테이블 항목
                                      </th>
                                      <th style="text-align: right">
                                          <button class="btn btn-primary">저장</button>
                                      </th>
                                  </tr>
                                  <tr>
                                      <th>항목</th>
                                      <th>값</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                  <tr>
                                      <td>물리 DB명</td>
                                      <td>2019. 6. 18 오후 1:07:39</td>
                                  </tr>
                                  <tr>
                                      <td>테이블 소유자</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>테이블 영문명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>테이블 한글명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>테이블 유형</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>관련 엔터티 식별자</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>테이블 설명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>업무 분류체계</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>보존기간</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>테이블 볼륨</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>발생주기</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>공개 여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>테이블정의서 항목명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>CRUD 구분</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>CRUD 설명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>사용여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>수집테이블 생성여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  </tbody>
                              </table>
                              <%--3번 테이블--%>
                              <table class="table table-striped" style="width:350px;display: inline-block;">
                                  <thead>
                                  <tr>
                                      <th>
                                       컬럼 항목
                                      </th>
                                      <th style="text-align: right">
                                          <button class="btn btn-primary">저장</button>
                                      </th>
                                  </tr>
                                  <tr>
                                      <th>항목</th>
                                      <th>값</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                  <tr>
                                      <td>참조테이블 식별자</td>
                                      <td>2019. 6. 18 오후 1:07:39</td>
                                  </tr>
                                  <tr>
                                      <td>참조컬럼 식별자</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>데이터셋 종류</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>컬럼 영문명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>컬럼 한글명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>컬럼 설명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>데이터 타입</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>데이터 길이</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>데이터 포멧</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>Not null 여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>PK 정보</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>FK 정보</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>AK 정보</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>참조 테이블명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>참조 컬럼명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>제약 조건</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>개인정보 여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>암호화 여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>공개 여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>컬럼 저장타입</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>컬럼정의 항목명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>CRUD 구분</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>CRUD 설명</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>사용여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  <tr>
                                      <td>수집테이블 생성여부</td>
                                      <td><input type="text" value=""></td>
                                  </tr>
                                  </tbody>
                              </table>
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

    <%@include file="../A1.Common/commonJs.jsp" %>
    <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>
  </body>
</html>