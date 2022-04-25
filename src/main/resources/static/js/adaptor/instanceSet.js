let instanceSetDataCnt = 0;
let instanceSetDatConfigaCnt = 0;

instanceSetInit();

function instanceSetInit () {
    $("#instanceSetDataConfigArea").hide();
    ajaxGet('/dp/ingest/instance/property/type', "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#instanceSetData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr>`;
            trHTML += `<td><input class="tableInfo" type="checkbox" name="checkList" onclick="checkOnlyOne(this,`+obj[i].connect_id+`);" id="check'+i+'" value="`+obj[i].connect_id+`"></td>`;
            trHTML += `<td>` + noCnt + `</td>`;
            trHTML += `<td><select id="clctMthd"><option>` + obj[i].clct_mthd + `</option></select></td>`;
            trHTML += `<td><select id="clctTy"><option>` + obj[i].clct_ty + `</option></select></td>`;
            trHTML += `</tr>`;
            instanceSetDataCnt = noCnt;
        }
        $("#instanceSetData tbody").append(trHTML);
    });
}

//접속유형 상세 추가 버튼 (dp_ingest_it_pp_info_id_chk)
function instanceSetAdd() {
    ajaxPost('/dp/ingest/instance/property/info/id/check', "", function (data) {
        let addConnectId = data.contents[0].connect_id;
        instanceSetDataCnt = instanceSetDataCnt+1;

        let trHTML = "";
        trHTML += `<tr>`;
        trHTML += `<td><input class="tableInfo" type="checkbox" name="checkList" onclick="checkOnlyOne(this,`+addConnectId+`);" id="check'+i+'" value="`+addConnectId+`"></td>`;
        trHTML += `<td>` + instanceSetDataCnt + `</td>`;
        trHTML += `<td><select id="clctTy"><option>DB_TO_DB</option></select></td>`;
        trHTML += `<td><select id="clctMthd"><option>Postgresql</option></select></td>`;
        trHTML += `</tr>`;

        $("#instanceSetData tbody").append(trHTML);
    });
}

//접속유형 상세 - 삭제 버튼
function instanceSetDel() {
    let connectId = "";
    let clctMthd = "";
    let clctTy = "";

    $("input:checkbox[name='checkList']:checked").each(function(k,kValue){
        connectId = kValue.value;
        clctTy = $(this).parent().find("#clctTy").val();
        clctMthd = $(this).parent().find("#clctMthd").val();
    })

    let delChk_YN = false;
    setTimeout(() => {
        const contents = {
            "connect_id" : connectId,
            "clct_ty" : clctTy,
            "clct_mthd" : clctMthd
        };
        $.ajax({
            type: 'post',
            url: '/dp/ingest/instance/property/delete/check',
            contentType:"application/json;charset=UTF-8",
            data: JSON.stringify(contents),
            success: function(data, textStatus, xhr) {
                if(data.contents[0].chk_yn == 'Y') {
                    delChk_YN = true;
                    alert("접속유형 항목관리가 사용되고 있습니다.");
                }else{
                    const delData = {
                        "connect_id" : connectId
                    };
                    $.ajax({
                        type: 'post',
                        url: '/dp/ingest/instance/property/info/delete/'+clctMthd+"/"+clctTy,
                        contentType:"application/json;charset=UTF-8",
                        data: JSON.stringify(delData),
                        success: function(data, textStatus, xhr) {
                            if(data.returnCode == '2003') {
                                location.href="instanceSet";
                            }
                        },
                        error: function(data, status, error) {
                            alert('API: (dp_ingest_it_pp_del_chk) ajax Error ' + data);
                            return;
                        }
                    });
                }
            },
            error: function(data, status, error) {
                alert('API: (dp_ingest_it_pp_del_chk) ajax Error ' + data);
                return;
            }
        });
    },1000)
}

//접속유형 상세 - 저장 버튼
function instanceSetSave() {
    const checked_Saveval = [];

    $.each($("#instanceSetData tbody tr"), function(){
        const contents = {
            "clct_mthd" : $(this).find("#clctTy").val(),
            "clct_ty" : $(this).find("#clctMthd").val(),
        };
        checked_Saveval.push(contents);
    })

    setTimeout(() => {
        for(let i=0; i < checked_Saveval.length; i++){
            $.ajax({
                type: 'post',
                url: '/dp/ingest/instance/property/info/save/'+checked_Saveval[i].clct_mthd+"/"+checked_Saveval[i].clct_ty,
                contentType:"application/json;charset=UTF-8",
                //data: JSON.stringify(checked_Saveval[i]),
                success: function(data, textStatus, xhr) {
                    if(data.returnCode == '0000') {
                        console.log('API: (dp_ingest_adapter_it_pp_save) ajax Success ' + data);
                    }
                },
                error: function(data, status, error) {
                    alert('API: (dp_ingest_adapter_it_pp_save) ajax Error ' + data);
                }
            });
        }
        location.href="instanceSet";
    },1000)
}

