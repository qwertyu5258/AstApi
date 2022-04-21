
let url = new URL(window.location.href);
let adapterId = url.searchParams.get('adapterId');

adaptorOperationInit();

function adaptorOperationInit () {
    ajaxGet('/dp/ingest/adapter/operation/'+adapterId, "", function (data) {
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
    ajaxGet('/dp/ingest/adapter/operation/instance/'+adapterId, "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#instanceListCnt").html("총 "+obj.length+"개");
        $("#instanceListData tbody").empty();

        /*for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr class="">`;
            trHTML += `<td>` + noCnt + `</td>`;
            trHTML += `<td>` + obj[i].instance_nm + `</td>`;
            trHTML += `<td>`;
            trHTML += `<button class="btn btn-sm btn-primary col-md-5" onclick="singleStartBtn('`+ obj[i].instance_id +`')">접속설정</button>`;
            trHTML += `</td>`;
            trHTML += `<td>` + obj[i].dset_korean_nm + `</td>`;
            trHTML += `<td>` + obj[i].clct_mthd + `</td>`;
            trHTML += `<td>` + obj[i].clct_ty + `</td>`;
            trHTML += `<td>` + obj[i].schedule_type + `</td>`;
            trHTML += `<td>` + obj[i].time_data_yn + `</td>`;
            trHTML += `<td>` + obj[i].use_yn + `</td>`;
            trHTML += `</tr>`;
        }
        $("#instanceListData tbody").append(trHTML);*/
    });
}

//목록 버튼
function adaptorConfigList() {
    location.href="adaptorConfig";
}

//adaptor 상세 - Adapter 수집 시작
function totalStartBtn() {

}

//adaptor 상세 - Adapter 수집 종료
function totalEndBtn() {

}
