<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>LX DT | ID 설정</title>
  <%@include file="/WEB-INF/views/A1.Common/commonCss.jsp" %>
</head>
<body class="">
<div class="container body">
  <div class="main_container">
    <div class="right_col" role="main">

      <div class="row">
        <div class="col-md-12">
          <div class="x_panel">
            <div class="x_title">
              <h2>ID 설정</h2>
              <button class="btn btn-primary" style="float: right">X</button>
              <div class="clearfix"> </div>
            </div>
            <div class="x_content">
              <form class="form-horizontal form-label-left d-flex align-items-center row">

                <div class="col-12 col-md-12 btn_search_box">
                  <button class="btn btn-primary">적용</button>
                </div>
                <div class="col-12 col-md-12">
                  <div class="table_responsive">
                    <table>
                      <colgroup>
                        <col width="500px">
                        <col width="50px">
                        <col width="500px">
                      </colgroup>
                      <tr>
                        <th>
                          <table class="table table-striped">
                            <colgroup>
                            </colgroup>
                            <thead>
                            <tr>
                              <th colspan="4">선택 ID</th>
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
                              <th>데이터 모델명</th>
                              <th>데이터 셋 명</th>
                              <th>수집방식</th>
                              <th>수집유형</th>
                            </tr>
                            <tr>
                              <th>데이터 모델명</th>
                              <th>데이터 셋 명</th>
                              <th>수집방식</th>
                              <th>수집유형</th>
                            </tr>
                            <tr>
                              <th>데이터 모델명</th>
                              <th>데이터 셋 명</th>
                              <th>수집방식</th>
                              <th>수집유형</th>
                            </tr>
                            </tbody>
                          </table>
                        </th>
                        <th style="vertical-align: bottom">
                          <div><button class="btn btn-primary btn_add" style="float:right">▶</button></div>
                          <div><button class="btn btn-primary btn_add" style="float:right">◀</button></div>
                        </th>
                        <th>
                          <table class="table table-striped">
                            <colgroup>
                              <col width="100px">
                              <col width="100px">
                              <col width="100px">
                              <col width="100px">
                              <col width="130px">
                            </colgroup>
                            <thead>
                            <tr>
                              <th colspan="4">ID 목록</th>
                            </tr>
                            <tr>

                              <th>ID명(영문)</th>
                              <th>ID명(국문)</th>
                              <th>Type</th>
                              <th>Length</th>
                              <th>정렬</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                              <th>데이터 모델명</th>
                              <th>데이터 셋 명</th>
                              <th>수집방식</th>
                              <th>수집유형</th>
                              <th>
                                <button class="btn btn-primary btn_add" style="float:right">▼</button>
                                <button class="btn btn-primary btn_add" style="float:right">▲</button>
                              </th>
                            </tr>
                            </tbody>
                          </table>
                        </th>
                      </tr>

                    </table>
                  </div>
                </div>



              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="x_panel">
            <div class="x_content">
              <div class="form-group row mb-4">
                <label class="control-label">설정 ID</label>
                <div class="form-control_box">
                  <div class="col-md-9 pr-0">
                    <input class="form-control" type="text" placeholder="">
                  </div>
                  &nbsp;
                  <button class="btn btn-primary btn_add">초기화</button>
                </div>
              </div>
            </div>
            <button class="btn btn-primary btn_add" style="float:right">선택</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
  <script>

  </script>

</body>
</html>