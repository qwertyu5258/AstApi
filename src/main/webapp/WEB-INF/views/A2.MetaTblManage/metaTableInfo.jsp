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
                              <h2>컬럼 정보</h2>
                              <div class="clearfix"> </div>
                          </div>
                          <div class="x_content">
                              <div class="table_responsive">
                                  <div class="talbel_total">총 1개</div>
                                  <button class="btn btn-primary" style="width:10%;float:right">삭제</button>
                                  <button class="btn btn-primary" style="width:10%;float:right">추가</button>
                                  <button class="btn btn-primary" style="width:10%;float:right">목록</button>
                                  <table class="table table-striped" id="metaTable1">
                                      <colgroup>
                                          <col width="55px">
                                          <col width="75px">
                                          <col width="75px">
                                          <col width="75px">
                                      </colgroup>
                                      <thead>
                                          <tr>
                                              <th>선택</th>
                                              <th>한글명</th>
                                              <th>영문명</th>
                                              <th>데이터 타입</th>
                                              <th>데이터 길이</th>

                                              <th>Not null 여부</th>
                                              <th>데이터셋 종류</th>
                                              <th>PK 정보</th>
                                              <th>FK 정보</th>
                                              <th>개인정보여부</th>
                                              <th>암호화여부</th>
                                              <th>정렬순서</th>
                                          </tr>
                                      </thead>
                                      <tbody>
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
                              <h2>컬럼 항목</h2>
                              <button class="btn btn-primary" style="float:right" onclick="saveDataset()">저장~~1</button>
                              <div class="clearfix"> </div>
                          </div>
                          <div class="x_content">
                              <div class="table_responsive">

                                  <table class="table table-striped" id="metaTable2">
                                      <colgroup>
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                          <col width="150px">
                                      </colgroup>
                                      <thead>
                                      <tr>
                                          <th>한글명</th>
                                          <th colspan="3">
                                              <input class="form-control" type="text" placeholder="" id="dset_korean_nm1">
                                          </th>
                                          <th>참조 테이블 식별자</th>
                                          <th colspan="3"><select class="form-control" id="clct_mthd1">
                                              <option>Choose option</option>
                                              <option>Option one</option>
                                          </select></th>
                                      </tr>
                                      <tr>
                                          <th>
                                              영문명
                                          </th>
                                          <th colspan="3">
                                              <input class="form-control" type="text" placeholder="" id="">
                                          </th>
                                          <th>
                                              참조 테이블명
                                          </th>
                                          <th colspan="3">
                                              <input class="form-control" type="text" placeholder="" id="">
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              데이터 타입
                                          </th>
                                          <th>
                                              <select class="form-control" id="dset_mclas1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th>
                                              데이터 길이
                                          </th>
                                          <th>
                                              <select class="form-control" id="dset_owner1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th>
                                              참조컬럼 식별자
                                          </th>
                                          <th colspan="3">
                                              <select class="form-control" id="">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              Not null 여부
                                          </th>
                                          <th>
                                              <select class="form-control" id="dset_sclas1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th>
                                              데이터 셋 종류
                                          </th>
                                          <th>
                                              <select class="form-control" id="crud_se1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th style="vertical-align: middle">참조 컬럼명</th>
                                          <th colspan="3" style="vertical-align: middle">
                                              <input class="form-control" type="text" placeholder="" id="">
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              PK 정보
                                          </th>
                                          <th>
                                              <select class="form-control" id="use_at1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th>
                                              FK 정보
                                          </th>
                                          <th>
                                              <select class="form-control" id="creat_table_at1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th>
                                              수집테이블 생성여부
                                          </th>
                                          <th colspan="3">
                                              <input class="form-control" type="text" placeholder="" id="">
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              사용 여부
                                          </th>
                                          <th>
                                              <select class="form-control" id="use_at1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th>
                                              컬럼저장타입
                                          </th>
                                          <th>
                                              <select class="form-control" id="creat_table_at1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th rowspan="3">
                                              컬럼설명
                                          </th>
                                          <th rowspan="3">
                                              <textarea style="width: 100%;height: 130px;" id=""></textarea>
                                          </th>
                                          <th rowspan="3">
                                              CRUD 설명
                                          </th>
                                          <th rowspan="3">
                                              <textarea style="width: 100%;height: 130px;" id=""></textarea>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              정렬 순서
                                          </th>
                                          <th>
                                              <select class="form-control" id="use_at1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th>
                                              개인정보여부
                                          </th>
                                          <th>
                                              <select class="form-control" id="creat_table_at1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                      </tr>
                                      <tr>
                                          <th>
                                              암호화 여부
                                          </th>
                                          <th>
                                              <select class="form-control" id="use_at1">
                                                  <option>Choose option</option>
                                                  <option>Option one</option>
                                              </select>
                                          </th>
                                          <th>
                                              CRUD 구분
                                          </th>
                                          <th>
                                              <select class="form-control" id="creat_table_at1">
                                                  <option>Choose option</option>
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
    <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>
    <script>
        ajax('get', '/dp/ingest/meta/tables', '', function(data) {
            console.log(data);
            let obj = data.contents;
            let trHTML;

            /*for (let i = 0; i < obj.length; i++) {*/
            for (let i = 0; i < 2; i++) {
                trHTML += '<tr>' +
                    '<td><label>' + (i + 1) + '</label></td>'
                    + '<td><label>' + obj[i].dset_lclas + '</label></td>'
                    + '<td><label>' + obj[i].dset_mclas + '</label></td>'
                    + '<td><label>' + obj[i].dset_sclas + '</label></td>'
                    + '<td><label>' + obj[i].clct_mthd + '</label></td>'
                    + '<td><label>' + obj[i].clct_ty + '</label></td>'
                    + '<td><label>' + obj[i].dset_korean_nm + '</label></td>'
                    + '<td><label>' + obj[i].table_korean_nm + '</label></td>'
                    + '<td><label>' + obj[i].table_eng_nm + '</label></td>'
                    + '<td><label>'+ obj[i].column_korean_nm + '</label></td>'
                    + '<td><label>' + obj[i].creat_table_at + '</label></td>'
                    + '<td><button class="btn btn-primary" style="width:100%">바로가기</button></td>'
                    + '</tr>';


            }
            $("#metaTable1 tbody").append(trHTML);
        });

        function saveDataset() {
            let data = {
                    // "dset_owner":$('#dset_owner1').val(),
                    // "dset_lclas":$('#dset_lclas1').val(),
                    // "dset_mclas":$('#dset_mclas1').val(),
                    //     "dset_sclas":$('#dset_sclas1').val(),
                    // "clct_mthd":$('#clct_mthd1').val(),
                    // "clct_ty":$('#clct_ty1').val(),

                    "dset_owner":"S",
                    "dset_lclas":"D",
                    "dset_mclas":"200",
                    "dset_sclas":"1",
                    "clct_mthd":"DB2DB",
                    "clct_ty":"POSTGRESQL",

                    "logic_db_nm":$('#logic_db_nm1').val(),
                    "dset_korean_nm":$('#dset_korean_nm1').val(),

                    "dset_dc": null,
                    "idntfr":null,
                    "supe_type_entity_nm":null,
                    "entity_iem_nm":null,
                    "crud_se":null,
                    "crud_dc":null,
                    "use_at":null,
                    "creat_table_at":null
            }

            ajax('post', '/dp/ingest/meta/tables/save/dataset', data,function (data){
                alert('저장완료');
            })
        }
    </script>



  </body>
</html>