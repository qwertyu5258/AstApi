
let url = new URL(window.location.href);
let adapterId = url.searchParams.get('adapterId');

adaptorDetailInit();

function adaptorDetailInit () {
    ajaxPost('/dp/ingest/adapter/'+adapterId, "", function (data) {
        console.log(data);
        let obj = data.contents;

        $("#adapterDetalNm").val(obj[0].adapter_nm);
        if(obj[0].use_yn === "Y"){
            $("#adapterDetalUseYn").html("사용");
        }else{
            $("#adapterDetalUseYn").html("사용안함");
        }
        $("#adapterDetalTypeNm").html(obj[0].adapter_type_nm);

        instanceList();
    });
}

//instance 상세목록
function instanceList() {
    ajaxPost('/dp/ingest/adapter/instance/'+adapterId, "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#instanceListCnt").html("총 "+obj.length+"개");
        $("#instanceListData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr class="">`;
            trHTML += `<td>` + noCnt + `</td>`;
            trHTML += `<td onclick="instanceEdit('`+ obj[i].instance_id +`')">` + obj[i].instance_nm + `</td>`;
            trHTML += `<td>` + obj[i].dset_korean_nm + `</td>`;
            trHTML += `<td class="row">`;
            trHTML += `<button class="btn btn-sm btn-primary col-md-5" onclick="instanceView('`+ obj[i].instance_id +`')">접속설정</button>`;
            trHTML += `<button class="btn btn-sm btn-primary col-md-5" onclick="matchInfo('`+ obj[i].instance_id +`')">매칭정보</button>`;
            trHTML += `</td>`;
            trHTML += `<td>` + obj[i].clct_mthd + `</td>`;
            trHTML += `<td>` + obj[i].clct_ty + `</td>`;
            trHTML += `<td>` + obj[i].schedule_type + `</td>`;
            trHTML += `<td>` + obj[i].time_data_yn + `</td>`;
            trHTML += `<td>` + obj[i].use_yn + `</td>`;
            trHTML += `</tr>`;
        }
        $("#instanceListData tbody").append(trHTML);
    });
}

//목록 버튼
function adaptorConfigList() {
    location.href="adaptorConfig";
}

//instance 등록페이지
function instanceAdd() {
    let url = "/instanceAdd?adapterId="+adapterId;
    let name = "instanceAddPopup";
    let option = "width = 1300, height = 800, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

//instance 수정페이지
function instanceEdit(id) {
    let url = "/instanceUpdate?adapterId="+adapterId+"&instanceId="+id;
    let name = "instanceEditPopup";
    let option = "width = 1300, height = 800, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

//instance 상세페이지
function instanceView(id) {
    location.href="instanceDetail?instanceId="+id+"&adapterId="+adapterId;
}

//instance 매칭정보 화면
function matchInfo(id) {
    location.href="instanceConfig?instanceId="+id;
}

