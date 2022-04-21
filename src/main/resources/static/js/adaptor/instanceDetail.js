
let url = new URL(window.location.href);
let instanceId = url.searchParams.get('instanceId');
let adapterId = url.searchParams.get('adapterId');

instanceDetailInit();

function instanceDetailInit () {
    ajaxGet('/dp/ingest/adapter/instance/'+instanceId+"/detail", "", function (data) {
        console.log(data);
        let obj = data.contents;

    });
}

//instance 상세목록
function instanceMatchList() {
    ajaxGet('/dp/ingest/adapter/instance/match/list/'+instanceId, "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#instanceMatchListData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr class="">`;
            trHTML += `<td>` + obj[i].column_eng_nm + `</td>`;
            trHTML += `<td>` + obj[i].column_stre_type + `</td>`;
            trHTML += `<td>`;
            trHTML += `<select id="columnEngNm"><option>` + obj[i].column_eng_nm + `</option></select>`;
            trHTML += `</td>`;
            trHTML += `<td>`;
            trHTML += `<input type="text" value="`+obj[i].source_path+`" disabled="disabled">`;
            trHTML += `</td>`;

            trHTML += `<td>`;
            trHTML += `<input type="text" value="`+obj[i].property_type+`" disabled="disabled">`;
            trHTML += `</td>`;
            trHTML += `<td>`;
            trHTML += `<input type="text" value="`+obj[i].pre_after+`" disabled="disabled">`;
            trHTML += `</td>`;
            trHTML += `</tr>`;
        }
        $("#instanceMatchListData tbody").append(trHTML);
    });
}

//목록 버튼
function adaptorDetailList() {
    location.href="adaptorDetail?adapterId="+adapterId;
}

//저장 버튼
function instanceConfigAdd() {

}

//ID설정 버튼
function instanceConfigIdSet() {

}


