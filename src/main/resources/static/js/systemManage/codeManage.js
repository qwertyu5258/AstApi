
let tempSearchData = {};
let tempSearchData2 = {};
TableInit(1);
TableInit2(1);

//메타테이블 관리 테이블정보 (dp_ingest_meta_tbl)


function TableInit(pageNum) {
    //대분류 카테고리 가져오기
    let data = {
        "search":"",
        "page_current":"1",
        "user_id":"user_id"
    };
    tempSearchData = data;

    ajaxPost('/dp/cm/codes', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;

        $("#tableCnt").html("총 " + data.totalcount + "개");
        $("#table1 tbody").empty();

        pageNation(data.page_no, 10, 1);
        markPage(1);

        for (let i = 0; i < obj.length; i++) {
            let idntfcId = obj[i]?.rl_dset_idntfc_id + "@" + obj[i]?.table_idntfc_id;
            trHTML += `<tr onclick="openModal2('${obj[i]?.cl_nm}', '${obj[i]?.cl_code}', '${obj[i]?.group_code}', '${obj[i]?.group_code_nm}', '${obj[i]?.use_at}', '${obj[i]?.crud_dc}', '${obj[i]?.ordr}')">`
                + '<td><label>' + obj[i]?.cl_nm + '</label></td>'
                + '<td><label>' + obj[i]?.cl_code + '</label></td>'
                + '<td><label>' + obj[i]?.group_code + '</label></td>'
                + '<td><label>' + obj[i]?.group_code_nm + '</label></td>'
                + `<td><label>` + `${obj[i]?.use_at == null ? 'N' : obj[i]?.use_at}`  + `</label></td>`
                + '<td><label>' + obj[i]?.crud_dc + '</label></td>'
                + '</tr>';
        }
        $("#table1 tbody").append(trHTML);
    });
}

//검색
function searchTbl(pageNum, type) {


    let data = {};

    if(type=='pageSelect'){
        data = tempSearchData;
        data.page_current = pageNum.toString();
    } else {
        data = {
            "user_id": '~~id',
            "search": $("#SelectText").val(),
            "page_current": pageNum == null ? "1" : pageNum.toString()
        };
        tempSearchData = data;
    }

    ajaxPost('/dp/cm/codes', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;
        $("#tableCnt").html("총 " + data.totalcount + "개");
        $("#table1 tbody").empty();

        pageNation(data.page_no, 10, pageNum);
        markPage(pageNum);

        for (let i = 0; i < data.contents.length; i++) {
            let idntfcId = obj[i]?.rl_dset_idntfc_id + "@" + obj[i]?.table_idntfc_id;
            trHTML += `<tr onclick="openModal2('${obj[i]?.cl_nm}', '${obj[i]?.cl_code}', '${obj[i]?.group_code}', '${obj[i]?.group_code_nm}', '${obj[i]?.use_at}', '${obj[i]?.crud_dc}', '${obj[i]?.ordr}')">`
                + '<td><label>' + obj[i]?.cl_nm + '</label></td>'
                + '<td><label>' + obj[i]?.cl_code + '</label></td>'
                + '<td><label>' + obj[i]?.group_code + '</label></td>'
                + '<td><label>' + obj[i]?.group_code_nm + '</label></td>'
                + `<td><label>` + `${obj[i]?.use_at == null ? 'N' : obj[i]?.use_at}`  + `</label></td>`
                + '<td><label>' + obj[i]?.crud_dc + '</label></td>'
                + '</tr>';
        }
        if(data.contents.length == 0){
            trHTML += '<tr><td colspan="6" style="text-align: center">데이터가 없습니다.</td></tr>';
        }
        $("#table1 tbody").append(trHTML);
    });
}


