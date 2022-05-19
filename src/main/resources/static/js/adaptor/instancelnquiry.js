

instancelnquiryInit();

function instancelnquiryInit () {
    //대분류 카테고리 가져오기
    categoryInit();

    let data = {
        "search" : "",
        "search_type": "adapter_nm",
        "dset_lclas" : "",
        "dset_mclas" : "",
        "dset_sclas" : "",
        "user_id" : "~~id",
        "menu_id" : ""
    };

    ajaxPost('/dp/ingest/instance/search', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#instanceCnt").html("총 "+obj.length+"개");
        $("#instanceData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr class="">`;
            trHTML += `<td>` + noCnt + `</td>`;
            trHTML += `<td>` + obj[i].l_code_nm + `</td>`;
            trHTML += `<td>` + obj[i].m_code_nm + `</td>`;
            trHTML += `<td>` + obj[i].s_code_nm + `</td>`;
            trHTML += `<td>` + obj[i].adapter_nm + `</td>`;
            trHTML += `<td>` + obj[i].instance_nm + `</td>`;
            trHTML += `<td>` + obj[i].clct_mthd + `</td>`;
            trHTML += `<td>` + obj[i].clct_ty + `</td>`;
            trHTML += `<td>` + obj[i].dset_korean_nm + `</td>`;
            if(obj[i].use_yn === "N"){
                trHTML += `<td>`;
                trHTML += `<button class="btn btn-sm btn-primary col-md-5" onclick="errorMove('`+ obj[i].instance_id +`')">바로가기</button>`;
                trHTML += `</td>`;
            }else{
                trHTML += `<td></td>`;
            }
            trHTML += `<td>` + obj[i].use_yn + `</td>`;
            trHTML += `</tr>`;
        }
        $("#instanceData tbody").append(trHTML);
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
    ajaxPost('/dp/ingest/instance/search', data, function (data) {
        console.log(data);
        let obj = data.contents;
        let trHTML = "";
        $("#instanceCnt").html("총 "+obj.length+"개");
        $("#instanceData tbody").empty();

        for (let i = 0; i < obj.length; i++) {
            let noCnt = i+1;
            trHTML += `<tr class="">`;
            trHTML += `<td>` + noCnt + `</td>`;
            trHTML += `<td>` + obj[i].l_code_nm + `</td>`;
            trHTML += `<td>` + obj[i].m_code_nm + `</td>`;
            trHTML += `<td>` + obj[i].s_code_nm + `</td>`;
            trHTML += `<td>` + obj[i].adapter_nm + `</td>`;
            trHTML += `<td>` + obj[i].instance_nm + `</td>`;
            trHTML += `<td>` + obj[i].clct_mthd + `</td>`;
            trHTML += `<td>` + obj[i].clct_ty + `</td>`;
            trHTML += `<td>` + obj[i].dset_korean_nm + `</td>`;
            if(obj[i].use_yn === "N"){
                trHTML += `<td>`;
                trHTML += `<button class="btn btn-sm btn-primary col-md-5" onclick="errorMove('`+ obj[i].instance_id +`')">바로가기</button>`;
                trHTML += `</td>`;
            }else{
                trHTML += `<td></td>`;
            }
            trHTML += `<td>` + obj[i].use_yn + `</td>`;
            trHTML += `</tr>`;
        }
        $("#instanceData tbody").append(trHTML);
    });
}

//바로가기 버튼 (수집오류상세 페이지)
function errorMove(id) {
    location.href="dataCollectDetail?instanceId="+id;
}



