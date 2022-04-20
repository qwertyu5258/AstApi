
let url = new URL(window.location.href);
let adapterId = url.searchParams.get('adapterId');

adaptorDetailInit();

function adaptorDetailInit () {
    ajaxGet('/dp/ingest/adapter/'+adapterId, "", function (data) {
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

        /*let trHTML = "";
        $("#adaptorDetailCnt").html("총 "+obj.length+"개");
        $("#adaptorDetailData tbody").empty();

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
        $("#adaptorDetailData tbody").append(trHTML);*/
    });
}

//검색
function instanceList() {
    ajaxGet('/dp/ingest/adapter/instance/'+adapterId, data, function (data) {
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
            trHTML += `<button class="btn btn-sm btn-primary col-md-5" onclick="propertyView('`+ obj[i].instance_id +`')">접속설정</button>`;
            trHTML += `<button class="btn btn-sm btn-primary col-md-5" onclick="matchView('`+ obj[i].instance_id +`')">매칭정보</button>`;
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

//등록 팝업
function instanceAdd() {
    let url = "/adaptorConfigPopup?view=edit&adapterId="+adapterId;
    let name = "metaTblReferPopup";
    let option = "width = 700, height = 700, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

//수정 팝업
function instanceEdit(adapterId) {
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

