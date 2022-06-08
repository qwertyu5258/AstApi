
let url = new URL(window.location.href);
let idntfcId = url.searchParams.get('idntfcId');
let dataList1;
// let tableKoreanNm = url.searchParams.get('table_korean_nm');
// let tableEngNm = url.searchParams.get('table_eng_nm');


console.log("idntfcId ::", idntfcId);

metaTableInfoInit();
function metaTableInfoInit () {


    let data = {
        "user_id":"user_id",
        "table_idntfc_id" : idntfcId
    };

    ajaxPost('/dp/ingest/meta/tables/table', data, function (data) {
        console.log('dp_ingest_meta_tbl_tbl');
        $("#tableKoName").val(data.contents[0].table_korean_nm);
        $("#tableEnName").val(data.contents[0].table_eng_nm);
    });


    //컬럼항목
    $("#metaTableInfoColDt").hide();

    data = {
        "user_id": "user_id",
        "table_idntfc_id": idntfcId
    };
    $("#metaTableInfo1 tbody").append(`<tr style="text-align:center"><td colspan='12'>데이터가 없습니다</td></tr>`);

    ajaxPost('/dp/ingest/meta/tables/column', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;

        dataList1 = obj;
        $("#metaTableInfoCnt").html("총 "+data.totalCount+"개");
        // pageNation(data.page_no, 10, 1);
        // markPage(1);

        // $("#tableKoName").val(tableKoreanNm);
        // $("#tableEnName").val(tableEngNm);

        for (let i = 0; i < obj.length; i++) {
            trHTML += '<tr class=""  onclick="colDtDataView(`'+ idntfcId +'`,`'+ obj[i].column_idntfc_id +'`)">'
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
        if(data.contents.length == 0){
            trHTML += '<tr><td colspan="11" style="text-align: center">데이터가 없습니다.</td></tr>';
        }
        $("#metaTableInfo1 tbody").empty();
        $("#metaTableInfo1 tbody").append(trHTML);
    });
    tableInfoInit();
}

//목록 버튼
function metaTableList () {
    location.href="metaTable";
}

//추가 버튼
function metaTableInfoAdd () {
    metaTableInfoReset();
    $("#colSaveBtn").text('저장');
    $("#metaTableInfoColDt").show();
}

//메타테이블 컬럼 삭제 체크 (dp_ingest_meta_tbl_del_chk_col)
//메타테이블 컬럼 삭제 버튼 (dp_ingest_meta_tbl_del_col)
function metaTableInfoDel () {
    const metaTableChecked_val = [];

    $("input:checkbox[name='checkList']:checked").each(function(k,kValue){
        metaTableChecked_val.push(kValue.value);
    });

    if(metaTableChecked_val.length === 0){
        alert("삭제할 항목을 선택해 주세요.");
        return;
    }
    let data = {
        "user_id":"user_id",
        "table_idntfc_id" : idntfcId,
        "column_idntfc_id" : $("input:checkbox[name='checkList']:checked")[0].value
    }
    $.ajax({
        type: 'post',
        url: '/dp/ingest/meta/tables/delete/check/column',
        contentType: "application/json;charset=UTF-8",
        data: JSON.stringify(data),
        success: function (data, textStatus, xhr) {
            if (data.contents[0].chk_yn == 'Y') {
                alert("삭제가 불가능한 컬럼이 있습니다.");
            } else {
                if (window.confirm("정말 삭제하시겠습니까?")) {
                    let data = {
                        "user_id": "userId",
                        "table_idntfc_id": idntfcId,
                        "column_idntfc_id": $("input:checkbox[name='checkList']:checked")[0].value
                    };
                    // ajaxPost('/dp/ingest/meta/tables/delete/'+idntfcId+'/dataset/'+metaTableChecked_val[i], "", function (data) {
                    ajaxPost('/dp/ingest/meta/tables/delete/column', data, function (data) {
                        console.log('완료~dp_ingest_meta_tbl_del_col', data);
                        alert("선택한 항목이 정상적으로 삭제되었습니다.");
                        location.href = "metaTableInfo?idntfcId=" + idntfcId;
                    });
                }
            }
        },
        error: function (data, status, error) {
            alert('ajax Error ' + data);
        }
    });
}

