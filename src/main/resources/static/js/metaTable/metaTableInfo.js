
let url = new URL(window.location.href);
let idntfcId = url.searchParams.get('idntfcId');
let tableKoreanNm = url.searchParams.get('table_korean_nm');
let tableEngNm = url.searchParams.get('table_eng_nm');

console.log("idntfcId ::", idntfcId);

metaTableInfoInit();

function metaTableInfoInit () {
    //컬럼항목
    $("#metaTableInfoColDt").hide();

    ajaxGet('/dp/ingest/meta/tables/'+idntfcId+'/column', "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;

        $("#metaTableInfoCnt").html("총 "+obj.length+"개");
        $("#metaTableInfo1 tbody").empty();

        $("#tableKoName").val(tableKoreanNm);
        $("#tableEnName").val(tableEngNm);

        for (let i = 0; i < obj.length; i++) {
            trHTML += '<tr class="">'
                + '<td><input class="tableInfo" type="checkbox" name="checkList" id="check'+i+'" value="'+obj[i].column_idntfc_id+'"></td>'
                + '<td><label>' + obj[i].column_korean_nm + '</label></td>'
                + '<td><label>' + obj[i].column_eng_nm + '</label></td>'
                + '<td><label>' + obj[i].data_type + '</label></td>'
                + '<td><label>' + obj[i].data_lt + '</label></td>'
                + '<td><label>' + obj[i].not_null_at + '</label></td>'
                + '<td><label>' + obj[i].dset_knd + '</label></td>'
                + '<td><label>' + obj[i].pk_info + '</label></td>'
                + '<td><label>' + obj[i].fk_info + '</label></td>'
                + '<td><label>' + obj[i].indvdl_info_at + '</label></td>'
                + '<td><label>' + obj[i].encpt_at + '</label></td>'
                + '<td><label>' + obj[i].ordr + '</label></td>'
                + '</tr>';
        }
        $("#metaTableInfo1 tbody").append(trHTML);
    });
}

//목록 버튼
function metaTableList () {
    location.href="metaTable";
}

//추가 버튼
function metaTableInfoAdd () {

    $("#column_korean_nm").val("");
    $("#refrn_table_idntfc_id").val("");
    $("#column_eng_nm").val("");
    $("#refrn_table_idntfc_nm").val("");
    $("#data_type").val("");
    $("#data_lt").val("");
    $("#refrn_column_idntfc_id").val("");
    $("#not_null_at").val("Y");
    $("#dset_knd").val("");
    $("#refrn_column_idntfc_nm").val("");
    $("#pk_info").val("Y");
    $("#fk_info").val("Y");
    $("#creat_table_at").val("");
    $("#use_at").val("Y");
    $("#column_stre_type").val("");
    $("#column_dc").val("");
    $("#crud_dc").val("");
    $("#ordr").val("");
    $("#indvdl_info_at").val("Y");
    $("#encpt_at").val("Y");
    $("#crud_se").val("");

    $("#metaTableInfoColDt").show();
}

//삭제 버튼
function metaTableInfoDel () {
    const metaTableChecked_val = [];

    $("input:checkbox[name='checkList']:checked").each(function(k,kValue){
        metaTableChecked_val.push(kValue.value);
    })

    if(metaTableChecked_val.length === 0){
        alert("삭제할 항목을 선택해 주세요.");
        return;
    }
    let delStatus = true;
    if(window.confirm("정말 삭제하시겠습니까?")){
        setTimeout(() => {
            for(let i=0; i < metaTableChecked_val.length; i++){
                ajaxPost('/dp/ingest/meta/tables/delete'+idntfcId+'/dataset/'+metaTableChecked_val[i], "", function (data) {
                    if(data.contents[0].successYn === "Y"){
                        console.log('완료~dp_ingest_meta_tbl_del_col',data);
                    }else{
                        console.log('실패~dp_ingest_meta_tbl_del_col',data);
                        delStatus = false;
                    }
                });
            }

            if(delStatus){
                alert("선택한 항목이 정상적으로 삭제되었습니다.");
                location.href="metaTableInfo?idntfcId="+idntfcId;
            }else{
                alert("선택한 항목중 일부 삭제되지않았습니다.");
            }
        },1000)
    }
}

//저장 버튼
function saveColumn () {
    const id_chk = column_tbl_id_chk();
    if(!id_chk){
        alert("컬럼_식별자 ID가 정상적으로 생성되지 않았습니다.");
        return;
    }
    const saveColumnData = {
        "column_idntfc_id" : id_chk,
        "rl_table_idntfc_id" : idntfcId,
        "dset_knd" : $('#dset_knd').val(),
        "ordr" : $('#ordr').val(),
        "refrn_table_idntfc_id" : $('#refrn_table_idntfc_id').val(),
        "refrn_column_idntfc_id" : $('#refrn_column_idntfc_id').val(),
        "table_eng_nm" : tableEngNm,
        "column_eng_nm" : $('#column_eng_nm').val(),
        "column_korean_nm" : $('#column_korean_nm').val(),
        "column_dc" : $('#column_dc').val(),
        "data_type" : $('#data_type').val(),
        "data_lt" : $('#data_lt').val(),
        "data_frmat" : null,
        "not_null_at" : $('#not_null_at').val(),
        "pk_info" : $('#pk_info').val(),
        "fk_info" : $('#fk_info').val(),
        "ak_info" : null,
        "rstrct_cnd" : null,
        "indvdl_info_at" : $('#indvdl_info_at').val(),
        "encpt_at" : $('#encpt_at').val(),
        "othbc_at" : null,
        "column_stre_type" : $('#column_stre_type').val(),
        "column_nm" : null,
        "crud_se": $('#crud_se').val(),
        "crud_dc": $('#crud_dc').val(),
        "use_at": $('#use_at').val(),
        "creat_table_at":$('#creat_table_at').val()
    }

    ajaxPost('/dp/ingest/meta/tables/save/column', saveColumnData, function (data) {
        if(data.contents[0].successYn === "Y"){
            console.log('완료~dp_ingest_meta_tbl_save_col',data);

            location.href="metaTableInfo?idntfcId="+idntfcId;
        }else{
            console.log('실패~dp_ingest_meta_tbl_save_col',data);
        }
    });
}

//참조 테이블 검색 팝업창
function refrnTablePopup() {
    let url = "/metaTblReferPopup";
    let name = "metaTblReferPopup";
    let option = "width = 700, height = 700, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

//컬럼_식별자_ID (컬럼_식별자 자동증가) - 식별자 C로시작 자리수 20자
function column_tbl_id_chk() {
    /*ajaxGet('/dp/ingest/meta/tables/dataset/id/check', "", function (data) {
        console.log('완료~dp_ingest_meta_tbl_dset_id_chk' ,data);
        return data.contents[0].dset_idntfc_id;
    });*/
}
