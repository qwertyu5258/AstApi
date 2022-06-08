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
                              <h2 style="text-align: right" id="adaptorConfigPopupTitle">Adaptor 등록</h2>
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
                              <div class="row">
                                  <button class="btn btn-sm btn-primary col-md" id="adaptorConfigPopupAdd" onclick="popupAdd();">저장</button>
                                  <button class="btn btn-sm btn-primary col-md" id="adaptorConfigPopupEdit" onclick="popupEdit();">수정</button>
                                  <button class="btn btn-sm btn-primary col-md" id="adaptorConfigPopupDel" onclick="popupDel();">삭제</button>
                              </div>
                              <div class="row">
                                  <div class="form-group row col-12 col-md-6">
                                      <label class="control-label">Adaptor 명</label>
                                      <div class="form-control_box duplicate_box">
                                          <input class="form-control" type="text" id="adapterNm">
                                      </div>
                                  </div>
                                  <div class="form-group row col-12 col-md-6">
                                      <label class="control-label">Adaptor 유형</label>
                                      <div class="form-control_box duplicate_box" id="adapterType">
                                          <select class="form-control" id="adapterTypeId">
                                              <option value="">선 택</option>

                                          </select>
                                      </div>
                                  </div>
                                  <div class="form-group row col-12 col-md-6">
                                      <label class="control-label">사용 여부</label>
                                      <div class="form-control_box">
                                          <div class="radio radio_inline">
                                              <label>
                                                  <input type="radio" name="use" value="Y" checked/> 사용
                                                  <%--<div class="iradio_flat-purple" style="position: relative;">
                                                      <input class="flat" type="radio" checked="" name="use" style="position: absolute; opacity: 0;">
                                                      <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                                                  </div>사용--%>
                                              </label>
                                          </div>
                                          <div class="radio radio_inline">
                                              <label>
                                                  <input type="radio" name="use" value="N" /> 사용안함
                                                  <%--<div class="iradio_flat-purple" style="position: relative;">
                                                      <input class="flat" type="radio" name="use" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                                                  </div>사용안함--%>
                                              </label>
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

    <%@include file="../A1.Common/commonJs.jsp" %>
    <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>
    <script>
        let url = new URL(window.location.href);
        let viewStatus = url.searchParams.get('view');
        let adapterId = url.searchParams.get('adapterId');

        adapterTypeSearch();
        function adapterTypeSearch() {
            $("#adapterType").empty();

            ajaxGet('/dp/ingest/adapter/type', "", function (data) {
                console.log(data);
                let obj = data.contents;
                let trHTML = `<select class="form-control" id="adapterTypeId">`;
                trHTML += `<option value="">선택</option>`;

                for (let i = 0; i < obj.length; i++) {
                    trHTML += `<option value="`+obj[i].adapter_type_id+`">`+obj[i].adapter_type_nm+`</option>`;
                }
                $("#adapterType").append(trHTML);

                initPopup();
            });
        }

        function initPopup() {
            if(viewStatus === "edit"){
                $("#adaptorConfigPopupTitle").html("Adaptor 수정");
                $("#adaptorConfigPopupAdd").hide();
                $("#adaptorConfigPopupDel").show();
                $("#adaptorConfigPopupEdit").show();

                let data = {
                    "user_id" : "ksy",
                    "menu_id" : "",
                    "adapter_id" : adapterId
                };
                ajaxPost('/dp/ingest/adapter/detail', data, function (data) {
                    console.log(data);
                    let obj = data.contents;

                    $("#adapterNm").val(data.contents[0].adapter_nm);
                    $("#adapterTypeId").val(data.contents[0].adapter_type_id).prop("selected","selected");
                    $("input:checkbox[name='use']:checkbox[value='"+data.contents[0].use_yn+"']").prop('checked', true);
                });

            }else if(viewStatus === "add"){
                $("#adaptorConfigPopupTitle").html("Adaptor 등록");
                $("#adaptorConfigPopupAdd").show();
                $("#adaptorConfigPopupDel").hide();
                $("#adaptorConfigPopupEdit").hide();

                $("#adapterNm").val("");
                $("#adapterTypeId").val("").prop("selected","selected");
                $("input:checkbox[name='use']:checkbox[value='']").prop('checked', true);
            }
        }

        //저장 버튼
        function popupAdd() {
            let id_chk = "";
            if(!$("#adapterNm").val()){
                alert("Adapter 명을 작성하세요.");
                return;
            }
            if($("#adapterTypeId").val() === ""){
                alert("Adapter 유형을 선택하세요.");
                return;
            }

            $.ajax({
                type: 'get',
                url: '/dp/ingest/adapter/id/check',
                contentType:"application/json;charset=UTF-8",
                //data: param,
                success: function(data, textStatus, xhr) {
                    id_chk = data.contents[0].adapter_id;

                    const saveData = {
                        // "adapter_id": id_chk,                                   //Adapter_ID
                        "user_id" : "~~id",
                        "adapter_nm": $("#adapterNm").val(),                    //Adapter_명
                        "adapter_type_id": $("#adapterTypeId").val(),           //Adapter유형_ID
                        "use_yn": $("input:radio[name='use']:checked").val(),    //사용 여부
                        "menu_id" : ""
                    };

                    ajaxPost('/dp/ingest/adapter/save', saveData, function (data) {
                        if(data.contents[0].successYn == 'Y') {
                            alert('저장 완료');
                        } else {
                            alert('미저장');
                        }
                        console.log('완료~dp_ingest_adapter_save',data);
                        // location.href="adaptorConfig";
                        window.close();
                    });
                },
                error: function(data, status, error) {
                    alert('ajax Error: ' + data + url);
                }
            });
        }

        //수정 버튼
        function popupEdit() {
            if(!$("#adapterNm").val()){
                alert("Adapter 명을 작성하세요.");
                return;
            }
            if(!$("#adapterTypeId").val()){
                alert("Adapter 유형을 선택하세요.");
                return;
            }
            let data = {
                "user_id" : "ksy",
                "menu_id" : "",
                "adapter_id" : adapterId,                              //Adapter_ID
                "adapter_nm" : $("#adapterNm").val(),                  //Adapter_명
                "adapter_type_id" : $("#adapterTypeId").val(),         //Adapter유형_ID
                "use_yn" : $("input:radio[name='use']:checked").val()  //사용 여부
            }

            ajaxPost('/dp/ingest/adapter/update', data, function (data) {
                console.log('완료~dp_ingest_adapter_update',data);
                location.href="adaptorConfig";
                window.close();
            });
        }

        //삭제 버튼
        function popupDel() {
            $.ajax({
                type: 'post',
                url: '/dp/ingest/adapter/delete/check/'+adapterId,
                contentType:"application/json;charset=UTF-8",
                //data: JSON.stringify(param),
                success: function(data, textStatus, xhr) {
                    if(data.contents[0].chk_yn === "Y"){
                        console.log('완료~adapter 사용중',data);
                        alert('Adapter 사용중이라 삭제가 불가능합니다.');
                    }else{
                        $.ajax({
                            type: 'post',
                            url: '/dp/ingest/adapter/delete/'+adapterId,
                            contentType:"application/json;charset=UTF-8",
                            //data: JSON.stringify(param),
                            success: function(data, textStatus, xhr) {
                                console.log('완료~dp_ingest_adapter_del',data);
                                location.href="adaptorConfig";
                                window.close();
                            },
                            error: function(data, status, error) {
                                // console.log('ajax Error: ' + url);
                                alert('ajax Error ' + data );
                            }
                        });
                    }
                },
                error: function(data, status, error) {
                    alert('ajax Error ' + data);
                }
            });
        }

    </script>


  </body>
</html>