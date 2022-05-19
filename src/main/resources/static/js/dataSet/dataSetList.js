

Init();

function Init() {

    let data = {
        "user_id":"user_id",
        "dset_lclas": $("#LargeCategory").val(),
        "dset_mclas": $("#MiddleCategory").val(),
        "dset_sclas": $("#SmallCategory").val(),
        "page_current":"2",
        "search_type":"dset_korean_nm",
        "search":"교통"
    };

    ajaxPost('/dp/load/dataset', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#allCnt").html("총 "+obj.length+"개");
        $("#instanceData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr onclick="clickList('${obj[i].instance_id}')">`;
            trHTML += `<th>${obj[i].dset_korean_nm}</th>`;
            trHTML += `<th>${obj[i].table_eng_nm}</th>`;
            trHTML += `<th>${obj[i].clct_mthd}</th>`;
            trHTML += `<th>${obj[i].clct_ty}</th>`;
            trHTML += `<th>${obj[i].dset_lclas}</th>`;
            trHTML += `<th>${obj[i].dset_mclas}</th>`;
            trHTML += `<th>${obj[i].dset_sclas}</th>`;
            trHTML += `<th>${obj[i].adapter_nm}</th>`;
            trHTML += `<th>${obj[i].instance_nm}</th>`;
            trHTML += `<th>${obj[i].schedule_yn}</th>`;
            trHTML += `<th>${obj[i].error_described}</th>`;
        }
        $("#instanceData tbody").append(trHTML);
    });
}


/////////////////////////////////////////////////////////////////////
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

function clickList(param1) {
    location.href="collectErrDetail?instance_id=" + param1;
}