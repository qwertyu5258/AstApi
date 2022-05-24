let adaptorSetDataCnt = 0;
let adaptorSetDatConfigaCnt = 0;

onload = adaptorSetInit();

//Adapter 유형관리 리스트 조회 (dp_ingest_pp_type)
function adaptorSetInit () {

    dp_cm_codes_clct_mthd();
    dp_cm_codes_clct_ty();

    $("#adaptorSetDataConfigArea").hide();

    let data = {
        "user_id" : "ksy",
        "menu_id" : ""
    };
    ajaxPost('/dp/ingest/property/type', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#adaptorSetData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr>`;
            trHTML += `<td><input class="tableInfo" type="checkbox" name="checkList" onclick="checkOnlyOne(this,'`+obj[i].adapter_type_id+`');" id="check'+i+'" value="`+obj[i].adapter_type_id+`"></td>`;
            trHTML += `<td>` + noCnt + `</td>`;
            trHTML += `<td>`;
            trHTML += `<input type="text" value="`+obj[i].adapter_type_nm+`" id="adapter_type_nm">`;
            trHTML += `</td>`;
            trHTML += `<td><select id="clct_mthd${i}" class="clct_mthd1"><option>` + obj[i].clct_mthd + `</option></select></td>`;
            trHTML += `<td><select id="clct_ty1" class="clct_ty1"><option>` + obj[i].clct_ty + `</option></select></td>`;
            trHTML += `</tr>`;
            adaptorSetDataCnt = noCnt;
        }
        $("#adaptorSetData tbody").append(trHTML);
    });

    dp_cm_codes_clct_mthd();
    dp_cm_codes_clct_ty();
}

//Adapter 유형관리- 추가 버튼 (dp_ingest_pp_info_id_chk)
function adaptorSetAdd() {
    ajaxGet('/dp/ingest/property/info/id/check', "", function (data) {
        let addAdaptorId = data.contents[0].adapter_type_id;
        adaptorSetDataCnt = adaptorSetDataCnt+1;

        let trHTML = "";
        trHTML += `<tr>`;
        trHTML += `<td><input class="tableInfo" type="checkbox" name="checkList" onclick="checkOnlyOne(this,'`+addAdaptorId+`');" id="check'+i+'" value="`+addAdaptorId+`"></td>`;
        trHTML += `<td>` + adaptorSetDataCnt + `</td>`;
        trHTML += `<td>`;
        trHTML += `<input type="text" value="" id="adapter_type_nm">`;
        trHTML += `</td>`;
        trHTML += `<td><select id="clctTy"><option>DB_TO_DB</option></select></td>`;
        trHTML += `<td><select id="clctMthd"><option>Postgresql</option></select></td>`;
        trHTML += `</tr>`;

        $("#adaptorSetData tbody").append(trHTML);
    });
}

//Adapter 유형관리 - 삭제 체크 (dp_ingest_pp_info_del_chk)
//Adapter 유형관리 - 삭제 버튼 (dp_ingest_pp_info_del)
function adaptorSetDel() {
    let adaptorId = "";
    let clctMthd = "";
    let clctTy = "";

    $("input:checkbox[name='checkList']:checked").each(function(k,kValue){
        adaptorId = kValue.value;
        clctTy = $(this).parent().find("#clctTy").val();
        clctMthd = $(this).parent().find("#clctMthd").val();
    });

    let delChk_YN = false;
    // setTimeout(() => {
        const contents = {
            "user_id" : "~~id",
            "menu_id" : "",
            "adapter_type_id" : adaptorId
        };
        $.ajax({
            type: 'post',
            async: false,
            url: '/dp/ingest/property/info/delete/check',
            contentType:"application/json;charset=UTF-8",
            data: JSON.stringify(contents),
            success: function(data, textStatus, xhr) {
                if(data.contents[0].chk_yn == 'Y') {
                    delChk_YN = true;
                }
            },
            error: function(data, status, error) {
                alert('API: (dp_ingest_pp_info_id_chk) ajax Error ' + data);
                return;
            }
        });
    // },1000)

    if(delChk_YN){
        alert("Adapter 유형 항목이 사용되어 삭제불가능합니다.");
        return;
    }
    let data = {
        "user_id" : "~~id",
        "menu_id" : "",
        "adapter_type_id" : adaptorId
    };

    $.ajax({
        type: 'post',
        url: '/dp/ingest/property/info/delete',
        async: false,
        contentType: "application/json;charset=UTF-8",
        data: JSON.stringify(data),
        success: function (data, textStatus, xhr) {
            if (data.returnCode == '0000' || data.return_code == '200') {
                if(data.contents[0].successYn == 'Y') {
                    alert('삭제 완료');
                } else {
                    alert('미삭제');
                }
            } else {
                alert('API 에러');
            }
        },
        error: function (data, status, error) {
            alert('API: (dp_ingest_pp_info_del) ajax Error ' + data);
            return;
        }
    });
}

