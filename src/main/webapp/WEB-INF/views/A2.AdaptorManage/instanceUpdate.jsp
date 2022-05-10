<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 인스턴스 수정</title>
    <%@include file="/WEB-INF/views/A1.Common/commonCss.jsp" %>
  </head>
  <style>
    input.flat {
      margin-left: 4.1px;
      margin-top: 4px;
    }
    table input {
     width: 13px;
      height: 12px;
    }
    table select {
     width: 70px;
    }
  </style>
  <body class="">
    <div class="container body"> 
      <div class="main_container">    
        <div class="right_col" role="main">
          <div class="row">
            <div class="col-md-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Instance 수정</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content">
                              <div class="cont_title_box">
                                <h3>Instance 수정</h3>
                                <div class="right_btns">
                                  <button class="btn btn-primary" onclick="instancePopupEdit();">수정</button>
                                  <button class="btn btn-primary" onclick="instancePopupDel();">삭제</button>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">인스턴스 명</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text" id="instance_nm">
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">데이터 셋 명</label>
                                  <div class="form-control_box">
                                    <div class="col-md-6">
                                      <input class="form-control" type="text" id="dset_idntfc_nm" disabled="disabled">
                                      <input type="hidden" id="dset_idntfc_id" val="">
                                      <button class="btn btn-primary" onclick="dataSetPopup();"> <i class="glyphicon glyphicon-search"></i></button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            <div class="row">
                              <div class="form-group row col-12 col-md-6">
                                <label class="control-label">수집방식</label>
                                <div class="form-control_box duplicate_box">
                                  <select class="form-control" id="clct_mthd">
                                    <option>선택</option>

                                    <option>Option two</option>
                                    <option>Option three</option>
                                    <option>Option four</option>
                                  </select>
                                  <%--<input class="form-control" type="text" value="DB_TO_DB" disabled="disabled">--%>
                                </div>
                              </div>
                              <div class="form-group row col-12 col-md-6">
                                <label class="control-label">수집유형</label>
                                <div class="form-control_box duplicate_box">
                                  <select class="form-control" id="clct_ty">
                                    <option>선택</option>

                                    <option>Option two</option>
                                    <option>Option three</option>
                                    <option>Option four</option>
                                  </select>
                                  <%--<input class="form-control" type="text" value="Postgresql" disabled="disabled">--%>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="form-group row col-12 col-md-6">
                                <label class="control-label">보관주기</label>
                                <div class="form-control_box">
                                  <div class="col-md-6">
                                    <input class="form-control" type="text" id="storage_cycle">
                                  </div>
                                  <div class="col-md-6">
                                    <select class="form-control" id="storage_type">
                                      <option>선택</option>

                                      <option>Option two</option>
                                      <option>Option three</option>
                                      <option>Option four</option>
                                    </select>
                                  </div>
                                </div>
                              </div>
                              <div class="form-group row col-12 col-md-6">
                                <label class="control-label">시계열 데이터</label>
                                <div class="form-control_box">
                                  <div class="radio radio_inline">
                                    <label class="">
                                      <div class="iradio_flat-purple checked" style="position: relative;">
                                        <input class="flat" type="radio" name="time_data_yn" value="Y" checked>
                                      </div>예
                                    </label>
                                  </div>
                                  <div class="radio radio_inline">
                                    <label>
                                      <div class="iradio_flat-purple" style="position: relative;">
                                        <input class="flat" type="radio" name="time_data_yn" value="N">
                                      </div>아니오
                                    </label>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="form-group row col-12 col-md-6">
                                <label class="control-label">수집 스케줄 유형</label>
                                <div class="form-control_box">
                                  <div class="radio radio_inline">
                                    <label class="">
                                      <div class="iradio_flat-purple checked" style="position: relative;">
                                        <input class="flat" type="radio" name="schedule_type" value="Y" checked>
                                      </div>반복
                                    </label>
                                  </div>
                                  <div class="radio radio_inline">
                                    <label>
                                      <div class="iradio_flat-purple" style="position: relative;">
                                        <input class="flat" type="radio" name="schedule_type" value="N">
                                      </div>미반복
                                    </label>
                                  </div>
                                </div>
                              </div>
                              <div class="form-group row col-12 col-md-6">
                                <div class="control-label">사용여부</div>
                                <div class="form-control_box">
                                  <div class="radio radio_inline">
                                    <label class="">
                                      <div class="iradio_flat-purple checked" style="position: relative;">
                                        <input class="flat" type="radio" name="useYn" value="Y" checked>
                                      </div>사용
                                    </label>
                                  </div>
                                  <div class="radio radio_inline">
                                    <label>
                                      <div class="iradio_flat-purple" style="position: relative;">
                                        <input class="flat" type="radio" name="useYn" value="N">
                                      </div>사용안함
                                    </label>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="row result_norepeat" >

                              <div class="row" style="width: 100%">
                                <div class="form-group row col-12 col-md-12">
                                  <label class="control-label">비고</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text" id="etc_note">
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
                                <div class="control-label">수집 스케줄 설정</div>
                                <div class="table_responsive">
                                  <table class="table table-striped table-bordered bulk_action" style="width:100%">
                                    <colgroup>
                                      <col width="50px">
                                      <col width="130px">
                                      <col width="140px">
                                      <col width="130px">
                                      <col width="130px">
                                      <col width="130px">
                                      <col width="170px">
                                    </colgroup>
                                    <tbody id="repactData">
                                    <tr>
                                      <th rowspan="5">
                                        반복
                                      </th>
                                      <th>
                                        <input class="" type="radio" name="schedule_time_type" value="year" checked>매년
                                      </th>
                                      <th>
                                        <select class="ml-2" name="month" id="yearMonth">
                                          <option value="">선택</option>
                                          <option value="1">1</option>
                                          <option value="2">2</option>
                                          <option value="3">3</option>
                                          <option value="4">4</option>
                                          <option value="5">5</option>
                                          <option value="6">6</option>
                                          <option value="7">7</option>
                                          <option value="8">8</option>
                                          <option value="9">9</option>
                                          <option value="10">10</option>
                                          <option value="11">11</option>
                                          <option value="12">12</option>
                                        </select>월
                                      </th>

                                      <th>
                                        <select class="ml-2" name="day" id="yearDay">

                                        </select>일
                                      </th>
                                      <th>
                                        <select class="ml-2" name="hour" id="yearHour">

                                        </select> 시
                                      </th>
                                      <th>
                                        <select class="ml-2" name="minute" id="yearMinute">

                                        </select>분
                                      </th>
                                      <th>
                                        <div class="icheckbox_flat-purple" style="position: relative;">
                                          <input class="flat" type="checkbox" style="position: absolute; opacity: 0;">
                                        </div>
                                        <button class="btn btn-xs btn-primary ml-4">즉시실행</button>
                                      </th>
                                    </tr>
                                    <th>
                                      <input class="" type="radio" name="schedule_time_type" value="month">매월
                                    </th>

                                    <th>
                                      <select class="ml-2" name="day" id="monthDay">

                                      </select>일
                                    </th>
                                    <th>
                                      <select class="ml-2" name="hour" id="monthHour">

                                      </select> 시
                                    </th>
                                    <th>
                                      <select class="ml-2" name="minute" id="monthMinute">

                                      </select>분
                                    </th>
                                    <th></th>
                                    <th>
                                      <div class="icheckbox_flat-purple" style="position: relative;">
                                        <input class="flat" type="checkbox" style="position: absolute; opacity: 0;">
                                      </div>
                                      <button class="btn btn-xs btn-primary ml-4">즉시실행</button>
                                    </th>
                                    </tr>
                                    <th>
                                      <input class="" type="radio" name="schedule_time_type" value="week">매주
                                    </th>
                                    <th>
                                      <select class="ml-2" name="week" id="weekWeek">
                                        <option value="">선택</option>
                                        <option value="월">월</option>
                                        <option value="화">화</option>
                                        <option value="수">수</option>
                                        <option value="목">목</option>
                                        <option value="금">금</option>
                                        <option value="토">토</option>
                                        <option value="일">일</option>
                                      </select>요일</th>

                                    <th>
                                      <select class="ml-2" name="hour" id="weekHour">

                                      </select> 시
                                    </th>
                                    <th>
                                      <select class="ml-2" name="minute" id="weekMinute">

                                      </select>분
                                    </th>
                                    <th></th>
                                    <th>
                                      <div class="icheckbox_flat-purple" style="position: relative;">
                                        <input class="flat" type="checkbox" style="position: absolute; opacity: 0;">
                                      </div>
                                      <button class="btn btn-xs btn-primary ml-4">즉시실행</button></th>
                                    </tr>

                                    <th>
                                      <input class="" type="radio" name="schedule_time_type" value="day"> 매일
                                    </th>

                                    <th>
                                      <select class="ml-2" name="hour" id="dayHour">

                                      </select> 시
                                    </th>
                                    <th>
                                      <select class="ml-2" name="minute" id="dayMinute">

                                      </select>분
                                    </th>
                                    <th></th>
                                    <th></th>
                                    <th>
                                      <div class="icheckbox_flat-purple" style="position: relative;">
                                        <input class="flat" type="checkbox" style="position: absolute; opacity: 0;">
                                      </div>
                                      <button class="btn btn-xs btn-primary ml-4">즉시실행</button>
                                    </th>
                                    </tr>

                                    <th>
                                      <input class="" type="radio" name="schedule_time_type" value="hour"> 매시
                                    </th>
                                    <th>
                                      <select class="ml-2" name="minute" id="hourMinute">

                                      </select>분
                                    </th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th>
                                      <div class="icheckbox_flat-purple" style="position: relative;">
                                        <input class="flat" type="checkbox" style="position: absolute; opacity: 0;">
                                      </div>
                                      <button class="btn btn-xs btn-primary ml-4">즉시실행</button>
                                    </th>
                                    </tr>
                                    </tbody>

                                    <tbody id="noRepactData">
                                    <tr>
                                      <th>
                                        미반복
                                      </th>
                                      <th>
                                        <select class="ml-2" name="year" id="noRepactYear">
                                          <option value="">선택</option>
                                          <option value="2022">2022</option>
                                          <option value="2023">2023</option>
                                          <option value="2024">2024</option>
                                          <option value="2025">2025</option>
                                          <option value="2026">2026</option>
                                          <option value="2027">2027</option>
                                        </select>
                                        년
                                      </th>
                                      <th>
                                        <select class="ml-2" name="month" id="noRepactMonth">
                                          <option value="">선택</option>
                                          <option value="1">1</option>
                                          <option value="2">2</option>
                                          <option value="3">3</option>
                                          <option value="4">4</option>
                                          <option value="5">5</option>
                                          <option value="6">6</option>
                                          <option value="7">7</option>
                                          <option value="8">8</option>
                                          <option value="9">9</option>
                                          <option value="10">10</option>
                                          <option value="11">11</option>
                                          <option value="12">12</option>
                                        </select>월
                                      <th>
                                        <select class="ml-2" name="day" id="noRepactDay">

                                        </select>일
                                      </th>
                                      <th>
                                        <select class="ml-2" name="hour" id="noRepactHour">

                                        </select> 시
                                      </th>
                                      <th>
                                        <select class="ml-2" name="minute" id="noRepactMinute">

                                        </select>분
                                      </th>
                                      <th>
                                        <div class="icheckbox_flat-purple" style="position: relative;">
                                          <input class="flat" type="checkbox" style="position: absolute; opacity: 0;">
                                        </div>
                                        <button class="btn btn-xs btn-primary ml-4">즉시실행</button>
                                      </th>
                                    </tr>
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

    <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
    <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>
    <script>
      let url = new URL(window.location.href);
      let adapterId = url.searchParams.get('adapterId');
      let instanceId = url.searchParams.get('instanceId');

      instanceUpdatePopupInit();

      function instanceUpdatePopupInit() {
        $("#noRepactData").hide();
        $("#repactData").show();

        $("#yearMinute").empty();
        $("#monthMinute").empty();
        $("#weekMinute").empty();
        $("#dayMinute").empty();
        $("#hourMinute").empty();
        $("#noRepactMinute").empty();

        $("#yearDay").empty();
        $("#monthDay").empty();
        $("#noRepactDay").empty();

        $("#yearHour").empty();
        $("#monthHour").empty();
        $("#weekHour").empty();
        $("#dayHour").empty();
        $("#noRepactHour").empty();

        //분
        let minuteHTML = "";
        minuteHTML += `<option value="">선택</option>`;
        for (let i = 0; i < 60; i++) {
          minuteHTML += `<option value="`+i+`">`+i+`</option>`;
        }
        $("#yearMinute").append(minuteHTML);
        $("#monthMinute").append(minuteHTML);
        $("#weekMinute").append(minuteHTML);
        $("#dayMinute").append(minuteHTML);
        $("#hourMinute").append(minuteHTML);
        $("#noRepactMinute").append(minuteHTML);

        //일
        let dayHTML = "";
        dayHTML += `<option value="">선택</option>`;
        for (let i = 1; i < 31; i++) {
          dayHTML += `<option value="`+i+`">`+i+`</option>`;
        }
        $("#yearDay").append(dayHTML);
        $("#monthDay").append(dayHTML);
        $("#noRepactDay").append(dayHTML);

        //시
        let hourHTML = "";
        hourHTML += `<option value="">선택</option>`;
        for (let i = 1; i < 13; i++) {
          hourHTML += `<option value="`+i+`">`+i+`</option>`;
        }
        $("#yearHour").append(hourHTML);
        $("#monthHour").append(hourHTML);
        $("#weekHour").append(hourHTML);
        $("#dayHour").append(hourHTML);
        $("#noRepactHour").append(hourHTML);

        instanceDeatil();
      }

      function instanceDeatil() {
        $.ajax({
          type: 'post',
          url: "/dp/ingest/adapter/instance/"+instanceId+"/detail",
          contentType:"application/json;charset=UTF-8",
          success: function(data, textStatus, xhr) {
            if(data.returnCode == '0000' || data.return_code == '200') {
              let resultData = data.contents[0];
              console.log("API-(dp_ingest_adapter_it_dt) :", resultData);

              $("#instance_nm").val(resultData.instance_nm);
              $("#dset_idntfc_id").val(resultData.dset_idntfc_id);
              $("#dset_idntfc_nm").val(resultData.dset_korean_nm);
              $("input:checkbox[name='useYn']:checkbox[value='"+resultData.use_yn+"']").prop('checked', true);
              $("#storage_cycle").val(resultData.storage_cycle);
              $("#storage_type").val(resultData.storage_type);
              $("etc_note").val(resultData.etc_note);
              $("input:checkbox[name='time_data_yn']:checkbox[value='"+resultData.time_data_yn+"']").prop('checked', true);
              $("clct_mthd").val(resultData.clct_mthd);
              $("clct_ty").val(resultData.clct_ty);

              if(resultData.schedule_type === "반복"){
                $("input:checkbox[name='schedule_type']:checkbox[value='Y']").prop('checked', true);
                $("#noRepactData").hide();
                $("#repactData").show();

                if(resultData.schedule_time_type === "year"){
                  $("input:checkbox[name='schedule_time_type']:checkbox[value='year']").prop('checked', true);
                  $("yearMonth").val(resultData.schedule_month);
                  $("yearDay").val(resultData.schedule_day);
                  $("yearHour").val(resultData.schedule_hour);
                  $("yearMinute").val(resultData.schedule_minute);

                }else if(resultData.schedule_time_type === "month"){
                  $("input:checkbox[name='schedule_time_type']:checkbox[value='month']").prop('checked', true);
                  $("monthDay").val(resultData.schedule_day);
                  $("monthHour").val(resultData.schedule_hour);
                  $("monthMinute").val(resultData.schedule_minute);

                }else if(resultData.schedule_time_type === "week"){
                  $("input:checkbox[name='schedule_time_type']:checkbox[value='week']").prop('checked', true);
                  $("weekHour").val(resultData.schedule_hour);
                  $("weekMinute").val(resultData.schedule_minute);

                }else if(resultData.schedule_time_type === "day"){
                  $("input:checkbox[name='schedule_time_type']:checkbox[value='day']").prop('checked', true);
                  $("dayHour").val(resultData.schedule_hour);
                  $("dayMinute").val(resultData.schedule_minute);

                }else if(resultData.schedule_time_type === "hour"){
                  $("input:checkbox[name='schedule_time_type']:checkbox[value='hour']").prop('checked', true);
                  $("hourMinute").val(resultData.schedule_minute);

                }
              }else if(resultData.schedule_type === "미반복"){
                $("#noRepactData").show();
                $("#repactData").hide();
                $("input:checkbox[name='schedule_type']:checkbox[value='N']").prop('checked', true);

                $("noRepactYear").val(resultData.schedule_year);
                $("noRepactMonth").val(resultData.schedule_month);
                $("noRepactDay").val(resultData.schedule_day);
                $("noRepactHour").val(resultData.schedule_hour);
                $("noRepactMinute").val(resultData.schedule_minute);
              }

            } else {
              alert('API:(dp_ingest_adapter_it_d) error : ' + data.returnCode + " : " + data.returnMsg);
            }
          },
          error: function(data, status, error) {
            alert('API:(dp_ingest_adapter_it_d) ajax Error: ' + data);
          }
        });

      }

      //수정버튼
      function instancePopupEdit(){
        if(!$("#instance_nm").val()){
          alert("인스턴스 명을 작성해주세요.");
          return;
        }

        let scheduleType = null;
        let scheduleTimeTpe = null;
        let scheduleYear = null;
        let scheduleMonth = null;
        let scheduleDay = null;
        let scheduleHour = null;
        let scheduleMinute = null;

        if($("input:radio[name='schedule_type']:checked").val() === "Y"){
          scheduleType = "반복";
          if($("input:radio[name='schedule_time_type']:checked").val() === "year"){
            scheduleTimeTpe = "year";
            scheduleMonth = $("yearMonth").val();
            scheduleDay = $("yearDay").val();
            scheduleHour = $("yearHour").val();
            scheduleMinute = $("yearMinute").val();

          }else if($("input:radio[name='schedule_time_type']:checked").val() === "month"){
            scheduleTimeTpe = "month";
            scheduleDay = $("monthDay").val();
            scheduleHour = $("monthHour").val();
            scheduleMinute = $("monthMinute").val();

          }else if($("input:radio[name='schedule_time_type']:checked").val() === "week"){
            scheduleTimeTpe = "week";
            scheduleHour = $("weekHour").val();
            scheduleMinute = $("weekMinute").val();

          }else if($("input:radio[name='schedule_time_type']:checked").val() === "day"){
            scheduleTimeTpe = "day";
            scheduleHour = $("dayHour").val();
            scheduleMinute = $("dayMinute").val();

          }else if($("input:radio[name='schedule_time_type']:checked").val() === "hour"){
            scheduleTimeTpe = "hour";
            scheduleMinute = $("hourMinute").val();
          }
        }else{
          scheduleType = "미반복";
          scheduleYear = $("noRepactYear").val();
          scheduleMonth = $("noRepactMonth").val();
          scheduleDay = $("noRepactDay").val();
          scheduleHour = $("noRepactHour").val();
          scheduleMinute = $("noRepactMinute").val();
        }

        const data = {
          "adapter_id": adapterId,                                  //Adapter_ID
          "instance_id": instanceId,                                //Instance_ID
          "instance_nm": $("#instance_nm").val(),                   //인스턴스_명
          "dset_idntfc_id": $("#dset_idntfc_id").val(),             //데이터셋_식별_ID
          "use_yn": $("input:radio[name='useYn']:checked").val(),   //사용여부
          "storage_cycle": $("#storage_cycle").val(),               //보관주기
          "storage_type": $("#storage_type").val(),                 //보관주기_타입
          "schedule_type": scheduleType,                            //수집_스케줄_유형
          "schedule_time_type": scheduleTimeTpe,                    //수집스케줄_시간타입
          "schedule_now_exe": null,                                 //수집스케줄_즉시실행
          "schedule_year": scheduleYear,                            //수집스케줄_년
          "schedule_month": scheduleMonth,                          //수집스케줄_월
          "schedule_day": scheduleDay,                              //수집스케줄_일
          "schedule_hour": scheduleHour,                            //수집스케줄_시
          "schedule_minute": scheduleMinute,                        //수집스케줄_분
          "etc_note": $("etc_note").val(),                          //비고
          "time_data_yn": $("input:radio[name='time_data_yn']:checked").val(),  //시계열 데이터
          "subfolder_yn": null,                                     //하위폴더_포함여부
          "url_mix": null,                                          //url_조합
        };

        $.ajax({
          type: 'post',
          url: '/dp/ingest/adapter/instance/update'+instanceId,
          contentType:"application/json;charset=UTF-8",
          data: JSON.stringify(data),
          success: function(data, textStatus, xhr) {
            console.log("dp_ingest_adapter_it_save", data)
            window.close();
            location.href="adaptorDetail?adapterId="+adapterId;
          },
          error: function(data, status, error) {
            alert('ajax Error ' + data);
          }
        });
      }

      $("input[name=schedule_type]").click(function(){
        let schedule_typeVal = $('input:radio[name="schedule_type"]:checked').val();

        if(schedule_typeVal === "Y"){
          $("#noRepactData").hide();
          $("#repactData").show();

        }else{
          $("#noRepactData").show();
          $("#repactData").hide();
        }
      });

      //삭제 버튼
      function instancePopupDel() {
        $.ajax({
          type: 'post',
          url: "/dp/ingest/adapter/instance/delete/check/"+instanceId,
          contentType:"application/json;charset=UTF-8",
          //data: JSON.stringify(param),
          success: function(data, textStatus, xhr) {
            if(data.returnCode == '0000' || data.return_code == '200') {
              if(data.contents[0].chk_yn === "Y"){
                alert('사용되고 있는 Instance 입니다.' );
                return;
              }else{
                $.ajax({
                  type: 'post',
                  url: "/dp/ingest/adapter/instance/delete/"+instanceId,
                  contentType:"application/json;charset=UTF-8",
                  //data: JSON.stringify(param),
                  success: function(data, textStatus, xhr) {
                    if(data.returnCode == '0000' || data.return_code == '200') {
                      if(data.contents[0].successYn === "Y"){
                        alert('정상적으로 삭제되었습니다.');
                        window.close();
                        location.href="adaptorDetail?adapterId="+adapterId;
                      }else{
                        alert('정상적으로 삭제되지 않았습니다.');
                      }
                    } else {
                      alert('API: (dp_ingest_adapter_it_del) error : ' + data.returnCode + " : " + data.returnMsg);
                    }
                  },
                  error: function(data, status, error) {
                    alert('API: (dp_ingest_adapter_it_del_chk) ajax Error ' + data);
                  }
                });
              }
            } else {
              alert('API: (dp_ingest_adapter_it_del_chk) error : ' + data.returnCode + " : " + data.returnMsg);
            }
          },
          error: function(data, status, error) {
            alert('API: (dp_ingest_adapter_it_del_chk) ajax Error ' + data);
          }
        });
      }

      //데이터 셋 Popup창
      function dataSetPopup() {
        let url = "/dataSetPopup";
        let name = "dataSetPopup";
        let option = "width = 800, height = 700, top = 100, left = 200, location = no"
        window.open(url, name, option);
      }

    </script>

  </body>
</html>