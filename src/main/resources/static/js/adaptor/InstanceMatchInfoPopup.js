
let url = new URL(window.location.href);
let instanceId = url.searchParams.get('instanceId');
let instancePreData = {};
let instanceSourceData = {};

instanceConfigInit();



function instanceConfigInit () {

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "instance_id" : "I0000000000000000123"
    };

    ajaxPost('/dp/ingest/adapter/instance/match', data, function (data) {
        console.log(data);
        let obj = data.contents;

        $("#instanceNm").val(obj[0].instance_nm);
        $("#dsetKoreanNm").html(obj[0].dset_korean_nm);

        $("#table1 tbody").empty();

        let trHTML = '';

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr>`;
            trHTML += `<th>${obj[i].dset_idntfc_id}</th>`;
            trHTML += `<th>${obj[i].column_korean_nm}</th>`;
            trHTML += `<th>${obj[i].column_eng_nm}</th>`;
            trHTML += `<th>${obj[i].column_stre_type}</th>`;
            trHTML += `<th>${obj[i].dset_lcdata_ltlas}</th>`;
            trHTML += `</tr>`;
        }
        $("#table1 tbody").append(trHTML);


        // instancePreList();
    });
}

function dp_ingest_data_models_pp() {

    let table_idntfc_id = 'T0000000000000000001';

    ajaxGet('/dp/ingest/property/info/id/check?table_idntfc_id=' + table_idntfc_id, "", function (data) {

        console.log('dp_ingest_data_models_pp 호출');
    });
}

function dp_ingest_adapter_it_source() {

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "instance_id": "I0000000000000000122"
    };
    ajaxPost('/dp/ingest/adapter/instance/source', data, function (data) {
        alert('완료~113');
    });

}

function dp_ingest_adapter_it_pre() {
    let data = {
        "user_id" : "ksy",
        "menu_id": ""
    };
    ajaxPost('/dp/ingest/adapter/instance/pre', data, function (data) {
        alert('완료~113');
    });
}




//전처리조회 List
function instancePreList() {
    ajaxPost('/dp/ingest/adapter/instance/pre', "", function (data) {
        console.log("instancePreData ::",data.contents);
        instancePreData = data.contents;
    });
    // instanceSourceList();
}

//Source조회 List
// function instanceSourceList() {
//     ajaxPost('/dp/ingest/adapter/instance/pre', "", function (data) {
//         console.log("instanceSourceData ::",data.contents);
//         instanceSourceData = data.contents;
//     });
//     instanceMatchList();
// }

//instance 상세목록
function instanceMatchList() {

    let url = new URL(window.location.href);
    let instanceId = url.searchParams.get('instanceId');

    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "instance_id" : instanceId
    };

    ajaxPost('/dp/ingest/adapter/instance/match/list', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";

        $("#instanceMatchListData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr>`;
            trHTML += `<td>` + obj[i].column_eng_nm + `</td>`;
            trHTML += `<input type="hidden" id="column_eng_nm" value="`+obj[i].column_eng_nm+`" >`;
            trHTML += `<td>` + obj[i].column_stre_type + `</td>`;
            trHTML += `<input type="hidden" id="column_stre_type" value="`+obj[i].column_stre_type+`" >`;

            trHTML += `<td>`;
            trHTML += `<select id="sourceId">`;
            let sourcePath = "";
            for(let i=0; i < instanceSourceData.length; i++){
                if(instanceSourceData[i].source_id === obj[i].source_id){
                    trHTML += `<option value="` + instanceSourceData[i].source_id + `" selected>` + instanceSourceData[i].source_id + `</option>`;
                    sourcePath = instanceSourceData[i].source_path;
                }else{
                    trHTML += `<option value="` + instanceSourceData[i].source_id + `">` + instanceSourceData[i].source_id + `</option>`;
                }

            }
            trHTML += `</select>`;
            trHTML += `</td>`;

            trHTML += `<td>`;
            trHTML += `<input type="text" id="sourcePath" value="`+sourcePath+`" disabled="disabled">`;
            trHTML += `</td>`;

            trHTML += `<td>`;
            trHTML += `<select id="preId">`;
            let propertyNm = "";
            for(let i=0; i < instancePreData.length; i++){
                if(instancePreData[i].pre_id === obj[i].pre_id){
                    trHTML += `<option value="` + instancePreData[i].pre_id + `" selected>` + instancePreData[i].pre_nm + `</option>`;
                    propertyNm = instancePreData[i].pre_nm;
                }else{
                    trHTML += `<option value="` + instancePreData[i].pre_id + `">` + instancePreData[i].pre_nm + `</option>`;
                }

            }
            trHTML += `</select>`;
            trHTML += `</td>`;
            trHTML += `<input type="hidden" id="pre_nm" value="`+propertyNm+`" >`;
            trHTML += `<input type="hidden" id="ingest_yn" value="`+obj[i].ingest_yn+`" >`;
            trHTML += `<td>`;
            trHTML += `<input type="text" id="propertyType" value="`+obj[i].property_type+`" disabled="disabled">`;
            trHTML += `</td>`;
            trHTML += `<td>`;
            trHTML += `<input type="text" id="preAfter" value="`+obj[i].pre_after+`" disabled="disabled">`;
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
    const checked_val = [];

    $.each($("#instanceMatchListData tbody tr"), function(){
        const contents = {
            "Instance_ID" : instanceId,
            "column_eng_nm" : $(this).find("#column_eng_nm").val(),
            "column_stre_type" : $(this).find("#column_stre_type").val(),
            "source_id" : $(this).find("#sourceId").val(),
            "source_path" : $(this).find("#sourcePath").val(),
            "pre_nm" : $(this).find("#pre_nm").val(),
            "property_type" : $(this).find("#propertyType").val(),
            "pre_after" : $(this).find("#preAfter").val(),
            "pre_id" : $(this).find("#sourceId").val(),
            "ingest_yn" : $(this).find("#ingest_yn").val(),
        };
        checked_val.push(contents);
    })

}

//API 테이터 설정 버튼
function instanceConfigApiSet() {
    let url = "/apiDataSetPopup?instanceId="+instanceId;
    let name = "apiDataSetPopup";
    let option = "width = 1000, height = 800, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

//ID설정 버튼
function instanceConfigIdSet() {
    let url = "/idConfigPopup";
    let name = "idConfigPopup";
    let option = "width = 1000, height = 800, top = 100, left = 200, location = no";
    window.open(url, name, option);
}



    

