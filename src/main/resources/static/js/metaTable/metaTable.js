var tableEngNmChk = false;      //데이터셋 영문명 중복체크 값
let tempSearchData = {};
metaTableInit(1);

dp_cm_codes_clct_mthd();
dp_cm_codes_clct_ty();

//메타테이블 관리 테이블정보 (dp_ingest_meta_tbl)
function metaTableInit(pageNum) {
    //대분류 카테고리 가져오기
    categoryInit();
    $("#dataSetItem").hide();
    $("#tableItem").hide();
    let data = {
        "user_id": "user_id",
        "search_type": "dset_korean_nm",
        "search": "",
        "dset_lclas": "",
        "dset_mclas": "",
        "dset_sclas": "",
        "page_current": "1"
    };
    tempSearchData = data;

    ajaxPost('/dp/ingest/meta/tables', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;

        $("#metaTableCnt").html("총 " + data.totalcount + "개");
        $("#metaTable1 tbody").empty();

        pageNation(data.page_no, 10, 1);
        markPage(1);

        for (let i = 0; i < obj.length; i++) {
            let idntfcId = obj[i]?.rl_dset_idntfc_id + "@" + obj[i]?.table_idntfc_id;
            trHTML += '<tr>'
                + '<td><input class="tableInfo" type="checkbox" name="checkList" id="check' + i + '" value="' + idntfcId + '"></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.dset_lclas + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.dset_mclas + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.dset_sclas + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.clct_mthd + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.clct_ty + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.dset_korean_nm + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.table_korean_nm + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label id="tableEngNm' + (i) + '">' + obj[i]?.table_eng_nm + '</label></td>,'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label id="creat_table_at' + i + '">' + (obj[i]?.creat_table_at == null ? 'N' : obj[i].creat_table_at) + '</label></td>'
                + '<td><button class="btn btn-primary" style="width:100%" onclick="dp_ingest_meta_tbl_dset(`' + obj[i].table_idntfc_id + '`,`' + obj[i].table_korean_nm + '`,`' + obj[i].table_eng_nm + '`)">바로가기</button></td>'
                + '</tr>';
        }
        $("#metaTable1 tbody").append(trHTML);
    });
    tableInfoInit();
}

//검색
function searchTbl(pageNum, type) {

    $("#dataSetItem").hide();
    $("#tableItem").hide();

    let data = {};

    if(type=='pageSelect'){
        data = tempSearchData;
        data.page_current = pageNum.toString();
    } else {
        data = {
            "user_id": '~~id',
            "search": $("#SelectText").val(),
            "search_type": $("#SelectCategory").val(),
            "dset_lclas": $("#LargeCategory").val(),
            "dset_mclas": $("#MiddleCategory").val(),
            "dset_sclas": $("#SmallCategory").val(),
            "page_current": pageNum == null ? "1" : pageNum.toString()
        };
        tempSearchData = data;
    }


    // {
    //     "user_id":"user_id",
    //     "search_type":"dset_korean_nm",
    //     "search":"교통량",
    //     "dset_lclas":"D",
    //     "dset_mclas":"200",
    //     "dset_sclas":"1",
    //
    // };

    ajaxPost('/dp/ingest/meta/tables', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;
        $("#metaTableCnt").html("총 " + data.totalcount + "개");
        $("#metaTable1 tbody").empty();

        pageNation(data.page_no, 10, pageNum);
        markPage(pageNum);

        for (let i = 0; i < data.contents.length; i++) {
            let idntfcId = obj[i]?.rl_dset_idntfc_id + "@" + obj[i]?.table_idntfc_id;
            trHTML += '<tr>'
                + '<td><input class="tableInfo" type="checkbox" name="checkList" id="check' + i + '" value="' + idntfcId + '"></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.dset_lclas + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.dset_mclas + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.dset_sclas + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.clct_mthd + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.clct_ty + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.dset_korean_nm + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label>' + obj[i]?.table_korean_nm + '</label></td>'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label id="tableEngNm' + (i) + '">' + obj[i]?.table_eng_nm + '</label></td>,'
                + '<td onclick="dataSetTableData(`' + idntfcId + '`,`view`)"><label id="creat_table_at' + i + '">' + (obj[i]?.creat_table_at == null ? 'N' : obj[i].creat_table_at) + '</label></td>'
                + '<td><button class="btn btn-primary" style="width:100%" onclick="dp_ingest_meta_tbl_dset(`' + obj[i].table_idntfc_id + '`,`' + obj[i].table_korean_nm + '`,`' + obj[i].table_eng_nm + '`)">바로가기</button></td>'
                + '</tr>';
        }
        if(data.contents.length == 0){
            trHTML += '<tr><td colspan="11" style="text-align: center">데이터가 없습니다.</td></tr>';
        }
        $("#metaTable1 tbody").append(trHTML);
    });
    tableInfoInit();
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

    // $("#clct_mthd1").attr("disabled", false);
    // $("#clct_ty1").attr("disabled", false);

    $("#tableAddEdit1").text("테이블생성");

    $('#dupCheck').show();
    $("#table_eng_nm2").css("width","72%");
    $('#table_eng_nm2').prop('readonly', false);

}

