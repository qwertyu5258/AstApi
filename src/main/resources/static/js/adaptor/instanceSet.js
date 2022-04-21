

instanceSetInit();

function instanceSetInit () {
    ajaxGet('/dp/ingest/instance/property/type', "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#instanceSetData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr class="">`;
            trHTML += `<td><input class="tableInfo" type="checkbox" name="checkList" id="check'+i+'" value="`+obj[i].connect_id+`"></td>`;
            trHTML += `<select id="clctTy"><option>` + obj[i].clct_ty + `</option></select>`;
            trHTML += `<select id="clctMthd"><option>` + obj[i].clct_mthd + `</option></select>`;
            trHTML += `</tr>`;
        }
        $("#instanceSetData tbody").append(trHTML);
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
function instanceMetaInfo() {
    location.href="adaptorConfig";
}

//저장 버튼
function instanceConfigAdd() {

}

//ID설정 버튼
function instanceConfigIdSet() {

}


