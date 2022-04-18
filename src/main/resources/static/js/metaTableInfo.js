
let url = new URL(window.location.href);
let idntfcId = url.searchParams.get('idntfcId');

console.log("idntfcId ::", idntfcId);

$(document).ready(initTable);

function initTable () {
    //컬럼항목
    $("#metaTableInfoColDt").hide();

    ajaxGet('/dp/ingest/meta/tables/'+idntfcId+'/column', "", function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;

        $("#metaTableInfoCnt").html("총 "+obj.length+"개");

        for (let i = 0; i < obj.length; i++) {
            trHTML += '<tr class="">'
                + '<td><input class="tableInfo" type="checkbox" name="checkList" id="check'+i+'" value="'+obj[i].column_idntfc_id+'"></td>'
                + '<td><label>' + obj[i].column_korean_nm + '</label></td>'
                + '<td><label>' + obj[i].column_eng_nm + '</label></td>'
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

}

//저장 버튼
function saveColumn () {
    const saveColumnData = {
        "column_idntfc_id" : "",
        "rl_table_idntfc_id" : idntfcId,
        "dset_knd" : $('#dset_knd').val(),
        "ordr" : $('#ordr').val(),
        "refrn_table_idntfc_id" : $('#refrn_table_idntfc_id').val(),
        "refrn_column_idntfc_id" : $('#refrn_column_idntfc_id').val(),
        "table_eng_nm" : "",
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
