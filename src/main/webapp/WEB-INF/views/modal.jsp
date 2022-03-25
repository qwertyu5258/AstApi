<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 모달 형태</title>
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
                  <h2>모달 형태</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> 
                  <button class="btn btn-primary" type="button" data-toggle="modal" data-target=".datasearch_modal"> <i class="glyphicon glyphicon-search"></i></button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".code_modal">코드 등록 및 상세</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".history_modal">이력보기</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".idSetting_modal">ID 설정</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".instance_modal">Instance 매칭정보 변경</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".search_modal">데이터 모델 검색</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".setting_modal">융복합대상 설정</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".metaInfo_modal">메타정보 변경</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- datasearch_modal -->
        <div class="modal fade datasearch_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">메타 테이블 검색</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content"> 
                  <div class="d-flex"> 
                    <input class="form-control mr-1" type="text">
                    <button class="btn btn-primary"> <i class="glyphicon glyphicon-search"></i></button>
                  </div>
                  <div class="table_responsive table-modal-height">
                    <table class="table table-striped">
                      <colgroup> </colgroup>
                      <thead>
                        <tr> 
                          <th colspan="2">메타 테이블명</th>
                          <th>데이터셋 메타정보</th>
                        </tr>
                        <tr> 
                          <th>영문</th>
                          <th>국문</th>
                          <th>사용유무    </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>TB_NAME_01</td>
                          <td>지역문화재</td>
                          <td>사용</td>
                        </tr>
                        <tr>
                          <td>TB_NAME_02</td>
                          <td>지역문화재</td>
                          <td>미사용</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- code_modal -->
        <div class="modal fade code_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">코드 상세</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <form class="form-horizontal form-label-left">
                  <div class="row">
                    <div class="form-group row col-12 col-md-6">
                      <label class="control-label">코드그룹 ID</label>
                      <div class="form-control_box">
                        <input class="form-control" type="text">
                      </div>
                    </div>
                    <div class="form-group row col-12 col-md-6">
                      <label class="control-label">코드그룹 명</label>
                      <div class="form-control_box">
                        <input class="form-control" type="text">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group row col-12 col-md-6">
                      <label class="control-label">사용여부</label>
                      <div class="form-control_box">
                        <select class="form-control">
                          <option>사용</option>
                          <option>미사용</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group row col-12 col-md-6">
                      <label class="control-label">코드그룹 설명</label>
                      <div class="form-control_box">
                        <input class="form-control" type="text">
                      </div>
                    </div>
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button class="btn btn-primary" type="button">수정</button>
                <button class="btn btn-danger" type="button">삭제</button>
                <button class="btn btn-primary" type="button">저장</button>
              </div>
            </div>
          </div>
        </div>
        <!-- history_modal -->
        <div class="modal fade history_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">이력보기</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content"> 
                  <div class="table_responsive">
                    <table class="table table-striped">
                      <colgroup> </colgroup>
                      <thead>
                        <tr> 
                          <th>적재일</th>
                          <th>수집 건수</th>
                          <th>적재 건수</th>
                          <th>실패 건수</th>
                          <th>다운로드</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>2019.6.19</td>
                          <td>100</td>
                          <td>99</td>
                          <td>1</td>
                          <td class="td_btn"><a class="btn btn-primary btn-sm" href="" download>다운로드</a> </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- idSetting_modal -->
        <div class="modal fade idSetting_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">ID 설정</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="main-container">
                  <ul class="columns">
                    <li class="column to-do-column">
                      <div class="column-header">
                        <h4>데이터모델</h4>
                      </div>
                      <ul class="task-list" id="drakeLeft">
                        <li class="task">
                          <p>C_NAME_03(Double)</p>
                        </li>
                        <li class="task">
                          <p>C_NAME_05(Date)</p>
                        </li>
                      </ul>
                    </li>
                    <li class="column doing-column">
                      <div class="column-header">
                        <h4>ID순서</h4>
                      </div>
                      <ul class="task-list" id="drakeRight">
                        <li class="task">
                          <p>C_NAME_02(Integer)</p>
                        </li>
                        <li class="task">
                          <p>C_NAME_01(String)</p>
                        </li>
                        <li class="task">
                          <p>C_NAME_04(Integer)</p>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </div>
                <div class="drake_result_box">
                  <div class="drake_title">ID</div>
                  <div class="drake_result">C_NAME_02.C_NAME_01.C_NAME_04</div>
                  <button class="btn btn-danger m-0">초기화</button>
                </div>
              </div>
              <div class="modal-footer"> 
                <button class="btn btn-primary" type="button">저장</button>
              </div>
            </div>
          </div>
        </div>
        <!-- instance_modal -->
        <div class="modal fade instance_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Instance 매칭정보 변경</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content"> 
                  <div class="table_responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr> 
                          <th colspan="2">데이터 모델</th>
                          <th>Source</th>
                          <th colspan="2">전처리</th>
                        </tr>
                        <tr> 
                          <th>속성ID</th>
                          <th>속성값</th>
                          <th>ID</th>
                          <th>속성</th>
                          <th>예시</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>C_NAME_01</td>
                          <td>String</td>
                          <td> 
                            <select id="nameID" name="" disabled> 
                              <option value="C_NAME_01">C_NAME_01 </option>
                              <option value="C_NAME_02">C_NAME_02 </option>
                            </select>
                          </td>
                          <td> 
                            <select id="nameID" name="" disabled> 
                              <option value="">주민등록번호</option>
                              <option value="">해당없음 </option>
                            </select>
                          </td>
                          <td> 
                            <input type="text" disabled value="123456-1******">
                          </td>
                        </tr>
                        <tr>
                          <td>C_NAME_01</td>
                          <td>String</td>
                          <td> 
                            <select id="nameID" name=""> 
                              <option value="C_NAME_01">C_NAME_01 </option>
                              <option value="C_NAME_02">C_NAME_02 </option>
                            </select>
                          </td>
                          <td> 
                            <select id="nameID" name=""> 
                              <option value="">해당없음 </option>
                              <option value="">주민등록번호</option>
                            </select>
                          </td>
                          <td> 
                            <input type="text" value="">
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="modal-footer"> 
                <button class="btn btn-primary" type="button">저장</button>
              </div>
            </div>
          </div>
        </div>
        <!-- search_modal -->
        <div class="modal fade search_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">데이터 모델 검색</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content"> 
                  <select class="form-control mb-2" name=""> 
                    <option value="">수집방식  </option>
                  </select>
                  <select class="form-control mb-2" name=""> 
                    <option value="">수집유형  </option>
                  </select>
                  <input class="form-control mb-4" type="text" placeholder="데이터 모델 명">
                  <div class="table_responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr> 
                          <th>수집방식</th>
                          <th>수집유형</th>
                          <th>데이터 모델 명</th>
                          <th>사용 유무</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>DB_TO_DB</td>
                          <td>Postgresql</td>
                          <td>문화재 모델</td>
                          <td>사용</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- setting_modal -->
        <div class="modal fade setting_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">융복합대상 설정</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content"> 
                  <div class="form-group row col-12 mx-0 px-0">
                    <div class="control-label">데이터 셋 ID</div>
                    <div class="form-control_box">
                      <input class="form-control mr-1" type="text" disabled value="DataSet02, DataSet03, DataSet04">
                    </div>
                  </div>
                  <div class="border_box mb-4">
                    <div class="form-control_box">데이터 셋 명    </div>
                  </div>
                  <div class="right_btns mb-2"> 
                    <button class="btn btn-sm btn-danger">초기화</button>
                    <button class="btn btn-sm btn-success">추가</button>
                    <button class="btn btn-sm btn-primary">적용</button>
                  </div>
                  <div class="table_responsive table-modal-height">
                    <table class="table table-striped">
                      <colgroup> </colgroup>
                      <thead>
                        <tr> 
                          <th colspan="2">메타 테이블명</th>
                          <th>데이터셋 메타정보</th>
                        </tr>
                        <tr> 
                          <th>영문</th>
                          <th>국문</th>
                          <th>사용유무    </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>TB_NAME_01</td>
                          <td>지역문화재</td>
                          <td>사용</td>
                        </tr>
                        <tr>
                          <td>TB_NAME_02</td>
                          <td>지역문화재</td>
                          <td>미사용</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- metaInfo_modal -->
        <div class="modal fade metaInfo_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">메타정보 변경</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content"> 
                  <div class="row"> 
                    <div class="col-4 col-md-4"> 
                      <div class="cont_title_box">
                        <h5 class="title_h">대상 목록</h5>
                      </div>
                      <div class="list_box"> 
                        <ul class="list_add">
                          <li>
                            <button>c_name01</button>
                            <button class="btn btn-sm btn-success btn_add">추가</button>
                          </li>
                          <li>
                            <button>c_name01</button>
                            <button class="btn btn-sm btn-success btn_add">추가</button>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="col-4 col-md-4"> 
                      <div class="cont_title_box">
                        <h5 class="title_h">테이블 정보</h5>
                        <div class="right_btns">
                          <button class="btn btn-sm btn-primary">저장</button>
                        </div>
                      </div>
                      <div class="list_box"> 
                        <ul>
                          <li>
                            <button>컬럼1(c_name01)</button>
                          </li>
                          <li>
                            <button>컬럼1(c_name02)</button>
                          </li>
                          <li>
                            <button>컬럼1(c_name03)</button>
                          </li>
                          <li>
                            <button>컬럼1(c_name04)</button>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="col-4 col-md-4"> 
                      <div class="cont_title_box">
                        <h5 class="title_h">컬럼 항목</h5>
                      </div>
                      <div class="table_responsive">
                        <table class="table table-striped table-bordered">
                          <colgroup> </colgroup>
                          <thead>
                            <tr> 
                              <th>항목</th>
                              <th>값</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>컬럼 영문 명</td>
                              <td>
                                <input type="text">
                              </td>
                            </tr>
                            <tr>
                              <td>컬럼 한글 명</td>
                              <td>
                                <input type="text">
                              </td>
                            </tr>
                            <tr>
                              <td>컬럼 설명</td>
                              <td>
                                <input type="text">
                              </td>
                            </tr>
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
        <footer> 
          <div class="full-right"></div>Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          <div class="clearfix"></div>
        </footer>
      </div>
    </div>

    <%@include file="A1.Common/commonJs.jsp" %>

  </body>
</html>