//삭제 버튼
function metaTableDel() {
    const checked_val = [];

    $("input:checkbox[name='checkList']:checked").each(function (k, kValue) {
        checked_val.push(kValue.value);
    });

    if (checked_val.length === 0) {
        alert("삭제할 항목을 선택해 주세요.");
        return;
    }

    let delStatus = true;
    if (window.confirm("정말 삭제하시겠습니까?")) {

        let delDestIdntfcId = checked_val[0].split("@")[0];
        var data1 = {
            "user_id":"user_id",
            "table_idntfc_id" : delDestIdntfcId
        };
        ajaxPost('/dp/ingest/meta/tables/delete/check/table', data1, function (data) {
            if (data.contents[0].successYN == 'Y') {
                let data2 = {
                    "user_id": "userId",
                    "dset_idntfc_id": delDestIdntfcId
                };

                $.ajax({
                    type: 'post',
                    url: '/dp/ingest/meta/tables/delete/dataset',
                    contentType: "application/json;charset=UTF-8",
                    data: JSON.stringify(data2),
                    success: function (data, textStatus, xhr) {
                        console.log('완료~dp_ingest_meta_tbl_del_dset', data);
                    },
                    error: function (data, status, error) {
                        console.log('ajax Error: ' + data);
                        delStatus = false;
                    }
                });
                if (delStatus) {
                    alert("선택한 항목이 정상적으로 삭제되었습니다.");
                    // location.href="metaTable";
                } else {
                    alert("선택한 항목중 일부 삭제되지않았습니다.");
                }
            } else{
                alert('메타테이블 테이블 삭제 체크 : N');
            }
        });
    }

}

//테이블수정 버튼
function metaTableEdit(el) {
    if (el.innerHTML == '테이블생성') {

        let checkedList = _.filter($(`.tableInfo`), data => data.checked == true);

        if (checkedList.length === 0) {
            alert("항목을 선택해 주세요.");
            return;
        } else if (checkedList.length > 1) {
            alert("항목을 선택해 주세요.");
            return;
        }

        let table_eng_nm = _.filter($(`.tableInfo`), data => data.checked == true)[0].id;
        table_eng_nm = 'tableEngNm' + table_eng_nm.replace('check', '');
        table_eng_nm = $(`#${table_eng_nm}`)[0].innerText;
        dp_ingest_meta_tbl_make(table_eng_nm);
    } else {
        let checkedList = _.filter($(`.tableInfo`), data => data.checked == true);
        if (checkedList.length === 0) {
            alert("수정할 항목을 선택해 주세요.");
            return;
        } else if (checkedList.length > 1) {
            alert("하나의 항목을 선택해 주세요.");
            return;
        }
        let table_eng_nm = _.filter($(`.tableInfo`), data => data.checked == true)[0].id;
        table_eng_nm = 'tableEngNm' + table_eng_nm.replace('check', '');
        table_eng_nm = $(`#${table_eng_nm}`)[0].innerText;
        dp_ingest_meta_tbl_remake(table_eng_nm);
    }
}