//메타테이블 컬럼 항목 상세 (dp_ingest_meta_tbl_col_dt)
function colDtDataView(idntfcId, columnIdntfcId){

    $('#data_lt'). prop('readonly', false);

    $("#colSaveBtn").text('수정');
    
    $("#metaTableInfoColDt").show();
    metaTableInfoReset();

    let data = {
        "user_id":"~~id",
        "table_idntfc_id" : idntfcId,
        "column_idntfc_id":columnIdntfcId
    };

    ajaxPost('/dp/ingest/meta/tables/column/detail', data, function (data) {
        console.log("완료~dp_ingest_meta_tbl_col_dt ::",data);
        let obj = data.contents;

        $("#hidden_column_idntfc_id").val(obj[0].column_idntfc_id);

        $("#column_korean_nm").val(obj[0].column_korean_nm);
        $("#refrn_table_idntfc_id").val(obj[0].refrn_table_idntfc_id);
        $("#column_eng_nm").val(obj[0].column_eng_nm);
        $("#old_column_eng_nm").val(obj[0].column_eng_nm);

        // 참조테이블명 참조 테이블명 : dp_ingest_meta_tbl_tbl 로 호출
        // $("#refrn_table_idntfc_nm").val(obj[0].refrn_table_idntfc_id_nm);
        $("#data_type").val(obj[0].data_type);
        if(obj[0].data_type == 'INTEGER' || obj[0].data_type == 'TIMESTAMP'){
            $('#data_lt'). prop('readonly', true);
        } else {
            $('#data_lt'). prop('readonly', false);
        }
        $("#data_lt").val(obj[0].data_lt);

        $("#not_null_at").val(obj[0].not_null_at);
        $("#table_dset_knd").val(obj[0].dset_knd);

        // metaTblReferSetDataFirst(obj[0].rl_table_idntfc_id);

        $("#refrn_column_idntfc_id").val(obj[0].refrn_column_idntfc_id);

        $("#refrn_column_idntfc_id_eng_nm").val(obj[0].refrn_column_idntfc_id_eng_nm);
        $("#refrn_column_idntfc_nm").val(obj[0].refrn_column_idntfc_id);

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

        dp_ingest_meta_tbl_tbl(obj[0].refrn_table_idntfc_id);
        metaTblReferSetDataFirst(obj[0].refrn_table_idntfc_id);
        $("#refrn_column_idntfc_id").val(obj[0].refrn_column_idntfc_id);
    });
}

function dp_ingest_meta_tbl_tbl(table_idntfc_id) {
    let data = {
        "user_id":"user_id",
        "table_idntfc_id" : table_idntfc_id
    };

    ajaxPost('/dp/ingest/meta/tables/table', data, function (data) {
        console.log('dp_ingest_meta_tbl_tbl');
        $("#refrn_table_idntfc_nm").val(data.contents[0]?.table_korean_nm);
    });
}
function dp_ingest_meta_tbl_col(table_idntfc_id) {
    let data = {
        "user_id":"user_id",
        "table_idntfc_id" : table_idntfc_id
    };

    ajaxPost('/dp/ingest/meta/tables/column', data, function (data) {
        console.log('dp_ingest_meta_tbl_col');
        // $("#refrn_column_idntfc_id").val(data.contents[0].table_korean_nm);
    });
}



//저장 버튼
function saveColumn() {

    let checkYN = checkColumnEngNm();
    if(checkYN == false){
        // 중복값처리
        return;
    }

    if($("#colSaveBtn").text() == '수정'){
        editColumn();
        return;
    }

    const saveColumnData = {
        "user_id" : "~~id",

        "column_idntfc_id" : $("#hidden_column_idntfc_id").val(),
        "rl_table_idntfc_id" : idntfcId,
        "dset_knd" : $('#table_dset_knd').val(),
        "ordr" : parseInt($('#ordr').val()),
        "refrn_table_idntfc_id" : $('#refrn_table_idntfc_id').val(),
        "refrn_column_idntfc_id" : $('#refrn_column_idntfc_id').val(),
        "table_eng_nm" : $("#tableEnName").val(),
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
        "menu_id" : $('#menu_id').val(),
    };

    ajaxPost('/dp/ingest/meta/tables/save/column', saveColumnData, function (data) {
        console.log('완료~dp_ingest_meta_tbl_save_col',data);
        alert('저장 완료');

        $("#metaTableInfoColDt").hide();
        metaTableInfoInit();
    });
}
//저장 버튼
function editColumn() {


    let data = {
        "user_id":"user_id",
        "column_idntfc_id":"C0000000000000000091",
        "rl_table_idntfc_id":"T0000000000000000007",
        "dset_knd" : $('#table_dset_knd').val(),
        "ordr":20,

        "refrn_table_idntfc_id":null,
        "refrn_column_idntfc_id":null,
        "table_eng_nm":"UPIS_C_UQ151",
        "column_eng_nm":"SIGNGU_SE",
        "column_korean_nm":"시군구코드",

        "column_dc":"시군구코드",
        "data_type":"VARCHAR",
        "data_lt":"5",
        "data_frmat":null,
        "not_null_at":"N",

        "pk_info":null,
        "fk_info":null,
        "ak_info":null,
        "rstrct_cnd":null,
        "indvdl_info_at":null,

        "encpt_at":null,
        "othbc_at":null,
        "column_stre_type":null,
        "column_nm":null,
        "crud_se":null,

        "crud_dc":"UPDATE",
        "use_at":null,
        "creat_table_at":null
    };

    const saveColumnData = {
        "user_id" : "~~id",
        "column_idntfc_id" : $("#hidden_column_idntfc_id").val(),
        "rl_table_idntfc_id" : idntfcId,
        "dset_knd" : $('#table_dset_knd').val(),
        "ordr" : parseInt($('#ordr').val()),

        "refrn_table_idntfc_id" : $('#refrn_table_idntfc_id').val(),
        "refrn_column_idntfc_id" : $('#refrn_column_idntfc_id').val(),
        "table_eng_nm" : $("#tableEnName").val(),
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
        // "menu_id" : $('#menu_id').val()
    };



    ajaxPost('/dp/ingest/meta/tables/update/column', saveColumnData, function (data) {
        console.log('완료~/dp/ingest/meta/tables/update/column',data);
        alert('수정 완료');
        // location.href="metaTableInfo?idntfcId="+idntfcId+"&table_korean_nm="+tableKoreanNm+"&table_eng_nm="+tableEngNm;
    });
}

