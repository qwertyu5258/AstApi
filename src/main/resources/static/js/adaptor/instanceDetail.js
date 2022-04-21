
let url = new URL(window.location.href);
let instanceId = url.searchParams.get('instanceId');
let adapterId = url.searchParams.get('adapterId');

instanceDetailInit();

function instanceDetailInit () {
    $("#scheduleTime").empty();

    ajaxGet('/dp/ingest/adapter/instance/'+instanceId+"/detail", "", function (data) {
        console.log(data);
        let resultData = data.contents[0];

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
        $("schedule_type").val(resultData.clct_ty);

        let scheduleTimeText = "";
        if(resultData.schedule_type === "반복"){
            if(resultData.schedule_time_type === "year"){
                scheduleTimeText += `<input class="" type="radio" name="schedule_time_type" checked>매년`;
                scheduleTimeText += resultData.schedule_month+` 월 `;
                scheduleTimeText += resultData.schedule_day+` 일 `;
                scheduleTimeText += resultData.schedule_hour+` 시 `;
                scheduleTimeText += resultData.schedule_minute+` 분 `;

            }else if(resultData.schedule_time_type === "month"){
                scheduleTimeText += `<input class="" type="radio" name="schedule_time_type" checked>매월`;
                scheduleTimeText += resultData.schedule_day+` 일 `;
                scheduleTimeText += resultData.schedule_hour+` 시 `;
                scheduleTimeText += resultData.schedule_minute+` 분 `;

            }else if(resultData.schedule_time_type === "week"){
                scheduleTimeText += `<input class="" type="radio" name="schedule_time_type" checked>매주`;
                scheduleTimeText += ` 요일 `;
                scheduleTimeText += resultData.schedule_hour+` 시 `;
                scheduleTimeText += resultData.schedule_minute+` 분 `;

            }else if(resultData.schedule_time_type === "day"){
                scheduleTimeText += `<input class="" type="radio" name="schedule_time_type" checked>매일`;
                scheduleTimeText += resultData.schedule_hour+` 시 `;
                scheduleTimeText += resultData.schedule_minute+` 분 `;

            }else if(resultData.schedule_time_type === "hour"){
                scheduleTimeText += `<input class="" type="radio" name="schedule_time_type" checked>매시`;
                scheduleTimeText += resultData.schedule_minute+` 분 `;
            }

        }else if(resultData.schedule_type === "미반복"){
            scheduleTimeText += resultData.schedule_year+` 년 `;
            scheduleTimeText += resultData.schedule_month+` 월 `;
            scheduleTimeText += resultData.schedule_day+` 일 `;
            scheduleTimeText += resultData.schedule_hour+` 시 `;
            scheduleTimeText += resultData.schedule_minute+` 분 `;
        }
        $("#scheduleTime").append(scheduleTimeText);

        instanceMatchList();
    });
}

//instance 상세 접속정보 설정
function instanceMatchList() {
    ajaxGet('/dp/ingest/adapter/instance/property/'+instanceId, "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#instanceMatchListData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr>`;
            trHTML += '<td><input class="tableInfo" type="checkbox" name="checkList" id="check'+i+'" value="'+obj[i].item+'"></td>';
            trHTML += `<td>`;
            trHTML += `<input type="text" value="`+obj[i].item+`" id="propertyItem">`;
            trHTML += `</td>`;
            trHTML += `<td>`;
            trHTML += `<input type="text" value="`+obj[i].item_nm+`" id="propertyItemNm">`;
            trHTML += `</td>`;
            trHTML += `<td>`;
            trHTML += `<input type="text" value="`+obj[i].value+`" id="propertyValue">`;
            trHTML += `</td>`;
            trHTML += `<td>`;
            trHTML += `<input type="text" value="`+obj[i].item_described+`" id="propertyDescribed">`;
            trHTML += `</td>`;
            trHTML += `</tr>`;
        }
        $("#instanceMatchListData tbody").append(trHTML);
    });
}

//저장 버튼
function instancePropertyAdd() {
    const checked_val = [];

    $.each($("#instanceMatchListData tbody tr"), function(){
        const contents = {
            "item" : $(this).find("#propertyItem").val(),
            "item_nm" : $(this).find("#propertyItem").val(),
            "value" : $(this).find("#propertyItem").val(),
            "item_described" : $(this).find("#propertyItem").val(),
            "instance_id" : instanceId,
            "essential_yn" : null,
            "change_able_yn" : null,
            "clct_mthd" : null,
            "clct_ty" : null,
            "display_seq" : null,
        };
        checked_val.push(contents);
    })

    let successYn = true;
    setTimeout(() => {
        for(let i=0; i < checked_val.length; i++){
            $.ajax({
                type: 'post',
                url: '/dp/ingest/adapter/instance/property/save/'+instanceId,
                contentType:"application/json;charset=UTF-8",
                data: JSON.stringify(checked_val[i]),
                // data: param,
                success: function(data, textStatus, xhr) {
                    if(data.contents[0].successYn == 'N') {
                        successYn = false;
                    }
                },
                error: function(data, status, error) {
                    alert('API: (dp_ingest_adapter_it_pp_save) ajax Error ' + data);
                }
            });
        }
        location.href="instanceDetail?instanceId="+instanceId+"&adapterId="+adapterId;
    },1000)
}

//삭제 버튼
function instancePropertyDel() {
    const instancePropertyChecked_val = [];

    $("input:checkbox[name='checkList']:checked").each(function(k,kValue){
        instancePropertyChecked_val.push(kValue.value);
    })

    if(instancePropertyChecked_val.length === 0){
        alert("삭제할 항목을 선택해 주세요.");
        return;
    }

    let delChk_YN = false;
    setTimeout(() => {
        for(let i=0; i < instancePropertyChecked_val.length; i++){
            $.ajax({
                type: 'post',
                url: '/dp/ingest/adapter/instance/property/delete/'+instanceId+"/"+instancePropertyChecked_val[i],
                contentType:"application/json;charset=UTF-8",
                //data: JSON.stringify(param),
                success: function(data, textStatus, xhr) {
                    if(data.contents[0].chk_yn == 'Y') {
                        delChk_YN = true;
                    }
                },
                error: function(data, status, error) {
                    alert('API: (dp_ingest_adapter_it_pp_del_chk) ajax Error ' + data);
                    return;
                }
            });
        }
    },1000)

    if(delChk_YN){
        alert("삭제가 불가능한 접속정보가 있습니다.");
        return;
    }

    if(window.confirm("정말 삭제하시겠습니까?")){
        setTimeout(() => {
            for(let i=0; i < instancePropertyChecked_val.length; i++){
                ajaxPost('/dp/ingest/adapter/instance/property/delete/'+instanceId+'/'+instancePropertyChecked_val[i], "", function (data) {
                    console.log('완료~dp_ingest_adapter_it_pp_del',data);
                });
            }
            alert("선택한 항목이 정상적으로 삭제되었습니다.");
            location.href="instanceDetail?instanceId="+instanceId+"&adapterId="+adapterId;
        },1000)
    }
}

//목록 버튼
function adaptorDetailList() {
    location.href="adaptorDetail?adapterId="+adapterId;
}

//매칭정보 설정 버튼
function matchInfoConfig() {
    location.href="instanceConfig?instanceId="+instanceId;
}


