

Init();

function Init() {

    let url = new URL(window.location.href);
    let table_idntfc_id = url.searchParams.get('table_idntfc_id');

    let data = {
        "user_id":"user_id",
        "table_idntfc_id" : table_idntfc_id
    };

    ajaxPost('/dp/load/dataset/detail', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#allCnt").html("총 "+data.totalcount+"개");
        $("#instanceData tbody").empty();

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
        $("#instanceData tbody").append(trHTML);
    });
}

function dp_load_dset_dt_list() {


    ajaxPost('/dp/load/dataset/detail/list', data, function (data) {


    });

}

function dp_load_dset_dt_ct() {

}
