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
                              <button class="btn btn-primary" style="width: 50px;float:right" onclick="window.close();">X</button>
                              <div class="clearfix"> </div>
                          </div>
                          <div class="x_content">
                              <div class="row">
                                  <div class="form-group row col-12 col-md-6">
                                      <label class="control-label" style="margin-top: 7px">테이블 한글 명</label>
                                      <div class="form-control_box duplicate_box">
                                          <input class="form-control" id="tableKoName" type="text">
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
                                  <div class="talbel_total" id="metaTblReferPopupCnt">총 1개</div>
                                  <button class="btn btn-primary" style="width:10%;float:right;min-width: 60px;" onclick="metaTblReferPopupSearch();">검색</button>
                                  <table class="table table-striped" id="metaTblReferPopupData" style="text-align: center">
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
                                  <%--<div class="nav justify-content-center">
                                      <ul class="pagination">
                                          <li class="page-item"> <a class="page-link" href="#">&lt; </a></li>
                                          <li class="page-item"> <a class="page-link" href="#">1   </a></li>
                                          <li class="page-item"> <a class="page-link" href="#">2 </a></li>
                                          <li class="page-item"> <a class="page-link" href="#">&gt;           </a></li>
                                      </ul>
                                  </div>--%>
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
                "table_korean_nm":"도로명주소_건물",
                "user_id":"user_id"
            }

            ajaxPost('/dp/ingest/popup/meta_table', data, function (data) {
                console.log(data);
                let obj = data.contents;
                let trHTML;

                $("#metaTblReferPopupCnt").html("총 "+obj.length+"개");

                for (let i = 0; i < obj.length; i++) {
                    trHTML += '<tr class="">'
                        + '<td onclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].dset_korean_nm + '</td>'
                        + '<td onclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].table_eng_nm + '</td>'
                        + '<td onclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].table_korean_nm + '</td>'
                        + '</tr>';
                }
                $("#metaTblReferPopupData tbody").append(trHTML);
            });
        }

        //검색
        function metaTblReferPopupSearch() {
            if(!$("#tableKoName").val()){
                alert("검색 테이블명을 작성하세요.");
                return;
            }

            const data = {
                "user_id":"~~id",
                "table_korean_nm": $("#tableKoName").val()
            };

            ajaxPost('/dp/ingest/meta/tables', data, function (data) {
                console.log(data);
                let obj = data.contents;
                let trHTML;

                $("#metaTblReferPopupCnt").html("총 "+obj.length+"개");

                for (let i = 0; i < obj.length; i++) {
                    trHTML += '<tr class="">'
                        + '<td ondblclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].dset_korean_nm + '</td>'
                        + '<td ondblclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].table_eng_nm + '</td>'
                        + '<td ondblclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].table_korean_nm + '</td>'
                        + '</tr>';
                }
                $("#metaTblReferPopupData tbody").append(trHTML);
            });
        }

        //선택값 전달
        function metaTblReferSetData(tableIdntfcId,tableKoreanNm){
            $(opener.document).find("#refrn_table_idntfc_id").val(tableIdntfcId);
            $(opener.document).find("#refrn_table_idntfc_nm").val(tableKoreanNm);

            let data = {
                "user_id":"~~id",
                "table_idntfc_id" : tableIdntfcId
            }
            ajaxPost('/dp/ingest/meta/tables/column', data, function (data) {
                console.log('/dp/ingest/meta/tables/column', data);

                let obj = data.contents;
                $(opener.document).find("#refrn_column_idntfc_id")
                $(opener.document).find("#refrn_column_idntfc_id").empty();
                let selectHtml = "";
                for(let i=0; i < obj.length; i++){
                    selectHtml += `<option value="`+obj[i].column_idntfc_id+`">`+obj[i].column_korean_nm+`</option>`;
                }
                $(opener.document).find("#refrn_column_idntfc_id").append(selectHtml);
            });

        }


    </script>


  </body>
</html>