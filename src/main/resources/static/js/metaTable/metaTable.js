
var tableEngNmChk = false;      //데이터셋 영문명 중복체크 값

metaTableInit();

function metaTableInit () {
    $("#dataSetItem").hide();
    $("#tableItem").hide();

    ajaxGet('/dp/ingest/meta/tables', '', function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;

        $("#metaTableCnt").html("총 "+obj.length+"개");
        $("#metaTable1 tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let idntfcId = obj[i].rl_dset_idntfc_id + "@" + obj[i].table_idntfc_id;
            trHTML += '<tr class="">'
                + '<td><input class="tableInfo" type="checkbox" onclick="metaCheckBox(checked)" name="checkList" id="check'+i+'" value="'+idntfcId+'"></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].dset_lclas + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].dset_mclas + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].dset_sclas + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].clct_mthd + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].clct_ty + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].dset_korean_nm + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].table_korean_nm + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].table_eng_nm + '</label></td>,'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].creat_table_at + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].column_korean_nm + '</label></td>'
                + '<td><button class="btn btn-primary" style="width:100%" onclick="dp_ingest_meta_tbl_dset(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`,`'+ obj[i].table_eng_nm +'`)">바로가기</button></td>'
                + '</tr>';
        }
        $("#metaTable1 tbody").append(trHTML);
    });
}

//검색
function search() {
    const data = {
        "search": $("#SelectText").val(),
        "search_type": $("#SelectCategory").val(),
        "dset_lclas": $("#LargeCategory").val(),
        "dset_mclas": $("#MiddleCategory").val(),
        "dset_sclas": $("#SmallCategory").val(),
    };

    ajaxGet('/dp/ingest/meta/tables', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;
        $("#metaTableCnt").html("총 "+obj.length+"개");
        $("#metaTable1 tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let idntfcId = obj[i].rl_dset_idntfc_id + "@" + obj[i].table_idntfc_id;
            trHTML += '<tr class="">'
                + '<td><input class="tableInfo" type="checkbox" onclick="metaCheckBox(checked)" name="checkList" id="check'+i+'" value="'+idntfcId+'"></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].dset_lclas + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].dset_mclas + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].dset_sclas + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].clct_mthd + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].clct_ty + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].dset_korean_nm + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].table_korean_nm + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].table_eng_nm + '</label></td>,'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].creat_table_at + '</label></td>'
                + '<td onclick="dataSetTableData(`'+ idntfcId +'`,`view`)"><label>' + obj[i].column_korean_nm + '</label></td>'
                + '<td><button class="btn btn-primary" style="width:100%" onclick="dp_ingest_meta_tbl_dset(`'+ obj[i].table_idntfc_id +'`,`'+ obj[i].table_korean_nm +'`,`'+ obj[i].table_eng_nm +'`)">바로가기</button></td>'
                + '</tr>';
        }
        $("#metaTable1 tbody").append(trHTML);
    });
}

//추가 버튼
function metaTableAdd() {

    dataReset();
    tableEngNmChk = false;          //데이터셋 영문명 중복체크

    //저장버튼
    $("#dataSetItemSaveBtn").show();
    $("#tableItemSaveBtn").show();

    //수정버튼
    $("#dataSetItemEditBtn").hide();
    $("#tableItemEditBtn").hide();
    
    $("#dataSetItem").show();
    $("#tableItem").show();
}

//삭제 버튼
function metaTableDel() {
    const checked_val = [];

    $("input:checkbox[name='checkList']:checked").each(function(k,kValue){
        checked_val.push(kValue.value);
    })

    if(checked_val.length === 0){
        alert("삭제할 항목을 선택해 주세요.");
        return;
    }

    let delStatus = true;
    if(window.confirm("정말 삭제하시겠습니까?")){
        setTimeout(() => {
            for(let i=0; i < checked_val.length; i++){
                let delDestIdntfcId = checked_val[i].split("@")[0];

                ajaxPost('/dp/ingest/meta/tables/delete/'+delDestIdntfcId+'/dataset', "", function (data) {
                    console.log('완료~dp_ingest_meta_tbl_del_dset',data);
                });
            }

            if(delStatus){
                alert("선택한 항목이 정상적으로 삭제되었습니다.");
                location.href="metaTable";
            }else{
                alert("선택한 항목중 일부 삭제되지않았습니다.");
            }
        },1000)
    }
}

