

metaTableItemManageInit();

function metaTableItemManageInit () {
    ajaxGet('/dp/ingest/meta/item', '', function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML ="";

        $("#metaTableItemManageCnt").html("총 "+obj.length+"개");
        $("#metaTableItemManageData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let idntfcId = obj[i].dset_idntfc_id;
            trHTML += '<tr>';
            trHTML += '<td><input class="tableInfo" type="checkbox" onclick="metaCheckBox(checked)" name="checkList" id="check'+i+'" value="'+idntfcId+'"></td>';
            trHTML += '<td><label>' + obj[i].dset_lclas + '</label></td>';
            trHTML += '<td><label>' + obj[i].dset_mclas + '</label></td>';
            trHTML += '<td><label>' + obj[i].dset_sclas + '</label></td>';
            trHTML += '<td><label>' + obj[i].dset_korean_nm + '</label></td>';
            if(obj[i].cl_bass === "Y"){
                trHTML += '<td><input type="checkbox" name="clBass" id="clBass" checked></td>';
            }else{
                trHTML += '<td><input type="checkbox" name="clBass" id="clBass"></td>';
            }
            if(obj[i].cl_qlity === "Y"){
                trHTML += '<td><input type="checkbox" name="clQlity" id="clQlity" checked></td>';
            }else{
                trHTML += '<td><input type="checkbox" name="clQlity" id="clQlity"></td>';
            }
            if(obj[i].cl_cntm === "Y"){
                trHTML += '<td><input type="checkbox" name="clQlity" id="clCntm" checked></td>';
            }else{
                trHTML += '<td><input type="checkbox" name="clQlity" id="clCntm"></td>';
            }
            if(obj[i].cl_wdtb === "Y"){
                trHTML += '<td><input type="checkbox" name="clQlity" id="clWdtb" checked></td>';
            }else{
                trHTML += '<td><input type="checkbox" name="clQlity" id="clWdtb"></td>';
            }
            if(obj[i].cl_crlts === "Y"){
                trHTML += '<td><input type="checkbox" name="clQlity" id="clCrlts" checked></td>';
            }else{
                trHTML += '<td><input type="checkbox" name="clQlity" id="clCrlts"></td>';
            }
            trHTML += '</tr>';
        }
        $("#metaTableItemManageData tbody").append(trHTML);
    });
}

//검색
function search() {
    const data = {
        "search": $("#SelectText").val(),
        "dset_lclas": $("#LargeCategory").val(),
        "dset_mclas": $("#MiddleCategory").val(),
        "dset_sclas": $("#SmallCategory").val(),
    };

    ajaxGet('/dp/ingest/meta/item', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML ="";
        $("#metaTableItemManageCnt").html("총 "+obj.length+"개");
        $("#metaTableItemManageData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let idntfcId = obj[i].dset_idntfc_id;
            trHTML += '<tr>';
            trHTML += '<td><input class="tableInfo" type="checkbox" onclick="metaCheckBox(checked)" name="checkList" id="check'+i+'" value="'+idntfcId+'"></td>';
            trHTML += '<td><label>' + obj[i].dset_lclas + '</label></td>';
            trHTML += '<td><label>' + obj[i].dset_mclas + '</label></td>';
            trHTML += '<td><label>' + obj[i].dset_sclas + '</label></td>';
            trHTML += '<td><label>' + obj[i].dset_korean_nm + '</label></td>';
                if(obj[i].cl_bass === "Y"){
                    trHTML += '<td><input type="checkbox" name="clBass" id="clBass" checked></td>';
                }else{
                    trHTML += '<td><input type="checkbox" name="clBass" id="clBass"></td>';
                }
                if(obj[i].cl_qlity === "Y"){
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clQlity" checked></td>';
                }else{
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clQlity"></td>';
                }
                if(obj[i].cl_cntm === "Y"){
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clCntm" checked></td>';
                }else{
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clCntm"></td>';
                }
                if(obj[i].cl_wdtb === "Y"){
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clWdtb" checked></td>';
                }else{
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clWdtb"></td>';
                }
                if(obj[i].cl_crlts === "Y"){
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clCrlts" checked></td>';
                }else{
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clCrlts"></td>';
                }
            trHTML += '</tr>';
        }
        $("#metaTableItemManageData tbody").append(trHTML);
    });
}

//저장 버튼
function metaTableItemManageSave () {
    const checked_val = [];

    $("input:checkbox[name='checkList']:checked").each(function(k,kValue){
        let clBassChecked = "N";
        let clQlityChecked = "N";
        let clCntmChecked = "N";
        let clWdtbChecked = "N";
        let clCrltsChecked = "N";

        if($(this).parent().parent().find("#clBass").is(":checked")){
            clBassChecked = "Y";
        }
        if($(this).parent().parent().find("#clQlity").is(":checked")){
            clQlityChecked = "Y";
        }
        if($(this).parent().parent().find("#clCntm").is(":checked")){
            clCntmChecked = "Y";
        }
        if($(this).parent().parent().find("#clWdtb").is(":checked")){
            clWdtbChecked = "Y";
        }
        if($(this).parent().parent().find("#clCrlts").is(":checked")){
            clCrltsChecked = "Y";
        }

        const contents = {
            "dset_idntfc_id" : kValue.value,
            "cl_bass" : clBassChecked,
            "cl_qlity" : clQlityChecked,
            "cl_cntm" : clCntmChecked,
            "cl_wdtb" : clWdtbChecked,
            "cl_crlts" : clCrltsChecked,
        };
        checked_val.push(contents);
    })

    if(checked_val.length === 0){
        alert("저장할 항목을 선택해 주세요.");
        return;
    }

    let addStatus = true;
    if(window.confirm("저장하시겠습니까?")){
        setTimeout(() => {
            for(let i=0; i < checked_val.length; i++){
                console.log("metaTableItemManage Save Data", checked_val[i])
                const data = {
                    "dset_idntfc_id": checked_val[i].dset_idntfc_id,
                    "cl_bass": checked_val[i].cl_bass,
                    "cl_qlity": checked_val[i].cl_qlity,
                    "cl_cntm": checked_val[i].cl_cntm,
                    "cl_wdtb": checked_val[i].cl_wdtb,
                    "cl_crlts": checked_val[i].cl_crlts
                };

                ajaxPost('/dp/ingest/meta/item/save', data, function (data) {
                    if(data.contents[0].successYn === "Y"){
                        console.log('완료~dp_ingest_meta_item_save',data);
                    }else{
                        addStatus = false;
                        console.log('실패~dp_ingest_meta_item_save',data);
                    }
                });
            }
            if(addStatus){
                alert("선택한 항목이 정상적으로 저장되었습니다.");
                location.href="metaTableItemManage";
            }else{
                alert("선택한 항목중 일부 저장되지않았습니다.");
            }
        },1000)
    }
}

//전체선택 checked 해제
function metaCheckBox(value) {
    if(value === false){
        $("#check-all").prop("checked", false);
    }
}