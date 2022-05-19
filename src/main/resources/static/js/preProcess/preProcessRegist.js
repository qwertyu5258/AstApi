
$("#change_type").change( function(el) {
    console.log("chang_type change");

    if(this.value =='글자수 제한') {
        $('.change_shape').hide();
        $('.digit').hide();
        $('#type1').show();
        $('#type2').hide();
    } else {
        // 데이터 변형
        $('.change_shape').show();
        $('.digit').show();
        $('#type1').hide();
        $('#type2').show();
    }

});


function dp_ingest_pre_id_chk() {
    console.log('dp_ingest_pre_id_chk');

    let return_data;

    ajaxGet('/dp/ingest/popup/table_colum', '', function (data) {
        return_data = data;
    });
    return return_data;
}
function dp_ingest_pre_save() {
    console.log('dp_ingest_pre_save');
    // let pre_id = dp_ingest_pre_id_chk(); 자동으로 변경한다고함
// $("#LargeCategory option:selected").val();
    let data = {
        "user_id" : "ksy",
        "menu_id": "",
        "pre_nm": $("#pre_nm").val(),
        "property_type": $("#property_type option:selected").val(),
        "number_digit": $("#number_digit").val(),
        "change_shape":$("#change_shape").val(),
        "pre_before":$("#pre_before").val(),
        "pre_after":$("#pre_after").val(),
        "start_digit":$("#start_digit").val(),
        "end_digit":$("#end_digit").val(),
        "integer":$("#integer").val(),
        "decimal_point":$("#decimal_point").val(),
        "change_word":$("#change_word").val(),
        // "chang_type": $("#change_type option:selected").val(),
    };
    ajaxPost('/dp/ingest/pre/save', data, function (data) {
        alert('저장완료');
    });

    // ajaxPost('/dp/ingest/popup/table_colum', data3, function (data) {
    //     alert(data);
    // });
}

