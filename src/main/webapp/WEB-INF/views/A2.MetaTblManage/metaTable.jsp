<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 테이블 형태</title>
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
                  <div class="col-md-12">
                      <div class="x_panel">
                          <div class="x_title">
                              <h2>검색 형태2</h2>
                              <div class="clearfix"> </div>
                          </div>
                          <div class="x_content">
                              <table class="table">
                                  <colgroup>
                                      <col width="50px">
                                      <col width="150px">
                                      <col width="150px">
                                      <col width="150px">
                                      <col width="150px">
                                      <col width="200px">
                                      <col width="50px">
                                  </colgroup>
                                  <tr>
                                      <th style="vertical-align: middle">
                                         검색
                                      </th>
                                      <th>
                                          <select class="form-control" id="LargeCategory">
                                              <option>대분류</option>
                                              <option>A1</option>
                                              <option>A2</option>
                                              <option>A3</option>
                                          </select>
                                      </th>
                                      <th>
                                          <select class="form-control" id="MiddleCategory">
                                              <option>중분류</option>
                                              <option>B1</option>
                                              <option>B2</option>
                                              <option>B3</option>
                                          </select>
                                      </th>
                                      <th>
                                          <select class="form-control" id="SmallCategory">
                                              <option>소분류</option>
                                              <option>C1</option>
                                              <option>C2</option>
                                              <option>C3</option>
                                          </select>
                                      </th>
                                      <th>
                                          <select class="form-control" id="SelectCategory">
                                              <option>선택</option>
                                              <option>Option one</option>
                                          </select>
                                      </th>
                                      <th>
                                          <input class="form-control" type="text" placeholder="" id="SelectText">
                                      </th>
                                      <th>
                                          <button class="btn btn-primary" style="float:right" onclick="searchTbl(1)">검색</button>
                                      </th>
                                  </tr>

                              </table>
                          </div>
                      </div>
                  </div>
              </div>


              <div class="row">
                  <div class="col-md-12">
                      <div class="x_panel">
                          <div class="x_title">
                              <h2>테이블 정보</h2>
                              <div class="clearfix"> </div>
                          </div>
                          <div class="x_content">
                              <div class="table_responsive">
                                  <div class="talbel_total" id="metaTableCnt">총 1개</div>
                                  <button class="btn btn-primary" style="width:10%;float:right" onclick="metaTableDel()">삭제</button>
                                  <button class="btn btn-primary" style="width:10%;float:right" onclick="metaTableAdd()">추가</button>
                                  <button class="btn btn-primary" style="width:10%;float:right" onclick="metaTableEdit()">테이블수정</button>
                                  <table class="table table-striped" id="metaTable1">
                                      <colgroup>
                                          <col width="55px">
                                          <col width="75px">
                                          <col width="75px">
                                          <col width="75px">
                                      </colgroup>
                                      <thead>
                                          <tr>
                                              <th rowspan="2">선택</th>
                                              <th rowspan="2">대분류</th>
                                              <th rowspan="2">중분류</th>
                                              <th rowspan="2">소분류</th>
                                              <th rowspan="2">수집방식</th>

                                              <th rowspan="2">수집유형</th>
                                              <th rowspan="2">데이터셋 한글명</th>
                                              <th colspan="2">테이블</th>
                                              <th rowspan="2">수집테이블생성여부</th>
                                              <th rowspan="2">컬럼정보</th>
                                          </tr>
                                          <tr>
                                              <th>한글명</th>
                                              <th>영문명</th>
                                          </tr>
                                      </thead>
                                      <tbody>

                                      </tbody>
                                  </table>
                                  <div class="nav justify-content-center">
                                      <ul class="pagination">
                                      <%--    <li class="page-item"> <a class="page-link" href="#">&lt; </a></li>
                                          <li class="page-item"> <a class="page-link" onclick="searchTbl(1)">1</a></li>
                                          <li class="page-item"> <a class="page-link" onclick="searchTbl(2)">2 </a></li>
                                          <li class="page-item"> <a class="page-link" href="#">&gt;           </a></li>--%>
                                      </ul>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>

              <div class="row" id="dataSetItem">
                  <div class="col-md-12">
                      <div class="x_panel">
                          <div class="x_title">
                              <h2>데이터셋 항목</h2>
                              <button class="btn btn-primary" style="float:right" id="dataSetItemSaveBtn" onclick="saveDataSetItem()">저장</button>
                              <button class="btn btn-primary" style="float:right" id="dataSetItemEditBtn" onclick="editDataSetItem()">수정</button>
                              <div class="clearfix"> </div>
                          </div>
                          <div class="x_content">
                              <div class="table_responsive">

                                  <table class="table table-striped" id="metaTable2">
                                      <input type="hidden" id="hidden_dset_idntfc_id" value="">
                                      <colgroup>
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                      </colgroup>
                                      <thead>
                                      <tr>
                                          <th>데이터셋 한글명</th>
                                          <th>
                                              <input class="form-control" type="text" placeholder="" id="dset_korean_nm1">
                                          </th>
                                          <th>수집방식</th>
                                          <th><select class="form-control" id="clct_mthd1">
                                              <option val="">Choose option</option>
                                              <option>Option one</option>
                                          </select></th>
                                          <th rowspan="3" style="vertical-align: middle;">데이터셋 설명</th>
                                          <th rowspan="3" style="vertical-align: middle;">
                                              <textarea style="width: 100%;height: 130px;" id="dset_dc1"></textarea>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              데이터셋 대분류
                                          </th>
                                          <th>
                                              <select class="form-control" id="dset_lclas1">
                                                  <option>A1</option>
                                                  <option>A2</option>
                                                  <option>A3</option>
                                                  <option value="AABBCC">AABBCC</option>
                                              </select>
                                          </th>
                                          <th>
                                              수집유형
                                          </th>
                                          <th>
                                              <select class="form-control" id="clct_ty1">
                                                  <option val="">Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              데이터셋 중분류
                                          </th>
                                          <th>
                                              <select class="form-control" id="dset_mclas1">
                                                  <option val="">Choose option</option>
                                                  <option>B1</option>
                                                  <option>B2</option>
                                                  <option>B3</option>
                                              </select>
                                          </th>
                                          <th>
                                              데이터셋 소유자
                                          </th>
                                          <th>
                                              <select class="form-control" id="dset_owner1">
                                                  <option value="S">시스템</option>
                                                  <option value="U">사용자</option>
                                              </select>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              데이터셋 소분류
                                          </th>
                                          <th>
                                              <select class="form-control" id="dset_sclas1">
                                                  <option val="">Choose option</option>
                                                  <option>C1</option>
                                                  <option>C2</option>
                                                  <option>C3</option>
                                              </select>
                                          </th>
                                          <th>
                                              CUD 구분
                                          </th>
                                          <th>
                                              <select class="form-control" id="crud_se1">
                                                  <option val="">Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th rowspan="2" style="vertical-align: middle">CUD 설명</th>
                                          <th rowspan="2" style="vertical-align: middle">
                                              <textarea style="width: 100%;height: 100px;" id="crud_dc1"></textarea>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              사용 여부
                                          </th>
                                          <th>
                                              <select class="form-control" id="use_at1">
                                                  <option value="Y">사용</option>
                                                  <option value="N">미사용</option>
                                              </select>
                                          </th>
                                          <th>
                                              수집 테이블 생성 여부
                                          </th>
                                          <th>
                                              <select class="form-control" id="creat_table_at1">
                                                  <option val="">Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                      </tbody>
                                  </table>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>

              <div class="row" id="tableItem">
                  <div class="col-md-12">
                      <div class="x_panel">
                          <div class="x_title">
                              <h2>테이블 항목</h2>
                              <button class="btn btn-primary" style="float:right" id="tableItemSaveBtn" onclick="saveTableItem()">저장</button>
                              <button class="btn btn-primary" style="float:right" id="tableItemEditBtn" onclick="editTableItem()">수정</button>
                              <div class="clearfix"></div>
                          </div>
                          <div class="x_content">
                              <div class="table_responsive">

                                  <table class="table table-striped" id="metaTable3">
                                      <input type="hidden" id="hidden_table_idntfc_id" value="">
                                      <colgroup>
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                      </colgroup>
                                      <thead>
                                      <tr>
                                          <th>테이블 한글명</th>
                                          <th colspan="3">
                                              <input class="form-control" type="text" placeholder="" id="table_korean_nm2">
                                          </th>
                                          <th rowspan="3" style="vertical-align: middle;">테이블 설명</th>
                                          <th rowspan="3" style="vertical-align: middle;">
                                          <th rowspan="3" style="vertical-align: middle;">
                                              <textarea style="width: 100%;height: 130px;" id="table_dc"></textarea>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              테이블 영문명
                                          </th>
                                          <th colspan="3">
                                              <input class="form-control" type="text" placeholder="" id="table_eng_nm2" style="display: inline-block;width: 80%">
                                              <button class="btn btn-primary" style="float:right" onclick="table_eng_nm_chk()">중복체크</button>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              데이터셋 셋종류
                                          </th>
                                          <th>
                                              <select class="form-control" id="table_dset_knd">
                                                  <option value="">Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th>
                                              소유자 ID
                                          </th>
                                          <th>
                                              <select class="form-control" id="table_owner">
                                                  <option value="">Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              테이블 유형
                                          </th>
                                          <th>
                                              <select class="form-control" id="physic_table_ty">
                                                  <option value="">Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th>
                                              CUD 구분
                                          </th>
                                          <th>
                                              <select class="form-control" id="crud_se2">
                                                  <option value="">Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th rowspan="2" style="vertical-align: middle">CUD 설명</th>
                                          <th rowspan="2" style="vertical-align: middle">
                                              <textarea style="width: 100%;height: 100px;" id="crud_dc2"></textarea>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              사용 여부
                                          </th>
                                          <th>
                                              <select class="form-control" id="use_at2">
                                                  <option value="Y">사용</option>
                                                  <option value="N">미사용</option>
                                              </select>
                                          </th>
                                          <th>
                                              수집 테이블 생성 여부
                                          </th>
                                          <th>
                                              <select class="form-control" id="creat_table_at2">
                                                  <option value="">Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                      </tr>
                                      </thead>
                                      <tbody>
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
    <script type="text/javascript" src="../js/metaTable/metaTable.js"></script>
    <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>




  </body>
</html>