function dataSetTableData(id, status) {
    let destIdntfcId = id.split("@")[0];
    let tableIdntfcId = id.split("@")[1];

    dataReset();

    let data = {
        "user_id": "user_id",
        "dset_idntfc_id": destIdntfcId,
    };

    //메타테이블 데이터셋 항목 상세 (dp_ingest_meta_tbl_dset)
    ajaxPost('/dp/ingest/meta/tables/dataset', data, function (datasetData) {
        console.log('완료~dataset', datasetData);

        $("#dset_owner1").val(datasetData.contents[0].dset_owner);         //데이터셋_소유자
        $("#dset_lclas1").val(datasetData.contents[0].dset_lclas);         //데이터셋_대분류

        initGetCategory('dset_lclas1','dset_mclas1' );

        $("#dset_mclas1").val(datasetData.contents[0].dset_mclas);         //데이터셋_중분류

        initGetCategory('dset_mclas1','dset_sclas1');

        $("#dset_sclas1").val(datasetData.contents[0].dset_sclas);         //데이터셋_소분류
        $("#clct_mthd1").val(datasetData.contents[0].clct_mthd);           //수집_방식
        $("#clct_ty1").val(datasetData.contents[0].clct_ty);               //수집유형
        $("#dset_korean_nm1").val(datasetData.contents[0].dset_korean_nm); //데이터셋_한글명
        $("#dset_dc1").val(datasetData.contents[0].dset_dc);               //데이터셋 설명
        $("#crud_se1").val(datasetData.contents[0].crud_se);               //CUD 구분
        $("#crud_dc1").val(datasetData.contents[0].crud_dc);               //CUD 설명
        $("#use_at1").val(datasetData.contents[0].use_at);                 //사용 여부

        $("#creatTableAt1").val(datasetData.contents[0].creat_table_at); //수집 테이블 생성 여부

        // if (datasetData.contents[0].creat_table_at == 'Y'){
        //     $('#table_eng_nm2'). prop('readonly', true);
        //     $('#dupCheck').hide();
        //     $("#table_eng_nm2").css("width","100%");
        //     $("#tableAddEdit1").text("테이블수정");
        // } else {
        //     $('#table_eng_nm2'). prop('readonly', false);
        //     $('#dupCheck').show();
        //     $("#table_eng_nm2").css("width","70%");
        //     $("#tableAddEdit1").text("테이블생성");
        // }

        $("#hidden_dset_idntfc_id").val(datasetData.contents[0].dset_idntfc_id);  //데이터셋_식별_ID


        let data = {
            "user_id": "user_id",
            "table_idntfc_id": tableIdntfcId,
        };
        //메타테이블 항목 상세 (dp_ingest_meta_tbl_tbl)
        ajaxPost('/dp/ingest/meta/tables/table', data, function (TableData) {
            console.log('/dp/ingest/meta/tables/table : 호출', TableData);

            $("#table_korean_nm2").val(TableData.contents[0]?.table_korean_nm);      //테이블_한글명
            $("#table_dc").val(TableData.contents[0]?.table_dc);                     //테이블_설명
            $("#table_eng_nm2").val(TableData.contents[0]?.table_eng_nm);            //테이블_영문명
            $("#table_dset_knd").val(TableData.contents[0]?.dset_knd);               //테이블 데이터셋 셋종류
            $("#table_owner").val(TableData.contents[0]?.table_owner);               //테이블_소유자 ID
            $("#physic_table_ty").val(TableData.contents[0]?.physic_table_ty);       //테이블 유형
            $("#crud_se2").val(TableData.contents[0]?.crud_se);                      //CUD 구분
            $("#crud_dc2").val(TableData.contents[0]?.crud_dc);                      //CUD 설명
            $("#use_at2").val(TableData.contents[0]?.use_at);                        //사용 여부
            $("#creatTableAt2").val(TableData.contents[0]?.creat_table_at);        //수집 테이블 생성 여부

            $("#hidden_table_idntfc_id").val(TableData.contents[0]?.table_idntfc_id);  //테이블_식별자

            if (status === "edit") {
                // 추가버튼 클릭
                // $("#dataSetItemSaveBtn").hide();
                // $("#tableItemSaveBtn").hide();

                $("#dataSetItemEditBtn").show();
                $("#tableItemEditBtn").show();
            } else if (status === "view") {
                // 리스트 클릭


                    $("#dataSetItemSaveBtn").hide();
                    if(TableData.contents[0]?.table_eng_nm == null) {
                        $("#tableItemSaveBtn").show();
                        $("#tableItemEditBtn").hide();
                    } else {
                        $("#tableItemSaveBtn").hide();
                        $("#tableItemEditBtn").show();
                    }

                // $("#dataSetItemEditBtn").hide();
                // $("#tableItemEditBtn").hide();
            }

            $("#dataSetItem").show();
            $("#tableItem").show();

            $("#dataSetItemEditBtn").show();

            if (datasetData.contents[0].creat_table_at == 'Y'){
                $('#table_eng_nm2'). prop('readonly', true);
                $('#dupCheck').hide();
                $("#table_eng_nm2").css("width","100%");
                $("#tableAddEdit1").text("테이블수정");
            } else {
                $('#table_eng_nm2'). prop('readonly', false);
                $('#dupCheck').show();
                $("#table_eng_nm2").css("width","70%");
                $("#tableAddEdit1").text("테이블생성");
            }
            if(TableData.contents[0]?.table_idntfc_id == null) {
                $('#tableItemSaveBtn').show();
                $('#tableItemEditBtn').hide();
            } else {
                $('#tableItemSaveBtn').hide();
                $('#tableItemEditBtn').show();
            }

        });
    });
}