//참조 테이블 검색 팝업창
function refrnTablePopup() {
    let table_korean_nm = $('#column_korean_nm').val();
    let url = "/metaTblReferPopup";
    let name = "metaTblReferPopup";
    let option = "width = 700, height = 700, top = 100, left = 200, location = no";
    window.open(url, name, option);
}

function metaTableInfoReset(){
    $("#hidden_column_idntfc_id").val("");

    $("#column_korean_nm").val("");
    $("#refrn_table_idntfc_id").val("");
    $("#column_eng_nm").val("");
    $("#old_column_eng_nm").val("");
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
    $("#refrn_column_idntfc_id_eng_nm").val("");

}

$("#data_type").change( function(el) {
    if($("#data_type option:selected").text() == 'VARCHAR' ) {
        $("#column_stre_type").val('String');
        $('#data_lt'). prop('readonly', false);
    } else if ($("#data_type option:selected").text() == 'INTEGER'){
        $("#column_stre_type").val('Integer');
        $("#data_lt").val('');
        $('#data_lt'). prop('readonly', true);
    } else if ($("#data_type option:selected").text() == 'NUMERIC'){
        $("#column_stre_type").val('Double');
        $('#data_lt'). prop('readonly', false);
    } else if ($("#data_type option:selected").text() == 'TIMESTAMP'){
        $("#column_stre_type").val('Date');
        $("#data_lt").val('');
        $('#data_lt'). prop('readonly', true);
    }
});

// function setRefrn_column_idntfc_id(param1) {
//     refrn_table_idntfc_nm_list = param1;
// }

$("#refrn_column_idntfc_id").change( function(el) {
    // console.log(refrn_table_idntfc_nm_list);
    //
    // let engName1 = _.filter(refrn_table_idntfc_nm_list, data => data.column_korean_nm == $("#refrn_column_idntfc_id option:selected").text())[0];

    $('#refrn_column_idntfc_nm').val(el.target.value);
    $('#refrn_column_idntfc_id_eng_nm').val($("#refrn_column_idntfc_id option:selected").attr('name'));

});

$("#tableKoNameModal").on("keyup", function (key) {
    if (key.keyCode == 13) {
        metaTblReferPopupSearch();
    }
});

function tableInfoInit() {
    $('.tableInfo').click(function (param1) {

        if ($(`#${param1.target.id}`)[0].checked == false) {
            $(`#${param1.target.id}`).prop('checked', false);
            return;
        }
        $(".tableInfo").prop('checked', false);
        $(`#${param1.target.id}`).prop('checked', true);
    });
}

function checkColumnEngNm() {
    let engName = $('#column_eng_nm').val();
    let checkedList = _.filter(dataList1, data => data.column_eng_nm == engName);

    let checkType = /^[a-z0-9_]*$/;
    if (!engName) {
        alert('테이블 영문명을 작성하세요.');
        return false;
    }
    if (!checkType.test(engName)) {
        alert('소문자나 숫자를 입력하세요.');
        return false;
    }

    if($('#old_column_eng_nm').val() == $('#column_eng_nm').val()){
        return true;
    }
    if(checkedList.length > 0){
        alert('중복값이 있습니다.');
        return false;
    }
}