//테이블수정 버튼
function metaTableEdit() {
    const checked_val = [];

    $("input:checkbox[name='checkList']:checked").each(function(k, kValue){
        checked_val.push(kValue.value);
    })

    if(checked_val.length === 0){
        alert("수정할 항목을 선택해 주세요.");
        return;
    }else if(checked_val.length > 1){
        alert("하나의 항목을 선택해 주세요.");
        return;
    }

    dataSetTableData(checked_val[0], "edit");
}

function dataSetTableData(id,status) {
    let destIdntfcId = id.split("@")[0];
    let tableIdntfcId = id.split("@")[1];

    dataReset();

    //메타테이블 데이터셋 항목 상세
    ajaxGet('/dp/ingest/meta/tables/'+destIdntfcId+'/dataset', "", function (datasetData) {
        console.log('완료~dataset' ,datasetData);

        $("#dset_owner1").val(datasetData.contents[0].dset_owner);         //데이터셋_소유자
        $("#dset_lclas1").val(datasetData.contents[0].dset_lclas);         //데이터셋_대분류
        $("#dset_mclas1").val(datasetData.contents[0].dset_mclas);         //데이터셋_중분류
        $("#dset_sclas1").val(datasetData.contents[0].dset_sclas);         //데이터셋_소분류
        $("#clct_mthd1").val(datasetData.contents[0].clct_mthd);           //수집_방식
        $("#clct_ty1").val(datasetData.contents[0].clct_ty);               //수집유형
        $("#dset_korean_nm1").val(datasetData.contents[0].dset_korean_nm); //데이터셋_한글명
        $("#dset_dc1").val(datasetData.contents[0].dset_dc);               //데이터셋 설명
        $("#crud_se1").val(datasetData.contents[0].crud_se);               //CUD 구분
        $("#crud_dc1").val(datasetData.contents[0].crud_dc);               //CUD 설명
        $("#use_at1").val(datasetData.contents[0].use_at);                 //사용 여부
        $("#creat_table_at1").val(datasetData.contents[0].creat_table_at); //수집 테이블 생성 여부

        $("#hidden_dset_idntfc_id").val(datasetData.contents[0].dset_idntfc_id);  //데이터셋_식별_ID

        //메타테이블 항목 상세
        ajaxGet('/dp/ingest/meta/tables/'+tableIdntfcId+'/table', "", function (TableData) {
            console.log('완료~table' ,TableData);

            $("#table_korean_nm2").val(TableData.contents[0].table_korean_nm);      //테이블_한글명
            $("#table_dc").val(TableData.contents[0].table_dc);                     //테이블_설명
            $("#table_eng_nm2").val(TableData.contents[0].table_eng_nm);            //테이블_영문명
            $("#table_dset_knd").val(TableData.contents[0].dset_knd);               //테이블 데이터셋 셋종류
            $("#table_owner").val(TableData.contents[0].table_owner);               //테이블_소유자 ID
            $("#physic_table_ty").val(TableData.contents[0].physic_table_ty);       //테이블 유형
            $("#crud_se2").val(TableData.contents[0].crud_se);                      //CUD 구분
            $("#crud_dc2").val(TableData.contents[0].crud_dc);                      //CUD 설명
            $("#use_at2").val(TableData.contents[0].use_at);                        //사용 여부
            $("#creat_table_at2").val(TableData.contents[0].creat_table_at);        //수집 테이블 생성 여부

            $("#hidden_table_idntfc_id").val(TableData.contents[0].table_idntfc_id);  //테이블_식별자

            if(status === "edit"){
                $("#dataSetItemSaveBtn").hide();
                $("#tableItemSaveBtn").hide();

                $("#dataSetItemEditBtn").show();
                $("#tableItemEditBtn").show();
            }else if(status === "view"){
                $("#dataSetItemSaveBtn").hide();
                $("#tableItemSaveBtn").hide();

                $("#dataSetItemEditBtn").hide();
                $("#tableItemEditBtn").hide();
            }

            $("#dataSetItem").show();
            $("#tableItem").show();
        });
    });
}

