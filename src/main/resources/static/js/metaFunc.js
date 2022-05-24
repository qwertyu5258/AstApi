function dp_ingest_meta_tbl(param1, param2, param3, param4, param5) {
    var data = {
        "search": "12",
        "search_type": "!2",
        "dset_lclas": "!2",
        "dset_mclas": "12",
        "dset_sclas": "12",
    };
    ajaxPost('/dp/ingest/meta/tables', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_dset	get 	/dp/ingest/meta/tables/{}/dataset
function dp_ingest_meta_tbl_dset(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/{}/dataset', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_tbl	get 	/dp/ingest/meta/tables/{}/table
function dp_ingest_meta_tbl_tbl(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/{}/table', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_dset_id_chk	get 	/dp/ingest/meta/tables/dataset/id/check
function dp_ingest_meta_tbl_dset_id_chk(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/dataset/id/check', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_chk	get	/dp/ingest/meta/tables/{}/check
function dp_ingest_meta_tbl_chk(param1, param2) {
    var data = {
        "user_id":"~`id",
        "table_eng_nm" : "roadtraffic"
    };
    ajaxPost(`/dp/ingest/meta/tables/check`, data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_del_dset	post	/dp/ingest/meta/tables/delete/{}/dataset
function dp_ingest_meta_tbl_del_dset(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/delete/{}/dataset', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_del_tbl	post	/dp/ingest/meta/tables/delete/{}/table
function dp_ingest_meta_tbl_del_tbl(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/delete/{}/table', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_del_chk_tbl	get	/dp/ingest/meta/tables/delete/check/{}/table
function dp_ingest_meta_tbl_del_chk_tbl(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/delete/check/{}/table', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_save_dset	post	/dp/ingest/meta/tables/save/dataset
function dp_ingest_meta_tbl_save_dset(param1, param2) {
    var data = {
        "dset_owner":"S",
        "dset_lclas":"D",
        "dset_mclas":"200",
        "dset_sclas":"1",
        "clct_mthd":"DB2DB",
        "clct_ty":"POSTGRESQL",
        "logic_db_nm":"LX_DT_DMS",
        "dset_korean_nm":"도로명주소_건물",
        "dset_dc": null,
        "idntfr":null,
        "supe_type_entity_nm":null,
        "entity_iem_nm":null,
        "crud_se":null,
        "crud_dc":null,
        "use_at":null,
        "creat_table_at":null
    };
    ajaxPost('/dp/ingest/meta/tables/save/dataset', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_save_tbl	post	/dp/ingest/meta/tables/save/table
function dp_ingest_meta_tbl_save_tbl(param1, param2) {
    var data = {
        "table_idntfc_id":"T0000000000000000009",
        "rl_dset_idntfc_id":"D0000000000000000005",
        "dset_knd":"D",
        "physicl_db_nm":"LX_DT_DBS",
        "table_owner":"S",
        "table_eng_nm":"ST_DSET_TABLE_MASTR",
        "table_korean_nm":"테이블 마스터",
        "physic_table_ty":"마스터테이블",
        "rl_entity_idntfc_id":null,
        "table_dc":null,
        "cl_systm":null,
        "prsrv_pd":null,
        "table_volum":null,
        "occrrnc_cycle":null,
        "othbc_at":null,
        "iem_nm":null,
        "crud_se":null,
        "crud_dc":null,
        "use_at":null,
        "creat_table_at":null
    };
    ajaxPost('/dp/ingest/meta/tables/save/table', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_update_dset	post	/dp/ingest/meta/tables/update/dataset/{}
function dp_ingest_meta_tbl_update_dset(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/update/dataset', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_update_tbl	post	/dp/ingest/meta/tables/update/table/{}
function dp_ingest_meta_tbl_update_tbl(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/update/table', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_col	get 	/dp/ingest/meta/tables/{}/column
function dp_ingest_meta_tbl_col(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/{}/column', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_col_dt	get 	/dp/ingest/meta/tables/{}/column/detail/{}
function dp_ingest_meta_tbl_col(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/{}/column/detail/{}', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_save_col	post	/dp/ingest/meta/tables/save/column
function dp_ingest_meta_tbl_save_col(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/save/column', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_update_col	post	/dp/ingest/meta/tables/update/{}/column/{}
function dp_ingest_meta_tbl_update_col(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/update/{}/column/{}', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_del_chk_col	get 	/dp/ingest/meta/tables/delete/check/{}/column/{}
function dp_ingest_meta_tbl_del_chk_col(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/tables/delete/check/{}/column/{}', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_tbl_del_col	post	/dp/ingest/meta/tables/delete/{}/column/{}
function dp_ingest_meta_tbl_del_col(param1, param2) {
    var data = {
        "search": "",
        "search_type": "",
    };
    ajaxPost('/dp/ingest/meta/tables/delete/{}/column/{}', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_popup_meta_tbl	get	/dp/ingest/popup/meta_table
function dp_ingest_popup_meta_tbl(param1, param2) {
    var data = {
        "table_korean_nm":"",
        "user_id":"~~user_id"
    };
    ajaxPost('/dp/ingest/popup/meta_table', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_item	get	/dp/ingest/meta/item
function dp_ingest_meta_item(param1, param2) {
    var data = {
        "user_id":"~~id",
        "dset_lclas":"D",
        "dset_mclas":"200",
        "dset_sclas":"1",
        "search":"교통",
        "page_current":"3"
    };
    ajaxPost('/dp/ingest/meta/item', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_item_save	post	/dp/ingest/meta/item/save
function dp_ingest_meta_item_save(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/item/save', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_data_models_pp	get	/dp/ingest/data/models/property/{}
function dp_ingest_data_models_pp(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/data/models/property/{}', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_dset_type	get	/dp/ingest/meta/dataset/type/{}
function dp_ingest_meta_dset_type(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/dataset/type/{}', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_dset_dt	get	/dp/ingest/meta/dataset/detail/{}
function dp_ingest_meta_dset_dt(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/dataset/detail/{}', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_dset_update	post	/dp/ingest/meta/dataset/update/{}
function dp_ingest_meta_dset_update(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/dataset/update/{}', data, function (data) {
        alert('완료~113');
    });
}
// dp_ingest_meta_dset_del	post	/dp/ingest/meta/dataset/delete/{}
function dp_ingest_meta_dset_del(param1, param2) {
    var data = {
        "search": "12",
        "search_type": "!2",
    };
    ajaxPost('/dp/ingest/meta/dataset/delete/{}', data, function (data) {
        alert('완료~113');
    });
}









































function saveTbl2(param1, param2, param3, param4, param5) {
    // dp_ingest_meta_tbl_save_tbl
    var data = {
        "table_idntfc_id": "T0000000000000000009",       //      테이블_식별자
        "rl_dset_idntfc_id": "D0000000000000000005",     //      데이터셋_식별자
        "dset_knd": "D",                                 //      데이터셋_종류
        "physicl_db_nm": "LX_DT_DBS",                    //      물리_DB명
        "table_owner": "S",                              //      테이블_소유자
        "table_eng_nm": "ST_DSET_TABLE_MASTR",           //      테이블_영문명
        "table_korean_nm": "테이블 마스터",                    //      테이블_한글명
        "physic_table_ty": "마스터테이블",                     //      테이블_유형

        "rl_entity_idntfc_id": null,                     //      관련_엔터티_식별자
        "table_dc": null,                                //      테이블_설명
        "cl_systm": null,                                //      업무_분류_체계
        "prsrv_pd": null,                                //      보존_기간
        "table_volum": null,                             //      테이블_볼륨
        "occrrnc_cycle": null,                           //      발생_주기
        "othbc_at": null,                                //      공개_여부
        "iem_nm": null,                                  //      테이블정의서_항목명
        "crud_se": null,                                 //      CURD_구분
        "crud_dc": null,                                 //      CURD_설명
        "use_at": null,                                  //      사용_여부
        "creat_table_at": null                           //      수집_테이블_생성_여부
    };
    ajaxPost('/dp/ingest/meta/tables/save/table', data, function (data) {
        alert('저장완료');
    });
}