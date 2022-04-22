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
                              <h2 style="text-align: right">API 데이터 설정</h2>
                              <button class="btn btn-primary" style="width: 50px;float:right" onclick="window.close();">X</button>
                              <div class="clearfix"> </div>
                          </div>
                      </div>
                  </div>
              </div>

              <div class="row">
                  <div class="col-md-12">
                      <div class="x_panel">

                          <div class="x_content">
                              <div class="table_responsive">
                                  <table class="table table-striped" id="apiDataSetPopup" style="text-align: center">
                                      <colgroup>
                                         <%-- <col width="55px">
                                          <col width="">
                                          <col width="">
                                          <col width="">--%>
                                      </colgroup>
                                      <thead>
                                          <tr>
                                              <th>선택</th>
                                              <th>수신경로</th>
                                              <th>항목명</th>
                                              <th>테이터</th>
                                          </tr>
                                      </thead>
                                      <tbody>
                                      </tbody>
                                  </table>
                                  <button class="btn btn-primary" style="width:10%;float:right;min-width: 60px;" onclick="dataSetPopupSearch();">선택</button>
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
        let url = new URL(window.location.href);
        let instanceId = url.searchParams.get('instanceId');
        $(document).ready(initTable);

        function initTable () {
            ajaxGet('/dp/ingest/popup/property_path/'+instanceId, "", function (data) {
                console.log(data);
                let obj = data.contents;
                let trHTML = '';
                $("#apiDataSetPopup tbody").empty();

                for (let i = 0; i < obj.length; i++) {
                    let ppPathData = obj[i].source_id +"@"+obj[i].source_path+"@"+obj[i].choice_yn;
                    trHTML += '<tr class="">'
                        + '<td><input class="tableInfo" type="checkbox" name="checkList" id="check'+i+'" value="'+ppPathData+'"></td>'
                        + '<td>' + obj[i].source_path + '</td>'
                        + '<td>' + obj[i].source_id + '</td>'
                        + '<td>' + obj[i].choice_yn + '</td>'
                        + '</tr>';
                }
                $("#apiDataSetPopup tbody").append(trHTML);
            });
        }

        function dataSetPopupSearch() {
            const checked_val = [];

            $("input:checkbox[name='checkList']:checked").each(function(k,kValue){
                checked_val.push(kValue.value);
            })

            setTimeout(() => {
                for(let i=0; i < checked_val.length; i++){
                    const data = {
                        "instance_id": instanceId,
                        "source_id": checked_val[i].split("@")[0],
                        "source_path": checked_val[i].split("@")[1],
                        "choice_yn": checked_val[i].split("@")[2],
                    };

                    $.ajax({
                        type: 'post',
                        url: '/dp/ingest/popup/property_path/save/'+instanceId,
                        contentType:"application/json;charset=UTF-8",
                        data: JSON.stringify(data),
                        success: function(data, textStatus, xhr) {
                            console.log('완료~dp_ingest_popup_pp_path_save',data);

                        },
                        error: function(data, status, error) {
                            alert('API: (dp_ingest_popup_pp_path_save) ajax Error ' + data);
                        }
                    });
                }
                //window.close();
                //location.href="instanceConfig?instanceId="+instanceId;
            },1000)
        }

    </script>


  </body>
</html>