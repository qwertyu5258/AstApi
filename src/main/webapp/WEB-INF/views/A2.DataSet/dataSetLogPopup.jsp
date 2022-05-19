<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>LX DT | 데이터셋 이력보기 팝업</title>
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
              <h2>이력 보기</h2>
              <button class="btn btn-primary" style="float: right">X</button>
              <div class="clearfix"> </div>
            </div>
            <div class="x_content">
              <form class="form-horizontal form-label-left d-flex align-items-center row">
                <div class="col-12 col-md-12">
                  <div class="table_responsive">
                          <table class="table table-striped" id="table1">
                            <colgroup>
                            </colgroup>
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
                            </tbody>
                          </table>
                  </div>
                </div>
              </form>
            </div>
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