//컬럼 정보 바로 가기
function dp_ingest_meta_tbl_dset(id, table_korean_nm, table_eng_nm) {
    location.href="metaTableInfo?idntfcId="+id+"&table_korean_nm="+table_korean_nm+"&table_eng_nm="+table_eng_nm;
}

//데이터셋 영문명 중복체크
function table_eng_nm_chk(){
    let tableEngNm = $('#table_eng_nm2').val();

    if(!tableEngNm){
        alert('데이터셋 영문명을 작성하세요');
        return;
    }

    ajaxGet(`/dp/ingest/meta/tables/`+tableEngNm+`/check`, "", function (data) {
        if(data.contents[0].successYn === "Y"){
            console.log('완료~dp_ingest_meta_tbl_chk',data);
            tableEngNmChk = true;
        }else{
            console.log('실패~dp_ingest_meta_tbl_chk',data);
            alert(data.returnMsg);
        }
    });
}

//데이터셋항목 저장
function saveDataSetItem() {
    const id_chk = meta_tbl_id_chk();
    if(!id_chk){
        alert("데이터셋_식별 ID가 정상적으로 생성되지 않았습니다.");
        return;
    }
    const data = {
        "dset_idntfc_id": id_chk,               //데이터셋_식별_ID
        "dset_owner": $("#dset_owner1").val(),  //데이터셋_소유자
        "dset_lclas": $("#dset_lclas1").val(),  //데이터셋_대분류
        "dset_mclas": $("#dset_mclas1").val(),  //데이터셋_중분류
        "dset_sclas": $("#dset_sclas1").val(),  //데이터셋_소분류
        "clct_mthd": $("#clct_mthd1").val(),    //수집_방식
        "clct_ty": $("#clct_ty1").val(),        //수집유형
        "logic_db_nm": "LX_DT_DMS",             //논리_DB명
        "dset_korean_nm": $("#dset_korean_nm1").val(), //데이터셋_한글명
        "dset_dc": $("#dset_dc1").val(),        //데이터셋 설명
        "idntfr": null,                         //주_식별자
        "supe_type_entity_nm": null,            //슈퍼타입_엔터티명
        "entity_iem_nm": null,                  //엔터티정의서_항목명
        "crud_se": $("#crud_se1").val(),        //CUD 구분
        "crud_dc": $("#crud_dc1").val(),        //CUD 설명
        "use_at": $("#use_at1").val(),          //사용 여부
        "creat_table_at": $("#creat_table_at1").val() //수집 테이블 생성 여부
    };
    ajaxPost('/dp/ingest/meta/tables/save/dataset', data, function (data) {
        if(data.contents[0].successYn === "Y"){
            console.log('완료~dp_ingest_meta_tbl_save_dset',data);
            ("#hidden_dset_idntfc_id").val(data.contents[0].dset_idntfc_id);  //데이터셋_식별_ID

            $("#dataSetItemSaveBtn").hide();
            $("#dataSetItemEditBtn").show();
        }else{
            console.log('실패~dp_ingest_meta_tbl_save_dset',data);
        }
    });
}

