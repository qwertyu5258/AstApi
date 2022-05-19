

processListInit();

function processListInit () {

    let url = new URL(window.location.href);
    let pre_id = url.searchParams.get('pre_id');

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "pre_id" : pre_id
    };


    ajaxPost('/dp/ingest/pre', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#processListCnt").html("총 "+obj.length+"개");
        $("#preProcessTable tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr>`;
            trHTML += `<th>전처리 명</th>`;
            trHTML += `<td colSpan="3">`;
            trHTML += `<input className="form-control col-md-5" type="text" value="${obj[i].pre_nm}">`;
            trHTML += `</td>`;
            trHTML += `</tr>`;
            trHTML += `<tr>`;
            trHTML += `<th>속성유형</th> `;
            trHTML += `<td>`;
            trHTML += `<select className="form-control col-md-12">`;
            trHTML += `<option>Choose option</option>`;
            trHTML += `<option>Option two</option>`;
            trHTML += `<option>Option three</option>`;
            trHTML += `<option>Option four</option>`;
            trHTML += `</select>`;
            trHTML += `</td>`;
            trHTML += `<th>자리수</th>`;
            trHTML += `<td><input className="form-control col-md-12" type="text" value="${obj[i].number_digit}"></td>`;
            trHTML += `</tr>`;
            trHTML += `<tr>`;
            trHTML += `<th>변경유형</th>`;
            trHTML += `<td>`;
            trHTML += `<select className="form-control">`;
            trHTML += `<option>Choose option</option>`;
            trHTML += `<option>Option two</option>`;
            trHTML += `<option>Option three</option>`;
            trHTML += `<option>Option four</option>`;
            trHTML += `</select>`;
            trHTML += `</td>`;
            trHTML += `<th>변경모양</th>`;
            trHTML += `<td><input className="form-control" type="text" value="${obj[i].change_shape}"></td>`;
            trHTML += `</tr>`;
            trHTML += `<tr>`;
            trHTML += `<th>시작 자리수</th>`;
            trHTML += `<td>`;
            trHTML += `<input className="form-control" type="text" value="${obj[i].start_digit}">`;
            trHTML += `</td>`;
            trHTML += `<th>끝 자리수</th>`;
            trHTML += `<td><input className="form-control" type="text" value="${obj[i].end_digit}"></td>`;
            trHTML += `</tr>`;
            trHTML += `<tr>`;
            trHTML += `<th>전처리 전</th>`;
            trHTML += `<td><input className="form-control" type="text" value="${obj[i].pre_before}"></td>`;
            trHTML += `</td>`;
            trHTML += `<th>전처리 후</th>`;
            trHTML += `<td><input className="form-control" type="text" value="${obj[i].pre_after}"></td>`;
            trHTML += `</tr>`;
            trHTML += `<tr style="height: 20px"></tr>`;
            
        }
        $("#preProcessTable tbody").append(trHTML);
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
        $("#processListData tbody").empty();

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
        $("#processListData tbody").append(trHTML);
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