function TableInit2(pageNum) {
    //대분류 카테고리 가져오기
    let data = {
        "search":"",
        "page_current":"1",
        "user_id":"user_id"
    };
    tempSearchData2 = data;

    ajaxPost('/dp/cm/codes/detail', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;

        $("#tableCnt2").html("총 " + data.totalcount + "개");
        $("#table2 tbody").empty();

        pageNation2(data.page_no, 10, 1);
        markPage2(1);

        for (let i = 0; i < obj.length; i++) {
            let idntfcId = obj[i]?.rl_dset_idntfc_id + "@" + obj[i]?.table_idntfc_id;
            trHTML += `<tr onclick="openModal4('${obj[i]?.group_code}', '${obj[i]?.dtl_code}', '${obj[i]?.dtl_code_nm}', '${obj[i]?.ordr}', '${obj[i]?.use_at}', '${obj[i]?.crud_dc}', '${obj[i]?.etc_code}', '${obj[i]?.ordr}')">`
                + '<td><label>' + obj[i]?.group_code + '</label></td>'
                + '<td><label>' + obj[i]?.dtl_code + '</label></td>'
                + '<td><label>' + obj[i]?.dtl_code_nm + '</label></td>'
                + '<td><label>' + obj[i]?.use_at + '</label></td>'
                + '<td><label>' + obj[i]?.crud_dc + '</label></td>'
                + '<td><label>' + obj[i]?.etc_code + '</label></td>'
                + '</tr>';
        }
        $("#table2 tbody").append(trHTML);
    });
}

//검색
function searchTbl2(pageNum, type) {


    let data = {};

    if(type=='pageSelect'){
        data = tempSearchData2;
        data.page_current = pageNum.toString();
    } else {
        data = {
            "user_id": '~~id',
            "search": $("#SelectText2").val(),
            "page_current": pageNum == null ? "1" : pageNum.toString()
        };
        tempSearchData2 = data;
    }

    ajaxPost('/dp/cm/codes/detail', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML;
        $("#tableCnt").html("총 " + data.totalcount + "개");
        $("#table2 tbody").empty();

        pageNation2(data.page_no, 10, pageNum);
        markPage2(pageNum);

        for (let i = 0; i < data.contents.length; i++) {
            let idntfcId = obj[i]?.rl_dset_idntfc_id + "@" + obj[i]?.table_idntfc_id;
            trHTML += `<tr onclick="openModal4('${obj[i]?.group_code}', '${obj[i]?.dtl_code}', '${obj[i]?.dtl_code_nm}', '${obj[i]?.ordr}', '${obj[i]?.use_at}', '${obj[i]?.crud_dc}', '${obj[i]?.etc_code}', '${obj[i]?.ordr}')">`
                + '<td><label>' + obj[i]?.group_code + '</label></td>'
                + '<td><label>' + obj[i]?.dtl_code + '</label></td>'
                + '<td><label>' + obj[i]?.dtl_code_nm + '</label></td>'
                + '<td><label>' + obj[i]?.use_at + '</label></td>'
                + '<td><label>' + obj[i]?.crud_dc + '</label></td>'
                + '<td><label>' + obj[i]?.etc_code + '</label></td>'
                + '</tr>';
        }
        if(data.contents.length == 0){
            trHTML += '<tr><td colspan="6" style="text-align: center">데이터가 없습니다.</td></tr>';
        }
        $("#table2 tbody").append(trHTML);
    });
}

function openModal2(param1, param2, param3, param4, param5, param6, param7){
    $('#modal2').modal('show');

    $('#cl_nm2').val(param1);
    $('#cl_code2').val(param2);
    $('#group_code2').val(param3);
    $('#old_group_code2').val(param3);
    $('#group_code_nm2').val(param4);
    $('#use_at2').val(param5);
    $('#crud_dc2').val(param6);
    $('#ordr2').val(param7);

}
function openModal4(param1, param2, param3, param4, param5, param6, param7, param8){
    $('#modal4').modal('show');

    $('#old_group_code4').val(param1);
    $('#group_code4').val(param1);
    $('#dtl_code4').val(param2);
    $('#old_dtl_code4').val(param2);

    $('#dtl_code_nm4').val(param3);
    $('#group_code_nm4').val(param4);
    $('#ordr4').val(param8);
    $('#use_at4').val(param5);
    $('#crud_dc4').val(param6);
    $('#etc_code4').val(param7);

}

$("#SelectText").on("keyup", function (key) {
    if (key.keyCode == 13) {
        searchTbl(1);
    }
});
$("#SelectText2").on("keyup", function (key) {
    if (key.keyCode == 13) {
        searchTbl2(1);
    }
});











