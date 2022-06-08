// 그룹코드 저장
function dp_cm_codes_save() {
    var data = {
        "user_id": "userId",
        "menu_id": "menu_id",
        "cl_nm" : $('#cl_nm').val(),
        "cl_code": $('#cl_code').val(),
        "ordr" : parseInt($('#ordr1').val()),
        "group_code" : $('#group_code').val(),
        "group_code_nm" : $('#group_code_nm').val(),
        "crud_se" : "Y",
        "crud_dc" : $('#crud_dc').val(),
        "use_at" : $('#use_at').val(),
    };
    ajaxPost('/dp/cm/codes/save', data, function (data) {
        alert('완료');
        $('#modal1').modal('hide');
        closeModal1();
        searchTbl(1);

    });

}
// 그룹코드 수정
function dp_cm_codes_update() {
    var data = {
        "user_id": "userId",
        "menu_id": "menu_id",
        "cl_nm" : $('#cl_nm2').val(),
        "cl_code": $('#cl_code2').val(),
        "ordr" : parseInt($('#ordr2').val()),
        "group_code" : $('#group_code2').val(),
        "old_group_code" : $('#old_group_code2').val(),
        "group_code_nm" : $('#group_code_nm2').val(),
        "crud_se" : "Y",
        "crud_dc" : $('#crud_dc2').val(),
        "use_at" : $('#use_at2').val(),
    };
    ajaxPost('/dp/cm/codes/update', data, function (data) {
        alert('업데이트 완료');
        $('#modal2').modal('hide');
        closeModal2();
        searchTbl(1);
    });
}
// 그룹코드 삭제
function dp_cm_codes_del() {
    var data = {
        "user_id": "userId",
        "menu_id": "menu_id",
        "group_code" : $('#group_code2').val()
    };
    ajaxPost('/dp/cm/codes/delete', data, function (data) {
        alert('완료');
        $('#modal2').modal('hide');
        closeModal2();
        searchTbl(1);
    });
}
// 코드 저장
function dp_cm_codes_dt_save() {
    var data = {
        "user_id": "userId",
        "group_code":$('#group_code3').val(),
        "dtl_code":$('#dtl_code3').val(),
        "dtl_code_nm":$('#dtl_code_nm3').val(),
        "crud_se" : "Y",
        "ordr" : parseInt($('#ordr3').val()),
        "crud_dc" : $('#crud_dc3').val(),
        "use_at" : $('#use_at3').val(),
        "etc_code" : $('#etc_code3').val(),
    };
    ajaxPost('/dp/cm/codes/detail/save', data, function (data) {
        alert('완료');
        $('#modal3').modal('hide');
        closeModal3();
        searchTbl2(1);
    });
}
// 코드 수정
function dp_cm_codes_dt_update() {
    var data = {
        "user_id": "userId",
        "old_group_code": $('#old_group_code4').val(),
        "group_code": $('#group_code4').val(),
        "dtl_code": $('#dtl_code4').val(),
        "old_dtl_code": $('#old_dtl_code4').val(),
        "dtl_code_nm":$('#dtl_code_nm4').val(),
        "crud_se" : $('#crud_se4').val(),
        "crud_dc" : $('#crud_dc4').val(),
        "ordr" : parseInt($('#ordr4').val()),

        "use_at" : $('#use_at4').val(),
        "etc_code" : $('#etc_code4').val(),
    };
    ajaxPost('/dp/cm/codes/detail/update', data, function (data) {
        alert('업데이트 완료');
        $('#modal4').modal('hide');
        closeModal4();
        searchTbl2(1);
    });
}
// 코드 삭제
function dp_cm_codes_dt_del() {
    var data = {
        "user_id": "userId",
        "group_code":$('#group_code4').val(),
        "dtl_code": $('#dtl_code4').val(),
    };
    ajaxPost('/dp/cm/codes/detail/delete', data, function (data) {
        alert('삭제 완료');
        $('#modal4').modal('hide');
        closeModal4();
        searchTbl2(1);
    });
}

function closeModal1(){
    $('#cl_nm').val('');
    $('#cl_code').val('');
    $('#group_code').val('');
    $('#group_code_nm').val('');
    $('#use_at').val('');
    $('#crud_dc').val('');
    $('#ordr1').val('');
}
function closeModal2(){
    $('#cl_nm2').val('');
    $('#cl_code2').val('');
    $('#group_code2').val('');
    $('#group_code_nm2').val('');
    $('#use_at2').val('');
    $('#crud_dc2').val('');
    $('#ordr2').val('');
}
function closeModal3(){
    $('#group_code3').val('');
    $('#dtl_code3').val('');
    $('#dtl_code_nm3').val('');
    $('#ordr3').val('');
    $('#use_at3').val('');
    $('#crud_dc3').val('');
    $('#etc_code3').val('');
    $('#ordr3').val('');
}
function closeModal4(){
    $('#old_group_code4').val('');
    $('#group_code4').val('');
    $('#dtl_code4').val('');
    $('#dtl_code_nm4').val('');
    $('#ordr4').val('');
    $('#use_at4').val('');
    $('#crud_dc4').val('');
    $('#etc_code4').val('');
    $('#ordr4').val('');
}