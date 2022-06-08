<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>LX DT | 테이블 컬럼 변경</title>
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
              <h2>테이블 컬럼 변경</h2>
              <button class="btn btn-primary" style="float: right">X</button>
              <div class="clearfix"> </div>
            </div>
            <div class="x_content">
              <div class="row">
                <div class="col-md-12">
                  <div class="x_panel">
                    <div class="x_content">
                      <table  class="table">
                        <colgroup>
                          <col width="100px">
                          <col width="200px">
                          <col width="100px">
                          <col width="200px">
                        </colgroup>
                        <tr>
                          <td>테이블 한글명</td>
                          <td> <input class="form-control" type="text" id="" readonly></td>
                          <td>테이블 영문명</td>
                          <td> <input class="form-control" type="text" id="" readonly></td>
                        </tr>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <form class="form-horizontal form-label-left d-flex align-items-center row">


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
                          <table class="table table-striped" id="table1">
                            <colgroup>
                            </colgroup>
                            <thead>
                            <tr>
                              <th colspan="4">컬럼 정보</th>
                              <div class="right_btns">
                                <button class="btn btn-primary" type="button" onclick="">테이블 수정</button>
                                <button class="btn btn-primary" type="button" onclick="">테이블 추가</button>
                              </div>
                            </tr>
                            <tr>
                              <th>상태</th>
                              <th>한글명</th>
                              <th>영문명</th>
                              <th>데이터 타입</th>
                              <th>데이터 길이</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                          </table>
                        </th>
                        <th style="vertical-align: bottom">
                        </th>
                        <th>
                          <div class="right_btns">
                            <button class="btn btn-primary">저장</button>
                          </div>
                          <table class="table table-striped">
                            <colgroup>
                              <col width="100px">
                              <col width="200px">
                              <col width="100px">
                              <col width="200px">
                              <col width="130px">
                            </colgroup>
                            <thead>
                            <tr>
                              <th colspan="4">컬럼 항목</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                              <th>한글명</th>
                              <th>
                                <input class="form-control" type="text" id="">
                              </th>
                              <th>영문명</th>
                              <th>
                                <input class="form-control" type="text" id="">
                              </th>
                            </tr>
                            <tr>
                              <th>데이터타입</th>
                              <th>
                                <select class="form-control" id="">
                                  <option value="">선 택</option>
                                </select>
                              </th>
                              <th>데이터길이</th>
                              <th>
                                <input class="form-control" type="text" id="">
                              </th>
                            </tr>
                            <tr>
                              <th>Not null 여부</th>
                              <th>
                                <select class="form-control" id="">
                                  <option value="">예</option>
                                  <option value="">아니요</option>
                                </select>
                              </th>
                              <th>데이터셋 종류</th>
                              <th>
                                <select class="form-control" id="adapterSearchType">
                                  <option value="">선 택</option>
                                </select>
                              </th>
                            </tr>
                            <tr>
                              <th>PK 정보</th>
                              <th>
                                <select class="form-control" id="">
                                  <option value="">예</option>
                                  <option value="">아니요</option>
                                </select>
                              </th>
                              <th>FK 정보</th>
                              <th>
                                <select class="form-control" id="">
                                  <option value="">예</option>
                                  <option value="">아니요</option>
                                </select>
                              </th>
                            </tr>
                            <tr>
                              <th>참조 테이블 식별자</th>
                              <th>
                                <select class="form-control" id="">
                                  <option value="">선 택</option>
                                </select>
                              </th>
                              <th>참조 테이블 명</th>
                              <th>
                                <input class="form-control" type="text" id="">
                              </th>
                            </tr>
                            <tr>
                              <th>개인정보 여부</th>
                              <th>
                                <select class="form-control" id="">
                                  <option value="">예</option>
                                  <option value="">아니요</option>
                                </select>
                              </th>
                              <th>암호화 여부</th>
                              <th>
                                <select class="form-control" id="">
                                  <option value="">예</option>
                                  <option value="">아니요</option>
                                </select>
                              </th>
                            </tr>
                            <tr>
                              <th>컬럼저장 타입</th>
                              <th>
                                <select class="form-control" id="">
                                  <option value="">선 택</option>
                                </select>
                              </th>
                              <th>정렬순서</th>
                              <th>
                                <input class="form-control" type="text" id="">
                              </th>
                            </tr>
                            <tr>
                              <th>사용여부</th>
                              <th>
                                <select class="form-control" id="">
                                  <option value="">선 택</option>
                                </select>
                              </th>
                              <th>CRUD 구분</th>
                              <th>
                                <input class="form-control" type="text" id="">
                              </th>
                            </tr>
                            <tr>
                              <th>컬럼 설명</th>
                              <th>
                                <textarea class="w-100"></textarea>
                              </th>
                              <th>CRUD 설명</th>
                              <th>
                                <textarea class="w-100"></textarea>
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
    </div>
  </div>

  <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
  <script type="text/javascript" src="../js/collectErr/tableColChangePopup.js"></script>
  <script>

  </script>

</body>
</html>