

processListInit();

function processListInit () {

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "search" : "11"
    };

    ajaxPost('/dp/ingest/pre', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#processListCnt").html("총 "+data.totalcount+"개");
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

//검색
function search() {
    const data = {
        "user_id" : "ksy",
        "menu_id": "",
        "search": $("#SelectText").val()
    };
    ajaxPost('/dp/ingest/pre', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#processListCnt").html("총 "+data.totalcount+"개");
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
function processDetail(params1) {
    location.href="processDetail?pre_id=" + params1;
}


