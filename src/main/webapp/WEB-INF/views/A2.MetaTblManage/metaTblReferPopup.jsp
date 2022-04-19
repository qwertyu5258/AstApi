<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 테이블 형태</title>
    <%@include file="../A1.Common/commonCss.jsp" %>
  </head>
  <body class="">
    <div class="container body">
      <div class="main_container">
          <div class="right_col" role="main">
              <div class="row">
                  <div class="col-md-12">
                      <div class="x_panel">
                          <div class="x_title">
                              <h2 style="text-align: right">참조 테이블 검색</h2>
                              <button class="btn btn-primary" style="width: 50px;float:right" onclick="">X</button>
                              <div class="clearfix"> </div>
                          </div>
                          <div class="x_content">
                              <div class="row">
                                  <div class="form-group row col-12 col-md-6">
                                      <label class="control-label" style="margin-top: 7px">테이블 한글 명</label>
                                      <div class="form-control_box duplicate_box">
                                          <input class="form-control" id="tableKoName" type="text" disabled="disabled">
                                      </div>
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
                              <h2>컬럼 정보</h2>
                              <div class="clearfix"> </div>
                          </div>
                          <div class="x_content">
                              <div class="table_responsive">
                                  <div class="talbel_total" id="metaTableInfoCnt">총 1개</div>
                                  <button class="btn btn-primary" style="width:10%;float:right;min-width: 60px;" onclick="">검색</button>
                                  <table class="table table-striped" id="metaTableInfo1" style="text-align: center">
                                      <colgroup>
                                         <%-- <col width="55px">
                                          <col width="">
                                          <col width="">
                                          <col width="">--%>
                                      </colgroup>
                                      <thead>
                                          <tr>
                                              <th rowspan="2" style="vertical-align: middle">데이터셋한글</th>
                                              <th colspan="2">테이블명</th>
                                          </tr>
                                      <tr>
                                          <th>영문</th>
                                          <th>국문</th>
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
      </div>
    </div>

    <%@include file="../A1.Common/commonJs.jsp" %>
    <script src="js/metaTableInfo.js"></script>
    <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>


  </body>
</html>