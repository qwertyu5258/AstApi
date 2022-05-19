

metaTableItemManageInit(1);

//메타정보 항목관리 List(dp_ingest_meta_item)
function metaTableItemManageInit (pageNum) {
    //대분류 카테고리 가져오기
    categoryInit();

    var data = {
        "user_id":"~~id",
        "dset_lclas":"",
        "dset_mclas":"",
        "dset_sclas":"",
        "search": $("#SelectText").val(),
        "page_current":"1"
    };

    ajaxPost('/dp/ingest/meta/item', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML ="";

        $("#metaTableItemManageCnt").html("총 "+obj.length+"개");
        $("#metaTableItemManageData tbody").empty();

        pageNation(obj.length, 10, 1);

        for (let i = 0; i < pageNum * 10; i++) {
            let idntfcId = obj[i]?.dset_idntfc_id;
            trHTML += '<tr>';
            trHTML += '<input class="tableInfo" id="hiddenIdntfcId" type="hidden" value="'+idntfcId+'">';
            trHTML += '<td><label>' + obj[i]?.dset_lclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_mclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_sclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_korean_nm + '</label></td>';
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
function searchTbl(pageNum) {

    markPage(pageNum);

    var data = {
        "user_id":"~~id",
        "dset_lclas": $("#LargeCategory").val(),
        "dset_mclas": $("#MiddleCategory").val(),
        "dset_sclas": $("#SmallCategory").val(),
        "search":$("#SelectText").val(),
        "page_current": "1"
    };

    ajaxPost('/dp/ingest/meta/item', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML ="";
        $("#metaTableItemManageCnt").html("총 "+obj.length+"개");
        $("#metaTableItemManageData tbody").empty();

        for (let i = (pageNum -1 ) * 10; i < (obj.length < pageNum * 10 ? obj.length : pageNum * 10); i++) {
            let idntfcId = obj[i]?.dset_idntfc_id;
            trHTML += '<tr>';
            trHTML += '<input class="tableInfo" id="hiddenIdntfcId" type="hidden" value="'+idntfcId+'">';
            trHTML += '<td><label>' + obj[i]?.dset_lclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_mclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_sclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_korean_nm + '</label></td>';
                if(obj[i]?.cl_bass === "Y"){
                    trHTML += '<td><input type="checkbox" name="clBass" id="clBass" checked></td>';
                }else{
                    trHTML += '<td><input type="checkbox" name="clBass" id="clBass"></td>';
                }
                if(obj[i]?.cl_qlity === "Y"){
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clQlity" checked></td>';
                }else{
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clQlity"></td>';
                }
                if(obj[i]?.cl_cntm === "Y"){
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clCntm" checked></td>';
                }else{
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clCntm"></td>';
                }
                if(obj[i]?.cl_wdtb === "Y"){
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clWdtb" checked></td>';
                }else{
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clWdtb"></td>';
                }
                if(obj[i]?.cl_crlts === "Y"){
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clCrlts" checked></td>';
                }else{
                    trHTML += '<td><input type="checkbox" name="clQlity" id="clCrlts"></td>';
                }
            trHTML += '</tr>';
        }
        $("#metaTableItemManageData tbody").append(trHTML);
    });
}

//저장 버튼(메타정보 항목관리 저장 : dp_ingest_meta_item_save)
function metaTableItemManageSave () {
    const checked_val = {
        "user_id": "userId",
        "list" : [],
    };

    $.each($("#metaTableItemManageData tbody tr"), function(){
        let clBassChecked = "N";
        let clQlityChecked = "N";
        let clCntmChecked = "N";
        let clWdtbChecked = "N";
        let clCrltsChecked = "N";

        if($(this).find("#clBass").is(":checked")){
            clBassChecked = "Y";
        }
        if($(this).find("#clQlity").is(":checked")){
            clQlityChecked = "Y";
        }
        if($(this).find("#clCntm").is(":checked")){
            clCntmChecked = "Y";
        }
        if($(this).find("#clWdtb").is(":checked")){
            clWdtbChecked = "Y";
        }
        if($(this).find("#clCrlts").is(":checked")){
            clCrltsChecked = "Y";
        }

        const contents = {
            "user_id" : "~~id",
            "dset_idntfc_id" : $(this).find("#hiddenIdntfcId").val(),
            "cl_bass" : clBassChecked,
            "cl_qlity" : clQlityChecked,
            "cl_cntm" : clCntmChecked,
            "cl_wdtb" : clWdtbChecked,
            "cl_crlts" : clCrltsChecked,
        };
        checked_val.list.push(contents);
    });

    let addStatus = true;
    if(window.confirm("저장하시겠습니까?")){
        // setTimeout(() => {
        //     for(let i=0; i < checked_val.length; i++){
        //         console.log("metaTableItemManage Save Data", checked_val[i]);

                $.ajax({
                    type: 'post',
                    url: '/dp/ingest/meta/item/save',
                    contentType:"application/json;charset=UTF-8",
                    data: JSON.stringify(checked_val),
                    success: function(data, textStatus, xhr) {
                        console.log("dp_ingest_meta_item_save", data);
                    },
                    error: function(data, status, error) {
                        console.log('ajax Error ' + data);
                        addStatus =false;
                    }
                });
            // }
            if(addStatus){
                alert("정상적으로 저장되었습니다.");
                location.href="metaTableItemManage";
            }
        // },1000)
    }
}
