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
                              <h2 style="text-align: right">데이터 셋 선택</h2>
                              <button class="btn btn-primary" style="width: 50px;float:right" onclick="window.close();">X</button>
                              <div class="clearfix"> </div>
                          </div>
                          <div class="x_content">
                              <div class="row">
                                  <div class="form-group row col-12 col-md-12">
                                      <table class="table">
                                          <colgroup>
                                              <col width="25%">
                                              <col width="25%">
                                              <col width="25%">
                                              <col width="25%">
                                          </colgroup>
                                          <tr>
                                              <td>
                                                  코드그룹 ID
                                              </td>
                                              <td>
                                                  <input class="form-control" type="text" id="">
                                              </td>
                                              <td>
                                                  코드그룹 명
                                              </td>
                                              <td>
                                                  <input class="form-control" type="text" id="">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  사용여부
                                              </td>
                                              <td>
                                                  <input class="form-control" type="text" id="">
                                              </td>
                                              <td>
                                                 코드그룹 설명
                                              </td>
                                              <td>
                                                  <input class="form-control" type="text" id="">
                                              </td>
                                          </tr>
                                      </table>
                                  </div>
                              </div>
                              <div class="right_btns">
                                  <button class="btn btn-primary " type="button" onclick="update();">수정</button>
                                  <button class="btn btn-primary " type="button" onclick="save();">저장</button>
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