//컬럼 정보 바로 가기
function dp_ingest_meta_tbl_dset(id, table_korean_nm, table_eng_nm) {
    if(id == 'null' || table_korean_nm == 'null') {
        alert('테이블 항목 저장 안되어있음');
        return;
    }
    location.href = "metaTableInfo?idntfcId=" + id + "&table_korean_nm=" + table_korean_nm + "&table_eng_nm=" + table_eng_nm;
}

//데이터셋 영문명 중복체크 (dp_ingest_meta_tbl_chk)
function table_eng_nm_chk() {
    let tableEngNm = $('#table_eng_nm2').val();
    let checkType = /^[a-z0-9_]*$/;

    if (!tableEngNm) {
        alert('테이블 영문명을 작성하세요.');
        return;
    }

    if (!checkType.test(tableEngNm)) {
        alert('소문자나 숫자를 입력하세요.');
        return;
    }

    let data = {
        "user_id": "~~id",
        "table_eng_nm": tableEngNm
    };

    $.ajax({
        type: 'post',
        url: `/dp/ingest/meta/tables/check`,
        contentType: "application/json;charset=UTF-8",
        data: JSON.stringify(data),
        success: function (data, textStatus, xhr) {
            if (data.return_code == '200') {
                alert(data.return_msg);
                tableEngNmChk = true;
                console.log('API: (dp_ingest_meta_tbl_chk) ajax Success ' + data);
            } else if (data.return_code == '9999') {
                alert(data.return_msg);
                tableEngNmChk = false;
            }
        },
        error: function (data, status, error) {
            tableEngNmChk = false;
            alert('API: (dp_ingest_meta_tbl_chk) ajax Error ' + data);
        }
    });
}

////데이터셋_식별_ID (데이터셋ID 자동증가 - dp_ingest_meta_tbl_dset_id_chk)
//데이터셋항목 저장 (dp_ingest_meta_tbl_save_dset)
function saveDataSetItem() {

    let id_chk = "";

    $.ajax({
        type: 'get',
        url: '/dp/ingest/meta/tables/dataset/id/check',
        contentType: "application/json;charset=UTF-8",
        //data: param,
        success: function (data, textStatus, xhr) {
            id_chk = data.contents[0].dset_idntfc_id;

            const dataSet = {
                "user_id": "~~id",
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
                "creat_table_at": $("#creatTableAt1").val() //수집 테이블 생성 여부
            };
            ajaxPost('/dp/ingest/meta/tables/save/dataset', dataSet, function (data) {
                if (data.return_code == '200') {
                    console.log('완료~dp_ingest_meta_tbl_save_dset', data);
                    $("#hidden_dset_idntfc_id").val(data.contents[0].dset_idntfc_id);  //데이터셋_식별_ID

                    // $("#dataSetItemSaveBtn").hide();
                    $("#dataSetItemEditBtn").show();
                    alert("정상적으로 메타테이블 데이터셋 저장되었습니다.");
                } else {
                    alert('저장 안됨');
                }
                $('#dataSetItemSaveBtn').hide()
            });
        },
        error: function (data, status, error) {
            alert('ajax Error: ' + data);
        }
    });
}

