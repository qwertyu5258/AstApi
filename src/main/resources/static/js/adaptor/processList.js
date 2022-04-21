

processListInit();

function processListInit () {
    ajaxGet('/dp/ingest/pre', "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#processListCnt").html("총 "+obj.length+"개");
        $("#processListData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr class="">`;
            trHTML += `<td onclick="processListEdit('`+ obj[i].pre_id +`')">` + obj[i].pre_nm + `</td>`;
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
        "search": $("#SelectText").val()
    };
    ajaxGet('/dp/ingest/pre', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#processListCnt").html("총 "+obj.length+"개");
        $("#processListData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr class="">`;
            trHTML += `<td onclick="processListEdit('`+ obj[i].pre_id +`')">` + obj[i].pre_nm + `</td>`;
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
function processListEdit() {
    location.href="processRegist";
}


