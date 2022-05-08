
let url = new URL(window.location.href);
let adapterId = url.searchParams.get('adapterId');

adaptorOperationInit();

function adaptorOperationInit () {

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "adapter_id": adapterId
    };

    ajaxPost('/dp/ingest/adapter/operation', data, function (data) {
        console.log(data);
        let obj = data.contents;

        $("#adaptorOperationId").html(adapterId);
        $("#adaptorOperationNm").html(obj[0].adapter_nm);
        if(obj[0].use_yn === "Y"){
            $("#adaptorOperationUseYn").html("사용");
        }else{
            $("#adaptorOperationUseYn").html("사용안함");
        }
        $("#adaptorOperationSEBtn").html(`<button class="btn btn-primary btn-sm" onclick="totalStartBtn();">시작</button>`);

        instanceList();
    });
}

//instance 상세목록
function instanceList() {

    let data = {
        "user_id": "ksy",
        "menu_id": "",
        "adapter_id": adapterId
    };


ajaxPost('/dp/ingest/adapter/operation/instance', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#adaptorOperationData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr class="">`;
            trHTML += `<td>` + noCnt + `</td>`;
            trHTML += `<td>` + obj[i].instance_nm + `</td>`;
            trHTML += `<td id="singleBtnArea">`;
            trHTML += `<button class="btn btn-sm btn-primary col-md-5" onclick="singleStartBtn(this, '`+ obj[i].instance_id +`')">시작</button>`;
            trHTML += `</td>`;
            trHTML += `<td>` + obj[i].active_yn + `</td>`;
            trHTML += `<td>` + obj[i].active_yn + `</td>`;
            trHTML += `<td>` + obj[i].active_yn + `</td>`;
            trHTML += `<td>` + obj[i].active_yn + `</td>`;
            trHTML += `<td>` + obj[i].active_yn + `</td>`;
            trHTML += `<td>` + obj[i].active_yn + `</td>`;
            trHTML += `</tr>`;
        }
        $("#adaptorOperationData tbody").append(trHTML);
    });
}

//목록 버튼
function adaptorConfigList() {
    location.href="adaptorConfig";
}

//adaptor 상세 - Adapter 수집 시작(dp_ingest_adapter_start)
function totalStartBtn() {
    const requestData = {
        "adapter_id" : adapterId,
    };

    $.ajax({
        type: 'post',
        url: '/dp/ingest/adapter/start',
        contentType:"application/json;charset=UTF-8",
        data: JSON.stringify(requestData),
        success: function(data, textStatus, xhr) {
            $("#adaptorOperationSEBtn").empty();
            $("#adaptorOperationSEBtn").html(`<button class="btn btn-primary btn-sm" onclick="totalEndBtn();">중지</button>`);
        },
        error: function(data, status, error) {
            console.log('ajax API(dp_ingest_adapter_start) Error: ' + data);
        }
    });
}

//adaptor 상세 - Adapter 수집 종료(dp_ingest_adapter_stop)
function totalEndBtn() {
    const requestData = {
        "adapter_id" : adapterId,
    };

    $.ajax({
        type: 'post',
        url: '/dp/ingest/adapter/stop',
        contentType:"application/json;charset=UTF-8",
        data: JSON.stringify(requestData),
        success: function(data, textStatus, xhr) {
            $("#adaptorOperationSEBtn").empty();
            $("#adaptorOperationSEBtn").html(`<button class="btn btn-primary btn-sm" onclick="totalStartBtn();">시작</button>`);
        },
        error: function(data, status, error) {
            console.log('ajax API(dp_ingest_adapter_stop) Error: ' + data);
        }
    });
}


//instance 상세 목록- 시작버튼(dp_ingest_adapter_it_start)
function singleStartBtn(element, instance_id) {
    const requestData = {
        "instance_id" : instance_id,
    };

    $.ajax({
        type: 'post',
        url: '/dp/ingest/adapter/instance/start',
        contentType:"application/json;charset=UTF-8",
        data: JSON.stringify(requestData),
        success: function(data, textStatus, xhr) {
            $(element).parent().find("#singleBtnArea").empty();
            $(element).parent().find("#singleBtnArea").append(`<button className="btn btn-sm btn-primary " onClick="singleEndBtn(this, '`+ instance_id +`');">중지</button>`);
        },
        error: function(data, status, error) {
            console.log('ajax API(dp_ingest_adapter_it_start) Error: ' + data);
        }
    });
}

//instance 상세 목록- 종료버튼(dp_ingest_adapter_stop)
function singleEndBtn(element, instance_id) {
    const requestData = {
        "instance_id" : instance_id,
    };

    $.ajax({
        type: 'post',
        url: '/dp/ingest/adapter/instance/stop',
        contentType:"application/json;charset=UTF-8",
        data: JSON.stringify(requestData),
        success: function(data, textStatus, xhr) {
            $(element).parent().find("#singleBtnArea").empty();
            $(element).parent().find("#singleBtnArea").append(`<button className="btn btn-sm btn-primary " onClick="singleStartBtn(this, '`+ instance_id +`')">중지</button>`);
        },
        error: function(data, status, error) {
            console.log('ajax API(dp_ingest_adapter_stop) Error: ' + data);
        }
    });
}