//데이터셋항목 수정 (dp_ingest_meta_tbl_update_dset)
function editDataSetItem() {
    const edit_dset_idntfc_id = $('#hidden_dset_idntfc_id').val();

    const data = {
        "user_id": "~~id",
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
        "creat_table_at": $("#creatTableAt1").val() //수집 테이블 생성 여부
    };

    ajaxPost('/dp/ingest/meta/tables/update/dataset', data, function (data) {
        alert("정상적으로 메타테이블 데이터셋 수정되었습니다.");
    });
}

//테이블 항목 저장 (dp_ingest_meta_tbl_save_tbl)
function saveTableItem() {
    if (!$('#hidden_dset_idntfc_id').val()) {
        alert('데이터셋항목이 저장되지 않았습니다.');
        return;
    }

    if (!tableEngNmChk) {
        alert('데이터셋 영문명 중복체크가 되지 않았습니다.');
        return;
    }

    const data = {
        "rl_dset_idntfc_id": $('#hidden_dset_idntfc_id').val(),     //데이터셋_식별자(필수)
        "dset_knd": $('#table_dset_knd').val(),                     //데이터셋_종류
        "physicl_db_nm": "LX_DT_DBS",                                //물리_DB명(필수)
        "table_owner": $('#table_owner').val(),                     //테이블_소유자
        "table_eng_nm": $('#table_eng_nm2').val(),                  //테이블_영문명(필수-소문자)
        "table_korean_nm": $('#table_korean_nm2').val(),            //테이블_한글명(필수)
        "physic_table_ty": $('#physic_table_ty').val(),             //테이블_유형
        "rl_entity_idntfc_id": null,                                 //관련_엔터티_식별자
        "table_dc": $('#table_dc').val(),                           //테이블_설명
        "cl_systm": null,                                            //업무_분류_체계
        "prsrv_pd": null,                                            //보존_기간
        "table_volum": null,                                         //테이블_볼륨
        "occrrnc_cycle": null,                                       //발생_주기
        "othbc_at": null,                                            //공개_여부
        "iem_nm": null,                                              //테이블정의서_항목명
        "crud_se": $('#crud_se2').val(),                            //CURD_구분
        "crud_dc": $('#crud_dc2').val(),                            //CURD_설명
        "use_at": $('#use_at2').val(),                              //사용_여부
        "creat_table_at": $('#creatTableAt2').val()               //수집_테이블_생성_여부
    };
    ajaxPost('/dp/ingest/meta/tables/save/table', data, function (data) {
        console.log('완료~dp_ingest_meta_tbl_save_tbl', data);
        $("#hidden_table_idntfc_id").val(data.contents[0].table_idntfc_id);  //데이터셋_식별_ID

        $("#tableItemSaveBtn").hide();
        $("#tableItemEditBtn").show();

        alert("정상적으로 메타테이블의 테이블 항목이 등록되었습니다.");
        tableEngNmChk = false;
    });
}