//Adapter 유형관리 - 저장 버튼 (dp_ingest_pp_info_save)
function adaptorSetSave() {
    const checked_Saveval = [];

    $.each($("#adaptorSetData tbody tr"), function(){
        const contents = {
            "clct_mthd" : $(this).find("#clctTy").val(),
            "clct_ty" : $(this).find("#clctMthd").val(),
            "adapter_type_nm" :$(this).find("#adapter_type_nm").val(),
        };
        checked_Saveval.push(contents);
    })

    // setTimeout(() => {
        for(let i=0; i < checked_Saveval.length; i++){
            $.ajax({
                type: 'post',
                url: '/dp/ingest/property/info/save',
                contentType:"application/json;charset=UTF-8",
                data: JSON.stringify(checked_Saveval[i]),
                // data: param,
                success: function(data, textStatus, xhr) {
                    if(data.returnCode == '0000' || data.return_code == '200') {
                        console.log('API: (dp_ingest_pp_info_save) ajax Success ' + data);
                    }
                },
                error: function(data, status, error) {
                    alert('API: (dp_ingest_pp_info_save) ajax Error ' + data);
                }
            });
        }
        location.href="adaptorSet";
    // },1000)
}

//Adapter 유형 관리 체크
function checkOnlyOne(element, id) {
    const checkboxes = document.getElementsByName("checkList");

    checkboxes.forEach((cb) => {
        cb.checked = false;
    })
    element.checked = true;

    let clctTy = $(element).parent().find("#clctTy").val();
    let clctMthd = $(element).parent().find("#clctMthd").val();

    $("#hiddenAdapterId").val("");
    $("#hiddenClctTy").val("");
    $("#hiddenClctMthd").val("");

    $("#adaptorSetDataConfigArea").show();

    adapterSetConfigData(id, clctMthd, clctTy);
}

//Adapter 유형 관리 - 접속정보 설정 조회 (dp_ingest_pp_info)
function adapterSetConfigData(adapter_id, clct_mthd, clct_ty) {
    $("#hiddenAdapterId").val(adapter_id);
    $("#hiddenClctTy").val(clct_mthd);
    $("#hiddenClctMthd").val(clct_ty);

    let data = {
        "user_id" : "a",
        "menu_id" : "",
        "adapter_type_id" : "A000000003",
        "clct_mthd" : "11",
        "clct_ty" : "11"
    };

    ajaxPost('/dp/ingest/property/info', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#adaptorSetDataConfig tbody").empty();

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
            trHTML += `<input type="text" id="configValue" value="`+obj[i].value+`">`;
            trHTML += `</td>`;
            trHTML += `<td>`;
            trHTML += `<select id="change_able_yn">`;
            if(obj[i].change_able_yn === "Y"){
                trHTML += `<option value="Y" selected>가능</option><option value="N">불가능</option>`;
            }else{
                trHTML += `<option value="Y" selected>가능</option><option value="N" selected>불가능</option>`;
            }
            trHTML += `</select>`;
            trHTML += `</td>`;

            trHTML += `<td>`;
            trHTML += `<select id="essential_yn">`;
            if(obj[i].essential_yn === "Y"){
                trHTML += `<option value="Y" selected>필수</option><option value="N">필수아님</option>`;
            }else{
                trHTML += `<option value="Y">필수</option><option value="N" selected>필수아님</option>`;
            }
            trHTML += `</select>`;
            trHTML += `</td>`;

            trHTML += `<td>`;
            trHTML += `<input type="text" id="configItemDescribed" value="`+obj[i].item_described+`">`;
            trHTML += `</td>`;
            trHTML += `</tr>`;
            adaptorSetDatConfigaCnt = noCnt;
        }
        $("#adaptorSetDataConfig tbody").append(trHTML);
    });
}

