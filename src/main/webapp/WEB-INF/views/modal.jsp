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
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".idSetting2_modal">ID 설정2</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".instance_modal">Instance 매칭정보 변경</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".search_modal">데이터 모델 검색</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".setting_modal">융복합대상 설정</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".metaInfo_modal">메타정보 변경</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".dataset_modal">데이터 셋 선택</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".column_modal">컬럼보기</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".receive_modal">기본 수신 경로 설정</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".change_modal">데이터 모델 변경</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".license_modal">라이선스 정책</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".codegroup_modal">코드그룹 등록</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".codedetail_modal">코드그룹 상세</button>
                  <button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target=".codereg_modal">코드 등록</button>
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
                        <tr>
                          <td>2019.6.19</td>
                          <td>100</td>
                          <td>99</td>
                          <td>1</td>
                          <td class="td_btn"><a class="btn btn-primary btn-sm" href="" download>다운로드</a> </td>
                        </tr>
                        <tr>
                          <td>2019.6.19</td>
                          <td>100</td>
                          <td>99</td>
                          <td>1</td>
                          <td class="td_btn"><a class="btn btn-primary btn-sm" href="" download>다운로드</a> </td>
                        </tr>
                        <tr>
                          <td>2019.6.19</td>
                          <td>100</td>
                          <td>99</td>
                          <td>1</td>
                          <td class="td_btn"><a class="btn btn-primary btn-sm" href="" download>다운로드</a> </td>
                        </tr> <tr>
                          <td>2019.6.19</td>
                          <td>100</td>
                          <td>99</td>
                          <td>1</td>
                          <td class="td_btn"><a class="btn btn-primary btn-sm" href="" download>다운로드</a> </td>
                        </tr>
                      </tbody>
                    </table>
                    <div class="nav justify-content-center">
                      <ul class="pagination">
                        <li class="page-item"> <a class="page-link" href="#">&lt; </a></li>
                        <li class="page-item"> <a class="page-link" href="#">1   </a></li>
                        <li class="page-item"> <a class="page-link" href="#">2 </a></li>
                        <li class="page-item"> <a class="page-link" href="#">&gt; </a></li>
                      </ul>
                    </div>
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
        <!-- idSetting2_modal -->
        <div class="modal fade idSetting2_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel2">ID 설정</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="right_btns mb-2">
                  <button class="btn btn-sm btn-primary">검색</button>
                </div>
                <div class="main-container">
                        <div class="table_responsive table-modal-height">
                          <table class="table type02 table-bordered">
                              <colgroup>
                              </colgroup>
                              <thead>
                              <tr>
                                  <th colspan="4" class="tec">ID목록</th>
                              </tr>
                              <tr>
                                  <th>ID명(영문)</th>
                                  <th>ID명(국문)</th>
                                  <th>Type</th>
                                  <th>Length</th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                  <td>C_NAME_03</td>
                                  <td>이름 03</td>
                                  <td>Double</td>
                                  <td></td>
                              </tr>
                              <tr>
                                  <td>C_NAME_03</td>
                                  <td>이름 03</td>
                                  <td>Double</td>
                                  <td></td>
                              </tr>
                              <tr>
                                  <td>C_NAME_03</td>
                                  <td>이름 03</td>
                                  <td>Double</td>
                                  <td></td>
                              </tr>
                              <tr>
                                  <td>C_NAME_03</td>
                                  <td>이름 03</td>
                                  <td>Double</td>
                                  <td></td>
                              </tr>
                              </tbody>
                          </table>
                      </div>
                      <div class="btns">
                        <button class="btn_right"></button>
                        <button class="btn_left"></button>
                      </div>
                      <div class="table_responsive table-modal-height">
                        <table class="table type02 table-bordered">
                          <colgroup>
                            <col width="60px"/>
                          </colgroup>
                            <thead>
                            <tr>
                                <th colspan="6" class="tec">선택 ID</th>
                            </tr>
                            <tr>
                                <th>순번</th>
                                <th>ID명(영문)</th>
                                <th>ID명(국문)</th>
                                <th>Type</th>
                                <th>Length</th>
                                <th>정렬</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>C_NAME_02</td>
                                <td>이름 02</td>
                                <td>Int</td>
                                <td>10</td>
                                <td><button class="btn_down"></button></td>
                            </tr>
                            <tr>
                              <td>1</td>
                              <td>C_NAME_02</td>
                              <td>이름 02</td>
                              <td>Int</td>
                              <td>10</td>
                              <td>
                                <button class="btn_up"></button>
                                <button class="btn_down"></button>
                              </td>
                            </tr>
                            <tr>
                              <td>1</td>
                              <td>C_NAME_02</td>
                              <td>이름 02</td>
                              <td>Int</td>
                              <td>10</td>
                              <td><button class="btn_up"></button></td>
                            </tr>
                            <tr>
                              <td>1</td>
                              <td>C_NAME_02</td>
                              <td>이름 02</td>
                              <td>Int</td>
                              <td>10</td>
                              <td><button class="btn_down"></button></td>
                            </tr>
                            <tr>
                              <td>1</td>
                              <td>C_NAME_02</td>
                              <td>이름 02</td>
                              <td>Int</td>
                              <td>10</td>
                              <td><button class="btn_down"></button></td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="drake_result_box">
                  <div class="drake_title">ID</div>
                  <div class="drake_result disabled">C_NAME_02.C_NAME_01.C_NAME_04</div>
                  <button class="btn btn-danger m-0">초기화</button>
                </div>
              </div>
              <div class="modal-footer">
                <button class="btn btn-primary" type="button">선택</button>
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

        <!-- 데이터 셋 선택 -->
        <div class="modal fade setting_modal" tabindex="-1" role="dialog" style="padding-right: 17px;" aria-modal="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">융복합대상 설정</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">×</span>
              </div>
              <div class="modal-body">
                <div class="x_content">
                  <div class="form-group row col-12 mx-0 px-0">
                    <div class="control-label">데이터 셋 ID</div>
                    <div class="form-control_box">
                      <input class="form-control mr-1" type="text" disabled="" value="DataSet02, DataSet03, DataSet04">
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
        <!-- dataset_modal -->
        <div class="modal fade dataset_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">데이터 셋 선택</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content">
                  <div class="form-control_box">
                    <input class="form-control mb-2 tec " type="text" value="데이터 셋 명">
                  </div>
                  <div class="right_btns mb-2">
                    <button class="btn btn-sm btn-primary">검색</button>
                  </div>
                  <div class="table_responsive table-modal-height">
                    <table class="table table-striped">
                      <colgroup> </colgroup>
                      <thead>
                        <tr>
                          <th>수집방식</th>
                          <th>수집유형</th>
                          <th>데이터 모델 명</th>
                          <th>데이터 셋 명</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>DB_TO_DB</td>
                          <td>Postgresql</td>
                          <td>문화재 모델</td>
                          <td>연계1</td>
                        </tr>
                        <tr>
                          <td>DB_TO_DB</td>
                          <td>Oracle</td>
                          <td>지역 모델</td>
                          <td>연계2</td>
                        </tr>
                        <tr>
                          <td>DB_TO_DB</td>
                          <td>Tibero</td>
                          <td>지자체 모델</td>
                          <td>연계3</td>
                        </tr>
                        <tr>
                          <td>DB_TO_DB</td>
                          <td>Mariadb</td>
                          <td>바람 모델</td>
                          <td>기상청 바람</td>
                        </tr>
                        <tr>
                          <td>API</td>
                          <td>Open API</td>
                          <td>박물관 모델</td>
                          <td>문화재</td>
                        </tr>
                        <tr>
                          <td>FILE</td>
                          <td>CVS</td>
                          <td>지방 모델</td>
                          <td>XML파일</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- column_modal -->
        <div class="modal fade column_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">컬럼보기</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content">
                  <div class="table_responsive table-modal-height">
                    <table class="table table-striped table-bordered">
                      <tbody>
                        <tr>
                          <th>테이블명</th>
                          <td>문화재</td>
                          <th>테이블id</th>
                          <td>td_name</td>
                        </tr>
                      </tbody>
                    </table>
                    <table class="table table-striped">
                      <colgroup> </colgroup>
                      <thead>
                      <tr>
                        <th>컬럼명</th>
                        <th>컬럼ID</th>
                        <th>컬럼타입</th>
                        <th>컬럼자리수</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <td>컬럼1</td>
                        <td>cn_name01</td>
                        <td>Varcher</td>
                        <td>256</td>
                      </tr>
                      <tr>
                        <td>컬럼2</td>
                        <td>cn_name02</td>
                        <td>Timesetamp</td>
                        <td>256</td>
                      </tr>
                      <tr>
                        <td>컬럼3</td>
                        <td>cn_name03</td>
                        <td>Numeric</td>
                        <td>5,2</td>
                      </tr>
                      <tr>
                        <td>컬럼4</td>
                        <td>cn_name04</td>
                        <td>Varcher</td>
                        <td>20</td>
                      </tr>
                      <tr>
                        <td>컬럼5</td>
                        <td>cn_name05</td>
                        <td>Varcher</td>
                        <td>300</td>
                      </tr>
                      <tr>
                        <td>컬럼6</td>
                        <td>cn_name06</td>
                        <td>Varcher</td>
                        <td>500</td>
                      </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- receive_modal -->
        <div class="modal fade receive_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">기본 수신 경로 설정</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content">
                  <div class="table_responsive table-modal-height">
                    <table class="table table-striped">
                      <colgroup>
                        <col width="44px">
                      </colgroup>
                      <thead>
                        <tr>
                          <th>
                            <div class="icheckbox_flat-purple" style="position: relative;"><div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" id="check-all" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                          </th>
                          <th>수신경로</th>
                          <th>항목명</th>
                          <th>샘플데이터</th>
                        </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                             <div class="icheckbox_flat-purple" style="position: relative;"><div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" id="check-all" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            </td>
                            <td>response</td>
                            <td>Header</td>
                            <td>0</td>
                          </tr>
                          <tr>
                            <td>
                              <div class="icheckbox_flat-purple" style="position: relative;"><div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" id="check-all" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            </td>
                            <td>response.items</td>
                            <td>Headercd</td>
                            <td>1</td>
                          </tr>
                          <tr>
                            <td>
                              <div class="icheckbox_flat-purple" style="position: relative;"><div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" id="check-all" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            </td>
                            <td>response.itmes.item</td>
                            <td>ctnDay</td>
                            <td>3</td>
                          </tr>
                          <tr>
                            <td>
                              <div class="icheckbox_flat-purple" style="position: relative;"><div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" id="check-all" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            </td>
                            <td>response.itmes.item</td>
                            <td>demoEndDay</td>
                            <td>3</td>
                          </tr>
                          <tr>
                            <td>
                              <div class="icheckbox_flat-purple" style="position: relative;"><div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" id="check-all" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            </td>
                            <td>response.itmes.item</td>
                            <td>demoExtngCaus</td>
                            <td>3</td>
                          </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button class="btn btn-primary" type="button">수정</button>
              </div>
            </div>
          </div>
        </div>
        <!-- change_modal -->
        <div class="modal fade change_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">데이터 모델 변경</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content">
                  <h5 class="mt-4 mb-2">데이터 모델 속성 정보</h5>
                  <div class="row">
                    <div class="metatable_box col-5">
                      <div class="form-group row">
                        <label class="control-label">테이블 명</label>
                        <div class="form-control_box duplicate_box">
                          <input class="form-control col-12" type="text">
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
                    </div>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button class="btn btn-primary" type="button">수정</button>
              </div>
            </div>
          </div>
        </div>
        <!-- license_modal -->
        <div class="modal fade license_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">라이선스 정책</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content">
                  <div class="table_responsive table-modal-height">
                    <table class="table type02 table-bordered">
                      <colgroup>
                        <col width="120px">
                        <col width="*">
                        <col width="120px">
                      </colgroup>
                      <tbody>
                        <tr>
                          <th>라이선스</th>
                          <th>이용조건</th>
                          <th>문자표기</th>
                        </tr>
                        <tr>
                          <td>이미지표기</td>
                          <td>
                            <strong>저작자표시</strong><br>
                            저작자의 이름, 저작물의 제목, 출처 등 저작자에 관한 표시를 해주어야 합니다.
                          </td>
                          <td>CC BY</td>
                        </tr>
                        <tr>
                          <td>이미지표기</td>
                          <td>
                            <strong>저작자표시-비영리</strong><br>
                            저작자를 밝히면 자유로운 이용이 가능하지만 영리목적으로 이용할 수 없습니다.
                          </td>
                          <td>CC BY-NC</td>
                        </tr>
                        <tr>
                          <td>이미지표기</td>
                          <td>
                            <strong>저작자표시-변경금지</strong><br>
                            저작자를 밝히면 자유로운 이용이 가능하지만, 변경 없이 그대로 이용해야 합니다.
                          </td>
                          <td>CC BY-ND</td>
                        </tr>
                        <tr>
                          <td>이미지표기</td>
                          <td>
                            <strong>저작자표시-동일조건변경허락</strong><br>
                            저작자를 밝히면 자유로운 이용이 가능하고 저작물의 변경도 가능하지만, 2차적 저작물에는 원 저작물에 적용된 것과 동일한 라이선스를 적용해야 합니다.
                          </td>
                          <td>CC BY-SA</td>
                        </tr>
                        <tr>
                          <td>이미지표기</td>
                          <td>
                            <strong>저작자표시-비영리-동일조건변경허락</strong><br>
                            저작자를 밝히면 자유로운 이용이 가능하며 저작물의 변경도 가능하지만, 영리목적으로 이용할 수 없고 2차적 저작물에는 원 저작물과 동일한 라이선스를 적용해야 합니다.
                          </td>
                          <td>CC BY-NC-SA</td>
                        </tr>
                        <tr>
                          <td>이미지표기</td>
                          <td>
                            <strong>저작자표시-비영리-변경금지</strong><br>
                            저작자를 밝히면 자유로운 이용이 가능하지만, 영리목적으로 이용할 수 없고 변경 없이 그대로 이용해야 합니다.
                          </td>
                          <td>CC BY-NC-ND</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- codegroup_modal -->
        <div class="modal fade codegroup_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">코드그룹 등록</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content">
                  <div class="table_responsive table-modal-height">
                    <table class="table type02 table-bordered">
                      <colgroup>
                        <col width="150px">
                        <col width="*">
                        <col width="150px">
                        <col width="*">
                      </colgroup>
                      <tbody>
                          <tr>
                            <th>코드그룹ID</th>
                            <td><input type="text" class="form-control" disabled="disabled" value="I01"></td>
                            <th>코드그룹ID</th>
                            <td><input type="text" class="form-control" disabled="disabled" value="사용여부"></td>
                          </tr>
                          <tr>
                            <th>사용여부</th>
                            <td>
                              <select class="form-control" disabled="disabled">
                                <option>선택</option>
                                <option>Option one</option>
                                <option>Option two</option>
                                <option>Option three</option>
                                <option>Option four</option>
                              </select>
                            </td>
                            <th>코드그룹 설명</th>
                            <td><input type="text" class="form-control" disabled="disabled"></td>
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
        <!-- codedetail_modal -->
        <div class="modal fade codedetail_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">코드그룹 등록</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content">
                  <div class="table_responsive table-modal-height">
                    <table class="table type02 table-bordered">
                    <colgroup>
                      <col width="150px">
                      <col width="*">
                      <col width="150px">
                      <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                      <th>코드그룹ID</th>
                      <td><input type="text" class="form-control" disabled="disabled" value="I01"></td>
                      <th>코드그룹 명</th>
                      <td><input type="text" class="form-control" disabled="disabled" value="사용여부"></td>
                    </tr>
                    <tr>
                      <th>사용여부</th>
                      <td>
                        <select class="form-control" disabled="disabled">
                          <option>선택</option>
                          <option>Option one</option>
                          <option>Option two</option>
                          <option>Option three</option>
                          <option>Option four</option>
                        </select>
                      </td>
                      <th>코드그룹 설명</th>
                      <td><input type="text" class="form-control" disabled="disabled"></td>
                    </tr>
                    </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button class="btn btn-primary" type="button">수정</button>
                <button class="btn btn-danger" type="button">삭제</button>
              </div>
            </div>
          </div>
        </div>
        <div class="modal fade codereg_modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">코드그룹 등록</h4>
                <button class="close" type="button" data-dismiss="modal"></button><span aria-hidden="true">&times;</span>
              </div>
              <div class="modal-body">
                <div class="x_content">
                  <div class="table_responsive table-modal-height">
                    <table class="table type02 table-bordered">
                    <colgroup>
                      <col width="150px">
                      <col width="*">
                      <col width="150px">
                      <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                      <th>코드그룹ID</th>
                      <td><input type="text" class="form-control" disabled="disabled" value="I01"></td>
                      <th>코드 ID</th>
                      <td><input type="text" class="form-control" disabled="disabled" value="I01001"></td>
                    </tr>
                    <tr>
                      <th>코드명</th>
                      <td><input type="text" class="form-control" disabled="disabled" value="사용"></td>
                      <th>정렬순서</th>
                      <td><input type="text" class="form-control" disabled="disabled" value="1"></td>
                    </tr>
                    <tr>
                      <th>사용여부</th>
                      <td>
                        <select class="form-control" disabled="disabled">
                          <option>선택</option>
                          <option>Option one</option>
                          <option>Option two</option>
                          <option>Option three</option>
                          <option>Option four</option>
                        </select>
                      </td>
                      <th>코드설명</th>
                      <td><input type="text" class="form-control" disabled="disabled"></td>
                    </tr>
                    </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button class="btn btn-primary" type="button">수정</button>
                <button class="btn btn-danger" type="button">삭제</button>
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