//테이블 항목 수정 (dp_ingest_meta_tbl_update_tbl)
function editTableItem() {
    // if(tableEngNmChk == false){
    //     alert('중복 체크를 해주세요');
    //     return;
    // }
    if($('#dupCheck')[0].style.display != 'none'){
        if(tableEngNmChk == false){
                alert('중복 체크를 해주세요');
                return;
            }
    }
    const edit_table_idntfc_id = $('#hidden_table_idntfc_id').val();

    const data = {
        "table_idntfc_id": edit_table_idntfc_id,                   //테이블_식별자(필수)
        "rl_dset_idntfc_id": $('#hidden_dset_idntfc_id').val(),     //데이터셋_식별자(필수)
        "dset_knd": $('#table_dset_knd').val(),                     //데이터셋_종류
        "physicl_db_nm": "LX_DT_DBS",                                //물리_DB명(필수)
        "table_owner": $('#table_owner').val(),                     //테이블_소유자
        "table_eng_nm": $('#table_eng_nm2').val(),                  //테이블_영문명(필수-소문자)
        "table_korean_nm": $('#table_korean_nm2').val(),            //테이블_한글명(필수)
        "physic_table_ty": $('#physic_table_ty').val(),             //테이블_유형
        "rl_entity_idntfc_id": null,                                 //관련_엔터티_식별자
        "table_dc": $('#table_dc').val(),                                           //테이블_설명
        "cl_systm": null,                                            //업무_분류_체계
        "prsrv_pd": null,                                            //보존_기간
        "table_volum": null,                                         //테이블_볼륨
        "occrrnc_cycle": null,                                       //발생_주기
        "othbc_at": null,                                            //공개_여부
        "iem_nm": null,                                              //테이블정의서_항목명
        "crud_se": $('#crud_se2').val(),                            //CURD_구분
        "crud_dc": $('#crud_dc2').val(),                            //CURD_설명
        "use_at": $('#use_at2').val(),                              //사용_여부
        "creat_table_at": $('#creatTableAt2').val()               //수집_테이블_생성_여부
    };

    ajaxPost('/dp/ingest/meta/tables/update/table', data, function (data) {
        console.log('완료~dp_ingest_meta_tbl_update_dset', data);
        alert("정상적으로 메타테이블의 테이블 항목이 수정되었습니다.");
        tableEngNmChk = false;
    });
}

//데이터 리셋
function dataReset() {
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
    $("#creatTableAt1").val("");

    //테이블 항목
    $("#table_korean_nm2").val("");
    $("#dset_dc2").val("");
    $("#table_eng_nm2").val("");
    $("#table_dset_knd").val("");
    $("#table_owner").val("");
    $("#physic_table_ty").val("");
    $("#crud_se2").val("");
    $("#crud_dc2").val("");
    $("#table_dc").val("");
    $("#use_at2").val("Y");
    $("#creatTableAt2").val("");

    $("#hidden_dset_idntfc_id").val("");
    $("#hidden_table_idntfc_id").val("");
}

$("#clct_mthd1").change(function () {

    let group_code = $("#clct_mthd1 option:selected").val()
    ajaxGet('/dp/cm/codes/clct_mthd?group_code=' + group_code, "", function (data) {

        let obj = data.contents;
        let HTML1 = "";

        $("#clct_ty1").empty()
        HTML1 += "<option value=''>선택</option>";
        for (let i = 0; i < obj.length; i++) {
            HTML1 += `<option value="` + obj[i].dtl_code + `">` + obj[i].dtl_code_nm + `</option>`;
        }
        $("#clct_ty1").append(HTML1);

    });

});

function dp_ingest_meta_tbl_make(param1) {
    let data = {
        "user_id": "userId",
        "table_eng_nm": param1
    };
    ajaxPost('/dp/ingest/meta/tables/make', data, function (data) {
        if(data.contents[0].successYN == 'Y'){
            alert('추가 완료');
        } else {
            alert('추가 안됨');
        }

    });
}


function dp_ingest_meta_tbl_remake(param1) {

    let data = {
        "user_id": "userId",
        "table_eng_nm": param1
    };
    ajaxPost('/dp/ingest/meta/tables/remake', data, function (data) {
        alert('수정 완료');
    });
}

function tableInfoInit() {
    $('.tableInfo').click(function (param1) {

        let creatTableAt = 'creat_table_at' + param1.target.id.replace('check', '');
        creatTableAt = $(`#${creatTableAt}`)[0].innerText;

        if ($(`#${param1.target.id}`)[0].checked == false) {
            $(`#${param1.target.id}`).prop('checked', false);
            $("#tableAddEdit1").text("테이블생성");
            return;
        }
        $(".tableInfo").prop('checked', false)
        $(`#${param1.target.id}`).prop('checked', true)

        if (creatTableAt == 'N') {
            $("#tableAddEdit1").text("테이블생성");
        } else {
            $("#tableAddEdit1").text("테이블수정");
        }
    });
}

$("#SelectText").on("keyup", function (key) {
    if (key.keyCode == 13) {
        searchTbl(1);
    }
});
$("#table_eng_nm2").on("keyup", function (key) {
    tableEngNmChk = false;
});