//접속유형 체크
function checkOnlyOne(element, id) {
    const checkboxes = document.getElementsByName("checkList");

    checkboxes.forEach((cb) => {
        cb.checked = false;
    })
    element.checked = true;

    let clctTy = $(element).parent().find("#clctTy").val();
    let clctMthd = $(element).parent().find("#clctMthd").val();

    $("#hiddenConnectId").val("");
    $("#hiddenClctTy").val("");
    $("#hiddenClctMthd").val("");

    instanceSetConfigData(id, clctMthd, clctTy);
}

//접속유형 항목관리 - 접속정보 설정 조회
function instanceSetConfigData(connect_id, clct_mthd, clct_ty) {
    $("#hiddenConnectId").val(connect_id);
    $("#hiddenClctTy").val(clct_mthd);
    $("#hiddenClctMthd").val(clct_ty);

    ajaxGet('/dp/ingest/instance/property/info/'+connect_id, "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#instanceSetDataConfig tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr>`;
            trHTML += `<td><input class="tableInfo" type="checkbox" name="checkConfigList" id="checkConfig`+i+`">`;
            trHTML += `</td>`;
            trHTML += `<td>`+noCnt+`</td>`;
            trHTML += `<td>`;
            trHTML += `<input type="text" id="configItem" value="`+obj[i].item+`">`;
            trHTML += `</td>`;
            trHTML += `<td>`;
            trHTML += `<input type="text" id="configIteNm" value="`+obj[i].item_nm+`">`;
            trHTML += `</td>`;
            trHTML += `<td>`;
            trHTML += `<input type="text" id="configItemDescribed" value="`+obj[i].item_described+`">`;
            trHTML += `</td>`;
            trHTML += `</tr>`;
            instanceSetDatConfigaCnt = noCnt;
        }
        $("#instanceSetDataConfig tbody").append(trHTML);
    });
}

//접속정보 설정 추가 버튼
function instanceSetConfigAdd() {
    instanceSetDatConfigaCnt = instanceSetDatConfigaCnt+1;

    let trHTML = "";
    trHTML += `<tr>`;
    trHTML += `<td><input class="tableInfo" type="checkbox" name="checkConfigList" id="checkConfig`+instanceSetDatConfigaCnt+`"></td>`;
    trHTML += `<td>`+instanceSetDatConfigaCnt+`</td>`;
    trHTML += `<td>`;
    trHTML += `<input type="text" id="configItem" value="">`;
    trHTML += `</td>`;
    trHTML += `<td>`;
    trHTML += `<input type="text" id="configIteNm" value="">`;
    trHTML += `</td>`;
    trHTML += `<td>`;
    trHTML += `<input type="text" id="configItemDescribed" value="">`;
    trHTML += `</td>`;
    trHTML += `</tr>`;

    $("#instanceSetDataConfig tbody").append(trHTML);
}

//접속정보 설정 삭제 버튼
function instanceSetConfigDel() {
    let clctMthd = $("#hiddenClctTy").val();
    let clctTy = $("#hiddenClctMthd").val();

    const instanceSetConfigChecked_val = [];

    $("input:checkbox[name='checkConfigList']:checked").each(function(k,kValue){
        const contents = {
            "item" : $(this).find("#configItem").val(),
            "connect_id" : $("#hiddenConnectId").val(),
        };
        instanceSetConfigChecked_val.push(contents);
    })

    let delSuccessYn = true;
    setTimeout(() => {
        for(let i=0; i < instanceSetConfigChecked_val.length; i++){
            $.ajax({
                type: 'post',
                url: '/dp/ingest/instance/property/detail/delete/'+clctMthd+"/"+clctTy,
                contentType:"application/json;charset=UTF-8",
                data: JSON.stringify(instanceSetConfigChecked_val[i]),
                success: function(data, textStatus, xhr) {
                    if(data.returnCode !== '0000') {
                        delSuccessYn = false;
                    }
                },
                error: function(data, status, error) {
                    alert('API: (dp_ingest_it_pp_dt_del) ajax Error ' + data);
                    return;
                }
            });
        }
    },1000)
    if(delSuccessYn){
        alert('정상적으로 삭제되었습니다.');
        location.href="instanceSet";
    }else{
        alert('정상적으로 삭제되지않았습니다.');
    }
}

//접속정보 설정 저장 버튼
function instanceSetConfigSave() {
    let connectId = $("#hiddenConnectId").val();
    let clctMthd = $("#hiddenClctTy").val();
    let clctTy = $("#hiddenClctMthd").val();

    const instanceSetConfigSaveData = [];
    $.each($("#instanceSetDataConfig tbody tr"), function(){
        const contents = {
            "item" : $(this).find("#configItem").val(),
            "item_nm" : $(this).find("#configIteNm").val(),
            "item_described" : $(this).find("#configItemDescribed").val(),
            "display_seq" : null
        };
        instanceSetConfigSaveData.push(contents);
    })

    const requestData = {
        "connect_id" : connectId,
        "contents" : instanceSetConfigSaveData
    };

    ajaxPost('/dp/ingest/instance/property/detail/save/'+clctMthd+'/'+clctTy, requestData, function (data) {
        location.href="instanceSet";
    });
}