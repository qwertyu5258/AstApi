

adaptorConfigInit();

function adaptorConfigInit () {
    ajaxGet('/dp/ingest/adapter', "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#adaptorConfigCnt").html("총 "+obj.length+"개");
        $("#adaptorConfigData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr class="">`;
            trHTML += `<td>` + noCnt + `</td>`;
            trHTML += `<td onclick="adaptorConfigEdit('`+ obj[i].adapter_id +`')">` + obj[i].adapter_nm + `</td>`;
            trHTML += `<td>` + obj[i].adapter_type_nm + `</td>`;
            trHTML += `<td>`;
            trHTML += `<button class="btn btn-sm btn-primary" onclick="adaptorOperationView('`+ obj[i].adapter_id +`')">운영</button>`;
            trHTML += `<button class="btn btn-sm btn-primary" onclick="adaptorDtView('`+ obj[i].adapter_id +`')">상세</button>`;
            trHTML += `</td>`;
            trHTML += `<td>` + obj[i].use_yn + `</td>`;
            trHTML += `<td>` + obj[i].instance_count + `</td>`;
            trHTML += `</tr>`;
        }
        $("#adaptorConfigData tbody").append(trHTML);
    });
}

//검색
function search() {
    const data = {
        "search": $("#adapterSearchText").val(),
        "search_type": $("#adapterSearchType").val()
    };

    ajaxGet('/dp/ingest/adapter', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#adaptorConfigCnt").html("총 "+obj.length+"개");
        $("#adaptorConfigData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr class="">`;
            trHTML += `<td>` + noCnt + `</td>`;
            trHTML += `<td onclick="javascript:adaptorConfigEdit('`+ obj[i].adapter_id +`')">` + obj[i].adapter_nm + `</td>`;
            trHTML += `<td>` + obj[i].adapter_type_nm + `</td>`;
            trHTML += `<td>`;
            trHTML += `<button class="btn btn-sm btn-primary" onclick="adaptorOperationView('`+ obj[i].adapter_id +`')">운영</button>`;
            trHTML += `<button class="btn btn-sm btn-primary" onclick="adaptorDtView('`+ obj[i].adapter_id +`')">상세</button>`;
            trHTML += `</td>`;
            trHTML += `<td>` + obj[i].use_yn + `</td>`;
            trHTML += `<td>` + obj[i].instance_count + `</td>`;
            trHTML += `</tr>`;
        }
        $("#adaptorConfigData tbody").append(trHTML);
    });
}

//등록 팝업
function adaptorConfigAdd() {
    let url = "/adaptorConfigPopup?view=add&adapterId=0";
    let name = "metaTblReferPopup";
    let option = "width = 700, height = 700, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

//수정 팝업
function adaptorConfigEdit(adapterId) {
    let url = "/adaptorConfigPopup?view=edit&adapterId="+adapterId;
    let name = "metaTblReferPopup";
    let option = "width = 700, height = 700, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

//운영 버튼
function adaptorOperationView(id) {
    location.href="adaptorOperation?adapterId="+id;
}

//상세 버튼
function adaptorDtView(id) {
    location.href="adaptorDetail?adapterId="+id;
}

