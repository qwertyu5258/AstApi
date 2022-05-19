

collectErrListInit();
categoryInit();

function collectErrListInit () {

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "table_eng_nm": "UPIS_C_UQ151"
    };



    ajaxPost('/dp/ingest/popup/table_colum', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#processListCnt").html("총 "+obj.length+"개");
        $("#table1 tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr>`;
            trHTML += `<th></th>`;
            trHTML += `<th>${obj[i].column_korean_nm}</th>`;
            trHTML += `<th>${obj[i].column_eng_nm}</th>`;
            trHTML += `<th>${obj[i].column_stre_type}</th>`;
            trHTML += `<th>${obj[i].dset_lcdata_ltlas}</th>`;
            trHTML += `</tr>`;
        }
        $("#table1 tbody").append(trHTML);
    });
}

function dp_ingest_meta_tbl_col() {
    var data = {
        "user_id":"user_id",
        "table_idntfc_id" : "T0000000000000000011"
    };
    ajaxPost('/dp/ingest/meta/tables/column', data, function (data) {
        alert('완료~113');
    });
}
function dp_ingest_adapter_it_tbl() {
    var data = {
        "user_id":"user_id",
        "table_idntfc_id" : "T0000000000000000021"
    };
    ajaxPost('/dp/ingest/adapter/instance/table', data, function (data) {
        alert('완료~113');
    });
}
function dp_ingest_meta_tbl_make() {
    var data = {
        "user_id" : "userId",
        "table_eng_nm" : "roadtraffictttt"
    };
    ajaxPost('/dp/ingest/meta/tables/make', data, function (data) {
        alert('완료~113');
    });
}



/////////////////////////////////////////////////////////////////////////////////
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

function dp_ingest_adapter_it_source() {
    let url = new URL(window.location.href);
    let pre_id = url.searchParams.get('pre_id');

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "instance_id": "I0000000000000000122"
    };
    ajaxPost('/dp/ingest/adapter/instance/source', data, function (data) {
        console.log("업데이트 " + data.return_msg);
    });
}

function dp_ingest_adapter_it_source() {
    let url = new URL(window.location.href);
    let pre_id = url.searchParams.get('pre_id');

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "instance_id": "I0000000000000000122"
    };
    ajaxPost('/dp/ingest/adapter/instance/source', data, function (data) {
        console.log("업데이트 " + data.return_msg);
    });
}