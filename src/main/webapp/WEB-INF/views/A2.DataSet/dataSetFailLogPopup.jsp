<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 실패건수 팝업</title>
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
                              <h2 style="text-align: right">실패건수 팝업</h2>
                              <button class="btn btn-primary" style="width: 50px;float:right" onclick="window.close();">X</button>
                              <div class="clearfix"> </div>
                          </div>
                          <div class="x_content">
                              <div class="row">
                                  <div class="form-group row col-12 col-md-6">
                                      <label class="control-label" style="margin-top: 7px">데이터 셋 명</label>
                                      <div class="form-control_box duplicate_box">
                                          <input class="form-control" id="searchText" type="text">
                                      </div>
                                  </div>
                                  <div class="form-group row col-12 col-md-6">
                                      <label class="control-label" style="margin-top: 7px">실패건수</label>
                                      <div class="form-control_box duplicate_box">
                                          <input class="form-control" id="failLogCnt" type="text">
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

                          <div class="x_content">
                              <div class="table_responsive">
                                  <button class="btn btn-primary" style="width:10%;float:right;min-width: 60px;" onclick="dataSetPopupSearch();">검색</button>
                                  <table class="table table-striped" id="dataSetPopupData" style="text-align: center">
                                      <colgroup>
                                          <col width="20%">
                                          <col width="20%">
                                          <col width="20%">
                                          <col width="20%">
                                      </colgroup>
                                      <thead>
                                      <tr>
                                          <th>문화재명</th>
                                          <th>문화재순번</th>
                                          <th>고유번호</th>
                                          <th>주소</th>
                                          <th>체크/재적재</th>
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

    <%@include file="../A1.Common/commonJs.jsp" %>
    <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>
    <script>
        $(document).ready(initTable);

        function initTable () {

            let data = {
                "user_id" : "ksy",
                "menu_id": "",
                "search": ""
            }

            ajaxPost('/dp/ingest/popup/dataset01', data, function (data) {
                console.log(data);
                let obj = data.contents;
                let trHTML = '';
                $("#dataSetPopupData tbody").empty();

                for (let i = 0; i < obj.length; i++) {
                    trHTML += '<tr class="">'
                        + '<td onclick="dataSetData(`'+ obj[i].dset_idntfc_id +'`,`'+ obj[i].dset_korean_nm +'`)">' + obj[i].dset_korean_nm + '</td>'
                        + '<td onclick="dataSetData(`'+ obj[i].dset_idntfc_id +'`,`'+ obj[i].dset_korean_nm +'`)">' + obj[i].table_korean_nm + '</td>'
                        + '<td onclick="dataSetData(`'+ obj[i].dset_idntfc_id +'`,`'+ obj[i].dset_korean_nm +'`)">' + obj[i].table_eng_nm + '</td>'
                        + '</tr>';
                }
                $("#dataSetPopupData tbody").append(trHTML);
            });
        }

        //검색
        function dataSetPopupSearch() {
            const data = {
                "search": $("#searchText").val()
            };

            ajaxPost('/dp/ingest/popup/dataset01', data, function (data) {
                console.log(data);
                let obj = data.contents;
                let trHTML = '';
                $("#dataSetPopupData tbody").empty();

                for (let i = 0; i < obj.length; i++) {
                    trHTML += '<tr class="">'
                        + '<td onclick="dataSetData(`'+ obj[i].dset_idntfc_id +'`,`'+ obj[i].dset_korean_nm +'`)">' + obj[i].dset_korean_nm + '</td>'
                        + '<td onclick="dataSetData(`'+ obj[i].dset_idntfc_id +'`,`'+ obj[i].dset_korean_nm +'`)">' + obj[i].table_korean_nm + '</td>'
                        + '<td onclick="dataSetData(`'+ obj[i].dset_idntfc_id +'`,`'+ obj[i].dset_korean_nm +'`)">' + obj[i].table_eng_nm + '</td>'
                        + '</tr>';
                }
                $("#dataSetPopupData tbody").append(trHTML);
            });
        }

        //선택값 전달
        function dataSetData(destIdntfcId,tableKoreanNm){
            $(opener.document).find("#dset_idntfc_id").val(destIdntfcId);
            $(opener.document).find("#dset_idntfc_nm").val(tableKoreanNm);
        }


    </script>


  </body>
</html>