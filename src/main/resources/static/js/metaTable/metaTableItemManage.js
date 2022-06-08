
let isChecked = false;
let isCheckedList = [false,false,false,false,false,false,false,false,false,false];
let tempSearchData = {};
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
    tempSearchData = data;
    ajaxPost('/dp/ingest/meta/item', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML ="";

        $("#metaTableItemManageCnt").html("총 "+data.totalcount+"개");
        $("#metaTableItemManageData tbody").empty();

        pageNation(data.page_no, 10, 1);
        markPage(1);

        for (let i = 0; i < pageNum * 10; i++) {
            let idntfcId = obj[i]?.dset_idntfc_id;
            trHTML += '<tr>';
            trHTML += '<input class="tableInfo" id="hiddenIdntfcId" type="hidden" value="'+idntfcId+'">';
            trHTML += '<td><label>' + obj[i]?.dset_lclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_mclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_sclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_korean_nm + '</label></td>';
            if(obj[i].cl_bass === "Y"){
                trHTML += `<td><input type="checkbox" class="checkbox" name="${i}" id="clBass" checked></td>`;
            }else{
                trHTML += `<td><input type="checkbox" class="checkbox" name="${i}" id="clBass"></td>`;
            }
            if(obj[i].cl_qlity === "Y"){
                trHTML += `<td><input type="checkbox" class="checkbox" name="${i}" id="clQlity" checked></td>`;
            }else{
                trHTML += `<td><input type="checkbox" class="checkbox" name="${i}" id="clQlity"></td>`;
            }
            if(obj[i].cl_cntm === "Y"){
                trHTML += `<td><input type="checkbox" class="checkbox" name="${i}" id="clCntm" checked></td>`;
            }else{
                trHTML += `<td><input type="checkbox" class="checkbox" name="${i}" id="clCntm"></td>`;
            }
            if(obj[i].cl_wdtb === "Y"){
                trHTML += `<td><input type="checkbox" class="checkbox" name="${i}" id="clWdtb" checked></td>`;
            }else{
                trHTML += `<td><input type="checkbox" class="checkbox" name="${i}" id="clWdtb"></td>`;
            }
            if(obj[i].cl_crlts === "Y"){
                trHTML += `<td><input type="checkbox" class="checkbox" name="${i}" id="clCrlts" checked></td>`;
            }else{
                trHTML += `<td><input type="checkbox" class="checkbox" name="${i}" id="clCrlts"></td>`;
            }
            trHTML += '</tr>';
        }
        $("#metaTableItemManageData tbody").append(trHTML);
    });
    initCheckbox();
}

//검색
function searchTbl(pageNum, type) {
    let data = {};
    if(type=='pageSelect'){
        data = tempSearchData;
        data.page_current = pageNum.toString();
    } else {
        data = {
            "user_id": "~~id",
            "dset_lclas": $("#LargeCategory").val(),
            "dset_mclas": $("#MiddleCategory").val(),
            "dset_sclas": $("#SmallCategory").val(),
            "search": $("#SelectText").val(),
            "page_current": pageNum == null ? "1" : pageNum.toString()
        };
        tempSearchData = data;
    }

    ajaxPost('/dp/ingest/meta/item', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML ="";
        $("#metaTableItemManageCnt").html("총 "+data.totalcount+"개");
        $("#metaTableItemManageData tbody").empty();

        pageNation(data.page_no, 10, pageNum);
        markPage(pageNum);

        for (let i = 0; i < data.contents.length; i++) {
            let idntfcId = obj[i]?.dset_idntfc_id;
            trHTML += '<tr>';
            trHTML += '<input class="tableInfo" id="hiddenIdntfcId" type="hidden" value="'+idntfcId+'">';
            trHTML += '<td><label>' + obj[i]?.dset_lclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_mclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_sclas + '</label></td>';
            trHTML += '<td><label>' + obj[i]?.dset_korean_nm + '</label></td>';
                if(obj[i]?.cl_bass === "Y"){
                    trHTML += `<td><input type="checkbox" name="${i}" class="checkbox" id="clBass" checked></td>`;
                }else{
                    trHTML += `<td><input type="checkbox" name="${i}" class="checkbox" id="clBass"></td>`;
                }
                if(obj[i]?.cl_qlity === "Y"){
                    trHTML += `<td><input type="checkbox" name="${i}" class="checkbox" id="clQlity" checked></td>`;
                }else{
                    trHTML += `<td><input type="checkbox" name="${i}" class="checkbox" id="clQlity"></td>`;
                }
                if(obj[i]?.cl_cntm === "Y"){
                    trHTML += `<td><input type="checkbox" name="${i}" class="checkbox" id="clCntm" checked></td>`;
                }else{
                    trHTML += `<td><input type="checkbox" name="${i}" class="checkbox" id="clCntm"></td>`;
                }
                if(obj[i]?.cl_wdtb === "Y"){
                    trHTML += `<td><input type="checkbox" name="${i}" class="checkbox" id="clWdtb" checked></td>`;
                }else{
                    trHTML += `<td><input type="checkbox" name="${i}" class="checkbox" id="clWdtb"></td>`;
                }
                if(obj[i]?.cl_crlts === "Y"){
                    trHTML += `<td><input type="checkbox" name="${i}" class="checkbox" id="clCrlts" checked></td>`;
                }else{
                    trHTML += `<td><input type="checkbox" name="${i}" class="checkbox" id="clCrlts"></td>`;
                }
            trHTML += '</tr>';
        }
        $("#metaTableItemManageData tbody").append(trHTML);
    });
    initCheckbox();
}

//저장 버튼(메타정보 항목관리 저장 : dp_ingest_meta_item_save)
function metaTableItemManageSave () {

    const checked_val = {
        "user_id": "userId",
        "list" : [],
    };

    $.each($("#metaTableItemManageData tbody tr"), function(index){
        if(isCheckedList[index] == false){
            return;
        }
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
    if(checked_val.list.length == 0){
        alert('변경 사항이 없습니다.');
        return;
    }
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
                // location.href="metaTableItemManage";
            }
        // },1000)
    }
}

// checkbox
function initCheckbox() {
    $('.checkbox').click(function (param1) {
        isChecked = true;
        isCheckedList[param1.target.name] = true;
    });
    isCheckedList = [false,false,false,false,false,false,false,false,false,false];
}
$("#SelectText").on("keyup", function (key) {
    if (key.keyCode == 13) {
        searchTbl(1);
    }
});
