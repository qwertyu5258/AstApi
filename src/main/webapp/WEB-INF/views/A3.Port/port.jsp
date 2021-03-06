<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 포트 관리</title>
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
              <div class="profile_pic"><img class="img-circle profile_img" src="img/img.jpg" alt="..."></div>
              <div class="profile_info"><span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div><br>

            <%@include file="../A1.Menu/menu.jsp" %>

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
                  <h2>포트 관리</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <div class="right_btns"> 
                    <div class="row port_search">
                      <div class="form-group row">
                        <div class="control-label">포트번호</div>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                      <select class="form-control" name=""> 
                        <option value="">포트상태 </option>
                        <option value="">전체 </option>
                        <option value="">사용중 </option>
                        <option value="">사용가능 </option>
                      </select>
                      <button class="btn btn-primary btn-sm">조회</button>
                    </div>
                  </div>
                  <div class="table_btns mt-4">
                    <button class="btn btn-primary row" type="button" data-toggle="modal" data-target=".addport_modal">포트 추가</button>
                    <button class="btn btn-danger btn_remove">- 삭제</button>
                  </div>
                  <div class="table_responsive">
                    <div class="talbel_total"><span class="red bold">7</span>건이 조회되었습니다.</div>
                    <table class="table table-striped bulk_action">
                      <colgroup> 
                        <col width="44px">
                      </colgroup>
                      <thead>
                        <tr> 
                          <th> 
                            <input class="flat" id="check-all" type="checkbox">
                          </th>
                          <th>포트번호</th>
                          <th>포트상태</th>
                          <th>생성자</th>
                          <th>등록일자</th>
                          <th>최종 변경 일자</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td> 
                            <input class="flat" type="checkbox" name="table_records">
                          </td>
                          <td>8080</td>
                          <td>사용중</td>
                          <td>Admin</td>
                          <td>2019. 6. 18</td>
                          <td>2019. 6. 18</td>
                        </tr>
                        <tr>
                          <td> 
                            <input class="flat" type="checkbox" name="table_records">
                          </td>
                          <td>8081</td>
                          <td>사용가능</td>
                          <td>Admin</td>
                          <td>2019. 6. 18</td>
                          <td>2019. 6. 18</td>
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
        <!-- addport_modal -->
        <div class="modal fade addport_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-md">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">포트 추가 팝업</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content"> 
                  <div class="right_btns mb-2"> 
                    <button class="btn btn-primary btn-sm">라인 추가</button>
                  </div>
                  <div class="table_responsive">
                    <table class="table table-striped">
                      <colgroup> 
                        <col>
                        <col width="100px">
                      </colgroup>
                      <thead>
                        <tr> 
                          <th>포트번호</th>
                          <th>제거</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            <input type="text">
                          </td>
                          <td class="td_btn row_remove">
                            <button class="btn btn-danger btn-sm">제거</button> 
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <input type="text">
                          </td>
                          <td class="td_btn row_remove">
                            <button class="btn btn-danger btn-sm">제거</button>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button class="btn btn-primary" type="button">등록</button>
                <button class="btn btn-danger" type="button">취소</button>
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

  </body>
</html>