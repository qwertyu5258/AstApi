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
              <h2>API 데이터 설정</h2>
              <button class="btn btn-primary" style="float: right">X</button>
              <div class="clearfix"> </div>
            </div>
            <div class="x_content">
              <form class="form-horizontal form-label-left d-flex align-items-center row">
                <div class="col-12 col-md-12">
                  <div class="table_responsive">
                          <table class="table table-striped">
                            <colgroup>
                            </colgroup>
                            <thead>
                            <tr>
                              <th>선택</th>
                              <th>수신경로</th>
                              <th>항목명</th>
                              <th>데이터</th>
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