//데이터셋항목 수정
function editDataSetItem() {
    const edit_dset_idntfc_id = $('#hidden_dset_idntfc_id').val();

    const data = {
        "dset_idntfc_id": edit_dset_idntfc_id,               //데이터셋_식별_ID
        "dset_owner": $("#dset_owner1").val(),  //데이터셋_소유자
        "dset_lclas": $("#dset_lclas1").val(),  //데이터셋_대분류
        "dset_mclas": $("#dset_mclas1").val(),  //데이터셋_중분류
        "dset_sclas": $("#dset_sclas1").val(),  //데이터셋_소분류
        "clct_mthd": $("#clct_mthd1").val(),    //수집_방식
        "clct_ty": $("#clct_ty1").val(),        //수집유형
        "logic_db_nm": "LX_DT_DMS",             //논리_DB명
        "dset_korean_nm": $("#dset_korean_nm1").val(), //데이터셋_한글명
        "dset_dc": $("#dset_dc1").val(),        //데이터셋 설명
        "idntfr": null,                         //주_식별자
        "supe_type_entity_nm": null,            //슈퍼타입_엔터티명
        "entity_iem_nm": null,                  //엔터티정의서_항목명
        "crud_se": $("#crud_se1").val(),        //CUD 구분
        "crud_dc": $("#crud_dc1").val(),        //CUD 설명
        "use_at": $("#use_at1").val(),          //사용 여부
        "creat_table_at": $("#creat_table_at1").val() //수집 테이블 생성 여부
    };

    ajaxPost('/dp/ingest/meta/tables/update/dataset/'+edit_dset_idntfc_id, data, function (data) {
        if(data.returnCode === "0000"){
            console.log('완료~dp_ingest_meta_tbl_update_dset', data);
        }else{
            console.log('실패~dp_ingest_meta_tbl_update_dset', data);
        }
    });
}

//테이블 항목 저장
function saveTableItem() {
    if(!$('#hidden_dset_idntfc_id').val()){
        alert('데이터셋항목이 저장되지 않았습니다.');
        return;
    }

    if(!tableEngNmChk){
        alert('데이터셋 영문명 중복체크가 되지 않았습니다.');
        return;
    }

    const data = {
        "rl_dset_idntfc_id": $('#hidden_dset_idntfc_id').val(),     //데이터셋_식별자(필수)
        "dset_knd": $('#table_dset_knd').val(),                     //데이터셋_종류
        "physicl_db_nm":"LX_DT_DBS",                                //물리_DB명(필수)
        "table_owner": $('#table_owner').val(),                     //테이블_소유자
        "table_eng_nm": $('#table_eng_nm2').val(),                  //테이블_영문명(필수-소문자)
        "table_korean_nm": $('#table_korean_nm2').val(),            //테이블_한글명(필수)
        "physic_table_ty": $('#physic_table_ty').val(),             //테이블_유형
        "rl_entity_idntfc_id":null,                                 //관련_엔터티_식별자
        "table_dc": $('#table_dc').val(),                           //테이블_설명
        "cl_systm":null,                                            //업무_분류_체계
        "prsrv_pd":null,                                            //보존_기간
        "table_volum":null,                                         //테이블_볼륨
        "occrrnc_cycle":null,                                       //발생_주기
        "othbc_at":null,                                            //공개_여부
        "iem_nm":null,                                              //테이블정의서_항목명
        "crud_se": $('#crud_se2').val(),                            //CURD_구분
        "crud_dc": $('#crud_dc2').val(),                            //CURD_설명
        "use_at": $('#use_at2').val(),                              //사용_여부
        "creat_table_at": $('#creat_table_at2').val()               //수집_테이블_생성_여부
    };
    ajaxPost('/dp/ingest/meta/tables/save/table', data, function (data) {
        if(data.contents[0].successYn === "Y"){
            console.log('완료~dp_ingest_meta_tbl_save_tbl',data);
            ("#hidden_table_idntfc_id").val(data.contents[0].table_idntfc_id);  //데이터셋_식별_ID

            $("#tableItemSaveBtn").hide();
            $("#tableItemEditBtn").show();
        }else{
            console.log('실패~dp_ingest_meta_tbl_save_tbl',data);
        }
    });
}

