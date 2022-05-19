

collectErrDetailInit();

function collectErrDetailInit () {

    let url = new URL(window.location.href);
    let instance_id = url.searchParams.get('instance_id');

    let data = {
        "user_id":"~~id",
        "instance_id": instance_id
    };

    ajaxPost('/dp/ingest/errors/detail', data, function (data) {
        console.log(data);

        let resultData = data.contents[0];

        $("#adapter_id").val(resultData.adapter_id);
        $("#adapter_nm").val(resultData.adapter_nm);
        $("#clct_mthd").val(resultData.clct_mthd);
        $("#clct_ty").val(resultData.clct_ty);
        $("#dset_korean_nm").val(resultData.dset_korean_nm);
        $("#dset_lclas").val(resultData.dset_lclas);
        $("#dset_mclas").val(resultData.dset_mclas);
        $("#dset_sclas").val(resultData.dset_sclas);
        $("#error_described").val(resultData.error_described);
        $("#instance_id").val(resultData.instance_id);
        $("#instance_nm").val(resultData.instance_nm);
        $("#match_process_yn").val(resultData.match_process_yn);
        $("#schedule_yn").val(resultData.schedule_yn);
        $("#table_eng_nm").val(resultData.table_eng_nm);
        $("#table_idntfc_id").val(resultData.table_idntfc_id);
        $("#instance_nm").val(resultData.instance_nm);
        $("#table_korean_nm").val(resultData.table_korean_nm);
        $("#table_process_yn").val(resultData.table_process_yn);



    });
}

//검색
function search() {
    const data = {
        "search": $("#SelectText").val()
    };
    ajaxPost('/dp/ingest/pre', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#processListCnt").html("총 "+obj.length+"개");
        $("#instanceData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr class="" onclick="processDetail('`+ obj[i].pre_id +`')" style="cursor:pointer">`;
            trHTML += `<td>` + obj[i].pre_nm + `</td>`;
            trHTML += `<td>` + obj[i].property_type + `</td>`;
            trHTML += `<td>` + obj[i].number_digit + `</td>`;
            trHTML += `<td>` + obj[i].change_shape + `</td>`;
            trHTML += `<td>` + obj[i].start_digit + `</td>`;
            trHTML += `<td>` + obj[i].end_digit + `</td>`;
            trHTML += `<td>` + obj[i].integer + `</td>`;
            trHTML += `<td>` + obj[i].decimal_point + `</td>`;
            trHTML += `<td>` + obj[i].change_word + `</td>`;
            trHTML += `<td>` + obj[i].pre_before + `</td>`;
            trHTML += `<td>` + obj[i].pre_after + `</td>`;
            trHTML += `</tr>`;
        }
        $("#instanceData tbody").append(trHTML);
    });
}

//등록 버튼
function processListAdd() {
    location.href="processRegist";
}

//전처리 상세페이지 이동
function processDetail() {
    location.href="processDetail";
}

function dp_ingest_pre_id_del_chk() {

    let url = new URL(window.location.href);
    let pre_id = url.searchParams.get('pre_id');
    let return_data;

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "pre_id" : pre_id
    };
    ajaxPost('/dp/ingest/pre/id/delete/check', data, function (data) {
        return_data = data;
    });
    return return_data;
}

function dp_ingest_pre_del() {

    let return_data = dp_ingest_pre_id_del_chk();

    if(return_data.return_code !== 200) {
        alert('Del check : ' + return_data.return_msg);
        return;
    }

    let url = new URL(window.location.href);
    let pre_id = url.searchParams.get('pre_id');

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "pre_id" : pre_id
    };
    ajaxPost('/dp/ingest/pre/delete', data, function (data) {
        alert('삭제 완료');
        console.log("삭제완료 " + data.return_msg);
    });
}

function dp_ingest_pre_update() {
    let url = new URL(window.location.href);
    let pre_id = url.searchParams.get('pre_id');

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "pre_id" : "P0000000000000000004",
        "pre_nm":"22",
        "property_type":"22",
        "number_digit":"22",
        "change_shape":"22",
        "pre_before":"22",
        "pre_after":"22",
        "start_digit":"11",
        "end_digit":"11",
        "integer":"11",
        "decimal_point":"11",
        "change_word":"11"
    };
    ajaxPost('/dp/ingest/pre/update', data, function (data) {
        alert('업데이트 완료');
        console.log("업데이트 " + data.return_msg);
    });
}

function toTblColChange() {
    let url = "tableColChangePopup";
    let name = "tableColChangePopup";
    let option = "width = 1420, height = 700, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

function toList() {
    location.href="collectErrList";
}