<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 테이블 형태~~1</title>
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
                  <h2>Instance 매칭정보 설정</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content">
                              <div class="cont_title_box">
                                <h3>Instance 매칭정보 설정</h3>
                              </div>
                              <div class="row">
                                <div class="right_btns col-12 col-md-12 mt-2 mb-2">
                                  <button class="btn btn-primary" onclick="instanceConfigApiSet();">API 테이터 설정</button>
                                </div>
                              </div>
                              <div class="row">
                                <div class="table_responsive">
                                  <table class="table table-striped" id="table1">
                                    <thead>
                                    <tr>
                                      <th colspan="2">데이터 모델</th>
                                      <th colspan="2">Source</th>
                                      <th colspan="3">전처리</th>
                                    </tr>
                                    <tr>
                                      <th>속성ID</th>
                                      <th>속성값</th>
                                      <th>ID</th>
                                      <th>수신경로</th>
                                      <th>속성</th>
                                      <th>속성유형</th>
                                      <th>예시</th>
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
                </div>
              </div>
            </div>
          </div>
      </div>

    <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
      <script type="text/javascript" src="../js/adaptor/instanceMatchInfoPopup.js"></script>
      <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>

  </body>
</html>