//테이블 항목 수정
function editTableItem() {
    const edit_table_idntfc_id = $('#hidden_table_idntfc_id').val();

    const data = {
        "table_idntfc_id" : edit_table_idntfc_id,                   //테이블_식별자(필수)
        "rl_dset_idntfc_id": $('#hidden_dset_idntfc_id').val(),     //데이터셋_식별자(필수)
        "dset_knd": $('#table_dset_knd').val(),                     //데이터셋_종류
        "physicl_db_nm":"LX_DT_DBS",                                //물리_DB명(필수)
        "table_owner": $('#table_owner').val(),                     //테이블_소유자
        "table_eng_nm": $('#table_eng_nm2').val(),                  //테이블_영문명(필수-소문자)
        "table_korean_nm": $('#table_korean_nm2').val(),            //테이블_한글명(필수)
        "physic_table_ty": $('#physic_table_ty').val(),             //테이블_유형
        "rl_entity_idntfc_id":null,                                 //관련_엔터티_식별자
        "table_dc":null,                                            //테이블_설명
        "cl_systm":null,                                            //업무_분류_체계
        "prsrv_pd":null,                                            //보존_기간
        "table_volum":null,                                         //테이블_볼륨
        "occrrnc_cycle":null,                                       //발생_주기
        "othbc_at":null,                                            //공개_여부
        "iem_nm":null,                                              //테이블정의서_항목명
        "crud_se": $('#crud_se2').val(),                            //CURD_구분
        "crud_dc": $('#crud_dc2').val(),                            //CURD_설명
        "use_at": $('#use_at2').val(),                              //사용_여부
        "creat_table_at": $('#creat_table_at2').val()               //수집_테이블_생성_여부
    };

    ajaxPost('/dp/ingest/meta/tables/update/table/'+edit_table_idntfc_id, data, function (data) {
        if(data.returnCode === "0000"){
            console.log('완료~dp_ingest_meta_tbl_update_dset',data);
        }else{
            console.log('실패~dp_ingest_meta_tbl_update_dset',data);
        }
    });
}

//데이터셋_식별_ID (데이터셋ID 자동증가)
function meta_tbl_id_chk() {
    ajaxGet('/dp/ingest/meta/tables/dataset/id/check', "", function (data) {
        console.log('완료~dp_ingest_meta_tbl_dset_id_chk' ,data);
        return data.contents[0].dset_idntfc_id;
    });
}

//데이터 리셋
function dataReset () {
    //데이터셋
    $("#dset_korean_nm1").val("");
    $("#clct_mthd1").val("");
    $("#dset_dc1").val("");
    $("#dset_lclas1").val("");
    $("#clct_ty1").val("");
    $("#dset_mclas1").val("");
    $("#dset_owner1").val("S");
    $("#dset_sclas1").val("");
    $("#crud_se1").val("");
    $("#crud_dc1").val("");
    $("#use_at1").val("Y");
    $("#creat_table_at1").val("");

    //테이블 항목
    $("#table_korean_nm2").val("");
    $("#dset_dc2").val("");
    $("#table_eng_nm2").val("");
    $("#table_dset_knd").val("");
    $("#table_owner").val("");
    $("#physic_table_ty").val("");
    $("#crud_se2").val("");
    $("#crud_dc2").val("");
    $("#use_at2").val("Y");
    $("#creat_table_at2").val("");

    $("#hidden_dset_idntfc_id").val("");
    $("#hidden_table_idntfc_id").val("");
}

//전체선택 checked 해제
function metaCheckBox(value) {
    if(value === false){
        $("#check-all").prop("checked", false);
    }

}
//    test
function test1() {
    let data =
        {
            "dset_idntfc_id": "test03kk1",
            "cl_bass": "k",
            "cl_qlity": "k",
            "cl_cntm": "k",
            "cl_wdtb": "k",
            "cl_crlts": "k"
        };
    ajaxPost('/dp/ingest/meta/item/save', data, function (data) {
        alert('완료~113');
    });
}