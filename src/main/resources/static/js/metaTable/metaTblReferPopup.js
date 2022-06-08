
function initTable () {

    let url = new URL(window.location.href);
    let table_korean_nm = url.searchParams.get('table_korean_nm');


    let data = {
        "table_korean_nm":'',
        "user_id":"user_id"
    };

    ajaxPost('/dp/ingest/popup/meta_table', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;

        $("#metaTblReferPopupCnt").html("총 "+obj.length+"개");

        for (let i = 0; i < obj.length; i++) {
            trHTML += '<tr class="">'
                + '<td ondblclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].dset_korean_nm + '</td>'
                + '<td ondblclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].table_eng_nm + '</td>'
                + '<td ondblclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].table_korean_nm + '</td>'
                + '</tr>';
        }
        $("#metaTblReferPopupData tbody").append(trHTML);
    });
}

//검색
function metaTblReferPopupSearch() {

    const data = {
        "user_id":"~~id",
        "table_korean_nm": $("#tableKoNameModal").val()
    };

    ajaxPost('/dp/ingest/popup/meta_table', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;

        $("#metaTblReferPopupData tbody").empty()

        $("#metaTblReferPopupCnt").html("총 "+obj.length+"개");

        for (let i = 0; i < obj.length; i++) {
            trHTML += '<tr class="">'
                + '<td ondblclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].dset_korean_nm + '</td>'
                + '<td ondblclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].table_eng_nm + '</td>'
                + '<td ondblclick="metaTblReferSetData(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`)">' + obj[i].table_korean_nm + '</td>'
                + '</tr>';
        }
        if(data.contents.length == 0){
            trHTML += '<tr><td colspan="11" style="text-align: center">데이터가 없습니다.</td></tr>';
        }
        $("#metaTblReferPopupData tbody").append(trHTML);
    });
}

//선택값 전달
function metaTblReferSetData(tableIdntfcId,tableKoreanNm){
    // $(opener.document).find("#refrn_table_idntfc_id").val(tableIdntfcId);
    // $(opener.document).find("#refrn_table_idntfc_nm").val(tableKoreanNm);

    $("#refrn_table_idntfc_id").val(tableIdntfcId);
    $("#refrn_table_idntfc_nm").val(tableKoreanNm);

    let data = {
        "user_id":"~~id",
        "table_idntfc_id" : tableIdntfcId
    };
    ajaxPost('/dp/ingest/meta/tables/column', data, function (data) {
        console.log('/dp/ingest/meta/tables/column', data);

        let obj = data.contents;
        let openerList = [];

        $("#refrn_column_idntfc_id").empty();
        let selectHtml = "";
        selectHtml += `<option value="">선 택</option>`;
        for(let i=0; i < obj.length; i++){
            selectHtml += `<option name=${obj[i].column_eng_nm} value="`+obj[i].column_idntfc_id+`">`+obj[i].column_korean_nm+`</option>`;
            openerList.push({
                'column_korean_nm' : obj[i].column_korean_nm,
                'column_idntfc_id' : obj[i].column_idntfc_id,
                'column_eng_nm': obj[i].column_eng_nm,
            });
        }
        $("#refrn_column_idntfc_id").append(selectHtml);

        // setRefrn_column_idntfc_id(openerList);
        // window.opener.setRefrn_column_idntfc_id(openerList);
        // window.close();
        $('#modal1').modal('hide');
    });
        $('#refrn_column_idntfc_id_eng_nm').val('');
        $('#refrn_column_idntfc_nm').val('');
}

function metaTblReferSetDataFirst(tableIdntfcId){

    let data = {
        "user_id":"~~id",
        "table_idntfc_id" : tableIdntfcId
    };
    ajaxPost('/dp/ingest/meta/tables/column', data, function (data) {
        console.log('/dp/ingest/meta/tables/column', data);

        let obj = data.contents;
        let openerList = [];

        $("#refrn_column_idntfc_id").empty();
        let selectHtml = "";
        for(let i=0; i < obj.length; i++){
            selectHtml += `<option name=${obj[i].column_eng_nm} value="`+obj[i].column_idntfc_id+`">`+obj[i].column_korean_nm+`</option>`;
            openerList.push({
                'column_korean_nm' : obj[i].column_korean_nm,
                'column_idntfc_id' : obj[i].column_idntfc_id,
                'column_eng_nm': obj[i].column_eng_nm,
            });
        }
        $("#refrn_column_idntfc_id").append(selectHtml);
    });

}