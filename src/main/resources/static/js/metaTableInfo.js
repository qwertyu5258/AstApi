
const url = new URL(window.location.href);
const idntfcId = url.searchParams.get('idntfcId');

console.log("idntfcId ::", idntfcId);

$(document).ready(initTable);

function initTable () {

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

        //컬럼항목
        $("#metaTableInfoColDt").hide();
    });
}

//목록 버튼
function metaTableList () {
    location.href="metaTable";
}

//추가 버튼
function metaTableInfoAdd () {
    $("#metaTableInfoColDt").show();
}

//삭제 버튼
function metaTableInfoDel () {

}
