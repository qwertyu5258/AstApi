

Init();

function Init() {

    // let data = {
    //     "user_id":"user_id",
    //     "dset_lclas": $("#LargeCategory").val(),
    //     "dset_mclas": $("#MiddleCategory").val(),
    //     "dset_sclas": $("#SmallCategory").val(),
    //     "page_current":"2",
    //     "search_type":"dset_korean_nm",
    //     "search":"교통"
    // };

    ajaxPost('/dp/load/popup/history/01', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#allCnt").html("총 "+obj.length+"개");
        $("#table1 tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            trHTML += `<tr onclick="clickList('${obj[i].instance_id}')">`;
            trHTML += `<th>${obj[i].dset_korean_nm}</th>`;
            trHTML += `<th>${obj[i].table_eng_nm}</th>`;
            trHTML += `<th>${obj[i].clct_mthd}</th>`;
            trHTML += `<th>${obj[i].clct_ty}</th>`;
            trHTML += `<th>${obj[i].dset_lclas}</th>`;
            trHTML += `<th>${obj[i].dset_mclas}</th>`;
            trHTML += `<th>${obj[i].dset_sclas}</th>`;
            trHTML += `<th>${obj[i].adapter_nm}</th>`;
            trHTML += `<th>${obj[i].instance_nm}</th>`;
            trHTML += `<th>${obj[i].schedule_yn}</th>`;
            trHTML += `<th>${obj[i].error_described}</th>`;
        }
        $("#table1 tbody").append(trHTML);
    });
}