//Adapter 유형 관리(접속정보 설정) - 추가 버튼
function adaptorSetConfigAdd() {
    adaptorSetDatConfigaCnt = adaptorSetDatConfigaCnt+1;

    let trHTML = "";
    trHTML += `<tr>`;
    trHTML += `<td><input class="tableInfo" type="checkbox" name="checkConfigList" id="checkConfig`+instanceSetDatConfigaCnt+`"></td>`;
    trHTML += `<td>`+adaptorSetDatConfigaCnt+`</td>`;
    trHTML += `<td>`;
    trHTML += `<input type="text" id="configItem" value="">`;
    trHTML += `</td>`;
    trHTML += `<td>`;
    trHTML += `<input type="text" id="configIteNm" value="">`;
    trHTML += `</td>`;
    trHTML += `<td>`;
    trHTML += `<input type="text" id="configValue" value="">`;
    trHTML += `</td>`;

    trHTML += `<td>`;
    trHTML += `<select id="change_able_yn">`;
    trHTML += `<option value="Y" selected>가능</option><option value="N">불가능</option>`;
    trHTML += `</select>`;
    trHTML += `</td>`;

    trHTML += `<td>`;
    trHTML += `<select id="essential_yn">`;
    trHTML += `<option value="Y" selected>필수</option><option value="N">필수아님</option>`;
    trHTML += `</select>`;
    trHTML += `</td>`;

    trHTML += `<td>`;
    trHTML += `<input type="text" id="configItemDescribed" value="">`;
    trHTML += `</td>`;
    trHTML += `</tr>`;

    $("#adaptorSetDataConfig tbody").append(trHTML);
}

//Adapter 유형 관리(접속정보 설정) - 삭제 버튼 (dp_ingest_pp_dt_del)
function adaptorSetConfigDel() {
    let clctMthd = $("#hiddenClctTy").val();
    let clctTy = $("#hiddenClctMthd").val();

    const daptorSetConfigChecked_val = [];

    $("input:checkbox[name='checkConfigList']:checked").each(function(k,kValue){
        const contents = {
            "item" : $(this).find("#configItem").val(),
            "adapter_type_id" : $("#hiddenAdapterId").val(),
            "clct_mthd" : clctMthd,
            "clct_ty" : clctTy,
        };
        daptorSetConfigChecked_val.push(contents);
    })

    let delSuccessYn = true;
    setTimeout(() => {
        for(let i=0; i < daptorSetConfigChecked_val.length; i++){
            $.ajax({
                type: 'post',
                url: '/dp/ingest/property/detail/delete',
                contentType:"application/json;charset=UTF-8",
                data: JSON.stringify(daptorSetConfigChecked_val[i]),
                success: function(data, textStatus, xhr) {
                    if(data.returnCode !== '0000') {
                        delSuccessYn = false;
                    }
                },
                error: function(data, status, error) {
                    alert('API: (dp_ingest_pp_dt_del) ajax Error ' + data);
                    return;
                }
            });
        }
        if(delSuccessYn){
            alert('정상적으로 삭제되었습니다.');
            location.href="adaptorSet";
        }else{
            alert('정상적으로 삭제되지않았습니다.');
        }
    },1000)
}

//Adapter 유형 관리(접속정보 설정) - 저장 버튼(dp_ingest_pp_dt_save)
function adaptorSetConfigSave() {
    let adapterId = $("#hiddenAdapterId").val();
    let clctMthd = $("#hiddenClctTy").val();
    let clctTy = $("#hiddenClctMthd").val();

    const adaptorSetConfigSaveData = [];
    $.each($("#adaptorSetDataConfig tbody tr"), function(){
        const contents = {
            "item" : $(this).find("#configItem").val(),
            "item_nm" : $(this).find("#configIteNm").val(),
            "item_described" : $(this).find("#configItemDescribed").val(),
            "change_able_yn" : $(this).find("#change_able_yn").val(),
            "essential_yn" : $(this).find("#essential_yn").val(),
            "value" : $(this).find("#configValue").val(),
            "display_seq" : null,
            "adapter_type_id" : adapterId
        };
        adaptorSetConfigSaveData.push(contents);
    })

    let successYn = true;
    setTimeout(() => {
        for(let i=0; i < adaptorSetConfigSaveData.length; i++){
            $.ajax({
                type: 'post',
                url: '/dp/ingest/property/detail/save/'+clctMthd+"/"+clctTy,
                contentType:"application/json;charset=UTF-8",
                data: JSON.stringify(adaptorSetConfigSaveData[i]),
                // data: param,
                success: function(data, textStatus, xhr) {
                    if(data.contents[0].successYn == 'N') {
                        successYn = false;
                        console.log("저장중 오류가 발생 (dp_ingest_pp_dt_save) : ", data);
                    }
                },
                error: function(data, status, error) {
                    alert('API: (dp_ingest_pp_dt_save) ajax Error ' + data);
                }
            });
        }
        location.href="adaptorSet";
    },1000)
}
