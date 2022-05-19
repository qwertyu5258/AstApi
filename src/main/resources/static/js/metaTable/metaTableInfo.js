
let url = new URL(window.location.href);
let idntfcId = url.searchParams.get('idntfcId');
let tableKoreanNm = url.searchParams.get('table_korean_nm');
let tableEngNm = url.searchParams.get('table_eng_nm');

console.log("idntfcId ::", idntfcId);

metaTableInfoInit();

function metaTableInfoInit () {
    //컬럼항목
    $("#metaTableInfoColDt").hide();

    let data = {
        "user_id": "user_id",
        "table_idntfc_id": idntfcId
    };

    ajaxPost('/dp/ingest/meta/tables/column', data, function (data) {
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
                + '<td onclick="colDtDataView(`'+ idntfcId +'`,`'+ obj[i].column_idntfc_id +'`)"><label>' + obj[i].column_eng_nm + '</label></td>'
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

    metaTableInfoReset();

    $("#metaTableInfoColDt").show();
}

//메타테이블 컬럼 삭제 체크 (dp_ingest_meta_tbl_del_chk_col)
//메타테이블 컬럼 삭제 버튼 (dp_ingest_meta_tbl_del_col)
function metaTableInfoDel () {
    const metaTableChecked_val = [];

    $("input:checkbox[name='checkList']:checked").each(function(k,kValue){
        metaTableChecked_val.push(kValue.value);
    })

    if(metaTableChecked_val.length === 0){
        alert("삭제할 항목을 선택해 주세요.");
        return;
    }

    setTimeout(() => {
        for(let i=0; i < metaTableChecked_val.length; i++){
            $.ajax({
                type: 'post',
                url: '/dp/ingest/meta/tables/delete/check/'+idntfcId+'/column/'+metaTableChecked_val[i],
                contentType:"application/json;charset=UTF-8",
                //data: JSON.stringify(param),
                success: function(data, textStatus, xhr) {
                    if(data.contents[0].chk_yn == 'Y') {
                        alert("삭제가 불가능한 컬럼이 있습니다.");
                    }else{
                        if(window.confirm("정말 삭제하시겠습니까?")){
                            setTimeout(() => {
                                for(let i=0; i < metaTableChecked_val.length; i++){
                                    ajaxPost('/dp/ingest/meta/tables/delete/'+idntfcId+'/dataset/'+metaTableChecked_val[i], "", function (data) {
                                        console.log('완료~dp_ingest_meta_tbl_del_col',data);
                                    });
                                }

                                alert("선택한 항목이 정상적으로 삭제되었습니다.");
                                location.href="metaTableInfo?idntfcId="+idntfcId;
                            },1000)
                        }
                    }
                },
                error: function(data, status, error) {
                    alert('ajax Error ' + data);
                }
            });
        }
    },1000)
}

//메타테이블 컬럼 항목 상세 (dp_ingest_meta_tbl_col_dt)
function colDtDataView(idntfcId, columnIdntfcId){
    metaTableInfoReset();

    let data = {
        "user_id":"~~id",
        "table_idntfc_id" : "T0000000000000000001",
        "column_idntfc_id":"C0000000000000000005"
    };

    ajaxPost('/dp/ingest/meta/tables/column/detail', data, function (data) {
        console.log("완료~dp_ingest_meta_tbl_col_dt ::",data);
        let obj = data.contents;

        $("#hidden_column_idntfc_id").val(obj[0].column_idntfc_id);

        $("#column_korean_nm").val(obj[0].column_korean_nm);
        $("#refrn_table_idntfc_id").val(obj[0].refrn_table_idntfc_id);
        $("#column_eng_nm").val(obj[0].column_eng_nm);
        $("#refrn_table_idntfc_nm").val("");
        $("#data_type").val(obj[0].data_type);
        $("#data_lt").val(obj[0].data_lt);
        $("#refrn_column_idntfc_id").val(obj[0].refrn_column_idntfc_id);
        $("#not_null_at").val(obj[0].not_null_at);
        $("#dset_knd").val(obj[0].dset_knd);
        $("#refrn_column_idntfc_nm").val(obj[0].refrn_column_idntfc_nm);
        $("#pk_info").val(obj[0].pk_info);
        $("#fk_info").val(obj[0].fk_info);
        $("#creat_table_at").val(obj[0].creat_table_at);
        $("#use_at").val(obj[0].use_at);
        $("#column_stre_type").val(obj[0].column_stre_type);
        $("#column_dc").val(obj[0].column_dc);
        $("#crud_dc").val(obj[0].crud_dc);
        $("#ordr").val(obj[0].ordr);
        $("#indvdl_info_at").val(obj[0].indvdl_info_at);
        $("#encpt_at").val(obj[0].encpt_at);
        $("#crud_se").val(obj[0].crud_se);
    });
}

//저장 버튼
function saveColumn() {

    const saveColumnData = {
        "user_id" : "~~id",

        "column_idntfc_id" : $("#hidden_column_idntfc_id").val(),
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
        "creat_table_at":$('#creat_table_at').val(),
        "menu_id" : $('#menu_id').val()
    };

    ajaxPost('/dp/ingest/meta/tables/save/column', saveColumnData, function (data) {
        console.log('완료~dp_ingest_meta_tbl_save_col',data);
        location.href="metaTableInfo?idntfcId="+idntfcId+"&table_korean_nm="+tableKoreanNm+"&table_eng_nm="+tableEngNm;
    });
}

//참조 테이블 검색 팝업창
function refrnTablePopup() {
    let url = "/metaTblReferPopup";
    let name = "metaTblReferPopup";
    let option = "width = 700, height = 700, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

function metaTableInfoReset(){
    $("#hidden_column_idntfc_id").val("");

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
}

$("#data_type").change( function(el) {
    if($("#data_type option:selected").text() == 'varchar' ) {
        $("#column_stre_type").val('String');
    } else if ($("#data_type option:selected").text() == 'integer'){
        $("#column_stre_type").val('Integer');
    } else if ($("#data_type option:selected").text() == 'nemeric'){
        $("#column_stre_type").val('Double');
    } else if ($("#data_type option:selected").text() == 'timestamp'){
        $("#column_stre_type").val('Date');
    }
});


